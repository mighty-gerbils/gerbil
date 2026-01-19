(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1768865821)
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
      (lambda (_%tab103861%_)
        (##unchecked-structure-ref
         _%tab103861%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab103859%_)
        (##unchecked-structure-ref
         _%tab103859%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab103857%_)
        (##unchecked-structure-ref
         _%tab103857%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab103855%_)
        (##unchecked-structure-ref
         _%tab103855%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab103853%_)
        (##unchecked-structure-ref
         _%tab103853%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab103851%_)
        (##unchecked-structure-ref
         _%tab103851%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab103849%_)
        (##unchecked-structure-ref
         _%tab103849%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab103846%_ _%val103847%_)
        (##unchecked-structure-set!
         _%tab103846%_
         _%val103847%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab103843%_ _%val103844%_)
        (##unchecked-structure-set!
         _%tab103843%_
         _%val103844%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab103840%_ _%val103841%_)
        (##unchecked-structure-set!
         _%tab103840%_
         _%val103841%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab103837%_ _%val103838%_)
        (##unchecked-structure-set!
         _%tab103837%_
         _%val103838%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab103834%_ _%val103835%_)
        (##unchecked-structure-set!
         _%tab103834%_
         _%val103835%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab103831%_ _%val103832%_)
        (##unchecked-structure-set!
         _%tab103831%_
         _%val103832%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab103828%_ _%val103829%_)
        (##unchecked-structure-set!
         _%tab103828%_
         _%val103829%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint103826%_)
        (if (and (fixnum? _%size-hint103826%_) (##fx> _%size-hint103826%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint103826%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint103791%_
               _%hash103792%_
               _%test103793%_
               _%seed103794%_
               _%lock103795%_)
        (let* ((_%size103797%_ (raw-table-size-hint->size _%size-hint103791%_))
               (_%table103799%_
                (##make-vector _%size103797%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table103799%_
           '0
           (##fxquotient _%size103797%_ '2)
           _%hash103792%_
           _%test103793%_
           _%seed103794%_
           _%lock103795%_))))
    (define make-raw-table__0
      (lambda (_%size-hint103805%_ _%hash103806%_ _%test103807%_)
        (let* ((_%seed103809%_ '0) (_%lock103811%_ '#f))
          (make-raw-table__%
           _%size-hint103805%_
           _%hash103806%_
           _%test103807%_
           _%seed103809%_
           _%lock103811%_))))
    (define make-raw-table__1
      (lambda (_%size-hint103813%_
               _%hash103814%_
               _%test103815%_
               _%seed103816%_)
        (let ((_%lock103818%_ '#f))
          (make-raw-table__%
           _%size-hint103813%_
           _%hash103814%_
           _%test103815%_
           _%seed103816%_
           _%lock103818%_))))
    (define make-raw-table
      (lambda _g103862_
        (let ((_g103863_ (##length _g103862_)))
          (cond ((##fx= _g103863_ 3) (apply make-raw-table__0 _g103862_))
                ((##fx= _g103863_ 4) (apply make-raw-table__1 _g103862_))
                ((##fx= _g103863_ 5) (apply make-raw-table__% _g103862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g103862_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint103771%_
               _%hash103772%_
               _%test103773%_
               _%seed103774%_)
        (make-raw-table__%
         _%size-hint103771%_
         _%hash103772%_
         _%test103773%_
         _%seed103774%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint103779%_ _%hash103780%_ _%test103781%_)
        (let ((_%seed103783%_ '0))
          (make-raw-table/lock__%
           _%size-hint103779%_
           _%hash103780%_
           _%test103781%_
           _%seed103783%_))))
    (define make-raw-table/lock
      (lambda _g103864_
        (let ((_g103865_ (##length _g103864_)))
          (cond ((##fx= _g103865_ 3) (apply make-raw-table/lock__0 _g103864_))
                ((##fx= _g103865_ 4) (apply make-raw-table/lock__% _g103864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g103864_))))))
    (define raw-table-length
      (lambda (_%tab103768%_) (&raw-table-count _%tab103768%_)))
    (define raw-table-length/lock
      (lambda (_%tab103743%_)
        (let ((_%lock103745%_ (&raw-table-lock _%tab103743%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103750%_ ((_%spin103753%_ '0))
              (if (##fx= (##vector-cas! _%lock103745%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103745%_ '1 (current-thread))
                  (if (##fx< _%spin103753%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103750%_ (##fx+ _%spin103753%_ '1)))
                      (let ((_%owner103759%_ (##vector-ref _%lock103745%_ '1)))
                        (if (eq? _%owner103759%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103759%_)
                                (let () (##thread-yield!) (_%again103750%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103765%_ (&raw-table-count _%tab103743%_)))
            (##vector-set! _%lock103745%_ '1 '#f)
            (##vector-cas! _%lock103745%_ '0 '0 '1)
            _%$r103765%_))))
    (define raw-table-ref
      (lambda (_%tab103695%_ _%key103696%_ _%default103697%_)
        (let ((_%table103699%_ (&raw-table-table _%tab103695%_))
              (_%seed103700%_ (&raw-table-seed _%tab103695%_))
              (_%hash103701%_ (&raw-table-hash _%tab103695%_))
              (_%test103702%_ (&raw-table-test _%tab103695%_)))
          (let* ((_%h103704%_
                  (fxxor (_%hash103701%_ _%key103696%_) _%seed103700%_))
                 (_%size103707%_ (vector-length _%table103699%_))
                 (_%entries103710%_ (##fxquotient _%size103707%_ '2))
                 (_%start103713%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103704%_ _%entries103710%_)
                   '1)))
            (let _%loop103717%_ ((_%probe103720%_ _%start103713%_)
                                 (_%i103722%_ '1)
                                 (_%deleted103724%_ '#f))
              (let ((_%k103727%_ (vector-ref _%table103699%_ _%probe103720%_)))
                (if (eq? _%k103727%_ (macro-unused-obj))
                    _%default103697%_
                    (if (eq? _%k103727%_ (macro-deleted-obj))
                        (_%loop103717%_
                         (let ((_%next-probe103732%_
                                (fx+ _%start103713%_
                                     _%i103722%_
                                     (fx* _%i103722%_ _%i103722%_))))
                           (##fxmodulo _%next-probe103732%_ _%size103707%_))
                         (##fx+ _%i103722%_ '1)
                         (let ((_%$e103735%_ _%deleted103724%_))
                           (if _%$e103735%_ _%$e103735%_ _%probe103720%_)))
                        (if (_%test103702%_ _%key103696%_ _%k103727%_)
                            (vector-ref
                             _%table103699%_
                             (##fx+ _%probe103720%_ '1))
                            (_%loop103717%_
                             (let ((_%next-probe103740%_
                                    (fx+ _%start103713%_
                                         _%i103722%_
                                         (fx* _%i103722%_ _%i103722%_))))
                               (##fxmodulo
                                _%next-probe103740%_
                                _%size103707%_))
                             (##fx+ _%i103722%_ '1)
                             _%deleted103724%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab103668%_ _%key103669%_ _%default103670%_)
        (let ((_%lock103672%_ (&raw-table-lock _%tab103668%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103677%_ ((_%spin103680%_ '0))
              (if (##fx= (##vector-cas! _%lock103672%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103672%_ '1 (current-thread))
                  (if (##fx< _%spin103680%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103677%_ (##fx+ _%spin103680%_ '1)))
                      (let ((_%owner103686%_ (##vector-ref _%lock103672%_ '1)))
                        (if (eq? _%owner103686%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103686%_)
                                (let () (##thread-yield!) (_%again103677%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103692%_
                 (raw-table-ref
                  _%tab103668%_
                  _%key103669%_
                  _%default103670%_)))
            (##vector-set! _%lock103672%_ '1 '#f)
            (##vector-cas! _%lock103672%_ '0 '0 '1)
            _%$r103692%_))))
    (define raw-table-set!
      (lambda (_%tab103664%_ _%key103665%_ _%value103666%_)
        (if (##fx< (&raw-table-free _%tab103664%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103664%_))
                    '4))
            (__raw-table-rehash! _%tab103664%_)
            '#!void)
        (__raw-table-set! _%tab103664%_ _%key103665%_ _%value103666%_)))
    (define raw-table-set!/lock
      (lambda (_%tab103637%_ _%key103638%_ _%value103639%_)
        (let ((_%lock103641%_ (&raw-table-lock _%tab103637%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103646%_ ((_%spin103649%_ '0))
              (if (##fx= (##vector-cas! _%lock103641%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103641%_ '1 (current-thread))
                  (if (##fx< _%spin103649%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103646%_ (##fx+ _%spin103649%_ '1)))
                      (let ((_%owner103655%_ (##vector-ref _%lock103641%_ '1)))
                        (if (eq? _%owner103655%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103655%_)
                                (let () (##thread-yield!) (_%again103646%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103661%_
                 (raw-table-set! _%tab103637%_ _%key103638%_ _%value103639%_)))
            (##vector-set! _%lock103641%_ '1 '#f)
            (##vector-cas! _%lock103641%_ '0 '0 '1)
            _%$r103661%_))))
    (define raw-table-update!
      (lambda (_%tab103632%_ _%key103633%_ _%update103634%_ _%default103635%_)
        (if (##fx< (&raw-table-free _%tab103632%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103632%_))
                    '4))
            (__raw-table-rehash! _%tab103632%_)
            '#!void)
        (__raw-table-update!
         _%tab103632%_
         _%key103633%_
         _%update103634%_
         _%default103635%_)))
    (define raw-table-update!/lock
      (lambda (_%tab103604%_ _%key103605%_ _%update103606%_ _%default103607%_)
        (let ((_%lock103609%_ (&raw-table-lock _%tab103604%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103614%_ ((_%spin103617%_ '0))
              (if (##fx= (##vector-cas! _%lock103609%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103609%_ '1 (current-thread))
                  (if (##fx< _%spin103617%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103614%_ (##fx+ _%spin103617%_ '1)))
                      (let ((_%owner103623%_ (##vector-ref _%lock103609%_ '1)))
                        (if (eq? _%owner103623%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103623%_)
                                (let () (##thread-yield!) (_%again103614%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103629%_
                 (raw-table-update!
                  _%tab103604%_
                  _%key103605%_
                  _%update103606%_
                  _%default103607%_)))
            (##vector-set! _%lock103609%_ '1 '#f)
            (##vector-cas! _%lock103609%_ '0 '0 '1)
            _%$r103629%_))))
    (define raw-table-delete!
      (lambda (_%tab103561%_ _%key103562%_)
        (let ((_%table103564%_ (&raw-table-table _%tab103561%_))
              (_%seed103565%_ (&raw-table-seed _%tab103561%_))
              (_%hash103566%_ (&raw-table-hash _%tab103561%_))
              (_%test103567%_ (&raw-table-test _%tab103561%_)))
          (let* ((_%h103569%_
                  (fxxor (_%hash103566%_ _%key103562%_) _%seed103565%_))
                 (_%size103572%_ (vector-length _%table103564%_))
                 (_%entries103575%_ (##fxquotient _%size103572%_ '2))
                 (_%start103578%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103569%_ _%entries103575%_)
                   '1)))
            (let _%loop103582%_ ((_%probe103585%_ _%start103578%_)
                                 (_%i103587%_ '1))
              (let ((_%k103590%_ (vector-ref _%table103564%_ _%probe103585%_)))
                (if (eq? _%k103590%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103590%_ (macro-deleted-obj))
                        (_%loop103582%_
                         (let ((_%next-probe103595%_
                                (fx+ _%start103578%_
                                     _%i103587%_
                                     (fx* _%i103587%_ _%i103587%_))))
                           (##fxmodulo _%next-probe103595%_ _%size103572%_))
                         (##fx+ _%i103587%_ '1))
                        (if (_%test103567%_ _%key103562%_ _%k103590%_)
                            (let ()
                              (vector-set!
                               _%table103564%_
                               _%probe103585%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103564%_
                               (##fx+ _%probe103585%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab103561%_
                                  (##fx- (&raw-table-count _%tab103561%_)
                                         '1)))))
                            (_%loop103582%_
                             (let ((_%next-probe103601%_
                                    (fx+ _%start103578%_
                                         _%i103587%_
                                         (fx* _%i103587%_ _%i103587%_))))
                               (##fxmodulo
                                _%next-probe103601%_
                                _%size103572%_))
                             (##fx+ _%i103587%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab103535%_ _%key103536%_)
        (let ((_%lock103538%_ (&raw-table-lock _%tab103535%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103543%_ ((_%spin103546%_ '0))
              (if (##fx= (##vector-cas! _%lock103538%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103538%_ '1 (current-thread))
                  (if (##fx< _%spin103546%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103543%_ (##fx+ _%spin103546%_ '1)))
                      (let ((_%owner103552%_ (##vector-ref _%lock103538%_ '1)))
                        (if (eq? _%owner103552%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103552%_)
                                (let () (##thread-yield!) (_%again103543%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103558%_ (raw-table-delete! _%tab103535%_ _%key103536%_)))
            (##vector-set! _%lock103538%_ '1 '#f)
            (##vector-cas! _%lock103538%_ '0 '0 '1)
            _%$r103558%_))))
    (define raw-table-for-each
      (lambda (_%tab103519%_ _%proc103520%_)
        (let* ((_%table103522%_ (&raw-table-table _%tab103519%_))
               (_%size103524%_ (vector-length _%table103522%_)))
          (let _%loop103527%_ ((_%i103529%_ '0))
            (if (##fx< _%i103529%_ _%size103524%_)
                (begin
                  (let ((_%key103531%_
                         (vector-ref _%table103522%_ _%i103529%_)))
                    (if (if (eq? _%key103531%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key103531%_ (macro-deleted-obj))))
                        (let ((_%value103533%_
                               (vector-ref
                                _%table103522%_
                                (##fx+ _%i103529%_ '1))))
                          (_%proc103520%_ _%key103531%_ _%value103533%_))
                        '#!void))
                  (_%loop103527%_ (##fx+ _%i103529%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab103493%_ _%proc103494%_)
        (let ((_%lock103496%_ (&raw-table-lock _%tab103493%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103501%_ ((_%spin103504%_ '0))
              (if (##fx= (##vector-cas! _%lock103496%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103496%_ '1 (current-thread))
                  (if (##fx< _%spin103504%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103501%_ (##fx+ _%spin103504%_ '1)))
                      (let ((_%owner103510%_ (##vector-ref _%lock103496%_ '1)))
                        (if (eq? _%owner103510%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103510%_)
                                (let () (##thread-yield!) (_%again103501%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103516%_
                 (raw-table-for-each _%tab103493%_ _%proc103494%_)))
            (##vector-set! _%lock103496%_ '1 '#f)
            (##vector-cas! _%lock103496%_ '0 '0 '1)
            _%$r103516%_))))
    (define raw-table-copy
      (lambda (_%tab103489%_)
        (let ((_%new-tab103491%_ (##structure-copy _%tab103489%_)))
          (&raw-table-table-set!
           _%new-tab103491%_
           (vector-copy (&raw-table-table _%tab103489%_)))
          _%new-tab103491%_)))
    (define raw-table-copy/lock
      (lambda (_%tab103464%_)
        (let ((_%lock103466%_ (&raw-table-lock _%tab103464%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103471%_ ((_%spin103474%_ '0))
              (if (##fx= (##vector-cas! _%lock103466%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103466%_ '1 (current-thread))
                  (if (##fx< _%spin103474%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103471%_ (##fx+ _%spin103474%_ '1)))
                      (let ((_%owner103480%_ (##vector-ref _%lock103466%_ '1)))
                        (if (eq? _%owner103480%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103480%_)
                                (let () (##thread-yield!) (_%again103471%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103486%_ (raw-table-copy _%tab103464%_)))
            (##vector-set! _%lock103466%_ '1 '#f)
            (##vector-cas! _%lock103466%_ '0 '0 '1)
            _%$r103486%_))))
    (define raw-table-clear!
      (lambda (_%tab103462%_)
        (vector-fill! (&raw-table-table _%tab103462%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab103462%_ '0)
        (&raw-table-free-set!
         _%tab103462%_
         (##fxquotient (vector-length (&raw-table-table _%tab103462%_)) '2))))
    (define raw-table-clear!/lock
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
          (let ((_%$r103459%_ (raw-table-clear! _%tab103437%_)))
            (##vector-set! _%lock103439%_ '1 '#f)
            (##vector-cas! _%lock103439%_ '0 '0 '1)
            _%$r103459%_))))
    (define __raw-table-set!
      (lambda (_%tab103387%_ _%key103388%_ _%value103389%_)
        (let ((_%table103391%_ (&raw-table-table _%tab103387%_))
              (_%seed103392%_ (&raw-table-seed _%tab103387%_))
              (_%hash103393%_ (&raw-table-hash _%tab103387%_))
              (_%test103394%_ (&raw-table-test _%tab103387%_)))
          (let* ((_%h103396%_
                  (fxxor (_%hash103393%_ _%key103388%_) _%seed103392%_))
                 (_%size103399%_ (vector-length _%table103391%_))
                 (_%entries103402%_ (##fxquotient _%size103399%_ '2))
                 (_%start103405%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103396%_ _%entries103402%_)
                   '1)))
            (let _%loop103409%_ ((_%probe103412%_ _%start103405%_)
                                 (_%i103414%_ '1)
                                 (_%deleted103416%_ '#f))
              (let ((_%k103419%_ (vector-ref _%table103391%_ _%probe103412%_)))
                (if (eq? _%k103419%_ (macro-unused-obj))
                    (if _%deleted103416%_
                        (begin
                          (vector-set!
                           _%table103391%_
                           _%deleted103416%_
                           _%key103388%_)
                          (vector-set!
                           _%table103391%_
                           (##fx+ _%deleted103416%_ '1)
                           _%value103389%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103387%_
                              (##fx+ (&raw-table-count _%tab103387%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103391%_
                           _%probe103412%_
                           _%key103388%_)
                          (vector-set!
                           _%table103391%_
                           (##fx+ _%probe103412%_ '1)
                           _%value103389%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103387%_
                              (##fx- (&raw-table-free _%tab103387%_) '1))
                             (&raw-table-count-set!
                              _%tab103387%_
                              (##fx+ (&raw-table-count _%tab103387%_) '1))))))
                    (if (eq? _%k103419%_ (macro-deleted-obj))
                        (_%loop103409%_
                         (let ((_%next-probe103426%_
                                (fx+ _%start103405%_
                                     _%i103414%_
                                     (fx* _%i103414%_ _%i103414%_))))
                           (##fxmodulo _%next-probe103426%_ _%size103399%_))
                         (##fx+ _%i103414%_ '1)
                         (let ((_%$e103429%_ _%deleted103416%_))
                           (if _%$e103429%_ _%$e103429%_ _%probe103412%_)))
                        (if (_%test103394%_ _%key103388%_ _%k103419%_)
                            (let ()
                              (vector-set!
                               _%table103391%_
                               _%probe103412%_
                               _%key103388%_)
                              (vector-set!
                               _%table103391%_
                               (##fx+ _%probe103412%_ '1)
                               _%value103389%_))
                            (_%loop103409%_
                             (let ((_%next-probe103434%_
                                    (fx+ _%start103405%_
                                         _%i103414%_
                                         (fx* _%i103414%_ _%i103414%_))))
                               (##fxmodulo
                                _%next-probe103434%_
                                _%size103399%_))
                             (##fx+ _%i103414%_ '1)
                             _%deleted103416%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab103336%_ _%key103337%_ _%update103338%_ _%default103339%_)
        (let ((_%table103341%_ (&raw-table-table _%tab103336%_))
              (_%seed103342%_ (&raw-table-seed _%tab103336%_))
              (_%hash103343%_ (&raw-table-hash _%tab103336%_))
              (_%test103344%_ (&raw-table-test _%tab103336%_)))
          (let* ((_%h103346%_
                  (fxxor (_%hash103343%_ _%key103337%_) _%seed103342%_))
                 (_%size103349%_ (vector-length _%table103341%_))
                 (_%entries103352%_ (##fxquotient _%size103349%_ '2))
                 (_%start103355%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103346%_ _%entries103352%_)
                   '1)))
            (let _%loop103359%_ ((_%probe103362%_ _%start103355%_)
                                 (_%i103364%_ '1)
                                 (_%deleted103366%_ '#f))
              (let ((_%k103369%_ (vector-ref _%table103341%_ _%probe103362%_)))
                (if (eq? _%k103369%_ (macro-unused-obj))
                    (if _%deleted103366%_
                        (begin
                          (vector-set!
                           _%table103341%_
                           _%deleted103366%_
                           _%key103337%_)
                          (vector-set!
                           _%table103341%_
                           (##fx+ _%deleted103366%_ '1)
                           (_%update103338%_ _%default103339%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103336%_
                              (##fx+ (&raw-table-count _%tab103336%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103341%_
                           _%probe103362%_
                           _%key103337%_)
                          (vector-set!
                           _%table103341%_
                           (##fx+ _%probe103362%_ '1)
                           (_%update103338%_ _%default103339%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103336%_
                              (##fx- (&raw-table-free _%tab103336%_) '1))
                             (&raw-table-count-set!
                              _%tab103336%_
                              (##fx+ (&raw-table-count _%tab103336%_) '1))))))
                    (if (eq? _%k103369%_ (macro-deleted-obj))
                        (_%loop103359%_
                         (let ((_%next-probe103376%_
                                (fx+ _%start103355%_
                                     _%i103364%_
                                     (fx* _%i103364%_ _%i103364%_))))
                           (##fxmodulo _%next-probe103376%_ _%size103349%_))
                         (##fx+ _%i103364%_ '1)
                         (let ((_%$e103379%_ _%deleted103366%_))
                           (if _%$e103379%_ _%$e103379%_ _%probe103362%_)))
                        (if (_%test103344%_ _%key103337%_ _%k103369%_)
                            (let ()
                              (vector-set!
                               _%table103341%_
                               _%probe103362%_
                               _%key103337%_)
                              (vector-set!
                               _%table103341%_
                               (##fx+ _%probe103362%_ '1)
                               (_%update103338%_
                                (vector-ref
                                 _%table103341%_
                                 (##fx+ _%probe103362%_ '1)))))
                            (_%loop103359%_
                             (let ((_%next-probe103384%_
                                    (fx+ _%start103355%_
                                         _%i103364%_
                                         (fx* _%i103364%_ _%i103364%_))))
                               (##fxmodulo
                                _%next-probe103384%_
                                _%size103349%_))
                             (##fx+ _%i103364%_ '1)
                             _%deleted103366%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab103317%_)
        (let* ((_%old-table103319%_ (&raw-table-table _%tab103317%_))
               (_%old-size103321%_ (vector-length _%old-table103319%_))
               (_%new-size103323%_
                (if (##fx< (&raw-table-count _%tab103317%_)
                           (##fxquotient _%old-size103321%_ '4))
                    (vector-length _%old-table103319%_)
                    (##fx* '2 (vector-length _%old-table103319%_))))
               (_%new-table103325%_
                (##make-vector _%new-size103323%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab103317%_ _%new-table103325%_)
          (&raw-table-count-set! _%tab103317%_ '0)
          (&raw-table-free-set!
           _%tab103317%_
           (##fxquotient _%new-size103323%_ '2))
          (let _%lp103328%_ ((_%i103330%_ '0))
            (if (##fx< _%i103330%_ _%old-size103321%_)
                (begin
                  (let ((_%key103332%_
                         (vector-ref _%old-table103319%_ _%i103330%_)))
                    (if (if (eq? _%key103332%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key103332%_ (macro-deleted-obj))))
                        (let ((_%value103334%_
                               (vector-ref
                                _%old-table103319%_
                                (##fx+ _%i103330%_ '1))))
                          (__raw-table-set!
                           _%tab103317%_
                           _%key103332%_
                           _%value103334%_))
                        '#!void))
                  (_%lp103328%_ (##fx+ _%i103330%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj103309%_)
        (let ((_%t103311%_ (##type _%obj103309%_)))
          (if (##fx= (##fxand _%t103311%_ '1) '0)
              (fxand (##type-cast _%obj103309%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj103309%_)
                  (##symbol-hash _%obj103309%_)
                  (if (procedure? _%obj103309%_)
                      (procedure-hash _%obj103309%_)
                      (fxand (__eq-hash _%obj103309%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj103305%_)
        (let ((_%h103307%_
               (if (##closure? _%obj103305%_)
                   (__eq-hash _%obj103305%_)
                   (##type-cast _%obj103305%_ '0))))
          (fxand _%h103307%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj103302%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj103302%_)))
    (define eqv-hash
      (lambda (_%obj103292%_)
        (letrec ((_%combine103294%_
                  (lambda (_%a103299%_ _%b103300%_)
                    (fxand (##fx* (##fx+ _%a103299%_
                                         (fxarithmetic-shift-left
                                          _%b103300%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash103295%_
                  (lambda (_%obj103297%_)
                    (macro-number-dispatch
                     _%obj103297%_
                     (eq-hash _%obj103297%_)
                     (fxand _%obj103297%_ (macro-max-fixnum32))
                     (modulo _%obj103297%_ '331804481)
                     (_%combine103294%_
                      (_%hash103295%_ (macro-ratnum-numerator _%obj103297%_))
                      (_%hash103295%_
                       (macro-ratnum-denominator _%obj103297%_)))
                     (_%combine103294%_
                      (##u16vector-ref _%obj103297%_ '0)
                      (_%combine103294%_
                       (##u16vector-ref _%obj103297%_ '1)
                       (_%combine103294%_
                        (##u16vector-ref _%obj103297%_ '2)
                        (##u16vector-ref _%obj103297%_ '3))))
                     (_%combine103294%_
                      (_%hash103295%_ (macro-cpxnum-real _%obj103297%_))
                      (_%hash103295%_ (macro-cpxnum-imag _%obj103297%_)))))))
          (_%hash103295%_ _%obj103292%_))))
    (define symbolic?
      (lambda (_%obj103287%_)
        (let ((_%$e103289%_ (symbol? _%obj103287%_)))
          (if _%$e103289%_ _%$e103289%_ (keyword? _%obj103287%_)))))
    (define symbolic-hash
      (lambda (_%obj103285%_) (##symbol-hash _%obj103285%_)))
    (define string-hash
      (lambda (_%obj103283%_) (##string=?-hash _%obj103283%_)))
    (define immediate-hash
      (lambda (_%obj103281%_) (##type-cast _%obj103281%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint103263%_ _%seed103264%_)
        (make-raw-table__1 _%size-hint103263%_ eq-hash eq? _%seed103264%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint103270%_ '#f) (_%seed103272%_ '0))
          (make-eq-table__% _%size-hint103270%_ _%seed103272%_))))
    (define make-eq-table__1
      (lambda (_%size-hint103274%_)
        (let ((_%seed103276%_ '0))
          (make-eq-table__% _%size-hint103274%_ _%seed103276%_))))
    (define make-eq-table
      (lambda _g103866_
        (let ((_g103867_ (##length _g103866_)))
          (cond ((##fx= _g103867_ 0) (apply make-eq-table__0 _g103866_))
                ((##fx= _g103867_ 1) (apply make-eq-table__1 _g103866_))
                ((##fx= _g103867_ 2) (apply make-eq-table__% _g103866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g103866_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint103243%_ _%seed103245%_)
        (make-raw-table/lock__%
         _%size-hint103243%_
         eq-hash
         eq?
         _%seed103245%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint103251%_ '#f) (_%seed103253%_ '0))
          (make-eq-table/lock__% _%size-hint103251%_ _%seed103253%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint103255%_)
        (let ((_%seed103257%_ '0))
          (make-eq-table/lock__% _%size-hint103255%_ _%seed103257%_))))
    (define make-eq-table/lock
      (lambda _g103868_
        (let ((_g103869_ (##length _g103868_)))
          (cond ((##fx= _g103869_ 0) (apply make-eq-table/lock__0 _g103868_))
                ((##fx= _g103869_ 1) (apply make-eq-table/lock__1 _g103868_))
                ((##fx= _g103869_ 2) (apply make-eq-table/lock__% _g103868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g103868_))))))
    (define eq-table-ref
      (lambda (_%tab103196%_ _%key103197%_ _%default103198%_)
        (let ((_%table103200%_ (&raw-table-table _%tab103196%_))
              (_%seed103201%_ (&raw-table-seed _%tab103196%_)))
          (let* ((_%h103203%_ (fxxor (eq-hash _%key103197%_) _%seed103201%_))
                 (_%size103206%_ (vector-length _%table103200%_))
                 (_%entries103209%_ (##fxquotient _%size103206%_ '2))
                 (_%start103212%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103203%_ _%entries103209%_)
                   '1)))
            (let _%loop103216%_ ((_%probe103219%_ _%start103212%_)
                                 (_%i103221%_ '1)
                                 (_%deleted103223%_ '#f))
              (let ((_%k103226%_ (vector-ref _%table103200%_ _%probe103219%_)))
                (if (eq? _%k103226%_ (macro-unused-obj))
                    _%default103198%_
                    (if (eq? _%k103226%_ (macro-deleted-obj))
                        (_%loop103216%_
                         (let ((_%next-probe103231%_
                                (fx+ _%start103212%_
                                     _%i103221%_
                                     (fx* _%i103221%_ _%i103221%_))))
                           (##fxmodulo _%next-probe103231%_ _%size103206%_))
                         (##fx+ _%i103221%_ '1)
                         (let ((_%$e103234%_ _%deleted103223%_))
                           (if _%$e103234%_ _%$e103234%_ _%probe103219%_)))
                        (if (eq? _%key103197%_ _%k103226%_)
                            (vector-ref
                             _%table103200%_
                             (##fx+ _%probe103219%_ '1))
                            (_%loop103216%_
                             (let ((_%next-probe103239%_
                                    (fx+ _%start103212%_
                                         _%i103221%_
                                         (fx* _%i103221%_ _%i103221%_))))
                               (##fxmodulo
                                _%next-probe103239%_
                                _%size103206%_))
                             (##fx+ _%i103221%_ '1)
                             _%deleted103223%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab103169%_ _%key103170%_ _%default103171%_)
        (let ((_%lock103173%_ (&raw-table-lock _%tab103169%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103178%_ ((_%spin103181%_ '0))
              (if (##fx= (##vector-cas! _%lock103173%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103173%_ '1 (current-thread))
                  (if (##fx< _%spin103181%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103178%_ (##fx+ _%spin103181%_ '1)))
                      (let ((_%owner103187%_ (##vector-ref _%lock103173%_ '1)))
                        (if (eq? _%owner103187%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103187%_)
                                (let () (##thread-yield!) (_%again103178%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103193%_
                 (eq-table-ref _%tab103169%_ _%key103170%_ _%default103171%_)))
            (##vector-set! _%lock103173%_ '1 '#f)
            (##vector-cas! _%lock103173%_ '0 '0 '1)
            _%$r103193%_))))
    (define __eq-table-set!
      (lambda (_%tab103121%_ _%key103122%_ _%value103123%_)
        (let ((_%table103125%_ (&raw-table-table _%tab103121%_))
              (_%seed103126%_ (&raw-table-seed _%tab103121%_)))
          (let* ((_%h103128%_ (fxxor (eq-hash _%key103122%_) _%seed103126%_))
                 (_%size103131%_ (vector-length _%table103125%_))
                 (_%entries103134%_ (##fxquotient _%size103131%_ '2))
                 (_%start103137%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103128%_ _%entries103134%_)
                   '1)))
            (let _%loop103141%_ ((_%probe103144%_ _%start103137%_)
                                 (_%i103146%_ '1)
                                 (_%deleted103148%_ '#f))
              (let ((_%k103151%_ (vector-ref _%table103125%_ _%probe103144%_)))
                (if (eq? _%k103151%_ (macro-unused-obj))
                    (if _%deleted103148%_
                        (begin
                          (vector-set!
                           _%table103125%_
                           _%deleted103148%_
                           _%key103122%_)
                          (vector-set!
                           _%table103125%_
                           (##fx+ _%deleted103148%_ '1)
                           _%value103123%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103121%_
                              (##fx+ (&raw-table-count _%tab103121%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103125%_
                           _%probe103144%_
                           _%key103122%_)
                          (vector-set!
                           _%table103125%_
                           (##fx+ _%probe103144%_ '1)
                           _%value103123%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103121%_
                              (##fx- (&raw-table-free _%tab103121%_) '1))
                             (&raw-table-count-set!
                              _%tab103121%_
                              (##fx+ (&raw-table-count _%tab103121%_) '1))))))
                    (if (eq? _%k103151%_ (macro-deleted-obj))
                        (_%loop103141%_
                         (let ((_%next-probe103158%_
                                (fx+ _%start103137%_
                                     _%i103146%_
                                     (fx* _%i103146%_ _%i103146%_))))
                           (##fxmodulo _%next-probe103158%_ _%size103131%_))
                         (##fx+ _%i103146%_ '1)
                         (let ((_%$e103161%_ _%deleted103148%_))
                           (if _%$e103161%_ _%$e103161%_ _%probe103144%_)))
                        (if (eq? _%key103122%_ _%k103151%_)
                            (let ()
                              (vector-set!
                               _%table103125%_
                               _%probe103144%_
                               _%key103122%_)
                              (vector-set!
                               _%table103125%_
                               (##fx+ _%probe103144%_ '1)
                               _%value103123%_))
                            (_%loop103141%_
                             (let ((_%next-probe103166%_
                                    (fx+ _%start103137%_
                                         _%i103146%_
                                         (fx* _%i103146%_ _%i103146%_))))
                               (##fxmodulo
                                _%next-probe103166%_
                                _%size103131%_))
                             (##fx+ _%i103146%_ '1)
                             _%deleted103148%_))))))))))
    (define eq-table-set!
      (lambda (_%tab103117%_ _%key103118%_ _%value103119%_)
        (if (##fx< (&raw-table-free _%tab103117%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103117%_))
                    '4))
            (__raw-table-rehash! _%tab103117%_)
            '#!void)
        (__eq-table-set! _%tab103117%_ _%key103118%_ _%value103119%_)))
    (define eq-table-set!/lock
      (lambda (_%tab103089%_ _%key103090%_ _%value103091%_)
        (let ((_%lock103094%_ (&raw-table-lock _%tab103089%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103099%_ ((_%spin103102%_ '0))
              (if (##fx= (##vector-cas! _%lock103094%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103094%_ '1 (current-thread))
                  (if (##fx< _%spin103102%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103099%_ (##fx+ _%spin103102%_ '1)))
                      (let ((_%owner103108%_ (##vector-ref _%lock103094%_ '1)))
                        (if (eq? _%owner103108%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103108%_)
                                (let () (##thread-yield!) (_%again103099%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103114%_
                 (eq-table-set! _%tab103089%_ _%key103090%_ _%value103091%_)))
            (##vector-set! _%lock103094%_ '1 '#f)
            (##vector-cas! _%lock103094%_ '0 '0 '1)
            _%$r103114%_))))
    (define __eq-table-update!
      (lambda (_%tab103040%_
               _%key103041%_
               _%eq-table-update!103042%_
               _%default103043%_)
        (let ((_%table103045%_ (&raw-table-table _%tab103040%_))
              (_%seed103046%_ (&raw-table-seed _%tab103040%_)))
          (let* ((_%h103048%_ (fxxor (eq-hash _%key103041%_) _%seed103046%_))
                 (_%size103051%_ (vector-length _%table103045%_))
                 (_%entries103054%_ (##fxquotient _%size103051%_ '2))
                 (_%start103057%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h103048%_ _%entries103054%_)
                   '1)))
            (let _%loop103061%_ ((_%probe103064%_ _%start103057%_)
                                 (_%i103066%_ '1)
                                 (_%deleted103068%_ '#f))
              (let ((_%k103071%_ (vector-ref _%table103045%_ _%probe103064%_)))
                (if (eq? _%k103071%_ (macro-unused-obj))
                    (if _%deleted103068%_
                        (begin
                          (vector-set!
                           _%table103045%_
                           _%deleted103068%_
                           _%key103041%_)
                          (vector-set!
                           _%table103045%_
                           (##fx+ _%deleted103068%_ '1)
                           (_%eq-table-update!103042%_ _%default103043%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103040%_
                              (##fx+ (&raw-table-count _%tab103040%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103045%_
                           _%probe103064%_
                           _%key103041%_)
                          (vector-set!
                           _%table103045%_
                           (##fx+ _%probe103064%_ '1)
                           (_%eq-table-update!103042%_ _%default103043%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103040%_
                              (##fx- (&raw-table-free _%tab103040%_) '1))
                             (&raw-table-count-set!
                              _%tab103040%_
                              (##fx+ (&raw-table-count _%tab103040%_) '1))))))
                    (if (eq? _%k103071%_ (macro-deleted-obj))
                        (_%loop103061%_
                         (let ((_%next-probe103078%_
                                (fx+ _%start103057%_
                                     _%i103066%_
                                     (fx* _%i103066%_ _%i103066%_))))
                           (##fxmodulo _%next-probe103078%_ _%size103051%_))
                         (##fx+ _%i103066%_ '1)
                         (let ((_%$e103081%_ _%deleted103068%_))
                           (if _%$e103081%_ _%$e103081%_ _%probe103064%_)))
                        (if (eq? _%key103041%_ _%k103071%_)
                            (let ()
                              (vector-set!
                               _%table103045%_
                               _%probe103064%_
                               _%key103041%_)
                              (vector-set!
                               _%table103045%_
                               (##fx+ _%probe103064%_ '1)
                               (_%eq-table-update!103042%_
                                (vector-ref
                                 _%table103045%_
                                 (##fx+ _%probe103064%_ '1)))))
                            (_%loop103061%_
                             (let ((_%next-probe103086%_
                                    (fx+ _%start103057%_
                                         _%i103066%_
                                         (fx* _%i103066%_ _%i103066%_))))
                               (##fxmodulo
                                _%next-probe103086%_
                                _%size103051%_))
                             (##fx+ _%i103066%_ '1)
                             _%deleted103068%_))))))))))
    (define eq-table-update!
      (lambda (_%tab103035%_
               _%key103036%_
               _%eq-table-update!103037%_
               _%default103038%_)
        (if (##fx< (&raw-table-free _%tab103035%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab103035%_))
                    '4))
            (__raw-table-rehash! _%tab103035%_)
            '#!void)
        (__eq-table-update!
         _%tab103035%_
         _%key103036%_
         _%eq-table-update!103037%_
         _%default103038%_)))
    (define eq-table-update!/lock
      (lambda (_%tab103006%_
               _%key103007%_
               _%eq-table-update!103008%_
               _%default103009%_)
        (let ((_%lock103012%_ (&raw-table-lock _%tab103006%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103017%_ ((_%spin103020%_ '0))
              (if (##fx= (##vector-cas! _%lock103012%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103012%_ '1 (current-thread))
                  (if (##fx< _%spin103020%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103017%_ (##fx+ _%spin103020%_ '1)))
                      (let ((_%owner103026%_ (##vector-ref _%lock103012%_ '1)))
                        (if (eq? _%owner103026%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner103026%_)
                                (let () (##thread-yield!) (_%again103017%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r103032%_
                 (_%eq-table-update!103008%_
                  _%tab103006%_
                  _%key103007%_
                  _%eq-table-update!103008%_
                  _%default103009%_)))
            (##vector-set! _%lock103012%_ '1 '#f)
            (##vector-cas! _%lock103012%_ '0 '0 '1)
            _%$r103032%_))))
    (define eq-table-delete!
      (lambda (_%tab102963%_ _%key102964%_)
        (let ((_%table102966%_ (&raw-table-table _%tab102963%_))
              (_%seed102968%_ (&raw-table-seed _%tab102963%_)))
          (let* ((_%h102971%_ (fxxor (eq-hash _%key102964%_) _%seed102968%_))
                 (_%size102974%_ (vector-length _%table102966%_))
                 (_%entries102977%_ (##fxquotient _%size102974%_ '2))
                 (_%start102980%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102971%_ _%entries102977%_)
                   '1)))
            (let _%loop102984%_ ((_%probe102987%_ _%start102980%_)
                                 (_%i102989%_ '1))
              (let ((_%k102992%_ (vector-ref _%table102966%_ _%probe102987%_)))
                (if (eq? _%k102992%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102992%_ (macro-deleted-obj))
                        (_%loop102984%_
                         (let ((_%next-probe102997%_
                                (fx+ _%start102980%_
                                     _%i102989%_
                                     (fx* _%i102989%_ _%i102989%_))))
                           (##fxmodulo _%next-probe102997%_ _%size102974%_))
                         (##fx+ _%i102989%_ '1))
                        (if (eq? _%key102964%_ _%k102992%_)
                            (let ()
                              (vector-set!
                               _%table102966%_
                               _%probe102987%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102966%_
                               (##fx+ _%probe102987%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102963%_
                                  (##fx- (&raw-table-count _%tab102963%_)
                                         '1)))))
                            (_%loop102984%_
                             (let ((_%next-probe103003%_
                                    (fx+ _%start102980%_
                                         _%i102989%_
                                         (fx* _%i102989%_ _%i102989%_))))
                               (##fxmodulo
                                _%next-probe103003%_
                                _%size102974%_))
                             (##fx+ _%i102989%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab102935%_ _%key102937%_)
        (let ((_%lock102940%_ (&raw-table-lock _%tab102935%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102945%_ ((_%spin102948%_ '0))
              (if (##fx= (##vector-cas! _%lock102940%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102940%_ '1 (current-thread))
                  (if (##fx< _%spin102948%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102945%_ (##fx+ _%spin102948%_ '1)))
                      (let ((_%owner102954%_ (##vector-ref _%lock102940%_ '1)))
                        (if (eq? _%owner102954%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102954%_)
                                (let () (##thread-yield!) (_%again102945%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102960%_ (eq-table-delete! _%tab102935%_ _%key102937%_)))
            (##vector-set! _%lock102940%_ '1 '#f)
            (##vector-cas! _%lock102940%_ '0 '0 '1)
            _%$r102960%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint102917%_ _%seed102918%_)
        (make-raw-table__1 _%size-hint102917%_ eqv-hash eqv? _%seed102918%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint102924%_ '#f) (_%seed102926%_ '0))
          (make-eqv-table__% _%size-hint102924%_ _%seed102926%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint102928%_)
        (let ((_%seed102930%_ '0))
          (make-eqv-table__% _%size-hint102928%_ _%seed102930%_))))
    (define make-eqv-table
      (lambda _g103870_
        (let ((_g103871_ (##length _g103870_)))
          (cond ((##fx= _g103871_ 0) (apply make-eqv-table__0 _g103870_))
                ((##fx= _g103871_ 1) (apply make-eqv-table__1 _g103870_))
                ((##fx= _g103871_ 2) (apply make-eqv-table__% _g103870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g103870_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint102897%_ _%seed102899%_)
        (make-raw-table/lock__%
         _%size-hint102897%_
         eqv-hash
         eqv?
         _%seed102899%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint102905%_ '#f) (_%seed102907%_ '0))
          (make-eqv-table/lock__% _%size-hint102905%_ _%seed102907%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint102909%_)
        (let ((_%seed102911%_ '0))
          (make-eqv-table/lock__% _%size-hint102909%_ _%seed102911%_))))
    (define make-eqv-table/lock
      (lambda _g103872_
        (let ((_g103873_ (##length _g103872_)))
          (cond ((##fx= _g103873_ 0) (apply make-eqv-table/lock__0 _g103872_))
                ((##fx= _g103873_ 1) (apply make-eqv-table/lock__1 _g103872_))
                ((##fx= _g103873_ 2) (apply make-eqv-table/lock__% _g103872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g103872_))))))
    (define eqv-table-ref
      (lambda (_%tab102850%_ _%key102851%_ _%default102852%_)
        (let ((_%table102854%_ (&raw-table-table _%tab102850%_))
              (_%seed102855%_ (&raw-table-seed _%tab102850%_)))
          (let* ((_%h102857%_ (fxxor (eqv-hash _%key102851%_) _%seed102855%_))
                 (_%size102860%_ (vector-length _%table102854%_))
                 (_%entries102863%_ (##fxquotient _%size102860%_ '2))
                 (_%start102866%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102857%_ _%entries102863%_)
                   '1)))
            (let _%loop102870%_ ((_%probe102873%_ _%start102866%_)
                                 (_%i102875%_ '1)
                                 (_%deleted102877%_ '#f))
              (let ((_%k102880%_ (vector-ref _%table102854%_ _%probe102873%_)))
                (if (eq? _%k102880%_ (macro-unused-obj))
                    _%default102852%_
                    (if (eq? _%k102880%_ (macro-deleted-obj))
                        (_%loop102870%_
                         (let ((_%next-probe102885%_
                                (fx+ _%start102866%_
                                     _%i102875%_
                                     (fx* _%i102875%_ _%i102875%_))))
                           (##fxmodulo _%next-probe102885%_ _%size102860%_))
                         (##fx+ _%i102875%_ '1)
                         (let ((_%$e102888%_ _%deleted102877%_))
                           (if _%$e102888%_ _%$e102888%_ _%probe102873%_)))
                        (if (eqv? _%key102851%_ _%k102880%_)
                            (vector-ref
                             _%table102854%_
                             (##fx+ _%probe102873%_ '1))
                            (_%loop102870%_
                             (let ((_%next-probe102893%_
                                    (fx+ _%start102866%_
                                         _%i102875%_
                                         (fx* _%i102875%_ _%i102875%_))))
                               (##fxmodulo
                                _%next-probe102893%_
                                _%size102860%_))
                             (##fx+ _%i102875%_ '1)
                             _%deleted102877%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab102823%_ _%key102824%_ _%default102825%_)
        (let ((_%lock102827%_ (&raw-table-lock _%tab102823%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102832%_ ((_%spin102835%_ '0))
              (if (##fx= (##vector-cas! _%lock102827%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102827%_ '1 (current-thread))
                  (if (##fx< _%spin102835%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102832%_ (##fx+ _%spin102835%_ '1)))
                      (let ((_%owner102841%_ (##vector-ref _%lock102827%_ '1)))
                        (if (eq? _%owner102841%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102841%_)
                                (let () (##thread-yield!) (_%again102832%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102847%_
                 (eqv-table-ref
                  _%tab102823%_
                  _%key102824%_
                  _%default102825%_)))
            (##vector-set! _%lock102827%_ '1 '#f)
            (##vector-cas! _%lock102827%_ '0 '0 '1)
            _%$r102847%_))))
    (define __eqv-table-set!
      (lambda (_%tab102775%_ _%key102776%_ _%value102777%_)
        (let ((_%table102779%_ (&raw-table-table _%tab102775%_))
              (_%seed102780%_ (&raw-table-seed _%tab102775%_)))
          (let* ((_%h102782%_ (fxxor (eqv-hash _%key102776%_) _%seed102780%_))
                 (_%size102785%_ (vector-length _%table102779%_))
                 (_%entries102788%_ (##fxquotient _%size102785%_ '2))
                 (_%start102791%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102782%_ _%entries102788%_)
                   '1)))
            (let _%loop102795%_ ((_%probe102798%_ _%start102791%_)
                                 (_%i102800%_ '1)
                                 (_%deleted102802%_ '#f))
              (let ((_%k102805%_ (vector-ref _%table102779%_ _%probe102798%_)))
                (if (eq? _%k102805%_ (macro-unused-obj))
                    (if _%deleted102802%_
                        (begin
                          (vector-set!
                           _%table102779%_
                           _%deleted102802%_
                           _%key102776%_)
                          (vector-set!
                           _%table102779%_
                           (##fx+ _%deleted102802%_ '1)
                           _%value102777%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102775%_
                              (##fx+ (&raw-table-count _%tab102775%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102779%_
                           _%probe102798%_
                           _%key102776%_)
                          (vector-set!
                           _%table102779%_
                           (##fx+ _%probe102798%_ '1)
                           _%value102777%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102775%_
                              (##fx- (&raw-table-free _%tab102775%_) '1))
                             (&raw-table-count-set!
                              _%tab102775%_
                              (##fx+ (&raw-table-count _%tab102775%_) '1))))))
                    (if (eq? _%k102805%_ (macro-deleted-obj))
                        (_%loop102795%_
                         (let ((_%next-probe102812%_
                                (fx+ _%start102791%_
                                     _%i102800%_
                                     (fx* _%i102800%_ _%i102800%_))))
                           (##fxmodulo _%next-probe102812%_ _%size102785%_))
                         (##fx+ _%i102800%_ '1)
                         (let ((_%$e102815%_ _%deleted102802%_))
                           (if _%$e102815%_ _%$e102815%_ _%probe102798%_)))
                        (if (eqv? _%key102776%_ _%k102805%_)
                            (let ()
                              (vector-set!
                               _%table102779%_
                               _%probe102798%_
                               _%key102776%_)
                              (vector-set!
                               _%table102779%_
                               (##fx+ _%probe102798%_ '1)
                               _%value102777%_))
                            (_%loop102795%_
                             (let ((_%next-probe102820%_
                                    (fx+ _%start102791%_
                                         _%i102800%_
                                         (fx* _%i102800%_ _%i102800%_))))
                               (##fxmodulo
                                _%next-probe102820%_
                                _%size102785%_))
                             (##fx+ _%i102800%_ '1)
                             _%deleted102802%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab102771%_ _%key102772%_ _%value102773%_)
        (if (##fx< (&raw-table-free _%tab102771%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102771%_))
                    '4))
            (__raw-table-rehash! _%tab102771%_)
            '#!void)
        (__eqv-table-set! _%tab102771%_ _%key102772%_ _%value102773%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab102743%_ _%key102744%_ _%value102745%_)
        (let ((_%lock102748%_ (&raw-table-lock _%tab102743%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102753%_ ((_%spin102756%_ '0))
              (if (##fx= (##vector-cas! _%lock102748%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102748%_ '1 (current-thread))
                  (if (##fx< _%spin102756%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102753%_ (##fx+ _%spin102756%_ '1)))
                      (let ((_%owner102762%_ (##vector-ref _%lock102748%_ '1)))
                        (if (eq? _%owner102762%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102762%_)
                                (let () (##thread-yield!) (_%again102753%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102768%_
                 (eqv-table-set! _%tab102743%_ _%key102744%_ _%value102745%_)))
            (##vector-set! _%lock102748%_ '1 '#f)
            (##vector-cas! _%lock102748%_ '0 '0 '1)
            _%$r102768%_))))
    (define __eqv-table-update!
      (lambda (_%tab102694%_
               _%key102695%_
               _%eqv-table-update!102696%_
               _%default102697%_)
        (let ((_%table102699%_ (&raw-table-table _%tab102694%_))
              (_%seed102700%_ (&raw-table-seed _%tab102694%_)))
          (let* ((_%h102702%_ (fxxor (eqv-hash _%key102695%_) _%seed102700%_))
                 (_%size102705%_ (vector-length _%table102699%_))
                 (_%entries102708%_ (##fxquotient _%size102705%_ '2))
                 (_%start102711%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102702%_ _%entries102708%_)
                   '1)))
            (let _%loop102715%_ ((_%probe102718%_ _%start102711%_)
                                 (_%i102720%_ '1)
                                 (_%deleted102722%_ '#f))
              (let ((_%k102725%_ (vector-ref _%table102699%_ _%probe102718%_)))
                (if (eq? _%k102725%_ (macro-unused-obj))
                    (if _%deleted102722%_
                        (begin
                          (vector-set!
                           _%table102699%_
                           _%deleted102722%_
                           _%key102695%_)
                          (vector-set!
                           _%table102699%_
                           (##fx+ _%deleted102722%_ '1)
                           (_%eqv-table-update!102696%_ _%default102697%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102694%_
                              (##fx+ (&raw-table-count _%tab102694%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102699%_
                           _%probe102718%_
                           _%key102695%_)
                          (vector-set!
                           _%table102699%_
                           (##fx+ _%probe102718%_ '1)
                           (_%eqv-table-update!102696%_ _%default102697%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102694%_
                              (##fx- (&raw-table-free _%tab102694%_) '1))
                             (&raw-table-count-set!
                              _%tab102694%_
                              (##fx+ (&raw-table-count _%tab102694%_) '1))))))
                    (if (eq? _%k102725%_ (macro-deleted-obj))
                        (_%loop102715%_
                         (let ((_%next-probe102732%_
                                (fx+ _%start102711%_
                                     _%i102720%_
                                     (fx* _%i102720%_ _%i102720%_))))
                           (##fxmodulo _%next-probe102732%_ _%size102705%_))
                         (##fx+ _%i102720%_ '1)
                         (let ((_%$e102735%_ _%deleted102722%_))
                           (if _%$e102735%_ _%$e102735%_ _%probe102718%_)))
                        (if (eqv? _%key102695%_ _%k102725%_)
                            (let ()
                              (vector-set!
                               _%table102699%_
                               _%probe102718%_
                               _%key102695%_)
                              (vector-set!
                               _%table102699%_
                               (##fx+ _%probe102718%_ '1)
                               (_%eqv-table-update!102696%_
                                (vector-ref
                                 _%table102699%_
                                 (##fx+ _%probe102718%_ '1)))))
                            (_%loop102715%_
                             (let ((_%next-probe102740%_
                                    (fx+ _%start102711%_
                                         _%i102720%_
                                         (fx* _%i102720%_ _%i102720%_))))
                               (##fxmodulo
                                _%next-probe102740%_
                                _%size102705%_))
                             (##fx+ _%i102720%_ '1)
                             _%deleted102722%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab102689%_
               _%key102690%_
               _%eqv-table-update!102691%_
               _%default102692%_)
        (if (##fx< (&raw-table-free _%tab102689%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102689%_))
                    '4))
            (__raw-table-rehash! _%tab102689%_)
            '#!void)
        (__eqv-table-update!
         _%tab102689%_
         _%key102690%_
         _%eqv-table-update!102691%_
         _%default102692%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab102660%_
               _%key102661%_
               _%eqv-table-update!102662%_
               _%default102663%_)
        (let ((_%lock102666%_ (&raw-table-lock _%tab102660%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102671%_ ((_%spin102674%_ '0))
              (if (##fx= (##vector-cas! _%lock102666%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102666%_ '1 (current-thread))
                  (if (##fx< _%spin102674%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102671%_ (##fx+ _%spin102674%_ '1)))
                      (let ((_%owner102680%_ (##vector-ref _%lock102666%_ '1)))
                        (if (eq? _%owner102680%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102680%_)
                                (let () (##thread-yield!) (_%again102671%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102686%_
                 (_%eqv-table-update!102662%_
                  _%tab102660%_
                  _%key102661%_
                  _%eqv-table-update!102662%_
                  _%default102663%_)))
            (##vector-set! _%lock102666%_ '1 '#f)
            (##vector-cas! _%lock102666%_ '0 '0 '1)
            _%$r102686%_))))
    (define eqv-table-delete!
      (lambda (_%tab102617%_ _%key102618%_)
        (let ((_%table102620%_ (&raw-table-table _%tab102617%_))
              (_%seed102622%_ (&raw-table-seed _%tab102617%_)))
          (let* ((_%h102625%_ (fxxor (eqv-hash _%key102618%_) _%seed102622%_))
                 (_%size102628%_ (vector-length _%table102620%_))
                 (_%entries102631%_ (##fxquotient _%size102628%_ '2))
                 (_%start102634%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102625%_ _%entries102631%_)
                   '1)))
            (let _%loop102638%_ ((_%probe102641%_ _%start102634%_)
                                 (_%i102643%_ '1))
              (let ((_%k102646%_ (vector-ref _%table102620%_ _%probe102641%_)))
                (if (eq? _%k102646%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102646%_ (macro-deleted-obj))
                        (_%loop102638%_
                         (let ((_%next-probe102651%_
                                (fx+ _%start102634%_
                                     _%i102643%_
                                     (fx* _%i102643%_ _%i102643%_))))
                           (##fxmodulo _%next-probe102651%_ _%size102628%_))
                         (##fx+ _%i102643%_ '1))
                        (if (eqv? _%key102618%_ _%k102646%_)
                            (let ()
                              (vector-set!
                               _%table102620%_
                               _%probe102641%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102620%_
                               (##fx+ _%probe102641%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102617%_
                                  (##fx- (&raw-table-count _%tab102617%_)
                                         '1)))))
                            (_%loop102638%_
                             (let ((_%next-probe102657%_
                                    (fx+ _%start102634%_
                                         _%i102643%_
                                         (fx* _%i102643%_ _%i102643%_))))
                               (##fxmodulo
                                _%next-probe102657%_
                                _%size102628%_))
                             (##fx+ _%i102643%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab102589%_ _%key102591%_)
        (let ((_%lock102594%_ (&raw-table-lock _%tab102589%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102599%_ ((_%spin102602%_ '0))
              (if (##fx= (##vector-cas! _%lock102594%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102594%_ '1 (current-thread))
                  (if (##fx< _%spin102602%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102599%_ (##fx+ _%spin102602%_ '1)))
                      (let ((_%owner102608%_ (##vector-ref _%lock102594%_ '1)))
                        (if (eq? _%owner102608%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102608%_)
                                (let () (##thread-yield!) (_%again102599%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102614%_ (eqv-table-delete! _%tab102589%_ _%key102591%_)))
            (##vector-set! _%lock102594%_ '1 '#f)
            (##vector-cas! _%lock102594%_ '0 '0 '1)
            _%$r102614%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint102571%_ _%seed102572%_)
        (make-raw-table__1
         _%size-hint102571%_
         symbolic-hash
         eq?
         _%seed102572%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint102578%_ '#f) (_%seed102580%_ '0))
          (make-symbolic-table__% _%size-hint102578%_ _%seed102580%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint102582%_)
        (let ((_%seed102584%_ '0))
          (make-symbolic-table__% _%size-hint102582%_ _%seed102584%_))))
    (define make-symbolic-table
      (lambda _g103874_
        (let ((_g103875_ (##length _g103874_)))
          (cond ((##fx= _g103875_ 0) (apply make-symbolic-table__0 _g103874_))
                ((##fx= _g103875_ 1) (apply make-symbolic-table__1 _g103874_))
                ((##fx= _g103875_ 2) (apply make-symbolic-table__% _g103874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g103874_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint102551%_ _%seed102553%_)
        (make-raw-table/lock__%
         _%size-hint102551%_
         symbolic-hash
         eq?
         _%seed102553%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint102559%_ '#f) (_%seed102561%_ '0))
          (make-symbolic-table/lock__% _%size-hint102559%_ _%seed102561%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint102563%_)
        (let ((_%seed102565%_ '0))
          (make-symbolic-table/lock__% _%size-hint102563%_ _%seed102565%_))))
    (define make-symbolic-table/lock
      (lambda _g103876_
        (let ((_g103877_ (##length _g103876_)))
          (cond ((##fx= _g103877_ 0)
                 (apply make-symbolic-table/lock__0 _g103876_))
                ((##fx= _g103877_ 1)
                 (apply make-symbolic-table/lock__1 _g103876_))
                ((##fx= _g103877_ 2)
                 (apply make-symbolic-table/lock__% _g103876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g103876_))))))
    (define symbolic-table-ref
      (lambda (_%tab102504%_ _%key102505%_ _%default102506%_)
        (let ((_%table102508%_ (&raw-table-table _%tab102504%_))
              (_%seed102509%_ (&raw-table-seed _%tab102504%_)))
          (let* ((_%h102511%_
                  (fxxor (##symbol-hash _%key102505%_) _%seed102509%_))
                 (_%size102514%_ (vector-length _%table102508%_))
                 (_%entries102517%_ (##fxquotient _%size102514%_ '2))
                 (_%start102520%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102511%_ _%entries102517%_)
                   '1)))
            (let _%loop102524%_ ((_%probe102527%_ _%start102520%_)
                                 (_%i102529%_ '1)
                                 (_%deleted102531%_ '#f))
              (let ((_%k102534%_ (vector-ref _%table102508%_ _%probe102527%_)))
                (if (eq? _%k102534%_ (macro-unused-obj))
                    _%default102506%_
                    (if (eq? _%k102534%_ (macro-deleted-obj))
                        (_%loop102524%_
                         (let ((_%next-probe102539%_
                                (fx+ _%start102520%_
                                     _%i102529%_
                                     (fx* _%i102529%_ _%i102529%_))))
                           (##fxmodulo _%next-probe102539%_ _%size102514%_))
                         (##fx+ _%i102529%_ '1)
                         (let ((_%$e102542%_ _%deleted102531%_))
                           (if _%$e102542%_ _%$e102542%_ _%probe102527%_)))
                        (if (eq? _%key102505%_ _%k102534%_)
                            (vector-ref
                             _%table102508%_
                             (##fx+ _%probe102527%_ '1))
                            (_%loop102524%_
                             (let ((_%next-probe102547%_
                                    (fx+ _%start102520%_
                                         _%i102529%_
                                         (fx* _%i102529%_ _%i102529%_))))
                               (##fxmodulo
                                _%next-probe102547%_
                                _%size102514%_))
                             (##fx+ _%i102529%_ '1)
                             _%deleted102531%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab102477%_ _%key102478%_ _%default102479%_)
        (let ((_%lock102481%_ (&raw-table-lock _%tab102477%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102486%_ ((_%spin102489%_ '0))
              (if (##fx= (##vector-cas! _%lock102481%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102481%_ '1 (current-thread))
                  (if (##fx< _%spin102489%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102486%_ (##fx+ _%spin102489%_ '1)))
                      (let ((_%owner102495%_ (##vector-ref _%lock102481%_ '1)))
                        (if (eq? _%owner102495%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102495%_)
                                (let () (##thread-yield!) (_%again102486%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102501%_
                 (symbolic-table-ref
                  _%tab102477%_
                  _%key102478%_
                  _%default102479%_)))
            (##vector-set! _%lock102481%_ '1 '#f)
            (##vector-cas! _%lock102481%_ '0 '0 '1)
            _%$r102501%_))))
    (define __symbolic-table-set!
      (lambda (_%tab102429%_ _%key102430%_ _%value102431%_)
        (let ((_%table102433%_ (&raw-table-table _%tab102429%_))
              (_%seed102434%_ (&raw-table-seed _%tab102429%_)))
          (let* ((_%h102436%_
                  (fxxor (##symbol-hash _%key102430%_) _%seed102434%_))
                 (_%size102439%_ (vector-length _%table102433%_))
                 (_%entries102442%_ (##fxquotient _%size102439%_ '2))
                 (_%start102445%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102436%_ _%entries102442%_)
                   '1)))
            (let _%loop102449%_ ((_%probe102452%_ _%start102445%_)
                                 (_%i102454%_ '1)
                                 (_%deleted102456%_ '#f))
              (let ((_%k102459%_ (vector-ref _%table102433%_ _%probe102452%_)))
                (if (eq? _%k102459%_ (macro-unused-obj))
                    (if _%deleted102456%_
                        (begin
                          (vector-set!
                           _%table102433%_
                           _%deleted102456%_
                           _%key102430%_)
                          (vector-set!
                           _%table102433%_
                           (##fx+ _%deleted102456%_ '1)
                           _%value102431%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102429%_
                              (##fx+ (&raw-table-count _%tab102429%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102433%_
                           _%probe102452%_
                           _%key102430%_)
                          (vector-set!
                           _%table102433%_
                           (##fx+ _%probe102452%_ '1)
                           _%value102431%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102429%_
                              (##fx- (&raw-table-free _%tab102429%_) '1))
                             (&raw-table-count-set!
                              _%tab102429%_
                              (##fx+ (&raw-table-count _%tab102429%_) '1))))))
                    (if (eq? _%k102459%_ (macro-deleted-obj))
                        (_%loop102449%_
                         (let ((_%next-probe102466%_
                                (fx+ _%start102445%_
                                     _%i102454%_
                                     (fx* _%i102454%_ _%i102454%_))))
                           (##fxmodulo _%next-probe102466%_ _%size102439%_))
                         (##fx+ _%i102454%_ '1)
                         (let ((_%$e102469%_ _%deleted102456%_))
                           (if _%$e102469%_ _%$e102469%_ _%probe102452%_)))
                        (if (eq? _%key102430%_ _%k102459%_)
                            (let ()
                              (vector-set!
                               _%table102433%_
                               _%probe102452%_
                               _%key102430%_)
                              (vector-set!
                               _%table102433%_
                               (##fx+ _%probe102452%_ '1)
                               _%value102431%_))
                            (_%loop102449%_
                             (let ((_%next-probe102474%_
                                    (fx+ _%start102445%_
                                         _%i102454%_
                                         (fx* _%i102454%_ _%i102454%_))))
                               (##fxmodulo
                                _%next-probe102474%_
                                _%size102439%_))
                             (##fx+ _%i102454%_ '1)
                             _%deleted102456%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab102425%_ _%key102426%_ _%value102427%_)
        (if (##fx< (&raw-table-free _%tab102425%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102425%_))
                    '4))
            (__raw-table-rehash! _%tab102425%_)
            '#!void)
        (__symbolic-table-set! _%tab102425%_ _%key102426%_ _%value102427%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab102397%_ _%key102398%_ _%value102399%_)
        (let ((_%lock102402%_ (&raw-table-lock _%tab102397%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102407%_ ((_%spin102410%_ '0))
              (if (##fx= (##vector-cas! _%lock102402%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102402%_ '1 (current-thread))
                  (if (##fx< _%spin102410%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102407%_ (##fx+ _%spin102410%_ '1)))
                      (let ((_%owner102416%_ (##vector-ref _%lock102402%_ '1)))
                        (if (eq? _%owner102416%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102416%_)
                                (let () (##thread-yield!) (_%again102407%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102422%_
                 (symbolic-table-set!
                  _%tab102397%_
                  _%key102398%_
                  _%value102399%_)))
            (##vector-set! _%lock102402%_ '1 '#f)
            (##vector-cas! _%lock102402%_ '0 '0 '1)
            _%$r102422%_))))
    (define __symbolic-table-update!
      (lambda (_%tab102348%_
               _%key102349%_
               _%symbolic-table-update!102350%_
               _%default102351%_)
        (let ((_%table102353%_ (&raw-table-table _%tab102348%_))
              (_%seed102354%_ (&raw-table-seed _%tab102348%_)))
          (let* ((_%h102356%_
                  (fxxor (##symbol-hash _%key102349%_) _%seed102354%_))
                 (_%size102359%_ (vector-length _%table102353%_))
                 (_%entries102362%_ (##fxquotient _%size102359%_ '2))
                 (_%start102365%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102356%_ _%entries102362%_)
                   '1)))
            (let _%loop102369%_ ((_%probe102372%_ _%start102365%_)
                                 (_%i102374%_ '1)
                                 (_%deleted102376%_ '#f))
              (let ((_%k102379%_ (vector-ref _%table102353%_ _%probe102372%_)))
                (if (eq? _%k102379%_ (macro-unused-obj))
                    (if _%deleted102376%_
                        (begin
                          (vector-set!
                           _%table102353%_
                           _%deleted102376%_
                           _%key102349%_)
                          (vector-set!
                           _%table102353%_
                           (##fx+ _%deleted102376%_ '1)
                           (_%symbolic-table-update!102350%_
                            _%default102351%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102348%_
                              (##fx+ (&raw-table-count _%tab102348%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102353%_
                           _%probe102372%_
                           _%key102349%_)
                          (vector-set!
                           _%table102353%_
                           (##fx+ _%probe102372%_ '1)
                           (_%symbolic-table-update!102350%_
                            _%default102351%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102348%_
                              (##fx- (&raw-table-free _%tab102348%_) '1))
                             (&raw-table-count-set!
                              _%tab102348%_
                              (##fx+ (&raw-table-count _%tab102348%_) '1))))))
                    (if (eq? _%k102379%_ (macro-deleted-obj))
                        (_%loop102369%_
                         (let ((_%next-probe102386%_
                                (fx+ _%start102365%_
                                     _%i102374%_
                                     (fx* _%i102374%_ _%i102374%_))))
                           (##fxmodulo _%next-probe102386%_ _%size102359%_))
                         (##fx+ _%i102374%_ '1)
                         (let ((_%$e102389%_ _%deleted102376%_))
                           (if _%$e102389%_ _%$e102389%_ _%probe102372%_)))
                        (if (eq? _%key102349%_ _%k102379%_)
                            (let ()
                              (vector-set!
                               _%table102353%_
                               _%probe102372%_
                               _%key102349%_)
                              (vector-set!
                               _%table102353%_
                               (##fx+ _%probe102372%_ '1)
                               (_%symbolic-table-update!102350%_
                                (vector-ref
                                 _%table102353%_
                                 (##fx+ _%probe102372%_ '1)))))
                            (_%loop102369%_
                             (let ((_%next-probe102394%_
                                    (fx+ _%start102365%_
                                         _%i102374%_
                                         (fx* _%i102374%_ _%i102374%_))))
                               (##fxmodulo
                                _%next-probe102394%_
                                _%size102359%_))
                             (##fx+ _%i102374%_ '1)
                             _%deleted102376%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab102343%_
               _%key102344%_
               _%symbolic-table-update!102345%_
               _%default102346%_)
        (if (##fx< (&raw-table-free _%tab102343%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102343%_))
                    '4))
            (__raw-table-rehash! _%tab102343%_)
            '#!void)
        (__symbolic-table-update!
         _%tab102343%_
         _%key102344%_
         _%symbolic-table-update!102345%_
         _%default102346%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab102314%_
               _%key102315%_
               _%symbolic-table-update!102316%_
               _%default102317%_)
        (let ((_%lock102320%_ (&raw-table-lock _%tab102314%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102325%_ ((_%spin102328%_ '0))
              (if (##fx= (##vector-cas! _%lock102320%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102320%_ '1 (current-thread))
                  (if (##fx< _%spin102328%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102325%_ (##fx+ _%spin102328%_ '1)))
                      (let ((_%owner102334%_ (##vector-ref _%lock102320%_ '1)))
                        (if (eq? _%owner102334%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102334%_)
                                (let () (##thread-yield!) (_%again102325%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102340%_
                 (_%symbolic-table-update!102316%_
                  _%tab102314%_
                  _%key102315%_
                  _%symbolic-table-update!102316%_
                  _%default102317%_)))
            (##vector-set! _%lock102320%_ '1 '#f)
            (##vector-cas! _%lock102320%_ '0 '0 '1)
            _%$r102340%_))))
    (define symbolic-table-delete!
      (lambda (_%tab102271%_ _%key102272%_)
        (let ((_%table102274%_ (&raw-table-table _%tab102271%_))
              (_%seed102276%_ (&raw-table-seed _%tab102271%_)))
          (let* ((_%h102279%_
                  (fxxor (##symbol-hash _%key102272%_) _%seed102276%_))
                 (_%size102282%_ (vector-length _%table102274%_))
                 (_%entries102285%_ (##fxquotient _%size102282%_ '2))
                 (_%start102288%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102279%_ _%entries102285%_)
                   '1)))
            (let _%loop102292%_ ((_%probe102295%_ _%start102288%_)
                                 (_%i102297%_ '1))
              (let ((_%k102300%_ (vector-ref _%table102274%_ _%probe102295%_)))
                (if (eq? _%k102300%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102300%_ (macro-deleted-obj))
                        (_%loop102292%_
                         (let ((_%next-probe102305%_
                                (fx+ _%start102288%_
                                     _%i102297%_
                                     (fx* _%i102297%_ _%i102297%_))))
                           (##fxmodulo _%next-probe102305%_ _%size102282%_))
                         (##fx+ _%i102297%_ '1))
                        (if (eq? _%key102272%_ _%k102300%_)
                            (let ()
                              (vector-set!
                               _%table102274%_
                               _%probe102295%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102274%_
                               (##fx+ _%probe102295%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102271%_
                                  (##fx- (&raw-table-count _%tab102271%_)
                                         '1)))))
                            (_%loop102292%_
                             (let ((_%next-probe102311%_
                                    (fx+ _%start102288%_
                                         _%i102297%_
                                         (fx* _%i102297%_ _%i102297%_))))
                               (##fxmodulo
                                _%next-probe102311%_
                                _%size102282%_))
                             (##fx+ _%i102297%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab102243%_ _%key102245%_)
        (let ((_%lock102248%_ (&raw-table-lock _%tab102243%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102253%_ ((_%spin102256%_ '0))
              (if (##fx= (##vector-cas! _%lock102248%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102248%_ '1 (current-thread))
                  (if (##fx< _%spin102256%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102253%_ (##fx+ _%spin102256%_ '1)))
                      (let ((_%owner102262%_ (##vector-ref _%lock102248%_ '1)))
                        (if (eq? _%owner102262%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102262%_)
                                (let () (##thread-yield!) (_%again102253%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102268%_
                 (symbolic-table-delete! _%tab102243%_ _%key102245%_)))
            (##vector-set! _%lock102248%_ '1 '#f)
            (##vector-cas! _%lock102248%_ '0 '0 '1)
            _%$r102268%_))))
    (define make-string-table__%
      (lambda (_%size-hint102225%_ _%seed102226%_)
        (make-raw-table__1
         _%size-hint102225%_
         string-hash
         ##string=?
         _%seed102226%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint102232%_ '#f) (_%seed102234%_ '0))
          (make-string-table__% _%size-hint102232%_ _%seed102234%_))))
    (define make-string-table__1
      (lambda (_%size-hint102236%_)
        (let ((_%seed102238%_ '0))
          (make-string-table__% _%size-hint102236%_ _%seed102238%_))))
    (define make-string-table
      (lambda _g103878_
        (let ((_g103879_ (##length _g103878_)))
          (cond ((##fx= _g103879_ 0) (apply make-string-table__0 _g103878_))
                ((##fx= _g103879_ 1) (apply make-string-table__1 _g103878_))
                ((##fx= _g103879_ 2) (apply make-string-table__% _g103878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g103878_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint102205%_ _%seed102207%_)
        (make-raw-table/lock__%
         _%size-hint102205%_
         string-hash
         ##string=?
         _%seed102207%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint102213%_ '#f) (_%seed102215%_ '0))
          (make-string-table/lock__% _%size-hint102213%_ _%seed102215%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint102217%_)
        (let ((_%seed102219%_ '0))
          (make-string-table/lock__% _%size-hint102217%_ _%seed102219%_))))
    (define make-string-table/lock
      (lambda _g103880_
        (let ((_g103881_ (##length _g103880_)))
          (cond ((##fx= _g103881_ 0)
                 (apply make-string-table/lock__0 _g103880_))
                ((##fx= _g103881_ 1)
                 (apply make-string-table/lock__1 _g103880_))
                ((##fx= _g103881_ 2)
                 (apply make-string-table/lock__% _g103880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g103880_))))))
    (define string-table-ref
      (lambda (_%tab102158%_ _%key102159%_ _%default102160%_)
        (let ((_%table102162%_ (&raw-table-table _%tab102158%_))
              (_%seed102163%_ (&raw-table-seed _%tab102158%_)))
          (let* ((_%h102165%_
                  (fxxor (##string=?-hash _%key102159%_) _%seed102163%_))
                 (_%size102168%_ (vector-length _%table102162%_))
                 (_%entries102171%_ (##fxquotient _%size102168%_ '2))
                 (_%start102174%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102165%_ _%entries102171%_)
                   '1)))
            (let _%loop102178%_ ((_%probe102181%_ _%start102174%_)
                                 (_%i102183%_ '1)
                                 (_%deleted102185%_ '#f))
              (let ((_%k102188%_ (vector-ref _%table102162%_ _%probe102181%_)))
                (if (eq? _%k102188%_ (macro-unused-obj))
                    _%default102160%_
                    (if (eq? _%k102188%_ (macro-deleted-obj))
                        (_%loop102178%_
                         (let ((_%next-probe102193%_
                                (fx+ _%start102174%_
                                     _%i102183%_
                                     (fx* _%i102183%_ _%i102183%_))))
                           (##fxmodulo _%next-probe102193%_ _%size102168%_))
                         (##fx+ _%i102183%_ '1)
                         (let ((_%$e102196%_ _%deleted102185%_))
                           (if _%$e102196%_ _%$e102196%_ _%probe102181%_)))
                        (if (##string=? _%key102159%_ _%k102188%_)
                            (vector-ref
                             _%table102162%_
                             (##fx+ _%probe102181%_ '1))
                            (_%loop102178%_
                             (let ((_%next-probe102201%_
                                    (fx+ _%start102174%_
                                         _%i102183%_
                                         (fx* _%i102183%_ _%i102183%_))))
                               (##fxmodulo
                                _%next-probe102201%_
                                _%size102168%_))
                             (##fx+ _%i102183%_ '1)
                             _%deleted102185%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab102131%_ _%key102132%_ _%default102133%_)
        (let ((_%lock102135%_ (&raw-table-lock _%tab102131%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102140%_ ((_%spin102143%_ '0))
              (if (##fx= (##vector-cas! _%lock102135%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102135%_ '1 (current-thread))
                  (if (##fx< _%spin102143%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102140%_ (##fx+ _%spin102143%_ '1)))
                      (let ((_%owner102149%_ (##vector-ref _%lock102135%_ '1)))
                        (if (eq? _%owner102149%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102149%_)
                                (let () (##thread-yield!) (_%again102140%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102155%_
                 (string-table-ref
                  _%tab102131%_
                  _%key102132%_
                  _%default102133%_)))
            (##vector-set! _%lock102135%_ '1 '#f)
            (##vector-cas! _%lock102135%_ '0 '0 '1)
            _%$r102155%_))))
    (define __string-table-set!
      (lambda (_%tab102083%_ _%key102084%_ _%value102085%_)
        (let ((_%table102087%_ (&raw-table-table _%tab102083%_))
              (_%seed102088%_ (&raw-table-seed _%tab102083%_)))
          (let* ((_%h102090%_
                  (fxxor (##string=?-hash _%key102084%_) _%seed102088%_))
                 (_%size102093%_ (vector-length _%table102087%_))
                 (_%entries102096%_ (##fxquotient _%size102093%_ '2))
                 (_%start102099%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102090%_ _%entries102096%_)
                   '1)))
            (let _%loop102103%_ ((_%probe102106%_ _%start102099%_)
                                 (_%i102108%_ '1)
                                 (_%deleted102110%_ '#f))
              (let ((_%k102113%_ (vector-ref _%table102087%_ _%probe102106%_)))
                (if (eq? _%k102113%_ (macro-unused-obj))
                    (if _%deleted102110%_
                        (begin
                          (vector-set!
                           _%table102087%_
                           _%deleted102110%_
                           _%key102084%_)
                          (vector-set!
                           _%table102087%_
                           (##fx+ _%deleted102110%_ '1)
                           _%value102085%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102083%_
                              (##fx+ (&raw-table-count _%tab102083%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102087%_
                           _%probe102106%_
                           _%key102084%_)
                          (vector-set!
                           _%table102087%_
                           (##fx+ _%probe102106%_ '1)
                           _%value102085%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102083%_
                              (##fx- (&raw-table-free _%tab102083%_) '1))
                             (&raw-table-count-set!
                              _%tab102083%_
                              (##fx+ (&raw-table-count _%tab102083%_) '1))))))
                    (if (eq? _%k102113%_ (macro-deleted-obj))
                        (_%loop102103%_
                         (let ((_%next-probe102120%_
                                (fx+ _%start102099%_
                                     _%i102108%_
                                     (fx* _%i102108%_ _%i102108%_))))
                           (##fxmodulo _%next-probe102120%_ _%size102093%_))
                         (##fx+ _%i102108%_ '1)
                         (let ((_%$e102123%_ _%deleted102110%_))
                           (if _%$e102123%_ _%$e102123%_ _%probe102106%_)))
                        (if (##string=? _%key102084%_ _%k102113%_)
                            (let ()
                              (vector-set!
                               _%table102087%_
                               _%probe102106%_
                               _%key102084%_)
                              (vector-set!
                               _%table102087%_
                               (##fx+ _%probe102106%_ '1)
                               _%value102085%_))
                            (_%loop102103%_
                             (let ((_%next-probe102128%_
                                    (fx+ _%start102099%_
                                         _%i102108%_
                                         (fx* _%i102108%_ _%i102108%_))))
                               (##fxmodulo
                                _%next-probe102128%_
                                _%size102093%_))
                             (##fx+ _%i102108%_ '1)
                             _%deleted102110%_))))))))))
    (define string-table-set!
      (lambda (_%tab102079%_ _%key102080%_ _%value102081%_)
        (if (##fx< (&raw-table-free _%tab102079%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab102079%_))
                    '4))
            (__raw-table-rehash! _%tab102079%_)
            '#!void)
        (__string-table-set! _%tab102079%_ _%key102080%_ _%value102081%_)))
    (define string-table-set!/lock
      (lambda (_%tab102051%_ _%key102052%_ _%value102053%_)
        (let ((_%lock102056%_ (&raw-table-lock _%tab102051%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102061%_ ((_%spin102064%_ '0))
              (if (##fx= (##vector-cas! _%lock102056%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102056%_ '1 (current-thread))
                  (if (##fx< _%spin102064%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102061%_ (##fx+ _%spin102064%_ '1)))
                      (let ((_%owner102070%_ (##vector-ref _%lock102056%_ '1)))
                        (if (eq? _%owner102070%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner102070%_)
                                (let () (##thread-yield!) (_%again102061%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r102076%_
                 (string-table-set!
                  _%tab102051%_
                  _%key102052%_
                  _%value102053%_)))
            (##vector-set! _%lock102056%_ '1 '#f)
            (##vector-cas! _%lock102056%_ '0 '0 '1)
            _%$r102076%_))))
    (define __string-table-update!
      (lambda (_%tab102002%_
               _%key102003%_
               _%string-table-update!102004%_
               _%default102005%_)
        (let ((_%table102007%_ (&raw-table-table _%tab102002%_))
              (_%seed102008%_ (&raw-table-seed _%tab102002%_)))
          (let* ((_%h102010%_
                  (fxxor (##string=?-hash _%key102003%_) _%seed102008%_))
                 (_%size102013%_ (vector-length _%table102007%_))
                 (_%entries102016%_ (##fxquotient _%size102013%_ '2))
                 (_%start102019%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h102010%_ _%entries102016%_)
                   '1)))
            (let _%loop102023%_ ((_%probe102026%_ _%start102019%_)
                                 (_%i102028%_ '1)
                                 (_%deleted102030%_ '#f))
              (let ((_%k102033%_ (vector-ref _%table102007%_ _%probe102026%_)))
                (if (eq? _%k102033%_ (macro-unused-obj))
                    (if _%deleted102030%_
                        (begin
                          (vector-set!
                           _%table102007%_
                           _%deleted102030%_
                           _%key102003%_)
                          (vector-set!
                           _%table102007%_
                           (##fx+ _%deleted102030%_ '1)
                           (_%string-table-update!102004%_ _%default102005%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102002%_
                              (##fx+ (&raw-table-count _%tab102002%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102007%_
                           _%probe102026%_
                           _%key102003%_)
                          (vector-set!
                           _%table102007%_
                           (##fx+ _%probe102026%_ '1)
                           (_%string-table-update!102004%_ _%default102005%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102002%_
                              (##fx- (&raw-table-free _%tab102002%_) '1))
                             (&raw-table-count-set!
                              _%tab102002%_
                              (##fx+ (&raw-table-count _%tab102002%_) '1))))))
                    (if (eq? _%k102033%_ (macro-deleted-obj))
                        (_%loop102023%_
                         (let ((_%next-probe102040%_
                                (fx+ _%start102019%_
                                     _%i102028%_
                                     (fx* _%i102028%_ _%i102028%_))))
                           (##fxmodulo _%next-probe102040%_ _%size102013%_))
                         (##fx+ _%i102028%_ '1)
                         (let ((_%$e102043%_ _%deleted102030%_))
                           (if _%$e102043%_ _%$e102043%_ _%probe102026%_)))
                        (if (##string=? _%key102003%_ _%k102033%_)
                            (let ()
                              (vector-set!
                               _%table102007%_
                               _%probe102026%_
                               _%key102003%_)
                              (vector-set!
                               _%table102007%_
                               (##fx+ _%probe102026%_ '1)
                               (_%string-table-update!102004%_
                                (vector-ref
                                 _%table102007%_
                                 (##fx+ _%probe102026%_ '1)))))
                            (_%loop102023%_
                             (let ((_%next-probe102048%_
                                    (fx+ _%start102019%_
                                         _%i102028%_
                                         (fx* _%i102028%_ _%i102028%_))))
                               (##fxmodulo
                                _%next-probe102048%_
                                _%size102013%_))
                             (##fx+ _%i102028%_ '1)
                             _%deleted102030%_))))))))))
    (define string-table-update!
      (lambda (_%tab101997%_
               _%key101998%_
               _%string-table-update!101999%_
               _%default102000%_)
        (if (##fx< (&raw-table-free _%tab101997%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101997%_))
                    '4))
            (__raw-table-rehash! _%tab101997%_)
            '#!void)
        (__string-table-update!
         _%tab101997%_
         _%key101998%_
         _%string-table-update!101999%_
         _%default102000%_)))
    (define string-table-update!/lock
      (lambda (_%tab101968%_
               _%key101969%_
               _%string-table-update!101970%_
               _%default101971%_)
        (let ((_%lock101974%_ (&raw-table-lock _%tab101968%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101979%_ ((_%spin101982%_ '0))
              (if (##fx= (##vector-cas! _%lock101974%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101974%_ '1 (current-thread))
                  (if (##fx< _%spin101982%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101979%_ (##fx+ _%spin101982%_ '1)))
                      (let ((_%owner101988%_ (##vector-ref _%lock101974%_ '1)))
                        (if (eq? _%owner101988%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101988%_)
                                (let () (##thread-yield!) (_%again101979%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101994%_
                 (_%string-table-update!101970%_
                  _%tab101968%_
                  _%key101969%_
                  _%string-table-update!101970%_
                  _%default101971%_)))
            (##vector-set! _%lock101974%_ '1 '#f)
            (##vector-cas! _%lock101974%_ '0 '0 '1)
            _%$r101994%_))))
    (define string-table-delete!
      (lambda (_%tab101925%_ _%key101926%_)
        (let ((_%table101928%_ (&raw-table-table _%tab101925%_))
              (_%seed101930%_ (&raw-table-seed _%tab101925%_)))
          (let* ((_%h101933%_
                  (fxxor (##string=?-hash _%key101926%_) _%seed101930%_))
                 (_%size101936%_ (vector-length _%table101928%_))
                 (_%entries101939%_ (##fxquotient _%size101936%_ '2))
                 (_%start101942%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101933%_ _%entries101939%_)
                   '1)))
            (let _%loop101946%_ ((_%probe101949%_ _%start101942%_)
                                 (_%i101951%_ '1))
              (let ((_%k101954%_ (vector-ref _%table101928%_ _%probe101949%_)))
                (if (eq? _%k101954%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101954%_ (macro-deleted-obj))
                        (_%loop101946%_
                         (let ((_%next-probe101959%_
                                (fx+ _%start101942%_
                                     _%i101951%_
                                     (fx* _%i101951%_ _%i101951%_))))
                           (##fxmodulo _%next-probe101959%_ _%size101936%_))
                         (##fx+ _%i101951%_ '1))
                        (if (##string=? _%key101926%_ _%k101954%_)
                            (let ()
                              (vector-set!
                               _%table101928%_
                               _%probe101949%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101928%_
                               (##fx+ _%probe101949%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101925%_
                                  (##fx- (&raw-table-count _%tab101925%_)
                                         '1)))))
                            (_%loop101946%_
                             (let ((_%next-probe101965%_
                                    (fx+ _%start101942%_
                                         _%i101951%_
                                         (fx* _%i101951%_ _%i101951%_))))
                               (##fxmodulo
                                _%next-probe101965%_
                                _%size101936%_))
                             (##fx+ _%i101951%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab101897%_ _%key101899%_)
        (let ((_%lock101902%_ (&raw-table-lock _%tab101897%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101907%_ ((_%spin101910%_ '0))
              (if (##fx= (##vector-cas! _%lock101902%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101902%_ '1 (current-thread))
                  (if (##fx< _%spin101910%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101907%_ (##fx+ _%spin101910%_ '1)))
                      (let ((_%owner101916%_ (##vector-ref _%lock101902%_ '1)))
                        (if (eq? _%owner101916%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101916%_)
                                (let () (##thread-yield!) (_%again101907%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101922%_
                 (string-table-delete! _%tab101897%_ _%key101899%_)))
            (##vector-set! _%lock101902%_ '1 '#f)
            (##vector-cas! _%lock101902%_ '0 '0 '1)
            _%$r101922%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint101879%_ _%seed101880%_)
        (make-raw-table__1
         _%size-hint101879%_
         immediate-hash
         eq?
         _%seed101880%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint101886%_ '#f) (_%seed101888%_ '0))
          (make-immediate-table__% _%size-hint101886%_ _%seed101888%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint101890%_)
        (let ((_%seed101892%_ '0))
          (make-immediate-table__% _%size-hint101890%_ _%seed101892%_))))
    (define make-immediate-table
      (lambda _g103882_
        (let ((_g103883_ (##length _g103882_)))
          (cond ((##fx= _g103883_ 0) (apply make-immediate-table__0 _g103882_))
                ((##fx= _g103883_ 1) (apply make-immediate-table__1 _g103882_))
                ((##fx= _g103883_ 2) (apply make-immediate-table__% _g103882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g103882_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint101859%_ _%seed101861%_)
        (make-raw-table/lock__%
         _%size-hint101859%_
         immediate-hash
         eq?
         _%seed101861%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint101867%_ '#f) (_%seed101869%_ '0))
          (make-immediate-table/lock__% _%size-hint101867%_ _%seed101869%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint101871%_)
        (let ((_%seed101873%_ '0))
          (make-immediate-table/lock__% _%size-hint101871%_ _%seed101873%_))))
    (define make-immediate-table/lock
      (lambda _g103884_
        (let ((_g103885_ (##length _g103884_)))
          (cond ((##fx= _g103885_ 0)
                 (apply make-immediate-table/lock__0 _g103884_))
                ((##fx= _g103885_ 1)
                 (apply make-immediate-table/lock__1 _g103884_))
                ((##fx= _g103885_ 2)
                 (apply make-immediate-table/lock__% _g103884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g103884_))))))
    (define immediate-table-ref
      (lambda (_%tab101812%_ _%key101813%_ _%default101814%_)
        (let ((_%table101816%_ (&raw-table-table _%tab101812%_))
              (_%seed101817%_ (&raw-table-seed _%tab101812%_)))
          (let* ((_%h101819%_
                  (fxxor (immediate-hash _%key101813%_) _%seed101817%_))
                 (_%size101822%_ (vector-length _%table101816%_))
                 (_%entries101825%_ (##fxquotient _%size101822%_ '2))
                 (_%start101828%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101819%_ _%entries101825%_)
                   '1)))
            (let _%loop101832%_ ((_%probe101835%_ _%start101828%_)
                                 (_%i101837%_ '1)
                                 (_%deleted101839%_ '#f))
              (let ((_%k101842%_ (vector-ref _%table101816%_ _%probe101835%_)))
                (if (eq? _%k101842%_ (macro-unused-obj))
                    _%default101814%_
                    (if (eq? _%k101842%_ (macro-deleted-obj))
                        (_%loop101832%_
                         (let ((_%next-probe101847%_
                                (fx+ _%start101828%_
                                     _%i101837%_
                                     (fx* _%i101837%_ _%i101837%_))))
                           (##fxmodulo _%next-probe101847%_ _%size101822%_))
                         (##fx+ _%i101837%_ '1)
                         (let ((_%$e101850%_ _%deleted101839%_))
                           (if _%$e101850%_ _%$e101850%_ _%probe101835%_)))
                        (if (eq? _%key101813%_ _%k101842%_)
                            (vector-ref
                             _%table101816%_
                             (##fx+ _%probe101835%_ '1))
                            (_%loop101832%_
                             (let ((_%next-probe101855%_
                                    (fx+ _%start101828%_
                                         _%i101837%_
                                         (fx* _%i101837%_ _%i101837%_))))
                               (##fxmodulo
                                _%next-probe101855%_
                                _%size101822%_))
                             (##fx+ _%i101837%_ '1)
                             _%deleted101839%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab101785%_ _%key101786%_ _%default101787%_)
        (let ((_%lock101789%_ (&raw-table-lock _%tab101785%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101794%_ ((_%spin101797%_ '0))
              (if (##fx= (##vector-cas! _%lock101789%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101789%_ '1 (current-thread))
                  (if (##fx< _%spin101797%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101794%_ (##fx+ _%spin101797%_ '1)))
                      (let ((_%owner101803%_ (##vector-ref _%lock101789%_ '1)))
                        (if (eq? _%owner101803%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101803%_)
                                (let () (##thread-yield!) (_%again101794%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101809%_
                 (immediate-table-ref
                  _%tab101785%_
                  _%key101786%_
                  _%default101787%_)))
            (##vector-set! _%lock101789%_ '1 '#f)
            (##vector-cas! _%lock101789%_ '0 '0 '1)
            _%$r101809%_))))
    (define __immediate-table-set!
      (lambda (_%tab101737%_ _%key101738%_ _%value101739%_)
        (let ((_%table101741%_ (&raw-table-table _%tab101737%_))
              (_%seed101742%_ (&raw-table-seed _%tab101737%_)))
          (let* ((_%h101744%_
                  (fxxor (immediate-hash _%key101738%_) _%seed101742%_))
                 (_%size101747%_ (vector-length _%table101741%_))
                 (_%entries101750%_ (##fxquotient _%size101747%_ '2))
                 (_%start101753%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101744%_ _%entries101750%_)
                   '1)))
            (let _%loop101757%_ ((_%probe101760%_ _%start101753%_)
                                 (_%i101762%_ '1)
                                 (_%deleted101764%_ '#f))
              (let ((_%k101767%_ (vector-ref _%table101741%_ _%probe101760%_)))
                (if (eq? _%k101767%_ (macro-unused-obj))
                    (if _%deleted101764%_
                        (begin
                          (vector-set!
                           _%table101741%_
                           _%deleted101764%_
                           _%key101738%_)
                          (vector-set!
                           _%table101741%_
                           (##fx+ _%deleted101764%_ '1)
                           _%value101739%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101737%_
                              (##fx+ (&raw-table-count _%tab101737%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101741%_
                           _%probe101760%_
                           _%key101738%_)
                          (vector-set!
                           _%table101741%_
                           (##fx+ _%probe101760%_ '1)
                           _%value101739%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101737%_
                              (##fx- (&raw-table-free _%tab101737%_) '1))
                             (&raw-table-count-set!
                              _%tab101737%_
                              (##fx+ (&raw-table-count _%tab101737%_) '1))))))
                    (if (eq? _%k101767%_ (macro-deleted-obj))
                        (_%loop101757%_
                         (let ((_%next-probe101774%_
                                (fx+ _%start101753%_
                                     _%i101762%_
                                     (fx* _%i101762%_ _%i101762%_))))
                           (##fxmodulo _%next-probe101774%_ _%size101747%_))
                         (##fx+ _%i101762%_ '1)
                         (let ((_%$e101777%_ _%deleted101764%_))
                           (if _%$e101777%_ _%$e101777%_ _%probe101760%_)))
                        (if (eq? _%key101738%_ _%k101767%_)
                            (let ()
                              (vector-set!
                               _%table101741%_
                               _%probe101760%_
                               _%key101738%_)
                              (vector-set!
                               _%table101741%_
                               (##fx+ _%probe101760%_ '1)
                               _%value101739%_))
                            (_%loop101757%_
                             (let ((_%next-probe101782%_
                                    (fx+ _%start101753%_
                                         _%i101762%_
                                         (fx* _%i101762%_ _%i101762%_))))
                               (##fxmodulo
                                _%next-probe101782%_
                                _%size101747%_))
                             (##fx+ _%i101762%_ '1)
                             _%deleted101764%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab101733%_ _%key101734%_ _%value101735%_)
        (if (##fx< (&raw-table-free _%tab101733%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101733%_))
                    '4))
            (__raw-table-rehash! _%tab101733%_)
            '#!void)
        (__immediate-table-set! _%tab101733%_ _%key101734%_ _%value101735%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab101705%_ _%key101706%_ _%value101707%_)
        (let ((_%lock101710%_ (&raw-table-lock _%tab101705%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101715%_ ((_%spin101718%_ '0))
              (if (##fx= (##vector-cas! _%lock101710%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101710%_ '1 (current-thread))
                  (if (##fx< _%spin101718%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101715%_ (##fx+ _%spin101718%_ '1)))
                      (let ((_%owner101724%_ (##vector-ref _%lock101710%_ '1)))
                        (if (eq? _%owner101724%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101724%_)
                                (let () (##thread-yield!) (_%again101715%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101730%_
                 (immediate-table-set!
                  _%tab101705%_
                  _%key101706%_
                  _%value101707%_)))
            (##vector-set! _%lock101710%_ '1 '#f)
            (##vector-cas! _%lock101710%_ '0 '0 '1)
            _%$r101730%_))))
    (define __immediate-table-update!
      (lambda (_%tab101656%_
               _%key101657%_
               _%immediate-table-update!101658%_
               _%default101659%_)
        (let ((_%table101661%_ (&raw-table-table _%tab101656%_))
              (_%seed101662%_ (&raw-table-seed _%tab101656%_)))
          (let* ((_%h101664%_
                  (fxxor (immediate-hash _%key101657%_) _%seed101662%_))
                 (_%size101667%_ (vector-length _%table101661%_))
                 (_%entries101670%_ (##fxquotient _%size101667%_ '2))
                 (_%start101673%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101664%_ _%entries101670%_)
                   '1)))
            (let _%loop101677%_ ((_%probe101680%_ _%start101673%_)
                                 (_%i101682%_ '1)
                                 (_%deleted101684%_ '#f))
              (let ((_%k101687%_ (vector-ref _%table101661%_ _%probe101680%_)))
                (if (eq? _%k101687%_ (macro-unused-obj))
                    (if _%deleted101684%_
                        (begin
                          (vector-set!
                           _%table101661%_
                           _%deleted101684%_
                           _%key101657%_)
                          (vector-set!
                           _%table101661%_
                           (##fx+ _%deleted101684%_ '1)
                           (_%immediate-table-update!101658%_
                            _%default101659%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101656%_
                              (##fx+ (&raw-table-count _%tab101656%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101661%_
                           _%probe101680%_
                           _%key101657%_)
                          (vector-set!
                           _%table101661%_
                           (##fx+ _%probe101680%_ '1)
                           (_%immediate-table-update!101658%_
                            _%default101659%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101656%_
                              (##fx- (&raw-table-free _%tab101656%_) '1))
                             (&raw-table-count-set!
                              _%tab101656%_
                              (##fx+ (&raw-table-count _%tab101656%_) '1))))))
                    (if (eq? _%k101687%_ (macro-deleted-obj))
                        (_%loop101677%_
                         (let ((_%next-probe101694%_
                                (fx+ _%start101673%_
                                     _%i101682%_
                                     (fx* _%i101682%_ _%i101682%_))))
                           (##fxmodulo _%next-probe101694%_ _%size101667%_))
                         (##fx+ _%i101682%_ '1)
                         (let ((_%$e101697%_ _%deleted101684%_))
                           (if _%$e101697%_ _%$e101697%_ _%probe101680%_)))
                        (if (eq? _%key101657%_ _%k101687%_)
                            (let ()
                              (vector-set!
                               _%table101661%_
                               _%probe101680%_
                               _%key101657%_)
                              (vector-set!
                               _%table101661%_
                               (##fx+ _%probe101680%_ '1)
                               (_%immediate-table-update!101658%_
                                (vector-ref
                                 _%table101661%_
                                 (##fx+ _%probe101680%_ '1)))))
                            (_%loop101677%_
                             (let ((_%next-probe101702%_
                                    (fx+ _%start101673%_
                                         _%i101682%_
                                         (fx* _%i101682%_ _%i101682%_))))
                               (##fxmodulo
                                _%next-probe101702%_
                                _%size101667%_))
                             (##fx+ _%i101682%_ '1)
                             _%deleted101684%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab101651%_
               _%key101652%_
               _%immediate-table-update!101653%_
               _%default101654%_)
        (if (##fx< (&raw-table-free _%tab101651%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101651%_))
                    '4))
            (__raw-table-rehash! _%tab101651%_)
            '#!void)
        (__immediate-table-update!
         _%tab101651%_
         _%key101652%_
         _%immediate-table-update!101653%_
         _%default101654%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab101622%_
               _%key101623%_
               _%immediate-table-update!101624%_
               _%default101625%_)
        (let ((_%lock101628%_ (&raw-table-lock _%tab101622%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101633%_ ((_%spin101636%_ '0))
              (if (##fx= (##vector-cas! _%lock101628%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101628%_ '1 (current-thread))
                  (if (##fx< _%spin101636%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101633%_ (##fx+ _%spin101636%_ '1)))
                      (let ((_%owner101642%_ (##vector-ref _%lock101628%_ '1)))
                        (if (eq? _%owner101642%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101642%_)
                                (let () (##thread-yield!) (_%again101633%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101648%_
                 (_%immediate-table-update!101624%_
                  _%tab101622%_
                  _%key101623%_
                  _%immediate-table-update!101624%_
                  _%default101625%_)))
            (##vector-set! _%lock101628%_ '1 '#f)
            (##vector-cas! _%lock101628%_ '0 '0 '1)
            _%$r101648%_))))
    (define immediate-table-delete!
      (lambda (_%tab101579%_ _%key101580%_)
        (let ((_%table101582%_ (&raw-table-table _%tab101579%_))
              (_%seed101584%_ (&raw-table-seed _%tab101579%_)))
          (let* ((_%h101587%_
                  (fxxor (immediate-hash _%key101580%_) _%seed101584%_))
                 (_%size101590%_ (vector-length _%table101582%_))
                 (_%entries101593%_ (##fxquotient _%size101590%_ '2))
                 (_%start101596%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101587%_ _%entries101593%_)
                   '1)))
            (let _%loop101600%_ ((_%probe101603%_ _%start101596%_)
                                 (_%i101605%_ '1))
              (let ((_%k101608%_ (vector-ref _%table101582%_ _%probe101603%_)))
                (if (eq? _%k101608%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101608%_ (macro-deleted-obj))
                        (_%loop101600%_
                         (let ((_%next-probe101613%_
                                (fx+ _%start101596%_
                                     _%i101605%_
                                     (fx* _%i101605%_ _%i101605%_))))
                           (##fxmodulo _%next-probe101613%_ _%size101590%_))
                         (##fx+ _%i101605%_ '1))
                        (if (eq? _%key101580%_ _%k101608%_)
                            (let ()
                              (vector-set!
                               _%table101582%_
                               _%probe101603%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101582%_
                               (##fx+ _%probe101603%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101579%_
                                  (##fx- (&raw-table-count _%tab101579%_)
                                         '1)))))
                            (_%loop101600%_
                             (let ((_%next-probe101619%_
                                    (fx+ _%start101596%_
                                         _%i101605%_
                                         (fx* _%i101605%_ _%i101605%_))))
                               (##fxmodulo
                                _%next-probe101619%_
                                _%size101590%_))
                             (##fx+ _%i101605%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab101551%_ _%key101553%_)
        (let ((_%lock101556%_ (&raw-table-lock _%tab101551%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101561%_ ((_%spin101564%_ '0))
              (if (##fx= (##vector-cas! _%lock101556%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101556%_ '1 (current-thread))
                  (if (##fx< _%spin101564%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101561%_ (##fx+ _%spin101564%_ '1)))
                      (let ((_%owner101570%_ (##vector-ref _%lock101556%_ '1)))
                        (if (eq? _%owner101570%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101570%_)
                                (let () (##thread-yield!) (_%again101561%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101576%_
                 (immediate-table-delete! _%tab101551%_ _%key101553%_)))
            (##vector-set! _%lock101556%_ '1 '#f)
            (##vector-cas! _%lock101556%_ '0 '0 '1)
            _%$r101576%_))))
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
      (lambda (_%tab101549%_)
        (##unchecked-structure-ref
         _%tab101549%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab101547%_)
        (##unchecked-structure-ref
         _%tab101547%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab101545%_)
        (##unchecked-structure-ref
         _%tab101545%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab101542%_ _%val101543%_)
        (##unchecked-structure-set!
         _%tab101542%_
         _%val101543%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab101539%_ _%val101540%_)
        (##unchecked-structure-set!
         _%tab101539%_
         _%val101540%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab101536%_ _%val101537%_)
        (##unchecked-structure-set!
         _%tab101536%_
         _%val101537%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint101500%_
               _%klass101501%_
               _%flags101502%_
               _%lock101503%_)
        (let ((_%gcht101505%_
               (__gc-table-new
                (if (fixnum? _%size-hint101500%_) _%size-hint101500%_ '16)
                _%flags101502%_)))
          (##structure _%klass101501%_ _%gcht101505%_ '#f _%lock101503%_))))
    (define make-gc-table__0
      (lambda (_%size-hint101510%_)
        (let* ((_%klass101512%_ __gc-table::t)
               (_%flags101514%_ '0)
               (_%lock101516%_ '#f))
          (make-gc-table__%
           _%size-hint101510%_
           _%klass101512%_
           _%flags101514%_
           _%lock101516%_))))
    (define make-gc-table__1
      (lambda (_%size-hint101518%_ _%klass101519%_)
        (let* ((_%flags101521%_ '0) (_%lock101523%_ '#f))
          (make-gc-table__%
           _%size-hint101518%_
           _%klass101519%_
           _%flags101521%_
           _%lock101523%_))))
    (define make-gc-table__2
      (lambda (_%size-hint101525%_ _%klass101526%_ _%flags101527%_)
        (let ((_%lock101529%_ '#f))
          (make-gc-table__%
           _%size-hint101525%_
           _%klass101526%_
           _%flags101527%_
           _%lock101529%_))))
    (define make-gc-table
      (lambda _g103886_
        (let ((_g103887_ (##length _g103886_)))
          (cond ((##fx= _g103887_ 1) (apply make-gc-table__0 _g103886_))
                ((##fx= _g103887_ 2) (apply make-gc-table__1 _g103886_))
                ((##fx= _g103887_ 3) (apply make-gc-table__2 _g103886_))
                ((##fx= _g103887_ 4) (apply make-gc-table__% _g103886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g103886_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint101477%_ _%klass101478%_ _%flags101479%_)
        (make-gc-table__%
         _%size-hint101477%_
         _%klass101478%_
         _%flags101479%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint101484%_)
        (let* ((_%klass101486%_ __gc-table::t) (_%flags101488%_ '0))
          (make-gc-table/lock__%
           _%size-hint101484%_
           _%klass101486%_
           _%flags101488%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint101490%_ _%klass101491%_)
        (let ((_%flags101493%_ '0))
          (make-gc-table/lock__%
           _%size-hint101490%_
           _%klass101491%_
           _%flags101493%_))))
    (define make-gc-table/lock
      (lambda _g103888_
        (let ((_g103889_ (##length _g103888_)))
          (cond ((##fx= _g103889_ 1) (apply make-gc-table/lock__0 _g103888_))
                ((##fx= _g103889_ 2) (apply make-gc-table/lock__1 _g103888_))
                ((##fx= _g103889_ 3) (apply make-gc-table/lock__% _g103888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g103888_))))))
    (define __gc-table-immediate
      (lambda (_%tab101468%_)
        (let ((_%$e101470%_ (&gc-table-immediate _%tab101468%_)))
          (if _%$e101470%_
              _%$e101470%_
              (let ((_%immediate101474%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab101468%_ _%immediate101474%_)
                _%immediate101474%_)))))
    (define __gc-table-new
      (lambda (_%size101458%_ _%flags101459%_)
        (let* ((_%flags101461%_
                (##fxand _%flags101459%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags101463%_
                (fxior _%flags101461%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht101465%_
                (##gc-hash-table-allocate
                 _%size101458%_
                 _%flags101463%_
                 __gc-table-loads)))
          _%gcht101465%_)))
    (define __gc-table-e
      (lambda (_%tab101453%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht101456%_ (&gc-table-gcht _%tab101453%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht101456%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht101456%_
              (begin
                (__gc-table-rehash! _%tab101453%_)
                (&gc-table-gcht _%tab101453%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab101444%_)
        (let* ((_%old-table101446%_ (&gc-table-gcht _%tab101444%_))
               (_%new-table101448%_
                (##gc-hash-table-resize! _%old-table101446%_ __gc-table-loads))
               (_%gcht101450%_
                (##gc-hash-table-rehash!
                 _%old-table101446%_
                 _%new-table101448%_)))
          (&gc-table-gcht-set! _%tab101444%_ _%gcht101450%_))))
    (define gc-table-ref
      (lambda (_%tab101428%_ _%key101429%_ _%default101430%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101429%_)
            (let* ((_%gcht101434%_ (__gc-table-e _%tab101428%_))
                   (_%value101436%_
                    (##gc-hash-table-ref _%gcht101434%_ _%key101429%_)))
              (if (eq? _%value101436%_ (macro-unused-obj))
                  _%default101430%_
                  _%value101436%_))
            (let ((_%$e101438%_ (&gc-table-immediate _%tab101428%_)))
              (if _%$e101438%_
                  ((lambda (_%immediate101441%_)
                     (immediate-table-ref
                      _%immediate101441%_
                      _%key101429%_
                      _%default101430%_))
                   _%$e101438%_)
                  _%default101430%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab101404%_ _%key101405%_ _%default101406%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101410%_ ((_%spin101413%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101404%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101404%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101413%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101410%_ (##fx+ _%spin101413%_ '1)))
                    (let ((_%owner101419%_
                           (##vector-ref (&gc-table-lock _%tab101404%_) '1)))
                      (if (eq? _%owner101419%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101419%_)
                              (let () (##thread-yield!) (_%again101410%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101425%_
               (gc-table-ref _%tab101404%_ _%key101405%_ _%default101406%_)))
          (##vector-set! (&gc-table-lock _%tab101404%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101404%_) '0 '0 '1)
          _%$r101425%_)))
    (define gc-table-set!
      (lambda (_%tab101397%_ _%key101398%_ _%value101399%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101398%_)
            (let ((_%gcht101402%_ (__gc-table-e _%tab101397%_)))
              (if (##gc-hash-table-set!
                   _%gcht101402%_
                   _%key101398%_
                   _%value101399%_)
                  (begin
                    (__gc-table-rehash! _%tab101397%_)
                    (gc-table-set!
                     _%tab101397%_
                     _%key101398%_
                     _%value101399%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab101397%_)
             _%key101398%_
             _%value101399%_))))
    (define gc-table-set/lock!
      (lambda (_%tab101373%_ _%key101374%_ _%value101375%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101379%_ ((_%spin101382%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101373%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101373%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101382%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101379%_ (##fx+ _%spin101382%_ '1)))
                    (let ((_%owner101388%_
                           (##vector-ref (&gc-table-lock _%tab101373%_) '1)))
                      (if (eq? _%owner101388%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101388%_)
                              (let () (##thread-yield!) (_%again101379%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101394%_
               (gc-table-set! _%tab101373%_ _%key101374%_ _%value101375%_)))
          (##vector-set! (&gc-table-lock _%tab101373%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101373%_) '0 '0 '1)
          _%$r101394%_)))
    (define gc-table-update!
      (lambda (_%tab101366%_ _%key101367%_ _%update101368%_ _%default101369%_)
        (if (##mem-allocated? _%key101367%_)
            (let ((_%value101371%_
                   (gc-table-ref
                    _%tab101366%_
                    _%key101367%_
                    _%default101369%_)))
              (gc-table-set!
               _%tab101366%_
               _%key101367%_
               (_%update101368%_ _%value101371%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab101366%_)
             _%key101367%_
             _%update101368%_
             _%default101369%_))))
    (define gc-table-update!/lock
      (lambda (_%tab101341%_ _%key101342%_ _%update101343%_ _%default101344%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101348%_ ((_%spin101351%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101341%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101341%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101351%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101348%_ (##fx+ _%spin101351%_ '1)))
                    (let ((_%owner101357%_
                           (##vector-ref (&gc-table-lock _%tab101341%_) '1)))
                      (if (eq? _%owner101357%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101357%_)
                              (let () (##thread-yield!) (_%again101348%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101363%_
               (gc-table-update!
                _%tab101341%_
                _%key101342%_
                _%update101343%_
                _%default101344%_)))
          (##vector-set! (&gc-table-lock _%tab101341%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101341%_) '0 '0 '1)
          _%$r101363%_)))
    (define gc-table-delete!
      (lambda (_%tab101329%_ _%key101330%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101330%_)
            (let ((_%gcht101334%_ (__gc-table-e _%tab101329%_)))
              (if (##gc-hash-table-set!
                   _%gcht101334%_
                   _%key101330%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab101329%_)
                    (gc-table-delete! _%tab101329%_ _%key101330%_))
                  '#!void))
            (let ((_%$e101336%_ (&gc-table-immediate _%tab101329%_)))
              (if _%$e101336%_
                  ((lambda (_%immediate101339%_)
                     (immediate-table-delete!
                      _%immediate101339%_
                      _%key101330%_))
                   _%$e101336%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab101306%_ _%key101307%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101311%_ ((_%spin101314%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101306%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101306%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101314%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101311%_ (##fx+ _%spin101314%_ '1)))
                    (let ((_%owner101320%_
                           (##vector-ref (&gc-table-lock _%tab101306%_) '1)))
                      (if (eq? _%owner101320%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101320%_)
                              (let () (##thread-yield!) (_%again101311%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101326%_ (gc-table-delete! _%tab101306%_ _%key101307%_)))
          (##vector-set! (&gc-table-lock _%tab101306%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101306%_) '0 '0 '1)
          _%$r101326%_)))
    (define gc-table-for-each
      (lambda (_%tab101295%_ _%proc101296%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht101299%_ (__gc-table-e _%tab101295%_)))
            (##gc-hash-table-for-each _%proc101296%_ _%gcht101299%_))
          (let ((_%$e101301%_ (&gc-table-immediate _%tab101295%_)))
            (if _%$e101301%_
                ((lambda (_%immediate101304%_)
                   (raw-table-for-each _%immediate101304%_ _%proc101296%_))
                 _%$e101301%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab101272%_ _%proc101273%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101277%_ ((_%spin101280%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101272%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101272%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101280%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101277%_ (##fx+ _%spin101280%_ '1)))
                    (let ((_%owner101286%_
                           (##vector-ref (&gc-table-lock _%tab101272%_) '1)))
                      (if (eq? _%owner101286%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101286%_)
                              (let () (##thread-yield!) (_%again101277%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101292%_ (gc-table-for-each _%tab101272%_ _%proc101273%_)))
          (##vector-set! (&gc-table-lock _%tab101272%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101272%_) '0 '0 '1)
          _%$r101292%_)))
    (define gc-table-copy
      (lambda (_%tab101260%_)
        (let* ((_%gcht101262%_ (__gc-table-e _%tab101260%_))
               (_%new-table101264%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht101262%_)
                 (macro-gc-hash-table-flags _%gcht101262%_)))
               (_%result101266%_
                (##structure
                 (##structure-type _%tab101260%_)
                 _%new-table101264%_
                 '#f)))
          (gc-table-for-each
           _%tab101260%_
           (lambda (_%k101269%_ _%v101270%_)
             (gc-table-set! _%result101266%_ _%k101269%_ _%v101270%_)))
          _%result101266%_)))
    (define gc-table-copy/lock
      (lambda (_%tab101238%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101242%_ ((_%spin101245%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101238%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101238%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101245%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101242%_ (##fx+ _%spin101245%_ '1)))
                    (let ((_%owner101251%_
                           (##vector-ref (&gc-table-lock _%tab101238%_) '1)))
                      (if (eq? _%owner101251%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101251%_)
                              (let () (##thread-yield!) (_%again101242%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101257%_ (gc-table-copy _%tab101238%_)))
          (##vector-set! (&gc-table-lock _%tab101238%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101238%_) '0 '0 '1)
          _%$r101257%_)))
    (define gc-table-clear!
      (lambda (_%tab101231%_)
        (let* ((_%gcht101233%_ (__gc-table-e _%tab101231%_))
               (_%new-table101235%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht101233%_))))
          (&gc-table-gcht-set! _%tab101231%_ _%new-table101235%_)
          (&gc-table-immediate-set! _%tab101231%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab101209%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101213%_ ((_%spin101216%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101209%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101209%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101216%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101213%_ (##fx+ _%spin101216%_ '1)))
                    (let ((_%owner101222%_
                           (##vector-ref (&gc-table-lock _%tab101209%_) '1)))
                      (if (eq? _%owner101222%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101222%_)
                              (let () (##thread-yield!) (_%again101213%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101228%_ (gc-table-clear! _%tab101209%_)))
          (##vector-set! (&gc-table-lock _%tab101209%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101209%_) '0 '0 '1)
          _%$r101228%_)))
    (define gc-table-length
      (lambda (_%tab101201%_)
        (let ((_%gcht101203%_ (__gc-table-e _%tab101201%_)))
          (fx+ (macro-gc-hash-table-count _%gcht101203%_)
               (let ((_%$e101205%_ (&gc-table-immediate _%tab101201%_)))
                 (if _%$e101205%_ (&raw-table-count _%$e101205%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab101179%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101183%_ ((_%spin101186%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101179%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101179%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101186%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101183%_ (##fx+ _%spin101186%_ '1)))
                    (let ((_%owner101192%_
                           (##vector-ref (&gc-table-lock _%tab101179%_) '1)))
                      (if (eq? _%owner101192%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner101192%_)
                              (let () (##thread-yield!) (_%again101183%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r101198%_ (gc-table-length _%tab101179%_)))
          (##vector-set! (&gc-table-lock _%tab101179%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab101179%_) '0 '0 '1)
          _%$r101198%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj101149%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101154%_ ((_%spin101157%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin101157%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101154%_ (##fx+ _%spin101157%_ '1)))
                      (let ((_%owner101163%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner101163%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner101163%_)
                                (let () (##thread-yield!) (_%again101154%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r101176%_
                 (let ((_%val101169%_
                        (gc-table-ref __object-eq-hash _%obj101149%_ '#f)))
                   (if _%val101169%_
                       _%val101169%_
                       (let ((_%h101171%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e101173%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e101173%_ _%$e101173%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj101149%_
                          _%h101171%_)
                         _%h101171%_)))))
            (##vector-set! __object-eq-hash-lock '1 '#f)
            (##vector-cas! __object-eq-hash-lock '0 '0 '1)
            _%$r101176%_))))))
