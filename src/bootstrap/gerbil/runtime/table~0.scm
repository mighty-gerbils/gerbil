(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1768863410)
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
      (lambda (_%tab103834%_)
        (##unchecked-structure-ref
         _%tab103834%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab103832%_)
        (##unchecked-structure-ref
         _%tab103832%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab103830%_)
        (##unchecked-structure-ref
         _%tab103830%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab103828%_)
        (##unchecked-structure-ref
         _%tab103828%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab103826%_)
        (##unchecked-structure-ref
         _%tab103826%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab103824%_)
        (##unchecked-structure-ref
         _%tab103824%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab103822%_)
        (##unchecked-structure-ref
         _%tab103822%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab103819%_ _%val103820%_)
        (##unchecked-structure-set!
         _%tab103819%_
         _%val103820%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab103816%_ _%val103817%_)
        (##unchecked-structure-set!
         _%tab103816%_
         _%val103817%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab103813%_ _%val103814%_)
        (##unchecked-structure-set!
         _%tab103813%_
         _%val103814%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab103810%_ _%val103811%_)
        (##unchecked-structure-set!
         _%tab103810%_
         _%val103811%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab103807%_ _%val103808%_)
        (##unchecked-structure-set!
         _%tab103807%_
         _%val103808%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab103804%_ _%val103805%_)
        (##unchecked-structure-set!
         _%tab103804%_
         _%val103805%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab103801%_ _%val103802%_)
        (##unchecked-structure-set!
         _%tab103801%_
         _%val103802%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint103799%_)
        (if (and (fixnum? _%size-hint103799%_) (##fx> _%size-hint103799%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint103799%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint103764%_
               _%hash103765%_
               _%test103766%_
               _%seed103767%_
               _%lock103768%_)
        (let* ((_%size103770%_ (raw-table-size-hint->size _%size-hint103764%_))
               (_%table103772%_
                (##make-vector _%size103770%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table103772%_
           '0
           (##fxquotient _%size103770%_ '2)
           _%hash103765%_
           _%test103766%_
           _%seed103767%_
           _%lock103768%_))))
    (define make-raw-table__0
      (lambda (_%size-hint103778%_ _%hash103779%_ _%test103780%_)
        (let* ((_%seed103782%_ '0) (_%lock103784%_ '#f))
          (make-raw-table__%
           _%size-hint103778%_
           _%hash103779%_
           _%test103780%_
           _%seed103782%_
           _%lock103784%_))))
    (define make-raw-table__1
      (lambda (_%size-hint103786%_
               _%hash103787%_
               _%test103788%_
               _%seed103789%_)
        (let ((_%lock103791%_ '#f))
          (make-raw-table__%
           _%size-hint103786%_
           _%hash103787%_
           _%test103788%_
           _%seed103789%_
           _%lock103791%_))))
    (define make-raw-table
      (lambda _g103835_
        (let ((_g103836_ (##length _g103835_)))
          (cond ((##fx= _g103836_ 3) (apply make-raw-table__0 _g103835_))
                ((##fx= _g103836_ 4) (apply make-raw-table__1 _g103835_))
                ((##fx= _g103836_ 5) (apply make-raw-table__% _g103835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g103835_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint103744%_
               _%hash103745%_
               _%test103746%_
               _%seed103747%_)
        (make-raw-table__%
         _%size-hint103744%_
         _%hash103745%_
         _%test103746%_
         _%seed103747%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint103752%_ _%hash103753%_ _%test103754%_)
        (let ((_%seed103756%_ '0))
          (make-raw-table/lock__%
           _%size-hint103752%_
           _%hash103753%_
           _%test103754%_
           _%seed103756%_))))
    (define make-raw-table/lock
      (lambda _g103837_
        (let ((_g103838_ (##length _g103837_)))
          (cond ((##fx= _g103838_ 3) (apply make-raw-table/lock__0 _g103837_))
                ((##fx= _g103838_ 4) (apply make-raw-table/lock__% _g103837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g103837_))))))
    (define raw-table-length
      (lambda (_%tab103741%_) (&raw-table-count _%tab103741%_)))
    (define raw-table-length/lock
      (lambda (_%tab103716%_)
        (let ((_%lock103718%_ (&raw-table-lock _%tab103716%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103723%_ ((_%spin103726%_ '0))
              (if (##fx= (##vector-cas! _%lock103718%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103718%_ '1 (current-thread))
                  (if (##fx< _%spin103726%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103723%_ (##fx+ _%spin103726%_ '1)))
                      (let ((_%owner103732%_ (##vector-ref _%lock103718%_ '1)))
                        (if (eq? _%owner103732%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103732%_)
                                (let () (##thread-yield!) (_%again103723%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103738%_ (&raw-table-count _%tab103716%_)))
            (##vector-set! _%lock103718%_ '1 '#f)
            (##vector-cas! _%lock103718%_ '0 '0 '1)
            _%$r103738%_))))
    (define raw-table-ref
      (lambda (_%tab103668%_ _%key103669%_ _%default103670%_)
        (let ((_%table103672%_ (&raw-table-table _%tab103668%_))
              (_%seed103673%_ (&raw-table-seed _%tab103668%_))
              (_%hash103674%_ (&raw-table-hash _%tab103668%_))
              (_%test103675%_ (&raw-table-test _%tab103668%_)))
          (let* ((_%h103677%_
                  (fxxor (_%hash103674%_ _%key103669%_) _%seed103673%_))
                 (_%size103680%_ (vector-length _%table103672%_))
                 (_%entries103683%_ (##fxquotient _%size103680%_ '2))
                 (_%start103686%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103677%_ _%entries103683%_)
                   '1)))
            (let _%loop103690%_ ((_%probe103693%_ _%start103686%_)
                                 (_%i103695%_ '1)
                                 (_%deleted103697%_ '#f))
              (let ((_%k103700%_ (vector-ref _%table103672%_ _%probe103693%_)))
                (if (eq? _%k103700%_ (macro-unused-obj))
                    _%default103670%_
                    (if (eq? _%k103700%_ (macro-deleted-obj))
                        (_%loop103690%_
                         (let ((_%next-probe103705%_
                                (fx+ _%start103686%_
                                     _%i103695%_
                                     (fx* _%i103695%_ _%i103695%_))))
                           (##fxmodulo _%next-probe103705%_ _%size103680%_))
                         (##fx+ _%i103695%_ '1)
                         (let ((_%$e103708%_ _%deleted103697%_))
                           (if _%$e103708%_ _%$e103708%_ _%probe103693%_)))
                        (if (_%test103675%_ _%key103669%_ _%k103700%_)
                            (vector-ref
                             _%table103672%_
                             (##fx+ _%probe103693%_ '1))
                            (_%loop103690%_
                             (let ((_%next-probe103713%_
                                    (fx+ _%start103686%_
                                         _%i103695%_
                                         (fx* _%i103695%_ _%i103695%_))))
                               (##fxmodulo
                                _%next-probe103713%_
                                _%size103680%_))
                             (##fx+ _%i103695%_ '1)
                             _%deleted103697%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab103641%_ _%key103642%_ _%default103643%_)
        (let ((_%lock103645%_ (&raw-table-lock _%tab103641%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103650%_ ((_%spin103653%_ '0))
              (if (##fx= (##vector-cas! _%lock103645%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103645%_ '1 (current-thread))
                  (if (##fx< _%spin103653%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103650%_ (##fx+ _%spin103653%_ '1)))
                      (let ((_%owner103659%_ (##vector-ref _%lock103645%_ '1)))
                        (if (eq? _%owner103659%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103659%_)
                                (let () (##thread-yield!) (_%again103650%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103665%_
                 (raw-table-ref
                  _%tab103641%_
                  _%key103642%_
                  _%default103643%_)))
            (##vector-set! _%lock103645%_ '1 '#f)
            (##vector-cas! _%lock103645%_ '0 '0 '1)
            _%$r103665%_))))
    (define raw-table-set!
      (lambda (_%tab103637%_ _%key103638%_ _%value103639%_)
        (if (##fx< (&raw-table-free _%tab103637%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103637%_))
                    '4))
            (__raw-table-rehash! _%tab103637%_)
            '#!void)
        (__raw-table-set! _%tab103637%_ _%key103638%_ _%value103639%_)))
    (define raw-table-set!/lock
      (lambda (_%tab103610%_ _%key103611%_ _%value103612%_)
        (let ((_%lock103614%_ (&raw-table-lock _%tab103610%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103619%_ ((_%spin103622%_ '0))
              (if (##fx= (##vector-cas! _%lock103614%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103614%_ '1 (current-thread))
                  (if (##fx< _%spin103622%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103619%_ (##fx+ _%spin103622%_ '1)))
                      (let ((_%owner103628%_ (##vector-ref _%lock103614%_ '1)))
                        (if (eq? _%owner103628%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103628%_)
                                (let () (##thread-yield!) (_%again103619%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103634%_
                 (raw-table-set! _%tab103610%_ _%key103611%_ _%value103612%_)))
            (##vector-set! _%lock103614%_ '1 '#f)
            (##vector-cas! _%lock103614%_ '0 '0 '1)
            _%$r103634%_))))
    (define raw-table-update!
      (lambda (_%tab103605%_ _%key103606%_ _%update103607%_ _%default103608%_)
        (if (##fx< (&raw-table-free _%tab103605%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103605%_))
                    '4))
            (__raw-table-rehash! _%tab103605%_)
            '#!void)
        (__raw-table-update!
         _%tab103605%_
         _%key103606%_
         _%update103607%_
         _%default103608%_)))
    (define raw-table-update!/lock
      (lambda (_%tab103577%_ _%key103578%_ _%update103579%_ _%default103580%_)
        (let ((_%lock103582%_ (&raw-table-lock _%tab103577%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103587%_ ((_%spin103590%_ '0))
              (if (##fx= (##vector-cas! _%lock103582%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103582%_ '1 (current-thread))
                  (if (##fx< _%spin103590%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103587%_ (##fx+ _%spin103590%_ '1)))
                      (let ((_%owner103596%_ (##vector-ref _%lock103582%_ '1)))
                        (if (eq? _%owner103596%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103596%_)
                                (let () (##thread-yield!) (_%again103587%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103602%_
                 (raw-table-update!
                  _%tab103577%_
                  _%key103578%_
                  _%update103579%_
                  _%default103580%_)))
            (##vector-set! _%lock103582%_ '1 '#f)
            (##vector-cas! _%lock103582%_ '0 '0 '1)
            _%$r103602%_))))
    (define raw-table-delete!
      (lambda (_%tab103534%_ _%key103535%_)
        (let ((_%table103537%_ (&raw-table-table _%tab103534%_))
              (_%seed103538%_ (&raw-table-seed _%tab103534%_))
              (_%hash103539%_ (&raw-table-hash _%tab103534%_))
              (_%test103540%_ (&raw-table-test _%tab103534%_)))
          (let* ((_%h103542%_
                  (fxxor (_%hash103539%_ _%key103535%_) _%seed103538%_))
                 (_%size103545%_ (vector-length _%table103537%_))
                 (_%entries103548%_ (##fxquotient _%size103545%_ '2))
                 (_%start103551%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103542%_ _%entries103548%_)
                   '1)))
            (let _%loop103555%_ ((_%probe103558%_ _%start103551%_)
                                 (_%i103560%_ '1))
              (let ((_%k103563%_ (vector-ref _%table103537%_ _%probe103558%_)))
                (if (eq? _%k103563%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103563%_ (macro-deleted-obj))
                        (_%loop103555%_
                         (let ((_%next-probe103568%_
                                (fx+ _%start103551%_
                                     _%i103560%_
                                     (fx* _%i103560%_ _%i103560%_))))
                           (##fxmodulo _%next-probe103568%_ _%size103545%_))
                         (##fx+ _%i103560%_ '1))
                        (if (_%test103540%_ _%key103535%_ _%k103563%_)
                            (let ()
                              (vector-set!
                               _%table103537%_
                               _%probe103558%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103537%_
                               (##fx+ _%probe103558%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab103534%_
                                  (##fx- (&raw-table-count _%tab103534%_)
                                         '1)))))
                            (_%loop103555%_
                             (let ((_%next-probe103574%_
                                    (fx+ _%start103551%_
                                         _%i103560%_
                                         (fx* _%i103560%_ _%i103560%_))))
                               (##fxmodulo
                                _%next-probe103574%_
                                _%size103545%_))
                             (##fx+ _%i103560%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab103508%_ _%key103509%_)
        (let ((_%lock103511%_ (&raw-table-lock _%tab103508%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103516%_ ((_%spin103519%_ '0))
              (if (##fx= (##vector-cas! _%lock103511%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103511%_ '1 (current-thread))
                  (if (##fx< _%spin103519%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103516%_ (##fx+ _%spin103519%_ '1)))
                      (let ((_%owner103525%_ (##vector-ref _%lock103511%_ '1)))
                        (if (eq? _%owner103525%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103525%_)
                                (let () (##thread-yield!) (_%again103516%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103531%_ (raw-table-delete! _%tab103508%_ _%key103509%_)))
            (##vector-set! _%lock103511%_ '1 '#f)
            (##vector-cas! _%lock103511%_ '0 '0 '1)
            _%$r103531%_))))
    (define raw-table-for-each
      (lambda (_%tab103492%_ _%proc103493%_)
        (let* ((_%table103495%_ (&raw-table-table _%tab103492%_))
               (_%size103497%_ (vector-length _%table103495%_)))
          (let _%loop103500%_ ((_%i103502%_ '0))
            (if (##fx< _%i103502%_ _%size103497%_)
                (begin
                  (let ((_%key103504%_
                         (vector-ref _%table103495%_ _%i103502%_)))
                    (if (if (eq? _%key103504%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key103504%_ (macro-deleted-obj))))
                        (let ((_%value103506%_
                               (vector-ref
                                _%table103495%_
                                (##fx+ _%i103502%_ '1))))
                          (_%proc103493%_ _%key103504%_ _%value103506%_))
                        '#!void))
                  (_%loop103500%_ (##fx+ _%i103502%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab103466%_ _%proc103467%_)
        (let ((_%lock103469%_ (&raw-table-lock _%tab103466%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103474%_ ((_%spin103477%_ '0))
              (if (##fx= (##vector-cas! _%lock103469%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103469%_ '1 (current-thread))
                  (if (##fx< _%spin103477%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103474%_ (##fx+ _%spin103477%_ '1)))
                      (let ((_%owner103483%_ (##vector-ref _%lock103469%_ '1)))
                        (if (eq? _%owner103483%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103483%_)
                                (let () (##thread-yield!) (_%again103474%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103489%_
                 (raw-table-for-each _%tab103466%_ _%proc103467%_)))
            (##vector-set! _%lock103469%_ '1 '#f)
            (##vector-cas! _%lock103469%_ '0 '0 '1)
            _%$r103489%_))))
    (define raw-table-copy
      (lambda (_%tab103462%_)
        (let ((_%new-tab103464%_ (##structure-copy _%tab103462%_)))
          (&raw-table-table-set!
           _%new-tab103464%_
           (vector-copy (&raw-table-table _%tab103462%_)))
          _%new-tab103464%_)))
    (define raw-table-copy/lock
      (lambda (_%tab103437%_)
        (let ((_%lock103439%_ (&raw-table-lock _%tab103437%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103444%_ ((_%spin103447%_ '0))
              (if (##fx= (##vector-cas! _%lock103439%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103439%_ '1 (current-thread))
                  (if (##fx< _%spin103447%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103444%_ (##fx+ _%spin103447%_ '1)))
                      (let ((_%owner103453%_ (##vector-ref _%lock103439%_ '1)))
                        (if (eq? _%owner103453%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103453%_)
                                (let () (##thread-yield!) (_%again103444%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103459%_ (raw-table-copy _%tab103437%_)))
            (##vector-set! _%lock103439%_ '1 '#f)
            (##vector-cas! _%lock103439%_ '0 '0 '1)
            _%$r103459%_))))
    (define raw-table-clear!
      (lambda (_%tab103435%_)
        (vector-fill! (&raw-table-table _%tab103435%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab103435%_ '0)
        (&raw-table-free-set!
         _%tab103435%_
         (##fxquotient (vector-length (&raw-table-table _%tab103435%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab103410%_)
        (let ((_%lock103412%_ (&raw-table-lock _%tab103410%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103417%_ ((_%spin103420%_ '0))
              (if (##fx= (##vector-cas! _%lock103412%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103412%_ '1 (current-thread))
                  (if (##fx< _%spin103420%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103417%_ (##fx+ _%spin103420%_ '1)))
                      (let ((_%owner103426%_ (##vector-ref _%lock103412%_ '1)))
                        (if (eq? _%owner103426%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103426%_)
                                (let () (##thread-yield!) (_%again103417%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103432%_ (raw-table-clear! _%tab103410%_)))
            (##vector-set! _%lock103412%_ '1 '#f)
            (##vector-cas! _%lock103412%_ '0 '0 '1)
            _%$r103432%_))))
    (define __raw-table-set!
      (lambda (_%tab103360%_ _%key103361%_ _%value103362%_)
        (let ((_%table103364%_ (&raw-table-table _%tab103360%_))
              (_%seed103365%_ (&raw-table-seed _%tab103360%_))
              (_%hash103366%_ (&raw-table-hash _%tab103360%_))
              (_%test103367%_ (&raw-table-test _%tab103360%_)))
          (let* ((_%h103369%_
                  (fxxor (_%hash103366%_ _%key103361%_) _%seed103365%_))
                 (_%size103372%_ (vector-length _%table103364%_))
                 (_%entries103375%_ (##fxquotient _%size103372%_ '2))
                 (_%start103378%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103369%_ _%entries103375%_)
                   '1)))
            (let _%loop103382%_ ((_%probe103385%_ _%start103378%_)
                                 (_%i103387%_ '1)
                                 (_%deleted103389%_ '#f))
              (let ((_%k103392%_ (vector-ref _%table103364%_ _%probe103385%_)))
                (if (eq? _%k103392%_ (macro-unused-obj))
                    (if _%deleted103389%_
                        (begin
                          (vector-set!
                           _%table103364%_
                           _%deleted103389%_
                           _%key103361%_)
                          (vector-set!
                           _%table103364%_
                           (##fx+ _%deleted103389%_ '1)
                           _%value103362%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103360%_
                              (##fx+ (&raw-table-count _%tab103360%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103364%_
                           _%probe103385%_
                           _%key103361%_)
                          (vector-set!
                           _%table103364%_
                           (##fx+ _%probe103385%_ '1)
                           _%value103362%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103360%_
                              (##fx- (&raw-table-free _%tab103360%_) '1))
                             (&raw-table-count-set!
                              _%tab103360%_
                              (##fx+ (&raw-table-count _%tab103360%_) '1))))))
                    (if (eq? _%k103392%_ (macro-deleted-obj))
                        (_%loop103382%_
                         (let ((_%next-probe103399%_
                                (fx+ _%start103378%_
                                     _%i103387%_
                                     (fx* _%i103387%_ _%i103387%_))))
                           (##fxmodulo _%next-probe103399%_ _%size103372%_))
                         (##fx+ _%i103387%_ '1)
                         (let ((_%$e103402%_ _%deleted103389%_))
                           (if _%$e103402%_ _%$e103402%_ _%probe103385%_)))
                        (if (_%test103367%_ _%key103361%_ _%k103392%_)
                            (let ()
                              (vector-set!
                               _%table103364%_
                               _%probe103385%_
                               _%key103361%_)
                              (vector-set!
                               _%table103364%_
                               (##fx+ _%probe103385%_ '1)
                               _%value103362%_))
                            (_%loop103382%_
                             (let ((_%next-probe103407%_
                                    (fx+ _%start103378%_
                                         _%i103387%_
                                         (fx* _%i103387%_ _%i103387%_))))
                               (##fxmodulo
                                _%next-probe103407%_
                                _%size103372%_))
                             (##fx+ _%i103387%_ '1)
                             _%deleted103389%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab103309%_ _%key103310%_ _%update103311%_ _%default103312%_)
        (let ((_%table103314%_ (&raw-table-table _%tab103309%_))
              (_%seed103315%_ (&raw-table-seed _%tab103309%_))
              (_%hash103316%_ (&raw-table-hash _%tab103309%_))
              (_%test103317%_ (&raw-table-test _%tab103309%_)))
          (let* ((_%h103319%_
                  (fxxor (_%hash103316%_ _%key103310%_) _%seed103315%_))
                 (_%size103322%_ (vector-length _%table103314%_))
                 (_%entries103325%_ (##fxquotient _%size103322%_ '2))
                 (_%start103328%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103319%_ _%entries103325%_)
                   '1)))
            (let _%loop103332%_ ((_%probe103335%_ _%start103328%_)
                                 (_%i103337%_ '1)
                                 (_%deleted103339%_ '#f))
              (let ((_%k103342%_ (vector-ref _%table103314%_ _%probe103335%_)))
                (if (eq? _%k103342%_ (macro-unused-obj))
                    (if _%deleted103339%_
                        (begin
                          (vector-set!
                           _%table103314%_
                           _%deleted103339%_
                           _%key103310%_)
                          (vector-set!
                           _%table103314%_
                           (##fx+ _%deleted103339%_ '1)
                           (_%update103311%_ _%default103312%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103309%_
                              (##fx+ (&raw-table-count _%tab103309%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103314%_
                           _%probe103335%_
                           _%key103310%_)
                          (vector-set!
                           _%table103314%_
                           (##fx+ _%probe103335%_ '1)
                           (_%update103311%_ _%default103312%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103309%_
                              (##fx- (&raw-table-free _%tab103309%_) '1))
                             (&raw-table-count-set!
                              _%tab103309%_
                              (##fx+ (&raw-table-count _%tab103309%_) '1))))))
                    (if (eq? _%k103342%_ (macro-deleted-obj))
                        (_%loop103332%_
                         (let ((_%next-probe103349%_
                                (fx+ _%start103328%_
                                     _%i103337%_
                                     (fx* _%i103337%_ _%i103337%_))))
                           (##fxmodulo _%next-probe103349%_ _%size103322%_))
                         (##fx+ _%i103337%_ '1)
                         (let ((_%$e103352%_ _%deleted103339%_))
                           (if _%$e103352%_ _%$e103352%_ _%probe103335%_)))
                        (if (_%test103317%_ _%key103310%_ _%k103342%_)
                            (let ()
                              (vector-set!
                               _%table103314%_
                               _%probe103335%_
                               _%key103310%_)
                              (vector-set!
                               _%table103314%_
                               (##fx+ _%probe103335%_ '1)
                               (_%update103311%_
                                (vector-ref
                                 _%table103314%_
                                 (##fx+ _%probe103335%_ '1)))))
                            (_%loop103332%_
                             (let ((_%next-probe103357%_
                                    (fx+ _%start103328%_
                                         _%i103337%_
                                         (fx* _%i103337%_ _%i103337%_))))
                               (##fxmodulo
                                _%next-probe103357%_
                                _%size103322%_))
                             (##fx+ _%i103337%_ '1)
                             _%deleted103339%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab103290%_)
        (let* ((_%old-table103292%_ (&raw-table-table _%tab103290%_))
               (_%old-size103294%_ (vector-length _%old-table103292%_))
               (_%new-size103296%_
                (if (##fx< (&raw-table-count _%tab103290%_)
                           (##fxquotient _%old-size103294%_ '4))
                    (vector-length _%old-table103292%_)
                    (##fx* '2 (vector-length _%old-table103292%_))))
               (_%new-table103298%_
                (##make-vector _%new-size103296%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab103290%_ _%new-table103298%_)
          (&raw-table-count-set! _%tab103290%_ '0)
          (&raw-table-free-set!
           _%tab103290%_
           (##fxquotient _%new-size103296%_ '2))
          (let _%lp103301%_ ((_%i103303%_ '0))
            (if (##fx< _%i103303%_ _%old-size103294%_)
                (begin
                  (let ((_%key103305%_
                         (vector-ref _%old-table103292%_ _%i103303%_)))
                    (if (if (eq? _%key103305%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key103305%_ (macro-deleted-obj))))
                        (let ((_%value103307%_
                               (vector-ref
                                _%old-table103292%_
                                (##fx+ _%i103303%_ '1))))
                          (__raw-table-set!
                           _%tab103290%_
                           _%key103305%_
                           _%value103307%_))
                        '#!void))
                  (_%lp103301%_ (##fx+ _%i103303%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj103282%_)
        (let ((_%t103284%_ (##type _%obj103282%_)))
          (if (##fx= (##fxand _%t103284%_ '1) '0)
              (fxand (##type-cast _%obj103282%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj103282%_)
                  (##symbol-hash _%obj103282%_)
                  (if (procedure? _%obj103282%_)
                      (procedure-hash _%obj103282%_)
                      (fxand (__eq-hash _%obj103282%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj103278%_)
        (let ((_%h103280%_
               (if (##closure? _%obj103278%_)
                   (__eq-hash _%obj103278%_)
                   (##type-cast _%obj103278%_ '0))))
          (fxand _%h103280%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj103275%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj103275%_)))
    (define eqv-hash
      (lambda (_%obj103265%_)
        (letrec ((_%combine103267%_
                  (lambda (_%a103272%_ _%b103273%_)
                    (fxand (##fx* (##fx+ _%a103272%_
                                         (fxarithmetic-shift-left
                                          _%b103273%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash103268%_
                  (lambda (_%obj103270%_)
                    (macro-number-dispatch
                     _%obj103270%_
                     (eq-hash _%obj103270%_)
                     (fxand _%obj103270%_ (macro-max-fixnum32))
                     (modulo _%obj103270%_ '331804481)
                     (_%combine103267%_
                      (_%hash103268%_ (macro-ratnum-numerator _%obj103270%_))
                      (_%hash103268%_
                       (macro-ratnum-denominator _%obj103270%_)))
                     (_%combine103267%_
                      (##u16vector-ref _%obj103270%_ '0)
                      (_%combine103267%_
                       (##u16vector-ref _%obj103270%_ '1)
                       (_%combine103267%_
                        (##u16vector-ref _%obj103270%_ '2)
                        (##u16vector-ref _%obj103270%_ '3))))
                     (_%combine103267%_
                      (_%hash103268%_ (macro-cpxnum-real _%obj103270%_))
                      (_%hash103268%_ (macro-cpxnum-imag _%obj103270%_)))))))
          (_%hash103268%_ _%obj103265%_))))
    (define symbolic?
      (lambda (_%obj103260%_)
        (let ((_%$e103262%_ (symbol? _%obj103260%_)))
          (if _%$e103262%_ _%$e103262%_ (keyword? _%obj103260%_)))))
    (define symbolic-hash
      (lambda (_%obj103258%_) (##symbol-hash _%obj103258%_)))
    (define string-hash
      (lambda (_%obj103256%_) (##string=?-hash _%obj103256%_)))
    (define immediate-hash
      (lambda (_%obj103254%_) (##type-cast _%obj103254%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint103236%_ _%seed103237%_)
        (make-raw-table__1 _%size-hint103236%_ eq-hash eq? _%seed103237%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint103243%_ '#f) (_%seed103245%_ '0))
          (make-eq-table__% _%size-hint103243%_ _%seed103245%_))))
    (define make-eq-table__1
      (lambda (_%size-hint103247%_)
        (let ((_%seed103249%_ '0))
          (make-eq-table__% _%size-hint103247%_ _%seed103249%_))))
    (define make-eq-table
      (lambda _g103839_
        (let ((_g103840_ (##length _g103839_)))
          (cond ((##fx= _g103840_ 0) (apply make-eq-table__0 _g103839_))
                ((##fx= _g103840_ 1) (apply make-eq-table__1 _g103839_))
                ((##fx= _g103840_ 2) (apply make-eq-table__% _g103839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g103839_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint103216%_ _%seed103218%_)
        (make-raw-table/lock__%
         _%size-hint103216%_
         eq-hash
         eq?
         _%seed103218%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint103224%_ '#f) (_%seed103226%_ '0))
          (make-eq-table/lock__% _%size-hint103224%_ _%seed103226%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint103228%_)
        (let ((_%seed103230%_ '0))
          (make-eq-table/lock__% _%size-hint103228%_ _%seed103230%_))))
    (define make-eq-table/lock
      (lambda _g103841_
        (let ((_g103842_ (##length _g103841_)))
          (cond ((##fx= _g103842_ 0) (apply make-eq-table/lock__0 _g103841_))
                ((##fx= _g103842_ 1) (apply make-eq-table/lock__1 _g103841_))
                ((##fx= _g103842_ 2) (apply make-eq-table/lock__% _g103841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g103841_))))))
    (define eq-table-ref
      (lambda (_%tab103169%_ _%key103170%_ _%default103171%_)
        (let ((_%table103173%_ (&raw-table-table _%tab103169%_))
              (_%seed103174%_ (&raw-table-seed _%tab103169%_)))
          (let* ((_%h103176%_ (fxxor (eq-hash _%key103170%_) _%seed103174%_))
                 (_%size103179%_ (vector-length _%table103173%_))
                 (_%entries103182%_ (##fxquotient _%size103179%_ '2))
                 (_%start103185%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103176%_ _%entries103182%_)
                   '1)))
            (let _%loop103189%_ ((_%probe103192%_ _%start103185%_)
                                 (_%i103194%_ '1)
                                 (_%deleted103196%_ '#f))
              (let ((_%k103199%_ (vector-ref _%table103173%_ _%probe103192%_)))
                (if (eq? _%k103199%_ (macro-unused-obj))
                    _%default103171%_
                    (if (eq? _%k103199%_ (macro-deleted-obj))
                        (_%loop103189%_
                         (let ((_%next-probe103204%_
                                (fx+ _%start103185%_
                                     _%i103194%_
                                     (fx* _%i103194%_ _%i103194%_))))
                           (##fxmodulo _%next-probe103204%_ _%size103179%_))
                         (##fx+ _%i103194%_ '1)
                         (let ((_%$e103207%_ _%deleted103196%_))
                           (if _%$e103207%_ _%$e103207%_ _%probe103192%_)))
                        (if (eq? _%key103170%_ _%k103199%_)
                            (vector-ref
                             _%table103173%_
                             (##fx+ _%probe103192%_ '1))
                            (_%loop103189%_
                             (let ((_%next-probe103212%_
                                    (fx+ _%start103185%_
                                         _%i103194%_
                                         (fx* _%i103194%_ _%i103194%_))))
                               (##fxmodulo
                                _%next-probe103212%_
                                _%size103179%_))
                             (##fx+ _%i103194%_ '1)
                             _%deleted103196%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab103142%_ _%key103143%_ _%default103144%_)
        (let ((_%lock103146%_ (&raw-table-lock _%tab103142%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103151%_ ((_%spin103154%_ '0))
              (if (##fx= (##vector-cas! _%lock103146%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103146%_ '1 (current-thread))
                  (if (##fx< _%spin103154%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103151%_ (##fx+ _%spin103154%_ '1)))
                      (let ((_%owner103160%_ (##vector-ref _%lock103146%_ '1)))
                        (if (eq? _%owner103160%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103160%_)
                                (let () (##thread-yield!) (_%again103151%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103166%_
                 (eq-table-ref _%tab103142%_ _%key103143%_ _%default103144%_)))
            (##vector-set! _%lock103146%_ '1 '#f)
            (##vector-cas! _%lock103146%_ '0 '0 '1)
            _%$r103166%_))))
    (define __eq-table-set!
      (lambda (_%tab103094%_ _%key103095%_ _%value103096%_)
        (let ((_%table103098%_ (&raw-table-table _%tab103094%_))
              (_%seed103099%_ (&raw-table-seed _%tab103094%_)))
          (let* ((_%h103101%_ (fxxor (eq-hash _%key103095%_) _%seed103099%_))
                 (_%size103104%_ (vector-length _%table103098%_))
                 (_%entries103107%_ (##fxquotient _%size103104%_ '2))
                 (_%start103110%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103101%_ _%entries103107%_)
                   '1)))
            (let _%loop103114%_ ((_%probe103117%_ _%start103110%_)
                                 (_%i103119%_ '1)
                                 (_%deleted103121%_ '#f))
              (let ((_%k103124%_ (vector-ref _%table103098%_ _%probe103117%_)))
                (if (eq? _%k103124%_ (macro-unused-obj))
                    (if _%deleted103121%_
                        (begin
                          (vector-set!
                           _%table103098%_
                           _%deleted103121%_
                           _%key103095%_)
                          (vector-set!
                           _%table103098%_
                           (##fx+ _%deleted103121%_ '1)
                           _%value103096%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103094%_
                              (##fx+ (&raw-table-count _%tab103094%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103098%_
                           _%probe103117%_
                           _%key103095%_)
                          (vector-set!
                           _%table103098%_
                           (##fx+ _%probe103117%_ '1)
                           _%value103096%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103094%_
                              (##fx- (&raw-table-free _%tab103094%_) '1))
                             (&raw-table-count-set!
                              _%tab103094%_
                              (##fx+ (&raw-table-count _%tab103094%_) '1))))))
                    (if (eq? _%k103124%_ (macro-deleted-obj))
                        (_%loop103114%_
                         (let ((_%next-probe103131%_
                                (fx+ _%start103110%_
                                     _%i103119%_
                                     (fx* _%i103119%_ _%i103119%_))))
                           (##fxmodulo _%next-probe103131%_ _%size103104%_))
                         (##fx+ _%i103119%_ '1)
                         (let ((_%$e103134%_ _%deleted103121%_))
                           (if _%$e103134%_ _%$e103134%_ _%probe103117%_)))
                        (if (eq? _%key103095%_ _%k103124%_)
                            (let ()
                              (vector-set!
                               _%table103098%_
                               _%probe103117%_
                               _%key103095%_)
                              (vector-set!
                               _%table103098%_
                               (##fx+ _%probe103117%_ '1)
                               _%value103096%_))
                            (_%loop103114%_
                             (let ((_%next-probe103139%_
                                    (fx+ _%start103110%_
                                         _%i103119%_
                                         (fx* _%i103119%_ _%i103119%_))))
                               (##fxmodulo
                                _%next-probe103139%_
                                _%size103104%_))
                             (##fx+ _%i103119%_ '1)
                             _%deleted103121%_))))))))))
    (define eq-table-set!
      (lambda (_%tab103090%_ _%key103091%_ _%value103092%_)
        (if (##fx< (&raw-table-free _%tab103090%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103090%_))
                    '4))
            (__raw-table-rehash! _%tab103090%_)
            '#!void)
        (__eq-table-set! _%tab103090%_ _%key103091%_ _%value103092%_)))
    (define eq-table-set!/lock
      (lambda (_%tab103062%_ _%key103063%_ _%value103064%_)
        (let ((_%lock103067%_ (&raw-table-lock _%tab103062%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103072%_ ((_%spin103075%_ '0))
              (if (##fx= (##vector-cas! _%lock103067%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103067%_ '1 (current-thread))
                  (if (##fx< _%spin103075%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103072%_ (##fx+ _%spin103075%_ '1)))
                      (let ((_%owner103081%_ (##vector-ref _%lock103067%_ '1)))
                        (if (eq? _%owner103081%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103081%_)
                                (let () (##thread-yield!) (_%again103072%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103087%_
                 (eq-table-set! _%tab103062%_ _%key103063%_ _%value103064%_)))
            (##vector-set! _%lock103067%_ '1 '#f)
            (##vector-cas! _%lock103067%_ '0 '0 '1)
            _%$r103087%_))))
    (define __eq-table-update!
      (lambda (_%tab103013%_
               _%key103014%_
               _%eq-table-update!103015%_
               _%default103016%_)
        (let ((_%table103018%_ (&raw-table-table _%tab103013%_))
              (_%seed103019%_ (&raw-table-seed _%tab103013%_)))
          (let* ((_%h103021%_ (fxxor (eq-hash _%key103014%_) _%seed103019%_))
                 (_%size103024%_ (vector-length _%table103018%_))
                 (_%entries103027%_ (##fxquotient _%size103024%_ '2))
                 (_%start103030%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103021%_ _%entries103027%_)
                   '1)))
            (let _%loop103034%_ ((_%probe103037%_ _%start103030%_)
                                 (_%i103039%_ '1)
                                 (_%deleted103041%_ '#f))
              (let ((_%k103044%_ (vector-ref _%table103018%_ _%probe103037%_)))
                (if (eq? _%k103044%_ (macro-unused-obj))
                    (if _%deleted103041%_
                        (begin
                          (vector-set!
                           _%table103018%_
                           _%deleted103041%_
                           _%key103014%_)
                          (vector-set!
                           _%table103018%_
                           (##fx+ _%deleted103041%_ '1)
                           (_%eq-table-update!103015%_ _%default103016%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103013%_
                              (##fx+ (&raw-table-count _%tab103013%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103018%_
                           _%probe103037%_
                           _%key103014%_)
                          (vector-set!
                           _%table103018%_
                           (##fx+ _%probe103037%_ '1)
                           (_%eq-table-update!103015%_ _%default103016%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103013%_
                              (##fx- (&raw-table-free _%tab103013%_) '1))
                             (&raw-table-count-set!
                              _%tab103013%_
                              (##fx+ (&raw-table-count _%tab103013%_) '1))))))
                    (if (eq? _%k103044%_ (macro-deleted-obj))
                        (_%loop103034%_
                         (let ((_%next-probe103051%_
                                (fx+ _%start103030%_
                                     _%i103039%_
                                     (fx* _%i103039%_ _%i103039%_))))
                           (##fxmodulo _%next-probe103051%_ _%size103024%_))
                         (##fx+ _%i103039%_ '1)
                         (let ((_%$e103054%_ _%deleted103041%_))
                           (if _%$e103054%_ _%$e103054%_ _%probe103037%_)))
                        (if (eq? _%key103014%_ _%k103044%_)
                            (let ()
                              (vector-set!
                               _%table103018%_
                               _%probe103037%_
                               _%key103014%_)
                              (vector-set!
                               _%table103018%_
                               (##fx+ _%probe103037%_ '1)
                               (_%eq-table-update!103015%_
                                (vector-ref
                                 _%table103018%_
                                 (##fx+ _%probe103037%_ '1)))))
                            (_%loop103034%_
                             (let ((_%next-probe103059%_
                                    (fx+ _%start103030%_
                                         _%i103039%_
                                         (fx* _%i103039%_ _%i103039%_))))
                               (##fxmodulo
                                _%next-probe103059%_
                                _%size103024%_))
                             (##fx+ _%i103039%_ '1)
                             _%deleted103041%_))))))))))
    (define eq-table-update!
      (lambda (_%tab103008%_
               _%key103009%_
               _%eq-table-update!103010%_
               _%default103011%_)
        (if (##fx< (&raw-table-free _%tab103008%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103008%_))
                    '4))
            (__raw-table-rehash! _%tab103008%_)
            '#!void)
        (__eq-table-update!
         _%tab103008%_
         _%key103009%_
         _%eq-table-update!103010%_
         _%default103011%_)))
    (define eq-table-update!/lock
      (lambda (_%tab102979%_
               _%key102980%_
               _%eq-table-update!102981%_
               _%default102982%_)
        (let ((_%lock102985%_ (&raw-table-lock _%tab102979%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102990%_ ((_%spin102993%_ '0))
              (if (##fx= (##vector-cas! _%lock102985%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102985%_ '1 (current-thread))
                  (if (##fx< _%spin102993%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102990%_ (##fx+ _%spin102993%_ '1)))
                      (let ((_%owner102999%_ (##vector-ref _%lock102985%_ '1)))
                        (if (eq? _%owner102999%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102999%_)
                                (let () (##thread-yield!) (_%again102990%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103005%_
                 (_%eq-table-update!102981%_
                  _%tab102979%_
                  _%key102980%_
                  _%eq-table-update!102981%_
                  _%default102982%_)))
            (##vector-set! _%lock102985%_ '1 '#f)
            (##vector-cas! _%lock102985%_ '0 '0 '1)
            _%$r103005%_))))
    (define eq-table-delete!
      (lambda (_%tab102936%_ _%key102937%_)
        (let ((_%table102939%_ (&raw-table-table _%tab102936%_))
              (_%seed102941%_ (&raw-table-seed _%tab102936%_)))
          (let* ((_%h102944%_ (fxxor (eq-hash _%key102937%_) _%seed102941%_))
                 (_%size102947%_ (vector-length _%table102939%_))
                 (_%entries102950%_ (##fxquotient _%size102947%_ '2))
                 (_%start102953%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102944%_ _%entries102950%_)
                   '1)))
            (let _%loop102957%_ ((_%probe102960%_ _%start102953%_)
                                 (_%i102962%_ '1))
              (let ((_%k102965%_ (vector-ref _%table102939%_ _%probe102960%_)))
                (if (eq? _%k102965%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102965%_ (macro-deleted-obj))
                        (_%loop102957%_
                         (let ((_%next-probe102970%_
                                (fx+ _%start102953%_
                                     _%i102962%_
                                     (fx* _%i102962%_ _%i102962%_))))
                           (##fxmodulo _%next-probe102970%_ _%size102947%_))
                         (##fx+ _%i102962%_ '1))
                        (if (eq? _%key102937%_ _%k102965%_)
                            (let ()
                              (vector-set!
                               _%table102939%_
                               _%probe102960%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102939%_
                               (##fx+ _%probe102960%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102936%_
                                  (##fx- (&raw-table-count _%tab102936%_)
                                         '1)))))
                            (_%loop102957%_
                             (let ((_%next-probe102976%_
                                    (fx+ _%start102953%_
                                         _%i102962%_
                                         (fx* _%i102962%_ _%i102962%_))))
                               (##fxmodulo
                                _%next-probe102976%_
                                _%size102947%_))
                             (##fx+ _%i102962%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab102908%_ _%key102910%_)
        (let ((_%lock102913%_ (&raw-table-lock _%tab102908%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102918%_ ((_%spin102921%_ '0))
              (if (##fx= (##vector-cas! _%lock102913%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102913%_ '1 (current-thread))
                  (if (##fx< _%spin102921%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102918%_ (##fx+ _%spin102921%_ '1)))
                      (let ((_%owner102927%_ (##vector-ref _%lock102913%_ '1)))
                        (if (eq? _%owner102927%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102927%_)
                                (let () (##thread-yield!) (_%again102918%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102933%_ (eq-table-delete! _%tab102908%_ _%key102910%_)))
            (##vector-set! _%lock102913%_ '1 '#f)
            (##vector-cas! _%lock102913%_ '0 '0 '1)
            _%$r102933%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint102890%_ _%seed102891%_)
        (make-raw-table__1 _%size-hint102890%_ eqv-hash eqv? _%seed102891%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint102897%_ '#f) (_%seed102899%_ '0))
          (make-eqv-table__% _%size-hint102897%_ _%seed102899%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint102901%_)
        (let ((_%seed102903%_ '0))
          (make-eqv-table__% _%size-hint102901%_ _%seed102903%_))))
    (define make-eqv-table
      (lambda _g103843_
        (let ((_g103844_ (##length _g103843_)))
          (cond ((##fx= _g103844_ 0) (apply make-eqv-table__0 _g103843_))
                ((##fx= _g103844_ 1) (apply make-eqv-table__1 _g103843_))
                ((##fx= _g103844_ 2) (apply make-eqv-table__% _g103843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g103843_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint102870%_ _%seed102872%_)
        (make-raw-table/lock__%
         _%size-hint102870%_
         eqv-hash
         eqv?
         _%seed102872%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint102878%_ '#f) (_%seed102880%_ '0))
          (make-eqv-table/lock__% _%size-hint102878%_ _%seed102880%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint102882%_)
        (let ((_%seed102884%_ '0))
          (make-eqv-table/lock__% _%size-hint102882%_ _%seed102884%_))))
    (define make-eqv-table/lock
      (lambda _g103845_
        (let ((_g103846_ (##length _g103845_)))
          (cond ((##fx= _g103846_ 0) (apply make-eqv-table/lock__0 _g103845_))
                ((##fx= _g103846_ 1) (apply make-eqv-table/lock__1 _g103845_))
                ((##fx= _g103846_ 2) (apply make-eqv-table/lock__% _g103845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g103845_))))))
    (define eqv-table-ref
      (lambda (_%tab102823%_ _%key102824%_ _%default102825%_)
        (let ((_%table102827%_ (&raw-table-table _%tab102823%_))
              (_%seed102828%_ (&raw-table-seed _%tab102823%_)))
          (let* ((_%h102830%_ (fxxor (eqv-hash _%key102824%_) _%seed102828%_))
                 (_%size102833%_ (vector-length _%table102827%_))
                 (_%entries102836%_ (##fxquotient _%size102833%_ '2))
                 (_%start102839%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102830%_ _%entries102836%_)
                   '1)))
            (let _%loop102843%_ ((_%probe102846%_ _%start102839%_)
                                 (_%i102848%_ '1)
                                 (_%deleted102850%_ '#f))
              (let ((_%k102853%_ (vector-ref _%table102827%_ _%probe102846%_)))
                (if (eq? _%k102853%_ (macro-unused-obj))
                    _%default102825%_
                    (if (eq? _%k102853%_ (macro-deleted-obj))
                        (_%loop102843%_
                         (let ((_%next-probe102858%_
                                (fx+ _%start102839%_
                                     _%i102848%_
                                     (fx* _%i102848%_ _%i102848%_))))
                           (##fxmodulo _%next-probe102858%_ _%size102833%_))
                         (##fx+ _%i102848%_ '1)
                         (let ((_%$e102861%_ _%deleted102850%_))
                           (if _%$e102861%_ _%$e102861%_ _%probe102846%_)))
                        (if (eqv? _%key102824%_ _%k102853%_)
                            (vector-ref
                             _%table102827%_
                             (##fx+ _%probe102846%_ '1))
                            (_%loop102843%_
                             (let ((_%next-probe102866%_
                                    (fx+ _%start102839%_
                                         _%i102848%_
                                         (fx* _%i102848%_ _%i102848%_))))
                               (##fxmodulo
                                _%next-probe102866%_
                                _%size102833%_))
                             (##fx+ _%i102848%_ '1)
                             _%deleted102850%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab102796%_ _%key102797%_ _%default102798%_)
        (let ((_%lock102800%_ (&raw-table-lock _%tab102796%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102805%_ ((_%spin102808%_ '0))
              (if (##fx= (##vector-cas! _%lock102800%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102800%_ '1 (current-thread))
                  (if (##fx< _%spin102808%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102805%_ (##fx+ _%spin102808%_ '1)))
                      (let ((_%owner102814%_ (##vector-ref _%lock102800%_ '1)))
                        (if (eq? _%owner102814%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102814%_)
                                (let () (##thread-yield!) (_%again102805%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102820%_
                 (eqv-table-ref
                  _%tab102796%_
                  _%key102797%_
                  _%default102798%_)))
            (##vector-set! _%lock102800%_ '1 '#f)
            (##vector-cas! _%lock102800%_ '0 '0 '1)
            _%$r102820%_))))
    (define __eqv-table-set!
      (lambda (_%tab102748%_ _%key102749%_ _%value102750%_)
        (let ((_%table102752%_ (&raw-table-table _%tab102748%_))
              (_%seed102753%_ (&raw-table-seed _%tab102748%_)))
          (let* ((_%h102755%_ (fxxor (eqv-hash _%key102749%_) _%seed102753%_))
                 (_%size102758%_ (vector-length _%table102752%_))
                 (_%entries102761%_ (##fxquotient _%size102758%_ '2))
                 (_%start102764%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102755%_ _%entries102761%_)
                   '1)))
            (let _%loop102768%_ ((_%probe102771%_ _%start102764%_)
                                 (_%i102773%_ '1)
                                 (_%deleted102775%_ '#f))
              (let ((_%k102778%_ (vector-ref _%table102752%_ _%probe102771%_)))
                (if (eq? _%k102778%_ (macro-unused-obj))
                    (if _%deleted102775%_
                        (begin
                          (vector-set!
                           _%table102752%_
                           _%deleted102775%_
                           _%key102749%_)
                          (vector-set!
                           _%table102752%_
                           (##fx+ _%deleted102775%_ '1)
                           _%value102750%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102748%_
                              (##fx+ (&raw-table-count _%tab102748%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102752%_
                           _%probe102771%_
                           _%key102749%_)
                          (vector-set!
                           _%table102752%_
                           (##fx+ _%probe102771%_ '1)
                           _%value102750%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102748%_
                              (##fx- (&raw-table-free _%tab102748%_) '1))
                             (&raw-table-count-set!
                              _%tab102748%_
                              (##fx+ (&raw-table-count _%tab102748%_) '1))))))
                    (if (eq? _%k102778%_ (macro-deleted-obj))
                        (_%loop102768%_
                         (let ((_%next-probe102785%_
                                (fx+ _%start102764%_
                                     _%i102773%_
                                     (fx* _%i102773%_ _%i102773%_))))
                           (##fxmodulo _%next-probe102785%_ _%size102758%_))
                         (##fx+ _%i102773%_ '1)
                         (let ((_%$e102788%_ _%deleted102775%_))
                           (if _%$e102788%_ _%$e102788%_ _%probe102771%_)))
                        (if (eqv? _%key102749%_ _%k102778%_)
                            (let ()
                              (vector-set!
                               _%table102752%_
                               _%probe102771%_
                               _%key102749%_)
                              (vector-set!
                               _%table102752%_
                               (##fx+ _%probe102771%_ '1)
                               _%value102750%_))
                            (_%loop102768%_
                             (let ((_%next-probe102793%_
                                    (fx+ _%start102764%_
                                         _%i102773%_
                                         (fx* _%i102773%_ _%i102773%_))))
                               (##fxmodulo
                                _%next-probe102793%_
                                _%size102758%_))
                             (##fx+ _%i102773%_ '1)
                             _%deleted102775%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab102744%_ _%key102745%_ _%value102746%_)
        (if (##fx< (&raw-table-free _%tab102744%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102744%_))
                    '4))
            (__raw-table-rehash! _%tab102744%_)
            '#!void)
        (__eqv-table-set! _%tab102744%_ _%key102745%_ _%value102746%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab102716%_ _%key102717%_ _%value102718%_)
        (let ((_%lock102721%_ (&raw-table-lock _%tab102716%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102726%_ ((_%spin102729%_ '0))
              (if (##fx= (##vector-cas! _%lock102721%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102721%_ '1 (current-thread))
                  (if (##fx< _%spin102729%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102726%_ (##fx+ _%spin102729%_ '1)))
                      (let ((_%owner102735%_ (##vector-ref _%lock102721%_ '1)))
                        (if (eq? _%owner102735%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102735%_)
                                (let () (##thread-yield!) (_%again102726%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102741%_
                 (eqv-table-set! _%tab102716%_ _%key102717%_ _%value102718%_)))
            (##vector-set! _%lock102721%_ '1 '#f)
            (##vector-cas! _%lock102721%_ '0 '0 '1)
            _%$r102741%_))))
    (define __eqv-table-update!
      (lambda (_%tab102667%_
               _%key102668%_
               _%eqv-table-update!102669%_
               _%default102670%_)
        (let ((_%table102672%_ (&raw-table-table _%tab102667%_))
              (_%seed102673%_ (&raw-table-seed _%tab102667%_)))
          (let* ((_%h102675%_ (fxxor (eqv-hash _%key102668%_) _%seed102673%_))
                 (_%size102678%_ (vector-length _%table102672%_))
                 (_%entries102681%_ (##fxquotient _%size102678%_ '2))
                 (_%start102684%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102675%_ _%entries102681%_)
                   '1)))
            (let _%loop102688%_ ((_%probe102691%_ _%start102684%_)
                                 (_%i102693%_ '1)
                                 (_%deleted102695%_ '#f))
              (let ((_%k102698%_ (vector-ref _%table102672%_ _%probe102691%_)))
                (if (eq? _%k102698%_ (macro-unused-obj))
                    (if _%deleted102695%_
                        (begin
                          (vector-set!
                           _%table102672%_
                           _%deleted102695%_
                           _%key102668%_)
                          (vector-set!
                           _%table102672%_
                           (##fx+ _%deleted102695%_ '1)
                           (_%eqv-table-update!102669%_ _%default102670%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102667%_
                              (##fx+ (&raw-table-count _%tab102667%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102672%_
                           _%probe102691%_
                           _%key102668%_)
                          (vector-set!
                           _%table102672%_
                           (##fx+ _%probe102691%_ '1)
                           (_%eqv-table-update!102669%_ _%default102670%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102667%_
                              (##fx- (&raw-table-free _%tab102667%_) '1))
                             (&raw-table-count-set!
                              _%tab102667%_
                              (##fx+ (&raw-table-count _%tab102667%_) '1))))))
                    (if (eq? _%k102698%_ (macro-deleted-obj))
                        (_%loop102688%_
                         (let ((_%next-probe102705%_
                                (fx+ _%start102684%_
                                     _%i102693%_
                                     (fx* _%i102693%_ _%i102693%_))))
                           (##fxmodulo _%next-probe102705%_ _%size102678%_))
                         (##fx+ _%i102693%_ '1)
                         (let ((_%$e102708%_ _%deleted102695%_))
                           (if _%$e102708%_ _%$e102708%_ _%probe102691%_)))
                        (if (eqv? _%key102668%_ _%k102698%_)
                            (let ()
                              (vector-set!
                               _%table102672%_
                               _%probe102691%_
                               _%key102668%_)
                              (vector-set!
                               _%table102672%_
                               (##fx+ _%probe102691%_ '1)
                               (_%eqv-table-update!102669%_
                                (vector-ref
                                 _%table102672%_
                                 (##fx+ _%probe102691%_ '1)))))
                            (_%loop102688%_
                             (let ((_%next-probe102713%_
                                    (fx+ _%start102684%_
                                         _%i102693%_
                                         (fx* _%i102693%_ _%i102693%_))))
                               (##fxmodulo
                                _%next-probe102713%_
                                _%size102678%_))
                             (##fx+ _%i102693%_ '1)
                             _%deleted102695%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab102662%_
               _%key102663%_
               _%eqv-table-update!102664%_
               _%default102665%_)
        (if (##fx< (&raw-table-free _%tab102662%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102662%_))
                    '4))
            (__raw-table-rehash! _%tab102662%_)
            '#!void)
        (__eqv-table-update!
         _%tab102662%_
         _%key102663%_
         _%eqv-table-update!102664%_
         _%default102665%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab102633%_
               _%key102634%_
               _%eqv-table-update!102635%_
               _%default102636%_)
        (let ((_%lock102639%_ (&raw-table-lock _%tab102633%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102644%_ ((_%spin102647%_ '0))
              (if (##fx= (##vector-cas! _%lock102639%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102639%_ '1 (current-thread))
                  (if (##fx< _%spin102647%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102644%_ (##fx+ _%spin102647%_ '1)))
                      (let ((_%owner102653%_ (##vector-ref _%lock102639%_ '1)))
                        (if (eq? _%owner102653%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102653%_)
                                (let () (##thread-yield!) (_%again102644%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102659%_
                 (_%eqv-table-update!102635%_
                  _%tab102633%_
                  _%key102634%_
                  _%eqv-table-update!102635%_
                  _%default102636%_)))
            (##vector-set! _%lock102639%_ '1 '#f)
            (##vector-cas! _%lock102639%_ '0 '0 '1)
            _%$r102659%_))))
    (define eqv-table-delete!
      (lambda (_%tab102590%_ _%key102591%_)
        (let ((_%table102593%_ (&raw-table-table _%tab102590%_))
              (_%seed102595%_ (&raw-table-seed _%tab102590%_)))
          (let* ((_%h102598%_ (fxxor (eqv-hash _%key102591%_) _%seed102595%_))
                 (_%size102601%_ (vector-length _%table102593%_))
                 (_%entries102604%_ (##fxquotient _%size102601%_ '2))
                 (_%start102607%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102598%_ _%entries102604%_)
                   '1)))
            (let _%loop102611%_ ((_%probe102614%_ _%start102607%_)
                                 (_%i102616%_ '1))
              (let ((_%k102619%_ (vector-ref _%table102593%_ _%probe102614%_)))
                (if (eq? _%k102619%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102619%_ (macro-deleted-obj))
                        (_%loop102611%_
                         (let ((_%next-probe102624%_
                                (fx+ _%start102607%_
                                     _%i102616%_
                                     (fx* _%i102616%_ _%i102616%_))))
                           (##fxmodulo _%next-probe102624%_ _%size102601%_))
                         (##fx+ _%i102616%_ '1))
                        (if (eqv? _%key102591%_ _%k102619%_)
                            (let ()
                              (vector-set!
                               _%table102593%_
                               _%probe102614%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102593%_
                               (##fx+ _%probe102614%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102590%_
                                  (##fx- (&raw-table-count _%tab102590%_)
                                         '1)))))
                            (_%loop102611%_
                             (let ((_%next-probe102630%_
                                    (fx+ _%start102607%_
                                         _%i102616%_
                                         (fx* _%i102616%_ _%i102616%_))))
                               (##fxmodulo
                                _%next-probe102630%_
                                _%size102601%_))
                             (##fx+ _%i102616%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab102562%_ _%key102564%_)
        (let ((_%lock102567%_ (&raw-table-lock _%tab102562%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102572%_ ((_%spin102575%_ '0))
              (if (##fx= (##vector-cas! _%lock102567%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102567%_ '1 (current-thread))
                  (if (##fx< _%spin102575%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102572%_ (##fx+ _%spin102575%_ '1)))
                      (let ((_%owner102581%_ (##vector-ref _%lock102567%_ '1)))
                        (if (eq? _%owner102581%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102581%_)
                                (let () (##thread-yield!) (_%again102572%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102587%_ (eqv-table-delete! _%tab102562%_ _%key102564%_)))
            (##vector-set! _%lock102567%_ '1 '#f)
            (##vector-cas! _%lock102567%_ '0 '0 '1)
            _%$r102587%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint102544%_ _%seed102545%_)
        (make-raw-table__1
         _%size-hint102544%_
         symbolic-hash
         eq?
         _%seed102545%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint102551%_ '#f) (_%seed102553%_ '0))
          (make-symbolic-table__% _%size-hint102551%_ _%seed102553%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint102555%_)
        (let ((_%seed102557%_ '0))
          (make-symbolic-table__% _%size-hint102555%_ _%seed102557%_))))
    (define make-symbolic-table
      (lambda _g103847_
        (let ((_g103848_ (##length _g103847_)))
          (cond ((##fx= _g103848_ 0) (apply make-symbolic-table__0 _g103847_))
                ((##fx= _g103848_ 1) (apply make-symbolic-table__1 _g103847_))
                ((##fx= _g103848_ 2) (apply make-symbolic-table__% _g103847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g103847_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint102524%_ _%seed102526%_)
        (make-raw-table/lock__%
         _%size-hint102524%_
         symbolic-hash
         eq?
         _%seed102526%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint102532%_ '#f) (_%seed102534%_ '0))
          (make-symbolic-table/lock__% _%size-hint102532%_ _%seed102534%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint102536%_)
        (let ((_%seed102538%_ '0))
          (make-symbolic-table/lock__% _%size-hint102536%_ _%seed102538%_))))
    (define make-symbolic-table/lock
      (lambda _g103849_
        (let ((_g103850_ (##length _g103849_)))
          (cond ((##fx= _g103850_ 0)
                 (apply make-symbolic-table/lock__0 _g103849_))
                ((##fx= _g103850_ 1)
                 (apply make-symbolic-table/lock__1 _g103849_))
                ((##fx= _g103850_ 2)
                 (apply make-symbolic-table/lock__% _g103849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g103849_))))))
    (define symbolic-table-ref
      (lambda (_%tab102477%_ _%key102478%_ _%default102479%_)
        (let ((_%table102481%_ (&raw-table-table _%tab102477%_))
              (_%seed102482%_ (&raw-table-seed _%tab102477%_)))
          (let* ((_%h102484%_
                  (fxxor (##symbol-hash _%key102478%_) _%seed102482%_))
                 (_%size102487%_ (vector-length _%table102481%_))
                 (_%entries102490%_ (##fxquotient _%size102487%_ '2))
                 (_%start102493%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102484%_ _%entries102490%_)
                   '1)))
            (let _%loop102497%_ ((_%probe102500%_ _%start102493%_)
                                 (_%i102502%_ '1)
                                 (_%deleted102504%_ '#f))
              (let ((_%k102507%_ (vector-ref _%table102481%_ _%probe102500%_)))
                (if (eq? _%k102507%_ (macro-unused-obj))
                    _%default102479%_
                    (if (eq? _%k102507%_ (macro-deleted-obj))
                        (_%loop102497%_
                         (let ((_%next-probe102512%_
                                (fx+ _%start102493%_
                                     _%i102502%_
                                     (fx* _%i102502%_ _%i102502%_))))
                           (##fxmodulo _%next-probe102512%_ _%size102487%_))
                         (##fx+ _%i102502%_ '1)
                         (let ((_%$e102515%_ _%deleted102504%_))
                           (if _%$e102515%_ _%$e102515%_ _%probe102500%_)))
                        (if (eq? _%key102478%_ _%k102507%_)
                            (vector-ref
                             _%table102481%_
                             (##fx+ _%probe102500%_ '1))
                            (_%loop102497%_
                             (let ((_%next-probe102520%_
                                    (fx+ _%start102493%_
                                         _%i102502%_
                                         (fx* _%i102502%_ _%i102502%_))))
                               (##fxmodulo
                                _%next-probe102520%_
                                _%size102487%_))
                             (##fx+ _%i102502%_ '1)
                             _%deleted102504%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab102450%_ _%key102451%_ _%default102452%_)
        (let ((_%lock102454%_ (&raw-table-lock _%tab102450%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102459%_ ((_%spin102462%_ '0))
              (if (##fx= (##vector-cas! _%lock102454%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102454%_ '1 (current-thread))
                  (if (##fx< _%spin102462%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102459%_ (##fx+ _%spin102462%_ '1)))
                      (let ((_%owner102468%_ (##vector-ref _%lock102454%_ '1)))
                        (if (eq? _%owner102468%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102468%_)
                                (let () (##thread-yield!) (_%again102459%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102474%_
                 (symbolic-table-ref
                  _%tab102450%_
                  _%key102451%_
                  _%default102452%_)))
            (##vector-set! _%lock102454%_ '1 '#f)
            (##vector-cas! _%lock102454%_ '0 '0 '1)
            _%$r102474%_))))
    (define __symbolic-table-set!
      (lambda (_%tab102402%_ _%key102403%_ _%value102404%_)
        (let ((_%table102406%_ (&raw-table-table _%tab102402%_))
              (_%seed102407%_ (&raw-table-seed _%tab102402%_)))
          (let* ((_%h102409%_
                  (fxxor (##symbol-hash _%key102403%_) _%seed102407%_))
                 (_%size102412%_ (vector-length _%table102406%_))
                 (_%entries102415%_ (##fxquotient _%size102412%_ '2))
                 (_%start102418%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102409%_ _%entries102415%_)
                   '1)))
            (let _%loop102422%_ ((_%probe102425%_ _%start102418%_)
                                 (_%i102427%_ '1)
                                 (_%deleted102429%_ '#f))
              (let ((_%k102432%_ (vector-ref _%table102406%_ _%probe102425%_)))
                (if (eq? _%k102432%_ (macro-unused-obj))
                    (if _%deleted102429%_
                        (begin
                          (vector-set!
                           _%table102406%_
                           _%deleted102429%_
                           _%key102403%_)
                          (vector-set!
                           _%table102406%_
                           (##fx+ _%deleted102429%_ '1)
                           _%value102404%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102402%_
                              (##fx+ (&raw-table-count _%tab102402%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102406%_
                           _%probe102425%_
                           _%key102403%_)
                          (vector-set!
                           _%table102406%_
                           (##fx+ _%probe102425%_ '1)
                           _%value102404%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102402%_
                              (##fx- (&raw-table-free _%tab102402%_) '1))
                             (&raw-table-count-set!
                              _%tab102402%_
                              (##fx+ (&raw-table-count _%tab102402%_) '1))))))
                    (if (eq? _%k102432%_ (macro-deleted-obj))
                        (_%loop102422%_
                         (let ((_%next-probe102439%_
                                (fx+ _%start102418%_
                                     _%i102427%_
                                     (fx* _%i102427%_ _%i102427%_))))
                           (##fxmodulo _%next-probe102439%_ _%size102412%_))
                         (##fx+ _%i102427%_ '1)
                         (let ((_%$e102442%_ _%deleted102429%_))
                           (if _%$e102442%_ _%$e102442%_ _%probe102425%_)))
                        (if (eq? _%key102403%_ _%k102432%_)
                            (let ()
                              (vector-set!
                               _%table102406%_
                               _%probe102425%_
                               _%key102403%_)
                              (vector-set!
                               _%table102406%_
                               (##fx+ _%probe102425%_ '1)
                               _%value102404%_))
                            (_%loop102422%_
                             (let ((_%next-probe102447%_
                                    (fx+ _%start102418%_
                                         _%i102427%_
                                         (fx* _%i102427%_ _%i102427%_))))
                               (##fxmodulo
                                _%next-probe102447%_
                                _%size102412%_))
                             (##fx+ _%i102427%_ '1)
                             _%deleted102429%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab102398%_ _%key102399%_ _%value102400%_)
        (if (##fx< (&raw-table-free _%tab102398%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102398%_))
                    '4))
            (__raw-table-rehash! _%tab102398%_)
            '#!void)
        (__symbolic-table-set! _%tab102398%_ _%key102399%_ _%value102400%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab102370%_ _%key102371%_ _%value102372%_)
        (let ((_%lock102375%_ (&raw-table-lock _%tab102370%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102380%_ ((_%spin102383%_ '0))
              (if (##fx= (##vector-cas! _%lock102375%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102375%_ '1 (current-thread))
                  (if (##fx< _%spin102383%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102380%_ (##fx+ _%spin102383%_ '1)))
                      (let ((_%owner102389%_ (##vector-ref _%lock102375%_ '1)))
                        (if (eq? _%owner102389%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102389%_)
                                (let () (##thread-yield!) (_%again102380%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102395%_
                 (symbolic-table-set!
                  _%tab102370%_
                  _%key102371%_
                  _%value102372%_)))
            (##vector-set! _%lock102375%_ '1 '#f)
            (##vector-cas! _%lock102375%_ '0 '0 '1)
            _%$r102395%_))))
    (define __symbolic-table-update!
      (lambda (_%tab102321%_
               _%key102322%_
               _%symbolic-table-update!102323%_
               _%default102324%_)
        (let ((_%table102326%_ (&raw-table-table _%tab102321%_))
              (_%seed102327%_ (&raw-table-seed _%tab102321%_)))
          (let* ((_%h102329%_
                  (fxxor (##symbol-hash _%key102322%_) _%seed102327%_))
                 (_%size102332%_ (vector-length _%table102326%_))
                 (_%entries102335%_ (##fxquotient _%size102332%_ '2))
                 (_%start102338%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102329%_ _%entries102335%_)
                   '1)))
            (let _%loop102342%_ ((_%probe102345%_ _%start102338%_)
                                 (_%i102347%_ '1)
                                 (_%deleted102349%_ '#f))
              (let ((_%k102352%_ (vector-ref _%table102326%_ _%probe102345%_)))
                (if (eq? _%k102352%_ (macro-unused-obj))
                    (if _%deleted102349%_
                        (begin
                          (vector-set!
                           _%table102326%_
                           _%deleted102349%_
                           _%key102322%_)
                          (vector-set!
                           _%table102326%_
                           (##fx+ _%deleted102349%_ '1)
                           (_%symbolic-table-update!102323%_
                            _%default102324%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102321%_
                              (##fx+ (&raw-table-count _%tab102321%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102326%_
                           _%probe102345%_
                           _%key102322%_)
                          (vector-set!
                           _%table102326%_
                           (##fx+ _%probe102345%_ '1)
                           (_%symbolic-table-update!102323%_
                            _%default102324%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102321%_
                              (##fx- (&raw-table-free _%tab102321%_) '1))
                             (&raw-table-count-set!
                              _%tab102321%_
                              (##fx+ (&raw-table-count _%tab102321%_) '1))))))
                    (if (eq? _%k102352%_ (macro-deleted-obj))
                        (_%loop102342%_
                         (let ((_%next-probe102359%_
                                (fx+ _%start102338%_
                                     _%i102347%_
                                     (fx* _%i102347%_ _%i102347%_))))
                           (##fxmodulo _%next-probe102359%_ _%size102332%_))
                         (##fx+ _%i102347%_ '1)
                         (let ((_%$e102362%_ _%deleted102349%_))
                           (if _%$e102362%_ _%$e102362%_ _%probe102345%_)))
                        (if (eq? _%key102322%_ _%k102352%_)
                            (let ()
                              (vector-set!
                               _%table102326%_
                               _%probe102345%_
                               _%key102322%_)
                              (vector-set!
                               _%table102326%_
                               (##fx+ _%probe102345%_ '1)
                               (_%symbolic-table-update!102323%_
                                (vector-ref
                                 _%table102326%_
                                 (##fx+ _%probe102345%_ '1)))))
                            (_%loop102342%_
                             (let ((_%next-probe102367%_
                                    (fx+ _%start102338%_
                                         _%i102347%_
                                         (fx* _%i102347%_ _%i102347%_))))
                               (##fxmodulo
                                _%next-probe102367%_
                                _%size102332%_))
                             (##fx+ _%i102347%_ '1)
                             _%deleted102349%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab102316%_
               _%key102317%_
               _%symbolic-table-update!102318%_
               _%default102319%_)
        (if (##fx< (&raw-table-free _%tab102316%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102316%_))
                    '4))
            (__raw-table-rehash! _%tab102316%_)
            '#!void)
        (__symbolic-table-update!
         _%tab102316%_
         _%key102317%_
         _%symbolic-table-update!102318%_
         _%default102319%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab102287%_
               _%key102288%_
               _%symbolic-table-update!102289%_
               _%default102290%_)
        (let ((_%lock102293%_ (&raw-table-lock _%tab102287%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102298%_ ((_%spin102301%_ '0))
              (if (##fx= (##vector-cas! _%lock102293%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102293%_ '1 (current-thread))
                  (if (##fx< _%spin102301%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102298%_ (##fx+ _%spin102301%_ '1)))
                      (let ((_%owner102307%_ (##vector-ref _%lock102293%_ '1)))
                        (if (eq? _%owner102307%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102307%_)
                                (let () (##thread-yield!) (_%again102298%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102313%_
                 (_%symbolic-table-update!102289%_
                  _%tab102287%_
                  _%key102288%_
                  _%symbolic-table-update!102289%_
                  _%default102290%_)))
            (##vector-set! _%lock102293%_ '1 '#f)
            (##vector-cas! _%lock102293%_ '0 '0 '1)
            _%$r102313%_))))
    (define symbolic-table-delete!
      (lambda (_%tab102244%_ _%key102245%_)
        (let ((_%table102247%_ (&raw-table-table _%tab102244%_))
              (_%seed102249%_ (&raw-table-seed _%tab102244%_)))
          (let* ((_%h102252%_
                  (fxxor (##symbol-hash _%key102245%_) _%seed102249%_))
                 (_%size102255%_ (vector-length _%table102247%_))
                 (_%entries102258%_ (##fxquotient _%size102255%_ '2))
                 (_%start102261%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102252%_ _%entries102258%_)
                   '1)))
            (let _%loop102265%_ ((_%probe102268%_ _%start102261%_)
                                 (_%i102270%_ '1))
              (let ((_%k102273%_ (vector-ref _%table102247%_ _%probe102268%_)))
                (if (eq? _%k102273%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102273%_ (macro-deleted-obj))
                        (_%loop102265%_
                         (let ((_%next-probe102278%_
                                (fx+ _%start102261%_
                                     _%i102270%_
                                     (fx* _%i102270%_ _%i102270%_))))
                           (##fxmodulo _%next-probe102278%_ _%size102255%_))
                         (##fx+ _%i102270%_ '1))
                        (if (eq? _%key102245%_ _%k102273%_)
                            (let ()
                              (vector-set!
                               _%table102247%_
                               _%probe102268%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102247%_
                               (##fx+ _%probe102268%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102244%_
                                  (##fx- (&raw-table-count _%tab102244%_)
                                         '1)))))
                            (_%loop102265%_
                             (let ((_%next-probe102284%_
                                    (fx+ _%start102261%_
                                         _%i102270%_
                                         (fx* _%i102270%_ _%i102270%_))))
                               (##fxmodulo
                                _%next-probe102284%_
                                _%size102255%_))
                             (##fx+ _%i102270%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab102216%_ _%key102218%_)
        (let ((_%lock102221%_ (&raw-table-lock _%tab102216%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102226%_ ((_%spin102229%_ '0))
              (if (##fx= (##vector-cas! _%lock102221%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102221%_ '1 (current-thread))
                  (if (##fx< _%spin102229%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102226%_ (##fx+ _%spin102229%_ '1)))
                      (let ((_%owner102235%_ (##vector-ref _%lock102221%_ '1)))
                        (if (eq? _%owner102235%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102235%_)
                                (let () (##thread-yield!) (_%again102226%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102241%_
                 (symbolic-table-delete! _%tab102216%_ _%key102218%_)))
            (##vector-set! _%lock102221%_ '1 '#f)
            (##vector-cas! _%lock102221%_ '0 '0 '1)
            _%$r102241%_))))
    (define make-string-table__%
      (lambda (_%size-hint102198%_ _%seed102199%_)
        (make-raw-table__1
         _%size-hint102198%_
         string-hash
         ##string=?
         _%seed102199%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint102205%_ '#f) (_%seed102207%_ '0))
          (make-string-table__% _%size-hint102205%_ _%seed102207%_))))
    (define make-string-table__1
      (lambda (_%size-hint102209%_)
        (let ((_%seed102211%_ '0))
          (make-string-table__% _%size-hint102209%_ _%seed102211%_))))
    (define make-string-table
      (lambda _g103851_
        (let ((_g103852_ (##length _g103851_)))
          (cond ((##fx= _g103852_ 0) (apply make-string-table__0 _g103851_))
                ((##fx= _g103852_ 1) (apply make-string-table__1 _g103851_))
                ((##fx= _g103852_ 2) (apply make-string-table__% _g103851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g103851_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint102178%_ _%seed102180%_)
        (make-raw-table/lock__%
         _%size-hint102178%_
         string-hash
         ##string=?
         _%seed102180%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint102186%_ '#f) (_%seed102188%_ '0))
          (make-string-table/lock__% _%size-hint102186%_ _%seed102188%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint102190%_)
        (let ((_%seed102192%_ '0))
          (make-string-table/lock__% _%size-hint102190%_ _%seed102192%_))))
    (define make-string-table/lock
      (lambda _g103853_
        (let ((_g103854_ (##length _g103853_)))
          (cond ((##fx= _g103854_ 0)
                 (apply make-string-table/lock__0 _g103853_))
                ((##fx= _g103854_ 1)
                 (apply make-string-table/lock__1 _g103853_))
                ((##fx= _g103854_ 2)
                 (apply make-string-table/lock__% _g103853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g103853_))))))
    (define string-table-ref
      (lambda (_%tab102131%_ _%key102132%_ _%default102133%_)
        (let ((_%table102135%_ (&raw-table-table _%tab102131%_))
              (_%seed102136%_ (&raw-table-seed _%tab102131%_)))
          (let* ((_%h102138%_
                  (fxxor (##string=?-hash _%key102132%_) _%seed102136%_))
                 (_%size102141%_ (vector-length _%table102135%_))
                 (_%entries102144%_ (##fxquotient _%size102141%_ '2))
                 (_%start102147%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102138%_ _%entries102144%_)
                   '1)))
            (let _%loop102151%_ ((_%probe102154%_ _%start102147%_)
                                 (_%i102156%_ '1)
                                 (_%deleted102158%_ '#f))
              (let ((_%k102161%_ (vector-ref _%table102135%_ _%probe102154%_)))
                (if (eq? _%k102161%_ (macro-unused-obj))
                    _%default102133%_
                    (if (eq? _%k102161%_ (macro-deleted-obj))
                        (_%loop102151%_
                         (let ((_%next-probe102166%_
                                (fx+ _%start102147%_
                                     _%i102156%_
                                     (fx* _%i102156%_ _%i102156%_))))
                           (##fxmodulo _%next-probe102166%_ _%size102141%_))
                         (##fx+ _%i102156%_ '1)
                         (let ((_%$e102169%_ _%deleted102158%_))
                           (if _%$e102169%_ _%$e102169%_ _%probe102154%_)))
                        (if (##string=? _%key102132%_ _%k102161%_)
                            (vector-ref
                             _%table102135%_
                             (##fx+ _%probe102154%_ '1))
                            (_%loop102151%_
                             (let ((_%next-probe102174%_
                                    (fx+ _%start102147%_
                                         _%i102156%_
                                         (fx* _%i102156%_ _%i102156%_))))
                               (##fxmodulo
                                _%next-probe102174%_
                                _%size102141%_))
                             (##fx+ _%i102156%_ '1)
                             _%deleted102158%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab102104%_ _%key102105%_ _%default102106%_)
        (let ((_%lock102108%_ (&raw-table-lock _%tab102104%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102113%_ ((_%spin102116%_ '0))
              (if (##fx= (##vector-cas! _%lock102108%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102108%_ '1 (current-thread))
                  (if (##fx< _%spin102116%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102113%_ (##fx+ _%spin102116%_ '1)))
                      (let ((_%owner102122%_ (##vector-ref _%lock102108%_ '1)))
                        (if (eq? _%owner102122%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102122%_)
                                (let () (##thread-yield!) (_%again102113%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102128%_
                 (string-table-ref
                  _%tab102104%_
                  _%key102105%_
                  _%default102106%_)))
            (##vector-set! _%lock102108%_ '1 '#f)
            (##vector-cas! _%lock102108%_ '0 '0 '1)
            _%$r102128%_))))
    (define __string-table-set!
      (lambda (_%tab102056%_ _%key102057%_ _%value102058%_)
        (let ((_%table102060%_ (&raw-table-table _%tab102056%_))
              (_%seed102061%_ (&raw-table-seed _%tab102056%_)))
          (let* ((_%h102063%_
                  (fxxor (##string=?-hash _%key102057%_) _%seed102061%_))
                 (_%size102066%_ (vector-length _%table102060%_))
                 (_%entries102069%_ (##fxquotient _%size102066%_ '2))
                 (_%start102072%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102063%_ _%entries102069%_)
                   '1)))
            (let _%loop102076%_ ((_%probe102079%_ _%start102072%_)
                                 (_%i102081%_ '1)
                                 (_%deleted102083%_ '#f))
              (let ((_%k102086%_ (vector-ref _%table102060%_ _%probe102079%_)))
                (if (eq? _%k102086%_ (macro-unused-obj))
                    (if _%deleted102083%_
                        (begin
                          (vector-set!
                           _%table102060%_
                           _%deleted102083%_
                           _%key102057%_)
                          (vector-set!
                           _%table102060%_
                           (##fx+ _%deleted102083%_ '1)
                           _%value102058%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102056%_
                              (##fx+ (&raw-table-count _%tab102056%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102060%_
                           _%probe102079%_
                           _%key102057%_)
                          (vector-set!
                           _%table102060%_
                           (##fx+ _%probe102079%_ '1)
                           _%value102058%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102056%_
                              (##fx- (&raw-table-free _%tab102056%_) '1))
                             (&raw-table-count-set!
                              _%tab102056%_
                              (##fx+ (&raw-table-count _%tab102056%_) '1))))))
                    (if (eq? _%k102086%_ (macro-deleted-obj))
                        (_%loop102076%_
                         (let ((_%next-probe102093%_
                                (fx+ _%start102072%_
                                     _%i102081%_
                                     (fx* _%i102081%_ _%i102081%_))))
                           (##fxmodulo _%next-probe102093%_ _%size102066%_))
                         (##fx+ _%i102081%_ '1)
                         (let ((_%$e102096%_ _%deleted102083%_))
                           (if _%$e102096%_ _%$e102096%_ _%probe102079%_)))
                        (if (##string=? _%key102057%_ _%k102086%_)
                            (let ()
                              (vector-set!
                               _%table102060%_
                               _%probe102079%_
                               _%key102057%_)
                              (vector-set!
                               _%table102060%_
                               (##fx+ _%probe102079%_ '1)
                               _%value102058%_))
                            (_%loop102076%_
                             (let ((_%next-probe102101%_
                                    (fx+ _%start102072%_
                                         _%i102081%_
                                         (fx* _%i102081%_ _%i102081%_))))
                               (##fxmodulo
                                _%next-probe102101%_
                                _%size102066%_))
                             (##fx+ _%i102081%_ '1)
                             _%deleted102083%_))))))))))
    (define string-table-set!
      (lambda (_%tab102052%_ _%key102053%_ _%value102054%_)
        (if (##fx< (&raw-table-free _%tab102052%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102052%_))
                    '4))
            (__raw-table-rehash! _%tab102052%_)
            '#!void)
        (__string-table-set! _%tab102052%_ _%key102053%_ _%value102054%_)))
    (define string-table-set!/lock
      (lambda (_%tab102024%_ _%key102025%_ _%value102026%_)
        (let ((_%lock102029%_ (&raw-table-lock _%tab102024%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102034%_ ((_%spin102037%_ '0))
              (if (##fx= (##vector-cas! _%lock102029%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102029%_ '1 (current-thread))
                  (if (##fx< _%spin102037%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102034%_ (##fx+ _%spin102037%_ '1)))
                      (let ((_%owner102043%_ (##vector-ref _%lock102029%_ '1)))
                        (if (eq? _%owner102043%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102043%_)
                                (let () (##thread-yield!) (_%again102034%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102049%_
                 (string-table-set!
                  _%tab102024%_
                  _%key102025%_
                  _%value102026%_)))
            (##vector-set! _%lock102029%_ '1 '#f)
            (##vector-cas! _%lock102029%_ '0 '0 '1)
            _%$r102049%_))))
    (define __string-table-update!
      (lambda (_%tab101975%_
               _%key101976%_
               _%string-table-update!101977%_
               _%default101978%_)
        (let ((_%table101980%_ (&raw-table-table _%tab101975%_))
              (_%seed101981%_ (&raw-table-seed _%tab101975%_)))
          (let* ((_%h101983%_
                  (fxxor (##string=?-hash _%key101976%_) _%seed101981%_))
                 (_%size101986%_ (vector-length _%table101980%_))
                 (_%entries101989%_ (##fxquotient _%size101986%_ '2))
                 (_%start101992%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101983%_ _%entries101989%_)
                   '1)))
            (let _%loop101996%_ ((_%probe101999%_ _%start101992%_)
                                 (_%i102001%_ '1)
                                 (_%deleted102003%_ '#f))
              (let ((_%k102006%_ (vector-ref _%table101980%_ _%probe101999%_)))
                (if (eq? _%k102006%_ (macro-unused-obj))
                    (if _%deleted102003%_
                        (begin
                          (vector-set!
                           _%table101980%_
                           _%deleted102003%_
                           _%key101976%_)
                          (vector-set!
                           _%table101980%_
                           (##fx+ _%deleted102003%_ '1)
                           (_%string-table-update!101977%_ _%default101978%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101975%_
                              (##fx+ (&raw-table-count _%tab101975%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101980%_
                           _%probe101999%_
                           _%key101976%_)
                          (vector-set!
                           _%table101980%_
                           (##fx+ _%probe101999%_ '1)
                           (_%string-table-update!101977%_ _%default101978%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101975%_
                              (##fx- (&raw-table-free _%tab101975%_) '1))
                             (&raw-table-count-set!
                              _%tab101975%_
                              (##fx+ (&raw-table-count _%tab101975%_) '1))))))
                    (if (eq? _%k102006%_ (macro-deleted-obj))
                        (_%loop101996%_
                         (let ((_%next-probe102013%_
                                (fx+ _%start101992%_
                                     _%i102001%_
                                     (fx* _%i102001%_ _%i102001%_))))
                           (##fxmodulo _%next-probe102013%_ _%size101986%_))
                         (##fx+ _%i102001%_ '1)
                         (let ((_%$e102016%_ _%deleted102003%_))
                           (if _%$e102016%_ _%$e102016%_ _%probe101999%_)))
                        (if (##string=? _%key101976%_ _%k102006%_)
                            (let ()
                              (vector-set!
                               _%table101980%_
                               _%probe101999%_
                               _%key101976%_)
                              (vector-set!
                               _%table101980%_
                               (##fx+ _%probe101999%_ '1)
                               (_%string-table-update!101977%_
                                (vector-ref
                                 _%table101980%_
                                 (##fx+ _%probe101999%_ '1)))))
                            (_%loop101996%_
                             (let ((_%next-probe102021%_
                                    (fx+ _%start101992%_
                                         _%i102001%_
                                         (fx* _%i102001%_ _%i102001%_))))
                               (##fxmodulo
                                _%next-probe102021%_
                                _%size101986%_))
                             (##fx+ _%i102001%_ '1)
                             _%deleted102003%_))))))))))
    (define string-table-update!
      (lambda (_%tab101970%_
               _%key101971%_
               _%string-table-update!101972%_
               _%default101973%_)
        (if (##fx< (&raw-table-free _%tab101970%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101970%_))
                    '4))
            (__raw-table-rehash! _%tab101970%_)
            '#!void)
        (__string-table-update!
         _%tab101970%_
         _%key101971%_
         _%string-table-update!101972%_
         _%default101973%_)))
    (define string-table-update!/lock
      (lambda (_%tab101941%_
               _%key101942%_
               _%string-table-update!101943%_
               _%default101944%_)
        (let ((_%lock101947%_ (&raw-table-lock _%tab101941%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101952%_ ((_%spin101955%_ '0))
              (if (##fx= (##vector-cas! _%lock101947%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101947%_ '1 (current-thread))
                  (if (##fx< _%spin101955%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101952%_ (##fx+ _%spin101955%_ '1)))
                      (let ((_%owner101961%_ (##vector-ref _%lock101947%_ '1)))
                        (if (eq? _%owner101961%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101961%_)
                                (let () (##thread-yield!) (_%again101952%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101967%_
                 (_%string-table-update!101943%_
                  _%tab101941%_
                  _%key101942%_
                  _%string-table-update!101943%_
                  _%default101944%_)))
            (##vector-set! _%lock101947%_ '1 '#f)
            (##vector-cas! _%lock101947%_ '0 '0 '1)
            _%$r101967%_))))
    (define string-table-delete!
      (lambda (_%tab101898%_ _%key101899%_)
        (let ((_%table101901%_ (&raw-table-table _%tab101898%_))
              (_%seed101903%_ (&raw-table-seed _%tab101898%_)))
          (let* ((_%h101906%_
                  (fxxor (##string=?-hash _%key101899%_) _%seed101903%_))
                 (_%size101909%_ (vector-length _%table101901%_))
                 (_%entries101912%_ (##fxquotient _%size101909%_ '2))
                 (_%start101915%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101906%_ _%entries101912%_)
                   '1)))
            (let _%loop101919%_ ((_%probe101922%_ _%start101915%_)
                                 (_%i101924%_ '1))
              (let ((_%k101927%_ (vector-ref _%table101901%_ _%probe101922%_)))
                (if (eq? _%k101927%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101927%_ (macro-deleted-obj))
                        (_%loop101919%_
                         (let ((_%next-probe101932%_
                                (fx+ _%start101915%_
                                     _%i101924%_
                                     (fx* _%i101924%_ _%i101924%_))))
                           (##fxmodulo _%next-probe101932%_ _%size101909%_))
                         (##fx+ _%i101924%_ '1))
                        (if (##string=? _%key101899%_ _%k101927%_)
                            (let ()
                              (vector-set!
                               _%table101901%_
                               _%probe101922%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101901%_
                               (##fx+ _%probe101922%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101898%_
                                  (##fx- (&raw-table-count _%tab101898%_)
                                         '1)))))
                            (_%loop101919%_
                             (let ((_%next-probe101938%_
                                    (fx+ _%start101915%_
                                         _%i101924%_
                                         (fx* _%i101924%_ _%i101924%_))))
                               (##fxmodulo
                                _%next-probe101938%_
                                _%size101909%_))
                             (##fx+ _%i101924%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab101870%_ _%key101872%_)
        (let ((_%lock101875%_ (&raw-table-lock _%tab101870%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101880%_ ((_%spin101883%_ '0))
              (if (##fx= (##vector-cas! _%lock101875%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101875%_ '1 (current-thread))
                  (if (##fx< _%spin101883%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101880%_ (##fx+ _%spin101883%_ '1)))
                      (let ((_%owner101889%_ (##vector-ref _%lock101875%_ '1)))
                        (if (eq? _%owner101889%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101889%_)
                                (let () (##thread-yield!) (_%again101880%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101895%_
                 (string-table-delete! _%tab101870%_ _%key101872%_)))
            (##vector-set! _%lock101875%_ '1 '#f)
            (##vector-cas! _%lock101875%_ '0 '0 '1)
            _%$r101895%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint101852%_ _%seed101853%_)
        (make-raw-table__1
         _%size-hint101852%_
         immediate-hash
         eq?
         _%seed101853%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint101859%_ '#f) (_%seed101861%_ '0))
          (make-immediate-table__% _%size-hint101859%_ _%seed101861%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint101863%_)
        (let ((_%seed101865%_ '0))
          (make-immediate-table__% _%size-hint101863%_ _%seed101865%_))))
    (define make-immediate-table
      (lambda _g103855_
        (let ((_g103856_ (##length _g103855_)))
          (cond ((##fx= _g103856_ 0) (apply make-immediate-table__0 _g103855_))
                ((##fx= _g103856_ 1) (apply make-immediate-table__1 _g103855_))
                ((##fx= _g103856_ 2) (apply make-immediate-table__% _g103855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g103855_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint101832%_ _%seed101834%_)
        (make-raw-table/lock__%
         _%size-hint101832%_
         immediate-hash
         eq?
         _%seed101834%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint101840%_ '#f) (_%seed101842%_ '0))
          (make-immediate-table/lock__% _%size-hint101840%_ _%seed101842%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint101844%_)
        (let ((_%seed101846%_ '0))
          (make-immediate-table/lock__% _%size-hint101844%_ _%seed101846%_))))
    (define make-immediate-table/lock
      (lambda _g103857_
        (let ((_g103858_ (##length _g103857_)))
          (cond ((##fx= _g103858_ 0)
                 (apply make-immediate-table/lock__0 _g103857_))
                ((##fx= _g103858_ 1)
                 (apply make-immediate-table/lock__1 _g103857_))
                ((##fx= _g103858_ 2)
                 (apply make-immediate-table/lock__% _g103857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g103857_))))))
    (define immediate-table-ref
      (lambda (_%tab101785%_ _%key101786%_ _%default101787%_)
        (let ((_%table101789%_ (&raw-table-table _%tab101785%_))
              (_%seed101790%_ (&raw-table-seed _%tab101785%_)))
          (let* ((_%h101792%_
                  (fxxor (immediate-hash _%key101786%_) _%seed101790%_))
                 (_%size101795%_ (vector-length _%table101789%_))
                 (_%entries101798%_ (##fxquotient _%size101795%_ '2))
                 (_%start101801%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101792%_ _%entries101798%_)
                   '1)))
            (let _%loop101805%_ ((_%probe101808%_ _%start101801%_)
                                 (_%i101810%_ '1)
                                 (_%deleted101812%_ '#f))
              (let ((_%k101815%_ (vector-ref _%table101789%_ _%probe101808%_)))
                (if (eq? _%k101815%_ (macro-unused-obj))
                    _%default101787%_
                    (if (eq? _%k101815%_ (macro-deleted-obj))
                        (_%loop101805%_
                         (let ((_%next-probe101820%_
                                (fx+ _%start101801%_
                                     _%i101810%_
                                     (fx* _%i101810%_ _%i101810%_))))
                           (##fxmodulo _%next-probe101820%_ _%size101795%_))
                         (##fx+ _%i101810%_ '1)
                         (let ((_%$e101823%_ _%deleted101812%_))
                           (if _%$e101823%_ _%$e101823%_ _%probe101808%_)))
                        (if (eq? _%key101786%_ _%k101815%_)
                            (vector-ref
                             _%table101789%_
                             (##fx+ _%probe101808%_ '1))
                            (_%loop101805%_
                             (let ((_%next-probe101828%_
                                    (fx+ _%start101801%_
                                         _%i101810%_
                                         (fx* _%i101810%_ _%i101810%_))))
                               (##fxmodulo
                                _%next-probe101828%_
                                _%size101795%_))
                             (##fx+ _%i101810%_ '1)
                             _%deleted101812%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab101758%_ _%key101759%_ _%default101760%_)
        (let ((_%lock101762%_ (&raw-table-lock _%tab101758%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101767%_ ((_%spin101770%_ '0))
              (if (##fx= (##vector-cas! _%lock101762%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101762%_ '1 (current-thread))
                  (if (##fx< _%spin101770%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101767%_ (##fx+ _%spin101770%_ '1)))
                      (let ((_%owner101776%_ (##vector-ref _%lock101762%_ '1)))
                        (if (eq? _%owner101776%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101776%_)
                                (let () (##thread-yield!) (_%again101767%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101782%_
                 (immediate-table-ref
                  _%tab101758%_
                  _%key101759%_
                  _%default101760%_)))
            (##vector-set! _%lock101762%_ '1 '#f)
            (##vector-cas! _%lock101762%_ '0 '0 '1)
            _%$r101782%_))))
    (define __immediate-table-set!
      (lambda (_%tab101710%_ _%key101711%_ _%value101712%_)
        (let ((_%table101714%_ (&raw-table-table _%tab101710%_))
              (_%seed101715%_ (&raw-table-seed _%tab101710%_)))
          (let* ((_%h101717%_
                  (fxxor (immediate-hash _%key101711%_) _%seed101715%_))
                 (_%size101720%_ (vector-length _%table101714%_))
                 (_%entries101723%_ (##fxquotient _%size101720%_ '2))
                 (_%start101726%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101717%_ _%entries101723%_)
                   '1)))
            (let _%loop101730%_ ((_%probe101733%_ _%start101726%_)
                                 (_%i101735%_ '1)
                                 (_%deleted101737%_ '#f))
              (let ((_%k101740%_ (vector-ref _%table101714%_ _%probe101733%_)))
                (if (eq? _%k101740%_ (macro-unused-obj))
                    (if _%deleted101737%_
                        (begin
                          (vector-set!
                           _%table101714%_
                           _%deleted101737%_
                           _%key101711%_)
                          (vector-set!
                           _%table101714%_
                           (##fx+ _%deleted101737%_ '1)
                           _%value101712%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101710%_
                              (##fx+ (&raw-table-count _%tab101710%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101714%_
                           _%probe101733%_
                           _%key101711%_)
                          (vector-set!
                           _%table101714%_
                           (##fx+ _%probe101733%_ '1)
                           _%value101712%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101710%_
                              (##fx- (&raw-table-free _%tab101710%_) '1))
                             (&raw-table-count-set!
                              _%tab101710%_
                              (##fx+ (&raw-table-count _%tab101710%_) '1))))))
                    (if (eq? _%k101740%_ (macro-deleted-obj))
                        (_%loop101730%_
                         (let ((_%next-probe101747%_
                                (fx+ _%start101726%_
                                     _%i101735%_
                                     (fx* _%i101735%_ _%i101735%_))))
                           (##fxmodulo _%next-probe101747%_ _%size101720%_))
                         (##fx+ _%i101735%_ '1)
                         (let ((_%$e101750%_ _%deleted101737%_))
                           (if _%$e101750%_ _%$e101750%_ _%probe101733%_)))
                        (if (eq? _%key101711%_ _%k101740%_)
                            (let ()
                              (vector-set!
                               _%table101714%_
                               _%probe101733%_
                               _%key101711%_)
                              (vector-set!
                               _%table101714%_
                               (##fx+ _%probe101733%_ '1)
                               _%value101712%_))
                            (_%loop101730%_
                             (let ((_%next-probe101755%_
                                    (fx+ _%start101726%_
                                         _%i101735%_
                                         (fx* _%i101735%_ _%i101735%_))))
                               (##fxmodulo
                                _%next-probe101755%_
                                _%size101720%_))
                             (##fx+ _%i101735%_ '1)
                             _%deleted101737%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab101706%_ _%key101707%_ _%value101708%_)
        (if (##fx< (&raw-table-free _%tab101706%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101706%_))
                    '4))
            (__raw-table-rehash! _%tab101706%_)
            '#!void)
        (__immediate-table-set! _%tab101706%_ _%key101707%_ _%value101708%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab101678%_ _%key101679%_ _%value101680%_)
        (let ((_%lock101683%_ (&raw-table-lock _%tab101678%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101688%_ ((_%spin101691%_ '0))
              (if (##fx= (##vector-cas! _%lock101683%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101683%_ '1 (current-thread))
                  (if (##fx< _%spin101691%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101688%_ (##fx+ _%spin101691%_ '1)))
                      (let ((_%owner101697%_ (##vector-ref _%lock101683%_ '1)))
                        (if (eq? _%owner101697%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101697%_)
                                (let () (##thread-yield!) (_%again101688%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101703%_
                 (immediate-table-set!
                  _%tab101678%_
                  _%key101679%_
                  _%value101680%_)))
            (##vector-set! _%lock101683%_ '1 '#f)
            (##vector-cas! _%lock101683%_ '0 '0 '1)
            _%$r101703%_))))
    (define __immediate-table-update!
      (lambda (_%tab101629%_
               _%key101630%_
               _%immediate-table-update!101631%_
               _%default101632%_)
        (let ((_%table101634%_ (&raw-table-table _%tab101629%_))
              (_%seed101635%_ (&raw-table-seed _%tab101629%_)))
          (let* ((_%h101637%_
                  (fxxor (immediate-hash _%key101630%_) _%seed101635%_))
                 (_%size101640%_ (vector-length _%table101634%_))
                 (_%entries101643%_ (##fxquotient _%size101640%_ '2))
                 (_%start101646%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101637%_ _%entries101643%_)
                   '1)))
            (let _%loop101650%_ ((_%probe101653%_ _%start101646%_)
                                 (_%i101655%_ '1)
                                 (_%deleted101657%_ '#f))
              (let ((_%k101660%_ (vector-ref _%table101634%_ _%probe101653%_)))
                (if (eq? _%k101660%_ (macro-unused-obj))
                    (if _%deleted101657%_
                        (begin
                          (vector-set!
                           _%table101634%_
                           _%deleted101657%_
                           _%key101630%_)
                          (vector-set!
                           _%table101634%_
                           (##fx+ _%deleted101657%_ '1)
                           (_%immediate-table-update!101631%_
                            _%default101632%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101629%_
                              (##fx+ (&raw-table-count _%tab101629%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101634%_
                           _%probe101653%_
                           _%key101630%_)
                          (vector-set!
                           _%table101634%_
                           (##fx+ _%probe101653%_ '1)
                           (_%immediate-table-update!101631%_
                            _%default101632%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101629%_
                              (##fx- (&raw-table-free _%tab101629%_) '1))
                             (&raw-table-count-set!
                              _%tab101629%_
                              (##fx+ (&raw-table-count _%tab101629%_) '1))))))
                    (if (eq? _%k101660%_ (macro-deleted-obj))
                        (_%loop101650%_
                         (let ((_%next-probe101667%_
                                (fx+ _%start101646%_
                                     _%i101655%_
                                     (fx* _%i101655%_ _%i101655%_))))
                           (##fxmodulo _%next-probe101667%_ _%size101640%_))
                         (##fx+ _%i101655%_ '1)
                         (let ((_%$e101670%_ _%deleted101657%_))
                           (if _%$e101670%_ _%$e101670%_ _%probe101653%_)))
                        (if (eq? _%key101630%_ _%k101660%_)
                            (let ()
                              (vector-set!
                               _%table101634%_
                               _%probe101653%_
                               _%key101630%_)
                              (vector-set!
                               _%table101634%_
                               (##fx+ _%probe101653%_ '1)
                               (_%immediate-table-update!101631%_
                                (vector-ref
                                 _%table101634%_
                                 (##fx+ _%probe101653%_ '1)))))
                            (_%loop101650%_
                             (let ((_%next-probe101675%_
                                    (fx+ _%start101646%_
                                         _%i101655%_
                                         (fx* _%i101655%_ _%i101655%_))))
                               (##fxmodulo
                                _%next-probe101675%_
                                _%size101640%_))
                             (##fx+ _%i101655%_ '1)
                             _%deleted101657%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab101624%_
               _%key101625%_
               _%immediate-table-update!101626%_
               _%default101627%_)
        (if (##fx< (&raw-table-free _%tab101624%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101624%_))
                    '4))
            (__raw-table-rehash! _%tab101624%_)
            '#!void)
        (__immediate-table-update!
         _%tab101624%_
         _%key101625%_
         _%immediate-table-update!101626%_
         _%default101627%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab101595%_
               _%key101596%_
               _%immediate-table-update!101597%_
               _%default101598%_)
        (let ((_%lock101601%_ (&raw-table-lock _%tab101595%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101606%_ ((_%spin101609%_ '0))
              (if (##fx= (##vector-cas! _%lock101601%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101601%_ '1 (current-thread))
                  (if (##fx< _%spin101609%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101606%_ (##fx+ _%spin101609%_ '1)))
                      (let ((_%owner101615%_ (##vector-ref _%lock101601%_ '1)))
                        (if (eq? _%owner101615%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101615%_)
                                (let () (##thread-yield!) (_%again101606%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101621%_
                 (_%immediate-table-update!101597%_
                  _%tab101595%_
                  _%key101596%_
                  _%immediate-table-update!101597%_
                  _%default101598%_)))
            (##vector-set! _%lock101601%_ '1 '#f)
            (##vector-cas! _%lock101601%_ '0 '0 '1)
            _%$r101621%_))))
    (define immediate-table-delete!
      (lambda (_%tab101552%_ _%key101553%_)
        (let ((_%table101555%_ (&raw-table-table _%tab101552%_))
              (_%seed101557%_ (&raw-table-seed _%tab101552%_)))
          (let* ((_%h101560%_
                  (fxxor (immediate-hash _%key101553%_) _%seed101557%_))
                 (_%size101563%_ (vector-length _%table101555%_))
                 (_%entries101566%_ (##fxquotient _%size101563%_ '2))
                 (_%start101569%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101560%_ _%entries101566%_)
                   '1)))
            (let _%loop101573%_ ((_%probe101576%_ _%start101569%_)
                                 (_%i101578%_ '1))
              (let ((_%k101581%_ (vector-ref _%table101555%_ _%probe101576%_)))
                (if (eq? _%k101581%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101581%_ (macro-deleted-obj))
                        (_%loop101573%_
                         (let ((_%next-probe101586%_
                                (fx+ _%start101569%_
                                     _%i101578%_
                                     (fx* _%i101578%_ _%i101578%_))))
                           (##fxmodulo _%next-probe101586%_ _%size101563%_))
                         (##fx+ _%i101578%_ '1))
                        (if (eq? _%key101553%_ _%k101581%_)
                            (let ()
                              (vector-set!
                               _%table101555%_
                               _%probe101576%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101555%_
                               (##fx+ _%probe101576%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101552%_
                                  (##fx- (&raw-table-count _%tab101552%_)
                                         '1)))))
                            (_%loop101573%_
                             (let ((_%next-probe101592%_
                                    (fx+ _%start101569%_
                                         _%i101578%_
                                         (fx* _%i101578%_ _%i101578%_))))
                               (##fxmodulo
                                _%next-probe101592%_
                                _%size101563%_))
                             (##fx+ _%i101578%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab101524%_ _%key101526%_)
        (let ((_%lock101529%_ (&raw-table-lock _%tab101524%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101534%_ ((_%spin101537%_ '0))
              (if (##fx= (##vector-cas! _%lock101529%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101529%_ '1 (current-thread))
                  (if (##fx< _%spin101537%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101534%_ (##fx+ _%spin101537%_ '1)))
                      (let ((_%owner101543%_ (##vector-ref _%lock101529%_ '1)))
                        (if (eq? _%owner101543%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101543%_)
                                (let () (##thread-yield!) (_%again101534%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101549%_
                 (immediate-table-delete! _%tab101524%_ _%key101526%_)))
            (##vector-set! _%lock101529%_ '1 '#f)
            (##vector-cas! _%lock101529%_ '0 '0 '1)
            _%$r101549%_))))
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
      (lambda (_%tab101522%_)
        (##unchecked-structure-ref
         _%tab101522%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab101520%_)
        (##unchecked-structure-ref
         _%tab101520%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab101518%_)
        (##unchecked-structure-ref
         _%tab101518%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab101515%_ _%val101516%_)
        (##unchecked-structure-set!
         _%tab101515%_
         _%val101516%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab101512%_ _%val101513%_)
        (##unchecked-structure-set!
         _%tab101512%_
         _%val101513%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab101509%_ _%val101510%_)
        (##unchecked-structure-set!
         _%tab101509%_
         _%val101510%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint101473%_
               _%klass101474%_
               _%flags101475%_
               _%lock101476%_)
        (let ((_%gcht101478%_
               (__gc-table-new
                (if (fixnum? _%size-hint101473%_) _%size-hint101473%_ '16)
                _%flags101475%_)))
          (##structure _%klass101474%_ _%gcht101478%_ '#f _%lock101476%_))))
    (define make-gc-table__0
      (lambda (_%size-hint101483%_)
        (let* ((_%klass101485%_ __gc-table::t)
               (_%flags101487%_ '0)
               (_%lock101489%_ '#f))
          (make-gc-table__%
           _%size-hint101483%_
           _%klass101485%_
           _%flags101487%_
           _%lock101489%_))))
    (define make-gc-table__1
      (lambda (_%size-hint101491%_ _%klass101492%_)
        (let* ((_%flags101494%_ '0) (_%lock101496%_ '#f))
          (make-gc-table__%
           _%size-hint101491%_
           _%klass101492%_
           _%flags101494%_
           _%lock101496%_))))
    (define make-gc-table__2
      (lambda (_%size-hint101498%_ _%klass101499%_ _%flags101500%_)
        (let ((_%lock101502%_ '#f))
          (make-gc-table__%
           _%size-hint101498%_
           _%klass101499%_
           _%flags101500%_
           _%lock101502%_))))
    (define make-gc-table
      (lambda _g103859_
        (let ((_g103860_ (##length _g103859_)))
          (cond ((##fx= _g103860_ 1) (apply make-gc-table__0 _g103859_))
                ((##fx= _g103860_ 2) (apply make-gc-table__1 _g103859_))
                ((##fx= _g103860_ 3) (apply make-gc-table__2 _g103859_))
                ((##fx= _g103860_ 4) (apply make-gc-table__% _g103859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g103859_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint101450%_ _%klass101451%_ _%flags101452%_)
        (make-gc-table__%
         _%size-hint101450%_
         _%klass101451%_
         _%flags101452%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint101457%_)
        (let* ((_%klass101459%_ __gc-table::t) (_%flags101461%_ '0))
          (make-gc-table/lock__%
           _%size-hint101457%_
           _%klass101459%_
           _%flags101461%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint101463%_ _%klass101464%_)
        (let ((_%flags101466%_ '0))
          (make-gc-table/lock__%
           _%size-hint101463%_
           _%klass101464%_
           _%flags101466%_))))
    (define make-gc-table/lock
      (lambda _g103861_
        (let ((_g103862_ (##length _g103861_)))
          (cond ((##fx= _g103862_ 1) (apply make-gc-table/lock__0 _g103861_))
                ((##fx= _g103862_ 2) (apply make-gc-table/lock__1 _g103861_))
                ((##fx= _g103862_ 3) (apply make-gc-table/lock__% _g103861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g103861_))))))
    (define __gc-table-immediate
      (lambda (_%tab101441%_)
        (let ((_%$e101443%_ (&gc-table-immediate _%tab101441%_)))
          (if _%$e101443%_
              _%$e101443%_
              (let ((_%immediate101447%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab101441%_ _%immediate101447%_)
                _%immediate101447%_)))))
    (define __gc-table-new
      (lambda (_%size101431%_ _%flags101432%_)
        (let* ((_%flags101434%_
                (##fxand _%flags101432%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags101436%_
                (fxior _%flags101434%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht101438%_
                (##gc-hash-table-allocate
                 _%size101431%_
                 _%flags101436%_
                 __gc-table-loads)))
          _%gcht101438%_)))
    (define __gc-table-e
      (lambda (_%tab101426%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht101429%_ (&gc-table-gcht _%tab101426%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht101429%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht101429%_
              (begin
                (__gc-table-rehash! _%tab101426%_)
                (&gc-table-gcht _%tab101426%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab101417%_)
        (let* ((_%old-table101419%_ (&gc-table-gcht _%tab101417%_))
               (_%new-table101421%_
                (##gc-hash-table-resize! _%old-table101419%_ __gc-table-loads))
               (_%gcht101423%_
                (##gc-hash-table-rehash!
                 _%old-table101419%_
                 _%new-table101421%_)))
          (&gc-table-gcht-set! _%tab101417%_ _%gcht101423%_))))
    (define gc-table-ref
      (lambda (_%tab101401%_ _%key101402%_ _%default101403%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101402%_)
            (let* ((_%gcht101407%_ (__gc-table-e _%tab101401%_))
                   (_%value101409%_
                    (##gc-hash-table-ref _%gcht101407%_ _%key101402%_)))
              (if (eq? _%value101409%_ (macro-unused-obj))
                  _%default101403%_
                  _%value101409%_))
            (let ((_%$e101411%_ (&gc-table-immediate _%tab101401%_)))
              (if _%$e101411%_
                  ((lambda (_%immediate101414%_)
                     (immediate-table-ref
                      _%immediate101414%_
                      _%key101402%_
                      _%default101403%_))
                   _%$e101411%_)
                  _%default101403%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab101377%_ _%key101378%_ _%default101379%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101383%_ ((_%spin101386%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101377%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101377%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101386%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101383%_ (##fx+ _%spin101386%_ '1)))
                    (let ((_%owner101392%_
                           (##vector-ref (&gc-table-lock _%tab101377%_) '1)))
                      (if (eq? _%owner101392%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101392%_)
                              (let () (##thread-yield!) (_%again101383%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101398%_
               (gc-table-ref _%tab101377%_ _%key101378%_ _%default101379%_)))
          (##vector-set! (&gc-table-lock _%tab101377%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101377%_) '0 '0 '1)
          _%$r101398%_)))
    (define gc-table-set!
      (lambda (_%tab101370%_ _%key101371%_ _%value101372%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101371%_)
            (let ((_%gcht101375%_ (__gc-table-e _%tab101370%_)))
              (if (##gc-hash-table-set!
                   _%gcht101375%_
                   _%key101371%_
                   _%value101372%_)
                  (begin
                    (__gc-table-rehash! _%tab101370%_)
                    (gc-table-set!
                     _%tab101370%_
                     _%key101371%_
                     _%value101372%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab101370%_)
             _%key101371%_
             _%value101372%_))))
    (define gc-table-set/lock!
      (lambda (_%tab101346%_ _%key101347%_ _%value101348%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101352%_ ((_%spin101355%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101346%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101346%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101355%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101352%_ (##fx+ _%spin101355%_ '1)))
                    (let ((_%owner101361%_
                           (##vector-ref (&gc-table-lock _%tab101346%_) '1)))
                      (if (eq? _%owner101361%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101361%_)
                              (let () (##thread-yield!) (_%again101352%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101367%_
               (gc-table-set! _%tab101346%_ _%key101347%_ _%value101348%_)))
          (##vector-set! (&gc-table-lock _%tab101346%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101346%_) '0 '0 '1)
          _%$r101367%_)))
    (define gc-table-update!
      (lambda (_%tab101339%_ _%key101340%_ _%update101341%_ _%default101342%_)
        (if (##mem-allocated? _%key101340%_)
            (let ((_%value101344%_
                   (gc-table-ref
                    _%tab101339%_
                    _%key101340%_
                    _%default101342%_)))
              (gc-table-set!
               _%tab101339%_
               _%key101340%_
               (_%update101341%_ _%value101344%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab101339%_)
             _%key101340%_
             _%update101341%_
             _%default101342%_))))
    (define gc-table-update!/lock
      (lambda (_%tab101314%_ _%key101315%_ _%update101316%_ _%default101317%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101321%_ ((_%spin101324%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101314%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101314%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101324%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101321%_ (##fx+ _%spin101324%_ '1)))
                    (let ((_%owner101330%_
                           (##vector-ref (&gc-table-lock _%tab101314%_) '1)))
                      (if (eq? _%owner101330%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101330%_)
                              (let () (##thread-yield!) (_%again101321%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101336%_
               (gc-table-update!
                _%tab101314%_
                _%key101315%_
                _%update101316%_
                _%default101317%_)))
          (##vector-set! (&gc-table-lock _%tab101314%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101314%_) '0 '0 '1)
          _%$r101336%_)))
    (define gc-table-delete!
      (lambda (_%tab101302%_ _%key101303%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101303%_)
            (let ((_%gcht101307%_ (__gc-table-e _%tab101302%_)))
              (if (##gc-hash-table-set!
                   _%gcht101307%_
                   _%key101303%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab101302%_)
                    (gc-table-delete! _%tab101302%_ _%key101303%_))
                  '#!void))
            (let ((_%$e101309%_ (&gc-table-immediate _%tab101302%_)))
              (if _%$e101309%_
                  ((lambda (_%immediate101312%_)
                     (immediate-table-delete!
                      _%immediate101312%_
                      _%key101303%_))
                   _%$e101309%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab101279%_ _%key101280%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101284%_ ((_%spin101287%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101279%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101279%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101287%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101284%_ (##fx+ _%spin101287%_ '1)))
                    (let ((_%owner101293%_
                           (##vector-ref (&gc-table-lock _%tab101279%_) '1)))
                      (if (eq? _%owner101293%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101293%_)
                              (let () (##thread-yield!) (_%again101284%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101299%_ (gc-table-delete! _%tab101279%_ _%key101280%_)))
          (##vector-set! (&gc-table-lock _%tab101279%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101279%_) '0 '0 '1)
          _%$r101299%_)))
    (define gc-table-for-each
      (lambda (_%tab101268%_ _%proc101269%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht101272%_ (__gc-table-e _%tab101268%_)))
            (##gc-hash-table-for-each _%proc101269%_ _%gcht101272%_))
          (let ((_%$e101274%_ (&gc-table-immediate _%tab101268%_)))
            (if _%$e101274%_
                ((lambda (_%immediate101277%_)
                   (raw-table-for-each _%immediate101277%_ _%proc101269%_))
                 _%$e101274%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab101245%_ _%proc101246%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101250%_ ((_%spin101253%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101245%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101245%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101253%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101250%_ (##fx+ _%spin101253%_ '1)))
                    (let ((_%owner101259%_
                           (##vector-ref (&gc-table-lock _%tab101245%_) '1)))
                      (if (eq? _%owner101259%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101259%_)
                              (let () (##thread-yield!) (_%again101250%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101265%_ (gc-table-for-each _%tab101245%_ _%proc101246%_)))
          (##vector-set! (&gc-table-lock _%tab101245%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101245%_) '0 '0 '1)
          _%$r101265%_)))
    (define gc-table-copy
      (lambda (_%tab101233%_)
        (let* ((_%gcht101235%_ (__gc-table-e _%tab101233%_))
               (_%new-table101237%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht101235%_)
                 (macro-gc-hash-table-flags _%gcht101235%_)))
               (_%result101239%_
                (##structure
                 (##structure-type _%tab101233%_)
                 _%new-table101237%_
                 '#f)))
          (gc-table-for-each
           _%tab101233%_
           (lambda (_%k101242%_ _%v101243%_)
             (gc-table-set! _%result101239%_ _%k101242%_ _%v101243%_)))
          _%result101239%_)))
    (define gc-table-copy/lock
      (lambda (_%tab101211%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101215%_ ((_%spin101218%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101211%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101211%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101218%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101215%_ (##fx+ _%spin101218%_ '1)))
                    (let ((_%owner101224%_
                           (##vector-ref (&gc-table-lock _%tab101211%_) '1)))
                      (if (eq? _%owner101224%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101224%_)
                              (let () (##thread-yield!) (_%again101215%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101230%_ (gc-table-copy _%tab101211%_)))
          (##vector-set! (&gc-table-lock _%tab101211%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101211%_) '0 '0 '1)
          _%$r101230%_)))
    (define gc-table-clear!
      (lambda (_%tab101204%_)
        (let* ((_%gcht101206%_ (__gc-table-e _%tab101204%_))
               (_%new-table101208%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht101206%_))))
          (&gc-table-gcht-set! _%tab101204%_ _%new-table101208%_)
          (&gc-table-immediate-set! _%tab101204%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab101182%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101186%_ ((_%spin101189%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101182%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101182%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101189%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101186%_ (##fx+ _%spin101189%_ '1)))
                    (let ((_%owner101195%_
                           (##vector-ref (&gc-table-lock _%tab101182%_) '1)))
                      (if (eq? _%owner101195%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101195%_)
                              (let () (##thread-yield!) (_%again101186%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101201%_ (gc-table-clear! _%tab101182%_)))
          (##vector-set! (&gc-table-lock _%tab101182%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101182%_) '0 '0 '1)
          _%$r101201%_)))
    (define gc-table-length
      (lambda (_%tab101174%_)
        (let ((_%gcht101176%_ (__gc-table-e _%tab101174%_)))
          (fx+ (macro-gc-hash-table-count _%gcht101176%_)
               (let ((_%$e101178%_ (&gc-table-immediate _%tab101174%_)))
                 (if _%$e101178%_ (&raw-table-count _%$e101178%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab101152%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101156%_ ((_%spin101159%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101152%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101152%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101159%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101156%_ (##fx+ _%spin101159%_ '1)))
                    (let ((_%owner101165%_
                           (##vector-ref (&gc-table-lock _%tab101152%_) '1)))
                      (if (eq? _%owner101165%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101165%_)
                              (let () (##thread-yield!) (_%again101156%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101171%_ (gc-table-length _%tab101152%_)))
          (##vector-set! (&gc-table-lock _%tab101152%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101152%_) '0 '0 '1)
          _%$r101171%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj101122%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101127%_ ((_%spin101130%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin101130%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101127%_ (##fx+ _%spin101130%_ '1)))
                      (let ((_%owner101136%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner101136%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101136%_)
                                (let () (##thread-yield!) (_%again101127%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101149%_
                 (let ((_%val101142%_
                        (gc-table-ref __object-eq-hash _%obj101122%_ '#f)))
                   (if _%val101142%_
                       _%val101142%_
                       (let ((_%h101144%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e101146%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e101146%_ _%$e101146%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj101122%_
                          _%h101144%_)
                         _%h101144%_)))))
            (##vector-set! __object-eq-hash-lock '1 '#f)
            (##vector-cas! __object-eq-hash-lock '0 '0 '1)
            _%$r101149%_))))))
