(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1769384626)
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
      (lambda (_%tab104224%_)
        (##unchecked-structure-ref
         _%tab104224%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab104222%_)
        (##unchecked-structure-ref
         _%tab104222%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab104220%_)
        (##unchecked-structure-ref
         _%tab104220%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab104218%_)
        (##unchecked-structure-ref
         _%tab104218%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab104216%_)
        (##unchecked-structure-ref
         _%tab104216%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab104214%_)
        (##unchecked-structure-ref
         _%tab104214%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab104212%_)
        (##unchecked-structure-ref
         _%tab104212%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab104209%_ _%val104210%_)
        (##unchecked-structure-set!
         _%tab104209%_
         _%val104210%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab104206%_ _%val104207%_)
        (##unchecked-structure-set!
         _%tab104206%_
         _%val104207%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab104203%_ _%val104204%_)
        (##unchecked-structure-set!
         _%tab104203%_
         _%val104204%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab104200%_ _%val104201%_)
        (##unchecked-structure-set!
         _%tab104200%_
         _%val104201%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab104197%_ _%val104198%_)
        (##unchecked-structure-set!
         _%tab104197%_
         _%val104198%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab104194%_ _%val104195%_)
        (##unchecked-structure-set!
         _%tab104194%_
         _%val104195%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab104191%_ _%val104192%_)
        (##unchecked-structure-set!
         _%tab104191%_
         _%val104192%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint104189%_)
        (if (and (fixnum? _%size-hint104189%_) (##fx> _%size-hint104189%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint104189%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint104154%_
               _%hash104155%_
               _%test104156%_
               _%seed104157%_
               _%lock104158%_)
        (let* ((_%size104160%_ (raw-table-size-hint->size _%size-hint104154%_))
               (_%table104162%_
                (##make-vector _%size104160%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table104162%_
           '0
           (##fxquotient _%size104160%_ '2)
           _%hash104155%_
           _%test104156%_
           _%seed104157%_
           _%lock104158%_))))
    (define make-raw-table__0
      (lambda (_%size-hint104168%_ _%hash104169%_ _%test104170%_)
        (let* ((_%seed104172%_ '0) (_%lock104174%_ '#f))
          (make-raw-table__%
           _%size-hint104168%_
           _%hash104169%_
           _%test104170%_
           _%seed104172%_
           _%lock104174%_))))
    (define make-raw-table__1
      (lambda (_%size-hint104176%_
               _%hash104177%_
               _%test104178%_
               _%seed104179%_)
        (let ((_%lock104181%_ '#f))
          (make-raw-table__%
           _%size-hint104176%_
           _%hash104177%_
           _%test104178%_
           _%seed104179%_
           _%lock104181%_))))
    (define make-raw-table
      (lambda _g104225_
        (let ((_g104226_ (##length _g104225_)))
          (cond ((##fx= _g104226_ 3) (apply make-raw-table__0 _g104225_))
                ((##fx= _g104226_ 4) (apply make-raw-table__1 _g104225_))
                ((##fx= _g104226_ 5) (apply make-raw-table__% _g104225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g104225_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint104134%_
               _%hash104135%_
               _%test104136%_
               _%seed104137%_)
        (make-raw-table__%
         _%size-hint104134%_
         _%hash104135%_
         _%test104136%_
         _%seed104137%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint104142%_ _%hash104143%_ _%test104144%_)
        (let ((_%seed104146%_ '0))
          (make-raw-table/lock__%
           _%size-hint104142%_
           _%hash104143%_
           _%test104144%_
           _%seed104146%_))))
    (define make-raw-table/lock
      (lambda _g104227_
        (let ((_g104228_ (##length _g104227_)))
          (cond ((##fx= _g104228_ 3) (apply make-raw-table/lock__0 _g104227_))
                ((##fx= _g104228_ 4) (apply make-raw-table/lock__% _g104227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g104227_))))))
    (define raw-table-length
      (lambda (_%tab104131%_) (&raw-table-count _%tab104131%_)))
    (define raw-table-length/lock
      (lambda (_%tab104106%_)
        (let ((_%lock104108%_ (&raw-table-lock _%tab104106%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again104113%_ ((_%spin104116%_ '0))
              (if (##fx= (##vector-cas! _%lock104108%_ '0 '1 '0) '0)
                  (##vector-set! _%lock104108%_ '1 (current-thread))
                  (if (##fx< _%spin104116%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again104113%_ (##fx+ _%spin104116%_ '1)))
                      (let ((_%owner104122%_ (##vector-ref _%lock104108%_ '1)))
                        (if (eq? _%owner104122%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner104122%_)
                                (let () (##thread-yield!) (_%again104113%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r104128%_ (&raw-table-count _%tab104106%_)))
            (##vector-set! _%lock104108%_ '1 '#f)
            (##vector-cas! _%lock104108%_ '0 '0 '1)
            _%$r104128%_))))
    (define raw-table-ref
      (lambda (_%tab104058%_ _%key104059%_ _%default104060%_)
        (let ((_%table104062%_ (&raw-table-table _%tab104058%_))
              (_%seed104063%_ (&raw-table-seed _%tab104058%_))
              (_%hash104064%_ (&raw-table-hash _%tab104058%_))
              (_%test104065%_ (&raw-table-test _%tab104058%_)))
          (let* ((_%h104067%_
                  (fxxor (_%hash104064%_ _%key104059%_) _%seed104063%_))
                 (_%size104070%_ (vector-length _%table104062%_))
                 (_%entries104073%_ (##fxquotient _%size104070%_ '2))
                 (_%start104076%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h104067%_ _%entries104073%_)
                   '1)))
            (let _%loop104080%_ ((_%probe104083%_ _%start104076%_)
                                 (_%i104085%_ '1)
                                 (_%deleted104087%_ '#f))
              (let ((_%k104090%_ (vector-ref _%table104062%_ _%probe104083%_)))
                (if (eq? _%k104090%_ (macro-unused-obj))
                    _%default104060%_
                    (if (eq? _%k104090%_ (macro-deleted-obj))
                        (_%loop104080%_
                         (let ((_%next-probe104095%_
                                (fx+ _%start104076%_
                                     _%i104085%_
                                     (fx* _%i104085%_ _%i104085%_))))
                           (##fxmodulo _%next-probe104095%_ _%size104070%_))
                         (##fx+ _%i104085%_ '1)
                         (let ((_%$e104098%_ _%deleted104087%_))
                           (if _%$e104098%_ _%$e104098%_ _%probe104083%_)))
                        (if (_%test104065%_ _%key104059%_ _%k104090%_)
                            (vector-ref
                             _%table104062%_
                             (##fx+ _%probe104083%_ '1))
                            (_%loop104080%_
                             (let ((_%next-probe104103%_
                                    (fx+ _%start104076%_
                                         _%i104085%_
                                         (fx* _%i104085%_ _%i104085%_))))
                               (##fxmodulo
                                _%next-probe104103%_
                                _%size104070%_))
                             (##fx+ _%i104085%_ '1)
                             _%deleted104087%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab104031%_ _%key104032%_ _%default104033%_)
        (let ((_%lock104035%_ (&raw-table-lock _%tab104031%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again104040%_ ((_%spin104043%_ '0))
              (if (##fx= (##vector-cas! _%lock104035%_ '0 '1 '0) '0)
                  (##vector-set! _%lock104035%_ '1 (current-thread))
                  (if (##fx< _%spin104043%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again104040%_ (##fx+ _%spin104043%_ '1)))
                      (let ((_%owner104049%_ (##vector-ref _%lock104035%_ '1)))
                        (if (eq? _%owner104049%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner104049%_)
                                (let () (##thread-yield!) (_%again104040%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r104055%_
                 (raw-table-ref
                  _%tab104031%_
                  _%key104032%_
                  _%default104033%_)))
            (##vector-set! _%lock104035%_ '1 '#f)
            (##vector-cas! _%lock104035%_ '0 '0 '1)
            _%$r104055%_))))
    (define raw-table-set!
      (lambda (_%tab104027%_ _%key104028%_ _%value104029%_)
        (if (##fx< (&raw-table-free _%tab104027%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab104027%_))
                    '4))
            (__raw-table-rehash! _%tab104027%_)
            '#!void)
        (__raw-table-set! _%tab104027%_ _%key104028%_ _%value104029%_)))
    (define raw-table-set!/lock
      (lambda (_%tab104000%_ _%key104001%_ _%value104002%_)
        (let ((_%lock104004%_ (&raw-table-lock _%tab104000%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again104009%_ ((_%spin104012%_ '0))
              (if (##fx= (##vector-cas! _%lock104004%_ '0 '1 '0) '0)
                  (##vector-set! _%lock104004%_ '1 (current-thread))
                  (if (##fx< _%spin104012%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again104009%_ (##fx+ _%spin104012%_ '1)))
                      (let ((_%owner104018%_ (##vector-ref _%lock104004%_ '1)))
                        (if (eq? _%owner104018%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner104018%_)
                                (let () (##thread-yield!) (_%again104009%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r104024%_
                 (raw-table-set! _%tab104000%_ _%key104001%_ _%value104002%_)))
            (##vector-set! _%lock104004%_ '1 '#f)
            (##vector-cas! _%lock104004%_ '0 '0 '1)
            _%$r104024%_))))
    (define raw-table-update!
      (lambda (_%tab103995%_ _%key103996%_ _%update103997%_ _%default103998%_)
        (if (##fx< (&raw-table-free _%tab103995%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103995%_))
                    '4))
            (__raw-table-rehash! _%tab103995%_)
            '#!void)
        (__raw-table-update!
         _%tab103995%_
         _%key103996%_
         _%update103997%_
         _%default103998%_)))
    (define raw-table-update!/lock
      (lambda (_%tab103967%_ _%key103968%_ _%update103969%_ _%default103970%_)
        (let ((_%lock103972%_ (&raw-table-lock _%tab103967%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103977%_ ((_%spin103980%_ '0))
              (if (##fx= (##vector-cas! _%lock103972%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103972%_ '1 (current-thread))
                  (if (##fx< _%spin103980%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103977%_ (##fx+ _%spin103980%_ '1)))
                      (let ((_%owner103986%_ (##vector-ref _%lock103972%_ '1)))
                        (if (eq? _%owner103986%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103986%_)
                                (let () (##thread-yield!) (_%again103977%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103992%_
                 (raw-table-update!
                  _%tab103967%_
                  _%key103968%_
                  _%update103969%_
                  _%default103970%_)))
            (##vector-set! _%lock103972%_ '1 '#f)
            (##vector-cas! _%lock103972%_ '0 '0 '1)
            _%$r103992%_))))
    (define raw-table-delete!
      (lambda (_%tab103924%_ _%key103925%_)
        (let ((_%table103927%_ (&raw-table-table _%tab103924%_))
              (_%seed103928%_ (&raw-table-seed _%tab103924%_))
              (_%hash103929%_ (&raw-table-hash _%tab103924%_))
              (_%test103930%_ (&raw-table-test _%tab103924%_)))
          (let* ((_%h103932%_
                  (fxxor (_%hash103929%_ _%key103925%_) _%seed103928%_))
                 (_%size103935%_ (vector-length _%table103927%_))
                 (_%entries103938%_ (##fxquotient _%size103935%_ '2))
                 (_%start103941%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103932%_ _%entries103938%_)
                   '1)))
            (let _%loop103945%_ ((_%probe103948%_ _%start103941%_)
                                 (_%i103950%_ '1))
              (let ((_%k103953%_ (vector-ref _%table103927%_ _%probe103948%_)))
                (if (eq? _%k103953%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103953%_ (macro-deleted-obj))
                        (_%loop103945%_
                         (let ((_%next-probe103958%_
                                (fx+ _%start103941%_
                                     _%i103950%_
                                     (fx* _%i103950%_ _%i103950%_))))
                           (##fxmodulo _%next-probe103958%_ _%size103935%_))
                         (##fx+ _%i103950%_ '1))
                        (if (_%test103930%_ _%key103925%_ _%k103953%_)
                            (let ()
                              (vector-set!
                               _%table103927%_
                               _%probe103948%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103927%_
                               (##fx+ _%probe103948%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab103924%_
                                  (##fx- (&raw-table-count _%tab103924%_)
                                         '1)))))
                            (_%loop103945%_
                             (let ((_%next-probe103964%_
                                    (fx+ _%start103941%_
                                         _%i103950%_
                                         (fx* _%i103950%_ _%i103950%_))))
                               (##fxmodulo
                                _%next-probe103964%_
                                _%size103935%_))
                             (##fx+ _%i103950%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab103898%_ _%key103899%_)
        (let ((_%lock103901%_ (&raw-table-lock _%tab103898%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103906%_ ((_%spin103909%_ '0))
              (if (##fx= (##vector-cas! _%lock103901%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103901%_ '1 (current-thread))
                  (if (##fx< _%spin103909%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103906%_ (##fx+ _%spin103909%_ '1)))
                      (let ((_%owner103915%_ (##vector-ref _%lock103901%_ '1)))
                        (if (eq? _%owner103915%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103915%_)
                                (let () (##thread-yield!) (_%again103906%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103921%_ (raw-table-delete! _%tab103898%_ _%key103899%_)))
            (##vector-set! _%lock103901%_ '1 '#f)
            (##vector-cas! _%lock103901%_ '0 '0 '1)
            _%$r103921%_))))
    (define raw-table-for-each
      (lambda (_%tab103882%_ _%proc103883%_)
        (let* ((_%table103885%_ (&raw-table-table _%tab103882%_))
               (_%size103887%_ (vector-length _%table103885%_)))
          (let _%loop103890%_ ((_%i103892%_ '0))
            (if (##fx< _%i103892%_ _%size103887%_)
                (begin
                  (let ((_%key103894%_
                         (vector-ref _%table103885%_ _%i103892%_)))
                    (if (if (eq? _%key103894%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key103894%_ (macro-deleted-obj))))
                        (let ((_%value103896%_
                               (vector-ref
                                _%table103885%_
                                (##fx+ _%i103892%_ '1))))
                          (_%proc103883%_ _%key103894%_ _%value103896%_))
                        '#!void))
                  (_%loop103890%_ (##fx+ _%i103892%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab103856%_ _%proc103857%_)
        (let ((_%lock103859%_ (&raw-table-lock _%tab103856%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103864%_ ((_%spin103867%_ '0))
              (if (##fx= (##vector-cas! _%lock103859%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103859%_ '1 (current-thread))
                  (if (##fx< _%spin103867%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103864%_ (##fx+ _%spin103867%_ '1)))
                      (let ((_%owner103873%_ (##vector-ref _%lock103859%_ '1)))
                        (if (eq? _%owner103873%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103873%_)
                                (let () (##thread-yield!) (_%again103864%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103879%_
                 (raw-table-for-each _%tab103856%_ _%proc103857%_)))
            (##vector-set! _%lock103859%_ '1 '#f)
            (##vector-cas! _%lock103859%_ '0 '0 '1)
            _%$r103879%_))))
    (define raw-table-copy
      (lambda (_%tab103852%_)
        (let ((_%new-tab103854%_ (##structure-copy _%tab103852%_)))
          (&raw-table-table-set!
           _%new-tab103854%_
           (vector-copy (&raw-table-table _%tab103852%_)))
          _%new-tab103854%_)))
    (define raw-table-copy/lock
      (lambda (_%tab103827%_)
        (let ((_%lock103829%_ (&raw-table-lock _%tab103827%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103834%_ ((_%spin103837%_ '0))
              (if (##fx= (##vector-cas! _%lock103829%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103829%_ '1 (current-thread))
                  (if (##fx< _%spin103837%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103834%_ (##fx+ _%spin103837%_ '1)))
                      (let ((_%owner103843%_ (##vector-ref _%lock103829%_ '1)))
                        (if (eq? _%owner103843%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103843%_)
                                (let () (##thread-yield!) (_%again103834%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103849%_ (raw-table-copy _%tab103827%_)))
            (##vector-set! _%lock103829%_ '1 '#f)
            (##vector-cas! _%lock103829%_ '0 '0 '1)
            _%$r103849%_))))
    (define raw-table-clear!
      (lambda (_%tab103825%_)
        (vector-fill! (&raw-table-table _%tab103825%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab103825%_ '0)
        (&raw-table-free-set!
         _%tab103825%_
         (##fxquotient (vector-length (&raw-table-table _%tab103825%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab103800%_)
        (let ((_%lock103802%_ (&raw-table-lock _%tab103800%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103807%_ ((_%spin103810%_ '0))
              (if (##fx= (##vector-cas! _%lock103802%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103802%_ '1 (current-thread))
                  (if (##fx< _%spin103810%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103807%_ (##fx+ _%spin103810%_ '1)))
                      (let ((_%owner103816%_ (##vector-ref _%lock103802%_ '1)))
                        (if (eq? _%owner103816%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103816%_)
                                (let () (##thread-yield!) (_%again103807%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103822%_ (raw-table-clear! _%tab103800%_)))
            (##vector-set! _%lock103802%_ '1 '#f)
            (##vector-cas! _%lock103802%_ '0 '0 '1)
            _%$r103822%_))))
    (define __raw-table-set!
      (lambda (_%tab103750%_ _%key103751%_ _%value103752%_)
        (let ((_%table103754%_ (&raw-table-table _%tab103750%_))
              (_%seed103755%_ (&raw-table-seed _%tab103750%_))
              (_%hash103756%_ (&raw-table-hash _%tab103750%_))
              (_%test103757%_ (&raw-table-test _%tab103750%_)))
          (let* ((_%h103759%_
                  (fxxor (_%hash103756%_ _%key103751%_) _%seed103755%_))
                 (_%size103762%_ (vector-length _%table103754%_))
                 (_%entries103765%_ (##fxquotient _%size103762%_ '2))
                 (_%start103768%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103759%_ _%entries103765%_)
                   '1)))
            (let _%loop103772%_ ((_%probe103775%_ _%start103768%_)
                                 (_%i103777%_ '1)
                                 (_%deleted103779%_ '#f))
              (let ((_%k103782%_ (vector-ref _%table103754%_ _%probe103775%_)))
                (if (eq? _%k103782%_ (macro-unused-obj))
                    (if _%deleted103779%_
                        (begin
                          (vector-set!
                           _%table103754%_
                           _%deleted103779%_
                           _%key103751%_)
                          (vector-set!
                           _%table103754%_
                           (##fx+ _%deleted103779%_ '1)
                           _%value103752%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103750%_
                              (##fx+ (&raw-table-count _%tab103750%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103754%_
                           _%probe103775%_
                           _%key103751%_)
                          (vector-set!
                           _%table103754%_
                           (##fx+ _%probe103775%_ '1)
                           _%value103752%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103750%_
                              (##fx- (&raw-table-free _%tab103750%_) '1))
                             (&raw-table-count-set!
                              _%tab103750%_
                              (##fx+ (&raw-table-count _%tab103750%_) '1))))))
                    (if (eq? _%k103782%_ (macro-deleted-obj))
                        (_%loop103772%_
                         (let ((_%next-probe103789%_
                                (fx+ _%start103768%_
                                     _%i103777%_
                                     (fx* _%i103777%_ _%i103777%_))))
                           (##fxmodulo _%next-probe103789%_ _%size103762%_))
                         (##fx+ _%i103777%_ '1)
                         (let ((_%$e103792%_ _%deleted103779%_))
                           (if _%$e103792%_ _%$e103792%_ _%probe103775%_)))
                        (if (_%test103757%_ _%key103751%_ _%k103782%_)
                            (let ()
                              (vector-set!
                               _%table103754%_
                               _%probe103775%_
                               _%key103751%_)
                              (vector-set!
                               _%table103754%_
                               (##fx+ _%probe103775%_ '1)
                               _%value103752%_))
                            (_%loop103772%_
                             (let ((_%next-probe103797%_
                                    (fx+ _%start103768%_
                                         _%i103777%_
                                         (fx* _%i103777%_ _%i103777%_))))
                               (##fxmodulo
                                _%next-probe103797%_
                                _%size103762%_))
                             (##fx+ _%i103777%_ '1)
                             _%deleted103779%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab103699%_ _%key103700%_ _%update103701%_ _%default103702%_)
        (let ((_%table103704%_ (&raw-table-table _%tab103699%_))
              (_%seed103705%_ (&raw-table-seed _%tab103699%_))
              (_%hash103706%_ (&raw-table-hash _%tab103699%_))
              (_%test103707%_ (&raw-table-test _%tab103699%_)))
          (let* ((_%h103709%_
                  (fxxor (_%hash103706%_ _%key103700%_) _%seed103705%_))
                 (_%size103712%_ (vector-length _%table103704%_))
                 (_%entries103715%_ (##fxquotient _%size103712%_ '2))
                 (_%start103718%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103709%_ _%entries103715%_)
                   '1)))
            (let _%loop103722%_ ((_%probe103725%_ _%start103718%_)
                                 (_%i103727%_ '1)
                                 (_%deleted103729%_ '#f))
              (let ((_%k103732%_ (vector-ref _%table103704%_ _%probe103725%_)))
                (if (eq? _%k103732%_ (macro-unused-obj))
                    (if _%deleted103729%_
                        (begin
                          (vector-set!
                           _%table103704%_
                           _%deleted103729%_
                           _%key103700%_)
                          (vector-set!
                           _%table103704%_
                           (##fx+ _%deleted103729%_ '1)
                           (_%update103701%_ _%default103702%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103699%_
                              (##fx+ (&raw-table-count _%tab103699%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103704%_
                           _%probe103725%_
                           _%key103700%_)
                          (vector-set!
                           _%table103704%_
                           (##fx+ _%probe103725%_ '1)
                           (_%update103701%_ _%default103702%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103699%_
                              (##fx- (&raw-table-free _%tab103699%_) '1))
                             (&raw-table-count-set!
                              _%tab103699%_
                              (##fx+ (&raw-table-count _%tab103699%_) '1))))))
                    (if (eq? _%k103732%_ (macro-deleted-obj))
                        (_%loop103722%_
                         (let ((_%next-probe103739%_
                                (fx+ _%start103718%_
                                     _%i103727%_
                                     (fx* _%i103727%_ _%i103727%_))))
                           (##fxmodulo _%next-probe103739%_ _%size103712%_))
                         (##fx+ _%i103727%_ '1)
                         (let ((_%$e103742%_ _%deleted103729%_))
                           (if _%$e103742%_ _%$e103742%_ _%probe103725%_)))
                        (if (_%test103707%_ _%key103700%_ _%k103732%_)
                            (let ()
                              (vector-set!
                               _%table103704%_
                               _%probe103725%_
                               _%key103700%_)
                              (vector-set!
                               _%table103704%_
                               (##fx+ _%probe103725%_ '1)
                               (_%update103701%_
                                (vector-ref
                                 _%table103704%_
                                 (##fx+ _%probe103725%_ '1)))))
                            (_%loop103722%_
                             (let ((_%next-probe103747%_
                                    (fx+ _%start103718%_
                                         _%i103727%_
                                         (fx* _%i103727%_ _%i103727%_))))
                               (##fxmodulo
                                _%next-probe103747%_
                                _%size103712%_))
                             (##fx+ _%i103727%_ '1)
                             _%deleted103729%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab103680%_)
        (let* ((_%old-table103682%_ (&raw-table-table _%tab103680%_))
               (_%old-size103684%_ (vector-length _%old-table103682%_))
               (_%new-size103686%_
                (if (##fx< (&raw-table-count _%tab103680%_)
                           (##fxquotient _%old-size103684%_ '4))
                    (vector-length _%old-table103682%_)
                    (##fx* '2 (vector-length _%old-table103682%_))))
               (_%new-table103688%_
                (##make-vector _%new-size103686%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab103680%_ _%new-table103688%_)
          (&raw-table-count-set! _%tab103680%_ '0)
          (&raw-table-free-set!
           _%tab103680%_
           (##fxquotient _%new-size103686%_ '2))
          (let _%lp103691%_ ((_%i103693%_ '0))
            (if (##fx< _%i103693%_ _%old-size103684%_)
                (begin
                  (let ((_%key103695%_
                         (vector-ref _%old-table103682%_ _%i103693%_)))
                    (if (if (eq? _%key103695%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key103695%_ (macro-deleted-obj))))
                        (let ((_%value103697%_
                               (vector-ref
                                _%old-table103682%_
                                (##fx+ _%i103693%_ '1))))
                          (__raw-table-set!
                           _%tab103680%_
                           _%key103695%_
                           _%value103697%_))
                        '#!void))
                  (_%lp103691%_ (##fx+ _%i103693%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj103672%_)
        (let ((_%t103674%_ (##type _%obj103672%_)))
          (if (##fx= (##fxand _%t103674%_ '1) '0)
              (fxand (##type-cast _%obj103672%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj103672%_)
                  (##symbol-hash _%obj103672%_)
                  (if (procedure? _%obj103672%_)
                      (procedure-hash _%obj103672%_)
                      (fxand (__eq-hash _%obj103672%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj103668%_)
        (let ((_%h103670%_
               (if (##closure? _%obj103668%_)
                   (__eq-hash _%obj103668%_)
                   (##type-cast _%obj103668%_ '0))))
          (fxand _%h103670%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj103665%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj103665%_)))
    (define eqv-hash
      (lambda (_%obj103655%_)
        (letrec ((_%combine103657%_
                  (lambda (_%a103662%_ _%b103663%_)
                    (fxand (##fx* (##fx+ _%a103662%_
                                         (fxarithmetic-shift-left
                                          _%b103663%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash103658%_
                  (lambda (_%obj103660%_)
                    (macro-number-dispatch
                     _%obj103660%_
                     (eq-hash _%obj103660%_)
                     (fxand _%obj103660%_ (macro-max-fixnum32))
                     (modulo _%obj103660%_ '331804481)
                     (_%combine103657%_
                      (_%hash103658%_ (macro-ratnum-numerator _%obj103660%_))
                      (_%hash103658%_
                       (macro-ratnum-denominator _%obj103660%_)))
                     (_%combine103657%_
                      (##u16vector-ref _%obj103660%_ '0)
                      (_%combine103657%_
                       (##u16vector-ref _%obj103660%_ '1)
                       (_%combine103657%_
                        (##u16vector-ref _%obj103660%_ '2)
                        (##u16vector-ref _%obj103660%_ '3))))
                     (_%combine103657%_
                      (_%hash103658%_ (macro-cpxnum-real _%obj103660%_))
                      (_%hash103658%_ (macro-cpxnum-imag _%obj103660%_)))))))
          (_%hash103658%_ _%obj103655%_))))
    (define symbolic?
      (lambda (_%obj103650%_)
        (let ((_%$e103652%_ (symbol? _%obj103650%_)))
          (if _%$e103652%_ _%$e103652%_ (keyword? _%obj103650%_)))))
    (define symbolic-hash
      (lambda (_%obj103648%_) (##symbol-hash _%obj103648%_)))
    (define string-hash
      (lambda (_%obj103646%_) (##string=?-hash _%obj103646%_)))
    (define immediate-hash
      (lambda (_%obj103644%_) (##type-cast _%obj103644%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint103626%_ _%seed103627%_)
        (make-raw-table__1 _%size-hint103626%_ eq-hash eq? _%seed103627%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint103633%_ '#f) (_%seed103635%_ '0))
          (make-eq-table__% _%size-hint103633%_ _%seed103635%_))))
    (define make-eq-table__1
      (lambda (_%size-hint103637%_)
        (let ((_%seed103639%_ '0))
          (make-eq-table__% _%size-hint103637%_ _%seed103639%_))))
    (define make-eq-table
      (lambda _g104229_
        (let ((_g104230_ (##length _g104229_)))
          (cond ((##fx= _g104230_ 0) (apply make-eq-table__0 _g104229_))
                ((##fx= _g104230_ 1) (apply make-eq-table__1 _g104229_))
                ((##fx= _g104230_ 2) (apply make-eq-table__% _g104229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g104229_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint103606%_ _%seed103608%_)
        (make-raw-table/lock__%
         _%size-hint103606%_
         eq-hash
         eq?
         _%seed103608%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint103614%_ '#f) (_%seed103616%_ '0))
          (make-eq-table/lock__% _%size-hint103614%_ _%seed103616%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint103618%_)
        (let ((_%seed103620%_ '0))
          (make-eq-table/lock__% _%size-hint103618%_ _%seed103620%_))))
    (define make-eq-table/lock
      (lambda _g104231_
        (let ((_g104232_ (##length _g104231_)))
          (cond ((##fx= _g104232_ 0) (apply make-eq-table/lock__0 _g104231_))
                ((##fx= _g104232_ 1) (apply make-eq-table/lock__1 _g104231_))
                ((##fx= _g104232_ 2) (apply make-eq-table/lock__% _g104231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g104231_))))))
    (define eq-table-ref
      (lambda (_%tab103559%_ _%key103560%_ _%default103561%_)
        (let ((_%table103563%_ (&raw-table-table _%tab103559%_))
              (_%seed103564%_ (&raw-table-seed _%tab103559%_)))
          (let* ((_%h103566%_ (fxxor (eq-hash _%key103560%_) _%seed103564%_))
                 (_%size103569%_ (vector-length _%table103563%_))
                 (_%entries103572%_ (##fxquotient _%size103569%_ '2))
                 (_%start103575%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103566%_ _%entries103572%_)
                   '1)))
            (let _%loop103579%_ ((_%probe103582%_ _%start103575%_)
                                 (_%i103584%_ '1)
                                 (_%deleted103586%_ '#f))
              (let ((_%k103589%_ (vector-ref _%table103563%_ _%probe103582%_)))
                (if (eq? _%k103589%_ (macro-unused-obj))
                    _%default103561%_
                    (if (eq? _%k103589%_ (macro-deleted-obj))
                        (_%loop103579%_
                         (let ((_%next-probe103594%_
                                (fx+ _%start103575%_
                                     _%i103584%_
                                     (fx* _%i103584%_ _%i103584%_))))
                           (##fxmodulo _%next-probe103594%_ _%size103569%_))
                         (##fx+ _%i103584%_ '1)
                         (let ((_%$e103597%_ _%deleted103586%_))
                           (if _%$e103597%_ _%$e103597%_ _%probe103582%_)))
                        (if (eq? _%key103560%_ _%k103589%_)
                            (vector-ref
                             _%table103563%_
                             (##fx+ _%probe103582%_ '1))
                            (_%loop103579%_
                             (let ((_%next-probe103602%_
                                    (fx+ _%start103575%_
                                         _%i103584%_
                                         (fx* _%i103584%_ _%i103584%_))))
                               (##fxmodulo
                                _%next-probe103602%_
                                _%size103569%_))
                             (##fx+ _%i103584%_ '1)
                             _%deleted103586%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab103532%_ _%key103533%_ _%default103534%_)
        (let ((_%lock103536%_ (&raw-table-lock _%tab103532%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103541%_ ((_%spin103544%_ '0))
              (if (##fx= (##vector-cas! _%lock103536%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103536%_ '1 (current-thread))
                  (if (##fx< _%spin103544%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103541%_ (##fx+ _%spin103544%_ '1)))
                      (let ((_%owner103550%_ (##vector-ref _%lock103536%_ '1)))
                        (if (eq? _%owner103550%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103550%_)
                                (let () (##thread-yield!) (_%again103541%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103556%_
                 (eq-table-ref _%tab103532%_ _%key103533%_ _%default103534%_)))
            (##vector-set! _%lock103536%_ '1 '#f)
            (##vector-cas! _%lock103536%_ '0 '0 '1)
            _%$r103556%_))))
    (define __eq-table-set!
      (lambda (_%tab103484%_ _%key103485%_ _%value103486%_)
        (let ((_%table103488%_ (&raw-table-table _%tab103484%_))
              (_%seed103489%_ (&raw-table-seed _%tab103484%_)))
          (let* ((_%h103491%_ (fxxor (eq-hash _%key103485%_) _%seed103489%_))
                 (_%size103494%_ (vector-length _%table103488%_))
                 (_%entries103497%_ (##fxquotient _%size103494%_ '2))
                 (_%start103500%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103491%_ _%entries103497%_)
                   '1)))
            (let _%loop103504%_ ((_%probe103507%_ _%start103500%_)
                                 (_%i103509%_ '1)
                                 (_%deleted103511%_ '#f))
              (let ((_%k103514%_ (vector-ref _%table103488%_ _%probe103507%_)))
                (if (eq? _%k103514%_ (macro-unused-obj))
                    (if _%deleted103511%_
                        (begin
                          (vector-set!
                           _%table103488%_
                           _%deleted103511%_
                           _%key103485%_)
                          (vector-set!
                           _%table103488%_
                           (##fx+ _%deleted103511%_ '1)
                           _%value103486%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103484%_
                              (##fx+ (&raw-table-count _%tab103484%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103488%_
                           _%probe103507%_
                           _%key103485%_)
                          (vector-set!
                           _%table103488%_
                           (##fx+ _%probe103507%_ '1)
                           _%value103486%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103484%_
                              (##fx- (&raw-table-free _%tab103484%_) '1))
                             (&raw-table-count-set!
                              _%tab103484%_
                              (##fx+ (&raw-table-count _%tab103484%_) '1))))))
                    (if (eq? _%k103514%_ (macro-deleted-obj))
                        (_%loop103504%_
                         (let ((_%next-probe103521%_
                                (fx+ _%start103500%_
                                     _%i103509%_
                                     (fx* _%i103509%_ _%i103509%_))))
                           (##fxmodulo _%next-probe103521%_ _%size103494%_))
                         (##fx+ _%i103509%_ '1)
                         (let ((_%$e103524%_ _%deleted103511%_))
                           (if _%$e103524%_ _%$e103524%_ _%probe103507%_)))
                        (if (eq? _%key103485%_ _%k103514%_)
                            (let ()
                              (vector-set!
                               _%table103488%_
                               _%probe103507%_
                               _%key103485%_)
                              (vector-set!
                               _%table103488%_
                               (##fx+ _%probe103507%_ '1)
                               _%value103486%_))
                            (_%loop103504%_
                             (let ((_%next-probe103529%_
                                    (fx+ _%start103500%_
                                         _%i103509%_
                                         (fx* _%i103509%_ _%i103509%_))))
                               (##fxmodulo
                                _%next-probe103529%_
                                _%size103494%_))
                             (##fx+ _%i103509%_ '1)
                             _%deleted103511%_))))))))))
    (define eq-table-set!
      (lambda (_%tab103480%_ _%key103481%_ _%value103482%_)
        (if (##fx< (&raw-table-free _%tab103480%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103480%_))
                    '4))
            (__raw-table-rehash! _%tab103480%_)
            '#!void)
        (__eq-table-set! _%tab103480%_ _%key103481%_ _%value103482%_)))
    (define eq-table-set!/lock
      (lambda (_%tab103452%_ _%key103453%_ _%value103454%_)
        (let ((_%lock103457%_ (&raw-table-lock _%tab103452%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103462%_ ((_%spin103465%_ '0))
              (if (##fx= (##vector-cas! _%lock103457%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103457%_ '1 (current-thread))
                  (if (##fx< _%spin103465%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103462%_ (##fx+ _%spin103465%_ '1)))
                      (let ((_%owner103471%_ (##vector-ref _%lock103457%_ '1)))
                        (if (eq? _%owner103471%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103471%_)
                                (let () (##thread-yield!) (_%again103462%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103477%_
                 (eq-table-set! _%tab103452%_ _%key103453%_ _%value103454%_)))
            (##vector-set! _%lock103457%_ '1 '#f)
            (##vector-cas! _%lock103457%_ '0 '0 '1)
            _%$r103477%_))))
    (define __eq-table-update!
      (lambda (_%tab103403%_
               _%key103404%_
               _%eq-table-update!103405%_
               _%default103406%_)
        (let ((_%table103408%_ (&raw-table-table _%tab103403%_))
              (_%seed103409%_ (&raw-table-seed _%tab103403%_)))
          (let* ((_%h103411%_ (fxxor (eq-hash _%key103404%_) _%seed103409%_))
                 (_%size103414%_ (vector-length _%table103408%_))
                 (_%entries103417%_ (##fxquotient _%size103414%_ '2))
                 (_%start103420%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103411%_ _%entries103417%_)
                   '1)))
            (let _%loop103424%_ ((_%probe103427%_ _%start103420%_)
                                 (_%i103429%_ '1)
                                 (_%deleted103431%_ '#f))
              (let ((_%k103434%_ (vector-ref _%table103408%_ _%probe103427%_)))
                (if (eq? _%k103434%_ (macro-unused-obj))
                    (if _%deleted103431%_
                        (begin
                          (vector-set!
                           _%table103408%_
                           _%deleted103431%_
                           _%key103404%_)
                          (vector-set!
                           _%table103408%_
                           (##fx+ _%deleted103431%_ '1)
                           (_%eq-table-update!103405%_ _%default103406%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103403%_
                              (##fx+ (&raw-table-count _%tab103403%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103408%_
                           _%probe103427%_
                           _%key103404%_)
                          (vector-set!
                           _%table103408%_
                           (##fx+ _%probe103427%_ '1)
                           (_%eq-table-update!103405%_ _%default103406%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103403%_
                              (##fx- (&raw-table-free _%tab103403%_) '1))
                             (&raw-table-count-set!
                              _%tab103403%_
                              (##fx+ (&raw-table-count _%tab103403%_) '1))))))
                    (if (eq? _%k103434%_ (macro-deleted-obj))
                        (_%loop103424%_
                         (let ((_%next-probe103441%_
                                (fx+ _%start103420%_
                                     _%i103429%_
                                     (fx* _%i103429%_ _%i103429%_))))
                           (##fxmodulo _%next-probe103441%_ _%size103414%_))
                         (##fx+ _%i103429%_ '1)
                         (let ((_%$e103444%_ _%deleted103431%_))
                           (if _%$e103444%_ _%$e103444%_ _%probe103427%_)))
                        (if (eq? _%key103404%_ _%k103434%_)
                            (let ()
                              (vector-set!
                               _%table103408%_
                               _%probe103427%_
                               _%key103404%_)
                              (vector-set!
                               _%table103408%_
                               (##fx+ _%probe103427%_ '1)
                               (_%eq-table-update!103405%_
                                (vector-ref
                                 _%table103408%_
                                 (##fx+ _%probe103427%_ '1)))))
                            (_%loop103424%_
                             (let ((_%next-probe103449%_
                                    (fx+ _%start103420%_
                                         _%i103429%_
                                         (fx* _%i103429%_ _%i103429%_))))
                               (##fxmodulo
                                _%next-probe103449%_
                                _%size103414%_))
                             (##fx+ _%i103429%_ '1)
                             _%deleted103431%_))))))))))
    (define eq-table-update!
      (lambda (_%tab103398%_
               _%key103399%_
               _%eq-table-update!103400%_
               _%default103401%_)
        (if (##fx< (&raw-table-free _%tab103398%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103398%_))
                    '4))
            (__raw-table-rehash! _%tab103398%_)
            '#!void)
        (__eq-table-update!
         _%tab103398%_
         _%key103399%_
         _%eq-table-update!103400%_
         _%default103401%_)))
    (define eq-table-update!/lock
      (lambda (_%tab103369%_
               _%key103370%_
               _%eq-table-update!103371%_
               _%default103372%_)
        (let ((_%lock103375%_ (&raw-table-lock _%tab103369%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103380%_ ((_%spin103383%_ '0))
              (if (##fx= (##vector-cas! _%lock103375%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103375%_ '1 (current-thread))
                  (if (##fx< _%spin103383%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103380%_ (##fx+ _%spin103383%_ '1)))
                      (let ((_%owner103389%_ (##vector-ref _%lock103375%_ '1)))
                        (if (eq? _%owner103389%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103389%_)
                                (let () (##thread-yield!) (_%again103380%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103395%_
                 (_%eq-table-update!103371%_
                  _%tab103369%_
                  _%key103370%_
                  _%eq-table-update!103371%_
                  _%default103372%_)))
            (##vector-set! _%lock103375%_ '1 '#f)
            (##vector-cas! _%lock103375%_ '0 '0 '1)
            _%$r103395%_))))
    (define eq-table-delete!
      (lambda (_%tab103326%_ _%key103327%_)
        (let ((_%table103329%_ (&raw-table-table _%tab103326%_))
              (_%seed103331%_ (&raw-table-seed _%tab103326%_)))
          (let* ((_%h103334%_ (fxxor (eq-hash _%key103327%_) _%seed103331%_))
                 (_%size103337%_ (vector-length _%table103329%_))
                 (_%entries103340%_ (##fxquotient _%size103337%_ '2))
                 (_%start103343%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103334%_ _%entries103340%_)
                   '1)))
            (let _%loop103347%_ ((_%probe103350%_ _%start103343%_)
                                 (_%i103352%_ '1))
              (let ((_%k103355%_ (vector-ref _%table103329%_ _%probe103350%_)))
                (if (eq? _%k103355%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103355%_ (macro-deleted-obj))
                        (_%loop103347%_
                         (let ((_%next-probe103360%_
                                (fx+ _%start103343%_
                                     _%i103352%_
                                     (fx* _%i103352%_ _%i103352%_))))
                           (##fxmodulo _%next-probe103360%_ _%size103337%_))
                         (##fx+ _%i103352%_ '1))
                        (if (eq? _%key103327%_ _%k103355%_)
                            (let ()
                              (vector-set!
                               _%table103329%_
                               _%probe103350%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103329%_
                               (##fx+ _%probe103350%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab103326%_
                                  (##fx- (&raw-table-count _%tab103326%_)
                                         '1)))))
                            (_%loop103347%_
                             (let ((_%next-probe103366%_
                                    (fx+ _%start103343%_
                                         _%i103352%_
                                         (fx* _%i103352%_ _%i103352%_))))
                               (##fxmodulo
                                _%next-probe103366%_
                                _%size103337%_))
                             (##fx+ _%i103352%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab103298%_ _%key103300%_)
        (let ((_%lock103303%_ (&raw-table-lock _%tab103298%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103308%_ ((_%spin103311%_ '0))
              (if (##fx= (##vector-cas! _%lock103303%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103303%_ '1 (current-thread))
                  (if (##fx< _%spin103311%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103308%_ (##fx+ _%spin103311%_ '1)))
                      (let ((_%owner103317%_ (##vector-ref _%lock103303%_ '1)))
                        (if (eq? _%owner103317%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103317%_)
                                (let () (##thread-yield!) (_%again103308%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103323%_ (eq-table-delete! _%tab103298%_ _%key103300%_)))
            (##vector-set! _%lock103303%_ '1 '#f)
            (##vector-cas! _%lock103303%_ '0 '0 '1)
            _%$r103323%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint103280%_ _%seed103281%_)
        (make-raw-table__1 _%size-hint103280%_ eqv-hash eqv? _%seed103281%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint103287%_ '#f) (_%seed103289%_ '0))
          (make-eqv-table__% _%size-hint103287%_ _%seed103289%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint103291%_)
        (let ((_%seed103293%_ '0))
          (make-eqv-table__% _%size-hint103291%_ _%seed103293%_))))
    (define make-eqv-table
      (lambda _g104233_
        (let ((_g104234_ (##length _g104233_)))
          (cond ((##fx= _g104234_ 0) (apply make-eqv-table__0 _g104233_))
                ((##fx= _g104234_ 1) (apply make-eqv-table__1 _g104233_))
                ((##fx= _g104234_ 2) (apply make-eqv-table__% _g104233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g104233_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint103260%_ _%seed103262%_)
        (make-raw-table/lock__%
         _%size-hint103260%_
         eqv-hash
         eqv?
         _%seed103262%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint103268%_ '#f) (_%seed103270%_ '0))
          (make-eqv-table/lock__% _%size-hint103268%_ _%seed103270%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint103272%_)
        (let ((_%seed103274%_ '0))
          (make-eqv-table/lock__% _%size-hint103272%_ _%seed103274%_))))
    (define make-eqv-table/lock
      (lambda _g104235_
        (let ((_g104236_ (##length _g104235_)))
          (cond ((##fx= _g104236_ 0) (apply make-eqv-table/lock__0 _g104235_))
                ((##fx= _g104236_ 1) (apply make-eqv-table/lock__1 _g104235_))
                ((##fx= _g104236_ 2) (apply make-eqv-table/lock__% _g104235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g104235_))))))
    (define eqv-table-ref
      (lambda (_%tab103213%_ _%key103214%_ _%default103215%_)
        (let ((_%table103217%_ (&raw-table-table _%tab103213%_))
              (_%seed103218%_ (&raw-table-seed _%tab103213%_)))
          (let* ((_%h103220%_ (fxxor (eqv-hash _%key103214%_) _%seed103218%_))
                 (_%size103223%_ (vector-length _%table103217%_))
                 (_%entries103226%_ (##fxquotient _%size103223%_ '2))
                 (_%start103229%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103220%_ _%entries103226%_)
                   '1)))
            (let _%loop103233%_ ((_%probe103236%_ _%start103229%_)
                                 (_%i103238%_ '1)
                                 (_%deleted103240%_ '#f))
              (let ((_%k103243%_ (vector-ref _%table103217%_ _%probe103236%_)))
                (if (eq? _%k103243%_ (macro-unused-obj))
                    _%default103215%_
                    (if (eq? _%k103243%_ (macro-deleted-obj))
                        (_%loop103233%_
                         (let ((_%next-probe103248%_
                                (fx+ _%start103229%_
                                     _%i103238%_
                                     (fx* _%i103238%_ _%i103238%_))))
                           (##fxmodulo _%next-probe103248%_ _%size103223%_))
                         (##fx+ _%i103238%_ '1)
                         (let ((_%$e103251%_ _%deleted103240%_))
                           (if _%$e103251%_ _%$e103251%_ _%probe103236%_)))
                        (if (eqv? _%key103214%_ _%k103243%_)
                            (vector-ref
                             _%table103217%_
                             (##fx+ _%probe103236%_ '1))
                            (_%loop103233%_
                             (let ((_%next-probe103256%_
                                    (fx+ _%start103229%_
                                         _%i103238%_
                                         (fx* _%i103238%_ _%i103238%_))))
                               (##fxmodulo
                                _%next-probe103256%_
                                _%size103223%_))
                             (##fx+ _%i103238%_ '1)
                             _%deleted103240%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab103186%_ _%key103187%_ _%default103188%_)
        (let ((_%lock103190%_ (&raw-table-lock _%tab103186%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103195%_ ((_%spin103198%_ '0))
              (if (##fx= (##vector-cas! _%lock103190%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103190%_ '1 (current-thread))
                  (if (##fx< _%spin103198%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103195%_ (##fx+ _%spin103198%_ '1)))
                      (let ((_%owner103204%_ (##vector-ref _%lock103190%_ '1)))
                        (if (eq? _%owner103204%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103204%_)
                                (let () (##thread-yield!) (_%again103195%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103210%_
                 (eqv-table-ref
                  _%tab103186%_
                  _%key103187%_
                  _%default103188%_)))
            (##vector-set! _%lock103190%_ '1 '#f)
            (##vector-cas! _%lock103190%_ '0 '0 '1)
            _%$r103210%_))))
    (define __eqv-table-set!
      (lambda (_%tab103138%_ _%key103139%_ _%value103140%_)
        (let ((_%table103142%_ (&raw-table-table _%tab103138%_))
              (_%seed103143%_ (&raw-table-seed _%tab103138%_)))
          (let* ((_%h103145%_ (fxxor (eqv-hash _%key103139%_) _%seed103143%_))
                 (_%size103148%_ (vector-length _%table103142%_))
                 (_%entries103151%_ (##fxquotient _%size103148%_ '2))
                 (_%start103154%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103145%_ _%entries103151%_)
                   '1)))
            (let _%loop103158%_ ((_%probe103161%_ _%start103154%_)
                                 (_%i103163%_ '1)
                                 (_%deleted103165%_ '#f))
              (let ((_%k103168%_ (vector-ref _%table103142%_ _%probe103161%_)))
                (if (eq? _%k103168%_ (macro-unused-obj))
                    (if _%deleted103165%_
                        (begin
                          (vector-set!
                           _%table103142%_
                           _%deleted103165%_
                           _%key103139%_)
                          (vector-set!
                           _%table103142%_
                           (##fx+ _%deleted103165%_ '1)
                           _%value103140%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103138%_
                              (##fx+ (&raw-table-count _%tab103138%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103142%_
                           _%probe103161%_
                           _%key103139%_)
                          (vector-set!
                           _%table103142%_
                           (##fx+ _%probe103161%_ '1)
                           _%value103140%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103138%_
                              (##fx- (&raw-table-free _%tab103138%_) '1))
                             (&raw-table-count-set!
                              _%tab103138%_
                              (##fx+ (&raw-table-count _%tab103138%_) '1))))))
                    (if (eq? _%k103168%_ (macro-deleted-obj))
                        (_%loop103158%_
                         (let ((_%next-probe103175%_
                                (fx+ _%start103154%_
                                     _%i103163%_
                                     (fx* _%i103163%_ _%i103163%_))))
                           (##fxmodulo _%next-probe103175%_ _%size103148%_))
                         (##fx+ _%i103163%_ '1)
                         (let ((_%$e103178%_ _%deleted103165%_))
                           (if _%$e103178%_ _%$e103178%_ _%probe103161%_)))
                        (if (eqv? _%key103139%_ _%k103168%_)
                            (let ()
                              (vector-set!
                               _%table103142%_
                               _%probe103161%_
                               _%key103139%_)
                              (vector-set!
                               _%table103142%_
                               (##fx+ _%probe103161%_ '1)
                               _%value103140%_))
                            (_%loop103158%_
                             (let ((_%next-probe103183%_
                                    (fx+ _%start103154%_
                                         _%i103163%_
                                         (fx* _%i103163%_ _%i103163%_))))
                               (##fxmodulo
                                _%next-probe103183%_
                                _%size103148%_))
                             (##fx+ _%i103163%_ '1)
                             _%deleted103165%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab103134%_ _%key103135%_ _%value103136%_)
        (if (##fx< (&raw-table-free _%tab103134%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103134%_))
                    '4))
            (__raw-table-rehash! _%tab103134%_)
            '#!void)
        (__eqv-table-set! _%tab103134%_ _%key103135%_ _%value103136%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab103106%_ _%key103107%_ _%value103108%_)
        (let ((_%lock103111%_ (&raw-table-lock _%tab103106%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103116%_ ((_%spin103119%_ '0))
              (if (##fx= (##vector-cas! _%lock103111%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103111%_ '1 (current-thread))
                  (if (##fx< _%spin103119%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103116%_ (##fx+ _%spin103119%_ '1)))
                      (let ((_%owner103125%_ (##vector-ref _%lock103111%_ '1)))
                        (if (eq? _%owner103125%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103125%_)
                                (let () (##thread-yield!) (_%again103116%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103131%_
                 (eqv-table-set! _%tab103106%_ _%key103107%_ _%value103108%_)))
            (##vector-set! _%lock103111%_ '1 '#f)
            (##vector-cas! _%lock103111%_ '0 '0 '1)
            _%$r103131%_))))
    (define __eqv-table-update!
      (lambda (_%tab103057%_
               _%key103058%_
               _%eqv-table-update!103059%_
               _%default103060%_)
        (let ((_%table103062%_ (&raw-table-table _%tab103057%_))
              (_%seed103063%_ (&raw-table-seed _%tab103057%_)))
          (let* ((_%h103065%_ (fxxor (eqv-hash _%key103058%_) _%seed103063%_))
                 (_%size103068%_ (vector-length _%table103062%_))
                 (_%entries103071%_ (##fxquotient _%size103068%_ '2))
                 (_%start103074%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103065%_ _%entries103071%_)
                   '1)))
            (let _%loop103078%_ ((_%probe103081%_ _%start103074%_)
                                 (_%i103083%_ '1)
                                 (_%deleted103085%_ '#f))
              (let ((_%k103088%_ (vector-ref _%table103062%_ _%probe103081%_)))
                (if (eq? _%k103088%_ (macro-unused-obj))
                    (if _%deleted103085%_
                        (begin
                          (vector-set!
                           _%table103062%_
                           _%deleted103085%_
                           _%key103058%_)
                          (vector-set!
                           _%table103062%_
                           (##fx+ _%deleted103085%_ '1)
                           (_%eqv-table-update!103059%_ _%default103060%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103057%_
                              (##fx+ (&raw-table-count _%tab103057%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103062%_
                           _%probe103081%_
                           _%key103058%_)
                          (vector-set!
                           _%table103062%_
                           (##fx+ _%probe103081%_ '1)
                           (_%eqv-table-update!103059%_ _%default103060%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103057%_
                              (##fx- (&raw-table-free _%tab103057%_) '1))
                             (&raw-table-count-set!
                              _%tab103057%_
                              (##fx+ (&raw-table-count _%tab103057%_) '1))))))
                    (if (eq? _%k103088%_ (macro-deleted-obj))
                        (_%loop103078%_
                         (let ((_%next-probe103095%_
                                (fx+ _%start103074%_
                                     _%i103083%_
                                     (fx* _%i103083%_ _%i103083%_))))
                           (##fxmodulo _%next-probe103095%_ _%size103068%_))
                         (##fx+ _%i103083%_ '1)
                         (let ((_%$e103098%_ _%deleted103085%_))
                           (if _%$e103098%_ _%$e103098%_ _%probe103081%_)))
                        (if (eqv? _%key103058%_ _%k103088%_)
                            (let ()
                              (vector-set!
                               _%table103062%_
                               _%probe103081%_
                               _%key103058%_)
                              (vector-set!
                               _%table103062%_
                               (##fx+ _%probe103081%_ '1)
                               (_%eqv-table-update!103059%_
                                (vector-ref
                                 _%table103062%_
                                 (##fx+ _%probe103081%_ '1)))))
                            (_%loop103078%_
                             (let ((_%next-probe103103%_
                                    (fx+ _%start103074%_
                                         _%i103083%_
                                         (fx* _%i103083%_ _%i103083%_))))
                               (##fxmodulo
                                _%next-probe103103%_
                                _%size103068%_))
                             (##fx+ _%i103083%_ '1)
                             _%deleted103085%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab103052%_
               _%key103053%_
               _%eqv-table-update!103054%_
               _%default103055%_)
        (if (##fx< (&raw-table-free _%tab103052%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103052%_))
                    '4))
            (__raw-table-rehash! _%tab103052%_)
            '#!void)
        (__eqv-table-update!
         _%tab103052%_
         _%key103053%_
         _%eqv-table-update!103054%_
         _%default103055%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab103023%_
               _%key103024%_
               _%eqv-table-update!103025%_
               _%default103026%_)
        (let ((_%lock103029%_ (&raw-table-lock _%tab103023%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103034%_ ((_%spin103037%_ '0))
              (if (##fx= (##vector-cas! _%lock103029%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103029%_ '1 (current-thread))
                  (if (##fx< _%spin103037%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103034%_ (##fx+ _%spin103037%_ '1)))
                      (let ((_%owner103043%_ (##vector-ref _%lock103029%_ '1)))
                        (if (eq? _%owner103043%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103043%_)
                                (let () (##thread-yield!) (_%again103034%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103049%_
                 (_%eqv-table-update!103025%_
                  _%tab103023%_
                  _%key103024%_
                  _%eqv-table-update!103025%_
                  _%default103026%_)))
            (##vector-set! _%lock103029%_ '1 '#f)
            (##vector-cas! _%lock103029%_ '0 '0 '1)
            _%$r103049%_))))
    (define eqv-table-delete!
      (lambda (_%tab102980%_ _%key102981%_)
        (let ((_%table102983%_ (&raw-table-table _%tab102980%_))
              (_%seed102985%_ (&raw-table-seed _%tab102980%_)))
          (let* ((_%h102988%_ (fxxor (eqv-hash _%key102981%_) _%seed102985%_))
                 (_%size102991%_ (vector-length _%table102983%_))
                 (_%entries102994%_ (##fxquotient _%size102991%_ '2))
                 (_%start102997%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102988%_ _%entries102994%_)
                   '1)))
            (let _%loop103001%_ ((_%probe103004%_ _%start102997%_)
                                 (_%i103006%_ '1))
              (let ((_%k103009%_ (vector-ref _%table102983%_ _%probe103004%_)))
                (if (eq? _%k103009%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103009%_ (macro-deleted-obj))
                        (_%loop103001%_
                         (let ((_%next-probe103014%_
                                (fx+ _%start102997%_
                                     _%i103006%_
                                     (fx* _%i103006%_ _%i103006%_))))
                           (##fxmodulo _%next-probe103014%_ _%size102991%_))
                         (##fx+ _%i103006%_ '1))
                        (if (eqv? _%key102981%_ _%k103009%_)
                            (let ()
                              (vector-set!
                               _%table102983%_
                               _%probe103004%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102983%_
                               (##fx+ _%probe103004%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102980%_
                                  (##fx- (&raw-table-count _%tab102980%_)
                                         '1)))))
                            (_%loop103001%_
                             (let ((_%next-probe103020%_
                                    (fx+ _%start102997%_
                                         _%i103006%_
                                         (fx* _%i103006%_ _%i103006%_))))
                               (##fxmodulo
                                _%next-probe103020%_
                                _%size102991%_))
                             (##fx+ _%i103006%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab102952%_ _%key102954%_)
        (let ((_%lock102957%_ (&raw-table-lock _%tab102952%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102962%_ ((_%spin102965%_ '0))
              (if (##fx= (##vector-cas! _%lock102957%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102957%_ '1 (current-thread))
                  (if (##fx< _%spin102965%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102962%_ (##fx+ _%spin102965%_ '1)))
                      (let ((_%owner102971%_ (##vector-ref _%lock102957%_ '1)))
                        (if (eq? _%owner102971%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102971%_)
                                (let () (##thread-yield!) (_%again102962%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102977%_ (eqv-table-delete! _%tab102952%_ _%key102954%_)))
            (##vector-set! _%lock102957%_ '1 '#f)
            (##vector-cas! _%lock102957%_ '0 '0 '1)
            _%$r102977%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint102934%_ _%seed102935%_)
        (make-raw-table__1
         _%size-hint102934%_
         symbolic-hash
         eq?
         _%seed102935%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint102941%_ '#f) (_%seed102943%_ '0))
          (make-symbolic-table__% _%size-hint102941%_ _%seed102943%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint102945%_)
        (let ((_%seed102947%_ '0))
          (make-symbolic-table__% _%size-hint102945%_ _%seed102947%_))))
    (define make-symbolic-table
      (lambda _g104237_
        (let ((_g104238_ (##length _g104237_)))
          (cond ((##fx= _g104238_ 0) (apply make-symbolic-table__0 _g104237_))
                ((##fx= _g104238_ 1) (apply make-symbolic-table__1 _g104237_))
                ((##fx= _g104238_ 2) (apply make-symbolic-table__% _g104237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g104237_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint102914%_ _%seed102916%_)
        (make-raw-table/lock__%
         _%size-hint102914%_
         symbolic-hash
         eq?
         _%seed102916%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint102922%_ '#f) (_%seed102924%_ '0))
          (make-symbolic-table/lock__% _%size-hint102922%_ _%seed102924%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint102926%_)
        (let ((_%seed102928%_ '0))
          (make-symbolic-table/lock__% _%size-hint102926%_ _%seed102928%_))))
    (define make-symbolic-table/lock
      (lambda _g104239_
        (let ((_g104240_ (##length _g104239_)))
          (cond ((##fx= _g104240_ 0)
                 (apply make-symbolic-table/lock__0 _g104239_))
                ((##fx= _g104240_ 1)
                 (apply make-symbolic-table/lock__1 _g104239_))
                ((##fx= _g104240_ 2)
                 (apply make-symbolic-table/lock__% _g104239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g104239_))))))
    (define symbolic-table-ref
      (lambda (_%tab102867%_ _%key102868%_ _%default102869%_)
        (let ((_%table102871%_ (&raw-table-table _%tab102867%_))
              (_%seed102872%_ (&raw-table-seed _%tab102867%_)))
          (let* ((_%h102874%_
                  (fxxor (##symbol-hash _%key102868%_) _%seed102872%_))
                 (_%size102877%_ (vector-length _%table102871%_))
                 (_%entries102880%_ (##fxquotient _%size102877%_ '2))
                 (_%start102883%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102874%_ _%entries102880%_)
                   '1)))
            (let _%loop102887%_ ((_%probe102890%_ _%start102883%_)
                                 (_%i102892%_ '1)
                                 (_%deleted102894%_ '#f))
              (let ((_%k102897%_ (vector-ref _%table102871%_ _%probe102890%_)))
                (if (eq? _%k102897%_ (macro-unused-obj))
                    _%default102869%_
                    (if (eq? _%k102897%_ (macro-deleted-obj))
                        (_%loop102887%_
                         (let ((_%next-probe102902%_
                                (fx+ _%start102883%_
                                     _%i102892%_
                                     (fx* _%i102892%_ _%i102892%_))))
                           (##fxmodulo _%next-probe102902%_ _%size102877%_))
                         (##fx+ _%i102892%_ '1)
                         (let ((_%$e102905%_ _%deleted102894%_))
                           (if _%$e102905%_ _%$e102905%_ _%probe102890%_)))
                        (if (eq? _%key102868%_ _%k102897%_)
                            (vector-ref
                             _%table102871%_
                             (##fx+ _%probe102890%_ '1))
                            (_%loop102887%_
                             (let ((_%next-probe102910%_
                                    (fx+ _%start102883%_
                                         _%i102892%_
                                         (fx* _%i102892%_ _%i102892%_))))
                               (##fxmodulo
                                _%next-probe102910%_
                                _%size102877%_))
                             (##fx+ _%i102892%_ '1)
                             _%deleted102894%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab102840%_ _%key102841%_ _%default102842%_)
        (let ((_%lock102844%_ (&raw-table-lock _%tab102840%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102849%_ ((_%spin102852%_ '0))
              (if (##fx= (##vector-cas! _%lock102844%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102844%_ '1 (current-thread))
                  (if (##fx< _%spin102852%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102849%_ (##fx+ _%spin102852%_ '1)))
                      (let ((_%owner102858%_ (##vector-ref _%lock102844%_ '1)))
                        (if (eq? _%owner102858%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102858%_)
                                (let () (##thread-yield!) (_%again102849%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102864%_
                 (symbolic-table-ref
                  _%tab102840%_
                  _%key102841%_
                  _%default102842%_)))
            (##vector-set! _%lock102844%_ '1 '#f)
            (##vector-cas! _%lock102844%_ '0 '0 '1)
            _%$r102864%_))))
    (define __symbolic-table-set!
      (lambda (_%tab102792%_ _%key102793%_ _%value102794%_)
        (let ((_%table102796%_ (&raw-table-table _%tab102792%_))
              (_%seed102797%_ (&raw-table-seed _%tab102792%_)))
          (let* ((_%h102799%_
                  (fxxor (##symbol-hash _%key102793%_) _%seed102797%_))
                 (_%size102802%_ (vector-length _%table102796%_))
                 (_%entries102805%_ (##fxquotient _%size102802%_ '2))
                 (_%start102808%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102799%_ _%entries102805%_)
                   '1)))
            (let _%loop102812%_ ((_%probe102815%_ _%start102808%_)
                                 (_%i102817%_ '1)
                                 (_%deleted102819%_ '#f))
              (let ((_%k102822%_ (vector-ref _%table102796%_ _%probe102815%_)))
                (if (eq? _%k102822%_ (macro-unused-obj))
                    (if _%deleted102819%_
                        (begin
                          (vector-set!
                           _%table102796%_
                           _%deleted102819%_
                           _%key102793%_)
                          (vector-set!
                           _%table102796%_
                           (##fx+ _%deleted102819%_ '1)
                           _%value102794%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102792%_
                              (##fx+ (&raw-table-count _%tab102792%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102796%_
                           _%probe102815%_
                           _%key102793%_)
                          (vector-set!
                           _%table102796%_
                           (##fx+ _%probe102815%_ '1)
                           _%value102794%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102792%_
                              (##fx- (&raw-table-free _%tab102792%_) '1))
                             (&raw-table-count-set!
                              _%tab102792%_
                              (##fx+ (&raw-table-count _%tab102792%_) '1))))))
                    (if (eq? _%k102822%_ (macro-deleted-obj))
                        (_%loop102812%_
                         (let ((_%next-probe102829%_
                                (fx+ _%start102808%_
                                     _%i102817%_
                                     (fx* _%i102817%_ _%i102817%_))))
                           (##fxmodulo _%next-probe102829%_ _%size102802%_))
                         (##fx+ _%i102817%_ '1)
                         (let ((_%$e102832%_ _%deleted102819%_))
                           (if _%$e102832%_ _%$e102832%_ _%probe102815%_)))
                        (if (eq? _%key102793%_ _%k102822%_)
                            (let ()
                              (vector-set!
                               _%table102796%_
                               _%probe102815%_
                               _%key102793%_)
                              (vector-set!
                               _%table102796%_
                               (##fx+ _%probe102815%_ '1)
                               _%value102794%_))
                            (_%loop102812%_
                             (let ((_%next-probe102837%_
                                    (fx+ _%start102808%_
                                         _%i102817%_
                                         (fx* _%i102817%_ _%i102817%_))))
                               (##fxmodulo
                                _%next-probe102837%_
                                _%size102802%_))
                             (##fx+ _%i102817%_ '1)
                             _%deleted102819%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab102788%_ _%key102789%_ _%value102790%_)
        (if (##fx< (&raw-table-free _%tab102788%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102788%_))
                    '4))
            (__raw-table-rehash! _%tab102788%_)
            '#!void)
        (__symbolic-table-set! _%tab102788%_ _%key102789%_ _%value102790%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab102760%_ _%key102761%_ _%value102762%_)
        (let ((_%lock102765%_ (&raw-table-lock _%tab102760%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102770%_ ((_%spin102773%_ '0))
              (if (##fx= (##vector-cas! _%lock102765%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102765%_ '1 (current-thread))
                  (if (##fx< _%spin102773%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102770%_ (##fx+ _%spin102773%_ '1)))
                      (let ((_%owner102779%_ (##vector-ref _%lock102765%_ '1)))
                        (if (eq? _%owner102779%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102779%_)
                                (let () (##thread-yield!) (_%again102770%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102785%_
                 (symbolic-table-set!
                  _%tab102760%_
                  _%key102761%_
                  _%value102762%_)))
            (##vector-set! _%lock102765%_ '1 '#f)
            (##vector-cas! _%lock102765%_ '0 '0 '1)
            _%$r102785%_))))
    (define __symbolic-table-update!
      (lambda (_%tab102711%_
               _%key102712%_
               _%symbolic-table-update!102713%_
               _%default102714%_)
        (let ((_%table102716%_ (&raw-table-table _%tab102711%_))
              (_%seed102717%_ (&raw-table-seed _%tab102711%_)))
          (let* ((_%h102719%_
                  (fxxor (##symbol-hash _%key102712%_) _%seed102717%_))
                 (_%size102722%_ (vector-length _%table102716%_))
                 (_%entries102725%_ (##fxquotient _%size102722%_ '2))
                 (_%start102728%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102719%_ _%entries102725%_)
                   '1)))
            (let _%loop102732%_ ((_%probe102735%_ _%start102728%_)
                                 (_%i102737%_ '1)
                                 (_%deleted102739%_ '#f))
              (let ((_%k102742%_ (vector-ref _%table102716%_ _%probe102735%_)))
                (if (eq? _%k102742%_ (macro-unused-obj))
                    (if _%deleted102739%_
                        (begin
                          (vector-set!
                           _%table102716%_
                           _%deleted102739%_
                           _%key102712%_)
                          (vector-set!
                           _%table102716%_
                           (##fx+ _%deleted102739%_ '1)
                           (_%symbolic-table-update!102713%_
                            _%default102714%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102711%_
                              (##fx+ (&raw-table-count _%tab102711%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102716%_
                           _%probe102735%_
                           _%key102712%_)
                          (vector-set!
                           _%table102716%_
                           (##fx+ _%probe102735%_ '1)
                           (_%symbolic-table-update!102713%_
                            _%default102714%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102711%_
                              (##fx- (&raw-table-free _%tab102711%_) '1))
                             (&raw-table-count-set!
                              _%tab102711%_
                              (##fx+ (&raw-table-count _%tab102711%_) '1))))))
                    (if (eq? _%k102742%_ (macro-deleted-obj))
                        (_%loop102732%_
                         (let ((_%next-probe102749%_
                                (fx+ _%start102728%_
                                     _%i102737%_
                                     (fx* _%i102737%_ _%i102737%_))))
                           (##fxmodulo _%next-probe102749%_ _%size102722%_))
                         (##fx+ _%i102737%_ '1)
                         (let ((_%$e102752%_ _%deleted102739%_))
                           (if _%$e102752%_ _%$e102752%_ _%probe102735%_)))
                        (if (eq? _%key102712%_ _%k102742%_)
                            (let ()
                              (vector-set!
                               _%table102716%_
                               _%probe102735%_
                               _%key102712%_)
                              (vector-set!
                               _%table102716%_
                               (##fx+ _%probe102735%_ '1)
                               (_%symbolic-table-update!102713%_
                                (vector-ref
                                 _%table102716%_
                                 (##fx+ _%probe102735%_ '1)))))
                            (_%loop102732%_
                             (let ((_%next-probe102757%_
                                    (fx+ _%start102728%_
                                         _%i102737%_
                                         (fx* _%i102737%_ _%i102737%_))))
                               (##fxmodulo
                                _%next-probe102757%_
                                _%size102722%_))
                             (##fx+ _%i102737%_ '1)
                             _%deleted102739%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab102706%_
               _%key102707%_
               _%symbolic-table-update!102708%_
               _%default102709%_)
        (if (##fx< (&raw-table-free _%tab102706%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102706%_))
                    '4))
            (__raw-table-rehash! _%tab102706%_)
            '#!void)
        (__symbolic-table-update!
         _%tab102706%_
         _%key102707%_
         _%symbolic-table-update!102708%_
         _%default102709%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab102677%_
               _%key102678%_
               _%symbolic-table-update!102679%_
               _%default102680%_)
        (let ((_%lock102683%_ (&raw-table-lock _%tab102677%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102688%_ ((_%spin102691%_ '0))
              (if (##fx= (##vector-cas! _%lock102683%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102683%_ '1 (current-thread))
                  (if (##fx< _%spin102691%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102688%_ (##fx+ _%spin102691%_ '1)))
                      (let ((_%owner102697%_ (##vector-ref _%lock102683%_ '1)))
                        (if (eq? _%owner102697%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102697%_)
                                (let () (##thread-yield!) (_%again102688%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102703%_
                 (_%symbolic-table-update!102679%_
                  _%tab102677%_
                  _%key102678%_
                  _%symbolic-table-update!102679%_
                  _%default102680%_)))
            (##vector-set! _%lock102683%_ '1 '#f)
            (##vector-cas! _%lock102683%_ '0 '0 '1)
            _%$r102703%_))))
    (define symbolic-table-delete!
      (lambda (_%tab102634%_ _%key102635%_)
        (let ((_%table102637%_ (&raw-table-table _%tab102634%_))
              (_%seed102639%_ (&raw-table-seed _%tab102634%_)))
          (let* ((_%h102642%_
                  (fxxor (##symbol-hash _%key102635%_) _%seed102639%_))
                 (_%size102645%_ (vector-length _%table102637%_))
                 (_%entries102648%_ (##fxquotient _%size102645%_ '2))
                 (_%start102651%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102642%_ _%entries102648%_)
                   '1)))
            (let _%loop102655%_ ((_%probe102658%_ _%start102651%_)
                                 (_%i102660%_ '1))
              (let ((_%k102663%_ (vector-ref _%table102637%_ _%probe102658%_)))
                (if (eq? _%k102663%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102663%_ (macro-deleted-obj))
                        (_%loop102655%_
                         (let ((_%next-probe102668%_
                                (fx+ _%start102651%_
                                     _%i102660%_
                                     (fx* _%i102660%_ _%i102660%_))))
                           (##fxmodulo _%next-probe102668%_ _%size102645%_))
                         (##fx+ _%i102660%_ '1))
                        (if (eq? _%key102635%_ _%k102663%_)
                            (let ()
                              (vector-set!
                               _%table102637%_
                               _%probe102658%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102637%_
                               (##fx+ _%probe102658%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102634%_
                                  (##fx- (&raw-table-count _%tab102634%_)
                                         '1)))))
                            (_%loop102655%_
                             (let ((_%next-probe102674%_
                                    (fx+ _%start102651%_
                                         _%i102660%_
                                         (fx* _%i102660%_ _%i102660%_))))
                               (##fxmodulo
                                _%next-probe102674%_
                                _%size102645%_))
                             (##fx+ _%i102660%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab102606%_ _%key102608%_)
        (let ((_%lock102611%_ (&raw-table-lock _%tab102606%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102616%_ ((_%spin102619%_ '0))
              (if (##fx= (##vector-cas! _%lock102611%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102611%_ '1 (current-thread))
                  (if (##fx< _%spin102619%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102616%_ (##fx+ _%spin102619%_ '1)))
                      (let ((_%owner102625%_ (##vector-ref _%lock102611%_ '1)))
                        (if (eq? _%owner102625%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102625%_)
                                (let () (##thread-yield!) (_%again102616%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102631%_
                 (symbolic-table-delete! _%tab102606%_ _%key102608%_)))
            (##vector-set! _%lock102611%_ '1 '#f)
            (##vector-cas! _%lock102611%_ '0 '0 '1)
            _%$r102631%_))))
    (define make-string-table__%
      (lambda (_%size-hint102588%_ _%seed102589%_)
        (make-raw-table__1
         _%size-hint102588%_
         string-hash
         ##string=?
         _%seed102589%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint102595%_ '#f) (_%seed102597%_ '0))
          (make-string-table__% _%size-hint102595%_ _%seed102597%_))))
    (define make-string-table__1
      (lambda (_%size-hint102599%_)
        (let ((_%seed102601%_ '0))
          (make-string-table__% _%size-hint102599%_ _%seed102601%_))))
    (define make-string-table
      (lambda _g104241_
        (let ((_g104242_ (##length _g104241_)))
          (cond ((##fx= _g104242_ 0) (apply make-string-table__0 _g104241_))
                ((##fx= _g104242_ 1) (apply make-string-table__1 _g104241_))
                ((##fx= _g104242_ 2) (apply make-string-table__% _g104241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g104241_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint102568%_ _%seed102570%_)
        (make-raw-table/lock__%
         _%size-hint102568%_
         string-hash
         ##string=?
         _%seed102570%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint102576%_ '#f) (_%seed102578%_ '0))
          (make-string-table/lock__% _%size-hint102576%_ _%seed102578%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint102580%_)
        (let ((_%seed102582%_ '0))
          (make-string-table/lock__% _%size-hint102580%_ _%seed102582%_))))
    (define make-string-table/lock
      (lambda _g104243_
        (let ((_g104244_ (##length _g104243_)))
          (cond ((##fx= _g104244_ 0)
                 (apply make-string-table/lock__0 _g104243_))
                ((##fx= _g104244_ 1)
                 (apply make-string-table/lock__1 _g104243_))
                ((##fx= _g104244_ 2)
                 (apply make-string-table/lock__% _g104243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g104243_))))))
    (define string-table-ref
      (lambda (_%tab102521%_ _%key102522%_ _%default102523%_)
        (let ((_%table102525%_ (&raw-table-table _%tab102521%_))
              (_%seed102526%_ (&raw-table-seed _%tab102521%_)))
          (let* ((_%h102528%_
                  (fxxor (##string=?-hash _%key102522%_) _%seed102526%_))
                 (_%size102531%_ (vector-length _%table102525%_))
                 (_%entries102534%_ (##fxquotient _%size102531%_ '2))
                 (_%start102537%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102528%_ _%entries102534%_)
                   '1)))
            (let _%loop102541%_ ((_%probe102544%_ _%start102537%_)
                                 (_%i102546%_ '1)
                                 (_%deleted102548%_ '#f))
              (let ((_%k102551%_ (vector-ref _%table102525%_ _%probe102544%_)))
                (if (eq? _%k102551%_ (macro-unused-obj))
                    _%default102523%_
                    (if (eq? _%k102551%_ (macro-deleted-obj))
                        (_%loop102541%_
                         (let ((_%next-probe102556%_
                                (fx+ _%start102537%_
                                     _%i102546%_
                                     (fx* _%i102546%_ _%i102546%_))))
                           (##fxmodulo _%next-probe102556%_ _%size102531%_))
                         (##fx+ _%i102546%_ '1)
                         (let ((_%$e102559%_ _%deleted102548%_))
                           (if _%$e102559%_ _%$e102559%_ _%probe102544%_)))
                        (if (##string=? _%key102522%_ _%k102551%_)
                            (vector-ref
                             _%table102525%_
                             (##fx+ _%probe102544%_ '1))
                            (_%loop102541%_
                             (let ((_%next-probe102564%_
                                    (fx+ _%start102537%_
                                         _%i102546%_
                                         (fx* _%i102546%_ _%i102546%_))))
                               (##fxmodulo
                                _%next-probe102564%_
                                _%size102531%_))
                             (##fx+ _%i102546%_ '1)
                             _%deleted102548%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab102494%_ _%key102495%_ _%default102496%_)
        (let ((_%lock102498%_ (&raw-table-lock _%tab102494%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102503%_ ((_%spin102506%_ '0))
              (if (##fx= (##vector-cas! _%lock102498%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102498%_ '1 (current-thread))
                  (if (##fx< _%spin102506%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102503%_ (##fx+ _%spin102506%_ '1)))
                      (let ((_%owner102512%_ (##vector-ref _%lock102498%_ '1)))
                        (if (eq? _%owner102512%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102512%_)
                                (let () (##thread-yield!) (_%again102503%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102518%_
                 (string-table-ref
                  _%tab102494%_
                  _%key102495%_
                  _%default102496%_)))
            (##vector-set! _%lock102498%_ '1 '#f)
            (##vector-cas! _%lock102498%_ '0 '0 '1)
            _%$r102518%_))))
    (define __string-table-set!
      (lambda (_%tab102446%_ _%key102447%_ _%value102448%_)
        (let ((_%table102450%_ (&raw-table-table _%tab102446%_))
              (_%seed102451%_ (&raw-table-seed _%tab102446%_)))
          (let* ((_%h102453%_
                  (fxxor (##string=?-hash _%key102447%_) _%seed102451%_))
                 (_%size102456%_ (vector-length _%table102450%_))
                 (_%entries102459%_ (##fxquotient _%size102456%_ '2))
                 (_%start102462%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102453%_ _%entries102459%_)
                   '1)))
            (let _%loop102466%_ ((_%probe102469%_ _%start102462%_)
                                 (_%i102471%_ '1)
                                 (_%deleted102473%_ '#f))
              (let ((_%k102476%_ (vector-ref _%table102450%_ _%probe102469%_)))
                (if (eq? _%k102476%_ (macro-unused-obj))
                    (if _%deleted102473%_
                        (begin
                          (vector-set!
                           _%table102450%_
                           _%deleted102473%_
                           _%key102447%_)
                          (vector-set!
                           _%table102450%_
                           (##fx+ _%deleted102473%_ '1)
                           _%value102448%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102446%_
                              (##fx+ (&raw-table-count _%tab102446%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102450%_
                           _%probe102469%_
                           _%key102447%_)
                          (vector-set!
                           _%table102450%_
                           (##fx+ _%probe102469%_ '1)
                           _%value102448%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102446%_
                              (##fx- (&raw-table-free _%tab102446%_) '1))
                             (&raw-table-count-set!
                              _%tab102446%_
                              (##fx+ (&raw-table-count _%tab102446%_) '1))))))
                    (if (eq? _%k102476%_ (macro-deleted-obj))
                        (_%loop102466%_
                         (let ((_%next-probe102483%_
                                (fx+ _%start102462%_
                                     _%i102471%_
                                     (fx* _%i102471%_ _%i102471%_))))
                           (##fxmodulo _%next-probe102483%_ _%size102456%_))
                         (##fx+ _%i102471%_ '1)
                         (let ((_%$e102486%_ _%deleted102473%_))
                           (if _%$e102486%_ _%$e102486%_ _%probe102469%_)))
                        (if (##string=? _%key102447%_ _%k102476%_)
                            (let ()
                              (vector-set!
                               _%table102450%_
                               _%probe102469%_
                               _%key102447%_)
                              (vector-set!
                               _%table102450%_
                               (##fx+ _%probe102469%_ '1)
                               _%value102448%_))
                            (_%loop102466%_
                             (let ((_%next-probe102491%_
                                    (fx+ _%start102462%_
                                         _%i102471%_
                                         (fx* _%i102471%_ _%i102471%_))))
                               (##fxmodulo
                                _%next-probe102491%_
                                _%size102456%_))
                             (##fx+ _%i102471%_ '1)
                             _%deleted102473%_))))))))))
    (define string-table-set!
      (lambda (_%tab102442%_ _%key102443%_ _%value102444%_)
        (if (##fx< (&raw-table-free _%tab102442%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102442%_))
                    '4))
            (__raw-table-rehash! _%tab102442%_)
            '#!void)
        (__string-table-set! _%tab102442%_ _%key102443%_ _%value102444%_)))
    (define string-table-set!/lock
      (lambda (_%tab102414%_ _%key102415%_ _%value102416%_)
        (let ((_%lock102419%_ (&raw-table-lock _%tab102414%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102424%_ ((_%spin102427%_ '0))
              (if (##fx= (##vector-cas! _%lock102419%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102419%_ '1 (current-thread))
                  (if (##fx< _%spin102427%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102424%_ (##fx+ _%spin102427%_ '1)))
                      (let ((_%owner102433%_ (##vector-ref _%lock102419%_ '1)))
                        (if (eq? _%owner102433%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102433%_)
                                (let () (##thread-yield!) (_%again102424%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102439%_
                 (string-table-set!
                  _%tab102414%_
                  _%key102415%_
                  _%value102416%_)))
            (##vector-set! _%lock102419%_ '1 '#f)
            (##vector-cas! _%lock102419%_ '0 '0 '1)
            _%$r102439%_))))
    (define __string-table-update!
      (lambda (_%tab102365%_
               _%key102366%_
               _%string-table-update!102367%_
               _%default102368%_)
        (let ((_%table102370%_ (&raw-table-table _%tab102365%_))
              (_%seed102371%_ (&raw-table-seed _%tab102365%_)))
          (let* ((_%h102373%_
                  (fxxor (##string=?-hash _%key102366%_) _%seed102371%_))
                 (_%size102376%_ (vector-length _%table102370%_))
                 (_%entries102379%_ (##fxquotient _%size102376%_ '2))
                 (_%start102382%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102373%_ _%entries102379%_)
                   '1)))
            (let _%loop102386%_ ((_%probe102389%_ _%start102382%_)
                                 (_%i102391%_ '1)
                                 (_%deleted102393%_ '#f))
              (let ((_%k102396%_ (vector-ref _%table102370%_ _%probe102389%_)))
                (if (eq? _%k102396%_ (macro-unused-obj))
                    (if _%deleted102393%_
                        (begin
                          (vector-set!
                           _%table102370%_
                           _%deleted102393%_
                           _%key102366%_)
                          (vector-set!
                           _%table102370%_
                           (##fx+ _%deleted102393%_ '1)
                           (_%string-table-update!102367%_ _%default102368%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102365%_
                              (##fx+ (&raw-table-count _%tab102365%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102370%_
                           _%probe102389%_
                           _%key102366%_)
                          (vector-set!
                           _%table102370%_
                           (##fx+ _%probe102389%_ '1)
                           (_%string-table-update!102367%_ _%default102368%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102365%_
                              (##fx- (&raw-table-free _%tab102365%_) '1))
                             (&raw-table-count-set!
                              _%tab102365%_
                              (##fx+ (&raw-table-count _%tab102365%_) '1))))))
                    (if (eq? _%k102396%_ (macro-deleted-obj))
                        (_%loop102386%_
                         (let ((_%next-probe102403%_
                                (fx+ _%start102382%_
                                     _%i102391%_
                                     (fx* _%i102391%_ _%i102391%_))))
                           (##fxmodulo _%next-probe102403%_ _%size102376%_))
                         (##fx+ _%i102391%_ '1)
                         (let ((_%$e102406%_ _%deleted102393%_))
                           (if _%$e102406%_ _%$e102406%_ _%probe102389%_)))
                        (if (##string=? _%key102366%_ _%k102396%_)
                            (let ()
                              (vector-set!
                               _%table102370%_
                               _%probe102389%_
                               _%key102366%_)
                              (vector-set!
                               _%table102370%_
                               (##fx+ _%probe102389%_ '1)
                               (_%string-table-update!102367%_
                                (vector-ref
                                 _%table102370%_
                                 (##fx+ _%probe102389%_ '1)))))
                            (_%loop102386%_
                             (let ((_%next-probe102411%_
                                    (fx+ _%start102382%_
                                         _%i102391%_
                                         (fx* _%i102391%_ _%i102391%_))))
                               (##fxmodulo
                                _%next-probe102411%_
                                _%size102376%_))
                             (##fx+ _%i102391%_ '1)
                             _%deleted102393%_))))))))))
    (define string-table-update!
      (lambda (_%tab102360%_
               _%key102361%_
               _%string-table-update!102362%_
               _%default102363%_)
        (if (##fx< (&raw-table-free _%tab102360%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102360%_))
                    '4))
            (__raw-table-rehash! _%tab102360%_)
            '#!void)
        (__string-table-update!
         _%tab102360%_
         _%key102361%_
         _%string-table-update!102362%_
         _%default102363%_)))
    (define string-table-update!/lock
      (lambda (_%tab102331%_
               _%key102332%_
               _%string-table-update!102333%_
               _%default102334%_)
        (let ((_%lock102337%_ (&raw-table-lock _%tab102331%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102342%_ ((_%spin102345%_ '0))
              (if (##fx= (##vector-cas! _%lock102337%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102337%_ '1 (current-thread))
                  (if (##fx< _%spin102345%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102342%_ (##fx+ _%spin102345%_ '1)))
                      (let ((_%owner102351%_ (##vector-ref _%lock102337%_ '1)))
                        (if (eq? _%owner102351%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102351%_)
                                (let () (##thread-yield!) (_%again102342%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102357%_
                 (_%string-table-update!102333%_
                  _%tab102331%_
                  _%key102332%_
                  _%string-table-update!102333%_
                  _%default102334%_)))
            (##vector-set! _%lock102337%_ '1 '#f)
            (##vector-cas! _%lock102337%_ '0 '0 '1)
            _%$r102357%_))))
    (define string-table-delete!
      (lambda (_%tab102288%_ _%key102289%_)
        (let ((_%table102291%_ (&raw-table-table _%tab102288%_))
              (_%seed102293%_ (&raw-table-seed _%tab102288%_)))
          (let* ((_%h102296%_
                  (fxxor (##string=?-hash _%key102289%_) _%seed102293%_))
                 (_%size102299%_ (vector-length _%table102291%_))
                 (_%entries102302%_ (##fxquotient _%size102299%_ '2))
                 (_%start102305%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102296%_ _%entries102302%_)
                   '1)))
            (let _%loop102309%_ ((_%probe102312%_ _%start102305%_)
                                 (_%i102314%_ '1))
              (let ((_%k102317%_ (vector-ref _%table102291%_ _%probe102312%_)))
                (if (eq? _%k102317%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102317%_ (macro-deleted-obj))
                        (_%loop102309%_
                         (let ((_%next-probe102322%_
                                (fx+ _%start102305%_
                                     _%i102314%_
                                     (fx* _%i102314%_ _%i102314%_))))
                           (##fxmodulo _%next-probe102322%_ _%size102299%_))
                         (##fx+ _%i102314%_ '1))
                        (if (##string=? _%key102289%_ _%k102317%_)
                            (let ()
                              (vector-set!
                               _%table102291%_
                               _%probe102312%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102291%_
                               (##fx+ _%probe102312%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102288%_
                                  (##fx- (&raw-table-count _%tab102288%_)
                                         '1)))))
                            (_%loop102309%_
                             (let ((_%next-probe102328%_
                                    (fx+ _%start102305%_
                                         _%i102314%_
                                         (fx* _%i102314%_ _%i102314%_))))
                               (##fxmodulo
                                _%next-probe102328%_
                                _%size102299%_))
                             (##fx+ _%i102314%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab102260%_ _%key102262%_)
        (let ((_%lock102265%_ (&raw-table-lock _%tab102260%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102270%_ ((_%spin102273%_ '0))
              (if (##fx= (##vector-cas! _%lock102265%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102265%_ '1 (current-thread))
                  (if (##fx< _%spin102273%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102270%_ (##fx+ _%spin102273%_ '1)))
                      (let ((_%owner102279%_ (##vector-ref _%lock102265%_ '1)))
                        (if (eq? _%owner102279%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102279%_)
                                (let () (##thread-yield!) (_%again102270%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102285%_
                 (string-table-delete! _%tab102260%_ _%key102262%_)))
            (##vector-set! _%lock102265%_ '1 '#f)
            (##vector-cas! _%lock102265%_ '0 '0 '1)
            _%$r102285%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint102242%_ _%seed102243%_)
        (make-raw-table__1
         _%size-hint102242%_
         immediate-hash
         eq?
         _%seed102243%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint102249%_ '#f) (_%seed102251%_ '0))
          (make-immediate-table__% _%size-hint102249%_ _%seed102251%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint102253%_)
        (let ((_%seed102255%_ '0))
          (make-immediate-table__% _%size-hint102253%_ _%seed102255%_))))
    (define make-immediate-table
      (lambda _g104245_
        (let ((_g104246_ (##length _g104245_)))
          (cond ((##fx= _g104246_ 0) (apply make-immediate-table__0 _g104245_))
                ((##fx= _g104246_ 1) (apply make-immediate-table__1 _g104245_))
                ((##fx= _g104246_ 2) (apply make-immediate-table__% _g104245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g104245_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint102222%_ _%seed102224%_)
        (make-raw-table/lock__%
         _%size-hint102222%_
         immediate-hash
         eq?
         _%seed102224%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint102230%_ '#f) (_%seed102232%_ '0))
          (make-immediate-table/lock__% _%size-hint102230%_ _%seed102232%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint102234%_)
        (let ((_%seed102236%_ '0))
          (make-immediate-table/lock__% _%size-hint102234%_ _%seed102236%_))))
    (define make-immediate-table/lock
      (lambda _g104247_
        (let ((_g104248_ (##length _g104247_)))
          (cond ((##fx= _g104248_ 0)
                 (apply make-immediate-table/lock__0 _g104247_))
                ((##fx= _g104248_ 1)
                 (apply make-immediate-table/lock__1 _g104247_))
                ((##fx= _g104248_ 2)
                 (apply make-immediate-table/lock__% _g104247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g104247_))))))
    (define immediate-table-ref
      (lambda (_%tab102175%_ _%key102176%_ _%default102177%_)
        (let ((_%table102179%_ (&raw-table-table _%tab102175%_))
              (_%seed102180%_ (&raw-table-seed _%tab102175%_)))
          (let* ((_%h102182%_
                  (fxxor (immediate-hash _%key102176%_) _%seed102180%_))
                 (_%size102185%_ (vector-length _%table102179%_))
                 (_%entries102188%_ (##fxquotient _%size102185%_ '2))
                 (_%start102191%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102182%_ _%entries102188%_)
                   '1)))
            (let _%loop102195%_ ((_%probe102198%_ _%start102191%_)
                                 (_%i102200%_ '1)
                                 (_%deleted102202%_ '#f))
              (let ((_%k102205%_ (vector-ref _%table102179%_ _%probe102198%_)))
                (if (eq? _%k102205%_ (macro-unused-obj))
                    _%default102177%_
                    (if (eq? _%k102205%_ (macro-deleted-obj))
                        (_%loop102195%_
                         (let ((_%next-probe102210%_
                                (fx+ _%start102191%_
                                     _%i102200%_
                                     (fx* _%i102200%_ _%i102200%_))))
                           (##fxmodulo _%next-probe102210%_ _%size102185%_))
                         (##fx+ _%i102200%_ '1)
                         (let ((_%$e102213%_ _%deleted102202%_))
                           (if _%$e102213%_ _%$e102213%_ _%probe102198%_)))
                        (if (eq? _%key102176%_ _%k102205%_)
                            (vector-ref
                             _%table102179%_
                             (##fx+ _%probe102198%_ '1))
                            (_%loop102195%_
                             (let ((_%next-probe102218%_
                                    (fx+ _%start102191%_
                                         _%i102200%_
                                         (fx* _%i102200%_ _%i102200%_))))
                               (##fxmodulo
                                _%next-probe102218%_
                                _%size102185%_))
                             (##fx+ _%i102200%_ '1)
                             _%deleted102202%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab102148%_ _%key102149%_ _%default102150%_)
        (let ((_%lock102152%_ (&raw-table-lock _%tab102148%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102157%_ ((_%spin102160%_ '0))
              (if (##fx= (##vector-cas! _%lock102152%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102152%_ '1 (current-thread))
                  (if (##fx< _%spin102160%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102157%_ (##fx+ _%spin102160%_ '1)))
                      (let ((_%owner102166%_ (##vector-ref _%lock102152%_ '1)))
                        (if (eq? _%owner102166%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102166%_)
                                (let () (##thread-yield!) (_%again102157%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102172%_
                 (immediate-table-ref
                  _%tab102148%_
                  _%key102149%_
                  _%default102150%_)))
            (##vector-set! _%lock102152%_ '1 '#f)
            (##vector-cas! _%lock102152%_ '0 '0 '1)
            _%$r102172%_))))
    (define __immediate-table-set!
      (lambda (_%tab102100%_ _%key102101%_ _%value102102%_)
        (let ((_%table102104%_ (&raw-table-table _%tab102100%_))
              (_%seed102105%_ (&raw-table-seed _%tab102100%_)))
          (let* ((_%h102107%_
                  (fxxor (immediate-hash _%key102101%_) _%seed102105%_))
                 (_%size102110%_ (vector-length _%table102104%_))
                 (_%entries102113%_ (##fxquotient _%size102110%_ '2))
                 (_%start102116%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102107%_ _%entries102113%_)
                   '1)))
            (let _%loop102120%_ ((_%probe102123%_ _%start102116%_)
                                 (_%i102125%_ '1)
                                 (_%deleted102127%_ '#f))
              (let ((_%k102130%_ (vector-ref _%table102104%_ _%probe102123%_)))
                (if (eq? _%k102130%_ (macro-unused-obj))
                    (if _%deleted102127%_
                        (begin
                          (vector-set!
                           _%table102104%_
                           _%deleted102127%_
                           _%key102101%_)
                          (vector-set!
                           _%table102104%_
                           (##fx+ _%deleted102127%_ '1)
                           _%value102102%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102100%_
                              (##fx+ (&raw-table-count _%tab102100%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102104%_
                           _%probe102123%_
                           _%key102101%_)
                          (vector-set!
                           _%table102104%_
                           (##fx+ _%probe102123%_ '1)
                           _%value102102%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102100%_
                              (##fx- (&raw-table-free _%tab102100%_) '1))
                             (&raw-table-count-set!
                              _%tab102100%_
                              (##fx+ (&raw-table-count _%tab102100%_) '1))))))
                    (if (eq? _%k102130%_ (macro-deleted-obj))
                        (_%loop102120%_
                         (let ((_%next-probe102137%_
                                (fx+ _%start102116%_
                                     _%i102125%_
                                     (fx* _%i102125%_ _%i102125%_))))
                           (##fxmodulo _%next-probe102137%_ _%size102110%_))
                         (##fx+ _%i102125%_ '1)
                         (let ((_%$e102140%_ _%deleted102127%_))
                           (if _%$e102140%_ _%$e102140%_ _%probe102123%_)))
                        (if (eq? _%key102101%_ _%k102130%_)
                            (let ()
                              (vector-set!
                               _%table102104%_
                               _%probe102123%_
                               _%key102101%_)
                              (vector-set!
                               _%table102104%_
                               (##fx+ _%probe102123%_ '1)
                               _%value102102%_))
                            (_%loop102120%_
                             (let ((_%next-probe102145%_
                                    (fx+ _%start102116%_
                                         _%i102125%_
                                         (fx* _%i102125%_ _%i102125%_))))
                               (##fxmodulo
                                _%next-probe102145%_
                                _%size102110%_))
                             (##fx+ _%i102125%_ '1)
                             _%deleted102127%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab102096%_ _%key102097%_ _%value102098%_)
        (if (##fx< (&raw-table-free _%tab102096%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102096%_))
                    '4))
            (__raw-table-rehash! _%tab102096%_)
            '#!void)
        (__immediate-table-set! _%tab102096%_ _%key102097%_ _%value102098%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab102068%_ _%key102069%_ _%value102070%_)
        (let ((_%lock102073%_ (&raw-table-lock _%tab102068%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102078%_ ((_%spin102081%_ '0))
              (if (##fx= (##vector-cas! _%lock102073%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102073%_ '1 (current-thread))
                  (if (##fx< _%spin102081%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102078%_ (##fx+ _%spin102081%_ '1)))
                      (let ((_%owner102087%_ (##vector-ref _%lock102073%_ '1)))
                        (if (eq? _%owner102087%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102087%_)
                                (let () (##thread-yield!) (_%again102078%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102093%_
                 (immediate-table-set!
                  _%tab102068%_
                  _%key102069%_
                  _%value102070%_)))
            (##vector-set! _%lock102073%_ '1 '#f)
            (##vector-cas! _%lock102073%_ '0 '0 '1)
            _%$r102093%_))))
    (define __immediate-table-update!
      (lambda (_%tab102019%_
               _%key102020%_
               _%immediate-table-update!102021%_
               _%default102022%_)
        (let ((_%table102024%_ (&raw-table-table _%tab102019%_))
              (_%seed102025%_ (&raw-table-seed _%tab102019%_)))
          (let* ((_%h102027%_
                  (fxxor (immediate-hash _%key102020%_) _%seed102025%_))
                 (_%size102030%_ (vector-length _%table102024%_))
                 (_%entries102033%_ (##fxquotient _%size102030%_ '2))
                 (_%start102036%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102027%_ _%entries102033%_)
                   '1)))
            (let _%loop102040%_ ((_%probe102043%_ _%start102036%_)
                                 (_%i102045%_ '1)
                                 (_%deleted102047%_ '#f))
              (let ((_%k102050%_ (vector-ref _%table102024%_ _%probe102043%_)))
                (if (eq? _%k102050%_ (macro-unused-obj))
                    (if _%deleted102047%_
                        (begin
                          (vector-set!
                           _%table102024%_
                           _%deleted102047%_
                           _%key102020%_)
                          (vector-set!
                           _%table102024%_
                           (##fx+ _%deleted102047%_ '1)
                           (_%immediate-table-update!102021%_
                            _%default102022%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102019%_
                              (##fx+ (&raw-table-count _%tab102019%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102024%_
                           _%probe102043%_
                           _%key102020%_)
                          (vector-set!
                           _%table102024%_
                           (##fx+ _%probe102043%_ '1)
                           (_%immediate-table-update!102021%_
                            _%default102022%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102019%_
                              (##fx- (&raw-table-free _%tab102019%_) '1))
                             (&raw-table-count-set!
                              _%tab102019%_
                              (##fx+ (&raw-table-count _%tab102019%_) '1))))))
                    (if (eq? _%k102050%_ (macro-deleted-obj))
                        (_%loop102040%_
                         (let ((_%next-probe102057%_
                                (fx+ _%start102036%_
                                     _%i102045%_
                                     (fx* _%i102045%_ _%i102045%_))))
                           (##fxmodulo _%next-probe102057%_ _%size102030%_))
                         (##fx+ _%i102045%_ '1)
                         (let ((_%$e102060%_ _%deleted102047%_))
                           (if _%$e102060%_ _%$e102060%_ _%probe102043%_)))
                        (if (eq? _%key102020%_ _%k102050%_)
                            (let ()
                              (vector-set!
                               _%table102024%_
                               _%probe102043%_
                               _%key102020%_)
                              (vector-set!
                               _%table102024%_
                               (##fx+ _%probe102043%_ '1)
                               (_%immediate-table-update!102021%_
                                (vector-ref
                                 _%table102024%_
                                 (##fx+ _%probe102043%_ '1)))))
                            (_%loop102040%_
                             (let ((_%next-probe102065%_
                                    (fx+ _%start102036%_
                                         _%i102045%_
                                         (fx* _%i102045%_ _%i102045%_))))
                               (##fxmodulo
                                _%next-probe102065%_
                                _%size102030%_))
                             (##fx+ _%i102045%_ '1)
                             _%deleted102047%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab102014%_
               _%key102015%_
               _%immediate-table-update!102016%_
               _%default102017%_)
        (if (##fx< (&raw-table-free _%tab102014%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102014%_))
                    '4))
            (__raw-table-rehash! _%tab102014%_)
            '#!void)
        (__immediate-table-update!
         _%tab102014%_
         _%key102015%_
         _%immediate-table-update!102016%_
         _%default102017%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab101985%_
               _%key101986%_
               _%immediate-table-update!101987%_
               _%default101988%_)
        (let ((_%lock101991%_ (&raw-table-lock _%tab101985%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101996%_ ((_%spin101999%_ '0))
              (if (##fx= (##vector-cas! _%lock101991%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101991%_ '1 (current-thread))
                  (if (##fx< _%spin101999%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101996%_ (##fx+ _%spin101999%_ '1)))
                      (let ((_%owner102005%_ (##vector-ref _%lock101991%_ '1)))
                        (if (eq? _%owner102005%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102005%_)
                                (let () (##thread-yield!) (_%again101996%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102011%_
                 (_%immediate-table-update!101987%_
                  _%tab101985%_
                  _%key101986%_
                  _%immediate-table-update!101987%_
                  _%default101988%_)))
            (##vector-set! _%lock101991%_ '1 '#f)
            (##vector-cas! _%lock101991%_ '0 '0 '1)
            _%$r102011%_))))
    (define immediate-table-delete!
      (lambda (_%tab101942%_ _%key101943%_)
        (let ((_%table101945%_ (&raw-table-table _%tab101942%_))
              (_%seed101947%_ (&raw-table-seed _%tab101942%_)))
          (let* ((_%h101950%_
                  (fxxor (immediate-hash _%key101943%_) _%seed101947%_))
                 (_%size101953%_ (vector-length _%table101945%_))
                 (_%entries101956%_ (##fxquotient _%size101953%_ '2))
                 (_%start101959%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101950%_ _%entries101956%_)
                   '1)))
            (let _%loop101963%_ ((_%probe101966%_ _%start101959%_)
                                 (_%i101968%_ '1))
              (let ((_%k101971%_ (vector-ref _%table101945%_ _%probe101966%_)))
                (if (eq? _%k101971%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101971%_ (macro-deleted-obj))
                        (_%loop101963%_
                         (let ((_%next-probe101976%_
                                (fx+ _%start101959%_
                                     _%i101968%_
                                     (fx* _%i101968%_ _%i101968%_))))
                           (##fxmodulo _%next-probe101976%_ _%size101953%_))
                         (##fx+ _%i101968%_ '1))
                        (if (eq? _%key101943%_ _%k101971%_)
                            (let ()
                              (vector-set!
                               _%table101945%_
                               _%probe101966%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101945%_
                               (##fx+ _%probe101966%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101942%_
                                  (##fx- (&raw-table-count _%tab101942%_)
                                         '1)))))
                            (_%loop101963%_
                             (let ((_%next-probe101982%_
                                    (fx+ _%start101959%_
                                         _%i101968%_
                                         (fx* _%i101968%_ _%i101968%_))))
                               (##fxmodulo
                                _%next-probe101982%_
                                _%size101953%_))
                             (##fx+ _%i101968%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab101914%_ _%key101916%_)
        (let ((_%lock101919%_ (&raw-table-lock _%tab101914%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101924%_ ((_%spin101927%_ '0))
              (if (##fx= (##vector-cas! _%lock101919%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101919%_ '1 (current-thread))
                  (if (##fx< _%spin101927%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101924%_ (##fx+ _%spin101927%_ '1)))
                      (let ((_%owner101933%_ (##vector-ref _%lock101919%_ '1)))
                        (if (eq? _%owner101933%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101933%_)
                                (let () (##thread-yield!) (_%again101924%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101939%_
                 (immediate-table-delete! _%tab101914%_ _%key101916%_)))
            (##vector-set! _%lock101919%_ '1 '#f)
            (##vector-cas! _%lock101919%_ '0 '0 '1)
            _%$r101939%_))))
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
      (lambda (_%tab101912%_)
        (##unchecked-structure-ref
         _%tab101912%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab101910%_)
        (##unchecked-structure-ref
         _%tab101910%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab101908%_)
        (##unchecked-structure-ref
         _%tab101908%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab101905%_ _%val101906%_)
        (##unchecked-structure-set!
         _%tab101905%_
         _%val101906%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab101902%_ _%val101903%_)
        (##unchecked-structure-set!
         _%tab101902%_
         _%val101903%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab101899%_ _%val101900%_)
        (##unchecked-structure-set!
         _%tab101899%_
         _%val101900%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint101863%_
               _%klass101864%_
               _%flags101865%_
               _%lock101866%_)
        (let ((_%gcht101868%_
               (__gc-table-new
                (if (fixnum? _%size-hint101863%_) _%size-hint101863%_ '16)
                _%flags101865%_)))
          (##structure _%klass101864%_ _%gcht101868%_ '#f _%lock101866%_))))
    (define make-gc-table__0
      (lambda (_%size-hint101873%_)
        (let* ((_%klass101875%_ __gc-table::t)
               (_%flags101877%_ '0)
               (_%lock101879%_ '#f))
          (make-gc-table__%
           _%size-hint101873%_
           _%klass101875%_
           _%flags101877%_
           _%lock101879%_))))
    (define make-gc-table__1
      (lambda (_%size-hint101881%_ _%klass101882%_)
        (let* ((_%flags101884%_ '0) (_%lock101886%_ '#f))
          (make-gc-table__%
           _%size-hint101881%_
           _%klass101882%_
           _%flags101884%_
           _%lock101886%_))))
    (define make-gc-table__2
      (lambda (_%size-hint101888%_ _%klass101889%_ _%flags101890%_)
        (let ((_%lock101892%_ '#f))
          (make-gc-table__%
           _%size-hint101888%_
           _%klass101889%_
           _%flags101890%_
           _%lock101892%_))))
    (define make-gc-table
      (lambda _g104249_
        (let ((_g104250_ (##length _g104249_)))
          (cond ((##fx= _g104250_ 1) (apply make-gc-table__0 _g104249_))
                ((##fx= _g104250_ 2) (apply make-gc-table__1 _g104249_))
                ((##fx= _g104250_ 3) (apply make-gc-table__2 _g104249_))
                ((##fx= _g104250_ 4) (apply make-gc-table__% _g104249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g104249_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint101840%_ _%klass101841%_ _%flags101842%_)
        (make-gc-table__%
         _%size-hint101840%_
         _%klass101841%_
         _%flags101842%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint101847%_)
        (let* ((_%klass101849%_ __gc-table::t) (_%flags101851%_ '0))
          (make-gc-table/lock__%
           _%size-hint101847%_
           _%klass101849%_
           _%flags101851%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint101853%_ _%klass101854%_)
        (let ((_%flags101856%_ '0))
          (make-gc-table/lock__%
           _%size-hint101853%_
           _%klass101854%_
           _%flags101856%_))))
    (define make-gc-table/lock
      (lambda _g104251_
        (let ((_g104252_ (##length _g104251_)))
          (cond ((##fx= _g104252_ 1) (apply make-gc-table/lock__0 _g104251_))
                ((##fx= _g104252_ 2) (apply make-gc-table/lock__1 _g104251_))
                ((##fx= _g104252_ 3) (apply make-gc-table/lock__% _g104251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g104251_))))))
    (define __gc-table-immediate
      (lambda (_%tab101831%_)
        (let ((_%$e101833%_ (&gc-table-immediate _%tab101831%_)))
          (if _%$e101833%_
              _%$e101833%_
              (let ((_%immediate101837%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab101831%_ _%immediate101837%_)
                _%immediate101837%_)))))
    (define __gc-table-new
      (lambda (_%size101821%_ _%flags101822%_)
        (let* ((_%flags101824%_
                (##fxand _%flags101822%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags101826%_
                (fxior _%flags101824%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht101828%_
                (##gc-hash-table-allocate
                 _%size101821%_
                 _%flags101826%_
                 __gc-table-loads)))
          _%gcht101828%_)))
    (define __gc-table-e
      (lambda (_%tab101816%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht101819%_ (&gc-table-gcht _%tab101816%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht101819%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht101819%_
              (begin
                (__gc-table-rehash! _%tab101816%_)
                (&gc-table-gcht _%tab101816%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab101807%_)
        (let* ((_%old-table101809%_ (&gc-table-gcht _%tab101807%_))
               (_%new-table101811%_
                (##gc-hash-table-resize! _%old-table101809%_ __gc-table-loads))
               (_%gcht101813%_
                (##gc-hash-table-rehash!
                 _%old-table101809%_
                 _%new-table101811%_)))
          (&gc-table-gcht-set! _%tab101807%_ _%gcht101813%_))))
    (define gc-table-ref
      (lambda (_%tab101791%_ _%key101792%_ _%default101793%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101792%_)
            (let* ((_%gcht101797%_ (__gc-table-e _%tab101791%_))
                   (_%value101799%_
                    (##gc-hash-table-ref _%gcht101797%_ _%key101792%_)))
              (if (eq? _%value101799%_ (macro-unused-obj))
                  _%default101793%_
                  _%value101799%_))
            (let ((_%$e101801%_ (&gc-table-immediate _%tab101791%_)))
              (if _%$e101801%_
                  ((lambda (_%immediate101804%_)
                     (immediate-table-ref
                      _%immediate101804%_
                      _%key101792%_
                      _%default101793%_))
                   _%$e101801%_)
                  _%default101793%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab101767%_ _%key101768%_ _%default101769%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101773%_ ((_%spin101776%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101767%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101767%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101776%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101773%_ (##fx+ _%spin101776%_ '1)))
                    (let ((_%owner101782%_
                           (##vector-ref (&gc-table-lock _%tab101767%_) '1)))
                      (if (eq? _%owner101782%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101782%_)
                              (let () (##thread-yield!) (_%again101773%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101788%_
               (gc-table-ref _%tab101767%_ _%key101768%_ _%default101769%_)))
          (##vector-set! (&gc-table-lock _%tab101767%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101767%_) '0 '0 '1)
          _%$r101788%_)))
    (define gc-table-set!
      (lambda (_%tab101760%_ _%key101761%_ _%value101762%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101761%_)
            (let ((_%gcht101765%_ (__gc-table-e _%tab101760%_)))
              (if (##gc-hash-table-set!
                   _%gcht101765%_
                   _%key101761%_
                   _%value101762%_)
                  (begin
                    (__gc-table-rehash! _%tab101760%_)
                    (gc-table-set!
                     _%tab101760%_
                     _%key101761%_
                     _%value101762%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab101760%_)
             _%key101761%_
             _%value101762%_))))
    (define gc-table-set/lock!
      (lambda (_%tab101736%_ _%key101737%_ _%value101738%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101742%_ ((_%spin101745%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101736%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101736%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101745%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101742%_ (##fx+ _%spin101745%_ '1)))
                    (let ((_%owner101751%_
                           (##vector-ref (&gc-table-lock _%tab101736%_) '1)))
                      (if (eq? _%owner101751%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101751%_)
                              (let () (##thread-yield!) (_%again101742%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101757%_
               (gc-table-set! _%tab101736%_ _%key101737%_ _%value101738%_)))
          (##vector-set! (&gc-table-lock _%tab101736%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101736%_) '0 '0 '1)
          _%$r101757%_)))
    (define gc-table-update!
      (lambda (_%tab101729%_ _%key101730%_ _%update101731%_ _%default101732%_)
        (if (##mem-allocated? _%key101730%_)
            (let ((_%value101734%_
                   (gc-table-ref
                    _%tab101729%_
                    _%key101730%_
                    _%default101732%_)))
              (gc-table-set!
               _%tab101729%_
               _%key101730%_
               (_%update101731%_ _%value101734%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab101729%_)
             _%key101730%_
             _%update101731%_
             _%default101732%_))))
    (define gc-table-update!/lock
      (lambda (_%tab101704%_ _%key101705%_ _%update101706%_ _%default101707%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101711%_ ((_%spin101714%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101704%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101704%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101714%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101711%_ (##fx+ _%spin101714%_ '1)))
                    (let ((_%owner101720%_
                           (##vector-ref (&gc-table-lock _%tab101704%_) '1)))
                      (if (eq? _%owner101720%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101720%_)
                              (let () (##thread-yield!) (_%again101711%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101726%_
               (gc-table-update!
                _%tab101704%_
                _%key101705%_
                _%update101706%_
                _%default101707%_)))
          (##vector-set! (&gc-table-lock _%tab101704%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101704%_) '0 '0 '1)
          _%$r101726%_)))
    (define gc-table-delete!
      (lambda (_%tab101692%_ _%key101693%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101693%_)
            (let ((_%gcht101697%_ (__gc-table-e _%tab101692%_)))
              (if (##gc-hash-table-set!
                   _%gcht101697%_
                   _%key101693%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab101692%_)
                    (gc-table-delete! _%tab101692%_ _%key101693%_))
                  '#!void))
            (let ((_%$e101699%_ (&gc-table-immediate _%tab101692%_)))
              (if _%$e101699%_
                  ((lambda (_%immediate101702%_)
                     (immediate-table-delete!
                      _%immediate101702%_
                      _%key101693%_))
                   _%$e101699%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab101669%_ _%key101670%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101674%_ ((_%spin101677%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101669%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101669%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101677%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101674%_ (##fx+ _%spin101677%_ '1)))
                    (let ((_%owner101683%_
                           (##vector-ref (&gc-table-lock _%tab101669%_) '1)))
                      (if (eq? _%owner101683%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101683%_)
                              (let () (##thread-yield!) (_%again101674%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101689%_ (gc-table-delete! _%tab101669%_ _%key101670%_)))
          (##vector-set! (&gc-table-lock _%tab101669%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101669%_) '0 '0 '1)
          _%$r101689%_)))
    (define gc-table-for-each
      (lambda (_%tab101658%_ _%proc101659%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht101662%_ (__gc-table-e _%tab101658%_)))
            (##gc-hash-table-for-each _%proc101659%_ _%gcht101662%_))
          (let ((_%$e101664%_ (&gc-table-immediate _%tab101658%_)))
            (if _%$e101664%_
                ((lambda (_%immediate101667%_)
                   (raw-table-for-each _%immediate101667%_ _%proc101659%_))
                 _%$e101664%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab101635%_ _%proc101636%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101640%_ ((_%spin101643%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101635%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101635%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101643%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101640%_ (##fx+ _%spin101643%_ '1)))
                    (let ((_%owner101649%_
                           (##vector-ref (&gc-table-lock _%tab101635%_) '1)))
                      (if (eq? _%owner101649%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101649%_)
                              (let () (##thread-yield!) (_%again101640%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101655%_ (gc-table-for-each _%tab101635%_ _%proc101636%_)))
          (##vector-set! (&gc-table-lock _%tab101635%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101635%_) '0 '0 '1)
          _%$r101655%_)))
    (define gc-table-copy
      (lambda (_%tab101623%_)
        (let* ((_%gcht101625%_ (__gc-table-e _%tab101623%_))
               (_%new-table101627%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht101625%_)
                 (macro-gc-hash-table-flags _%gcht101625%_)))
               (_%result101629%_
                (##structure
                 (##structure-type _%tab101623%_)
                 _%new-table101627%_
                 '#f)))
          (gc-table-for-each
           _%tab101623%_
           (lambda (_%k101632%_ _%v101633%_)
             (gc-table-set! _%result101629%_ _%k101632%_ _%v101633%_)))
          _%result101629%_)))
    (define gc-table-copy/lock
      (lambda (_%tab101601%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101605%_ ((_%spin101608%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101601%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101601%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101608%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101605%_ (##fx+ _%spin101608%_ '1)))
                    (let ((_%owner101614%_
                           (##vector-ref (&gc-table-lock _%tab101601%_) '1)))
                      (if (eq? _%owner101614%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101614%_)
                              (let () (##thread-yield!) (_%again101605%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101620%_ (gc-table-copy _%tab101601%_)))
          (##vector-set! (&gc-table-lock _%tab101601%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101601%_) '0 '0 '1)
          _%$r101620%_)))
    (define gc-table-clear!
      (lambda (_%tab101594%_)
        (let* ((_%gcht101596%_ (__gc-table-e _%tab101594%_))
               (_%new-table101598%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht101596%_))))
          (&gc-table-gcht-set! _%tab101594%_ _%new-table101598%_)
          (&gc-table-immediate-set! _%tab101594%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab101572%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101576%_ ((_%spin101579%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101572%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101572%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101579%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101576%_ (##fx+ _%spin101579%_ '1)))
                    (let ((_%owner101585%_
                           (##vector-ref (&gc-table-lock _%tab101572%_) '1)))
                      (if (eq? _%owner101585%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101585%_)
                              (let () (##thread-yield!) (_%again101576%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101591%_ (gc-table-clear! _%tab101572%_)))
          (##vector-set! (&gc-table-lock _%tab101572%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101572%_) '0 '0 '1)
          _%$r101591%_)))
    (define gc-table-length
      (lambda (_%tab101564%_)
        (let ((_%gcht101566%_ (__gc-table-e _%tab101564%_)))
          (fx+ (macro-gc-hash-table-count _%gcht101566%_)
               (let ((_%$e101568%_ (&gc-table-immediate _%tab101564%_)))
                 (if _%$e101568%_ (&raw-table-count _%$e101568%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab101542%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101546%_ ((_%spin101549%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101542%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101542%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101549%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101546%_ (##fx+ _%spin101549%_ '1)))
                    (let ((_%owner101555%_
                           (##vector-ref (&gc-table-lock _%tab101542%_) '1)))
                      (if (eq? _%owner101555%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101555%_)
                              (let () (##thread-yield!) (_%again101546%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101561%_ (gc-table-length _%tab101542%_)))
          (##vector-set! (&gc-table-lock _%tab101542%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101542%_) '0 '0 '1)
          _%$r101561%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj101512%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101517%_ ((_%spin101520%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin101520%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101517%_ (##fx+ _%spin101520%_ '1)))
                      (let ((_%owner101526%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner101526%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101526%_)
                                (let () (##thread-yield!) (_%again101517%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101539%_
                 (let ((_%val101532%_
                        (gc-table-ref __object-eq-hash _%obj101512%_ '#f)))
                   (if _%val101532%_
                       _%val101532%_
                       (let ((_%h101534%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e101536%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e101536%_ _%$e101536%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj101512%_
                          _%h101534%_)
                         _%h101534%_)))))
            (##vector-set! __object-eq-hash-lock '1 '#f)
            (##vector-cas! __object-eq-hash-lock '0 '0 '1)
            _%$r101539%_))))))
