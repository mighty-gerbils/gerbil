(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1769382892)
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
      (lambda (_%tab104186%_)
        (##unchecked-structure-ref
         _%tab104186%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab104184%_)
        (##unchecked-structure-ref
         _%tab104184%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab104182%_)
        (##unchecked-structure-ref
         _%tab104182%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab104180%_)
        (##unchecked-structure-ref
         _%tab104180%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab104178%_)
        (##unchecked-structure-ref
         _%tab104178%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab104176%_)
        (##unchecked-structure-ref
         _%tab104176%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab104174%_)
        (##unchecked-structure-ref
         _%tab104174%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab104171%_ _%val104172%_)
        (##unchecked-structure-set!
         _%tab104171%_
         _%val104172%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab104168%_ _%val104169%_)
        (##unchecked-structure-set!
         _%tab104168%_
         _%val104169%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab104165%_ _%val104166%_)
        (##unchecked-structure-set!
         _%tab104165%_
         _%val104166%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab104162%_ _%val104163%_)
        (##unchecked-structure-set!
         _%tab104162%_
         _%val104163%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab104159%_ _%val104160%_)
        (##unchecked-structure-set!
         _%tab104159%_
         _%val104160%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab104156%_ _%val104157%_)
        (##unchecked-structure-set!
         _%tab104156%_
         _%val104157%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab104153%_ _%val104154%_)
        (##unchecked-structure-set!
         _%tab104153%_
         _%val104154%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint104151%_)
        (if (and (fixnum? _%size-hint104151%_) (##fx> _%size-hint104151%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint104151%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint104116%_
               _%hash104117%_
               _%test104118%_
               _%seed104119%_
               _%lock104120%_)
        (let* ((_%size104122%_ (raw-table-size-hint->size _%size-hint104116%_))
               (_%table104124%_
                (##make-vector _%size104122%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table104124%_
           '0
           (##fxquotient _%size104122%_ '2)
           _%hash104117%_
           _%test104118%_
           _%seed104119%_
           _%lock104120%_))))
    (define make-raw-table__0
      (lambda (_%size-hint104130%_ _%hash104131%_ _%test104132%_)
        (let* ((_%seed104134%_ '0) (_%lock104136%_ '#f))
          (make-raw-table__%
           _%size-hint104130%_
           _%hash104131%_
           _%test104132%_
           _%seed104134%_
           _%lock104136%_))))
    (define make-raw-table__1
      (lambda (_%size-hint104138%_
               _%hash104139%_
               _%test104140%_
               _%seed104141%_)
        (let ((_%lock104143%_ '#f))
          (make-raw-table__%
           _%size-hint104138%_
           _%hash104139%_
           _%test104140%_
           _%seed104141%_
           _%lock104143%_))))
    (define make-raw-table
      (lambda _g104187_
        (let ((_g104188_ (##length _g104187_)))
          (cond ((##fx= _g104188_ 3) (apply make-raw-table__0 _g104187_))
                ((##fx= _g104188_ 4) (apply make-raw-table__1 _g104187_))
                ((##fx= _g104188_ 5) (apply make-raw-table__% _g104187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g104187_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint104096%_
               _%hash104097%_
               _%test104098%_
               _%seed104099%_)
        (make-raw-table__%
         _%size-hint104096%_
         _%hash104097%_
         _%test104098%_
         _%seed104099%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint104104%_ _%hash104105%_ _%test104106%_)
        (let ((_%seed104108%_ '0))
          (make-raw-table/lock__%
           _%size-hint104104%_
           _%hash104105%_
           _%test104106%_
           _%seed104108%_))))
    (define make-raw-table/lock
      (lambda _g104189_
        (let ((_g104190_ (##length _g104189_)))
          (cond ((##fx= _g104190_ 3) (apply make-raw-table/lock__0 _g104189_))
                ((##fx= _g104190_ 4) (apply make-raw-table/lock__% _g104189_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g104189_))))))
    (define raw-table-length
      (lambda (_%tab104093%_) (&raw-table-count _%tab104093%_)))
    (define raw-table-length/lock
      (lambda (_%tab104068%_)
        (let ((_%lock104070%_ (&raw-table-lock _%tab104068%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again104075%_ ((_%spin104078%_ '0))
              (if (##fx= (##vector-cas! _%lock104070%_ '0 '1 '0) '0)
                  (##vector-set! _%lock104070%_ '1 (current-thread))
                  (if (##fx< _%spin104078%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again104075%_ (##fx+ _%spin104078%_ '1)))
                      (let ((_%owner104084%_ (##vector-ref _%lock104070%_ '1)))
                        (if (eq? _%owner104084%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner104084%_)
                                (let () (##thread-yield!) (_%again104075%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r104090%_ (&raw-table-count _%tab104068%_)))
            (##vector-set! _%lock104070%_ '1 '#f)
            (##vector-cas! _%lock104070%_ '0 '0 '1)
            _%$r104090%_))))
    (define raw-table-ref
      (lambda (_%tab104020%_ _%key104021%_ _%default104022%_)
        (let ((_%table104024%_ (&raw-table-table _%tab104020%_))
              (_%seed104025%_ (&raw-table-seed _%tab104020%_))
              (_%hash104026%_ (&raw-table-hash _%tab104020%_))
              (_%test104027%_ (&raw-table-test _%tab104020%_)))
          (let* ((_%h104029%_
                  (fxxor (_%hash104026%_ _%key104021%_) _%seed104025%_))
                 (_%size104032%_ (vector-length _%table104024%_))
                 (_%entries104035%_ (##fxquotient _%size104032%_ '2))
                 (_%start104038%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h104029%_ _%entries104035%_)
                   '1)))
            (let _%loop104042%_ ((_%probe104045%_ _%start104038%_)
                                 (_%i104047%_ '1)
                                 (_%deleted104049%_ '#f))
              (let ((_%k104052%_ (vector-ref _%table104024%_ _%probe104045%_)))
                (if (eq? _%k104052%_ (macro-unused-obj))
                    _%default104022%_
                    (if (eq? _%k104052%_ (macro-deleted-obj))
                        (_%loop104042%_
                         (let ((_%next-probe104057%_
                                (fx+ _%start104038%_
                                     _%i104047%_
                                     (fx* _%i104047%_ _%i104047%_))))
                           (##fxmodulo _%next-probe104057%_ _%size104032%_))
                         (##fx+ _%i104047%_ '1)
                         (let ((_%$e104060%_ _%deleted104049%_))
                           (if _%$e104060%_ _%$e104060%_ _%probe104045%_)))
                        (if (_%test104027%_ _%key104021%_ _%k104052%_)
                            (vector-ref
                             _%table104024%_
                             (##fx+ _%probe104045%_ '1))
                            (_%loop104042%_
                             (let ((_%next-probe104065%_
                                    (fx+ _%start104038%_
                                         _%i104047%_
                                         (fx* _%i104047%_ _%i104047%_))))
                               (##fxmodulo
                                _%next-probe104065%_
                                _%size104032%_))
                             (##fx+ _%i104047%_ '1)
                             _%deleted104049%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab103993%_ _%key103994%_ _%default103995%_)
        (let ((_%lock103997%_ (&raw-table-lock _%tab103993%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again104002%_ ((_%spin104005%_ '0))
              (if (##fx= (##vector-cas! _%lock103997%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103997%_ '1 (current-thread))
                  (if (##fx< _%spin104005%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again104002%_ (##fx+ _%spin104005%_ '1)))
                      (let ((_%owner104011%_ (##vector-ref _%lock103997%_ '1)))
                        (if (eq? _%owner104011%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner104011%_)
                                (let () (##thread-yield!) (_%again104002%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r104017%_
                 (raw-table-ref
                  _%tab103993%_
                  _%key103994%_
                  _%default103995%_)))
            (##vector-set! _%lock103997%_ '1 '#f)
            (##vector-cas! _%lock103997%_ '0 '0 '1)
            _%$r104017%_))))
    (define raw-table-set!
      (lambda (_%tab103989%_ _%key103990%_ _%value103991%_)
        (if (##fx< (&raw-table-free _%tab103989%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103989%_))
                    '4))
            (__raw-table-rehash! _%tab103989%_)
            '#!void)
        (__raw-table-set! _%tab103989%_ _%key103990%_ _%value103991%_)))
    (define raw-table-set!/lock
      (lambda (_%tab103962%_ _%key103963%_ _%value103964%_)
        (let ((_%lock103966%_ (&raw-table-lock _%tab103962%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103971%_ ((_%spin103974%_ '0))
              (if (##fx= (##vector-cas! _%lock103966%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103966%_ '1 (current-thread))
                  (if (##fx< _%spin103974%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103971%_ (##fx+ _%spin103974%_ '1)))
                      (let ((_%owner103980%_ (##vector-ref _%lock103966%_ '1)))
                        (if (eq? _%owner103980%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103980%_)
                                (let () (##thread-yield!) (_%again103971%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103986%_
                 (raw-table-set! _%tab103962%_ _%key103963%_ _%value103964%_)))
            (##vector-set! _%lock103966%_ '1 '#f)
            (##vector-cas! _%lock103966%_ '0 '0 '1)
            _%$r103986%_))))
    (define raw-table-update!
      (lambda (_%tab103957%_ _%key103958%_ _%update103959%_ _%default103960%_)
        (if (##fx< (&raw-table-free _%tab103957%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103957%_))
                    '4))
            (__raw-table-rehash! _%tab103957%_)
            '#!void)
        (__raw-table-update!
         _%tab103957%_
         _%key103958%_
         _%update103959%_
         _%default103960%_)))
    (define raw-table-update!/lock
      (lambda (_%tab103929%_ _%key103930%_ _%update103931%_ _%default103932%_)
        (let ((_%lock103934%_ (&raw-table-lock _%tab103929%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103939%_ ((_%spin103942%_ '0))
              (if (##fx= (##vector-cas! _%lock103934%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103934%_ '1 (current-thread))
                  (if (##fx< _%spin103942%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103939%_ (##fx+ _%spin103942%_ '1)))
                      (let ((_%owner103948%_ (##vector-ref _%lock103934%_ '1)))
                        (if (eq? _%owner103948%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103948%_)
                                (let () (##thread-yield!) (_%again103939%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103954%_
                 (raw-table-update!
                  _%tab103929%_
                  _%key103930%_
                  _%update103931%_
                  _%default103932%_)))
            (##vector-set! _%lock103934%_ '1 '#f)
            (##vector-cas! _%lock103934%_ '0 '0 '1)
            _%$r103954%_))))
    (define raw-table-delete!
      (lambda (_%tab103886%_ _%key103887%_)
        (let ((_%table103889%_ (&raw-table-table _%tab103886%_))
              (_%seed103890%_ (&raw-table-seed _%tab103886%_))
              (_%hash103891%_ (&raw-table-hash _%tab103886%_))
              (_%test103892%_ (&raw-table-test _%tab103886%_)))
          (let* ((_%h103894%_
                  (fxxor (_%hash103891%_ _%key103887%_) _%seed103890%_))
                 (_%size103897%_ (vector-length _%table103889%_))
                 (_%entries103900%_ (##fxquotient _%size103897%_ '2))
                 (_%start103903%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103894%_ _%entries103900%_)
                   '1)))
            (let _%loop103907%_ ((_%probe103910%_ _%start103903%_)
                                 (_%i103912%_ '1))
              (let ((_%k103915%_ (vector-ref _%table103889%_ _%probe103910%_)))
                (if (eq? _%k103915%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103915%_ (macro-deleted-obj))
                        (_%loop103907%_
                         (let ((_%next-probe103920%_
                                (fx+ _%start103903%_
                                     _%i103912%_
                                     (fx* _%i103912%_ _%i103912%_))))
                           (##fxmodulo _%next-probe103920%_ _%size103897%_))
                         (##fx+ _%i103912%_ '1))
                        (if (_%test103892%_ _%key103887%_ _%k103915%_)
                            (let ()
                              (vector-set!
                               _%table103889%_
                               _%probe103910%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103889%_
                               (##fx+ _%probe103910%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab103886%_
                                  (##fx- (&raw-table-count _%tab103886%_)
                                         '1)))))
                            (_%loop103907%_
                             (let ((_%next-probe103926%_
                                    (fx+ _%start103903%_
                                         _%i103912%_
                                         (fx* _%i103912%_ _%i103912%_))))
                               (##fxmodulo
                                _%next-probe103926%_
                                _%size103897%_))
                             (##fx+ _%i103912%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab103860%_ _%key103861%_)
        (let ((_%lock103863%_ (&raw-table-lock _%tab103860%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103868%_ ((_%spin103871%_ '0))
              (if (##fx= (##vector-cas! _%lock103863%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103863%_ '1 (current-thread))
                  (if (##fx< _%spin103871%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103868%_ (##fx+ _%spin103871%_ '1)))
                      (let ((_%owner103877%_ (##vector-ref _%lock103863%_ '1)))
                        (if (eq? _%owner103877%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103877%_)
                                (let () (##thread-yield!) (_%again103868%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103883%_ (raw-table-delete! _%tab103860%_ _%key103861%_)))
            (##vector-set! _%lock103863%_ '1 '#f)
            (##vector-cas! _%lock103863%_ '0 '0 '1)
            _%$r103883%_))))
    (define raw-table-for-each
      (lambda (_%tab103844%_ _%proc103845%_)
        (let* ((_%table103847%_ (&raw-table-table _%tab103844%_))
               (_%size103849%_ (vector-length _%table103847%_)))
          (let _%loop103852%_ ((_%i103854%_ '0))
            (if (##fx< _%i103854%_ _%size103849%_)
                (begin
                  (let ((_%key103856%_
                         (vector-ref _%table103847%_ _%i103854%_)))
                    (if (if (eq? _%key103856%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key103856%_ (macro-deleted-obj))))
                        (let ((_%value103858%_
                               (vector-ref
                                _%table103847%_
                                (##fx+ _%i103854%_ '1))))
                          (_%proc103845%_ _%key103856%_ _%value103858%_))
                        '#!void))
                  (_%loop103852%_ (##fx+ _%i103854%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab103818%_ _%proc103819%_)
        (let ((_%lock103821%_ (&raw-table-lock _%tab103818%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103826%_ ((_%spin103829%_ '0))
              (if (##fx= (##vector-cas! _%lock103821%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103821%_ '1 (current-thread))
                  (if (##fx< _%spin103829%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103826%_ (##fx+ _%spin103829%_ '1)))
                      (let ((_%owner103835%_ (##vector-ref _%lock103821%_ '1)))
                        (if (eq? _%owner103835%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103835%_)
                                (let () (##thread-yield!) (_%again103826%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103841%_
                 (raw-table-for-each _%tab103818%_ _%proc103819%_)))
            (##vector-set! _%lock103821%_ '1 '#f)
            (##vector-cas! _%lock103821%_ '0 '0 '1)
            _%$r103841%_))))
    (define raw-table-copy
      (lambda (_%tab103814%_)
        (let ((_%new-tab103816%_ (##structure-copy _%tab103814%_)))
          (&raw-table-table-set!
           _%new-tab103816%_
           (vector-copy (&raw-table-table _%tab103814%_)))
          _%new-tab103816%_)))
    (define raw-table-copy/lock
      (lambda (_%tab103789%_)
        (let ((_%lock103791%_ (&raw-table-lock _%tab103789%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103796%_ ((_%spin103799%_ '0))
              (if (##fx= (##vector-cas! _%lock103791%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103791%_ '1 (current-thread))
                  (if (##fx< _%spin103799%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103796%_ (##fx+ _%spin103799%_ '1)))
                      (let ((_%owner103805%_ (##vector-ref _%lock103791%_ '1)))
                        (if (eq? _%owner103805%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103805%_)
                                (let () (##thread-yield!) (_%again103796%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103811%_ (raw-table-copy _%tab103789%_)))
            (##vector-set! _%lock103791%_ '1 '#f)
            (##vector-cas! _%lock103791%_ '0 '0 '1)
            _%$r103811%_))))
    (define raw-table-clear!
      (lambda (_%tab103787%_)
        (vector-fill! (&raw-table-table _%tab103787%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab103787%_ '0)
        (&raw-table-free-set!
         _%tab103787%_
         (##fxquotient (vector-length (&raw-table-table _%tab103787%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab103762%_)
        (let ((_%lock103764%_ (&raw-table-lock _%tab103762%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103769%_ ((_%spin103772%_ '0))
              (if (##fx= (##vector-cas! _%lock103764%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103764%_ '1 (current-thread))
                  (if (##fx< _%spin103772%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103769%_ (##fx+ _%spin103772%_ '1)))
                      (let ((_%owner103778%_ (##vector-ref _%lock103764%_ '1)))
                        (if (eq? _%owner103778%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103778%_)
                                (let () (##thread-yield!) (_%again103769%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103784%_ (raw-table-clear! _%tab103762%_)))
            (##vector-set! _%lock103764%_ '1 '#f)
            (##vector-cas! _%lock103764%_ '0 '0 '1)
            _%$r103784%_))))
    (define __raw-table-set!
      (lambda (_%tab103712%_ _%key103713%_ _%value103714%_)
        (let ((_%table103716%_ (&raw-table-table _%tab103712%_))
              (_%seed103717%_ (&raw-table-seed _%tab103712%_))
              (_%hash103718%_ (&raw-table-hash _%tab103712%_))
              (_%test103719%_ (&raw-table-test _%tab103712%_)))
          (let* ((_%h103721%_
                  (fxxor (_%hash103718%_ _%key103713%_) _%seed103717%_))
                 (_%size103724%_ (vector-length _%table103716%_))
                 (_%entries103727%_ (##fxquotient _%size103724%_ '2))
                 (_%start103730%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103721%_ _%entries103727%_)
                   '1)))
            (let _%loop103734%_ ((_%probe103737%_ _%start103730%_)
                                 (_%i103739%_ '1)
                                 (_%deleted103741%_ '#f))
              (let ((_%k103744%_ (vector-ref _%table103716%_ _%probe103737%_)))
                (if (eq? _%k103744%_ (macro-unused-obj))
                    (if _%deleted103741%_
                        (begin
                          (vector-set!
                           _%table103716%_
                           _%deleted103741%_
                           _%key103713%_)
                          (vector-set!
                           _%table103716%_
                           (##fx+ _%deleted103741%_ '1)
                           _%value103714%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103712%_
                              (##fx+ (&raw-table-count _%tab103712%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103716%_
                           _%probe103737%_
                           _%key103713%_)
                          (vector-set!
                           _%table103716%_
                           (##fx+ _%probe103737%_ '1)
                           _%value103714%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103712%_
                              (##fx- (&raw-table-free _%tab103712%_) '1))
                             (&raw-table-count-set!
                              _%tab103712%_
                              (##fx+ (&raw-table-count _%tab103712%_) '1))))))
                    (if (eq? _%k103744%_ (macro-deleted-obj))
                        (_%loop103734%_
                         (let ((_%next-probe103751%_
                                (fx+ _%start103730%_
                                     _%i103739%_
                                     (fx* _%i103739%_ _%i103739%_))))
                           (##fxmodulo _%next-probe103751%_ _%size103724%_))
                         (##fx+ _%i103739%_ '1)
                         (let ((_%$e103754%_ _%deleted103741%_))
                           (if _%$e103754%_ _%$e103754%_ _%probe103737%_)))
                        (if (_%test103719%_ _%key103713%_ _%k103744%_)
                            (let ()
                              (vector-set!
                               _%table103716%_
                               _%probe103737%_
                               _%key103713%_)
                              (vector-set!
                               _%table103716%_
                               (##fx+ _%probe103737%_ '1)
                               _%value103714%_))
                            (_%loop103734%_
                             (let ((_%next-probe103759%_
                                    (fx+ _%start103730%_
                                         _%i103739%_
                                         (fx* _%i103739%_ _%i103739%_))))
                               (##fxmodulo
                                _%next-probe103759%_
                                _%size103724%_))
                             (##fx+ _%i103739%_ '1)
                             _%deleted103741%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab103661%_ _%key103662%_ _%update103663%_ _%default103664%_)
        (let ((_%table103666%_ (&raw-table-table _%tab103661%_))
              (_%seed103667%_ (&raw-table-seed _%tab103661%_))
              (_%hash103668%_ (&raw-table-hash _%tab103661%_))
              (_%test103669%_ (&raw-table-test _%tab103661%_)))
          (let* ((_%h103671%_
                  (fxxor (_%hash103668%_ _%key103662%_) _%seed103667%_))
                 (_%size103674%_ (vector-length _%table103666%_))
                 (_%entries103677%_ (##fxquotient _%size103674%_ '2))
                 (_%start103680%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103671%_ _%entries103677%_)
                   '1)))
            (let _%loop103684%_ ((_%probe103687%_ _%start103680%_)
                                 (_%i103689%_ '1)
                                 (_%deleted103691%_ '#f))
              (let ((_%k103694%_ (vector-ref _%table103666%_ _%probe103687%_)))
                (if (eq? _%k103694%_ (macro-unused-obj))
                    (if _%deleted103691%_
                        (begin
                          (vector-set!
                           _%table103666%_
                           _%deleted103691%_
                           _%key103662%_)
                          (vector-set!
                           _%table103666%_
                           (##fx+ _%deleted103691%_ '1)
                           (_%update103663%_ _%default103664%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103661%_
                              (##fx+ (&raw-table-count _%tab103661%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103666%_
                           _%probe103687%_
                           _%key103662%_)
                          (vector-set!
                           _%table103666%_
                           (##fx+ _%probe103687%_ '1)
                           (_%update103663%_ _%default103664%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103661%_
                              (##fx- (&raw-table-free _%tab103661%_) '1))
                             (&raw-table-count-set!
                              _%tab103661%_
                              (##fx+ (&raw-table-count _%tab103661%_) '1))))))
                    (if (eq? _%k103694%_ (macro-deleted-obj))
                        (_%loop103684%_
                         (let ((_%next-probe103701%_
                                (fx+ _%start103680%_
                                     _%i103689%_
                                     (fx* _%i103689%_ _%i103689%_))))
                           (##fxmodulo _%next-probe103701%_ _%size103674%_))
                         (##fx+ _%i103689%_ '1)
                         (let ((_%$e103704%_ _%deleted103691%_))
                           (if _%$e103704%_ _%$e103704%_ _%probe103687%_)))
                        (if (_%test103669%_ _%key103662%_ _%k103694%_)
                            (let ()
                              (vector-set!
                               _%table103666%_
                               _%probe103687%_
                               _%key103662%_)
                              (vector-set!
                               _%table103666%_
                               (##fx+ _%probe103687%_ '1)
                               (_%update103663%_
                                (vector-ref
                                 _%table103666%_
                                 (##fx+ _%probe103687%_ '1)))))
                            (_%loop103684%_
                             (let ((_%next-probe103709%_
                                    (fx+ _%start103680%_
                                         _%i103689%_
                                         (fx* _%i103689%_ _%i103689%_))))
                               (##fxmodulo
                                _%next-probe103709%_
                                _%size103674%_))
                             (##fx+ _%i103689%_ '1)
                             _%deleted103691%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab103642%_)
        (let* ((_%old-table103644%_ (&raw-table-table _%tab103642%_))
               (_%old-size103646%_ (vector-length _%old-table103644%_))
               (_%new-size103648%_
                (if (##fx< (&raw-table-count _%tab103642%_)
                           (##fxquotient _%old-size103646%_ '4))
                    (vector-length _%old-table103644%_)
                    (##fx* '2 (vector-length _%old-table103644%_))))
               (_%new-table103650%_
                (##make-vector _%new-size103648%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab103642%_ _%new-table103650%_)
          (&raw-table-count-set! _%tab103642%_ '0)
          (&raw-table-free-set!
           _%tab103642%_
           (##fxquotient _%new-size103648%_ '2))
          (let _%lp103653%_ ((_%i103655%_ '0))
            (if (##fx< _%i103655%_ _%old-size103646%_)
                (begin
                  (let ((_%key103657%_
                         (vector-ref _%old-table103644%_ _%i103655%_)))
                    (if (if (eq? _%key103657%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key103657%_ (macro-deleted-obj))))
                        (let ((_%value103659%_
                               (vector-ref
                                _%old-table103644%_
                                (##fx+ _%i103655%_ '1))))
                          (__raw-table-set!
                           _%tab103642%_
                           _%key103657%_
                           _%value103659%_))
                        '#!void))
                  (_%lp103653%_ (##fx+ _%i103655%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj103634%_)
        (let ((_%t103636%_ (##type _%obj103634%_)))
          (if (##fx= (##fxand _%t103636%_ '1) '0)
              (fxand (##type-cast _%obj103634%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj103634%_)
                  (##symbol-hash _%obj103634%_)
                  (if (procedure? _%obj103634%_)
                      (procedure-hash _%obj103634%_)
                      (fxand (__eq-hash _%obj103634%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj103630%_)
        (let ((_%h103632%_
               (if (##closure? _%obj103630%_)
                   (__eq-hash _%obj103630%_)
                   (##type-cast _%obj103630%_ '0))))
          (fxand _%h103632%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj103627%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj103627%_)))
    (define eqv-hash
      (lambda (_%obj103617%_)
        (letrec ((_%combine103619%_
                  (lambda (_%a103624%_ _%b103625%_)
                    (fxand (##fx* (##fx+ _%a103624%_
                                         (fxarithmetic-shift-left
                                          _%b103625%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash103620%_
                  (lambda (_%obj103622%_)
                    (macro-number-dispatch
                     _%obj103622%_
                     (eq-hash _%obj103622%_)
                     (fxand _%obj103622%_ (macro-max-fixnum32))
                     (modulo _%obj103622%_ '331804481)
                     (_%combine103619%_
                      (_%hash103620%_ (macro-ratnum-numerator _%obj103622%_))
                      (_%hash103620%_
                       (macro-ratnum-denominator _%obj103622%_)))
                     (_%combine103619%_
                      (##u16vector-ref _%obj103622%_ '0)
                      (_%combine103619%_
                       (##u16vector-ref _%obj103622%_ '1)
                       (_%combine103619%_
                        (##u16vector-ref _%obj103622%_ '2)
                        (##u16vector-ref _%obj103622%_ '3))))
                     (_%combine103619%_
                      (_%hash103620%_ (macro-cpxnum-real _%obj103622%_))
                      (_%hash103620%_ (macro-cpxnum-imag _%obj103622%_)))))))
          (_%hash103620%_ _%obj103617%_))))
    (define symbolic?
      (lambda (_%obj103612%_)
        (let ((_%$e103614%_ (symbol? _%obj103612%_)))
          (if _%$e103614%_ _%$e103614%_ (keyword? _%obj103612%_)))))
    (define symbolic-hash
      (lambda (_%obj103610%_) (##symbol-hash _%obj103610%_)))
    (define string-hash
      (lambda (_%obj103608%_) (##string=?-hash _%obj103608%_)))
    (define immediate-hash
      (lambda (_%obj103606%_) (##type-cast _%obj103606%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint103588%_ _%seed103589%_)
        (make-raw-table__1 _%size-hint103588%_ eq-hash eq? _%seed103589%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint103595%_ '#f) (_%seed103597%_ '0))
          (make-eq-table__% _%size-hint103595%_ _%seed103597%_))))
    (define make-eq-table__1
      (lambda (_%size-hint103599%_)
        (let ((_%seed103601%_ '0))
          (make-eq-table__% _%size-hint103599%_ _%seed103601%_))))
    (define make-eq-table
      (lambda _g104191_
        (let ((_g104192_ (##length _g104191_)))
          (cond ((##fx= _g104192_ 0) (apply make-eq-table__0 _g104191_))
                ((##fx= _g104192_ 1) (apply make-eq-table__1 _g104191_))
                ((##fx= _g104192_ 2) (apply make-eq-table__% _g104191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g104191_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint103568%_ _%seed103570%_)
        (make-raw-table/lock__%
         _%size-hint103568%_
         eq-hash
         eq?
         _%seed103570%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint103576%_ '#f) (_%seed103578%_ '0))
          (make-eq-table/lock__% _%size-hint103576%_ _%seed103578%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint103580%_)
        (let ((_%seed103582%_ '0))
          (make-eq-table/lock__% _%size-hint103580%_ _%seed103582%_))))
    (define make-eq-table/lock
      (lambda _g104193_
        (let ((_g104194_ (##length _g104193_)))
          (cond ((##fx= _g104194_ 0) (apply make-eq-table/lock__0 _g104193_))
                ((##fx= _g104194_ 1) (apply make-eq-table/lock__1 _g104193_))
                ((##fx= _g104194_ 2) (apply make-eq-table/lock__% _g104193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g104193_))))))
    (define eq-table-ref
      (lambda (_%tab103521%_ _%key103522%_ _%default103523%_)
        (let ((_%table103525%_ (&raw-table-table _%tab103521%_))
              (_%seed103526%_ (&raw-table-seed _%tab103521%_)))
          (let* ((_%h103528%_ (fxxor (eq-hash _%key103522%_) _%seed103526%_))
                 (_%size103531%_ (vector-length _%table103525%_))
                 (_%entries103534%_ (##fxquotient _%size103531%_ '2))
                 (_%start103537%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103528%_ _%entries103534%_)
                   '1)))
            (let _%loop103541%_ ((_%probe103544%_ _%start103537%_)
                                 (_%i103546%_ '1)
                                 (_%deleted103548%_ '#f))
              (let ((_%k103551%_ (vector-ref _%table103525%_ _%probe103544%_)))
                (if (eq? _%k103551%_ (macro-unused-obj))
                    _%default103523%_
                    (if (eq? _%k103551%_ (macro-deleted-obj))
                        (_%loop103541%_
                         (let ((_%next-probe103556%_
                                (fx+ _%start103537%_
                                     _%i103546%_
                                     (fx* _%i103546%_ _%i103546%_))))
                           (##fxmodulo _%next-probe103556%_ _%size103531%_))
                         (##fx+ _%i103546%_ '1)
                         (let ((_%$e103559%_ _%deleted103548%_))
                           (if _%$e103559%_ _%$e103559%_ _%probe103544%_)))
                        (if (eq? _%key103522%_ _%k103551%_)
                            (vector-ref
                             _%table103525%_
                             (##fx+ _%probe103544%_ '1))
                            (_%loop103541%_
                             (let ((_%next-probe103564%_
                                    (fx+ _%start103537%_
                                         _%i103546%_
                                         (fx* _%i103546%_ _%i103546%_))))
                               (##fxmodulo
                                _%next-probe103564%_
                                _%size103531%_))
                             (##fx+ _%i103546%_ '1)
                             _%deleted103548%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab103494%_ _%key103495%_ _%default103496%_)
        (let ((_%lock103498%_ (&raw-table-lock _%tab103494%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103503%_ ((_%spin103506%_ '0))
              (if (##fx= (##vector-cas! _%lock103498%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103498%_ '1 (current-thread))
                  (if (##fx< _%spin103506%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103503%_ (##fx+ _%spin103506%_ '1)))
                      (let ((_%owner103512%_ (##vector-ref _%lock103498%_ '1)))
                        (if (eq? _%owner103512%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103512%_)
                                (let () (##thread-yield!) (_%again103503%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103518%_
                 (eq-table-ref _%tab103494%_ _%key103495%_ _%default103496%_)))
            (##vector-set! _%lock103498%_ '1 '#f)
            (##vector-cas! _%lock103498%_ '0 '0 '1)
            _%$r103518%_))))
    (define __eq-table-set!
      (lambda (_%tab103446%_ _%key103447%_ _%value103448%_)
        (let ((_%table103450%_ (&raw-table-table _%tab103446%_))
              (_%seed103451%_ (&raw-table-seed _%tab103446%_)))
          (let* ((_%h103453%_ (fxxor (eq-hash _%key103447%_) _%seed103451%_))
                 (_%size103456%_ (vector-length _%table103450%_))
                 (_%entries103459%_ (##fxquotient _%size103456%_ '2))
                 (_%start103462%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103453%_ _%entries103459%_)
                   '1)))
            (let _%loop103466%_ ((_%probe103469%_ _%start103462%_)
                                 (_%i103471%_ '1)
                                 (_%deleted103473%_ '#f))
              (let ((_%k103476%_ (vector-ref _%table103450%_ _%probe103469%_)))
                (if (eq? _%k103476%_ (macro-unused-obj))
                    (if _%deleted103473%_
                        (begin
                          (vector-set!
                           _%table103450%_
                           _%deleted103473%_
                           _%key103447%_)
                          (vector-set!
                           _%table103450%_
                           (##fx+ _%deleted103473%_ '1)
                           _%value103448%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103446%_
                              (##fx+ (&raw-table-count _%tab103446%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103450%_
                           _%probe103469%_
                           _%key103447%_)
                          (vector-set!
                           _%table103450%_
                           (##fx+ _%probe103469%_ '1)
                           _%value103448%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103446%_
                              (##fx- (&raw-table-free _%tab103446%_) '1))
                             (&raw-table-count-set!
                              _%tab103446%_
                              (##fx+ (&raw-table-count _%tab103446%_) '1))))))
                    (if (eq? _%k103476%_ (macro-deleted-obj))
                        (_%loop103466%_
                         (let ((_%next-probe103483%_
                                (fx+ _%start103462%_
                                     _%i103471%_
                                     (fx* _%i103471%_ _%i103471%_))))
                           (##fxmodulo _%next-probe103483%_ _%size103456%_))
                         (##fx+ _%i103471%_ '1)
                         (let ((_%$e103486%_ _%deleted103473%_))
                           (if _%$e103486%_ _%$e103486%_ _%probe103469%_)))
                        (if (eq? _%key103447%_ _%k103476%_)
                            (let ()
                              (vector-set!
                               _%table103450%_
                               _%probe103469%_
                               _%key103447%_)
                              (vector-set!
                               _%table103450%_
                               (##fx+ _%probe103469%_ '1)
                               _%value103448%_))
                            (_%loop103466%_
                             (let ((_%next-probe103491%_
                                    (fx+ _%start103462%_
                                         _%i103471%_
                                         (fx* _%i103471%_ _%i103471%_))))
                               (##fxmodulo
                                _%next-probe103491%_
                                _%size103456%_))
                             (##fx+ _%i103471%_ '1)
                             _%deleted103473%_))))))))))
    (define eq-table-set!
      (lambda (_%tab103442%_ _%key103443%_ _%value103444%_)
        (if (##fx< (&raw-table-free _%tab103442%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103442%_))
                    '4))
            (__raw-table-rehash! _%tab103442%_)
            '#!void)
        (__eq-table-set! _%tab103442%_ _%key103443%_ _%value103444%_)))
    (define eq-table-set!/lock
      (lambda (_%tab103414%_ _%key103415%_ _%value103416%_)
        (let ((_%lock103419%_ (&raw-table-lock _%tab103414%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103424%_ ((_%spin103427%_ '0))
              (if (##fx= (##vector-cas! _%lock103419%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103419%_ '1 (current-thread))
                  (if (##fx< _%spin103427%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103424%_ (##fx+ _%spin103427%_ '1)))
                      (let ((_%owner103433%_ (##vector-ref _%lock103419%_ '1)))
                        (if (eq? _%owner103433%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103433%_)
                                (let () (##thread-yield!) (_%again103424%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103439%_
                 (eq-table-set! _%tab103414%_ _%key103415%_ _%value103416%_)))
            (##vector-set! _%lock103419%_ '1 '#f)
            (##vector-cas! _%lock103419%_ '0 '0 '1)
            _%$r103439%_))))
    (define __eq-table-update!
      (lambda (_%tab103365%_
               _%key103366%_
               _%eq-table-update!103367%_
               _%default103368%_)
        (let ((_%table103370%_ (&raw-table-table _%tab103365%_))
              (_%seed103371%_ (&raw-table-seed _%tab103365%_)))
          (let* ((_%h103373%_ (fxxor (eq-hash _%key103366%_) _%seed103371%_))
                 (_%size103376%_ (vector-length _%table103370%_))
                 (_%entries103379%_ (##fxquotient _%size103376%_ '2))
                 (_%start103382%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103373%_ _%entries103379%_)
                   '1)))
            (let _%loop103386%_ ((_%probe103389%_ _%start103382%_)
                                 (_%i103391%_ '1)
                                 (_%deleted103393%_ '#f))
              (let ((_%k103396%_ (vector-ref _%table103370%_ _%probe103389%_)))
                (if (eq? _%k103396%_ (macro-unused-obj))
                    (if _%deleted103393%_
                        (begin
                          (vector-set!
                           _%table103370%_
                           _%deleted103393%_
                           _%key103366%_)
                          (vector-set!
                           _%table103370%_
                           (##fx+ _%deleted103393%_ '1)
                           (_%eq-table-update!103367%_ _%default103368%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103365%_
                              (##fx+ (&raw-table-count _%tab103365%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103370%_
                           _%probe103389%_
                           _%key103366%_)
                          (vector-set!
                           _%table103370%_
                           (##fx+ _%probe103389%_ '1)
                           (_%eq-table-update!103367%_ _%default103368%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103365%_
                              (##fx- (&raw-table-free _%tab103365%_) '1))
                             (&raw-table-count-set!
                              _%tab103365%_
                              (##fx+ (&raw-table-count _%tab103365%_) '1))))))
                    (if (eq? _%k103396%_ (macro-deleted-obj))
                        (_%loop103386%_
                         (let ((_%next-probe103403%_
                                (fx+ _%start103382%_
                                     _%i103391%_
                                     (fx* _%i103391%_ _%i103391%_))))
                           (##fxmodulo _%next-probe103403%_ _%size103376%_))
                         (##fx+ _%i103391%_ '1)
                         (let ((_%$e103406%_ _%deleted103393%_))
                           (if _%$e103406%_ _%$e103406%_ _%probe103389%_)))
                        (if (eq? _%key103366%_ _%k103396%_)
                            (let ()
                              (vector-set!
                               _%table103370%_
                               _%probe103389%_
                               _%key103366%_)
                              (vector-set!
                               _%table103370%_
                               (##fx+ _%probe103389%_ '1)
                               (_%eq-table-update!103367%_
                                (vector-ref
                                 _%table103370%_
                                 (##fx+ _%probe103389%_ '1)))))
                            (_%loop103386%_
                             (let ((_%next-probe103411%_
                                    (fx+ _%start103382%_
                                         _%i103391%_
                                         (fx* _%i103391%_ _%i103391%_))))
                               (##fxmodulo
                                _%next-probe103411%_
                                _%size103376%_))
                             (##fx+ _%i103391%_ '1)
                             _%deleted103393%_))))))))))
    (define eq-table-update!
      (lambda (_%tab103360%_
               _%key103361%_
               _%eq-table-update!103362%_
               _%default103363%_)
        (if (##fx< (&raw-table-free _%tab103360%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103360%_))
                    '4))
            (__raw-table-rehash! _%tab103360%_)
            '#!void)
        (__eq-table-update!
         _%tab103360%_
         _%key103361%_
         _%eq-table-update!103362%_
         _%default103363%_)))
    (define eq-table-update!/lock
      (lambda (_%tab103331%_
               _%key103332%_
               _%eq-table-update!103333%_
               _%default103334%_)
        (let ((_%lock103337%_ (&raw-table-lock _%tab103331%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103342%_ ((_%spin103345%_ '0))
              (if (##fx= (##vector-cas! _%lock103337%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103337%_ '1 (current-thread))
                  (if (##fx< _%spin103345%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103342%_ (##fx+ _%spin103345%_ '1)))
                      (let ((_%owner103351%_ (##vector-ref _%lock103337%_ '1)))
                        (if (eq? _%owner103351%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103351%_)
                                (let () (##thread-yield!) (_%again103342%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103357%_
                 (_%eq-table-update!103333%_
                  _%tab103331%_
                  _%key103332%_
                  _%eq-table-update!103333%_
                  _%default103334%_)))
            (##vector-set! _%lock103337%_ '1 '#f)
            (##vector-cas! _%lock103337%_ '0 '0 '1)
            _%$r103357%_))))
    (define eq-table-delete!
      (lambda (_%tab103288%_ _%key103289%_)
        (let ((_%table103291%_ (&raw-table-table _%tab103288%_))
              (_%seed103293%_ (&raw-table-seed _%tab103288%_)))
          (let* ((_%h103296%_ (fxxor (eq-hash _%key103289%_) _%seed103293%_))
                 (_%size103299%_ (vector-length _%table103291%_))
                 (_%entries103302%_ (##fxquotient _%size103299%_ '2))
                 (_%start103305%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103296%_ _%entries103302%_)
                   '1)))
            (let _%loop103309%_ ((_%probe103312%_ _%start103305%_)
                                 (_%i103314%_ '1))
              (let ((_%k103317%_ (vector-ref _%table103291%_ _%probe103312%_)))
                (if (eq? _%k103317%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103317%_ (macro-deleted-obj))
                        (_%loop103309%_
                         (let ((_%next-probe103322%_
                                (fx+ _%start103305%_
                                     _%i103314%_
                                     (fx* _%i103314%_ _%i103314%_))))
                           (##fxmodulo _%next-probe103322%_ _%size103299%_))
                         (##fx+ _%i103314%_ '1))
                        (if (eq? _%key103289%_ _%k103317%_)
                            (let ()
                              (vector-set!
                               _%table103291%_
                               _%probe103312%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103291%_
                               (##fx+ _%probe103312%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab103288%_
                                  (##fx- (&raw-table-count _%tab103288%_)
                                         '1)))))
                            (_%loop103309%_
                             (let ((_%next-probe103328%_
                                    (fx+ _%start103305%_
                                         _%i103314%_
                                         (fx* _%i103314%_ _%i103314%_))))
                               (##fxmodulo
                                _%next-probe103328%_
                                _%size103299%_))
                             (##fx+ _%i103314%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab103260%_ _%key103262%_)
        (let ((_%lock103265%_ (&raw-table-lock _%tab103260%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103270%_ ((_%spin103273%_ '0))
              (if (##fx= (##vector-cas! _%lock103265%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103265%_ '1 (current-thread))
                  (if (##fx< _%spin103273%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103270%_ (##fx+ _%spin103273%_ '1)))
                      (let ((_%owner103279%_ (##vector-ref _%lock103265%_ '1)))
                        (if (eq? _%owner103279%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103279%_)
                                (let () (##thread-yield!) (_%again103270%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103285%_ (eq-table-delete! _%tab103260%_ _%key103262%_)))
            (##vector-set! _%lock103265%_ '1 '#f)
            (##vector-cas! _%lock103265%_ '0 '0 '1)
            _%$r103285%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint103242%_ _%seed103243%_)
        (make-raw-table__1 _%size-hint103242%_ eqv-hash eqv? _%seed103243%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint103249%_ '#f) (_%seed103251%_ '0))
          (make-eqv-table__% _%size-hint103249%_ _%seed103251%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint103253%_)
        (let ((_%seed103255%_ '0))
          (make-eqv-table__% _%size-hint103253%_ _%seed103255%_))))
    (define make-eqv-table
      (lambda _g104195_
        (let ((_g104196_ (##length _g104195_)))
          (cond ((##fx= _g104196_ 0) (apply make-eqv-table__0 _g104195_))
                ((##fx= _g104196_ 1) (apply make-eqv-table__1 _g104195_))
                ((##fx= _g104196_ 2) (apply make-eqv-table__% _g104195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g104195_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint103222%_ _%seed103224%_)
        (make-raw-table/lock__%
         _%size-hint103222%_
         eqv-hash
         eqv?
         _%seed103224%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint103230%_ '#f) (_%seed103232%_ '0))
          (make-eqv-table/lock__% _%size-hint103230%_ _%seed103232%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint103234%_)
        (let ((_%seed103236%_ '0))
          (make-eqv-table/lock__% _%size-hint103234%_ _%seed103236%_))))
    (define make-eqv-table/lock
      (lambda _g104197_
        (let ((_g104198_ (##length _g104197_)))
          (cond ((##fx= _g104198_ 0) (apply make-eqv-table/lock__0 _g104197_))
                ((##fx= _g104198_ 1) (apply make-eqv-table/lock__1 _g104197_))
                ((##fx= _g104198_ 2) (apply make-eqv-table/lock__% _g104197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g104197_))))))
    (define eqv-table-ref
      (lambda (_%tab103175%_ _%key103176%_ _%default103177%_)
        (let ((_%table103179%_ (&raw-table-table _%tab103175%_))
              (_%seed103180%_ (&raw-table-seed _%tab103175%_)))
          (let* ((_%h103182%_ (fxxor (eqv-hash _%key103176%_) _%seed103180%_))
                 (_%size103185%_ (vector-length _%table103179%_))
                 (_%entries103188%_ (##fxquotient _%size103185%_ '2))
                 (_%start103191%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103182%_ _%entries103188%_)
                   '1)))
            (let _%loop103195%_ ((_%probe103198%_ _%start103191%_)
                                 (_%i103200%_ '1)
                                 (_%deleted103202%_ '#f))
              (let ((_%k103205%_ (vector-ref _%table103179%_ _%probe103198%_)))
                (if (eq? _%k103205%_ (macro-unused-obj))
                    _%default103177%_
                    (if (eq? _%k103205%_ (macro-deleted-obj))
                        (_%loop103195%_
                         (let ((_%next-probe103210%_
                                (fx+ _%start103191%_
                                     _%i103200%_
                                     (fx* _%i103200%_ _%i103200%_))))
                           (##fxmodulo _%next-probe103210%_ _%size103185%_))
                         (##fx+ _%i103200%_ '1)
                         (let ((_%$e103213%_ _%deleted103202%_))
                           (if _%$e103213%_ _%$e103213%_ _%probe103198%_)))
                        (if (eqv? _%key103176%_ _%k103205%_)
                            (vector-ref
                             _%table103179%_
                             (##fx+ _%probe103198%_ '1))
                            (_%loop103195%_
                             (let ((_%next-probe103218%_
                                    (fx+ _%start103191%_
                                         _%i103200%_
                                         (fx* _%i103200%_ _%i103200%_))))
                               (##fxmodulo
                                _%next-probe103218%_
                                _%size103185%_))
                             (##fx+ _%i103200%_ '1)
                             _%deleted103202%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab103148%_ _%key103149%_ _%default103150%_)
        (let ((_%lock103152%_ (&raw-table-lock _%tab103148%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103157%_ ((_%spin103160%_ '0))
              (if (##fx= (##vector-cas! _%lock103152%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103152%_ '1 (current-thread))
                  (if (##fx< _%spin103160%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103157%_ (##fx+ _%spin103160%_ '1)))
                      (let ((_%owner103166%_ (##vector-ref _%lock103152%_ '1)))
                        (if (eq? _%owner103166%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103166%_)
                                (let () (##thread-yield!) (_%again103157%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103172%_
                 (eqv-table-ref
                  _%tab103148%_
                  _%key103149%_
                  _%default103150%_)))
            (##vector-set! _%lock103152%_ '1 '#f)
            (##vector-cas! _%lock103152%_ '0 '0 '1)
            _%$r103172%_))))
    (define __eqv-table-set!
      (lambda (_%tab103100%_ _%key103101%_ _%value103102%_)
        (let ((_%table103104%_ (&raw-table-table _%tab103100%_))
              (_%seed103105%_ (&raw-table-seed _%tab103100%_)))
          (let* ((_%h103107%_ (fxxor (eqv-hash _%key103101%_) _%seed103105%_))
                 (_%size103110%_ (vector-length _%table103104%_))
                 (_%entries103113%_ (##fxquotient _%size103110%_ '2))
                 (_%start103116%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103107%_ _%entries103113%_)
                   '1)))
            (let _%loop103120%_ ((_%probe103123%_ _%start103116%_)
                                 (_%i103125%_ '1)
                                 (_%deleted103127%_ '#f))
              (let ((_%k103130%_ (vector-ref _%table103104%_ _%probe103123%_)))
                (if (eq? _%k103130%_ (macro-unused-obj))
                    (if _%deleted103127%_
                        (begin
                          (vector-set!
                           _%table103104%_
                           _%deleted103127%_
                           _%key103101%_)
                          (vector-set!
                           _%table103104%_
                           (##fx+ _%deleted103127%_ '1)
                           _%value103102%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103100%_
                              (##fx+ (&raw-table-count _%tab103100%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103104%_
                           _%probe103123%_
                           _%key103101%_)
                          (vector-set!
                           _%table103104%_
                           (##fx+ _%probe103123%_ '1)
                           _%value103102%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103100%_
                              (##fx- (&raw-table-free _%tab103100%_) '1))
                             (&raw-table-count-set!
                              _%tab103100%_
                              (##fx+ (&raw-table-count _%tab103100%_) '1))))))
                    (if (eq? _%k103130%_ (macro-deleted-obj))
                        (_%loop103120%_
                         (let ((_%next-probe103137%_
                                (fx+ _%start103116%_
                                     _%i103125%_
                                     (fx* _%i103125%_ _%i103125%_))))
                           (##fxmodulo _%next-probe103137%_ _%size103110%_))
                         (##fx+ _%i103125%_ '1)
                         (let ((_%$e103140%_ _%deleted103127%_))
                           (if _%$e103140%_ _%$e103140%_ _%probe103123%_)))
                        (if (eqv? _%key103101%_ _%k103130%_)
                            (let ()
                              (vector-set!
                               _%table103104%_
                               _%probe103123%_
                               _%key103101%_)
                              (vector-set!
                               _%table103104%_
                               (##fx+ _%probe103123%_ '1)
                               _%value103102%_))
                            (_%loop103120%_
                             (let ((_%next-probe103145%_
                                    (fx+ _%start103116%_
                                         _%i103125%_
                                         (fx* _%i103125%_ _%i103125%_))))
                               (##fxmodulo
                                _%next-probe103145%_
                                _%size103110%_))
                             (##fx+ _%i103125%_ '1)
                             _%deleted103127%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab103096%_ _%key103097%_ _%value103098%_)
        (if (##fx< (&raw-table-free _%tab103096%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103096%_))
                    '4))
            (__raw-table-rehash! _%tab103096%_)
            '#!void)
        (__eqv-table-set! _%tab103096%_ _%key103097%_ _%value103098%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab103068%_ _%key103069%_ _%value103070%_)
        (let ((_%lock103073%_ (&raw-table-lock _%tab103068%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103078%_ ((_%spin103081%_ '0))
              (if (##fx= (##vector-cas! _%lock103073%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103073%_ '1 (current-thread))
                  (if (##fx< _%spin103081%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103078%_ (##fx+ _%spin103081%_ '1)))
                      (let ((_%owner103087%_ (##vector-ref _%lock103073%_ '1)))
                        (if (eq? _%owner103087%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103087%_)
                                (let () (##thread-yield!) (_%again103078%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103093%_
                 (eqv-table-set! _%tab103068%_ _%key103069%_ _%value103070%_)))
            (##vector-set! _%lock103073%_ '1 '#f)
            (##vector-cas! _%lock103073%_ '0 '0 '1)
            _%$r103093%_))))
    (define __eqv-table-update!
      (lambda (_%tab103019%_
               _%key103020%_
               _%eqv-table-update!103021%_
               _%default103022%_)
        (let ((_%table103024%_ (&raw-table-table _%tab103019%_))
              (_%seed103025%_ (&raw-table-seed _%tab103019%_)))
          (let* ((_%h103027%_ (fxxor (eqv-hash _%key103020%_) _%seed103025%_))
                 (_%size103030%_ (vector-length _%table103024%_))
                 (_%entries103033%_ (##fxquotient _%size103030%_ '2))
                 (_%start103036%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103027%_ _%entries103033%_)
                   '1)))
            (let _%loop103040%_ ((_%probe103043%_ _%start103036%_)
                                 (_%i103045%_ '1)
                                 (_%deleted103047%_ '#f))
              (let ((_%k103050%_ (vector-ref _%table103024%_ _%probe103043%_)))
                (if (eq? _%k103050%_ (macro-unused-obj))
                    (if _%deleted103047%_
                        (begin
                          (vector-set!
                           _%table103024%_
                           _%deleted103047%_
                           _%key103020%_)
                          (vector-set!
                           _%table103024%_
                           (##fx+ _%deleted103047%_ '1)
                           (_%eqv-table-update!103021%_ _%default103022%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103019%_
                              (##fx+ (&raw-table-count _%tab103019%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103024%_
                           _%probe103043%_
                           _%key103020%_)
                          (vector-set!
                           _%table103024%_
                           (##fx+ _%probe103043%_ '1)
                           (_%eqv-table-update!103021%_ _%default103022%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103019%_
                              (##fx- (&raw-table-free _%tab103019%_) '1))
                             (&raw-table-count-set!
                              _%tab103019%_
                              (##fx+ (&raw-table-count _%tab103019%_) '1))))))
                    (if (eq? _%k103050%_ (macro-deleted-obj))
                        (_%loop103040%_
                         (let ((_%next-probe103057%_
                                (fx+ _%start103036%_
                                     _%i103045%_
                                     (fx* _%i103045%_ _%i103045%_))))
                           (##fxmodulo _%next-probe103057%_ _%size103030%_))
                         (##fx+ _%i103045%_ '1)
                         (let ((_%$e103060%_ _%deleted103047%_))
                           (if _%$e103060%_ _%$e103060%_ _%probe103043%_)))
                        (if (eqv? _%key103020%_ _%k103050%_)
                            (let ()
                              (vector-set!
                               _%table103024%_
                               _%probe103043%_
                               _%key103020%_)
                              (vector-set!
                               _%table103024%_
                               (##fx+ _%probe103043%_ '1)
                               (_%eqv-table-update!103021%_
                                (vector-ref
                                 _%table103024%_
                                 (##fx+ _%probe103043%_ '1)))))
                            (_%loop103040%_
                             (let ((_%next-probe103065%_
                                    (fx+ _%start103036%_
                                         _%i103045%_
                                         (fx* _%i103045%_ _%i103045%_))))
                               (##fxmodulo
                                _%next-probe103065%_
                                _%size103030%_))
                             (##fx+ _%i103045%_ '1)
                             _%deleted103047%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab103014%_
               _%key103015%_
               _%eqv-table-update!103016%_
               _%default103017%_)
        (if (##fx< (&raw-table-free _%tab103014%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103014%_))
                    '4))
            (__raw-table-rehash! _%tab103014%_)
            '#!void)
        (__eqv-table-update!
         _%tab103014%_
         _%key103015%_
         _%eqv-table-update!103016%_
         _%default103017%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab102985%_
               _%key102986%_
               _%eqv-table-update!102987%_
               _%default102988%_)
        (let ((_%lock102991%_ (&raw-table-lock _%tab102985%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102996%_ ((_%spin102999%_ '0))
              (if (##fx= (##vector-cas! _%lock102991%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102991%_ '1 (current-thread))
                  (if (##fx< _%spin102999%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102996%_ (##fx+ _%spin102999%_ '1)))
                      (let ((_%owner103005%_ (##vector-ref _%lock102991%_ '1)))
                        (if (eq? _%owner103005%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103005%_)
                                (let () (##thread-yield!) (_%again102996%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103011%_
                 (_%eqv-table-update!102987%_
                  _%tab102985%_
                  _%key102986%_
                  _%eqv-table-update!102987%_
                  _%default102988%_)))
            (##vector-set! _%lock102991%_ '1 '#f)
            (##vector-cas! _%lock102991%_ '0 '0 '1)
            _%$r103011%_))))
    (define eqv-table-delete!
      (lambda (_%tab102942%_ _%key102943%_)
        (let ((_%table102945%_ (&raw-table-table _%tab102942%_))
              (_%seed102947%_ (&raw-table-seed _%tab102942%_)))
          (let* ((_%h102950%_ (fxxor (eqv-hash _%key102943%_) _%seed102947%_))
                 (_%size102953%_ (vector-length _%table102945%_))
                 (_%entries102956%_ (##fxquotient _%size102953%_ '2))
                 (_%start102959%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102950%_ _%entries102956%_)
                   '1)))
            (let _%loop102963%_ ((_%probe102966%_ _%start102959%_)
                                 (_%i102968%_ '1))
              (let ((_%k102971%_ (vector-ref _%table102945%_ _%probe102966%_)))
                (if (eq? _%k102971%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102971%_ (macro-deleted-obj))
                        (_%loop102963%_
                         (let ((_%next-probe102976%_
                                (fx+ _%start102959%_
                                     _%i102968%_
                                     (fx* _%i102968%_ _%i102968%_))))
                           (##fxmodulo _%next-probe102976%_ _%size102953%_))
                         (##fx+ _%i102968%_ '1))
                        (if (eqv? _%key102943%_ _%k102971%_)
                            (let ()
                              (vector-set!
                               _%table102945%_
                               _%probe102966%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102945%_
                               (##fx+ _%probe102966%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102942%_
                                  (##fx- (&raw-table-count _%tab102942%_)
                                         '1)))))
                            (_%loop102963%_
                             (let ((_%next-probe102982%_
                                    (fx+ _%start102959%_
                                         _%i102968%_
                                         (fx* _%i102968%_ _%i102968%_))))
                               (##fxmodulo
                                _%next-probe102982%_
                                _%size102953%_))
                             (##fx+ _%i102968%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab102914%_ _%key102916%_)
        (let ((_%lock102919%_ (&raw-table-lock _%tab102914%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102924%_ ((_%spin102927%_ '0))
              (if (##fx= (##vector-cas! _%lock102919%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102919%_ '1 (current-thread))
                  (if (##fx< _%spin102927%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102924%_ (##fx+ _%spin102927%_ '1)))
                      (let ((_%owner102933%_ (##vector-ref _%lock102919%_ '1)))
                        (if (eq? _%owner102933%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102933%_)
                                (let () (##thread-yield!) (_%again102924%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102939%_ (eqv-table-delete! _%tab102914%_ _%key102916%_)))
            (##vector-set! _%lock102919%_ '1 '#f)
            (##vector-cas! _%lock102919%_ '0 '0 '1)
            _%$r102939%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint102896%_ _%seed102897%_)
        (make-raw-table__1
         _%size-hint102896%_
         symbolic-hash
         eq?
         _%seed102897%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint102903%_ '#f) (_%seed102905%_ '0))
          (make-symbolic-table__% _%size-hint102903%_ _%seed102905%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint102907%_)
        (let ((_%seed102909%_ '0))
          (make-symbolic-table__% _%size-hint102907%_ _%seed102909%_))))
    (define make-symbolic-table
      (lambda _g104199_
        (let ((_g104200_ (##length _g104199_)))
          (cond ((##fx= _g104200_ 0) (apply make-symbolic-table__0 _g104199_))
                ((##fx= _g104200_ 1) (apply make-symbolic-table__1 _g104199_))
                ((##fx= _g104200_ 2) (apply make-symbolic-table__% _g104199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g104199_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint102876%_ _%seed102878%_)
        (make-raw-table/lock__%
         _%size-hint102876%_
         symbolic-hash
         eq?
         _%seed102878%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint102884%_ '#f) (_%seed102886%_ '0))
          (make-symbolic-table/lock__% _%size-hint102884%_ _%seed102886%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint102888%_)
        (let ((_%seed102890%_ '0))
          (make-symbolic-table/lock__% _%size-hint102888%_ _%seed102890%_))))
    (define make-symbolic-table/lock
      (lambda _g104201_
        (let ((_g104202_ (##length _g104201_)))
          (cond ((##fx= _g104202_ 0)
                 (apply make-symbolic-table/lock__0 _g104201_))
                ((##fx= _g104202_ 1)
                 (apply make-symbolic-table/lock__1 _g104201_))
                ((##fx= _g104202_ 2)
                 (apply make-symbolic-table/lock__% _g104201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g104201_))))))
    (define symbolic-table-ref
      (lambda (_%tab102829%_ _%key102830%_ _%default102831%_)
        (let ((_%table102833%_ (&raw-table-table _%tab102829%_))
              (_%seed102834%_ (&raw-table-seed _%tab102829%_)))
          (let* ((_%h102836%_
                  (fxxor (##symbol-hash _%key102830%_) _%seed102834%_))
                 (_%size102839%_ (vector-length _%table102833%_))
                 (_%entries102842%_ (##fxquotient _%size102839%_ '2))
                 (_%start102845%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102836%_ _%entries102842%_)
                   '1)))
            (let _%loop102849%_ ((_%probe102852%_ _%start102845%_)
                                 (_%i102854%_ '1)
                                 (_%deleted102856%_ '#f))
              (let ((_%k102859%_ (vector-ref _%table102833%_ _%probe102852%_)))
                (if (eq? _%k102859%_ (macro-unused-obj))
                    _%default102831%_
                    (if (eq? _%k102859%_ (macro-deleted-obj))
                        (_%loop102849%_
                         (let ((_%next-probe102864%_
                                (fx+ _%start102845%_
                                     _%i102854%_
                                     (fx* _%i102854%_ _%i102854%_))))
                           (##fxmodulo _%next-probe102864%_ _%size102839%_))
                         (##fx+ _%i102854%_ '1)
                         (let ((_%$e102867%_ _%deleted102856%_))
                           (if _%$e102867%_ _%$e102867%_ _%probe102852%_)))
                        (if (eq? _%key102830%_ _%k102859%_)
                            (vector-ref
                             _%table102833%_
                             (##fx+ _%probe102852%_ '1))
                            (_%loop102849%_
                             (let ((_%next-probe102872%_
                                    (fx+ _%start102845%_
                                         _%i102854%_
                                         (fx* _%i102854%_ _%i102854%_))))
                               (##fxmodulo
                                _%next-probe102872%_
                                _%size102839%_))
                             (##fx+ _%i102854%_ '1)
                             _%deleted102856%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab102802%_ _%key102803%_ _%default102804%_)
        (let ((_%lock102806%_ (&raw-table-lock _%tab102802%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102811%_ ((_%spin102814%_ '0))
              (if (##fx= (##vector-cas! _%lock102806%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102806%_ '1 (current-thread))
                  (if (##fx< _%spin102814%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102811%_ (##fx+ _%spin102814%_ '1)))
                      (let ((_%owner102820%_ (##vector-ref _%lock102806%_ '1)))
                        (if (eq? _%owner102820%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102820%_)
                                (let () (##thread-yield!) (_%again102811%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102826%_
                 (symbolic-table-ref
                  _%tab102802%_
                  _%key102803%_
                  _%default102804%_)))
            (##vector-set! _%lock102806%_ '1 '#f)
            (##vector-cas! _%lock102806%_ '0 '0 '1)
            _%$r102826%_))))
    (define __symbolic-table-set!
      (lambda (_%tab102754%_ _%key102755%_ _%value102756%_)
        (let ((_%table102758%_ (&raw-table-table _%tab102754%_))
              (_%seed102759%_ (&raw-table-seed _%tab102754%_)))
          (let* ((_%h102761%_
                  (fxxor (##symbol-hash _%key102755%_) _%seed102759%_))
                 (_%size102764%_ (vector-length _%table102758%_))
                 (_%entries102767%_ (##fxquotient _%size102764%_ '2))
                 (_%start102770%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102761%_ _%entries102767%_)
                   '1)))
            (let _%loop102774%_ ((_%probe102777%_ _%start102770%_)
                                 (_%i102779%_ '1)
                                 (_%deleted102781%_ '#f))
              (let ((_%k102784%_ (vector-ref _%table102758%_ _%probe102777%_)))
                (if (eq? _%k102784%_ (macro-unused-obj))
                    (if _%deleted102781%_
                        (begin
                          (vector-set!
                           _%table102758%_
                           _%deleted102781%_
                           _%key102755%_)
                          (vector-set!
                           _%table102758%_
                           (##fx+ _%deleted102781%_ '1)
                           _%value102756%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102754%_
                              (##fx+ (&raw-table-count _%tab102754%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102758%_
                           _%probe102777%_
                           _%key102755%_)
                          (vector-set!
                           _%table102758%_
                           (##fx+ _%probe102777%_ '1)
                           _%value102756%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102754%_
                              (##fx- (&raw-table-free _%tab102754%_) '1))
                             (&raw-table-count-set!
                              _%tab102754%_
                              (##fx+ (&raw-table-count _%tab102754%_) '1))))))
                    (if (eq? _%k102784%_ (macro-deleted-obj))
                        (_%loop102774%_
                         (let ((_%next-probe102791%_
                                (fx+ _%start102770%_
                                     _%i102779%_
                                     (fx* _%i102779%_ _%i102779%_))))
                           (##fxmodulo _%next-probe102791%_ _%size102764%_))
                         (##fx+ _%i102779%_ '1)
                         (let ((_%$e102794%_ _%deleted102781%_))
                           (if _%$e102794%_ _%$e102794%_ _%probe102777%_)))
                        (if (eq? _%key102755%_ _%k102784%_)
                            (let ()
                              (vector-set!
                               _%table102758%_
                               _%probe102777%_
                               _%key102755%_)
                              (vector-set!
                               _%table102758%_
                               (##fx+ _%probe102777%_ '1)
                               _%value102756%_))
                            (_%loop102774%_
                             (let ((_%next-probe102799%_
                                    (fx+ _%start102770%_
                                         _%i102779%_
                                         (fx* _%i102779%_ _%i102779%_))))
                               (##fxmodulo
                                _%next-probe102799%_
                                _%size102764%_))
                             (##fx+ _%i102779%_ '1)
                             _%deleted102781%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab102750%_ _%key102751%_ _%value102752%_)
        (if (##fx< (&raw-table-free _%tab102750%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102750%_))
                    '4))
            (__raw-table-rehash! _%tab102750%_)
            '#!void)
        (__symbolic-table-set! _%tab102750%_ _%key102751%_ _%value102752%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab102722%_ _%key102723%_ _%value102724%_)
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
                            (if (macro-thread-end-condvar _%owner102741%_)
                                (let () (##thread-yield!) (_%again102732%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102747%_
                 (symbolic-table-set!
                  _%tab102722%_
                  _%key102723%_
                  _%value102724%_)))
            (##vector-set! _%lock102727%_ '1 '#f)
            (##vector-cas! _%lock102727%_ '0 '0 '1)
            _%$r102747%_))))
    (define __symbolic-table-update!
      (lambda (_%tab102673%_
               _%key102674%_
               _%symbolic-table-update!102675%_
               _%default102676%_)
        (let ((_%table102678%_ (&raw-table-table _%tab102673%_))
              (_%seed102679%_ (&raw-table-seed _%tab102673%_)))
          (let* ((_%h102681%_
                  (fxxor (##symbol-hash _%key102674%_) _%seed102679%_))
                 (_%size102684%_ (vector-length _%table102678%_))
                 (_%entries102687%_ (##fxquotient _%size102684%_ '2))
                 (_%start102690%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102681%_ _%entries102687%_)
                   '1)))
            (let _%loop102694%_ ((_%probe102697%_ _%start102690%_)
                                 (_%i102699%_ '1)
                                 (_%deleted102701%_ '#f))
              (let ((_%k102704%_ (vector-ref _%table102678%_ _%probe102697%_)))
                (if (eq? _%k102704%_ (macro-unused-obj))
                    (if _%deleted102701%_
                        (begin
                          (vector-set!
                           _%table102678%_
                           _%deleted102701%_
                           _%key102674%_)
                          (vector-set!
                           _%table102678%_
                           (##fx+ _%deleted102701%_ '1)
                           (_%symbolic-table-update!102675%_
                            _%default102676%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102673%_
                              (##fx+ (&raw-table-count _%tab102673%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102678%_
                           _%probe102697%_
                           _%key102674%_)
                          (vector-set!
                           _%table102678%_
                           (##fx+ _%probe102697%_ '1)
                           (_%symbolic-table-update!102675%_
                            _%default102676%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102673%_
                              (##fx- (&raw-table-free _%tab102673%_) '1))
                             (&raw-table-count-set!
                              _%tab102673%_
                              (##fx+ (&raw-table-count _%tab102673%_) '1))))))
                    (if (eq? _%k102704%_ (macro-deleted-obj))
                        (_%loop102694%_
                         (let ((_%next-probe102711%_
                                (fx+ _%start102690%_
                                     _%i102699%_
                                     (fx* _%i102699%_ _%i102699%_))))
                           (##fxmodulo _%next-probe102711%_ _%size102684%_))
                         (##fx+ _%i102699%_ '1)
                         (let ((_%$e102714%_ _%deleted102701%_))
                           (if _%$e102714%_ _%$e102714%_ _%probe102697%_)))
                        (if (eq? _%key102674%_ _%k102704%_)
                            (let ()
                              (vector-set!
                               _%table102678%_
                               _%probe102697%_
                               _%key102674%_)
                              (vector-set!
                               _%table102678%_
                               (##fx+ _%probe102697%_ '1)
                               (_%symbolic-table-update!102675%_
                                (vector-ref
                                 _%table102678%_
                                 (##fx+ _%probe102697%_ '1)))))
                            (_%loop102694%_
                             (let ((_%next-probe102719%_
                                    (fx+ _%start102690%_
                                         _%i102699%_
                                         (fx* _%i102699%_ _%i102699%_))))
                               (##fxmodulo
                                _%next-probe102719%_
                                _%size102684%_))
                             (##fx+ _%i102699%_ '1)
                             _%deleted102701%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab102668%_
               _%key102669%_
               _%symbolic-table-update!102670%_
               _%default102671%_)
        (if (##fx< (&raw-table-free _%tab102668%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102668%_))
                    '4))
            (__raw-table-rehash! _%tab102668%_)
            '#!void)
        (__symbolic-table-update!
         _%tab102668%_
         _%key102669%_
         _%symbolic-table-update!102670%_
         _%default102671%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab102639%_
               _%key102640%_
               _%symbolic-table-update!102641%_
               _%default102642%_)
        (let ((_%lock102645%_ (&raw-table-lock _%tab102639%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102650%_ ((_%spin102653%_ '0))
              (if (##fx= (##vector-cas! _%lock102645%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102645%_ '1 (current-thread))
                  (if (##fx< _%spin102653%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102650%_ (##fx+ _%spin102653%_ '1)))
                      (let ((_%owner102659%_ (##vector-ref _%lock102645%_ '1)))
                        (if (eq? _%owner102659%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102659%_)
                                (let () (##thread-yield!) (_%again102650%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102665%_
                 (_%symbolic-table-update!102641%_
                  _%tab102639%_
                  _%key102640%_
                  _%symbolic-table-update!102641%_
                  _%default102642%_)))
            (##vector-set! _%lock102645%_ '1 '#f)
            (##vector-cas! _%lock102645%_ '0 '0 '1)
            _%$r102665%_))))
    (define symbolic-table-delete!
      (lambda (_%tab102596%_ _%key102597%_)
        (let ((_%table102599%_ (&raw-table-table _%tab102596%_))
              (_%seed102601%_ (&raw-table-seed _%tab102596%_)))
          (let* ((_%h102604%_
                  (fxxor (##symbol-hash _%key102597%_) _%seed102601%_))
                 (_%size102607%_ (vector-length _%table102599%_))
                 (_%entries102610%_ (##fxquotient _%size102607%_ '2))
                 (_%start102613%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102604%_ _%entries102610%_)
                   '1)))
            (let _%loop102617%_ ((_%probe102620%_ _%start102613%_)
                                 (_%i102622%_ '1))
              (let ((_%k102625%_ (vector-ref _%table102599%_ _%probe102620%_)))
                (if (eq? _%k102625%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102625%_ (macro-deleted-obj))
                        (_%loop102617%_
                         (let ((_%next-probe102630%_
                                (fx+ _%start102613%_
                                     _%i102622%_
                                     (fx* _%i102622%_ _%i102622%_))))
                           (##fxmodulo _%next-probe102630%_ _%size102607%_))
                         (##fx+ _%i102622%_ '1))
                        (if (eq? _%key102597%_ _%k102625%_)
                            (let ()
                              (vector-set!
                               _%table102599%_
                               _%probe102620%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102599%_
                               (##fx+ _%probe102620%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102596%_
                                  (##fx- (&raw-table-count _%tab102596%_)
                                         '1)))))
                            (_%loop102617%_
                             (let ((_%next-probe102636%_
                                    (fx+ _%start102613%_
                                         _%i102622%_
                                         (fx* _%i102622%_ _%i102622%_))))
                               (##fxmodulo
                                _%next-probe102636%_
                                _%size102607%_))
                             (##fx+ _%i102622%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab102568%_ _%key102570%_)
        (let ((_%lock102573%_ (&raw-table-lock _%tab102568%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102578%_ ((_%spin102581%_ '0))
              (if (##fx= (##vector-cas! _%lock102573%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102573%_ '1 (current-thread))
                  (if (##fx< _%spin102581%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102578%_ (##fx+ _%spin102581%_ '1)))
                      (let ((_%owner102587%_ (##vector-ref _%lock102573%_ '1)))
                        (if (eq? _%owner102587%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102587%_)
                                (let () (##thread-yield!) (_%again102578%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102593%_
                 (symbolic-table-delete! _%tab102568%_ _%key102570%_)))
            (##vector-set! _%lock102573%_ '1 '#f)
            (##vector-cas! _%lock102573%_ '0 '0 '1)
            _%$r102593%_))))
    (define make-string-table__%
      (lambda (_%size-hint102550%_ _%seed102551%_)
        (make-raw-table__1
         _%size-hint102550%_
         string-hash
         ##string=?
         _%seed102551%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint102557%_ '#f) (_%seed102559%_ '0))
          (make-string-table__% _%size-hint102557%_ _%seed102559%_))))
    (define make-string-table__1
      (lambda (_%size-hint102561%_)
        (let ((_%seed102563%_ '0))
          (make-string-table__% _%size-hint102561%_ _%seed102563%_))))
    (define make-string-table
      (lambda _g104203_
        (let ((_g104204_ (##length _g104203_)))
          (cond ((##fx= _g104204_ 0) (apply make-string-table__0 _g104203_))
                ((##fx= _g104204_ 1) (apply make-string-table__1 _g104203_))
                ((##fx= _g104204_ 2) (apply make-string-table__% _g104203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g104203_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint102530%_ _%seed102532%_)
        (make-raw-table/lock__%
         _%size-hint102530%_
         string-hash
         ##string=?
         _%seed102532%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint102538%_ '#f) (_%seed102540%_ '0))
          (make-string-table/lock__% _%size-hint102538%_ _%seed102540%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint102542%_)
        (let ((_%seed102544%_ '0))
          (make-string-table/lock__% _%size-hint102542%_ _%seed102544%_))))
    (define make-string-table/lock
      (lambda _g104205_
        (let ((_g104206_ (##length _g104205_)))
          (cond ((##fx= _g104206_ 0)
                 (apply make-string-table/lock__0 _g104205_))
                ((##fx= _g104206_ 1)
                 (apply make-string-table/lock__1 _g104205_))
                ((##fx= _g104206_ 2)
                 (apply make-string-table/lock__% _g104205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g104205_))))))
    (define string-table-ref
      (lambda (_%tab102483%_ _%key102484%_ _%default102485%_)
        (let ((_%table102487%_ (&raw-table-table _%tab102483%_))
              (_%seed102488%_ (&raw-table-seed _%tab102483%_)))
          (let* ((_%h102490%_
                  (fxxor (##string=?-hash _%key102484%_) _%seed102488%_))
                 (_%size102493%_ (vector-length _%table102487%_))
                 (_%entries102496%_ (##fxquotient _%size102493%_ '2))
                 (_%start102499%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102490%_ _%entries102496%_)
                   '1)))
            (let _%loop102503%_ ((_%probe102506%_ _%start102499%_)
                                 (_%i102508%_ '1)
                                 (_%deleted102510%_ '#f))
              (let ((_%k102513%_ (vector-ref _%table102487%_ _%probe102506%_)))
                (if (eq? _%k102513%_ (macro-unused-obj))
                    _%default102485%_
                    (if (eq? _%k102513%_ (macro-deleted-obj))
                        (_%loop102503%_
                         (let ((_%next-probe102518%_
                                (fx+ _%start102499%_
                                     _%i102508%_
                                     (fx* _%i102508%_ _%i102508%_))))
                           (##fxmodulo _%next-probe102518%_ _%size102493%_))
                         (##fx+ _%i102508%_ '1)
                         (let ((_%$e102521%_ _%deleted102510%_))
                           (if _%$e102521%_ _%$e102521%_ _%probe102506%_)))
                        (if (##string=? _%key102484%_ _%k102513%_)
                            (vector-ref
                             _%table102487%_
                             (##fx+ _%probe102506%_ '1))
                            (_%loop102503%_
                             (let ((_%next-probe102526%_
                                    (fx+ _%start102499%_
                                         _%i102508%_
                                         (fx* _%i102508%_ _%i102508%_))))
                               (##fxmodulo
                                _%next-probe102526%_
                                _%size102493%_))
                             (##fx+ _%i102508%_ '1)
                             _%deleted102510%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab102456%_ _%key102457%_ _%default102458%_)
        (let ((_%lock102460%_ (&raw-table-lock _%tab102456%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102465%_ ((_%spin102468%_ '0))
              (if (##fx= (##vector-cas! _%lock102460%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102460%_ '1 (current-thread))
                  (if (##fx< _%spin102468%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102465%_ (##fx+ _%spin102468%_ '1)))
                      (let ((_%owner102474%_ (##vector-ref _%lock102460%_ '1)))
                        (if (eq? _%owner102474%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102474%_)
                                (let () (##thread-yield!) (_%again102465%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102480%_
                 (string-table-ref
                  _%tab102456%_
                  _%key102457%_
                  _%default102458%_)))
            (##vector-set! _%lock102460%_ '1 '#f)
            (##vector-cas! _%lock102460%_ '0 '0 '1)
            _%$r102480%_))))
    (define __string-table-set!
      (lambda (_%tab102408%_ _%key102409%_ _%value102410%_)
        (let ((_%table102412%_ (&raw-table-table _%tab102408%_))
              (_%seed102413%_ (&raw-table-seed _%tab102408%_)))
          (let* ((_%h102415%_
                  (fxxor (##string=?-hash _%key102409%_) _%seed102413%_))
                 (_%size102418%_ (vector-length _%table102412%_))
                 (_%entries102421%_ (##fxquotient _%size102418%_ '2))
                 (_%start102424%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102415%_ _%entries102421%_)
                   '1)))
            (let _%loop102428%_ ((_%probe102431%_ _%start102424%_)
                                 (_%i102433%_ '1)
                                 (_%deleted102435%_ '#f))
              (let ((_%k102438%_ (vector-ref _%table102412%_ _%probe102431%_)))
                (if (eq? _%k102438%_ (macro-unused-obj))
                    (if _%deleted102435%_
                        (begin
                          (vector-set!
                           _%table102412%_
                           _%deleted102435%_
                           _%key102409%_)
                          (vector-set!
                           _%table102412%_
                           (##fx+ _%deleted102435%_ '1)
                           _%value102410%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102408%_
                              (##fx+ (&raw-table-count _%tab102408%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102412%_
                           _%probe102431%_
                           _%key102409%_)
                          (vector-set!
                           _%table102412%_
                           (##fx+ _%probe102431%_ '1)
                           _%value102410%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102408%_
                              (##fx- (&raw-table-free _%tab102408%_) '1))
                             (&raw-table-count-set!
                              _%tab102408%_
                              (##fx+ (&raw-table-count _%tab102408%_) '1))))))
                    (if (eq? _%k102438%_ (macro-deleted-obj))
                        (_%loop102428%_
                         (let ((_%next-probe102445%_
                                (fx+ _%start102424%_
                                     _%i102433%_
                                     (fx* _%i102433%_ _%i102433%_))))
                           (##fxmodulo _%next-probe102445%_ _%size102418%_))
                         (##fx+ _%i102433%_ '1)
                         (let ((_%$e102448%_ _%deleted102435%_))
                           (if _%$e102448%_ _%$e102448%_ _%probe102431%_)))
                        (if (##string=? _%key102409%_ _%k102438%_)
                            (let ()
                              (vector-set!
                               _%table102412%_
                               _%probe102431%_
                               _%key102409%_)
                              (vector-set!
                               _%table102412%_
                               (##fx+ _%probe102431%_ '1)
                               _%value102410%_))
                            (_%loop102428%_
                             (let ((_%next-probe102453%_
                                    (fx+ _%start102424%_
                                         _%i102433%_
                                         (fx* _%i102433%_ _%i102433%_))))
                               (##fxmodulo
                                _%next-probe102453%_
                                _%size102418%_))
                             (##fx+ _%i102433%_ '1)
                             _%deleted102435%_))))))))))
    (define string-table-set!
      (lambda (_%tab102404%_ _%key102405%_ _%value102406%_)
        (if (##fx< (&raw-table-free _%tab102404%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102404%_))
                    '4))
            (__raw-table-rehash! _%tab102404%_)
            '#!void)
        (__string-table-set! _%tab102404%_ _%key102405%_ _%value102406%_)))
    (define string-table-set!/lock
      (lambda (_%tab102376%_ _%key102377%_ _%value102378%_)
        (let ((_%lock102381%_ (&raw-table-lock _%tab102376%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102386%_ ((_%spin102389%_ '0))
              (if (##fx= (##vector-cas! _%lock102381%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102381%_ '1 (current-thread))
                  (if (##fx< _%spin102389%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102386%_ (##fx+ _%spin102389%_ '1)))
                      (let ((_%owner102395%_ (##vector-ref _%lock102381%_ '1)))
                        (if (eq? _%owner102395%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102395%_)
                                (let () (##thread-yield!) (_%again102386%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102401%_
                 (string-table-set!
                  _%tab102376%_
                  _%key102377%_
                  _%value102378%_)))
            (##vector-set! _%lock102381%_ '1 '#f)
            (##vector-cas! _%lock102381%_ '0 '0 '1)
            _%$r102401%_))))
    (define __string-table-update!
      (lambda (_%tab102327%_
               _%key102328%_
               _%string-table-update!102329%_
               _%default102330%_)
        (let ((_%table102332%_ (&raw-table-table _%tab102327%_))
              (_%seed102333%_ (&raw-table-seed _%tab102327%_)))
          (let* ((_%h102335%_
                  (fxxor (##string=?-hash _%key102328%_) _%seed102333%_))
                 (_%size102338%_ (vector-length _%table102332%_))
                 (_%entries102341%_ (##fxquotient _%size102338%_ '2))
                 (_%start102344%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102335%_ _%entries102341%_)
                   '1)))
            (let _%loop102348%_ ((_%probe102351%_ _%start102344%_)
                                 (_%i102353%_ '1)
                                 (_%deleted102355%_ '#f))
              (let ((_%k102358%_ (vector-ref _%table102332%_ _%probe102351%_)))
                (if (eq? _%k102358%_ (macro-unused-obj))
                    (if _%deleted102355%_
                        (begin
                          (vector-set!
                           _%table102332%_
                           _%deleted102355%_
                           _%key102328%_)
                          (vector-set!
                           _%table102332%_
                           (##fx+ _%deleted102355%_ '1)
                           (_%string-table-update!102329%_ _%default102330%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102327%_
                              (##fx+ (&raw-table-count _%tab102327%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102332%_
                           _%probe102351%_
                           _%key102328%_)
                          (vector-set!
                           _%table102332%_
                           (##fx+ _%probe102351%_ '1)
                           (_%string-table-update!102329%_ _%default102330%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102327%_
                              (##fx- (&raw-table-free _%tab102327%_) '1))
                             (&raw-table-count-set!
                              _%tab102327%_
                              (##fx+ (&raw-table-count _%tab102327%_) '1))))))
                    (if (eq? _%k102358%_ (macro-deleted-obj))
                        (_%loop102348%_
                         (let ((_%next-probe102365%_
                                (fx+ _%start102344%_
                                     _%i102353%_
                                     (fx* _%i102353%_ _%i102353%_))))
                           (##fxmodulo _%next-probe102365%_ _%size102338%_))
                         (##fx+ _%i102353%_ '1)
                         (let ((_%$e102368%_ _%deleted102355%_))
                           (if _%$e102368%_ _%$e102368%_ _%probe102351%_)))
                        (if (##string=? _%key102328%_ _%k102358%_)
                            (let ()
                              (vector-set!
                               _%table102332%_
                               _%probe102351%_
                               _%key102328%_)
                              (vector-set!
                               _%table102332%_
                               (##fx+ _%probe102351%_ '1)
                               (_%string-table-update!102329%_
                                (vector-ref
                                 _%table102332%_
                                 (##fx+ _%probe102351%_ '1)))))
                            (_%loop102348%_
                             (let ((_%next-probe102373%_
                                    (fx+ _%start102344%_
                                         _%i102353%_
                                         (fx* _%i102353%_ _%i102353%_))))
                               (##fxmodulo
                                _%next-probe102373%_
                                _%size102338%_))
                             (##fx+ _%i102353%_ '1)
                             _%deleted102355%_))))))))))
    (define string-table-update!
      (lambda (_%tab102322%_
               _%key102323%_
               _%string-table-update!102324%_
               _%default102325%_)
        (if (##fx< (&raw-table-free _%tab102322%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102322%_))
                    '4))
            (__raw-table-rehash! _%tab102322%_)
            '#!void)
        (__string-table-update!
         _%tab102322%_
         _%key102323%_
         _%string-table-update!102324%_
         _%default102325%_)))
    (define string-table-update!/lock
      (lambda (_%tab102293%_
               _%key102294%_
               _%string-table-update!102295%_
               _%default102296%_)
        (let ((_%lock102299%_ (&raw-table-lock _%tab102293%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102304%_ ((_%spin102307%_ '0))
              (if (##fx= (##vector-cas! _%lock102299%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102299%_ '1 (current-thread))
                  (if (##fx< _%spin102307%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102304%_ (##fx+ _%spin102307%_ '1)))
                      (let ((_%owner102313%_ (##vector-ref _%lock102299%_ '1)))
                        (if (eq? _%owner102313%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102313%_)
                                (let () (##thread-yield!) (_%again102304%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102319%_
                 (_%string-table-update!102295%_
                  _%tab102293%_
                  _%key102294%_
                  _%string-table-update!102295%_
                  _%default102296%_)))
            (##vector-set! _%lock102299%_ '1 '#f)
            (##vector-cas! _%lock102299%_ '0 '0 '1)
            _%$r102319%_))))
    (define string-table-delete!
      (lambda (_%tab102250%_ _%key102251%_)
        (let ((_%table102253%_ (&raw-table-table _%tab102250%_))
              (_%seed102255%_ (&raw-table-seed _%tab102250%_)))
          (let* ((_%h102258%_
                  (fxxor (##string=?-hash _%key102251%_) _%seed102255%_))
                 (_%size102261%_ (vector-length _%table102253%_))
                 (_%entries102264%_ (##fxquotient _%size102261%_ '2))
                 (_%start102267%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102258%_ _%entries102264%_)
                   '1)))
            (let _%loop102271%_ ((_%probe102274%_ _%start102267%_)
                                 (_%i102276%_ '1))
              (let ((_%k102279%_ (vector-ref _%table102253%_ _%probe102274%_)))
                (if (eq? _%k102279%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102279%_ (macro-deleted-obj))
                        (_%loop102271%_
                         (let ((_%next-probe102284%_
                                (fx+ _%start102267%_
                                     _%i102276%_
                                     (fx* _%i102276%_ _%i102276%_))))
                           (##fxmodulo _%next-probe102284%_ _%size102261%_))
                         (##fx+ _%i102276%_ '1))
                        (if (##string=? _%key102251%_ _%k102279%_)
                            (let ()
                              (vector-set!
                               _%table102253%_
                               _%probe102274%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102253%_
                               (##fx+ _%probe102274%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102250%_
                                  (##fx- (&raw-table-count _%tab102250%_)
                                         '1)))))
                            (_%loop102271%_
                             (let ((_%next-probe102290%_
                                    (fx+ _%start102267%_
                                         _%i102276%_
                                         (fx* _%i102276%_ _%i102276%_))))
                               (##fxmodulo
                                _%next-probe102290%_
                                _%size102261%_))
                             (##fx+ _%i102276%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab102222%_ _%key102224%_)
        (let ((_%lock102227%_ (&raw-table-lock _%tab102222%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102232%_ ((_%spin102235%_ '0))
              (if (##fx= (##vector-cas! _%lock102227%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102227%_ '1 (current-thread))
                  (if (##fx< _%spin102235%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102232%_ (##fx+ _%spin102235%_ '1)))
                      (let ((_%owner102241%_ (##vector-ref _%lock102227%_ '1)))
                        (if (eq? _%owner102241%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102241%_)
                                (let () (##thread-yield!) (_%again102232%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102247%_
                 (string-table-delete! _%tab102222%_ _%key102224%_)))
            (##vector-set! _%lock102227%_ '1 '#f)
            (##vector-cas! _%lock102227%_ '0 '0 '1)
            _%$r102247%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint102204%_ _%seed102205%_)
        (make-raw-table__1
         _%size-hint102204%_
         immediate-hash
         eq?
         _%seed102205%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint102211%_ '#f) (_%seed102213%_ '0))
          (make-immediate-table__% _%size-hint102211%_ _%seed102213%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint102215%_)
        (let ((_%seed102217%_ '0))
          (make-immediate-table__% _%size-hint102215%_ _%seed102217%_))))
    (define make-immediate-table
      (lambda _g104207_
        (let ((_g104208_ (##length _g104207_)))
          (cond ((##fx= _g104208_ 0) (apply make-immediate-table__0 _g104207_))
                ((##fx= _g104208_ 1) (apply make-immediate-table__1 _g104207_))
                ((##fx= _g104208_ 2) (apply make-immediate-table__% _g104207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g104207_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint102184%_ _%seed102186%_)
        (make-raw-table/lock__%
         _%size-hint102184%_
         immediate-hash
         eq?
         _%seed102186%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint102192%_ '#f) (_%seed102194%_ '0))
          (make-immediate-table/lock__% _%size-hint102192%_ _%seed102194%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint102196%_)
        (let ((_%seed102198%_ '0))
          (make-immediate-table/lock__% _%size-hint102196%_ _%seed102198%_))))
    (define make-immediate-table/lock
      (lambda _g104209_
        (let ((_g104210_ (##length _g104209_)))
          (cond ((##fx= _g104210_ 0)
                 (apply make-immediate-table/lock__0 _g104209_))
                ((##fx= _g104210_ 1)
                 (apply make-immediate-table/lock__1 _g104209_))
                ((##fx= _g104210_ 2)
                 (apply make-immediate-table/lock__% _g104209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g104209_))))))
    (define immediate-table-ref
      (lambda (_%tab102137%_ _%key102138%_ _%default102139%_)
        (let ((_%table102141%_ (&raw-table-table _%tab102137%_))
              (_%seed102142%_ (&raw-table-seed _%tab102137%_)))
          (let* ((_%h102144%_
                  (fxxor (immediate-hash _%key102138%_) _%seed102142%_))
                 (_%size102147%_ (vector-length _%table102141%_))
                 (_%entries102150%_ (##fxquotient _%size102147%_ '2))
                 (_%start102153%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102144%_ _%entries102150%_)
                   '1)))
            (let _%loop102157%_ ((_%probe102160%_ _%start102153%_)
                                 (_%i102162%_ '1)
                                 (_%deleted102164%_ '#f))
              (let ((_%k102167%_ (vector-ref _%table102141%_ _%probe102160%_)))
                (if (eq? _%k102167%_ (macro-unused-obj))
                    _%default102139%_
                    (if (eq? _%k102167%_ (macro-deleted-obj))
                        (_%loop102157%_
                         (let ((_%next-probe102172%_
                                (fx+ _%start102153%_
                                     _%i102162%_
                                     (fx* _%i102162%_ _%i102162%_))))
                           (##fxmodulo _%next-probe102172%_ _%size102147%_))
                         (##fx+ _%i102162%_ '1)
                         (let ((_%$e102175%_ _%deleted102164%_))
                           (if _%$e102175%_ _%$e102175%_ _%probe102160%_)))
                        (if (eq? _%key102138%_ _%k102167%_)
                            (vector-ref
                             _%table102141%_
                             (##fx+ _%probe102160%_ '1))
                            (_%loop102157%_
                             (let ((_%next-probe102180%_
                                    (fx+ _%start102153%_
                                         _%i102162%_
                                         (fx* _%i102162%_ _%i102162%_))))
                               (##fxmodulo
                                _%next-probe102180%_
                                _%size102147%_))
                             (##fx+ _%i102162%_ '1)
                             _%deleted102164%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab102110%_ _%key102111%_ _%default102112%_)
        (let ((_%lock102114%_ (&raw-table-lock _%tab102110%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102119%_ ((_%spin102122%_ '0))
              (if (##fx= (##vector-cas! _%lock102114%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102114%_ '1 (current-thread))
                  (if (##fx< _%spin102122%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102119%_ (##fx+ _%spin102122%_ '1)))
                      (let ((_%owner102128%_ (##vector-ref _%lock102114%_ '1)))
                        (if (eq? _%owner102128%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102128%_)
                                (let () (##thread-yield!) (_%again102119%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102134%_
                 (immediate-table-ref
                  _%tab102110%_
                  _%key102111%_
                  _%default102112%_)))
            (##vector-set! _%lock102114%_ '1 '#f)
            (##vector-cas! _%lock102114%_ '0 '0 '1)
            _%$r102134%_))))
    (define __immediate-table-set!
      (lambda (_%tab102062%_ _%key102063%_ _%value102064%_)
        (let ((_%table102066%_ (&raw-table-table _%tab102062%_))
              (_%seed102067%_ (&raw-table-seed _%tab102062%_)))
          (let* ((_%h102069%_
                  (fxxor (immediate-hash _%key102063%_) _%seed102067%_))
                 (_%size102072%_ (vector-length _%table102066%_))
                 (_%entries102075%_ (##fxquotient _%size102072%_ '2))
                 (_%start102078%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102069%_ _%entries102075%_)
                   '1)))
            (let _%loop102082%_ ((_%probe102085%_ _%start102078%_)
                                 (_%i102087%_ '1)
                                 (_%deleted102089%_ '#f))
              (let ((_%k102092%_ (vector-ref _%table102066%_ _%probe102085%_)))
                (if (eq? _%k102092%_ (macro-unused-obj))
                    (if _%deleted102089%_
                        (begin
                          (vector-set!
                           _%table102066%_
                           _%deleted102089%_
                           _%key102063%_)
                          (vector-set!
                           _%table102066%_
                           (##fx+ _%deleted102089%_ '1)
                           _%value102064%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102062%_
                              (##fx+ (&raw-table-count _%tab102062%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102066%_
                           _%probe102085%_
                           _%key102063%_)
                          (vector-set!
                           _%table102066%_
                           (##fx+ _%probe102085%_ '1)
                           _%value102064%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102062%_
                              (##fx- (&raw-table-free _%tab102062%_) '1))
                             (&raw-table-count-set!
                              _%tab102062%_
                              (##fx+ (&raw-table-count _%tab102062%_) '1))))))
                    (if (eq? _%k102092%_ (macro-deleted-obj))
                        (_%loop102082%_
                         (let ((_%next-probe102099%_
                                (fx+ _%start102078%_
                                     _%i102087%_
                                     (fx* _%i102087%_ _%i102087%_))))
                           (##fxmodulo _%next-probe102099%_ _%size102072%_))
                         (##fx+ _%i102087%_ '1)
                         (let ((_%$e102102%_ _%deleted102089%_))
                           (if _%$e102102%_ _%$e102102%_ _%probe102085%_)))
                        (if (eq? _%key102063%_ _%k102092%_)
                            (let ()
                              (vector-set!
                               _%table102066%_
                               _%probe102085%_
                               _%key102063%_)
                              (vector-set!
                               _%table102066%_
                               (##fx+ _%probe102085%_ '1)
                               _%value102064%_))
                            (_%loop102082%_
                             (let ((_%next-probe102107%_
                                    (fx+ _%start102078%_
                                         _%i102087%_
                                         (fx* _%i102087%_ _%i102087%_))))
                               (##fxmodulo
                                _%next-probe102107%_
                                _%size102072%_))
                             (##fx+ _%i102087%_ '1)
                             _%deleted102089%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab102058%_ _%key102059%_ _%value102060%_)
        (if (##fx< (&raw-table-free _%tab102058%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102058%_))
                    '4))
            (__raw-table-rehash! _%tab102058%_)
            '#!void)
        (__immediate-table-set! _%tab102058%_ _%key102059%_ _%value102060%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab102030%_ _%key102031%_ _%value102032%_)
        (let ((_%lock102035%_ (&raw-table-lock _%tab102030%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102040%_ ((_%spin102043%_ '0))
              (if (##fx= (##vector-cas! _%lock102035%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102035%_ '1 (current-thread))
                  (if (##fx< _%spin102043%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102040%_ (##fx+ _%spin102043%_ '1)))
                      (let ((_%owner102049%_ (##vector-ref _%lock102035%_ '1)))
                        (if (eq? _%owner102049%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102049%_)
                                (let () (##thread-yield!) (_%again102040%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102055%_
                 (immediate-table-set!
                  _%tab102030%_
                  _%key102031%_
                  _%value102032%_)))
            (##vector-set! _%lock102035%_ '1 '#f)
            (##vector-cas! _%lock102035%_ '0 '0 '1)
            _%$r102055%_))))
    (define __immediate-table-update!
      (lambda (_%tab101981%_
               _%key101982%_
               _%immediate-table-update!101983%_
               _%default101984%_)
        (let ((_%table101986%_ (&raw-table-table _%tab101981%_))
              (_%seed101987%_ (&raw-table-seed _%tab101981%_)))
          (let* ((_%h101989%_
                  (fxxor (immediate-hash _%key101982%_) _%seed101987%_))
                 (_%size101992%_ (vector-length _%table101986%_))
                 (_%entries101995%_ (##fxquotient _%size101992%_ '2))
                 (_%start101998%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101989%_ _%entries101995%_)
                   '1)))
            (let _%loop102002%_ ((_%probe102005%_ _%start101998%_)
                                 (_%i102007%_ '1)
                                 (_%deleted102009%_ '#f))
              (let ((_%k102012%_ (vector-ref _%table101986%_ _%probe102005%_)))
                (if (eq? _%k102012%_ (macro-unused-obj))
                    (if _%deleted102009%_
                        (begin
                          (vector-set!
                           _%table101986%_
                           _%deleted102009%_
                           _%key101982%_)
                          (vector-set!
                           _%table101986%_
                           (##fx+ _%deleted102009%_ '1)
                           (_%immediate-table-update!101983%_
                            _%default101984%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101981%_
                              (##fx+ (&raw-table-count _%tab101981%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101986%_
                           _%probe102005%_
                           _%key101982%_)
                          (vector-set!
                           _%table101986%_
                           (##fx+ _%probe102005%_ '1)
                           (_%immediate-table-update!101983%_
                            _%default101984%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101981%_
                              (##fx- (&raw-table-free _%tab101981%_) '1))
                             (&raw-table-count-set!
                              _%tab101981%_
                              (##fx+ (&raw-table-count _%tab101981%_) '1))))))
                    (if (eq? _%k102012%_ (macro-deleted-obj))
                        (_%loop102002%_
                         (let ((_%next-probe102019%_
                                (fx+ _%start101998%_
                                     _%i102007%_
                                     (fx* _%i102007%_ _%i102007%_))))
                           (##fxmodulo _%next-probe102019%_ _%size101992%_))
                         (##fx+ _%i102007%_ '1)
                         (let ((_%$e102022%_ _%deleted102009%_))
                           (if _%$e102022%_ _%$e102022%_ _%probe102005%_)))
                        (if (eq? _%key101982%_ _%k102012%_)
                            (let ()
                              (vector-set!
                               _%table101986%_
                               _%probe102005%_
                               _%key101982%_)
                              (vector-set!
                               _%table101986%_
                               (##fx+ _%probe102005%_ '1)
                               (_%immediate-table-update!101983%_
                                (vector-ref
                                 _%table101986%_
                                 (##fx+ _%probe102005%_ '1)))))
                            (_%loop102002%_
                             (let ((_%next-probe102027%_
                                    (fx+ _%start101998%_
                                         _%i102007%_
                                         (fx* _%i102007%_ _%i102007%_))))
                               (##fxmodulo
                                _%next-probe102027%_
                                _%size101992%_))
                             (##fx+ _%i102007%_ '1)
                             _%deleted102009%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab101976%_
               _%key101977%_
               _%immediate-table-update!101978%_
               _%default101979%_)
        (if (##fx< (&raw-table-free _%tab101976%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101976%_))
                    '4))
            (__raw-table-rehash! _%tab101976%_)
            '#!void)
        (__immediate-table-update!
         _%tab101976%_
         _%key101977%_
         _%immediate-table-update!101978%_
         _%default101979%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab101947%_
               _%key101948%_
               _%immediate-table-update!101949%_
               _%default101950%_)
        (let ((_%lock101953%_ (&raw-table-lock _%tab101947%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101958%_ ((_%spin101961%_ '0))
              (if (##fx= (##vector-cas! _%lock101953%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101953%_ '1 (current-thread))
                  (if (##fx< _%spin101961%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101958%_ (##fx+ _%spin101961%_ '1)))
                      (let ((_%owner101967%_ (##vector-ref _%lock101953%_ '1)))
                        (if (eq? _%owner101967%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101967%_)
                                (let () (##thread-yield!) (_%again101958%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101973%_
                 (_%immediate-table-update!101949%_
                  _%tab101947%_
                  _%key101948%_
                  _%immediate-table-update!101949%_
                  _%default101950%_)))
            (##vector-set! _%lock101953%_ '1 '#f)
            (##vector-cas! _%lock101953%_ '0 '0 '1)
            _%$r101973%_))))
    (define immediate-table-delete!
      (lambda (_%tab101904%_ _%key101905%_)
        (let ((_%table101907%_ (&raw-table-table _%tab101904%_))
              (_%seed101909%_ (&raw-table-seed _%tab101904%_)))
          (let* ((_%h101912%_
                  (fxxor (immediate-hash _%key101905%_) _%seed101909%_))
                 (_%size101915%_ (vector-length _%table101907%_))
                 (_%entries101918%_ (##fxquotient _%size101915%_ '2))
                 (_%start101921%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101912%_ _%entries101918%_)
                   '1)))
            (let _%loop101925%_ ((_%probe101928%_ _%start101921%_)
                                 (_%i101930%_ '1))
              (let ((_%k101933%_ (vector-ref _%table101907%_ _%probe101928%_)))
                (if (eq? _%k101933%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101933%_ (macro-deleted-obj))
                        (_%loop101925%_
                         (let ((_%next-probe101938%_
                                (fx+ _%start101921%_
                                     _%i101930%_
                                     (fx* _%i101930%_ _%i101930%_))))
                           (##fxmodulo _%next-probe101938%_ _%size101915%_))
                         (##fx+ _%i101930%_ '1))
                        (if (eq? _%key101905%_ _%k101933%_)
                            (let ()
                              (vector-set!
                               _%table101907%_
                               _%probe101928%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101907%_
                               (##fx+ _%probe101928%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101904%_
                                  (##fx- (&raw-table-count _%tab101904%_)
                                         '1)))))
                            (_%loop101925%_
                             (let ((_%next-probe101944%_
                                    (fx+ _%start101921%_
                                         _%i101930%_
                                         (fx* _%i101930%_ _%i101930%_))))
                               (##fxmodulo
                                _%next-probe101944%_
                                _%size101915%_))
                             (##fx+ _%i101930%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab101876%_ _%key101878%_)
        (let ((_%lock101881%_ (&raw-table-lock _%tab101876%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101886%_ ((_%spin101889%_ '0))
              (if (##fx= (##vector-cas! _%lock101881%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101881%_ '1 (current-thread))
                  (if (##fx< _%spin101889%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101886%_ (##fx+ _%spin101889%_ '1)))
                      (let ((_%owner101895%_ (##vector-ref _%lock101881%_ '1)))
                        (if (eq? _%owner101895%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101895%_)
                                (let () (##thread-yield!) (_%again101886%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101901%_
                 (immediate-table-delete! _%tab101876%_ _%key101878%_)))
            (##vector-set! _%lock101881%_ '1 '#f)
            (##vector-cas! _%lock101881%_ '0 '0 '1)
            _%$r101901%_))))
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
      (lambda (_%tab101874%_)
        (##unchecked-structure-ref
         _%tab101874%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab101872%_)
        (##unchecked-structure-ref
         _%tab101872%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab101870%_)
        (##unchecked-structure-ref
         _%tab101870%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab101867%_ _%val101868%_)
        (##unchecked-structure-set!
         _%tab101867%_
         _%val101868%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab101864%_ _%val101865%_)
        (##unchecked-structure-set!
         _%tab101864%_
         _%val101865%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab101861%_ _%val101862%_)
        (##unchecked-structure-set!
         _%tab101861%_
         _%val101862%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint101825%_
               _%klass101826%_
               _%flags101827%_
               _%lock101828%_)
        (let ((_%gcht101830%_
               (__gc-table-new
                (if (fixnum? _%size-hint101825%_) _%size-hint101825%_ '16)
                _%flags101827%_)))
          (##structure _%klass101826%_ _%gcht101830%_ '#f _%lock101828%_))))
    (define make-gc-table__0
      (lambda (_%size-hint101835%_)
        (let* ((_%klass101837%_ __gc-table::t)
               (_%flags101839%_ '0)
               (_%lock101841%_ '#f))
          (make-gc-table__%
           _%size-hint101835%_
           _%klass101837%_
           _%flags101839%_
           _%lock101841%_))))
    (define make-gc-table__1
      (lambda (_%size-hint101843%_ _%klass101844%_)
        (let* ((_%flags101846%_ '0) (_%lock101848%_ '#f))
          (make-gc-table__%
           _%size-hint101843%_
           _%klass101844%_
           _%flags101846%_
           _%lock101848%_))))
    (define make-gc-table__2
      (lambda (_%size-hint101850%_ _%klass101851%_ _%flags101852%_)
        (let ((_%lock101854%_ '#f))
          (make-gc-table__%
           _%size-hint101850%_
           _%klass101851%_
           _%flags101852%_
           _%lock101854%_))))
    (define make-gc-table
      (lambda _g104211_
        (let ((_g104212_ (##length _g104211_)))
          (cond ((##fx= _g104212_ 1) (apply make-gc-table__0 _g104211_))
                ((##fx= _g104212_ 2) (apply make-gc-table__1 _g104211_))
                ((##fx= _g104212_ 3) (apply make-gc-table__2 _g104211_))
                ((##fx= _g104212_ 4) (apply make-gc-table__% _g104211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g104211_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint101802%_ _%klass101803%_ _%flags101804%_)
        (make-gc-table__%
         _%size-hint101802%_
         _%klass101803%_
         _%flags101804%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint101809%_)
        (let* ((_%klass101811%_ __gc-table::t) (_%flags101813%_ '0))
          (make-gc-table/lock__%
           _%size-hint101809%_
           _%klass101811%_
           _%flags101813%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint101815%_ _%klass101816%_)
        (let ((_%flags101818%_ '0))
          (make-gc-table/lock__%
           _%size-hint101815%_
           _%klass101816%_
           _%flags101818%_))))
    (define make-gc-table/lock
      (lambda _g104213_
        (let ((_g104214_ (##length _g104213_)))
          (cond ((##fx= _g104214_ 1) (apply make-gc-table/lock__0 _g104213_))
                ((##fx= _g104214_ 2) (apply make-gc-table/lock__1 _g104213_))
                ((##fx= _g104214_ 3) (apply make-gc-table/lock__% _g104213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g104213_))))))
    (define __gc-table-immediate
      (lambda (_%tab101793%_)
        (let ((_%$e101795%_ (&gc-table-immediate _%tab101793%_)))
          (if _%$e101795%_
              _%$e101795%_
              (let ((_%immediate101799%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab101793%_ _%immediate101799%_)
                _%immediate101799%_)))))
    (define __gc-table-new
      (lambda (_%size101783%_ _%flags101784%_)
        (let* ((_%flags101786%_
                (##fxand _%flags101784%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags101788%_
                (fxior _%flags101786%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht101790%_
                (##gc-hash-table-allocate
                 _%size101783%_
                 _%flags101788%_
                 __gc-table-loads)))
          _%gcht101790%_)))
    (define __gc-table-e
      (lambda (_%tab101778%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht101781%_ (&gc-table-gcht _%tab101778%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht101781%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht101781%_
              (begin
                (__gc-table-rehash! _%tab101778%_)
                (&gc-table-gcht _%tab101778%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab101769%_)
        (let* ((_%old-table101771%_ (&gc-table-gcht _%tab101769%_))
               (_%new-table101773%_
                (##gc-hash-table-resize! _%old-table101771%_ __gc-table-loads))
               (_%gcht101775%_
                (##gc-hash-table-rehash!
                 _%old-table101771%_
                 _%new-table101773%_)))
          (&gc-table-gcht-set! _%tab101769%_ _%gcht101775%_))))
    (define gc-table-ref
      (lambda (_%tab101753%_ _%key101754%_ _%default101755%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101754%_)
            (let* ((_%gcht101759%_ (__gc-table-e _%tab101753%_))
                   (_%value101761%_
                    (##gc-hash-table-ref _%gcht101759%_ _%key101754%_)))
              (if (eq? _%value101761%_ (macro-unused-obj))
                  _%default101755%_
                  _%value101761%_))
            (let ((_%$e101763%_ (&gc-table-immediate _%tab101753%_)))
              (if _%$e101763%_
                  ((lambda (_%immediate101766%_)
                     (immediate-table-ref
                      _%immediate101766%_
                      _%key101754%_
                      _%default101755%_))
                   _%$e101763%_)
                  _%default101755%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab101729%_ _%key101730%_ _%default101731%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101735%_ ((_%spin101738%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101729%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101729%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101738%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101735%_ (##fx+ _%spin101738%_ '1)))
                    (let ((_%owner101744%_
                           (##vector-ref (&gc-table-lock _%tab101729%_) '1)))
                      (if (eq? _%owner101744%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101744%_)
                              (let () (##thread-yield!) (_%again101735%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101750%_
               (gc-table-ref _%tab101729%_ _%key101730%_ _%default101731%_)))
          (##vector-set! (&gc-table-lock _%tab101729%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101729%_) '0 '0 '1)
          _%$r101750%_)))
    (define gc-table-set!
      (lambda (_%tab101722%_ _%key101723%_ _%value101724%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101723%_)
            (let ((_%gcht101727%_ (__gc-table-e _%tab101722%_)))
              (if (##gc-hash-table-set!
                   _%gcht101727%_
                   _%key101723%_
                   _%value101724%_)
                  (begin
                    (__gc-table-rehash! _%tab101722%_)
                    (gc-table-set!
                     _%tab101722%_
                     _%key101723%_
                     _%value101724%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab101722%_)
             _%key101723%_
             _%value101724%_))))
    (define gc-table-set/lock!
      (lambda (_%tab101698%_ _%key101699%_ _%value101700%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101704%_ ((_%spin101707%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101698%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101698%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101707%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101704%_ (##fx+ _%spin101707%_ '1)))
                    (let ((_%owner101713%_
                           (##vector-ref (&gc-table-lock _%tab101698%_) '1)))
                      (if (eq? _%owner101713%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101713%_)
                              (let () (##thread-yield!) (_%again101704%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101719%_
               (gc-table-set! _%tab101698%_ _%key101699%_ _%value101700%_)))
          (##vector-set! (&gc-table-lock _%tab101698%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101698%_) '0 '0 '1)
          _%$r101719%_)))
    (define gc-table-update!
      (lambda (_%tab101691%_ _%key101692%_ _%update101693%_ _%default101694%_)
        (if (##mem-allocated? _%key101692%_)
            (let ((_%value101696%_
                   (gc-table-ref
                    _%tab101691%_
                    _%key101692%_
                    _%default101694%_)))
              (gc-table-set!
               _%tab101691%_
               _%key101692%_
               (_%update101693%_ _%value101696%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab101691%_)
             _%key101692%_
             _%update101693%_
             _%default101694%_))))
    (define gc-table-update!/lock
      (lambda (_%tab101666%_ _%key101667%_ _%update101668%_ _%default101669%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101673%_ ((_%spin101676%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101666%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101666%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101676%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101673%_ (##fx+ _%spin101676%_ '1)))
                    (let ((_%owner101682%_
                           (##vector-ref (&gc-table-lock _%tab101666%_) '1)))
                      (if (eq? _%owner101682%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101682%_)
                              (let () (##thread-yield!) (_%again101673%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101688%_
               (gc-table-update!
                _%tab101666%_
                _%key101667%_
                _%update101668%_
                _%default101669%_)))
          (##vector-set! (&gc-table-lock _%tab101666%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101666%_) '0 '0 '1)
          _%$r101688%_)))
    (define gc-table-delete!
      (lambda (_%tab101654%_ _%key101655%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101655%_)
            (let ((_%gcht101659%_ (__gc-table-e _%tab101654%_)))
              (if (##gc-hash-table-set!
                   _%gcht101659%_
                   _%key101655%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab101654%_)
                    (gc-table-delete! _%tab101654%_ _%key101655%_))
                  '#!void))
            (let ((_%$e101661%_ (&gc-table-immediate _%tab101654%_)))
              (if _%$e101661%_
                  ((lambda (_%immediate101664%_)
                     (immediate-table-delete!
                      _%immediate101664%_
                      _%key101655%_))
                   _%$e101661%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab101631%_ _%key101632%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101636%_ ((_%spin101639%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101631%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101631%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101639%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101636%_ (##fx+ _%spin101639%_ '1)))
                    (let ((_%owner101645%_
                           (##vector-ref (&gc-table-lock _%tab101631%_) '1)))
                      (if (eq? _%owner101645%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101645%_)
                              (let () (##thread-yield!) (_%again101636%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101651%_ (gc-table-delete! _%tab101631%_ _%key101632%_)))
          (##vector-set! (&gc-table-lock _%tab101631%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101631%_) '0 '0 '1)
          _%$r101651%_)))
    (define gc-table-for-each
      (lambda (_%tab101620%_ _%proc101621%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht101624%_ (__gc-table-e _%tab101620%_)))
            (##gc-hash-table-for-each _%proc101621%_ _%gcht101624%_))
          (let ((_%$e101626%_ (&gc-table-immediate _%tab101620%_)))
            (if _%$e101626%_
                ((lambda (_%immediate101629%_)
                   (raw-table-for-each _%immediate101629%_ _%proc101621%_))
                 _%$e101626%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab101597%_ _%proc101598%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101602%_ ((_%spin101605%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101597%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101597%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101605%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101602%_ (##fx+ _%spin101605%_ '1)))
                    (let ((_%owner101611%_
                           (##vector-ref (&gc-table-lock _%tab101597%_) '1)))
                      (if (eq? _%owner101611%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101611%_)
                              (let () (##thread-yield!) (_%again101602%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101617%_ (gc-table-for-each _%tab101597%_ _%proc101598%_)))
          (##vector-set! (&gc-table-lock _%tab101597%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101597%_) '0 '0 '1)
          _%$r101617%_)))
    (define gc-table-copy
      (lambda (_%tab101585%_)
        (let* ((_%gcht101587%_ (__gc-table-e _%tab101585%_))
               (_%new-table101589%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht101587%_)
                 (macro-gc-hash-table-flags _%gcht101587%_)))
               (_%result101591%_
                (##structure
                 (##structure-type _%tab101585%_)
                 _%new-table101589%_
                 '#f)))
          (gc-table-for-each
           _%tab101585%_
           (lambda (_%k101594%_ _%v101595%_)
             (gc-table-set! _%result101591%_ _%k101594%_ _%v101595%_)))
          _%result101591%_)))
    (define gc-table-copy/lock
      (lambda (_%tab101563%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101567%_ ((_%spin101570%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101563%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101563%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101570%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101567%_ (##fx+ _%spin101570%_ '1)))
                    (let ((_%owner101576%_
                           (##vector-ref (&gc-table-lock _%tab101563%_) '1)))
                      (if (eq? _%owner101576%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101576%_)
                              (let () (##thread-yield!) (_%again101567%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101582%_ (gc-table-copy _%tab101563%_)))
          (##vector-set! (&gc-table-lock _%tab101563%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101563%_) '0 '0 '1)
          _%$r101582%_)))
    (define gc-table-clear!
      (lambda (_%tab101556%_)
        (let* ((_%gcht101558%_ (__gc-table-e _%tab101556%_))
               (_%new-table101560%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht101558%_))))
          (&gc-table-gcht-set! _%tab101556%_ _%new-table101560%_)
          (&gc-table-immediate-set! _%tab101556%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab101534%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101538%_ ((_%spin101541%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101534%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101534%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101541%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101538%_ (##fx+ _%spin101541%_ '1)))
                    (let ((_%owner101547%_
                           (##vector-ref (&gc-table-lock _%tab101534%_) '1)))
                      (if (eq? _%owner101547%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101547%_)
                              (let () (##thread-yield!) (_%again101538%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101553%_ (gc-table-clear! _%tab101534%_)))
          (##vector-set! (&gc-table-lock _%tab101534%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101534%_) '0 '0 '1)
          _%$r101553%_)))
    (define gc-table-length
      (lambda (_%tab101526%_)
        (let ((_%gcht101528%_ (__gc-table-e _%tab101526%_)))
          (fx+ (macro-gc-hash-table-count _%gcht101528%_)
               (let ((_%$e101530%_ (&gc-table-immediate _%tab101526%_)))
                 (if _%$e101530%_ (&raw-table-count _%$e101530%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab101504%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101508%_ ((_%spin101511%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101504%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101504%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101511%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101508%_ (##fx+ _%spin101511%_ '1)))
                    (let ((_%owner101517%_
                           (##vector-ref (&gc-table-lock _%tab101504%_) '1)))
                      (if (eq? _%owner101517%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101517%_)
                              (let () (##thread-yield!) (_%again101508%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101523%_ (gc-table-length _%tab101504%_)))
          (##vector-set! (&gc-table-lock _%tab101504%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101504%_) '0 '0 '1)
          _%$r101523%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj101474%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101479%_ ((_%spin101482%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin101482%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101479%_ (##fx+ _%spin101482%_ '1)))
                      (let ((_%owner101488%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner101488%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101488%_)
                                (let () (##thread-yield!) (_%again101479%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101501%_
                 (let ((_%val101494%_
                        (gc-table-ref __object-eq-hash _%obj101474%_ '#f)))
                   (if _%val101494%_
                       _%val101494%_
                       (let ((_%h101496%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e101498%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e101498%_ _%$e101498%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj101474%_
                          _%h101496%_)
                         _%h101496%_)))))
            (##vector-set! __object-eq-hash-lock '1 '#f)
            (##vector-cas! __object-eq-hash-lock '0 '0 '1)
            _%$r101501%_))))))
