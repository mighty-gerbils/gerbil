(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1771037606)
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
      (lambda (_%obj127863%_)
        (if (##structure? _%obj127863%_)
            (##structure-instance-of? _%obj127863%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab127861%_)
        (##unchecked-structure-ref
         _%tab127861%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab127859%_)
        (##unchecked-structure-ref
         _%tab127859%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab127857%_)
        (##unchecked-structure-ref
         _%tab127857%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab127855%_)
        (##unchecked-structure-ref
         _%tab127855%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab127853%_)
        (##unchecked-structure-ref
         _%tab127853%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab127851%_)
        (##unchecked-structure-ref
         _%tab127851%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab127849%_)
        (##unchecked-structure-ref
         _%tab127849%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab127846%_ _%val127847%_)
        (##unchecked-structure-set!
         _%tab127846%_
         _%val127847%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab127843%_ _%val127844%_)
        (##unchecked-structure-set!
         _%tab127843%_
         _%val127844%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab127840%_ _%val127841%_)
        (##unchecked-structure-set!
         _%tab127840%_
         _%val127841%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab127837%_ _%val127838%_)
        (##unchecked-structure-set!
         _%tab127837%_
         _%val127838%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab127834%_ _%val127835%_)
        (##unchecked-structure-set!
         _%tab127834%_
         _%val127835%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab127831%_ _%val127832%_)
        (##unchecked-structure-set!
         _%tab127831%_
         _%val127832%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab127828%_ _%val127829%_)
        (##unchecked-structure-set!
         _%tab127828%_
         _%val127829%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint127826%_)
        (if (and (fixnum? _%size-hint127826%_) (##fx> _%size-hint127826%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint127826%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint127791%_
               _%hash127792%_
               _%test127793%_
               _%seed127794%_
               _%lock127795%_)
        (let* ((_%size127797%_ (raw-table-size-hint->size _%size-hint127791%_))
               (_%table127799%_
                (##make-vector _%size127797%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table127799%_
           '0
           (##fxquotient _%size127797%_ '2)
           _%hash127792%_
           _%test127793%_
           _%seed127794%_
           _%lock127795%_))))
    (define make-raw-table__0
      (lambda (_%size-hint127805%_ _%hash127806%_ _%test127807%_)
        (let* ((_%seed127809%_ '0) (_%lock127811%_ '#f))
          (make-raw-table__%
           _%size-hint127805%_
           _%hash127806%_
           _%test127807%_
           _%seed127809%_
           _%lock127811%_))))
    (define make-raw-table__1
      (lambda (_%size-hint127813%_
               _%hash127814%_
               _%test127815%_
               _%seed127816%_)
        (let ((_%lock127818%_ '#f))
          (make-raw-table__%
           _%size-hint127813%_
           _%hash127814%_
           _%test127815%_
           _%seed127816%_
           _%lock127818%_))))
    (define make-raw-table
      (lambda _g127864_
        (let ((_g127865_ (##length _g127864_)))
          (cond ((##fx= _g127865_ 3) (apply make-raw-table__0 _g127864_))
                ((##fx= _g127865_ 4) (apply make-raw-table__1 _g127864_))
                ((##fx= _g127865_ 5) (apply make-raw-table__% _g127864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g127864_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint127771%_
               _%hash127772%_
               _%test127773%_
               _%seed127774%_)
        (make-raw-table__%
         _%size-hint127771%_
         _%hash127772%_
         _%test127773%_
         _%seed127774%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint127779%_ _%hash127780%_ _%test127781%_)
        (let ((_%seed127783%_ '0))
          (make-raw-table/lock__%
           _%size-hint127779%_
           _%hash127780%_
           _%test127781%_
           _%seed127783%_))))
    (define make-raw-table/lock
      (lambda _g127866_
        (let ((_g127867_ (##length _g127866_)))
          (cond ((##fx= _g127867_ 3) (apply make-raw-table/lock__0 _g127866_))
                ((##fx= _g127867_ 4) (apply make-raw-table/lock__% _g127866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g127866_))))))
    (define raw-table-length
      (lambda (_%tab127768%_) (&raw-table-count _%tab127768%_)))
    (define raw-table-length/lock
      (lambda (_%tab127741%_)
        (let ((_%lock127743%_ (&raw-table-lock _%tab127741%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127748%_ ((_%spin127751%_ '0))
              (if (##fx= (##vector-cas! _%lock127743%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127743%_ '1 (current-thread))
                  (if (##fx< _%spin127751%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127748%_ (##fx+ _%spin127751%_ '1)))
                      (let ((_%owner127757%_ (##vector-ref _%lock127743%_ '1)))
                        (if (eq? _%owner127757%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127757%_)
                                (let () (##thread-yield!) (_%again127748%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127763%_ (&raw-table-count _%tab127741%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127743%_ '1 '#f)
                (##vector-cas! _%lock127743%_ '0 '0 '1)))
            _%$r127763%_))))
    (define raw-table-ref
      (lambda (_%tab127693%_ _%key127694%_ _%default127695%_)
        (let ((_%table127697%_ (&raw-table-table _%tab127693%_))
              (_%seed127698%_ (&raw-table-seed _%tab127693%_))
              (_%hash127699%_ (&raw-table-hash _%tab127693%_))
              (_%test127700%_ (&raw-table-test _%tab127693%_)))
          (let* ((_%h127702%_
                  (fxxor (_%hash127699%_ _%key127694%_) _%seed127698%_))
                 (_%size127705%_ (vector-length _%table127697%_))
                 (_%entries127708%_ (##fxquotient _%size127705%_ '2))
                 (_%start127711%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h127702%_ _%entries127708%_)
                   '1)))
            (let _%loop127715%_ ((_%probe127718%_ _%start127711%_)
                                 (_%i127720%_ '1)
                                 (_%deleted127722%_ '#f))
              (let ((_%k127725%_ (vector-ref _%table127697%_ _%probe127718%_)))
                (if (eq? _%k127725%_ (macro-unused-obj))
                    _%default127695%_
                    (if (eq? _%k127725%_ (macro-deleted-obj))
                        (_%loop127715%_
                         (let ((_%next-probe127730%_
                                (fx+ _%start127711%_
                                     _%i127720%_
                                     (fx* _%i127720%_ _%i127720%_))))
                           (##fxmodulo _%next-probe127730%_ _%size127705%_))
                         (##fx+ _%i127720%_ '1)
                         (let ((_%$e127733%_ _%deleted127722%_))
                           (if _%$e127733%_ _%$e127733%_ _%probe127718%_)))
                        (if (_%test127700%_ _%key127694%_ _%k127725%_)
                            (vector-ref
                             _%table127697%_
                             (##fx+ _%probe127718%_ '1))
                            (_%loop127715%_
                             (let ((_%next-probe127738%_
                                    (fx+ _%start127711%_
                                         _%i127720%_
                                         (fx* _%i127720%_ _%i127720%_))))
                               (##fxmodulo
                                _%next-probe127738%_
                                _%size127705%_))
                             (##fx+ _%i127720%_ '1)
                             _%deleted127722%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab127664%_ _%key127665%_ _%default127666%_)
        (let ((_%lock127668%_ (&raw-table-lock _%tab127664%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127673%_ ((_%spin127676%_ '0))
              (if (##fx= (##vector-cas! _%lock127668%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127668%_ '1 (current-thread))
                  (if (##fx< _%spin127676%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127673%_ (##fx+ _%spin127676%_ '1)))
                      (let ((_%owner127682%_ (##vector-ref _%lock127668%_ '1)))
                        (if (eq? _%owner127682%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127682%_)
                                (let () (##thread-yield!) (_%again127673%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127688%_
                 (raw-table-ref
                  _%tab127664%_
                  _%key127665%_
                  _%default127666%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127668%_ '1 '#f)
                (##vector-cas! _%lock127668%_ '0 '0 '1)))
            _%$r127688%_))))
    (define raw-table-set!
      (lambda (_%tab127660%_ _%key127661%_ _%value127662%_)
        (if (##fx< (&raw-table-free _%tab127660%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab127660%_))
                    '4))
            (__raw-table-rehash! _%tab127660%_)
            '#!void)
        (__raw-table-set! _%tab127660%_ _%key127661%_ _%value127662%_)))
    (define raw-table-set!/lock
      (lambda (_%tab127631%_ _%key127632%_ _%value127633%_)
        (let ((_%lock127635%_ (&raw-table-lock _%tab127631%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127640%_ ((_%spin127643%_ '0))
              (if (##fx= (##vector-cas! _%lock127635%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127635%_ '1 (current-thread))
                  (if (##fx< _%spin127643%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127640%_ (##fx+ _%spin127643%_ '1)))
                      (let ((_%owner127649%_ (##vector-ref _%lock127635%_ '1)))
                        (if (eq? _%owner127649%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127649%_)
                                (let () (##thread-yield!) (_%again127640%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127655%_
                 (raw-table-set! _%tab127631%_ _%key127632%_ _%value127633%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127635%_ '1 '#f)
                (##vector-cas! _%lock127635%_ '0 '0 '1)))
            _%$r127655%_))))
    (define raw-table-update!
      (lambda (_%tab127626%_ _%key127627%_ _%update127628%_ _%default127629%_)
        (if (##fx< (&raw-table-free _%tab127626%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab127626%_))
                    '4))
            (__raw-table-rehash! _%tab127626%_)
            '#!void)
        (__raw-table-update!
         _%tab127626%_
         _%key127627%_
         _%update127628%_
         _%default127629%_)))
    (define raw-table-update!/lock
      (lambda (_%tab127596%_ _%key127597%_ _%update127598%_ _%default127599%_)
        (let ((_%lock127601%_ (&raw-table-lock _%tab127596%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127606%_ ((_%spin127609%_ '0))
              (if (##fx= (##vector-cas! _%lock127601%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127601%_ '1 (current-thread))
                  (if (##fx< _%spin127609%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127606%_ (##fx+ _%spin127609%_ '1)))
                      (let ((_%owner127615%_ (##vector-ref _%lock127601%_ '1)))
                        (if (eq? _%owner127615%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127615%_)
                                (let () (##thread-yield!) (_%again127606%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127621%_
                 (raw-table-update!
                  _%tab127596%_
                  _%key127597%_
                  _%update127598%_
                  _%default127599%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127601%_ '1 '#f)
                (##vector-cas! _%lock127601%_ '0 '0 '1)))
            _%$r127621%_))))
    (define raw-table-delete!
      (lambda (_%tab127553%_ _%key127554%_)
        (let ((_%table127556%_ (&raw-table-table _%tab127553%_))
              (_%seed127557%_ (&raw-table-seed _%tab127553%_))
              (_%hash127558%_ (&raw-table-hash _%tab127553%_))
              (_%test127559%_ (&raw-table-test _%tab127553%_)))
          (let* ((_%h127561%_
                  (fxxor (_%hash127558%_ _%key127554%_) _%seed127557%_))
                 (_%size127564%_ (vector-length _%table127556%_))
                 (_%entries127567%_ (##fxquotient _%size127564%_ '2))
                 (_%start127570%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h127561%_ _%entries127567%_)
                   '1)))
            (let _%loop127574%_ ((_%probe127577%_ _%start127570%_)
                                 (_%i127579%_ '1))
              (let ((_%k127582%_ (vector-ref _%table127556%_ _%probe127577%_)))
                (if (eq? _%k127582%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k127582%_ (macro-deleted-obj))
                        (_%loop127574%_
                         (let ((_%next-probe127587%_
                                (fx+ _%start127570%_
                                     _%i127579%_
                                     (fx* _%i127579%_ _%i127579%_))))
                           (##fxmodulo _%next-probe127587%_ _%size127564%_))
                         (##fx+ _%i127579%_ '1))
                        (if (_%test127559%_ _%key127554%_ _%k127582%_)
                            (let ()
                              (vector-set!
                               _%table127556%_
                               _%probe127577%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table127556%_
                               (##fx+ _%probe127577%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab127553%_
                                  (##fx- (&raw-table-count _%tab127553%_)
                                         '1)))))
                            (_%loop127574%_
                             (let ((_%next-probe127593%_
                                    (fx+ _%start127570%_
                                         _%i127579%_
                                         (fx* _%i127579%_ _%i127579%_))))
                               (##fxmodulo
                                _%next-probe127593%_
                                _%size127564%_))
                             (##fx+ _%i127579%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab127525%_ _%key127526%_)
        (let ((_%lock127528%_ (&raw-table-lock _%tab127525%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127533%_ ((_%spin127536%_ '0))
              (if (##fx= (##vector-cas! _%lock127528%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127528%_ '1 (current-thread))
                  (if (##fx< _%spin127536%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127533%_ (##fx+ _%spin127536%_ '1)))
                      (let ((_%owner127542%_ (##vector-ref _%lock127528%_ '1)))
                        (if (eq? _%owner127542%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127542%_)
                                (let () (##thread-yield!) (_%again127533%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127548%_ (raw-table-delete! _%tab127525%_ _%key127526%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127528%_ '1 '#f)
                (##vector-cas! _%lock127528%_ '0 '0 '1)))
            _%$r127548%_))))
    (define raw-table-for-each
      (lambda (_%tab127509%_ _%proc127510%_)
        (let* ((_%table127512%_ (&raw-table-table _%tab127509%_))
               (_%size127514%_ (vector-length _%table127512%_)))
          (let _%loop127517%_ ((_%i127519%_ '0))
            (if (##fx< _%i127519%_ _%size127514%_)
                (begin
                  (let ((_%key127521%_
                         (vector-ref _%table127512%_ _%i127519%_)))
                    (if (if (eq? _%key127521%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key127521%_ (macro-deleted-obj))))
                        (let ((_%value127523%_
                               (vector-ref
                                _%table127512%_
                                (##fx+ _%i127519%_ '1))))
                          (_%proc127510%_ _%key127521%_ _%value127523%_))
                        '#!void))
                  (_%loop127517%_ (##fx+ _%i127519%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab127481%_ _%proc127482%_)
        (let ((_%lock127484%_ (&raw-table-lock _%tab127481%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127489%_ ((_%spin127492%_ '0))
              (if (##fx= (##vector-cas! _%lock127484%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127484%_ '1 (current-thread))
                  (if (##fx< _%spin127492%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127489%_ (##fx+ _%spin127492%_ '1)))
                      (let ((_%owner127498%_ (##vector-ref _%lock127484%_ '1)))
                        (if (eq? _%owner127498%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127498%_)
                                (let () (##thread-yield!) (_%again127489%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127504%_
                 (raw-table-for-each _%tab127481%_ _%proc127482%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127484%_ '1 '#f)
                (##vector-cas! _%lock127484%_ '0 '0 '1)))
            _%$r127504%_))))
    (define raw-table-copy
      (lambda (_%tab127477%_)
        (let ((_%new-tab127479%_ (##structure-copy _%tab127477%_)))
          (&raw-table-table-set!
           _%new-tab127479%_
           (vector-copy (&raw-table-table _%tab127477%_)))
          _%new-tab127479%_)))
    (define raw-table-copy/lock
      (lambda (_%tab127450%_)
        (let ((_%lock127452%_ (&raw-table-lock _%tab127450%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127457%_ ((_%spin127460%_ '0))
              (if (##fx= (##vector-cas! _%lock127452%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127452%_ '1 (current-thread))
                  (if (##fx< _%spin127460%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127457%_ (##fx+ _%spin127460%_ '1)))
                      (let ((_%owner127466%_ (##vector-ref _%lock127452%_ '1)))
                        (if (eq? _%owner127466%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127466%_)
                                (let () (##thread-yield!) (_%again127457%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127472%_ (raw-table-copy _%tab127450%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127452%_ '1 '#f)
                (##vector-cas! _%lock127452%_ '0 '0 '1)))
            _%$r127472%_))))
    (define raw-table-clear!
      (lambda (_%tab127448%_)
        (vector-fill! (&raw-table-table _%tab127448%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab127448%_ '0)
        (&raw-table-free-set!
         _%tab127448%_
         (##fxquotient (vector-length (&raw-table-table _%tab127448%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab127421%_)
        (let ((_%lock127423%_ (&raw-table-lock _%tab127421%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127428%_ ((_%spin127431%_ '0))
              (if (##fx= (##vector-cas! _%lock127423%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127423%_ '1 (current-thread))
                  (if (##fx< _%spin127431%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127428%_ (##fx+ _%spin127431%_ '1)))
                      (let ((_%owner127437%_ (##vector-ref _%lock127423%_ '1)))
                        (if (eq? _%owner127437%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127437%_)
                                (let () (##thread-yield!) (_%again127428%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127443%_ (raw-table-clear! _%tab127421%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127423%_ '1 '#f)
                (##vector-cas! _%lock127423%_ '0 '0 '1)))
            _%$r127443%_))))
    (define __raw-table-set!
      (lambda (_%tab127371%_ _%key127372%_ _%value127373%_)
        (let ((_%table127375%_ (&raw-table-table _%tab127371%_))
              (_%seed127376%_ (&raw-table-seed _%tab127371%_))
              (_%hash127377%_ (&raw-table-hash _%tab127371%_))
              (_%test127378%_ (&raw-table-test _%tab127371%_)))
          (let* ((_%h127380%_
                  (fxxor (_%hash127377%_ _%key127372%_) _%seed127376%_))
                 (_%size127383%_ (vector-length _%table127375%_))
                 (_%entries127386%_ (##fxquotient _%size127383%_ '2))
                 (_%start127389%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h127380%_ _%entries127386%_)
                   '1)))
            (let _%loop127393%_ ((_%probe127396%_ _%start127389%_)
                                 (_%i127398%_ '1)
                                 (_%deleted127400%_ '#f))
              (let ((_%k127403%_ (vector-ref _%table127375%_ _%probe127396%_)))
                (if (eq? _%k127403%_ (macro-unused-obj))
                    (if _%deleted127400%_
                        (begin
                          (vector-set!
                           _%table127375%_
                           _%deleted127400%_
                           _%key127372%_)
                          (vector-set!
                           _%table127375%_
                           (##fx+ _%deleted127400%_ '1)
                           _%value127373%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab127371%_
                              (##fx+ (&raw-table-count _%tab127371%_) '1)))))
                        (begin
                          (vector-set!
                           _%table127375%_
                           _%probe127396%_
                           _%key127372%_)
                          (vector-set!
                           _%table127375%_
                           (##fx+ _%probe127396%_ '1)
                           _%value127373%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab127371%_
                              (##fx- (&raw-table-free _%tab127371%_) '1))
                             (&raw-table-count-set!
                              _%tab127371%_
                              (##fx+ (&raw-table-count _%tab127371%_) '1))))))
                    (if (eq? _%k127403%_ (macro-deleted-obj))
                        (_%loop127393%_
                         (let ((_%next-probe127410%_
                                (fx+ _%start127389%_
                                     _%i127398%_
                                     (fx* _%i127398%_ _%i127398%_))))
                           (##fxmodulo _%next-probe127410%_ _%size127383%_))
                         (##fx+ _%i127398%_ '1)
                         (let ((_%$e127413%_ _%deleted127400%_))
                           (if _%$e127413%_ _%$e127413%_ _%probe127396%_)))
                        (if (_%test127378%_ _%key127372%_ _%k127403%_)
                            (let ()
                              (vector-set!
                               _%table127375%_
                               _%probe127396%_
                               _%key127372%_)
                              (vector-set!
                               _%table127375%_
                               (##fx+ _%probe127396%_ '1)
                               _%value127373%_))
                            (_%loop127393%_
                             (let ((_%next-probe127418%_
                                    (fx+ _%start127389%_
                                         _%i127398%_
                                         (fx* _%i127398%_ _%i127398%_))))
                               (##fxmodulo
                                _%next-probe127418%_
                                _%size127383%_))
                             (##fx+ _%i127398%_ '1)
                             _%deleted127400%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab127320%_ _%key127321%_ _%update127322%_ _%default127323%_)
        (let ((_%table127325%_ (&raw-table-table _%tab127320%_))
              (_%seed127326%_ (&raw-table-seed _%tab127320%_))
              (_%hash127327%_ (&raw-table-hash _%tab127320%_))
              (_%test127328%_ (&raw-table-test _%tab127320%_)))
          (let* ((_%h127330%_
                  (fxxor (_%hash127327%_ _%key127321%_) _%seed127326%_))
                 (_%size127333%_ (vector-length _%table127325%_))
                 (_%entries127336%_ (##fxquotient _%size127333%_ '2))
                 (_%start127339%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h127330%_ _%entries127336%_)
                   '1)))
            (let _%loop127343%_ ((_%probe127346%_ _%start127339%_)
                                 (_%i127348%_ '1)
                                 (_%deleted127350%_ '#f))
              (let ((_%k127353%_ (vector-ref _%table127325%_ _%probe127346%_)))
                (if (eq? _%k127353%_ (macro-unused-obj))
                    (if _%deleted127350%_
                        (begin
                          (vector-set!
                           _%table127325%_
                           _%deleted127350%_
                           _%key127321%_)
                          (vector-set!
                           _%table127325%_
                           (##fx+ _%deleted127350%_ '1)
                           (_%update127322%_ _%default127323%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab127320%_
                              (##fx+ (&raw-table-count _%tab127320%_) '1)))))
                        (begin
                          (vector-set!
                           _%table127325%_
                           _%probe127346%_
                           _%key127321%_)
                          (vector-set!
                           _%table127325%_
                           (##fx+ _%probe127346%_ '1)
                           (_%update127322%_ _%default127323%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab127320%_
                              (##fx- (&raw-table-free _%tab127320%_) '1))
                             (&raw-table-count-set!
                              _%tab127320%_
                              (##fx+ (&raw-table-count _%tab127320%_) '1))))))
                    (if (eq? _%k127353%_ (macro-deleted-obj))
                        (_%loop127343%_
                         (let ((_%next-probe127360%_
                                (fx+ _%start127339%_
                                     _%i127348%_
                                     (fx* _%i127348%_ _%i127348%_))))
                           (##fxmodulo _%next-probe127360%_ _%size127333%_))
                         (##fx+ _%i127348%_ '1)
                         (let ((_%$e127363%_ _%deleted127350%_))
                           (if _%$e127363%_ _%$e127363%_ _%probe127346%_)))
                        (if (_%test127328%_ _%key127321%_ _%k127353%_)
                            (let ()
                              (vector-set!
                               _%table127325%_
                               _%probe127346%_
                               _%key127321%_)
                              (vector-set!
                               _%table127325%_
                               (##fx+ _%probe127346%_ '1)
                               (_%update127322%_
                                (vector-ref
                                 _%table127325%_
                                 (##fx+ _%probe127346%_ '1)))))
                            (_%loop127343%_
                             (let ((_%next-probe127368%_
                                    (fx+ _%start127339%_
                                         _%i127348%_
                                         (fx* _%i127348%_ _%i127348%_))))
                               (##fxmodulo
                                _%next-probe127368%_
                                _%size127333%_))
                             (##fx+ _%i127348%_ '1)
                             _%deleted127350%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab127301%_)
        (let* ((_%old-table127303%_ (&raw-table-table _%tab127301%_))
               (_%old-size127305%_ (vector-length _%old-table127303%_))
               (_%new-size127307%_
                (if (##fx< (&raw-table-count _%tab127301%_)
                           (##fxquotient _%old-size127305%_ '4))
                    (vector-length _%old-table127303%_)
                    (##fx* '2 (vector-length _%old-table127303%_))))
               (_%new-table127309%_
                (##make-vector _%new-size127307%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab127301%_ _%new-table127309%_)
          (&raw-table-count-set! _%tab127301%_ '0)
          (&raw-table-free-set!
           _%tab127301%_
           (##fxquotient _%new-size127307%_ '2))
          (let _%lp127312%_ ((_%i127314%_ '0))
            (if (##fx< _%i127314%_ _%old-size127305%_)
                (begin
                  (let ((_%key127316%_
                         (vector-ref _%old-table127303%_ _%i127314%_)))
                    (if (if (eq? _%key127316%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key127316%_ (macro-deleted-obj))))
                        (let ((_%value127318%_
                               (vector-ref
                                _%old-table127303%_
                                (##fx+ _%i127314%_ '1))))
                          (__raw-table-set!
                           _%tab127301%_
                           _%key127316%_
                           _%value127318%_))
                        '#!void))
                  (_%lp127312%_ (##fx+ _%i127314%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj127293%_)
        (let ((_%t127295%_ (##type _%obj127293%_)))
          (if (##fx= (##fxand _%t127295%_ '1) '0)
              (fxand (##type-cast _%obj127293%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj127293%_)
                  (##symbol-hash _%obj127293%_)
                  (if (procedure? _%obj127293%_)
                      (procedure-hash _%obj127293%_)
                      (fxand (__eq-hash _%obj127293%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj127289%_)
        (let ((_%h127291%_
               (if (##closure? _%obj127289%_)
                   (__eq-hash _%obj127289%_)
                   (##type-cast _%obj127289%_ '0))))
          (fxand _%h127291%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj127286%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj127286%_)))
    (define eqv-hash
      (lambda (_%obj127276%_)
        (letrec ((_%combine127278%_
                  (lambda (_%a127283%_ _%b127284%_)
                    (fxand (##fx* (##fx+ _%a127283%_
                                         (fxarithmetic-shift-left
                                          _%b127284%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash127279%_
                  (lambda (_%obj127281%_)
                    (macro-number-dispatch
                     _%obj127281%_
                     (eq-hash _%obj127281%_)
                     (fxand _%obj127281%_ (macro-max-fixnum32))
                     (modulo _%obj127281%_ '331804481)
                     (_%combine127278%_
                      (_%hash127279%_ (macro-ratnum-numerator _%obj127281%_))
                      (_%hash127279%_
                       (macro-ratnum-denominator _%obj127281%_)))
                     (_%combine127278%_
                      (##u16vector-ref _%obj127281%_ '0)
                      (_%combine127278%_
                       (##u16vector-ref _%obj127281%_ '1)
                       (_%combine127278%_
                        (##u16vector-ref _%obj127281%_ '2)
                        (##u16vector-ref _%obj127281%_ '3))))
                     (_%combine127278%_
                      (_%hash127279%_ (macro-cpxnum-real _%obj127281%_))
                      (_%hash127279%_ (macro-cpxnum-imag _%obj127281%_)))))))
          (_%hash127279%_ _%obj127276%_))))
    (define symbolic?
      (lambda (_%obj127271%_)
        (let ((_%$e127273%_ (symbol? _%obj127271%_)))
          (if _%$e127273%_ _%$e127273%_ (keyword? _%obj127271%_)))))
    (define symbolic-hash
      (lambda (_%obj127269%_) (##symbol-hash _%obj127269%_)))
    (define string-hash
      (lambda (_%obj127267%_) (##string=?-hash _%obj127267%_)))
    (define immediate-hash
      (lambda (_%obj127265%_) (##type-cast _%obj127265%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint127247%_ _%seed127248%_)
        (make-raw-table__1 _%size-hint127247%_ eq-hash eq? _%seed127248%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint127254%_ '#f) (_%seed127256%_ '0))
          (make-eq-table__% _%size-hint127254%_ _%seed127256%_))))
    (define make-eq-table__1
      (lambda (_%size-hint127258%_)
        (let ((_%seed127260%_ '0))
          (make-eq-table__% _%size-hint127258%_ _%seed127260%_))))
    (define make-eq-table
      (lambda _g127868_
        (let ((_g127869_ (##length _g127868_)))
          (cond ((##fx= _g127869_ 0) (apply make-eq-table__0 _g127868_))
                ((##fx= _g127869_ 1) (apply make-eq-table__1 _g127868_))
                ((##fx= _g127869_ 2) (apply make-eq-table__% _g127868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g127868_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint127227%_ _%seed127229%_)
        (make-raw-table/lock__%
         _%size-hint127227%_
         eq-hash
         eq?
         _%seed127229%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint127235%_ '#f) (_%seed127237%_ '0))
          (make-eq-table/lock__% _%size-hint127235%_ _%seed127237%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint127239%_)
        (let ((_%seed127241%_ '0))
          (make-eq-table/lock__% _%size-hint127239%_ _%seed127241%_))))
    (define make-eq-table/lock
      (lambda _g127870_
        (let ((_g127871_ (##length _g127870_)))
          (cond ((##fx= _g127871_ 0) (apply make-eq-table/lock__0 _g127870_))
                ((##fx= _g127871_ 1) (apply make-eq-table/lock__1 _g127870_))
                ((##fx= _g127871_ 2) (apply make-eq-table/lock__% _g127870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g127870_))))))
    (define eq-table-ref
      (lambda (_%tab127180%_ _%key127181%_ _%default127182%_)
        (let ((_%table127184%_ (&raw-table-table _%tab127180%_))
              (_%seed127185%_ (&raw-table-seed _%tab127180%_)))
          (let* ((_%h127187%_ (fxxor (eq-hash _%key127181%_) _%seed127185%_))
                 (_%size127190%_ (vector-length _%table127184%_))
                 (_%entries127193%_ (##fxquotient _%size127190%_ '2))
                 (_%start127196%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h127187%_ _%entries127193%_)
                   '1)))
            (let _%loop127200%_ ((_%probe127203%_ _%start127196%_)
                                 (_%i127205%_ '1)
                                 (_%deleted127207%_ '#f))
              (let ((_%k127210%_ (vector-ref _%table127184%_ _%probe127203%_)))
                (if (eq? _%k127210%_ (macro-unused-obj))
                    _%default127182%_
                    (if (eq? _%k127210%_ (macro-deleted-obj))
                        (_%loop127200%_
                         (let ((_%next-probe127215%_
                                (fx+ _%start127196%_
                                     _%i127205%_
                                     (fx* _%i127205%_ _%i127205%_))))
                           (##fxmodulo _%next-probe127215%_ _%size127190%_))
                         (##fx+ _%i127205%_ '1)
                         (let ((_%$e127218%_ _%deleted127207%_))
                           (if _%$e127218%_ _%$e127218%_ _%probe127203%_)))
                        (if (eq? _%key127181%_ _%k127210%_)
                            (vector-ref
                             _%table127184%_
                             (##fx+ _%probe127203%_ '1))
                            (_%loop127200%_
                             (let ((_%next-probe127223%_
                                    (fx+ _%start127196%_
                                         _%i127205%_
                                         (fx* _%i127205%_ _%i127205%_))))
                               (##fxmodulo
                                _%next-probe127223%_
                                _%size127190%_))
                             (##fx+ _%i127205%_ '1)
                             _%deleted127207%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab127151%_ _%key127152%_ _%default127153%_)
        (let ((_%lock127155%_ (&raw-table-lock _%tab127151%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127160%_ ((_%spin127163%_ '0))
              (if (##fx= (##vector-cas! _%lock127155%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127155%_ '1 (current-thread))
                  (if (##fx< _%spin127163%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127160%_ (##fx+ _%spin127163%_ '1)))
                      (let ((_%owner127169%_ (##vector-ref _%lock127155%_ '1)))
                        (if (eq? _%owner127169%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127169%_)
                                (let () (##thread-yield!) (_%again127160%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127175%_
                 (eq-table-ref _%tab127151%_ _%key127152%_ _%default127153%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127155%_ '1 '#f)
                (##vector-cas! _%lock127155%_ '0 '0 '1)))
            _%$r127175%_))))
    (define __eq-table-set!
      (lambda (_%tab127103%_ _%key127104%_ _%value127105%_)
        (let ((_%table127107%_ (&raw-table-table _%tab127103%_))
              (_%seed127108%_ (&raw-table-seed _%tab127103%_)))
          (let* ((_%h127110%_ (fxxor (eq-hash _%key127104%_) _%seed127108%_))
                 (_%size127113%_ (vector-length _%table127107%_))
                 (_%entries127116%_ (##fxquotient _%size127113%_ '2))
                 (_%start127119%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h127110%_ _%entries127116%_)
                   '1)))
            (let _%loop127123%_ ((_%probe127126%_ _%start127119%_)
                                 (_%i127128%_ '1)
                                 (_%deleted127130%_ '#f))
              (let ((_%k127133%_ (vector-ref _%table127107%_ _%probe127126%_)))
                (if (eq? _%k127133%_ (macro-unused-obj))
                    (if _%deleted127130%_
                        (begin
                          (vector-set!
                           _%table127107%_
                           _%deleted127130%_
                           _%key127104%_)
                          (vector-set!
                           _%table127107%_
                           (##fx+ _%deleted127130%_ '1)
                           _%value127105%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab127103%_
                              (##fx+ (&raw-table-count _%tab127103%_) '1)))))
                        (begin
                          (vector-set!
                           _%table127107%_
                           _%probe127126%_
                           _%key127104%_)
                          (vector-set!
                           _%table127107%_
                           (##fx+ _%probe127126%_ '1)
                           _%value127105%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab127103%_
                              (##fx- (&raw-table-free _%tab127103%_) '1))
                             (&raw-table-count-set!
                              _%tab127103%_
                              (##fx+ (&raw-table-count _%tab127103%_) '1))))))
                    (if (eq? _%k127133%_ (macro-deleted-obj))
                        (_%loop127123%_
                         (let ((_%next-probe127140%_
                                (fx+ _%start127119%_
                                     _%i127128%_
                                     (fx* _%i127128%_ _%i127128%_))))
                           (##fxmodulo _%next-probe127140%_ _%size127113%_))
                         (##fx+ _%i127128%_ '1)
                         (let ((_%$e127143%_ _%deleted127130%_))
                           (if _%$e127143%_ _%$e127143%_ _%probe127126%_)))
                        (if (eq? _%key127104%_ _%k127133%_)
                            (let ()
                              (vector-set!
                               _%table127107%_
                               _%probe127126%_
                               _%key127104%_)
                              (vector-set!
                               _%table127107%_
                               (##fx+ _%probe127126%_ '1)
                               _%value127105%_))
                            (_%loop127123%_
                             (let ((_%next-probe127148%_
                                    (fx+ _%start127119%_
                                         _%i127128%_
                                         (fx* _%i127128%_ _%i127128%_))))
                               (##fxmodulo
                                _%next-probe127148%_
                                _%size127113%_))
                             (##fx+ _%i127128%_ '1)
                             _%deleted127130%_))))))))))
    (define eq-table-set!
      (lambda (_%tab127099%_ _%key127100%_ _%value127101%_)
        (if (##fx< (&raw-table-free _%tab127099%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab127099%_))
                    '4))
            (__raw-table-rehash! _%tab127099%_)
            '#!void)
        (__eq-table-set! _%tab127099%_ _%key127100%_ _%value127101%_)))
    (define eq-table-set!/lock
      (lambda (_%tab127069%_ _%key127070%_ _%value127071%_)
        (let ((_%lock127074%_ (&raw-table-lock _%tab127069%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127079%_ ((_%spin127082%_ '0))
              (if (##fx= (##vector-cas! _%lock127074%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127074%_ '1 (current-thread))
                  (if (##fx< _%spin127082%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127079%_ (##fx+ _%spin127082%_ '1)))
                      (let ((_%owner127088%_ (##vector-ref _%lock127074%_ '1)))
                        (if (eq? _%owner127088%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127088%_)
                                (let () (##thread-yield!) (_%again127079%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127094%_
                 (eq-table-set! _%tab127069%_ _%key127070%_ _%value127071%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127074%_ '1 '#f)
                (##vector-cas! _%lock127074%_ '0 '0 '1)))
            _%$r127094%_))))
    (define __eq-table-update!
      (lambda (_%tab127020%_
               _%key127021%_
               _%eq-table-update!127022%_
               _%default127023%_)
        (let ((_%table127025%_ (&raw-table-table _%tab127020%_))
              (_%seed127026%_ (&raw-table-seed _%tab127020%_)))
          (let* ((_%h127028%_ (fxxor (eq-hash _%key127021%_) _%seed127026%_))
                 (_%size127031%_ (vector-length _%table127025%_))
                 (_%entries127034%_ (##fxquotient _%size127031%_ '2))
                 (_%start127037%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h127028%_ _%entries127034%_)
                   '1)))
            (let _%loop127041%_ ((_%probe127044%_ _%start127037%_)
                                 (_%i127046%_ '1)
                                 (_%deleted127048%_ '#f))
              (let ((_%k127051%_ (vector-ref _%table127025%_ _%probe127044%_)))
                (if (eq? _%k127051%_ (macro-unused-obj))
                    (if _%deleted127048%_
                        (begin
                          (vector-set!
                           _%table127025%_
                           _%deleted127048%_
                           _%key127021%_)
                          (vector-set!
                           _%table127025%_
                           (##fx+ _%deleted127048%_ '1)
                           (_%eq-table-update!127022%_ _%default127023%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab127020%_
                              (##fx+ (&raw-table-count _%tab127020%_) '1)))))
                        (begin
                          (vector-set!
                           _%table127025%_
                           _%probe127044%_
                           _%key127021%_)
                          (vector-set!
                           _%table127025%_
                           (##fx+ _%probe127044%_ '1)
                           (_%eq-table-update!127022%_ _%default127023%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab127020%_
                              (##fx- (&raw-table-free _%tab127020%_) '1))
                             (&raw-table-count-set!
                              _%tab127020%_
                              (##fx+ (&raw-table-count _%tab127020%_) '1))))))
                    (if (eq? _%k127051%_ (macro-deleted-obj))
                        (_%loop127041%_
                         (let ((_%next-probe127058%_
                                (fx+ _%start127037%_
                                     _%i127046%_
                                     (fx* _%i127046%_ _%i127046%_))))
                           (##fxmodulo _%next-probe127058%_ _%size127031%_))
                         (##fx+ _%i127046%_ '1)
                         (let ((_%$e127061%_ _%deleted127048%_))
                           (if _%$e127061%_ _%$e127061%_ _%probe127044%_)))
                        (if (eq? _%key127021%_ _%k127051%_)
                            (let ()
                              (vector-set!
                               _%table127025%_
                               _%probe127044%_
                               _%key127021%_)
                              (vector-set!
                               _%table127025%_
                               (##fx+ _%probe127044%_ '1)
                               (_%eq-table-update!127022%_
                                (vector-ref
                                 _%table127025%_
                                 (##fx+ _%probe127044%_ '1)))))
                            (_%loop127041%_
                             (let ((_%next-probe127066%_
                                    (fx+ _%start127037%_
                                         _%i127046%_
                                         (fx* _%i127046%_ _%i127046%_))))
                               (##fxmodulo
                                _%next-probe127066%_
                                _%size127031%_))
                             (##fx+ _%i127046%_ '1)
                             _%deleted127048%_))))))))))
    (define eq-table-update!
      (lambda (_%tab127015%_
               _%key127016%_
               _%eq-table-update!127017%_
               _%default127018%_)
        (if (##fx< (&raw-table-free _%tab127015%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab127015%_))
                    '4))
            (__raw-table-rehash! _%tab127015%_)
            '#!void)
        (__eq-table-update!
         _%tab127015%_
         _%key127016%_
         _%eq-table-update!127017%_
         _%default127018%_)))
    (define eq-table-update!/lock
      (lambda (_%tab126984%_
               _%key126985%_
               _%eq-table-update!126986%_
               _%default126987%_)
        (let ((_%lock126990%_ (&raw-table-lock _%tab126984%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126995%_ ((_%spin126998%_ '0))
              (if (##fx= (##vector-cas! _%lock126990%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126990%_ '1 (current-thread))
                  (if (##fx< _%spin126998%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126995%_ (##fx+ _%spin126998%_ '1)))
                      (let ((_%owner127004%_ (##vector-ref _%lock126990%_ '1)))
                        (if (eq? _%owner127004%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127004%_)
                                (let () (##thread-yield!) (_%again126995%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127010%_
                 (_%eq-table-update!126986%_
                  _%tab126984%_
                  _%key126985%_
                  _%eq-table-update!126986%_
                  _%default126987%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126990%_ '1 '#f)
                (##vector-cas! _%lock126990%_ '0 '0 '1)))
            _%$r127010%_))))
    (define eq-table-delete!
      (lambda (_%tab126941%_ _%key126942%_)
        (let ((_%table126944%_ (&raw-table-table _%tab126941%_))
              (_%seed126946%_ (&raw-table-seed _%tab126941%_)))
          (let* ((_%h126949%_ (fxxor (eq-hash _%key126942%_) _%seed126946%_))
                 (_%size126952%_ (vector-length _%table126944%_))
                 (_%entries126955%_ (##fxquotient _%size126952%_ '2))
                 (_%start126958%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126949%_ _%entries126955%_)
                   '1)))
            (let _%loop126962%_ ((_%probe126965%_ _%start126958%_)
                                 (_%i126967%_ '1))
              (let ((_%k126970%_ (vector-ref _%table126944%_ _%probe126965%_)))
                (if (eq? _%k126970%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k126970%_ (macro-deleted-obj))
                        (_%loop126962%_
                         (let ((_%next-probe126975%_
                                (fx+ _%start126958%_
                                     _%i126967%_
                                     (fx* _%i126967%_ _%i126967%_))))
                           (##fxmodulo _%next-probe126975%_ _%size126952%_))
                         (##fx+ _%i126967%_ '1))
                        (if (eq? _%key126942%_ _%k126970%_)
                            (let ()
                              (vector-set!
                               _%table126944%_
                               _%probe126965%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table126944%_
                               (##fx+ _%probe126965%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab126941%_
                                  (##fx- (&raw-table-count _%tab126941%_)
                                         '1)))))
                            (_%loop126962%_
                             (let ((_%next-probe126981%_
                                    (fx+ _%start126958%_
                                         _%i126967%_
                                         (fx* _%i126967%_ _%i126967%_))))
                               (##fxmodulo
                                _%next-probe126981%_
                                _%size126952%_))
                             (##fx+ _%i126967%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab126911%_ _%key126913%_)
        (let ((_%lock126916%_ (&raw-table-lock _%tab126911%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126921%_ ((_%spin126924%_ '0))
              (if (##fx= (##vector-cas! _%lock126916%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126916%_ '1 (current-thread))
                  (if (##fx< _%spin126924%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126921%_ (##fx+ _%spin126924%_ '1)))
                      (let ((_%owner126930%_ (##vector-ref _%lock126916%_ '1)))
                        (if (eq? _%owner126930%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126930%_)
                                (let () (##thread-yield!) (_%again126921%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126936%_ (eq-table-delete! _%tab126911%_ _%key126913%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126916%_ '1 '#f)
                (##vector-cas! _%lock126916%_ '0 '0 '1)))
            _%$r126936%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint126893%_ _%seed126894%_)
        (make-raw-table__1 _%size-hint126893%_ eqv-hash eqv? _%seed126894%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint126900%_ '#f) (_%seed126902%_ '0))
          (make-eqv-table__% _%size-hint126900%_ _%seed126902%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint126904%_)
        (let ((_%seed126906%_ '0))
          (make-eqv-table__% _%size-hint126904%_ _%seed126906%_))))
    (define make-eqv-table
      (lambda _g127872_
        (let ((_g127873_ (##length _g127872_)))
          (cond ((##fx= _g127873_ 0) (apply make-eqv-table__0 _g127872_))
                ((##fx= _g127873_ 1) (apply make-eqv-table__1 _g127872_))
                ((##fx= _g127873_ 2) (apply make-eqv-table__% _g127872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g127872_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint126873%_ _%seed126875%_)
        (make-raw-table/lock__%
         _%size-hint126873%_
         eqv-hash
         eqv?
         _%seed126875%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint126881%_ '#f) (_%seed126883%_ '0))
          (make-eqv-table/lock__% _%size-hint126881%_ _%seed126883%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint126885%_)
        (let ((_%seed126887%_ '0))
          (make-eqv-table/lock__% _%size-hint126885%_ _%seed126887%_))))
    (define make-eqv-table/lock
      (lambda _g127874_
        (let ((_g127875_ (##length _g127874_)))
          (cond ((##fx= _g127875_ 0) (apply make-eqv-table/lock__0 _g127874_))
                ((##fx= _g127875_ 1) (apply make-eqv-table/lock__1 _g127874_))
                ((##fx= _g127875_ 2) (apply make-eqv-table/lock__% _g127874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g127874_))))))
    (define eqv-table-ref
      (lambda (_%tab126826%_ _%key126827%_ _%default126828%_)
        (let ((_%table126830%_ (&raw-table-table _%tab126826%_))
              (_%seed126831%_ (&raw-table-seed _%tab126826%_)))
          (let* ((_%h126833%_ (fxxor (eqv-hash _%key126827%_) _%seed126831%_))
                 (_%size126836%_ (vector-length _%table126830%_))
                 (_%entries126839%_ (##fxquotient _%size126836%_ '2))
                 (_%start126842%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126833%_ _%entries126839%_)
                   '1)))
            (let _%loop126846%_ ((_%probe126849%_ _%start126842%_)
                                 (_%i126851%_ '1)
                                 (_%deleted126853%_ '#f))
              (let ((_%k126856%_ (vector-ref _%table126830%_ _%probe126849%_)))
                (if (eq? _%k126856%_ (macro-unused-obj))
                    _%default126828%_
                    (if (eq? _%k126856%_ (macro-deleted-obj))
                        (_%loop126846%_
                         (let ((_%next-probe126861%_
                                (fx+ _%start126842%_
                                     _%i126851%_
                                     (fx* _%i126851%_ _%i126851%_))))
                           (##fxmodulo _%next-probe126861%_ _%size126836%_))
                         (##fx+ _%i126851%_ '1)
                         (let ((_%$e126864%_ _%deleted126853%_))
                           (if _%$e126864%_ _%$e126864%_ _%probe126849%_)))
                        (if (eqv? _%key126827%_ _%k126856%_)
                            (vector-ref
                             _%table126830%_
                             (##fx+ _%probe126849%_ '1))
                            (_%loop126846%_
                             (let ((_%next-probe126869%_
                                    (fx+ _%start126842%_
                                         _%i126851%_
                                         (fx* _%i126851%_ _%i126851%_))))
                               (##fxmodulo
                                _%next-probe126869%_
                                _%size126836%_))
                             (##fx+ _%i126851%_ '1)
                             _%deleted126853%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab126797%_ _%key126798%_ _%default126799%_)
        (let ((_%lock126801%_ (&raw-table-lock _%tab126797%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126806%_ ((_%spin126809%_ '0))
              (if (##fx= (##vector-cas! _%lock126801%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126801%_ '1 (current-thread))
                  (if (##fx< _%spin126809%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126806%_ (##fx+ _%spin126809%_ '1)))
                      (let ((_%owner126815%_ (##vector-ref _%lock126801%_ '1)))
                        (if (eq? _%owner126815%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126815%_)
                                (let () (##thread-yield!) (_%again126806%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126821%_
                 (eqv-table-ref
                  _%tab126797%_
                  _%key126798%_
                  _%default126799%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126801%_ '1 '#f)
                (##vector-cas! _%lock126801%_ '0 '0 '1)))
            _%$r126821%_))))
    (define __eqv-table-set!
      (lambda (_%tab126749%_ _%key126750%_ _%value126751%_)
        (let ((_%table126753%_ (&raw-table-table _%tab126749%_))
              (_%seed126754%_ (&raw-table-seed _%tab126749%_)))
          (let* ((_%h126756%_ (fxxor (eqv-hash _%key126750%_) _%seed126754%_))
                 (_%size126759%_ (vector-length _%table126753%_))
                 (_%entries126762%_ (##fxquotient _%size126759%_ '2))
                 (_%start126765%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126756%_ _%entries126762%_)
                   '1)))
            (let _%loop126769%_ ((_%probe126772%_ _%start126765%_)
                                 (_%i126774%_ '1)
                                 (_%deleted126776%_ '#f))
              (let ((_%k126779%_ (vector-ref _%table126753%_ _%probe126772%_)))
                (if (eq? _%k126779%_ (macro-unused-obj))
                    (if _%deleted126776%_
                        (begin
                          (vector-set!
                           _%table126753%_
                           _%deleted126776%_
                           _%key126750%_)
                          (vector-set!
                           _%table126753%_
                           (##fx+ _%deleted126776%_ '1)
                           _%value126751%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab126749%_
                              (##fx+ (&raw-table-count _%tab126749%_) '1)))))
                        (begin
                          (vector-set!
                           _%table126753%_
                           _%probe126772%_
                           _%key126750%_)
                          (vector-set!
                           _%table126753%_
                           (##fx+ _%probe126772%_ '1)
                           _%value126751%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab126749%_
                              (##fx- (&raw-table-free _%tab126749%_) '1))
                             (&raw-table-count-set!
                              _%tab126749%_
                              (##fx+ (&raw-table-count _%tab126749%_) '1))))))
                    (if (eq? _%k126779%_ (macro-deleted-obj))
                        (_%loop126769%_
                         (let ((_%next-probe126786%_
                                (fx+ _%start126765%_
                                     _%i126774%_
                                     (fx* _%i126774%_ _%i126774%_))))
                           (##fxmodulo _%next-probe126786%_ _%size126759%_))
                         (##fx+ _%i126774%_ '1)
                         (let ((_%$e126789%_ _%deleted126776%_))
                           (if _%$e126789%_ _%$e126789%_ _%probe126772%_)))
                        (if (eqv? _%key126750%_ _%k126779%_)
                            (let ()
                              (vector-set!
                               _%table126753%_
                               _%probe126772%_
                               _%key126750%_)
                              (vector-set!
                               _%table126753%_
                               (##fx+ _%probe126772%_ '1)
                               _%value126751%_))
                            (_%loop126769%_
                             (let ((_%next-probe126794%_
                                    (fx+ _%start126765%_
                                         _%i126774%_
                                         (fx* _%i126774%_ _%i126774%_))))
                               (##fxmodulo
                                _%next-probe126794%_
                                _%size126759%_))
                             (##fx+ _%i126774%_ '1)
                             _%deleted126776%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab126745%_ _%key126746%_ _%value126747%_)
        (if (##fx< (&raw-table-free _%tab126745%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126745%_))
                    '4))
            (__raw-table-rehash! _%tab126745%_)
            '#!void)
        (__eqv-table-set! _%tab126745%_ _%key126746%_ _%value126747%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab126715%_ _%key126716%_ _%value126717%_)
        (let ((_%lock126720%_ (&raw-table-lock _%tab126715%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126725%_ ((_%spin126728%_ '0))
              (if (##fx= (##vector-cas! _%lock126720%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126720%_ '1 (current-thread))
                  (if (##fx< _%spin126728%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126725%_ (##fx+ _%spin126728%_ '1)))
                      (let ((_%owner126734%_ (##vector-ref _%lock126720%_ '1)))
                        (if (eq? _%owner126734%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126734%_)
                                (let () (##thread-yield!) (_%again126725%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126740%_
                 (eqv-table-set! _%tab126715%_ _%key126716%_ _%value126717%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126720%_ '1 '#f)
                (##vector-cas! _%lock126720%_ '0 '0 '1)))
            _%$r126740%_))))
    (define __eqv-table-update!
      (lambda (_%tab126666%_
               _%key126667%_
               _%eqv-table-update!126668%_
               _%default126669%_)
        (let ((_%table126671%_ (&raw-table-table _%tab126666%_))
              (_%seed126672%_ (&raw-table-seed _%tab126666%_)))
          (let* ((_%h126674%_ (fxxor (eqv-hash _%key126667%_) _%seed126672%_))
                 (_%size126677%_ (vector-length _%table126671%_))
                 (_%entries126680%_ (##fxquotient _%size126677%_ '2))
                 (_%start126683%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126674%_ _%entries126680%_)
                   '1)))
            (let _%loop126687%_ ((_%probe126690%_ _%start126683%_)
                                 (_%i126692%_ '1)
                                 (_%deleted126694%_ '#f))
              (let ((_%k126697%_ (vector-ref _%table126671%_ _%probe126690%_)))
                (if (eq? _%k126697%_ (macro-unused-obj))
                    (if _%deleted126694%_
                        (begin
                          (vector-set!
                           _%table126671%_
                           _%deleted126694%_
                           _%key126667%_)
                          (vector-set!
                           _%table126671%_
                           (##fx+ _%deleted126694%_ '1)
                           (_%eqv-table-update!126668%_ _%default126669%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab126666%_
                              (##fx+ (&raw-table-count _%tab126666%_) '1)))))
                        (begin
                          (vector-set!
                           _%table126671%_
                           _%probe126690%_
                           _%key126667%_)
                          (vector-set!
                           _%table126671%_
                           (##fx+ _%probe126690%_ '1)
                           (_%eqv-table-update!126668%_ _%default126669%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab126666%_
                              (##fx- (&raw-table-free _%tab126666%_) '1))
                             (&raw-table-count-set!
                              _%tab126666%_
                              (##fx+ (&raw-table-count _%tab126666%_) '1))))))
                    (if (eq? _%k126697%_ (macro-deleted-obj))
                        (_%loop126687%_
                         (let ((_%next-probe126704%_
                                (fx+ _%start126683%_
                                     _%i126692%_
                                     (fx* _%i126692%_ _%i126692%_))))
                           (##fxmodulo _%next-probe126704%_ _%size126677%_))
                         (##fx+ _%i126692%_ '1)
                         (let ((_%$e126707%_ _%deleted126694%_))
                           (if _%$e126707%_ _%$e126707%_ _%probe126690%_)))
                        (if (eqv? _%key126667%_ _%k126697%_)
                            (let ()
                              (vector-set!
                               _%table126671%_
                               _%probe126690%_
                               _%key126667%_)
                              (vector-set!
                               _%table126671%_
                               (##fx+ _%probe126690%_ '1)
                               (_%eqv-table-update!126668%_
                                (vector-ref
                                 _%table126671%_
                                 (##fx+ _%probe126690%_ '1)))))
                            (_%loop126687%_
                             (let ((_%next-probe126712%_
                                    (fx+ _%start126683%_
                                         _%i126692%_
                                         (fx* _%i126692%_ _%i126692%_))))
                               (##fxmodulo
                                _%next-probe126712%_
                                _%size126677%_))
                             (##fx+ _%i126692%_ '1)
                             _%deleted126694%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab126661%_
               _%key126662%_
               _%eqv-table-update!126663%_
               _%default126664%_)
        (if (##fx< (&raw-table-free _%tab126661%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126661%_))
                    '4))
            (__raw-table-rehash! _%tab126661%_)
            '#!void)
        (__eqv-table-update!
         _%tab126661%_
         _%key126662%_
         _%eqv-table-update!126663%_
         _%default126664%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab126630%_
               _%key126631%_
               _%eqv-table-update!126632%_
               _%default126633%_)
        (let ((_%lock126636%_ (&raw-table-lock _%tab126630%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126641%_ ((_%spin126644%_ '0))
              (if (##fx= (##vector-cas! _%lock126636%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126636%_ '1 (current-thread))
                  (if (##fx< _%spin126644%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126641%_ (##fx+ _%spin126644%_ '1)))
                      (let ((_%owner126650%_ (##vector-ref _%lock126636%_ '1)))
                        (if (eq? _%owner126650%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126650%_)
                                (let () (##thread-yield!) (_%again126641%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126656%_
                 (_%eqv-table-update!126632%_
                  _%tab126630%_
                  _%key126631%_
                  _%eqv-table-update!126632%_
                  _%default126633%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126636%_ '1 '#f)
                (##vector-cas! _%lock126636%_ '0 '0 '1)))
            _%$r126656%_))))
    (define eqv-table-delete!
      (lambda (_%tab126587%_ _%key126588%_)
        (let ((_%table126590%_ (&raw-table-table _%tab126587%_))
              (_%seed126592%_ (&raw-table-seed _%tab126587%_)))
          (let* ((_%h126595%_ (fxxor (eqv-hash _%key126588%_) _%seed126592%_))
                 (_%size126598%_ (vector-length _%table126590%_))
                 (_%entries126601%_ (##fxquotient _%size126598%_ '2))
                 (_%start126604%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126595%_ _%entries126601%_)
                   '1)))
            (let _%loop126608%_ ((_%probe126611%_ _%start126604%_)
                                 (_%i126613%_ '1))
              (let ((_%k126616%_ (vector-ref _%table126590%_ _%probe126611%_)))
                (if (eq? _%k126616%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k126616%_ (macro-deleted-obj))
                        (_%loop126608%_
                         (let ((_%next-probe126621%_
                                (fx+ _%start126604%_
                                     _%i126613%_
                                     (fx* _%i126613%_ _%i126613%_))))
                           (##fxmodulo _%next-probe126621%_ _%size126598%_))
                         (##fx+ _%i126613%_ '1))
                        (if (eqv? _%key126588%_ _%k126616%_)
                            (let ()
                              (vector-set!
                               _%table126590%_
                               _%probe126611%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table126590%_
                               (##fx+ _%probe126611%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab126587%_
                                  (##fx- (&raw-table-count _%tab126587%_)
                                         '1)))))
                            (_%loop126608%_
                             (let ((_%next-probe126627%_
                                    (fx+ _%start126604%_
                                         _%i126613%_
                                         (fx* _%i126613%_ _%i126613%_))))
                               (##fxmodulo
                                _%next-probe126627%_
                                _%size126598%_))
                             (##fx+ _%i126613%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab126557%_ _%key126559%_)
        (let ((_%lock126562%_ (&raw-table-lock _%tab126557%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126567%_ ((_%spin126570%_ '0))
              (if (##fx= (##vector-cas! _%lock126562%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126562%_ '1 (current-thread))
                  (if (##fx< _%spin126570%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126567%_ (##fx+ _%spin126570%_ '1)))
                      (let ((_%owner126576%_ (##vector-ref _%lock126562%_ '1)))
                        (if (eq? _%owner126576%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126576%_)
                                (let () (##thread-yield!) (_%again126567%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126582%_ (eqv-table-delete! _%tab126557%_ _%key126559%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126562%_ '1 '#f)
                (##vector-cas! _%lock126562%_ '0 '0 '1)))
            _%$r126582%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint126539%_ _%seed126540%_)
        (make-raw-table__1
         _%size-hint126539%_
         symbolic-hash
         eq?
         _%seed126540%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint126546%_ '#f) (_%seed126548%_ '0))
          (make-symbolic-table__% _%size-hint126546%_ _%seed126548%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint126550%_)
        (let ((_%seed126552%_ '0))
          (make-symbolic-table__% _%size-hint126550%_ _%seed126552%_))))
    (define make-symbolic-table
      (lambda _g127876_
        (let ((_g127877_ (##length _g127876_)))
          (cond ((##fx= _g127877_ 0) (apply make-symbolic-table__0 _g127876_))
                ((##fx= _g127877_ 1) (apply make-symbolic-table__1 _g127876_))
                ((##fx= _g127877_ 2) (apply make-symbolic-table__% _g127876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g127876_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint126519%_ _%seed126521%_)
        (make-raw-table/lock__%
         _%size-hint126519%_
         symbolic-hash
         eq?
         _%seed126521%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint126527%_ '#f) (_%seed126529%_ '0))
          (make-symbolic-table/lock__% _%size-hint126527%_ _%seed126529%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint126531%_)
        (let ((_%seed126533%_ '0))
          (make-symbolic-table/lock__% _%size-hint126531%_ _%seed126533%_))))
    (define make-symbolic-table/lock
      (lambda _g127878_
        (let ((_g127879_ (##length _g127878_)))
          (cond ((##fx= _g127879_ 0)
                 (apply make-symbolic-table/lock__0 _g127878_))
                ((##fx= _g127879_ 1)
                 (apply make-symbolic-table/lock__1 _g127878_))
                ((##fx= _g127879_ 2)
                 (apply make-symbolic-table/lock__% _g127878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g127878_))))))
    (define symbolic-table-ref
      (lambda (_%tab126472%_ _%key126473%_ _%default126474%_)
        (let ((_%table126476%_ (&raw-table-table _%tab126472%_))
              (_%seed126477%_ (&raw-table-seed _%tab126472%_)))
          (let* ((_%h126479%_
                  (fxxor (##symbol-hash _%key126473%_) _%seed126477%_))
                 (_%size126482%_ (vector-length _%table126476%_))
                 (_%entries126485%_ (##fxquotient _%size126482%_ '2))
                 (_%start126488%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126479%_ _%entries126485%_)
                   '1)))
            (let _%loop126492%_ ((_%probe126495%_ _%start126488%_)
                                 (_%i126497%_ '1)
                                 (_%deleted126499%_ '#f))
              (let ((_%k126502%_ (vector-ref _%table126476%_ _%probe126495%_)))
                (if (eq? _%k126502%_ (macro-unused-obj))
                    _%default126474%_
                    (if (eq? _%k126502%_ (macro-deleted-obj))
                        (_%loop126492%_
                         (let ((_%next-probe126507%_
                                (fx+ _%start126488%_
                                     _%i126497%_
                                     (fx* _%i126497%_ _%i126497%_))))
                           (##fxmodulo _%next-probe126507%_ _%size126482%_))
                         (##fx+ _%i126497%_ '1)
                         (let ((_%$e126510%_ _%deleted126499%_))
                           (if _%$e126510%_ _%$e126510%_ _%probe126495%_)))
                        (if (eq? _%key126473%_ _%k126502%_)
                            (vector-ref
                             _%table126476%_
                             (##fx+ _%probe126495%_ '1))
                            (_%loop126492%_
                             (let ((_%next-probe126515%_
                                    (fx+ _%start126488%_
                                         _%i126497%_
                                         (fx* _%i126497%_ _%i126497%_))))
                               (##fxmodulo
                                _%next-probe126515%_
                                _%size126482%_))
                             (##fx+ _%i126497%_ '1)
                             _%deleted126499%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab126443%_ _%key126444%_ _%default126445%_)
        (let ((_%lock126447%_ (&raw-table-lock _%tab126443%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126452%_ ((_%spin126455%_ '0))
              (if (##fx= (##vector-cas! _%lock126447%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126447%_ '1 (current-thread))
                  (if (##fx< _%spin126455%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126452%_ (##fx+ _%spin126455%_ '1)))
                      (let ((_%owner126461%_ (##vector-ref _%lock126447%_ '1)))
                        (if (eq? _%owner126461%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126461%_)
                                (let () (##thread-yield!) (_%again126452%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126467%_
                 (symbolic-table-ref
                  _%tab126443%_
                  _%key126444%_
                  _%default126445%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126447%_ '1 '#f)
                (##vector-cas! _%lock126447%_ '0 '0 '1)))
            _%$r126467%_))))
    (define __symbolic-table-set!
      (lambda (_%tab126395%_ _%key126396%_ _%value126397%_)
        (let ((_%table126399%_ (&raw-table-table _%tab126395%_))
              (_%seed126400%_ (&raw-table-seed _%tab126395%_)))
          (let* ((_%h126402%_
                  (fxxor (##symbol-hash _%key126396%_) _%seed126400%_))
                 (_%size126405%_ (vector-length _%table126399%_))
                 (_%entries126408%_ (##fxquotient _%size126405%_ '2))
                 (_%start126411%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126402%_ _%entries126408%_)
                   '1)))
            (let _%loop126415%_ ((_%probe126418%_ _%start126411%_)
                                 (_%i126420%_ '1)
                                 (_%deleted126422%_ '#f))
              (let ((_%k126425%_ (vector-ref _%table126399%_ _%probe126418%_)))
                (if (eq? _%k126425%_ (macro-unused-obj))
                    (if _%deleted126422%_
                        (begin
                          (vector-set!
                           _%table126399%_
                           _%deleted126422%_
                           _%key126396%_)
                          (vector-set!
                           _%table126399%_
                           (##fx+ _%deleted126422%_ '1)
                           _%value126397%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab126395%_
                              (##fx+ (&raw-table-count _%tab126395%_) '1)))))
                        (begin
                          (vector-set!
                           _%table126399%_
                           _%probe126418%_
                           _%key126396%_)
                          (vector-set!
                           _%table126399%_
                           (##fx+ _%probe126418%_ '1)
                           _%value126397%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab126395%_
                              (##fx- (&raw-table-free _%tab126395%_) '1))
                             (&raw-table-count-set!
                              _%tab126395%_
                              (##fx+ (&raw-table-count _%tab126395%_) '1))))))
                    (if (eq? _%k126425%_ (macro-deleted-obj))
                        (_%loop126415%_
                         (let ((_%next-probe126432%_
                                (fx+ _%start126411%_
                                     _%i126420%_
                                     (fx* _%i126420%_ _%i126420%_))))
                           (##fxmodulo _%next-probe126432%_ _%size126405%_))
                         (##fx+ _%i126420%_ '1)
                         (let ((_%$e126435%_ _%deleted126422%_))
                           (if _%$e126435%_ _%$e126435%_ _%probe126418%_)))
                        (if (eq? _%key126396%_ _%k126425%_)
                            (let ()
                              (vector-set!
                               _%table126399%_
                               _%probe126418%_
                               _%key126396%_)
                              (vector-set!
                               _%table126399%_
                               (##fx+ _%probe126418%_ '1)
                               _%value126397%_))
                            (_%loop126415%_
                             (let ((_%next-probe126440%_
                                    (fx+ _%start126411%_
                                         _%i126420%_
                                         (fx* _%i126420%_ _%i126420%_))))
                               (##fxmodulo
                                _%next-probe126440%_
                                _%size126405%_))
                             (##fx+ _%i126420%_ '1)
                             _%deleted126422%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab126391%_ _%key126392%_ _%value126393%_)
        (if (##fx< (&raw-table-free _%tab126391%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126391%_))
                    '4))
            (__raw-table-rehash! _%tab126391%_)
            '#!void)
        (__symbolic-table-set! _%tab126391%_ _%key126392%_ _%value126393%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab126361%_ _%key126362%_ _%value126363%_)
        (let ((_%lock126366%_ (&raw-table-lock _%tab126361%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126371%_ ((_%spin126374%_ '0))
              (if (##fx= (##vector-cas! _%lock126366%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126366%_ '1 (current-thread))
                  (if (##fx< _%spin126374%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126371%_ (##fx+ _%spin126374%_ '1)))
                      (let ((_%owner126380%_ (##vector-ref _%lock126366%_ '1)))
                        (if (eq? _%owner126380%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126380%_)
                                (let () (##thread-yield!) (_%again126371%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126386%_
                 (symbolic-table-set!
                  _%tab126361%_
                  _%key126362%_
                  _%value126363%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126366%_ '1 '#f)
                (##vector-cas! _%lock126366%_ '0 '0 '1)))
            _%$r126386%_))))
    (define __symbolic-table-update!
      (lambda (_%tab126312%_
               _%key126313%_
               _%symbolic-table-update!126314%_
               _%default126315%_)
        (let ((_%table126317%_ (&raw-table-table _%tab126312%_))
              (_%seed126318%_ (&raw-table-seed _%tab126312%_)))
          (let* ((_%h126320%_
                  (fxxor (##symbol-hash _%key126313%_) _%seed126318%_))
                 (_%size126323%_ (vector-length _%table126317%_))
                 (_%entries126326%_ (##fxquotient _%size126323%_ '2))
                 (_%start126329%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126320%_ _%entries126326%_)
                   '1)))
            (let _%loop126333%_ ((_%probe126336%_ _%start126329%_)
                                 (_%i126338%_ '1)
                                 (_%deleted126340%_ '#f))
              (let ((_%k126343%_ (vector-ref _%table126317%_ _%probe126336%_)))
                (if (eq? _%k126343%_ (macro-unused-obj))
                    (if _%deleted126340%_
                        (begin
                          (vector-set!
                           _%table126317%_
                           _%deleted126340%_
                           _%key126313%_)
                          (vector-set!
                           _%table126317%_
                           (##fx+ _%deleted126340%_ '1)
                           (_%symbolic-table-update!126314%_
                            _%default126315%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab126312%_
                              (##fx+ (&raw-table-count _%tab126312%_) '1)))))
                        (begin
                          (vector-set!
                           _%table126317%_
                           _%probe126336%_
                           _%key126313%_)
                          (vector-set!
                           _%table126317%_
                           (##fx+ _%probe126336%_ '1)
                           (_%symbolic-table-update!126314%_
                            _%default126315%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab126312%_
                              (##fx- (&raw-table-free _%tab126312%_) '1))
                             (&raw-table-count-set!
                              _%tab126312%_
                              (##fx+ (&raw-table-count _%tab126312%_) '1))))))
                    (if (eq? _%k126343%_ (macro-deleted-obj))
                        (_%loop126333%_
                         (let ((_%next-probe126350%_
                                (fx+ _%start126329%_
                                     _%i126338%_
                                     (fx* _%i126338%_ _%i126338%_))))
                           (##fxmodulo _%next-probe126350%_ _%size126323%_))
                         (##fx+ _%i126338%_ '1)
                         (let ((_%$e126353%_ _%deleted126340%_))
                           (if _%$e126353%_ _%$e126353%_ _%probe126336%_)))
                        (if (eq? _%key126313%_ _%k126343%_)
                            (let ()
                              (vector-set!
                               _%table126317%_
                               _%probe126336%_
                               _%key126313%_)
                              (vector-set!
                               _%table126317%_
                               (##fx+ _%probe126336%_ '1)
                               (_%symbolic-table-update!126314%_
                                (vector-ref
                                 _%table126317%_
                                 (##fx+ _%probe126336%_ '1)))))
                            (_%loop126333%_
                             (let ((_%next-probe126358%_
                                    (fx+ _%start126329%_
                                         _%i126338%_
                                         (fx* _%i126338%_ _%i126338%_))))
                               (##fxmodulo
                                _%next-probe126358%_
                                _%size126323%_))
                             (##fx+ _%i126338%_ '1)
                             _%deleted126340%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab126307%_
               _%key126308%_
               _%symbolic-table-update!126309%_
               _%default126310%_)
        (if (##fx< (&raw-table-free _%tab126307%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126307%_))
                    '4))
            (__raw-table-rehash! _%tab126307%_)
            '#!void)
        (__symbolic-table-update!
         _%tab126307%_
         _%key126308%_
         _%symbolic-table-update!126309%_
         _%default126310%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab126276%_
               _%key126277%_
               _%symbolic-table-update!126278%_
               _%default126279%_)
        (let ((_%lock126282%_ (&raw-table-lock _%tab126276%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126287%_ ((_%spin126290%_ '0))
              (if (##fx= (##vector-cas! _%lock126282%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126282%_ '1 (current-thread))
                  (if (##fx< _%spin126290%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126287%_ (##fx+ _%spin126290%_ '1)))
                      (let ((_%owner126296%_ (##vector-ref _%lock126282%_ '1)))
                        (if (eq? _%owner126296%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126296%_)
                                (let () (##thread-yield!) (_%again126287%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126302%_
                 (_%symbolic-table-update!126278%_
                  _%tab126276%_
                  _%key126277%_
                  _%symbolic-table-update!126278%_
                  _%default126279%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126282%_ '1 '#f)
                (##vector-cas! _%lock126282%_ '0 '0 '1)))
            _%$r126302%_))))
    (define symbolic-table-delete!
      (lambda (_%tab126233%_ _%key126234%_)
        (let ((_%table126236%_ (&raw-table-table _%tab126233%_))
              (_%seed126238%_ (&raw-table-seed _%tab126233%_)))
          (let* ((_%h126241%_
                  (fxxor (##symbol-hash _%key126234%_) _%seed126238%_))
                 (_%size126244%_ (vector-length _%table126236%_))
                 (_%entries126247%_ (##fxquotient _%size126244%_ '2))
                 (_%start126250%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126241%_ _%entries126247%_)
                   '1)))
            (let _%loop126254%_ ((_%probe126257%_ _%start126250%_)
                                 (_%i126259%_ '1))
              (let ((_%k126262%_ (vector-ref _%table126236%_ _%probe126257%_)))
                (if (eq? _%k126262%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k126262%_ (macro-deleted-obj))
                        (_%loop126254%_
                         (let ((_%next-probe126267%_
                                (fx+ _%start126250%_
                                     _%i126259%_
                                     (fx* _%i126259%_ _%i126259%_))))
                           (##fxmodulo _%next-probe126267%_ _%size126244%_))
                         (##fx+ _%i126259%_ '1))
                        (if (eq? _%key126234%_ _%k126262%_)
                            (let ()
                              (vector-set!
                               _%table126236%_
                               _%probe126257%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table126236%_
                               (##fx+ _%probe126257%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab126233%_
                                  (##fx- (&raw-table-count _%tab126233%_)
                                         '1)))))
                            (_%loop126254%_
                             (let ((_%next-probe126273%_
                                    (fx+ _%start126250%_
                                         _%i126259%_
                                         (fx* _%i126259%_ _%i126259%_))))
                               (##fxmodulo
                                _%next-probe126273%_
                                _%size126244%_))
                             (##fx+ _%i126259%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab126203%_ _%key126205%_)
        (let ((_%lock126208%_ (&raw-table-lock _%tab126203%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126213%_ ((_%spin126216%_ '0))
              (if (##fx= (##vector-cas! _%lock126208%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126208%_ '1 (current-thread))
                  (if (##fx< _%spin126216%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126213%_ (##fx+ _%spin126216%_ '1)))
                      (let ((_%owner126222%_ (##vector-ref _%lock126208%_ '1)))
                        (if (eq? _%owner126222%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126222%_)
                                (let () (##thread-yield!) (_%again126213%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126228%_
                 (symbolic-table-delete! _%tab126203%_ _%key126205%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126208%_ '1 '#f)
                (##vector-cas! _%lock126208%_ '0 '0 '1)))
            _%$r126228%_))))
    (define make-string-table__%
      (lambda (_%size-hint126185%_ _%seed126186%_)
        (make-raw-table__1
         _%size-hint126185%_
         string-hash
         ##string=?
         _%seed126186%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint126192%_ '#f) (_%seed126194%_ '0))
          (make-string-table__% _%size-hint126192%_ _%seed126194%_))))
    (define make-string-table__1
      (lambda (_%size-hint126196%_)
        (let ((_%seed126198%_ '0))
          (make-string-table__% _%size-hint126196%_ _%seed126198%_))))
    (define make-string-table
      (lambda _g127880_
        (let ((_g127881_ (##length _g127880_)))
          (cond ((##fx= _g127881_ 0) (apply make-string-table__0 _g127880_))
                ((##fx= _g127881_ 1) (apply make-string-table__1 _g127880_))
                ((##fx= _g127881_ 2) (apply make-string-table__% _g127880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g127880_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint126165%_ _%seed126167%_)
        (make-raw-table/lock__%
         _%size-hint126165%_
         string-hash
         ##string=?
         _%seed126167%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint126173%_ '#f) (_%seed126175%_ '0))
          (make-string-table/lock__% _%size-hint126173%_ _%seed126175%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint126177%_)
        (let ((_%seed126179%_ '0))
          (make-string-table/lock__% _%size-hint126177%_ _%seed126179%_))))
    (define make-string-table/lock
      (lambda _g127882_
        (let ((_g127883_ (##length _g127882_)))
          (cond ((##fx= _g127883_ 0)
                 (apply make-string-table/lock__0 _g127882_))
                ((##fx= _g127883_ 1)
                 (apply make-string-table/lock__1 _g127882_))
                ((##fx= _g127883_ 2)
                 (apply make-string-table/lock__% _g127882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g127882_))))))
    (define string-table-ref
      (lambda (_%tab126118%_ _%key126119%_ _%default126120%_)
        (let ((_%table126122%_ (&raw-table-table _%tab126118%_))
              (_%seed126123%_ (&raw-table-seed _%tab126118%_)))
          (let* ((_%h126125%_
                  (fxxor (##string=?-hash _%key126119%_) _%seed126123%_))
                 (_%size126128%_ (vector-length _%table126122%_))
                 (_%entries126131%_ (##fxquotient _%size126128%_ '2))
                 (_%start126134%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126125%_ _%entries126131%_)
                   '1)))
            (let _%loop126138%_ ((_%probe126141%_ _%start126134%_)
                                 (_%i126143%_ '1)
                                 (_%deleted126145%_ '#f))
              (let ((_%k126148%_ (vector-ref _%table126122%_ _%probe126141%_)))
                (if (eq? _%k126148%_ (macro-unused-obj))
                    _%default126120%_
                    (if (eq? _%k126148%_ (macro-deleted-obj))
                        (_%loop126138%_
                         (let ((_%next-probe126153%_
                                (fx+ _%start126134%_
                                     _%i126143%_
                                     (fx* _%i126143%_ _%i126143%_))))
                           (##fxmodulo _%next-probe126153%_ _%size126128%_))
                         (##fx+ _%i126143%_ '1)
                         (let ((_%$e126156%_ _%deleted126145%_))
                           (if _%$e126156%_ _%$e126156%_ _%probe126141%_)))
                        (if (##string=? _%key126119%_ _%k126148%_)
                            (vector-ref
                             _%table126122%_
                             (##fx+ _%probe126141%_ '1))
                            (_%loop126138%_
                             (let ((_%next-probe126161%_
                                    (fx+ _%start126134%_
                                         _%i126143%_
                                         (fx* _%i126143%_ _%i126143%_))))
                               (##fxmodulo
                                _%next-probe126161%_
                                _%size126128%_))
                             (##fx+ _%i126143%_ '1)
                             _%deleted126145%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab126089%_ _%key126090%_ _%default126091%_)
        (let ((_%lock126093%_ (&raw-table-lock _%tab126089%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126098%_ ((_%spin126101%_ '0))
              (if (##fx= (##vector-cas! _%lock126093%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126093%_ '1 (current-thread))
                  (if (##fx< _%spin126101%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126098%_ (##fx+ _%spin126101%_ '1)))
                      (let ((_%owner126107%_ (##vector-ref _%lock126093%_ '1)))
                        (if (eq? _%owner126107%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126107%_)
                                (let () (##thread-yield!) (_%again126098%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126113%_
                 (string-table-ref
                  _%tab126089%_
                  _%key126090%_
                  _%default126091%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126093%_ '1 '#f)
                (##vector-cas! _%lock126093%_ '0 '0 '1)))
            _%$r126113%_))))
    (define __string-table-set!
      (lambda (_%tab126041%_ _%key126042%_ _%value126043%_)
        (let ((_%table126045%_ (&raw-table-table _%tab126041%_))
              (_%seed126046%_ (&raw-table-seed _%tab126041%_)))
          (let* ((_%h126048%_
                  (fxxor (##string=?-hash _%key126042%_) _%seed126046%_))
                 (_%size126051%_ (vector-length _%table126045%_))
                 (_%entries126054%_ (##fxquotient _%size126051%_ '2))
                 (_%start126057%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126048%_ _%entries126054%_)
                   '1)))
            (let _%loop126061%_ ((_%probe126064%_ _%start126057%_)
                                 (_%i126066%_ '1)
                                 (_%deleted126068%_ '#f))
              (let ((_%k126071%_ (vector-ref _%table126045%_ _%probe126064%_)))
                (if (eq? _%k126071%_ (macro-unused-obj))
                    (if _%deleted126068%_
                        (begin
                          (vector-set!
                           _%table126045%_
                           _%deleted126068%_
                           _%key126042%_)
                          (vector-set!
                           _%table126045%_
                           (##fx+ _%deleted126068%_ '1)
                           _%value126043%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab126041%_
                              (##fx+ (&raw-table-count _%tab126041%_) '1)))))
                        (begin
                          (vector-set!
                           _%table126045%_
                           _%probe126064%_
                           _%key126042%_)
                          (vector-set!
                           _%table126045%_
                           (##fx+ _%probe126064%_ '1)
                           _%value126043%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab126041%_
                              (##fx- (&raw-table-free _%tab126041%_) '1))
                             (&raw-table-count-set!
                              _%tab126041%_
                              (##fx+ (&raw-table-count _%tab126041%_) '1))))))
                    (if (eq? _%k126071%_ (macro-deleted-obj))
                        (_%loop126061%_
                         (let ((_%next-probe126078%_
                                (fx+ _%start126057%_
                                     _%i126066%_
                                     (fx* _%i126066%_ _%i126066%_))))
                           (##fxmodulo _%next-probe126078%_ _%size126051%_))
                         (##fx+ _%i126066%_ '1)
                         (let ((_%$e126081%_ _%deleted126068%_))
                           (if _%$e126081%_ _%$e126081%_ _%probe126064%_)))
                        (if (##string=? _%key126042%_ _%k126071%_)
                            (let ()
                              (vector-set!
                               _%table126045%_
                               _%probe126064%_
                               _%key126042%_)
                              (vector-set!
                               _%table126045%_
                               (##fx+ _%probe126064%_ '1)
                               _%value126043%_))
                            (_%loop126061%_
                             (let ((_%next-probe126086%_
                                    (fx+ _%start126057%_
                                         _%i126066%_
                                         (fx* _%i126066%_ _%i126066%_))))
                               (##fxmodulo
                                _%next-probe126086%_
                                _%size126051%_))
                             (##fx+ _%i126066%_ '1)
                             _%deleted126068%_))))))))))
    (define string-table-set!
      (lambda (_%tab126037%_ _%key126038%_ _%value126039%_)
        (if (##fx< (&raw-table-free _%tab126037%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126037%_))
                    '4))
            (__raw-table-rehash! _%tab126037%_)
            '#!void)
        (__string-table-set! _%tab126037%_ _%key126038%_ _%value126039%_)))
    (define string-table-set!/lock
      (lambda (_%tab126007%_ _%key126008%_ _%value126009%_)
        (let ((_%lock126012%_ (&raw-table-lock _%tab126007%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126017%_ ((_%spin126020%_ '0))
              (if (##fx= (##vector-cas! _%lock126012%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126012%_ '1 (current-thread))
                  (if (##fx< _%spin126020%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126017%_ (##fx+ _%spin126020%_ '1)))
                      (let ((_%owner126026%_ (##vector-ref _%lock126012%_ '1)))
                        (if (eq? _%owner126026%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126026%_)
                                (let () (##thread-yield!) (_%again126017%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126032%_
                 (string-table-set!
                  _%tab126007%_
                  _%key126008%_
                  _%value126009%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126012%_ '1 '#f)
                (##vector-cas! _%lock126012%_ '0 '0 '1)))
            _%$r126032%_))))
    (define __string-table-update!
      (lambda (_%tab125958%_
               _%key125959%_
               _%string-table-update!125960%_
               _%default125961%_)
        (let ((_%table125963%_ (&raw-table-table _%tab125958%_))
              (_%seed125964%_ (&raw-table-seed _%tab125958%_)))
          (let* ((_%h125966%_
                  (fxxor (##string=?-hash _%key125959%_) _%seed125964%_))
                 (_%size125969%_ (vector-length _%table125963%_))
                 (_%entries125972%_ (##fxquotient _%size125969%_ '2))
                 (_%start125975%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125966%_ _%entries125972%_)
                   '1)))
            (let _%loop125979%_ ((_%probe125982%_ _%start125975%_)
                                 (_%i125984%_ '1)
                                 (_%deleted125986%_ '#f))
              (let ((_%k125989%_ (vector-ref _%table125963%_ _%probe125982%_)))
                (if (eq? _%k125989%_ (macro-unused-obj))
                    (if _%deleted125986%_
                        (begin
                          (vector-set!
                           _%table125963%_
                           _%deleted125986%_
                           _%key125959%_)
                          (vector-set!
                           _%table125963%_
                           (##fx+ _%deleted125986%_ '1)
                           (_%string-table-update!125960%_ _%default125961%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab125958%_
                              (##fx+ (&raw-table-count _%tab125958%_) '1)))))
                        (begin
                          (vector-set!
                           _%table125963%_
                           _%probe125982%_
                           _%key125959%_)
                          (vector-set!
                           _%table125963%_
                           (##fx+ _%probe125982%_ '1)
                           (_%string-table-update!125960%_ _%default125961%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab125958%_
                              (##fx- (&raw-table-free _%tab125958%_) '1))
                             (&raw-table-count-set!
                              _%tab125958%_
                              (##fx+ (&raw-table-count _%tab125958%_) '1))))))
                    (if (eq? _%k125989%_ (macro-deleted-obj))
                        (_%loop125979%_
                         (let ((_%next-probe125996%_
                                (fx+ _%start125975%_
                                     _%i125984%_
                                     (fx* _%i125984%_ _%i125984%_))))
                           (##fxmodulo _%next-probe125996%_ _%size125969%_))
                         (##fx+ _%i125984%_ '1)
                         (let ((_%$e125999%_ _%deleted125986%_))
                           (if _%$e125999%_ _%$e125999%_ _%probe125982%_)))
                        (if (##string=? _%key125959%_ _%k125989%_)
                            (let ()
                              (vector-set!
                               _%table125963%_
                               _%probe125982%_
                               _%key125959%_)
                              (vector-set!
                               _%table125963%_
                               (##fx+ _%probe125982%_ '1)
                               (_%string-table-update!125960%_
                                (vector-ref
                                 _%table125963%_
                                 (##fx+ _%probe125982%_ '1)))))
                            (_%loop125979%_
                             (let ((_%next-probe126004%_
                                    (fx+ _%start125975%_
                                         _%i125984%_
                                         (fx* _%i125984%_ _%i125984%_))))
                               (##fxmodulo
                                _%next-probe126004%_
                                _%size125969%_))
                             (##fx+ _%i125984%_ '1)
                             _%deleted125986%_))))))))))
    (define string-table-update!
      (lambda (_%tab125953%_
               _%key125954%_
               _%string-table-update!125955%_
               _%default125956%_)
        (if (##fx< (&raw-table-free _%tab125953%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125953%_))
                    '4))
            (__raw-table-rehash! _%tab125953%_)
            '#!void)
        (__string-table-update!
         _%tab125953%_
         _%key125954%_
         _%string-table-update!125955%_
         _%default125956%_)))
    (define string-table-update!/lock
      (lambda (_%tab125922%_
               _%key125923%_
               _%string-table-update!125924%_
               _%default125925%_)
        (let ((_%lock125928%_ (&raw-table-lock _%tab125922%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125933%_ ((_%spin125936%_ '0))
              (if (##fx= (##vector-cas! _%lock125928%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125928%_ '1 (current-thread))
                  (if (##fx< _%spin125936%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125933%_ (##fx+ _%spin125936%_ '1)))
                      (let ((_%owner125942%_ (##vector-ref _%lock125928%_ '1)))
                        (if (eq? _%owner125942%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125942%_)
                                (let () (##thread-yield!) (_%again125933%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125948%_
                 (_%string-table-update!125924%_
                  _%tab125922%_
                  _%key125923%_
                  _%string-table-update!125924%_
                  _%default125925%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125928%_ '1 '#f)
                (##vector-cas! _%lock125928%_ '0 '0 '1)))
            _%$r125948%_))))
    (define string-table-delete!
      (lambda (_%tab125879%_ _%key125880%_)
        (let ((_%table125882%_ (&raw-table-table _%tab125879%_))
              (_%seed125884%_ (&raw-table-seed _%tab125879%_)))
          (let* ((_%h125887%_
                  (fxxor (##string=?-hash _%key125880%_) _%seed125884%_))
                 (_%size125890%_ (vector-length _%table125882%_))
                 (_%entries125893%_ (##fxquotient _%size125890%_ '2))
                 (_%start125896%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125887%_ _%entries125893%_)
                   '1)))
            (let _%loop125900%_ ((_%probe125903%_ _%start125896%_)
                                 (_%i125905%_ '1))
              (let ((_%k125908%_ (vector-ref _%table125882%_ _%probe125903%_)))
                (if (eq? _%k125908%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k125908%_ (macro-deleted-obj))
                        (_%loop125900%_
                         (let ((_%next-probe125913%_
                                (fx+ _%start125896%_
                                     _%i125905%_
                                     (fx* _%i125905%_ _%i125905%_))))
                           (##fxmodulo _%next-probe125913%_ _%size125890%_))
                         (##fx+ _%i125905%_ '1))
                        (if (##string=? _%key125880%_ _%k125908%_)
                            (let ()
                              (vector-set!
                               _%table125882%_
                               _%probe125903%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table125882%_
                               (##fx+ _%probe125903%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab125879%_
                                  (##fx- (&raw-table-count _%tab125879%_)
                                         '1)))))
                            (_%loop125900%_
                             (let ((_%next-probe125919%_
                                    (fx+ _%start125896%_
                                         _%i125905%_
                                         (fx* _%i125905%_ _%i125905%_))))
                               (##fxmodulo
                                _%next-probe125919%_
                                _%size125890%_))
                             (##fx+ _%i125905%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab125849%_ _%key125851%_)
        (let ((_%lock125854%_ (&raw-table-lock _%tab125849%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125859%_ ((_%spin125862%_ '0))
              (if (##fx= (##vector-cas! _%lock125854%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125854%_ '1 (current-thread))
                  (if (##fx< _%spin125862%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125859%_ (##fx+ _%spin125862%_ '1)))
                      (let ((_%owner125868%_ (##vector-ref _%lock125854%_ '1)))
                        (if (eq? _%owner125868%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125868%_)
                                (let () (##thread-yield!) (_%again125859%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125874%_
                 (string-table-delete! _%tab125849%_ _%key125851%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125854%_ '1 '#f)
                (##vector-cas! _%lock125854%_ '0 '0 '1)))
            _%$r125874%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint125831%_ _%seed125832%_)
        (make-raw-table__1
         _%size-hint125831%_
         immediate-hash
         eq?
         _%seed125832%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint125838%_ '#f) (_%seed125840%_ '0))
          (make-immediate-table__% _%size-hint125838%_ _%seed125840%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint125842%_)
        (let ((_%seed125844%_ '0))
          (make-immediate-table__% _%size-hint125842%_ _%seed125844%_))))
    (define make-immediate-table
      (lambda _g127884_
        (let ((_g127885_ (##length _g127884_)))
          (cond ((##fx= _g127885_ 0) (apply make-immediate-table__0 _g127884_))
                ((##fx= _g127885_ 1) (apply make-immediate-table__1 _g127884_))
                ((##fx= _g127885_ 2) (apply make-immediate-table__% _g127884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g127884_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint125811%_ _%seed125813%_)
        (make-raw-table/lock__%
         _%size-hint125811%_
         immediate-hash
         eq?
         _%seed125813%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint125819%_ '#f) (_%seed125821%_ '0))
          (make-immediate-table/lock__% _%size-hint125819%_ _%seed125821%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint125823%_)
        (let ((_%seed125825%_ '0))
          (make-immediate-table/lock__% _%size-hint125823%_ _%seed125825%_))))
    (define make-immediate-table/lock
      (lambda _g127886_
        (let ((_g127887_ (##length _g127886_)))
          (cond ((##fx= _g127887_ 0)
                 (apply make-immediate-table/lock__0 _g127886_))
                ((##fx= _g127887_ 1)
                 (apply make-immediate-table/lock__1 _g127886_))
                ((##fx= _g127887_ 2)
                 (apply make-immediate-table/lock__% _g127886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g127886_))))))
    (define immediate-table-ref
      (lambda (_%tab125764%_ _%key125765%_ _%default125766%_)
        (let ((_%table125768%_ (&raw-table-table _%tab125764%_))
              (_%seed125769%_ (&raw-table-seed _%tab125764%_)))
          (let* ((_%h125771%_
                  (fxxor (immediate-hash _%key125765%_) _%seed125769%_))
                 (_%size125774%_ (vector-length _%table125768%_))
                 (_%entries125777%_ (##fxquotient _%size125774%_ '2))
                 (_%start125780%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125771%_ _%entries125777%_)
                   '1)))
            (let _%loop125784%_ ((_%probe125787%_ _%start125780%_)
                                 (_%i125789%_ '1)
                                 (_%deleted125791%_ '#f))
              (let ((_%k125794%_ (vector-ref _%table125768%_ _%probe125787%_)))
                (if (eq? _%k125794%_ (macro-unused-obj))
                    _%default125766%_
                    (if (eq? _%k125794%_ (macro-deleted-obj))
                        (_%loop125784%_
                         (let ((_%next-probe125799%_
                                (fx+ _%start125780%_
                                     _%i125789%_
                                     (fx* _%i125789%_ _%i125789%_))))
                           (##fxmodulo _%next-probe125799%_ _%size125774%_))
                         (##fx+ _%i125789%_ '1)
                         (let ((_%$e125802%_ _%deleted125791%_))
                           (if _%$e125802%_ _%$e125802%_ _%probe125787%_)))
                        (if (eq? _%key125765%_ _%k125794%_)
                            (vector-ref
                             _%table125768%_
                             (##fx+ _%probe125787%_ '1))
                            (_%loop125784%_
                             (let ((_%next-probe125807%_
                                    (fx+ _%start125780%_
                                         _%i125789%_
                                         (fx* _%i125789%_ _%i125789%_))))
                               (##fxmodulo
                                _%next-probe125807%_
                                _%size125774%_))
                             (##fx+ _%i125789%_ '1)
                             _%deleted125791%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab125735%_ _%key125736%_ _%default125737%_)
        (let ((_%lock125739%_ (&raw-table-lock _%tab125735%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125744%_ ((_%spin125747%_ '0))
              (if (##fx= (##vector-cas! _%lock125739%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125739%_ '1 (current-thread))
                  (if (##fx< _%spin125747%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125744%_ (##fx+ _%spin125747%_ '1)))
                      (let ((_%owner125753%_ (##vector-ref _%lock125739%_ '1)))
                        (if (eq? _%owner125753%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125753%_)
                                (let () (##thread-yield!) (_%again125744%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125759%_
                 (immediate-table-ref
                  _%tab125735%_
                  _%key125736%_
                  _%default125737%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125739%_ '1 '#f)
                (##vector-cas! _%lock125739%_ '0 '0 '1)))
            _%$r125759%_))))
    (define __immediate-table-set!
      (lambda (_%tab125687%_ _%key125688%_ _%value125689%_)
        (let ((_%table125691%_ (&raw-table-table _%tab125687%_))
              (_%seed125692%_ (&raw-table-seed _%tab125687%_)))
          (let* ((_%h125694%_
                  (fxxor (immediate-hash _%key125688%_) _%seed125692%_))
                 (_%size125697%_ (vector-length _%table125691%_))
                 (_%entries125700%_ (##fxquotient _%size125697%_ '2))
                 (_%start125703%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125694%_ _%entries125700%_)
                   '1)))
            (let _%loop125707%_ ((_%probe125710%_ _%start125703%_)
                                 (_%i125712%_ '1)
                                 (_%deleted125714%_ '#f))
              (let ((_%k125717%_ (vector-ref _%table125691%_ _%probe125710%_)))
                (if (eq? _%k125717%_ (macro-unused-obj))
                    (if _%deleted125714%_
                        (begin
                          (vector-set!
                           _%table125691%_
                           _%deleted125714%_
                           _%key125688%_)
                          (vector-set!
                           _%table125691%_
                           (##fx+ _%deleted125714%_ '1)
                           _%value125689%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab125687%_
                              (##fx+ (&raw-table-count _%tab125687%_) '1)))))
                        (begin
                          (vector-set!
                           _%table125691%_
                           _%probe125710%_
                           _%key125688%_)
                          (vector-set!
                           _%table125691%_
                           (##fx+ _%probe125710%_ '1)
                           _%value125689%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab125687%_
                              (##fx- (&raw-table-free _%tab125687%_) '1))
                             (&raw-table-count-set!
                              _%tab125687%_
                              (##fx+ (&raw-table-count _%tab125687%_) '1))))))
                    (if (eq? _%k125717%_ (macro-deleted-obj))
                        (_%loop125707%_
                         (let ((_%next-probe125724%_
                                (fx+ _%start125703%_
                                     _%i125712%_
                                     (fx* _%i125712%_ _%i125712%_))))
                           (##fxmodulo _%next-probe125724%_ _%size125697%_))
                         (##fx+ _%i125712%_ '1)
                         (let ((_%$e125727%_ _%deleted125714%_))
                           (if _%$e125727%_ _%$e125727%_ _%probe125710%_)))
                        (if (eq? _%key125688%_ _%k125717%_)
                            (let ()
                              (vector-set!
                               _%table125691%_
                               _%probe125710%_
                               _%key125688%_)
                              (vector-set!
                               _%table125691%_
                               (##fx+ _%probe125710%_ '1)
                               _%value125689%_))
                            (_%loop125707%_
                             (let ((_%next-probe125732%_
                                    (fx+ _%start125703%_
                                         _%i125712%_
                                         (fx* _%i125712%_ _%i125712%_))))
                               (##fxmodulo
                                _%next-probe125732%_
                                _%size125697%_))
                             (##fx+ _%i125712%_ '1)
                             _%deleted125714%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab125683%_ _%key125684%_ _%value125685%_)
        (if (##fx< (&raw-table-free _%tab125683%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125683%_))
                    '4))
            (__raw-table-rehash! _%tab125683%_)
            '#!void)
        (__immediate-table-set! _%tab125683%_ _%key125684%_ _%value125685%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab125653%_ _%key125654%_ _%value125655%_)
        (let ((_%lock125658%_ (&raw-table-lock _%tab125653%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125663%_ ((_%spin125666%_ '0))
              (if (##fx= (##vector-cas! _%lock125658%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125658%_ '1 (current-thread))
                  (if (##fx< _%spin125666%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125663%_ (##fx+ _%spin125666%_ '1)))
                      (let ((_%owner125672%_ (##vector-ref _%lock125658%_ '1)))
                        (if (eq? _%owner125672%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125672%_)
                                (let () (##thread-yield!) (_%again125663%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125678%_
                 (immediate-table-set!
                  _%tab125653%_
                  _%key125654%_
                  _%value125655%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125658%_ '1 '#f)
                (##vector-cas! _%lock125658%_ '0 '0 '1)))
            _%$r125678%_))))
    (define __immediate-table-update!
      (lambda (_%tab125604%_
               _%key125605%_
               _%immediate-table-update!125606%_
               _%default125607%_)
        (let ((_%table125609%_ (&raw-table-table _%tab125604%_))
              (_%seed125610%_ (&raw-table-seed _%tab125604%_)))
          (let* ((_%h125612%_
                  (fxxor (immediate-hash _%key125605%_) _%seed125610%_))
                 (_%size125615%_ (vector-length _%table125609%_))
                 (_%entries125618%_ (##fxquotient _%size125615%_ '2))
                 (_%start125621%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125612%_ _%entries125618%_)
                   '1)))
            (let _%loop125625%_ ((_%probe125628%_ _%start125621%_)
                                 (_%i125630%_ '1)
                                 (_%deleted125632%_ '#f))
              (let ((_%k125635%_ (vector-ref _%table125609%_ _%probe125628%_)))
                (if (eq? _%k125635%_ (macro-unused-obj))
                    (if _%deleted125632%_
                        (begin
                          (vector-set!
                           _%table125609%_
                           _%deleted125632%_
                           _%key125605%_)
                          (vector-set!
                           _%table125609%_
                           (##fx+ _%deleted125632%_ '1)
                           (_%immediate-table-update!125606%_
                            _%default125607%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab125604%_
                              (##fx+ (&raw-table-count _%tab125604%_) '1)))))
                        (begin
                          (vector-set!
                           _%table125609%_
                           _%probe125628%_
                           _%key125605%_)
                          (vector-set!
                           _%table125609%_
                           (##fx+ _%probe125628%_ '1)
                           (_%immediate-table-update!125606%_
                            _%default125607%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab125604%_
                              (##fx- (&raw-table-free _%tab125604%_) '1))
                             (&raw-table-count-set!
                              _%tab125604%_
                              (##fx+ (&raw-table-count _%tab125604%_) '1))))))
                    (if (eq? _%k125635%_ (macro-deleted-obj))
                        (_%loop125625%_
                         (let ((_%next-probe125642%_
                                (fx+ _%start125621%_
                                     _%i125630%_
                                     (fx* _%i125630%_ _%i125630%_))))
                           (##fxmodulo _%next-probe125642%_ _%size125615%_))
                         (##fx+ _%i125630%_ '1)
                         (let ((_%$e125645%_ _%deleted125632%_))
                           (if _%$e125645%_ _%$e125645%_ _%probe125628%_)))
                        (if (eq? _%key125605%_ _%k125635%_)
                            (let ()
                              (vector-set!
                               _%table125609%_
                               _%probe125628%_
                               _%key125605%_)
                              (vector-set!
                               _%table125609%_
                               (##fx+ _%probe125628%_ '1)
                               (_%immediate-table-update!125606%_
                                (vector-ref
                                 _%table125609%_
                                 (##fx+ _%probe125628%_ '1)))))
                            (_%loop125625%_
                             (let ((_%next-probe125650%_
                                    (fx+ _%start125621%_
                                         _%i125630%_
                                         (fx* _%i125630%_ _%i125630%_))))
                               (##fxmodulo
                                _%next-probe125650%_
                                _%size125615%_))
                             (##fx+ _%i125630%_ '1)
                             _%deleted125632%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab125599%_
               _%key125600%_
               _%immediate-table-update!125601%_
               _%default125602%_)
        (if (##fx< (&raw-table-free _%tab125599%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125599%_))
                    '4))
            (__raw-table-rehash! _%tab125599%_)
            '#!void)
        (__immediate-table-update!
         _%tab125599%_
         _%key125600%_
         _%immediate-table-update!125601%_
         _%default125602%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab125568%_
               _%key125569%_
               _%immediate-table-update!125570%_
               _%default125571%_)
        (let ((_%lock125574%_ (&raw-table-lock _%tab125568%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125579%_ ((_%spin125582%_ '0))
              (if (##fx= (##vector-cas! _%lock125574%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125574%_ '1 (current-thread))
                  (if (##fx< _%spin125582%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125579%_ (##fx+ _%spin125582%_ '1)))
                      (let ((_%owner125588%_ (##vector-ref _%lock125574%_ '1)))
                        (if (eq? _%owner125588%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125588%_)
                                (let () (##thread-yield!) (_%again125579%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125594%_
                 (_%immediate-table-update!125570%_
                  _%tab125568%_
                  _%key125569%_
                  _%immediate-table-update!125570%_
                  _%default125571%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125574%_ '1 '#f)
                (##vector-cas! _%lock125574%_ '0 '0 '1)))
            _%$r125594%_))))
    (define immediate-table-delete!
      (lambda (_%tab125525%_ _%key125526%_)
        (let ((_%table125528%_ (&raw-table-table _%tab125525%_))
              (_%seed125530%_ (&raw-table-seed _%tab125525%_)))
          (let* ((_%h125533%_
                  (fxxor (immediate-hash _%key125526%_) _%seed125530%_))
                 (_%size125536%_ (vector-length _%table125528%_))
                 (_%entries125539%_ (##fxquotient _%size125536%_ '2))
                 (_%start125542%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125533%_ _%entries125539%_)
                   '1)))
            (let _%loop125546%_ ((_%probe125549%_ _%start125542%_)
                                 (_%i125551%_ '1))
              (let ((_%k125554%_ (vector-ref _%table125528%_ _%probe125549%_)))
                (if (eq? _%k125554%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k125554%_ (macro-deleted-obj))
                        (_%loop125546%_
                         (let ((_%next-probe125559%_
                                (fx+ _%start125542%_
                                     _%i125551%_
                                     (fx* _%i125551%_ _%i125551%_))))
                           (##fxmodulo _%next-probe125559%_ _%size125536%_))
                         (##fx+ _%i125551%_ '1))
                        (if (eq? _%key125526%_ _%k125554%_)
                            (let ()
                              (vector-set!
                               _%table125528%_
                               _%probe125549%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table125528%_
                               (##fx+ _%probe125549%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab125525%_
                                  (##fx- (&raw-table-count _%tab125525%_)
                                         '1)))))
                            (_%loop125546%_
                             (let ((_%next-probe125565%_
                                    (fx+ _%start125542%_
                                         _%i125551%_
                                         (fx* _%i125551%_ _%i125551%_))))
                               (##fxmodulo
                                _%next-probe125565%_
                                _%size125536%_))
                             (##fx+ _%i125551%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab125495%_ _%key125497%_)
        (let ((_%lock125500%_ (&raw-table-lock _%tab125495%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125505%_ ((_%spin125508%_ '0))
              (if (##fx= (##vector-cas! _%lock125500%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125500%_ '1 (current-thread))
                  (if (##fx< _%spin125508%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125505%_ (##fx+ _%spin125508%_ '1)))
                      (let ((_%owner125514%_ (##vector-ref _%lock125500%_ '1)))
                        (if (eq? _%owner125514%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125514%_)
                                (let () (##thread-yield!) (_%again125505%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125520%_
                 (immediate-table-delete! _%tab125495%_ _%key125497%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125500%_ '1 '#f)
                (##vector-cas! _%lock125500%_ '0 '0 '1)))
            _%$r125520%_))))
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
      (lambda (_%tab125493%_)
        (##unchecked-structure-ref
         _%tab125493%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab125491%_)
        (##unchecked-structure-ref
         _%tab125491%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab125489%_)
        (##unchecked-structure-ref
         _%tab125489%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab125486%_ _%val125487%_)
        (##unchecked-structure-set!
         _%tab125486%_
         _%val125487%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab125483%_ _%val125484%_)
        (##unchecked-structure-set!
         _%tab125483%_
         _%val125484%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab125480%_ _%val125481%_)
        (##unchecked-structure-set!
         _%tab125480%_
         _%val125481%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint125444%_
               _%klass125445%_
               _%flags125446%_
               _%lock125447%_)
        (let ((_%gcht125449%_
               (__gc-table-new
                (if (fixnum? _%size-hint125444%_) _%size-hint125444%_ '16)
                _%flags125446%_)))
          (##structure _%klass125445%_ _%gcht125449%_ '#f _%lock125447%_))))
    (define make-gc-table__0
      (lambda (_%size-hint125454%_)
        (let* ((_%klass125456%_ __gc-table::t)
               (_%flags125458%_ '0)
               (_%lock125460%_ '#f))
          (make-gc-table__%
           _%size-hint125454%_
           _%klass125456%_
           _%flags125458%_
           _%lock125460%_))))
    (define make-gc-table__1
      (lambda (_%size-hint125462%_ _%klass125463%_)
        (let* ((_%flags125465%_ '0) (_%lock125467%_ '#f))
          (make-gc-table__%
           _%size-hint125462%_
           _%klass125463%_
           _%flags125465%_
           _%lock125467%_))))
    (define make-gc-table__2
      (lambda (_%size-hint125469%_ _%klass125470%_ _%flags125471%_)
        (let ((_%lock125473%_ '#f))
          (make-gc-table__%
           _%size-hint125469%_
           _%klass125470%_
           _%flags125471%_
           _%lock125473%_))))
    (define make-gc-table
      (lambda _g127888_
        (let ((_g127889_ (##length _g127888_)))
          (cond ((##fx= _g127889_ 1) (apply make-gc-table__0 _g127888_))
                ((##fx= _g127889_ 2) (apply make-gc-table__1 _g127888_))
                ((##fx= _g127889_ 3) (apply make-gc-table__2 _g127888_))
                ((##fx= _g127889_ 4) (apply make-gc-table__% _g127888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g127888_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint125421%_ _%klass125422%_ _%flags125423%_)
        (make-gc-table__%
         _%size-hint125421%_
         _%klass125422%_
         _%flags125423%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint125428%_)
        (let* ((_%klass125430%_ __gc-table::t) (_%flags125432%_ '0))
          (make-gc-table/lock__%
           _%size-hint125428%_
           _%klass125430%_
           _%flags125432%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint125434%_ _%klass125435%_)
        (let ((_%flags125437%_ '0))
          (make-gc-table/lock__%
           _%size-hint125434%_
           _%klass125435%_
           _%flags125437%_))))
    (define make-gc-table/lock
      (lambda _g127890_
        (let ((_g127891_ (##length _g127890_)))
          (cond ((##fx= _g127891_ 1) (apply make-gc-table/lock__0 _g127890_))
                ((##fx= _g127891_ 2) (apply make-gc-table/lock__1 _g127890_))
                ((##fx= _g127891_ 3) (apply make-gc-table/lock__% _g127890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g127890_))))))
    (define __gc-table-immediate
      (lambda (_%tab125412%_)
        (let ((_%$e125414%_ (&gc-table-immediate _%tab125412%_)))
          (if _%$e125414%_
              _%$e125414%_
              (let ((_%immediate125418%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab125412%_ _%immediate125418%_)
                _%immediate125418%_)))))
    (define __gc-table-new
      (lambda (_%size125402%_ _%flags125403%_)
        (let* ((_%flags125405%_
                (##fxand _%flags125403%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags125407%_
                (fxior _%flags125405%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht125409%_
                (##gc-hash-table-allocate
                 _%size125402%_
                 _%flags125407%_
                 __gc-table-loads)))
          _%gcht125409%_)))
    (define __gc-table-e
      (lambda (_%tab125397%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht125400%_ (&gc-table-gcht _%tab125397%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht125400%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht125400%_
              (begin
                (__gc-table-rehash! _%tab125397%_)
                (&gc-table-gcht _%tab125397%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab125388%_)
        (let* ((_%old-table125390%_ (&gc-table-gcht _%tab125388%_))
               (_%new-table125392%_
                (##gc-hash-table-resize! _%old-table125390%_ __gc-table-loads))
               (_%gcht125394%_
                (##gc-hash-table-rehash!
                 _%old-table125390%_
                 _%new-table125392%_)))
          (&gc-table-gcht-set! _%tab125388%_ _%gcht125394%_))))
    (define gc-table-ref
      (lambda (_%tab125372%_ _%key125373%_ _%default125374%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key125373%_)
            (let* ((_%gcht125378%_ (__gc-table-e _%tab125372%_))
                   (_%value125380%_
                    (##gc-hash-table-ref _%gcht125378%_ _%key125373%_)))
              (if (eq? _%value125380%_ (macro-unused-obj))
                  _%default125374%_
                  _%value125380%_))
            (let ((_%$e125382%_ (&gc-table-immediate _%tab125372%_)))
              (if _%$e125382%_
                  ((lambda (_%immediate125385%_)
                     (immediate-table-ref
                      _%immediate125385%_
                      _%key125373%_
                      _%default125374%_))
                   _%$e125382%_)
                  _%default125374%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab125346%_ _%key125347%_ _%default125348%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again125352%_ ((_%spin125355%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab125346%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab125346%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin125355%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again125352%_ (##fx+ _%spin125355%_ '1)))
                    (let ((_%owner125361%_
                           (##vector-ref (&gc-table-lock _%tab125346%_) '1)))
                      (if (eq? _%owner125361%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner125361%_)
                              (let () (##thread-yield!) (_%again125352%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r125367%_
               (gc-table-ref _%tab125346%_ _%key125347%_ _%default125348%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab125346%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab125346%_) '0 '0 '1)))
          _%$r125367%_)))
    (define gc-table-set!
      (lambda (_%tab125339%_ _%key125340%_ _%value125341%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key125340%_)
            (let ((_%gcht125344%_ (__gc-table-e _%tab125339%_)))
              (if (##gc-hash-table-set!
                   _%gcht125344%_
                   _%key125340%_
                   _%value125341%_)
                  (begin
                    (__gc-table-rehash! _%tab125339%_)
                    (gc-table-set!
                     _%tab125339%_
                     _%key125340%_
                     _%value125341%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab125339%_)
             _%key125340%_
             _%value125341%_))))
    (define gc-table-set/lock!
      (lambda (_%tab125313%_ _%key125314%_ _%value125315%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again125319%_ ((_%spin125322%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab125313%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab125313%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin125322%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again125319%_ (##fx+ _%spin125322%_ '1)))
                    (let ((_%owner125328%_
                           (##vector-ref (&gc-table-lock _%tab125313%_) '1)))
                      (if (eq? _%owner125328%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner125328%_)
                              (let () (##thread-yield!) (_%again125319%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r125334%_
               (gc-table-set! _%tab125313%_ _%key125314%_ _%value125315%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab125313%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab125313%_) '0 '0 '1)))
          _%$r125334%_)))
    (define gc-table-update!
      (lambda (_%tab125306%_ _%key125307%_ _%update125308%_ _%default125309%_)
        (if (##mem-allocated? _%key125307%_)
            (let ((_%value125311%_
                   (gc-table-ref
                    _%tab125306%_
                    _%key125307%_
                    _%default125309%_)))
              (gc-table-set!
               _%tab125306%_
               _%key125307%_
               (_%update125308%_ _%value125311%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab125306%_)
             _%key125307%_
             _%update125308%_
             _%default125309%_))))
    (define gc-table-update!/lock
      (lambda (_%tab125279%_ _%key125280%_ _%update125281%_ _%default125282%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again125286%_ ((_%spin125289%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab125279%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab125279%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin125289%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again125286%_ (##fx+ _%spin125289%_ '1)))
                    (let ((_%owner125295%_
                           (##vector-ref (&gc-table-lock _%tab125279%_) '1)))
                      (if (eq? _%owner125295%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner125295%_)
                              (let () (##thread-yield!) (_%again125286%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r125301%_
               (gc-table-update!
                _%tab125279%_
                _%key125280%_
                _%update125281%_
                _%default125282%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab125279%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab125279%_) '0 '0 '1)))
          _%$r125301%_)))
    (define gc-table-delete!
      (lambda (_%tab125267%_ _%key125268%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key125268%_)
            (let ((_%gcht125272%_ (__gc-table-e _%tab125267%_)))
              (if (##gc-hash-table-set!
                   _%gcht125272%_
                   _%key125268%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab125267%_)
                    (gc-table-delete! _%tab125267%_ _%key125268%_))
                  '#!void))
            (let ((_%$e125274%_ (&gc-table-immediate _%tab125267%_)))
              (if _%$e125274%_
                  ((lambda (_%immediate125277%_)
                     (immediate-table-delete!
                      _%immediate125277%_
                      _%key125268%_))
                   _%$e125274%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab125242%_ _%key125243%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again125247%_ ((_%spin125250%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab125242%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab125242%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin125250%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again125247%_ (##fx+ _%spin125250%_ '1)))
                    (let ((_%owner125256%_
                           (##vector-ref (&gc-table-lock _%tab125242%_) '1)))
                      (if (eq? _%owner125256%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner125256%_)
                              (let () (##thread-yield!) (_%again125247%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r125262%_ (gc-table-delete! _%tab125242%_ _%key125243%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab125242%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab125242%_) '0 '0 '1)))
          _%$r125262%_)))
    (define gc-table-for-each
      (lambda (_%tab125231%_ _%proc125232%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht125235%_ (__gc-table-e _%tab125231%_)))
            (##gc-hash-table-for-each _%proc125232%_ _%gcht125235%_))
          (let ((_%$e125237%_ (&gc-table-immediate _%tab125231%_)))
            (if _%$e125237%_
                ((lambda (_%immediate125240%_)
                   (raw-table-for-each _%immediate125240%_ _%proc125232%_))
                 _%$e125237%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab125206%_ _%proc125207%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again125211%_ ((_%spin125214%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab125206%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab125206%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin125214%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again125211%_ (##fx+ _%spin125214%_ '1)))
                    (let ((_%owner125220%_
                           (##vector-ref (&gc-table-lock _%tab125206%_) '1)))
                      (if (eq? _%owner125220%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner125220%_)
                              (let () (##thread-yield!) (_%again125211%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r125226%_ (gc-table-for-each _%tab125206%_ _%proc125207%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab125206%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab125206%_) '0 '0 '1)))
          _%$r125226%_)))
    (define gc-table-copy
      (lambda (_%tab125194%_)
        (let* ((_%gcht125196%_ (__gc-table-e _%tab125194%_))
               (_%new-table125198%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht125196%_)
                 (macro-gc-hash-table-flags _%gcht125196%_)))
               (_%result125200%_
                (##structure
                 (##structure-type _%tab125194%_)
                 _%new-table125198%_
                 '#f)))
          (gc-table-for-each
           _%tab125194%_
           (lambda (_%k125203%_ _%v125204%_)
             (gc-table-set! _%result125200%_ _%k125203%_ _%v125204%_)))
          _%result125200%_)))
    (define gc-table-copy/lock
      (lambda (_%tab125170%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again125174%_ ((_%spin125177%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab125170%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab125170%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin125177%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again125174%_ (##fx+ _%spin125177%_ '1)))
                    (let ((_%owner125183%_
                           (##vector-ref (&gc-table-lock _%tab125170%_) '1)))
                      (if (eq? _%owner125183%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner125183%_)
                              (let () (##thread-yield!) (_%again125174%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r125189%_ (gc-table-copy _%tab125170%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab125170%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab125170%_) '0 '0 '1)))
          _%$r125189%_)))
    (define gc-table-clear!
      (lambda (_%tab125163%_)
        (let* ((_%gcht125165%_ (__gc-table-e _%tab125163%_))
               (_%new-table125167%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht125165%_))))
          (&gc-table-gcht-set! _%tab125163%_ _%new-table125167%_)
          (&gc-table-immediate-set! _%tab125163%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab125139%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again125143%_ ((_%spin125146%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab125139%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab125139%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin125146%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again125143%_ (##fx+ _%spin125146%_ '1)))
                    (let ((_%owner125152%_
                           (##vector-ref (&gc-table-lock _%tab125139%_) '1)))
                      (if (eq? _%owner125152%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner125152%_)
                              (let () (##thread-yield!) (_%again125143%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r125158%_ (gc-table-clear! _%tab125139%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab125139%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab125139%_) '0 '0 '1)))
          _%$r125158%_)))
    (define gc-table-length
      (lambda (_%tab125131%_)
        (let ((_%gcht125133%_ (__gc-table-e _%tab125131%_)))
          (fx+ (macro-gc-hash-table-count _%gcht125133%_)
               (let ((_%$e125135%_ (&gc-table-immediate _%tab125131%_)))
                 (if _%$e125135%_ (&raw-table-count _%$e125135%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab125107%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again125111%_ ((_%spin125114%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab125107%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab125107%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin125114%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again125111%_ (##fx+ _%spin125114%_ '1)))
                    (let ((_%owner125120%_
                           (##vector-ref (&gc-table-lock _%tab125107%_) '1)))
                      (if (eq? _%owner125120%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner125120%_)
                              (let () (##thread-yield!) (_%again125111%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r125126%_ (gc-table-length _%tab125107%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab125107%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab125107%_) '0 '0 '1)))
          _%$r125126%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj125075%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125080%_ ((_%spin125083%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin125083%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125080%_ (##fx+ _%spin125083%_ '1)))
                      (let ((_%owner125089%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner125089%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125089%_)
                                (let () (##thread-yield!) (_%again125080%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125102%_
                 (let ((_%val125095%_
                        (gc-table-ref __object-eq-hash _%obj125075%_ '#f)))
                   (if _%val125095%_
                       _%val125095%_
                       (let ((_%h125097%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e125099%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e125099%_ _%$e125099%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj125075%_
                          _%h125097%_)
                         _%h125097%_)))))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! __object-eq-hash-lock '1 '#f)
                (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
            _%$r125102%_))))))
