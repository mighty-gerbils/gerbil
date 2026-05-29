(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1779967240)
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
      (lambda (_%obj119983%_)
        (if (##structure? _%obj119983%_)
            (##structure-instance-of? _%obj119983%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab119981%_)
        (##unchecked-structure-ref
         _%tab119981%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab119979%_)
        (##unchecked-structure-ref
         _%tab119979%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab119977%_)
        (##unchecked-structure-ref
         _%tab119977%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab119975%_)
        (##unchecked-structure-ref
         _%tab119975%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab119973%_)
        (##unchecked-structure-ref
         _%tab119973%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab119971%_)
        (##unchecked-structure-ref
         _%tab119971%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab119969%_)
        (##unchecked-structure-ref
         _%tab119969%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab119966%_ _%val119967%_)
        (##unchecked-structure-set!
         _%tab119966%_
         _%val119967%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab119963%_ _%val119964%_)
        (##unchecked-structure-set!
         _%tab119963%_
         _%val119964%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab119960%_ _%val119961%_)
        (##unchecked-structure-set!
         _%tab119960%_
         _%val119961%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab119957%_ _%val119958%_)
        (##unchecked-structure-set!
         _%tab119957%_
         _%val119958%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab119954%_ _%val119955%_)
        (##unchecked-structure-set!
         _%tab119954%_
         _%val119955%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab119951%_ _%val119952%_)
        (##unchecked-structure-set!
         _%tab119951%_
         _%val119952%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab119948%_ _%val119949%_)
        (##unchecked-structure-set!
         _%tab119948%_
         _%val119949%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint119946%_)
        (if (and (fixnum? _%size-hint119946%_) (##fx> _%size-hint119946%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint119946%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint119911%_
               _%hash119912%_
               _%test119913%_
               _%seed119914%_
               _%lock119915%_)
        (let* ((_%size119917%_ (raw-table-size-hint->size _%size-hint119911%_))
               (_%table119919%_
                (##make-vector _%size119917%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table119919%_
           '0
           (##fxquotient _%size119917%_ '2)
           _%hash119912%_
           _%test119913%_
           _%seed119914%_
           _%lock119915%_))))
    (define make-raw-table__0
      (lambda (_%size-hint119925%_ _%hash119926%_ _%test119927%_)
        (let* ((_%seed119929%_ '0) (_%lock119931%_ '#f))
          (make-raw-table__%
           _%size-hint119925%_
           _%hash119926%_
           _%test119927%_
           _%seed119929%_
           _%lock119931%_))))
    (define make-raw-table__1
      (lambda (_%size-hint119933%_
               _%hash119934%_
               _%test119935%_
               _%seed119936%_)
        (let ((_%lock119938%_ '#f))
          (make-raw-table__%
           _%size-hint119933%_
           _%hash119934%_
           _%test119935%_
           _%seed119936%_
           _%lock119938%_))))
    (define make-raw-table
      (lambda _g119984_
        (let ((_g119985_ (##length _g119984_)))
          (cond ((##fx= _g119985_ 3) (apply make-raw-table__0 _g119984_))
                ((##fx= _g119985_ 4) (apply make-raw-table__1 _g119984_))
                ((##fx= _g119985_ 5) (apply make-raw-table__% _g119984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g119984_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint119891%_
               _%hash119892%_
               _%test119893%_
               _%seed119894%_)
        (make-raw-table__%
         _%size-hint119891%_
         _%hash119892%_
         _%test119893%_
         _%seed119894%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint119899%_ _%hash119900%_ _%test119901%_)
        (let ((_%seed119903%_ '0))
          (make-raw-table/lock__%
           _%size-hint119899%_
           _%hash119900%_
           _%test119901%_
           _%seed119903%_))))
    (define make-raw-table/lock
      (lambda _g119986_
        (let ((_g119987_ (##length _g119986_)))
          (cond ((##fx= _g119987_ 3) (apply make-raw-table/lock__0 _g119986_))
                ((##fx= _g119987_ 4) (apply make-raw-table/lock__% _g119986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g119986_))))))
    (define raw-table-length
      (lambda (_%tab119888%_) (&raw-table-count _%tab119888%_)))
    (define raw-table-length/lock
      (lambda (_%tab119861%_)
        (let ((_%lock119863%_ (&raw-table-lock _%tab119861%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119868%_ ((_%spin119871%_ '0))
              (if (##fx= (##vector-cas! _%lock119863%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119863%_ '1 (current-thread))
                  (if (##fx< _%spin119871%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119868%_ (##fx+ _%spin119871%_ '1)))
                      (let ((_%owner119877%_ (##vector-ref _%lock119863%_ '1)))
                        (if (eq? _%owner119877%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119877%_)
                                (let () (##thread-yield!) (_%again119868%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119883%_ (&raw-table-count _%tab119861%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119863%_ '1 '#f)
                (##vector-cas! _%lock119863%_ '0 '0 '1)))
            _%$r119883%_))))
    (define raw-table-ref
      (lambda (_%tab119813%_ _%key119814%_ _%default119815%_)
        (let ((_%table119817%_ (&raw-table-table _%tab119813%_))
              (_%seed119818%_ (&raw-table-seed _%tab119813%_))
              (_%hash119819%_ (&raw-table-hash _%tab119813%_))
              (_%test119820%_ (&raw-table-test _%tab119813%_)))
          (let* ((_%h119822%_
                  (fxxor (_%hash119819%_ _%key119814%_) _%seed119818%_))
                 (_%size119825%_ (vector-length _%table119817%_))
                 (_%entries119828%_ (##fxquotient _%size119825%_ '2))
                 (_%start119831%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119822%_ _%entries119828%_)
                   '1)))
            (let _%loop119835%_ ((_%probe119838%_ _%start119831%_)
                                 (_%i119840%_ '1)
                                 (_%deleted119842%_ '#f))
              (let ((_%k119845%_ (vector-ref _%table119817%_ _%probe119838%_)))
                (if (eq? _%k119845%_ (macro-unused-obj))
                    _%default119815%_
                    (if (eq? _%k119845%_ (macro-deleted-obj))
                        (_%loop119835%_
                         (let ((_%next-probe119850%_
                                (fx+ _%start119831%_
                                     _%i119840%_
                                     (fx* _%i119840%_ _%i119840%_))))
                           (##fxmodulo _%next-probe119850%_ _%size119825%_))
                         (##fx+ _%i119840%_ '1)
                         (let ((_%$e119853%_ _%deleted119842%_))
                           (if _%$e119853%_ _%$e119853%_ _%probe119838%_)))
                        (if (_%test119820%_ _%key119814%_ _%k119845%_)
                            (vector-ref
                             _%table119817%_
                             (##fx+ _%probe119838%_ '1))
                            (_%loop119835%_
                             (let ((_%next-probe119858%_
                                    (fx+ _%start119831%_
                                         _%i119840%_
                                         (fx* _%i119840%_ _%i119840%_))))
                               (##fxmodulo
                                _%next-probe119858%_
                                _%size119825%_))
                             (##fx+ _%i119840%_ '1)
                             _%deleted119842%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab119784%_ _%key119785%_ _%default119786%_)
        (let ((_%lock119788%_ (&raw-table-lock _%tab119784%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119793%_ ((_%spin119796%_ '0))
              (if (##fx= (##vector-cas! _%lock119788%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119788%_ '1 (current-thread))
                  (if (##fx< _%spin119796%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119793%_ (##fx+ _%spin119796%_ '1)))
                      (let ((_%owner119802%_ (##vector-ref _%lock119788%_ '1)))
                        (if (eq? _%owner119802%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119802%_)
                                (let () (##thread-yield!) (_%again119793%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119808%_
                 (raw-table-ref
                  _%tab119784%_
                  _%key119785%_
                  _%default119786%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119788%_ '1 '#f)
                (##vector-cas! _%lock119788%_ '0 '0 '1)))
            _%$r119808%_))))
    (define raw-table-set!
      (lambda (_%tab119780%_ _%key119781%_ _%value119782%_)
        (if (##fx< (&raw-table-free _%tab119780%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119780%_))
                    '4))
            (__raw-table-rehash! _%tab119780%_)
            '#!void)
        (__raw-table-set! _%tab119780%_ _%key119781%_ _%value119782%_)))
    (define raw-table-set!/lock
      (lambda (_%tab119751%_ _%key119752%_ _%value119753%_)
        (let ((_%lock119755%_ (&raw-table-lock _%tab119751%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119760%_ ((_%spin119763%_ '0))
              (if (##fx= (##vector-cas! _%lock119755%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119755%_ '1 (current-thread))
                  (if (##fx< _%spin119763%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119760%_ (##fx+ _%spin119763%_ '1)))
                      (let ((_%owner119769%_ (##vector-ref _%lock119755%_ '1)))
                        (if (eq? _%owner119769%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119769%_)
                                (let () (##thread-yield!) (_%again119760%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119775%_
                 (raw-table-set! _%tab119751%_ _%key119752%_ _%value119753%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119755%_ '1 '#f)
                (##vector-cas! _%lock119755%_ '0 '0 '1)))
            _%$r119775%_))))
    (define raw-table-update!
      (lambda (_%tab119746%_ _%key119747%_ _%update119748%_ _%default119749%_)
        (if (##fx< (&raw-table-free _%tab119746%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119746%_))
                    '4))
            (__raw-table-rehash! _%tab119746%_)
            '#!void)
        (__raw-table-update!
         _%tab119746%_
         _%key119747%_
         _%update119748%_
         _%default119749%_)))
    (define raw-table-update!/lock
      (lambda (_%tab119716%_ _%key119717%_ _%update119718%_ _%default119719%_)
        (let ((_%lock119721%_ (&raw-table-lock _%tab119716%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119726%_ ((_%spin119729%_ '0))
              (if (##fx= (##vector-cas! _%lock119721%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119721%_ '1 (current-thread))
                  (if (##fx< _%spin119729%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119726%_ (##fx+ _%spin119729%_ '1)))
                      (let ((_%owner119735%_ (##vector-ref _%lock119721%_ '1)))
                        (if (eq? _%owner119735%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119735%_)
                                (let () (##thread-yield!) (_%again119726%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119741%_
                 (raw-table-update!
                  _%tab119716%_
                  _%key119717%_
                  _%update119718%_
                  _%default119719%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119721%_ '1 '#f)
                (##vector-cas! _%lock119721%_ '0 '0 '1)))
            _%$r119741%_))))
    (define raw-table-delete!
      (lambda (_%tab119673%_ _%key119674%_)
        (let ((_%table119676%_ (&raw-table-table _%tab119673%_))
              (_%seed119677%_ (&raw-table-seed _%tab119673%_))
              (_%hash119678%_ (&raw-table-hash _%tab119673%_))
              (_%test119679%_ (&raw-table-test _%tab119673%_)))
          (let* ((_%h119681%_
                  (fxxor (_%hash119678%_ _%key119674%_) _%seed119677%_))
                 (_%size119684%_ (vector-length _%table119676%_))
                 (_%entries119687%_ (##fxquotient _%size119684%_ '2))
                 (_%start119690%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119681%_ _%entries119687%_)
                   '1)))
            (let _%loop119694%_ ((_%probe119697%_ _%start119690%_)
                                 (_%i119699%_ '1))
              (let ((_%k119702%_ (vector-ref _%table119676%_ _%probe119697%_)))
                (if (eq? _%k119702%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119702%_ (macro-deleted-obj))
                        (_%loop119694%_
                         (let ((_%next-probe119707%_
                                (fx+ _%start119690%_
                                     _%i119699%_
                                     (fx* _%i119699%_ _%i119699%_))))
                           (##fxmodulo _%next-probe119707%_ _%size119684%_))
                         (##fx+ _%i119699%_ '1))
                        (if (_%test119679%_ _%key119674%_ _%k119702%_)
                            (let ()
                              (vector-set!
                               _%table119676%_
                               _%probe119697%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119676%_
                               (##fx+ _%probe119697%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab119673%_
                               (##fx- (&raw-table-count _%tab119673%_) '1)))
                            (_%loop119694%_
                             (let ((_%next-probe119713%_
                                    (fx+ _%start119690%_
                                         _%i119699%_
                                         (fx* _%i119699%_ _%i119699%_))))
                               (##fxmodulo
                                _%next-probe119713%_
                                _%size119684%_))
                             (##fx+ _%i119699%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab119645%_ _%key119646%_)
        (let ((_%lock119648%_ (&raw-table-lock _%tab119645%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119653%_ ((_%spin119656%_ '0))
              (if (##fx= (##vector-cas! _%lock119648%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119648%_ '1 (current-thread))
                  (if (##fx< _%spin119656%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119653%_ (##fx+ _%spin119656%_ '1)))
                      (let ((_%owner119662%_ (##vector-ref _%lock119648%_ '1)))
                        (if (eq? _%owner119662%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119662%_)
                                (let () (##thread-yield!) (_%again119653%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119668%_ (raw-table-delete! _%tab119645%_ _%key119646%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119648%_ '1 '#f)
                (##vector-cas! _%lock119648%_ '0 '0 '1)))
            _%$r119668%_))))
    (define raw-table-for-each
      (lambda (_%tab119629%_ _%proc119630%_)
        (let* ((_%table119632%_ (&raw-table-table _%tab119629%_))
               (_%size119634%_ (vector-length _%table119632%_)))
          (let _%loop119637%_ ((_%i119639%_ '0))
            (if (##fx< _%i119639%_ _%size119634%_)
                (begin
                  (let ((_%key119641%_
                         (vector-ref _%table119632%_ _%i119639%_)))
                    (if (if (eq? _%key119641%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key119641%_ (macro-deleted-obj))))
                        (let ((_%value119643%_
                               (vector-ref
                                _%table119632%_
                                (##fx+ _%i119639%_ '1))))
                          (_%proc119630%_ _%key119641%_ _%value119643%_))
                        '#!void))
                  (_%loop119637%_ (##fx+ _%i119639%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab119601%_ _%proc119602%_)
        (let ((_%lock119604%_ (&raw-table-lock _%tab119601%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119609%_ ((_%spin119612%_ '0))
              (if (##fx= (##vector-cas! _%lock119604%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119604%_ '1 (current-thread))
                  (if (##fx< _%spin119612%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119609%_ (##fx+ _%spin119612%_ '1)))
                      (let ((_%owner119618%_ (##vector-ref _%lock119604%_ '1)))
                        (if (eq? _%owner119618%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119618%_)
                                (let () (##thread-yield!) (_%again119609%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119624%_
                 (raw-table-for-each _%tab119601%_ _%proc119602%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119604%_ '1 '#f)
                (##vector-cas! _%lock119604%_ '0 '0 '1)))
            _%$r119624%_))))
    (define raw-table-copy
      (lambda (_%tab119597%_)
        (let ((_%new-tab119599%_ (##structure-copy _%tab119597%_)))
          (&raw-table-table-set!
           _%new-tab119599%_
           (vector-copy (&raw-table-table _%tab119597%_)))
          _%new-tab119599%_)))
    (define raw-table-copy/lock
      (lambda (_%tab119570%_)
        (let ((_%lock119572%_ (&raw-table-lock _%tab119570%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119577%_ ((_%spin119580%_ '0))
              (if (##fx= (##vector-cas! _%lock119572%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119572%_ '1 (current-thread))
                  (if (##fx< _%spin119580%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119577%_ (##fx+ _%spin119580%_ '1)))
                      (let ((_%owner119586%_ (##vector-ref _%lock119572%_ '1)))
                        (if (eq? _%owner119586%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119586%_)
                                (let () (##thread-yield!) (_%again119577%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119592%_ (raw-table-copy _%tab119570%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119572%_ '1 '#f)
                (##vector-cas! _%lock119572%_ '0 '0 '1)))
            _%$r119592%_))))
    (define raw-table-clear!
      (lambda (_%tab119568%_)
        (vector-fill! (&raw-table-table _%tab119568%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab119568%_ '0)
        (&raw-table-free-set!
         _%tab119568%_
         (##fxquotient (vector-length (&raw-table-table _%tab119568%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab119541%_)
        (let ((_%lock119543%_ (&raw-table-lock _%tab119541%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119548%_ ((_%spin119551%_ '0))
              (if (##fx= (##vector-cas! _%lock119543%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119543%_ '1 (current-thread))
                  (if (##fx< _%spin119551%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119548%_ (##fx+ _%spin119551%_ '1)))
                      (let ((_%owner119557%_ (##vector-ref _%lock119543%_ '1)))
                        (if (eq? _%owner119557%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119557%_)
                                (let () (##thread-yield!) (_%again119548%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119563%_ (raw-table-clear! _%tab119541%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119543%_ '1 '#f)
                (##vector-cas! _%lock119543%_ '0 '0 '1)))
            _%$r119563%_))))
    (define __raw-table-set!
      (lambda (_%tab119491%_ _%key119492%_ _%value119493%_)
        (let ((_%table119495%_ (&raw-table-table _%tab119491%_))
              (_%seed119496%_ (&raw-table-seed _%tab119491%_))
              (_%hash119497%_ (&raw-table-hash _%tab119491%_))
              (_%test119498%_ (&raw-table-test _%tab119491%_)))
          (let* ((_%h119500%_
                  (fxxor (_%hash119497%_ _%key119492%_) _%seed119496%_))
                 (_%size119503%_ (vector-length _%table119495%_))
                 (_%entries119506%_ (##fxquotient _%size119503%_ '2))
                 (_%start119509%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119500%_ _%entries119506%_)
                   '1)))
            (let _%loop119513%_ ((_%probe119516%_ _%start119509%_)
                                 (_%i119518%_ '1)
                                 (_%deleted119520%_ '#f))
              (let ((_%k119523%_ (vector-ref _%table119495%_ _%probe119516%_)))
                (if (eq? _%k119523%_ (macro-unused-obj))
                    (if _%deleted119520%_
                        (begin
                          (vector-set!
                           _%table119495%_
                           _%deleted119520%_
                           _%key119492%_)
                          (vector-set!
                           _%table119495%_
                           (##fx+ _%deleted119520%_ '1)
                           _%value119493%_)
                          (&raw-table-count-set!
                           _%tab119491%_
                           (##fx+ (&raw-table-count _%tab119491%_) '1)))
                        (begin
                          (vector-set!
                           _%table119495%_
                           _%probe119516%_
                           _%key119492%_)
                          (vector-set!
                           _%table119495%_
                           (##fx+ _%probe119516%_ '1)
                           _%value119493%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab119491%_
                             (##fx- (&raw-table-free _%tab119491%_) '1))
                            (&raw-table-count-set!
                             _%tab119491%_
                             (##fx+ (&raw-table-count _%tab119491%_) '1)))))
                    (if (eq? _%k119523%_ (macro-deleted-obj))
                        (_%loop119513%_
                         (let ((_%next-probe119530%_
                                (fx+ _%start119509%_
                                     _%i119518%_
                                     (fx* _%i119518%_ _%i119518%_))))
                           (##fxmodulo _%next-probe119530%_ _%size119503%_))
                         (##fx+ _%i119518%_ '1)
                         (let ((_%$e119533%_ _%deleted119520%_))
                           (if _%$e119533%_ _%$e119533%_ _%probe119516%_)))
                        (if (_%test119498%_ _%key119492%_ _%k119523%_)
                            (let ()
                              (vector-set!
                               _%table119495%_
                               _%probe119516%_
                               _%key119492%_)
                              (vector-set!
                               _%table119495%_
                               (##fx+ _%probe119516%_ '1)
                               _%value119493%_))
                            (_%loop119513%_
                             (let ((_%next-probe119538%_
                                    (fx+ _%start119509%_
                                         _%i119518%_
                                         (fx* _%i119518%_ _%i119518%_))))
                               (##fxmodulo
                                _%next-probe119538%_
                                _%size119503%_))
                             (##fx+ _%i119518%_ '1)
                             _%deleted119520%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab119440%_ _%key119441%_ _%update119442%_ _%default119443%_)
        (let ((_%table119445%_ (&raw-table-table _%tab119440%_))
              (_%seed119446%_ (&raw-table-seed _%tab119440%_))
              (_%hash119447%_ (&raw-table-hash _%tab119440%_))
              (_%test119448%_ (&raw-table-test _%tab119440%_)))
          (let* ((_%h119450%_
                  (fxxor (_%hash119447%_ _%key119441%_) _%seed119446%_))
                 (_%size119453%_ (vector-length _%table119445%_))
                 (_%entries119456%_ (##fxquotient _%size119453%_ '2))
                 (_%start119459%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119450%_ _%entries119456%_)
                   '1)))
            (let _%loop119463%_ ((_%probe119466%_ _%start119459%_)
                                 (_%i119468%_ '1)
                                 (_%deleted119470%_ '#f))
              (let ((_%k119473%_ (vector-ref _%table119445%_ _%probe119466%_)))
                (if (eq? _%k119473%_ (macro-unused-obj))
                    (if _%deleted119470%_
                        (begin
                          (vector-set!
                           _%table119445%_
                           _%deleted119470%_
                           _%key119441%_)
                          (vector-set!
                           _%table119445%_
                           (##fx+ _%deleted119470%_ '1)
                           (_%update119442%_ _%default119443%_))
                          (&raw-table-count-set!
                           _%tab119440%_
                           (##fx+ (&raw-table-count _%tab119440%_) '1)))
                        (begin
                          (vector-set!
                           _%table119445%_
                           _%probe119466%_
                           _%key119441%_)
                          (vector-set!
                           _%table119445%_
                           (##fx+ _%probe119466%_ '1)
                           (_%update119442%_ _%default119443%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab119440%_
                             (##fx- (&raw-table-free _%tab119440%_) '1))
                            (&raw-table-count-set!
                             _%tab119440%_
                             (##fx+ (&raw-table-count _%tab119440%_) '1)))))
                    (if (eq? _%k119473%_ (macro-deleted-obj))
                        (_%loop119463%_
                         (let ((_%next-probe119480%_
                                (fx+ _%start119459%_
                                     _%i119468%_
                                     (fx* _%i119468%_ _%i119468%_))))
                           (##fxmodulo _%next-probe119480%_ _%size119453%_))
                         (##fx+ _%i119468%_ '1)
                         (let ((_%$e119483%_ _%deleted119470%_))
                           (if _%$e119483%_ _%$e119483%_ _%probe119466%_)))
                        (if (_%test119448%_ _%key119441%_ _%k119473%_)
                            (let ()
                              (vector-set!
                               _%table119445%_
                               _%probe119466%_
                               _%key119441%_)
                              (vector-set!
                               _%table119445%_
                               (##fx+ _%probe119466%_ '1)
                               (_%update119442%_
                                (vector-ref
                                 _%table119445%_
                                 (##fx+ _%probe119466%_ '1)))))
                            (_%loop119463%_
                             (let ((_%next-probe119488%_
                                    (fx+ _%start119459%_
                                         _%i119468%_
                                         (fx* _%i119468%_ _%i119468%_))))
                               (##fxmodulo
                                _%next-probe119488%_
                                _%size119453%_))
                             (##fx+ _%i119468%_ '1)
                             _%deleted119470%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab119421%_)
        (let* ((_%old-table119423%_ (&raw-table-table _%tab119421%_))
               (_%old-size119425%_ (vector-length _%old-table119423%_))
               (_%new-size119427%_
                (if (##fx< (&raw-table-count _%tab119421%_)
                           (##fxquotient _%old-size119425%_ '4))
                    (vector-length _%old-table119423%_)
                    (##fx* '2 (vector-length _%old-table119423%_))))
               (_%new-table119429%_
                (##make-vector _%new-size119427%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab119421%_ _%new-table119429%_)
          (&raw-table-count-set! _%tab119421%_ '0)
          (&raw-table-free-set!
           _%tab119421%_
           (##fxquotient _%new-size119427%_ '2))
          (let _%lp119432%_ ((_%i119434%_ '0))
            (if (##fx< _%i119434%_ _%old-size119425%_)
                (begin
                  (let ((_%key119436%_
                         (vector-ref _%old-table119423%_ _%i119434%_)))
                    (if (if (eq? _%key119436%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key119436%_ (macro-deleted-obj))))
                        (let ((_%value119438%_
                               (vector-ref
                                _%old-table119423%_
                                (##fx+ _%i119434%_ '1))))
                          (__raw-table-set!
                           _%tab119421%_
                           _%key119436%_
                           _%value119438%_))
                        '#!void))
                  (_%lp119432%_ (##fx+ _%i119434%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj119413%_)
        (let ((_%t119415%_ (##type _%obj119413%_)))
          (if (##fx= (##fxand _%t119415%_ '1) '0)
              (fxand (##type-cast _%obj119413%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj119413%_)
                  (##symbol-hash _%obj119413%_)
                  (if (procedure? _%obj119413%_)
                      (procedure-hash _%obj119413%_)
                      (fxand (__object->eq-hash _%obj119413%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj119409%_)
        (let ((_%h119411%_
               (if (##closure? _%obj119409%_)
                   (__object->eq-hash _%obj119409%_)
                   (##type-cast _%obj119409%_ '0))))
          (fxand _%h119411%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj119407%_) (__object->eq-hash _%obj119407%_)))
    (define eqv-hash
      (lambda (_%obj119397%_)
        (letrec ((_%combine119399%_
                  (lambda (_%a119404%_ _%b119405%_)
                    (fxand (##fx* (##fx+ _%a119404%_
                                         (fxarithmetic-shift-left
                                          _%b119405%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash119400%_
                  (lambda (_%obj119402%_)
                    (macro-number-dispatch
                     _%obj119402%_
                     (eq-hash _%obj119402%_)
                     (fxand _%obj119402%_ (macro-max-fixnum32))
                     (modulo _%obj119402%_ '331804481)
                     (_%combine119399%_
                      (_%hash119400%_ (macro-ratnum-numerator _%obj119402%_))
                      (_%hash119400%_
                       (macro-ratnum-denominator _%obj119402%_)))
                     (_%combine119399%_
                      (##u16vector-ref _%obj119402%_ '0)
                      (_%combine119399%_
                       (##u16vector-ref _%obj119402%_ '1)
                       (_%combine119399%_
                        (##u16vector-ref _%obj119402%_ '2)
                        (##u16vector-ref _%obj119402%_ '3))))
                     (_%combine119399%_
                      (_%hash119400%_ (macro-cpxnum-real _%obj119402%_))
                      (_%hash119400%_ (macro-cpxnum-imag _%obj119402%_)))))))
          (_%hash119400%_ _%obj119397%_))))
    (define symbolic?
      (lambda (_%obj119392%_)
        (let ((_%$e119394%_ (symbol? _%obj119392%_)))
          (if _%$e119394%_ _%$e119394%_ (keyword? _%obj119392%_)))))
    (define symbolic-hash
      (lambda (_%obj119390%_) (##symbol-hash _%obj119390%_)))
    (define string-hash
      (lambda (_%obj119388%_) (##string=?-hash _%obj119388%_)))
    (define immediate-hash
      (lambda (_%obj119386%_) (##type-cast _%obj119386%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint119368%_ _%seed119369%_)
        (make-raw-table__1 _%size-hint119368%_ eq-hash eq? _%seed119369%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint119375%_ '#f) (_%seed119377%_ '0))
          (make-eq-table__% _%size-hint119375%_ _%seed119377%_))))
    (define make-eq-table__1
      (lambda (_%size-hint119379%_)
        (let ((_%seed119381%_ '0))
          (make-eq-table__% _%size-hint119379%_ _%seed119381%_))))
    (define make-eq-table
      (lambda _g119988_
        (let ((_g119989_ (##length _g119988_)))
          (cond ((##fx= _g119989_ 0) (apply make-eq-table__0 _g119988_))
                ((##fx= _g119989_ 1) (apply make-eq-table__1 _g119988_))
                ((##fx= _g119989_ 2) (apply make-eq-table__% _g119988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g119988_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint119348%_ _%seed119350%_)
        (make-raw-table/lock__%
         _%size-hint119348%_
         eq-hash
         eq?
         _%seed119350%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint119356%_ '#f) (_%seed119358%_ '0))
          (make-eq-table/lock__% _%size-hint119356%_ _%seed119358%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint119360%_)
        (let ((_%seed119362%_ '0))
          (make-eq-table/lock__% _%size-hint119360%_ _%seed119362%_))))
    (define make-eq-table/lock
      (lambda _g119990_
        (let ((_g119991_ (##length _g119990_)))
          (cond ((##fx= _g119991_ 0) (apply make-eq-table/lock__0 _g119990_))
                ((##fx= _g119991_ 1) (apply make-eq-table/lock__1 _g119990_))
                ((##fx= _g119991_ 2) (apply make-eq-table/lock__% _g119990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g119990_))))))
    (define eq-table-ref
      (lambda (_%tab119301%_ _%key119302%_ _%default119303%_)
        (let ((_%table119305%_ (&raw-table-table _%tab119301%_))
              (_%seed119306%_ (&raw-table-seed _%tab119301%_)))
          (let* ((_%h119308%_ (fxxor (eq-hash _%key119302%_) _%seed119306%_))
                 (_%size119311%_ (vector-length _%table119305%_))
                 (_%entries119314%_ (##fxquotient _%size119311%_ '2))
                 (_%start119317%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119308%_ _%entries119314%_)
                   '1)))
            (let _%loop119321%_ ((_%probe119324%_ _%start119317%_)
                                 (_%i119326%_ '1)
                                 (_%deleted119328%_ '#f))
              (let ((_%k119331%_ (vector-ref _%table119305%_ _%probe119324%_)))
                (if (eq? _%k119331%_ (macro-unused-obj))
                    _%default119303%_
                    (if (eq? _%k119331%_ (macro-deleted-obj))
                        (_%loop119321%_
                         (let ((_%next-probe119336%_
                                (fx+ _%start119317%_
                                     _%i119326%_
                                     (fx* _%i119326%_ _%i119326%_))))
                           (##fxmodulo _%next-probe119336%_ _%size119311%_))
                         (##fx+ _%i119326%_ '1)
                         (let ((_%$e119339%_ _%deleted119328%_))
                           (if _%$e119339%_ _%$e119339%_ _%probe119324%_)))
                        (if (eq? _%key119302%_ _%k119331%_)
                            (vector-ref
                             _%table119305%_
                             (##fx+ _%probe119324%_ '1))
                            (_%loop119321%_
                             (let ((_%next-probe119344%_
                                    (fx+ _%start119317%_
                                         _%i119326%_
                                         (fx* _%i119326%_ _%i119326%_))))
                               (##fxmodulo
                                _%next-probe119344%_
                                _%size119311%_))
                             (##fx+ _%i119326%_ '1)
                             _%deleted119328%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab119272%_ _%key119273%_ _%default119274%_)
        (let ((_%lock119276%_ (&raw-table-lock _%tab119272%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119281%_ ((_%spin119284%_ '0))
              (if (##fx= (##vector-cas! _%lock119276%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119276%_ '1 (current-thread))
                  (if (##fx< _%spin119284%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119281%_ (##fx+ _%spin119284%_ '1)))
                      (let ((_%owner119290%_ (##vector-ref _%lock119276%_ '1)))
                        (if (eq? _%owner119290%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119290%_)
                                (let () (##thread-yield!) (_%again119281%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119296%_
                 (eq-table-ref _%tab119272%_ _%key119273%_ _%default119274%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119276%_ '1 '#f)
                (##vector-cas! _%lock119276%_ '0 '0 '1)))
            _%$r119296%_))))
    (define __eq-table-set!
      (lambda (_%tab119224%_ _%key119225%_ _%value119226%_)
        (let ((_%table119228%_ (&raw-table-table _%tab119224%_))
              (_%seed119229%_ (&raw-table-seed _%tab119224%_)))
          (let* ((_%h119231%_ (fxxor (eq-hash _%key119225%_) _%seed119229%_))
                 (_%size119234%_ (vector-length _%table119228%_))
                 (_%entries119237%_ (##fxquotient _%size119234%_ '2))
                 (_%start119240%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119231%_ _%entries119237%_)
                   '1)))
            (let _%loop119244%_ ((_%probe119247%_ _%start119240%_)
                                 (_%i119249%_ '1)
                                 (_%deleted119251%_ '#f))
              (let ((_%k119254%_ (vector-ref _%table119228%_ _%probe119247%_)))
                (if (eq? _%k119254%_ (macro-unused-obj))
                    (if _%deleted119251%_
                        (begin
                          (vector-set!
                           _%table119228%_
                           _%deleted119251%_
                           _%key119225%_)
                          (vector-set!
                           _%table119228%_
                           (##fx+ _%deleted119251%_ '1)
                           _%value119226%_)
                          (&raw-table-count-set!
                           _%tab119224%_
                           (##fx+ (&raw-table-count _%tab119224%_) '1)))
                        (begin
                          (vector-set!
                           _%table119228%_
                           _%probe119247%_
                           _%key119225%_)
                          (vector-set!
                           _%table119228%_
                           (##fx+ _%probe119247%_ '1)
                           _%value119226%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab119224%_
                             (##fx- (&raw-table-free _%tab119224%_) '1))
                            (&raw-table-count-set!
                             _%tab119224%_
                             (##fx+ (&raw-table-count _%tab119224%_) '1)))))
                    (if (eq? _%k119254%_ (macro-deleted-obj))
                        (_%loop119244%_
                         (let ((_%next-probe119261%_
                                (fx+ _%start119240%_
                                     _%i119249%_
                                     (fx* _%i119249%_ _%i119249%_))))
                           (##fxmodulo _%next-probe119261%_ _%size119234%_))
                         (##fx+ _%i119249%_ '1)
                         (let ((_%$e119264%_ _%deleted119251%_))
                           (if _%$e119264%_ _%$e119264%_ _%probe119247%_)))
                        (if (eq? _%key119225%_ _%k119254%_)
                            (let ()
                              (vector-set!
                               _%table119228%_
                               _%probe119247%_
                               _%key119225%_)
                              (vector-set!
                               _%table119228%_
                               (##fx+ _%probe119247%_ '1)
                               _%value119226%_))
                            (_%loop119244%_
                             (let ((_%next-probe119269%_
                                    (fx+ _%start119240%_
                                         _%i119249%_
                                         (fx* _%i119249%_ _%i119249%_))))
                               (##fxmodulo
                                _%next-probe119269%_
                                _%size119234%_))
                             (##fx+ _%i119249%_ '1)
                             _%deleted119251%_))))))))))
    (define eq-table-set!
      (lambda (_%tab119220%_ _%key119221%_ _%value119222%_)
        (if (##fx< (&raw-table-free _%tab119220%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119220%_))
                    '4))
            (__raw-table-rehash! _%tab119220%_)
            '#!void)
        (__eq-table-set! _%tab119220%_ _%key119221%_ _%value119222%_)))
    (define eq-table-set!/lock
      (lambda (_%tab119190%_ _%key119191%_ _%value119192%_)
        (let ((_%lock119195%_ (&raw-table-lock _%tab119190%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119200%_ ((_%spin119203%_ '0))
              (if (##fx= (##vector-cas! _%lock119195%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119195%_ '1 (current-thread))
                  (if (##fx< _%spin119203%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119200%_ (##fx+ _%spin119203%_ '1)))
                      (let ((_%owner119209%_ (##vector-ref _%lock119195%_ '1)))
                        (if (eq? _%owner119209%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119209%_)
                                (let () (##thread-yield!) (_%again119200%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119215%_
                 (eq-table-set! _%tab119190%_ _%key119191%_ _%value119192%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119195%_ '1 '#f)
                (##vector-cas! _%lock119195%_ '0 '0 '1)))
            _%$r119215%_))))
    (define __eq-table-update!
      (lambda (_%tab119141%_
               _%key119142%_
               _%eq-table-update!119143%_
               _%default119144%_)
        (let ((_%table119146%_ (&raw-table-table _%tab119141%_))
              (_%seed119147%_ (&raw-table-seed _%tab119141%_)))
          (let* ((_%h119149%_ (fxxor (eq-hash _%key119142%_) _%seed119147%_))
                 (_%size119152%_ (vector-length _%table119146%_))
                 (_%entries119155%_ (##fxquotient _%size119152%_ '2))
                 (_%start119158%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119149%_ _%entries119155%_)
                   '1)))
            (let _%loop119162%_ ((_%probe119165%_ _%start119158%_)
                                 (_%i119167%_ '1)
                                 (_%deleted119169%_ '#f))
              (let ((_%k119172%_ (vector-ref _%table119146%_ _%probe119165%_)))
                (if (eq? _%k119172%_ (macro-unused-obj))
                    (if _%deleted119169%_
                        (begin
                          (vector-set!
                           _%table119146%_
                           _%deleted119169%_
                           _%key119142%_)
                          (vector-set!
                           _%table119146%_
                           (##fx+ _%deleted119169%_ '1)
                           (_%eq-table-update!119143%_ _%default119144%_))
                          (&raw-table-count-set!
                           _%tab119141%_
                           (##fx+ (&raw-table-count _%tab119141%_) '1)))
                        (begin
                          (vector-set!
                           _%table119146%_
                           _%probe119165%_
                           _%key119142%_)
                          (vector-set!
                           _%table119146%_
                           (##fx+ _%probe119165%_ '1)
                           (_%eq-table-update!119143%_ _%default119144%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab119141%_
                             (##fx- (&raw-table-free _%tab119141%_) '1))
                            (&raw-table-count-set!
                             _%tab119141%_
                             (##fx+ (&raw-table-count _%tab119141%_) '1)))))
                    (if (eq? _%k119172%_ (macro-deleted-obj))
                        (_%loop119162%_
                         (let ((_%next-probe119179%_
                                (fx+ _%start119158%_
                                     _%i119167%_
                                     (fx* _%i119167%_ _%i119167%_))))
                           (##fxmodulo _%next-probe119179%_ _%size119152%_))
                         (##fx+ _%i119167%_ '1)
                         (let ((_%$e119182%_ _%deleted119169%_))
                           (if _%$e119182%_ _%$e119182%_ _%probe119165%_)))
                        (if (eq? _%key119142%_ _%k119172%_)
                            (let ()
                              (vector-set!
                               _%table119146%_
                               _%probe119165%_
                               _%key119142%_)
                              (vector-set!
                               _%table119146%_
                               (##fx+ _%probe119165%_ '1)
                               (_%eq-table-update!119143%_
                                (vector-ref
                                 _%table119146%_
                                 (##fx+ _%probe119165%_ '1)))))
                            (_%loop119162%_
                             (let ((_%next-probe119187%_
                                    (fx+ _%start119158%_
                                         _%i119167%_
                                         (fx* _%i119167%_ _%i119167%_))))
                               (##fxmodulo
                                _%next-probe119187%_
                                _%size119152%_))
                             (##fx+ _%i119167%_ '1)
                             _%deleted119169%_))))))))))
    (define eq-table-update!
      (lambda (_%tab119136%_
               _%key119137%_
               _%eq-table-update!119138%_
               _%default119139%_)
        (if (##fx< (&raw-table-free _%tab119136%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119136%_))
                    '4))
            (__raw-table-rehash! _%tab119136%_)
            '#!void)
        (__eq-table-update!
         _%tab119136%_
         _%key119137%_
         _%eq-table-update!119138%_
         _%default119139%_)))
    (define eq-table-update!/lock
      (lambda (_%tab119105%_
               _%key119106%_
               _%eq-table-update!119107%_
               _%default119108%_)
        (let ((_%lock119111%_ (&raw-table-lock _%tab119105%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119116%_ ((_%spin119119%_ '0))
              (if (##fx= (##vector-cas! _%lock119111%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119111%_ '1 (current-thread))
                  (if (##fx< _%spin119119%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119116%_ (##fx+ _%spin119119%_ '1)))
                      (let ((_%owner119125%_ (##vector-ref _%lock119111%_ '1)))
                        (if (eq? _%owner119125%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119125%_)
                                (let () (##thread-yield!) (_%again119116%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119131%_
                 (_%eq-table-update!119107%_
                  _%tab119105%_
                  _%key119106%_
                  _%eq-table-update!119107%_
                  _%default119108%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119111%_ '1 '#f)
                (##vector-cas! _%lock119111%_ '0 '0 '1)))
            _%$r119131%_))))
    (define eq-table-delete!
      (lambda (_%tab119062%_ _%key119063%_)
        (let ((_%table119065%_ (&raw-table-table _%tab119062%_))
              (_%seed119067%_ (&raw-table-seed _%tab119062%_)))
          (let* ((_%h119070%_ (fxxor (eq-hash _%key119063%_) _%seed119067%_))
                 (_%size119073%_ (vector-length _%table119065%_))
                 (_%entries119076%_ (##fxquotient _%size119073%_ '2))
                 (_%start119079%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119070%_ _%entries119076%_)
                   '1)))
            (let _%loop119083%_ ((_%probe119086%_ _%start119079%_)
                                 (_%i119088%_ '1))
              (let ((_%k119091%_ (vector-ref _%table119065%_ _%probe119086%_)))
                (if (eq? _%k119091%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119091%_ (macro-deleted-obj))
                        (_%loop119083%_
                         (let ((_%next-probe119096%_
                                (fx+ _%start119079%_
                                     _%i119088%_
                                     (fx* _%i119088%_ _%i119088%_))))
                           (##fxmodulo _%next-probe119096%_ _%size119073%_))
                         (##fx+ _%i119088%_ '1))
                        (if (eq? _%key119063%_ _%k119091%_)
                            (let ()
                              (vector-set!
                               _%table119065%_
                               _%probe119086%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119065%_
                               (##fx+ _%probe119086%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab119062%_
                               (##fx- (&raw-table-count _%tab119062%_) '1)))
                            (_%loop119083%_
                             (let ((_%next-probe119102%_
                                    (fx+ _%start119079%_
                                         _%i119088%_
                                         (fx* _%i119088%_ _%i119088%_))))
                               (##fxmodulo
                                _%next-probe119102%_
                                _%size119073%_))
                             (##fx+ _%i119088%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab119032%_ _%key119034%_)
        (let ((_%lock119037%_ (&raw-table-lock _%tab119032%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119042%_ ((_%spin119045%_ '0))
              (if (##fx= (##vector-cas! _%lock119037%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119037%_ '1 (current-thread))
                  (if (##fx< _%spin119045%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119042%_ (##fx+ _%spin119045%_ '1)))
                      (let ((_%owner119051%_ (##vector-ref _%lock119037%_ '1)))
                        (if (eq? _%owner119051%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119051%_)
                                (let () (##thread-yield!) (_%again119042%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119057%_ (eq-table-delete! _%tab119032%_ _%key119034%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119037%_ '1 '#f)
                (##vector-cas! _%lock119037%_ '0 '0 '1)))
            _%$r119057%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint119014%_ _%seed119015%_)
        (make-raw-table__1 _%size-hint119014%_ eqv-hash eqv? _%seed119015%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint119021%_ '#f) (_%seed119023%_ '0))
          (make-eqv-table__% _%size-hint119021%_ _%seed119023%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint119025%_)
        (let ((_%seed119027%_ '0))
          (make-eqv-table__% _%size-hint119025%_ _%seed119027%_))))
    (define make-eqv-table
      (lambda _g119992_
        (let ((_g119993_ (##length _g119992_)))
          (cond ((##fx= _g119993_ 0) (apply make-eqv-table__0 _g119992_))
                ((##fx= _g119993_ 1) (apply make-eqv-table__1 _g119992_))
                ((##fx= _g119993_ 2) (apply make-eqv-table__% _g119992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g119992_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint118994%_ _%seed118996%_)
        (make-raw-table/lock__%
         _%size-hint118994%_
         eqv-hash
         eqv?
         _%seed118996%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint119002%_ '#f) (_%seed119004%_ '0))
          (make-eqv-table/lock__% _%size-hint119002%_ _%seed119004%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint119006%_)
        (let ((_%seed119008%_ '0))
          (make-eqv-table/lock__% _%size-hint119006%_ _%seed119008%_))))
    (define make-eqv-table/lock
      (lambda _g119994_
        (let ((_g119995_ (##length _g119994_)))
          (cond ((##fx= _g119995_ 0) (apply make-eqv-table/lock__0 _g119994_))
                ((##fx= _g119995_ 1) (apply make-eqv-table/lock__1 _g119994_))
                ((##fx= _g119995_ 2) (apply make-eqv-table/lock__% _g119994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g119994_))))))
    (define eqv-table-ref
      (lambda (_%tab118947%_ _%key118948%_ _%default118949%_)
        (let ((_%table118951%_ (&raw-table-table _%tab118947%_))
              (_%seed118952%_ (&raw-table-seed _%tab118947%_)))
          (let* ((_%h118954%_ (fxxor (eqv-hash _%key118948%_) _%seed118952%_))
                 (_%size118957%_ (vector-length _%table118951%_))
                 (_%entries118960%_ (##fxquotient _%size118957%_ '2))
                 (_%start118963%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118954%_ _%entries118960%_)
                   '1)))
            (let _%loop118967%_ ((_%probe118970%_ _%start118963%_)
                                 (_%i118972%_ '1)
                                 (_%deleted118974%_ '#f))
              (let ((_%k118977%_ (vector-ref _%table118951%_ _%probe118970%_)))
                (if (eq? _%k118977%_ (macro-unused-obj))
                    _%default118949%_
                    (if (eq? _%k118977%_ (macro-deleted-obj))
                        (_%loop118967%_
                         (let ((_%next-probe118982%_
                                (fx+ _%start118963%_
                                     _%i118972%_
                                     (fx* _%i118972%_ _%i118972%_))))
                           (##fxmodulo _%next-probe118982%_ _%size118957%_))
                         (##fx+ _%i118972%_ '1)
                         (let ((_%$e118985%_ _%deleted118974%_))
                           (if _%$e118985%_ _%$e118985%_ _%probe118970%_)))
                        (if (eqv? _%key118948%_ _%k118977%_)
                            (vector-ref
                             _%table118951%_
                             (##fx+ _%probe118970%_ '1))
                            (_%loop118967%_
                             (let ((_%next-probe118990%_
                                    (fx+ _%start118963%_
                                         _%i118972%_
                                         (fx* _%i118972%_ _%i118972%_))))
                               (##fxmodulo
                                _%next-probe118990%_
                                _%size118957%_))
                             (##fx+ _%i118972%_ '1)
                             _%deleted118974%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab118918%_ _%key118919%_ _%default118920%_)
        (let ((_%lock118922%_ (&raw-table-lock _%tab118918%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118927%_ ((_%spin118930%_ '0))
              (if (##fx= (##vector-cas! _%lock118922%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118922%_ '1 (current-thread))
                  (if (##fx< _%spin118930%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118927%_ (##fx+ _%spin118930%_ '1)))
                      (let ((_%owner118936%_ (##vector-ref _%lock118922%_ '1)))
                        (if (eq? _%owner118936%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118936%_)
                                (let () (##thread-yield!) (_%again118927%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118942%_
                 (eqv-table-ref
                  _%tab118918%_
                  _%key118919%_
                  _%default118920%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118922%_ '1 '#f)
                (##vector-cas! _%lock118922%_ '0 '0 '1)))
            _%$r118942%_))))
    (define __eqv-table-set!
      (lambda (_%tab118870%_ _%key118871%_ _%value118872%_)
        (let ((_%table118874%_ (&raw-table-table _%tab118870%_))
              (_%seed118875%_ (&raw-table-seed _%tab118870%_)))
          (let* ((_%h118877%_ (fxxor (eqv-hash _%key118871%_) _%seed118875%_))
                 (_%size118880%_ (vector-length _%table118874%_))
                 (_%entries118883%_ (##fxquotient _%size118880%_ '2))
                 (_%start118886%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118877%_ _%entries118883%_)
                   '1)))
            (let _%loop118890%_ ((_%probe118893%_ _%start118886%_)
                                 (_%i118895%_ '1)
                                 (_%deleted118897%_ '#f))
              (let ((_%k118900%_ (vector-ref _%table118874%_ _%probe118893%_)))
                (if (eq? _%k118900%_ (macro-unused-obj))
                    (if _%deleted118897%_
                        (begin
                          (vector-set!
                           _%table118874%_
                           _%deleted118897%_
                           _%key118871%_)
                          (vector-set!
                           _%table118874%_
                           (##fx+ _%deleted118897%_ '1)
                           _%value118872%_)
                          (&raw-table-count-set!
                           _%tab118870%_
                           (##fx+ (&raw-table-count _%tab118870%_) '1)))
                        (begin
                          (vector-set!
                           _%table118874%_
                           _%probe118893%_
                           _%key118871%_)
                          (vector-set!
                           _%table118874%_
                           (##fx+ _%probe118893%_ '1)
                           _%value118872%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab118870%_
                             (##fx- (&raw-table-free _%tab118870%_) '1))
                            (&raw-table-count-set!
                             _%tab118870%_
                             (##fx+ (&raw-table-count _%tab118870%_) '1)))))
                    (if (eq? _%k118900%_ (macro-deleted-obj))
                        (_%loop118890%_
                         (let ((_%next-probe118907%_
                                (fx+ _%start118886%_
                                     _%i118895%_
                                     (fx* _%i118895%_ _%i118895%_))))
                           (##fxmodulo _%next-probe118907%_ _%size118880%_))
                         (##fx+ _%i118895%_ '1)
                         (let ((_%$e118910%_ _%deleted118897%_))
                           (if _%$e118910%_ _%$e118910%_ _%probe118893%_)))
                        (if (eqv? _%key118871%_ _%k118900%_)
                            (let ()
                              (vector-set!
                               _%table118874%_
                               _%probe118893%_
                               _%key118871%_)
                              (vector-set!
                               _%table118874%_
                               (##fx+ _%probe118893%_ '1)
                               _%value118872%_))
                            (_%loop118890%_
                             (let ((_%next-probe118915%_
                                    (fx+ _%start118886%_
                                         _%i118895%_
                                         (fx* _%i118895%_ _%i118895%_))))
                               (##fxmodulo
                                _%next-probe118915%_
                                _%size118880%_))
                             (##fx+ _%i118895%_ '1)
                             _%deleted118897%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab118866%_ _%key118867%_ _%value118868%_)
        (if (##fx< (&raw-table-free _%tab118866%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118866%_))
                    '4))
            (__raw-table-rehash! _%tab118866%_)
            '#!void)
        (__eqv-table-set! _%tab118866%_ _%key118867%_ _%value118868%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab118836%_ _%key118837%_ _%value118838%_)
        (let ((_%lock118841%_ (&raw-table-lock _%tab118836%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118846%_ ((_%spin118849%_ '0))
              (if (##fx= (##vector-cas! _%lock118841%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118841%_ '1 (current-thread))
                  (if (##fx< _%spin118849%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118846%_ (##fx+ _%spin118849%_ '1)))
                      (let ((_%owner118855%_ (##vector-ref _%lock118841%_ '1)))
                        (if (eq? _%owner118855%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118855%_)
                                (let () (##thread-yield!) (_%again118846%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118861%_
                 (eqv-table-set! _%tab118836%_ _%key118837%_ _%value118838%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118841%_ '1 '#f)
                (##vector-cas! _%lock118841%_ '0 '0 '1)))
            _%$r118861%_))))
    (define __eqv-table-update!
      (lambda (_%tab118787%_
               _%key118788%_
               _%eqv-table-update!118789%_
               _%default118790%_)
        (let ((_%table118792%_ (&raw-table-table _%tab118787%_))
              (_%seed118793%_ (&raw-table-seed _%tab118787%_)))
          (let* ((_%h118795%_ (fxxor (eqv-hash _%key118788%_) _%seed118793%_))
                 (_%size118798%_ (vector-length _%table118792%_))
                 (_%entries118801%_ (##fxquotient _%size118798%_ '2))
                 (_%start118804%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118795%_ _%entries118801%_)
                   '1)))
            (let _%loop118808%_ ((_%probe118811%_ _%start118804%_)
                                 (_%i118813%_ '1)
                                 (_%deleted118815%_ '#f))
              (let ((_%k118818%_ (vector-ref _%table118792%_ _%probe118811%_)))
                (if (eq? _%k118818%_ (macro-unused-obj))
                    (if _%deleted118815%_
                        (begin
                          (vector-set!
                           _%table118792%_
                           _%deleted118815%_
                           _%key118788%_)
                          (vector-set!
                           _%table118792%_
                           (##fx+ _%deleted118815%_ '1)
                           (_%eqv-table-update!118789%_ _%default118790%_))
                          (&raw-table-count-set!
                           _%tab118787%_
                           (##fx+ (&raw-table-count _%tab118787%_) '1)))
                        (begin
                          (vector-set!
                           _%table118792%_
                           _%probe118811%_
                           _%key118788%_)
                          (vector-set!
                           _%table118792%_
                           (##fx+ _%probe118811%_ '1)
                           (_%eqv-table-update!118789%_ _%default118790%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab118787%_
                             (##fx- (&raw-table-free _%tab118787%_) '1))
                            (&raw-table-count-set!
                             _%tab118787%_
                             (##fx+ (&raw-table-count _%tab118787%_) '1)))))
                    (if (eq? _%k118818%_ (macro-deleted-obj))
                        (_%loop118808%_
                         (let ((_%next-probe118825%_
                                (fx+ _%start118804%_
                                     _%i118813%_
                                     (fx* _%i118813%_ _%i118813%_))))
                           (##fxmodulo _%next-probe118825%_ _%size118798%_))
                         (##fx+ _%i118813%_ '1)
                         (let ((_%$e118828%_ _%deleted118815%_))
                           (if _%$e118828%_ _%$e118828%_ _%probe118811%_)))
                        (if (eqv? _%key118788%_ _%k118818%_)
                            (let ()
                              (vector-set!
                               _%table118792%_
                               _%probe118811%_
                               _%key118788%_)
                              (vector-set!
                               _%table118792%_
                               (##fx+ _%probe118811%_ '1)
                               (_%eqv-table-update!118789%_
                                (vector-ref
                                 _%table118792%_
                                 (##fx+ _%probe118811%_ '1)))))
                            (_%loop118808%_
                             (let ((_%next-probe118833%_
                                    (fx+ _%start118804%_
                                         _%i118813%_
                                         (fx* _%i118813%_ _%i118813%_))))
                               (##fxmodulo
                                _%next-probe118833%_
                                _%size118798%_))
                             (##fx+ _%i118813%_ '1)
                             _%deleted118815%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab118782%_
               _%key118783%_
               _%eqv-table-update!118784%_
               _%default118785%_)
        (if (##fx< (&raw-table-free _%tab118782%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118782%_))
                    '4))
            (__raw-table-rehash! _%tab118782%_)
            '#!void)
        (__eqv-table-update!
         _%tab118782%_
         _%key118783%_
         _%eqv-table-update!118784%_
         _%default118785%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab118751%_
               _%key118752%_
               _%eqv-table-update!118753%_
               _%default118754%_)
        (let ((_%lock118757%_ (&raw-table-lock _%tab118751%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118762%_ ((_%spin118765%_ '0))
              (if (##fx= (##vector-cas! _%lock118757%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118757%_ '1 (current-thread))
                  (if (##fx< _%spin118765%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118762%_ (##fx+ _%spin118765%_ '1)))
                      (let ((_%owner118771%_ (##vector-ref _%lock118757%_ '1)))
                        (if (eq? _%owner118771%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118771%_)
                                (let () (##thread-yield!) (_%again118762%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118777%_
                 (_%eqv-table-update!118753%_
                  _%tab118751%_
                  _%key118752%_
                  _%eqv-table-update!118753%_
                  _%default118754%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118757%_ '1 '#f)
                (##vector-cas! _%lock118757%_ '0 '0 '1)))
            _%$r118777%_))))
    (define eqv-table-delete!
      (lambda (_%tab118708%_ _%key118709%_)
        (let ((_%table118711%_ (&raw-table-table _%tab118708%_))
              (_%seed118713%_ (&raw-table-seed _%tab118708%_)))
          (let* ((_%h118716%_ (fxxor (eqv-hash _%key118709%_) _%seed118713%_))
                 (_%size118719%_ (vector-length _%table118711%_))
                 (_%entries118722%_ (##fxquotient _%size118719%_ '2))
                 (_%start118725%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118716%_ _%entries118722%_)
                   '1)))
            (let _%loop118729%_ ((_%probe118732%_ _%start118725%_)
                                 (_%i118734%_ '1))
              (let ((_%k118737%_ (vector-ref _%table118711%_ _%probe118732%_)))
                (if (eq? _%k118737%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118737%_ (macro-deleted-obj))
                        (_%loop118729%_
                         (let ((_%next-probe118742%_
                                (fx+ _%start118725%_
                                     _%i118734%_
                                     (fx* _%i118734%_ _%i118734%_))))
                           (##fxmodulo _%next-probe118742%_ _%size118719%_))
                         (##fx+ _%i118734%_ '1))
                        (if (eqv? _%key118709%_ _%k118737%_)
                            (let ()
                              (vector-set!
                               _%table118711%_
                               _%probe118732%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118711%_
                               (##fx+ _%probe118732%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab118708%_
                               (##fx- (&raw-table-count _%tab118708%_) '1)))
                            (_%loop118729%_
                             (let ((_%next-probe118748%_
                                    (fx+ _%start118725%_
                                         _%i118734%_
                                         (fx* _%i118734%_ _%i118734%_))))
                               (##fxmodulo
                                _%next-probe118748%_
                                _%size118719%_))
                             (##fx+ _%i118734%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab118678%_ _%key118680%_)
        (let ((_%lock118683%_ (&raw-table-lock _%tab118678%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118688%_ ((_%spin118691%_ '0))
              (if (##fx= (##vector-cas! _%lock118683%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118683%_ '1 (current-thread))
                  (if (##fx< _%spin118691%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118688%_ (##fx+ _%spin118691%_ '1)))
                      (let ((_%owner118697%_ (##vector-ref _%lock118683%_ '1)))
                        (if (eq? _%owner118697%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118697%_)
                                (let () (##thread-yield!) (_%again118688%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118703%_ (eqv-table-delete! _%tab118678%_ _%key118680%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118683%_ '1 '#f)
                (##vector-cas! _%lock118683%_ '0 '0 '1)))
            _%$r118703%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint118660%_ _%seed118661%_)
        (make-raw-table__1
         _%size-hint118660%_
         symbolic-hash
         eq?
         _%seed118661%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint118667%_ '#f) (_%seed118669%_ '0))
          (make-symbolic-table__% _%size-hint118667%_ _%seed118669%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint118671%_)
        (let ((_%seed118673%_ '0))
          (make-symbolic-table__% _%size-hint118671%_ _%seed118673%_))))
    (define make-symbolic-table
      (lambda _g119996_
        (let ((_g119997_ (##length _g119996_)))
          (cond ((##fx= _g119997_ 0) (apply make-symbolic-table__0 _g119996_))
                ((##fx= _g119997_ 1) (apply make-symbolic-table__1 _g119996_))
                ((##fx= _g119997_ 2) (apply make-symbolic-table__% _g119996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g119996_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint118640%_ _%seed118642%_)
        (make-raw-table/lock__%
         _%size-hint118640%_
         symbolic-hash
         eq?
         _%seed118642%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint118648%_ '#f) (_%seed118650%_ '0))
          (make-symbolic-table/lock__% _%size-hint118648%_ _%seed118650%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint118652%_)
        (let ((_%seed118654%_ '0))
          (make-symbolic-table/lock__% _%size-hint118652%_ _%seed118654%_))))
    (define make-symbolic-table/lock
      (lambda _g119998_
        (let ((_g119999_ (##length _g119998_)))
          (cond ((##fx= _g119999_ 0)
                 (apply make-symbolic-table/lock__0 _g119998_))
                ((##fx= _g119999_ 1)
                 (apply make-symbolic-table/lock__1 _g119998_))
                ((##fx= _g119999_ 2)
                 (apply make-symbolic-table/lock__% _g119998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g119998_))))))
    (define symbolic-table-ref
      (lambda (_%tab118593%_ _%key118594%_ _%default118595%_)
        (let ((_%table118597%_ (&raw-table-table _%tab118593%_))
              (_%seed118598%_ (&raw-table-seed _%tab118593%_)))
          (let* ((_%h118600%_
                  (fxxor (##symbol-hash _%key118594%_) _%seed118598%_))
                 (_%size118603%_ (vector-length _%table118597%_))
                 (_%entries118606%_ (##fxquotient _%size118603%_ '2))
                 (_%start118609%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118600%_ _%entries118606%_)
                   '1)))
            (let _%loop118613%_ ((_%probe118616%_ _%start118609%_)
                                 (_%i118618%_ '1)
                                 (_%deleted118620%_ '#f))
              (let ((_%k118623%_ (vector-ref _%table118597%_ _%probe118616%_)))
                (if (eq? _%k118623%_ (macro-unused-obj))
                    _%default118595%_
                    (if (eq? _%k118623%_ (macro-deleted-obj))
                        (_%loop118613%_
                         (let ((_%next-probe118628%_
                                (fx+ _%start118609%_
                                     _%i118618%_
                                     (fx* _%i118618%_ _%i118618%_))))
                           (##fxmodulo _%next-probe118628%_ _%size118603%_))
                         (##fx+ _%i118618%_ '1)
                         (let ((_%$e118631%_ _%deleted118620%_))
                           (if _%$e118631%_ _%$e118631%_ _%probe118616%_)))
                        (if (eq? _%key118594%_ _%k118623%_)
                            (vector-ref
                             _%table118597%_
                             (##fx+ _%probe118616%_ '1))
                            (_%loop118613%_
                             (let ((_%next-probe118636%_
                                    (fx+ _%start118609%_
                                         _%i118618%_
                                         (fx* _%i118618%_ _%i118618%_))))
                               (##fxmodulo
                                _%next-probe118636%_
                                _%size118603%_))
                             (##fx+ _%i118618%_ '1)
                             _%deleted118620%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab118564%_ _%key118565%_ _%default118566%_)
        (let ((_%lock118568%_ (&raw-table-lock _%tab118564%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118573%_ ((_%spin118576%_ '0))
              (if (##fx= (##vector-cas! _%lock118568%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118568%_ '1 (current-thread))
                  (if (##fx< _%spin118576%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118573%_ (##fx+ _%spin118576%_ '1)))
                      (let ((_%owner118582%_ (##vector-ref _%lock118568%_ '1)))
                        (if (eq? _%owner118582%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118582%_)
                                (let () (##thread-yield!) (_%again118573%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118588%_
                 (symbolic-table-ref
                  _%tab118564%_
                  _%key118565%_
                  _%default118566%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118568%_ '1 '#f)
                (##vector-cas! _%lock118568%_ '0 '0 '1)))
            _%$r118588%_))))
    (define __symbolic-table-set!
      (lambda (_%tab118516%_ _%key118517%_ _%value118518%_)
        (let ((_%table118520%_ (&raw-table-table _%tab118516%_))
              (_%seed118521%_ (&raw-table-seed _%tab118516%_)))
          (let* ((_%h118523%_
                  (fxxor (##symbol-hash _%key118517%_) _%seed118521%_))
                 (_%size118526%_ (vector-length _%table118520%_))
                 (_%entries118529%_ (##fxquotient _%size118526%_ '2))
                 (_%start118532%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118523%_ _%entries118529%_)
                   '1)))
            (let _%loop118536%_ ((_%probe118539%_ _%start118532%_)
                                 (_%i118541%_ '1)
                                 (_%deleted118543%_ '#f))
              (let ((_%k118546%_ (vector-ref _%table118520%_ _%probe118539%_)))
                (if (eq? _%k118546%_ (macro-unused-obj))
                    (if _%deleted118543%_
                        (begin
                          (vector-set!
                           _%table118520%_
                           _%deleted118543%_
                           _%key118517%_)
                          (vector-set!
                           _%table118520%_
                           (##fx+ _%deleted118543%_ '1)
                           _%value118518%_)
                          (&raw-table-count-set!
                           _%tab118516%_
                           (##fx+ (&raw-table-count _%tab118516%_) '1)))
                        (begin
                          (vector-set!
                           _%table118520%_
                           _%probe118539%_
                           _%key118517%_)
                          (vector-set!
                           _%table118520%_
                           (##fx+ _%probe118539%_ '1)
                           _%value118518%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab118516%_
                             (##fx- (&raw-table-free _%tab118516%_) '1))
                            (&raw-table-count-set!
                             _%tab118516%_
                             (##fx+ (&raw-table-count _%tab118516%_) '1)))))
                    (if (eq? _%k118546%_ (macro-deleted-obj))
                        (_%loop118536%_
                         (let ((_%next-probe118553%_
                                (fx+ _%start118532%_
                                     _%i118541%_
                                     (fx* _%i118541%_ _%i118541%_))))
                           (##fxmodulo _%next-probe118553%_ _%size118526%_))
                         (##fx+ _%i118541%_ '1)
                         (let ((_%$e118556%_ _%deleted118543%_))
                           (if _%$e118556%_ _%$e118556%_ _%probe118539%_)))
                        (if (eq? _%key118517%_ _%k118546%_)
                            (let ()
                              (vector-set!
                               _%table118520%_
                               _%probe118539%_
                               _%key118517%_)
                              (vector-set!
                               _%table118520%_
                               (##fx+ _%probe118539%_ '1)
                               _%value118518%_))
                            (_%loop118536%_
                             (let ((_%next-probe118561%_
                                    (fx+ _%start118532%_
                                         _%i118541%_
                                         (fx* _%i118541%_ _%i118541%_))))
                               (##fxmodulo
                                _%next-probe118561%_
                                _%size118526%_))
                             (##fx+ _%i118541%_ '1)
                             _%deleted118543%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab118512%_ _%key118513%_ _%value118514%_)
        (if (##fx< (&raw-table-free _%tab118512%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118512%_))
                    '4))
            (__raw-table-rehash! _%tab118512%_)
            '#!void)
        (__symbolic-table-set! _%tab118512%_ _%key118513%_ _%value118514%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab118482%_ _%key118483%_ _%value118484%_)
        (let ((_%lock118487%_ (&raw-table-lock _%tab118482%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118492%_ ((_%spin118495%_ '0))
              (if (##fx= (##vector-cas! _%lock118487%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118487%_ '1 (current-thread))
                  (if (##fx< _%spin118495%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118492%_ (##fx+ _%spin118495%_ '1)))
                      (let ((_%owner118501%_ (##vector-ref _%lock118487%_ '1)))
                        (if (eq? _%owner118501%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118501%_)
                                (let () (##thread-yield!) (_%again118492%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118507%_
                 (symbolic-table-set!
                  _%tab118482%_
                  _%key118483%_
                  _%value118484%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118487%_ '1 '#f)
                (##vector-cas! _%lock118487%_ '0 '0 '1)))
            _%$r118507%_))))
    (define __symbolic-table-update!
      (lambda (_%tab118433%_
               _%key118434%_
               _%symbolic-table-update!118435%_
               _%default118436%_)
        (let ((_%table118438%_ (&raw-table-table _%tab118433%_))
              (_%seed118439%_ (&raw-table-seed _%tab118433%_)))
          (let* ((_%h118441%_
                  (fxxor (##symbol-hash _%key118434%_) _%seed118439%_))
                 (_%size118444%_ (vector-length _%table118438%_))
                 (_%entries118447%_ (##fxquotient _%size118444%_ '2))
                 (_%start118450%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118441%_ _%entries118447%_)
                   '1)))
            (let _%loop118454%_ ((_%probe118457%_ _%start118450%_)
                                 (_%i118459%_ '1)
                                 (_%deleted118461%_ '#f))
              (let ((_%k118464%_ (vector-ref _%table118438%_ _%probe118457%_)))
                (if (eq? _%k118464%_ (macro-unused-obj))
                    (if _%deleted118461%_
                        (begin
                          (vector-set!
                           _%table118438%_
                           _%deleted118461%_
                           _%key118434%_)
                          (vector-set!
                           _%table118438%_
                           (##fx+ _%deleted118461%_ '1)
                           (_%symbolic-table-update!118435%_
                            _%default118436%_))
                          (&raw-table-count-set!
                           _%tab118433%_
                           (##fx+ (&raw-table-count _%tab118433%_) '1)))
                        (begin
                          (vector-set!
                           _%table118438%_
                           _%probe118457%_
                           _%key118434%_)
                          (vector-set!
                           _%table118438%_
                           (##fx+ _%probe118457%_ '1)
                           (_%symbolic-table-update!118435%_
                            _%default118436%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab118433%_
                             (##fx- (&raw-table-free _%tab118433%_) '1))
                            (&raw-table-count-set!
                             _%tab118433%_
                             (##fx+ (&raw-table-count _%tab118433%_) '1)))))
                    (if (eq? _%k118464%_ (macro-deleted-obj))
                        (_%loop118454%_
                         (let ((_%next-probe118471%_
                                (fx+ _%start118450%_
                                     _%i118459%_
                                     (fx* _%i118459%_ _%i118459%_))))
                           (##fxmodulo _%next-probe118471%_ _%size118444%_))
                         (##fx+ _%i118459%_ '1)
                         (let ((_%$e118474%_ _%deleted118461%_))
                           (if _%$e118474%_ _%$e118474%_ _%probe118457%_)))
                        (if (eq? _%key118434%_ _%k118464%_)
                            (let ()
                              (vector-set!
                               _%table118438%_
                               _%probe118457%_
                               _%key118434%_)
                              (vector-set!
                               _%table118438%_
                               (##fx+ _%probe118457%_ '1)
                               (_%symbolic-table-update!118435%_
                                (vector-ref
                                 _%table118438%_
                                 (##fx+ _%probe118457%_ '1)))))
                            (_%loop118454%_
                             (let ((_%next-probe118479%_
                                    (fx+ _%start118450%_
                                         _%i118459%_
                                         (fx* _%i118459%_ _%i118459%_))))
                               (##fxmodulo
                                _%next-probe118479%_
                                _%size118444%_))
                             (##fx+ _%i118459%_ '1)
                             _%deleted118461%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab118428%_
               _%key118429%_
               _%symbolic-table-update!118430%_
               _%default118431%_)
        (if (##fx< (&raw-table-free _%tab118428%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118428%_))
                    '4))
            (__raw-table-rehash! _%tab118428%_)
            '#!void)
        (__symbolic-table-update!
         _%tab118428%_
         _%key118429%_
         _%symbolic-table-update!118430%_
         _%default118431%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab118397%_
               _%key118398%_
               _%symbolic-table-update!118399%_
               _%default118400%_)
        (let ((_%lock118403%_ (&raw-table-lock _%tab118397%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118408%_ ((_%spin118411%_ '0))
              (if (##fx= (##vector-cas! _%lock118403%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118403%_ '1 (current-thread))
                  (if (##fx< _%spin118411%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118408%_ (##fx+ _%spin118411%_ '1)))
                      (let ((_%owner118417%_ (##vector-ref _%lock118403%_ '1)))
                        (if (eq? _%owner118417%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118417%_)
                                (let () (##thread-yield!) (_%again118408%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118423%_
                 (_%symbolic-table-update!118399%_
                  _%tab118397%_
                  _%key118398%_
                  _%symbolic-table-update!118399%_
                  _%default118400%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118403%_ '1 '#f)
                (##vector-cas! _%lock118403%_ '0 '0 '1)))
            _%$r118423%_))))
    (define symbolic-table-delete!
      (lambda (_%tab118354%_ _%key118355%_)
        (let ((_%table118357%_ (&raw-table-table _%tab118354%_))
              (_%seed118359%_ (&raw-table-seed _%tab118354%_)))
          (let* ((_%h118362%_
                  (fxxor (##symbol-hash _%key118355%_) _%seed118359%_))
                 (_%size118365%_ (vector-length _%table118357%_))
                 (_%entries118368%_ (##fxquotient _%size118365%_ '2))
                 (_%start118371%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118362%_ _%entries118368%_)
                   '1)))
            (let _%loop118375%_ ((_%probe118378%_ _%start118371%_)
                                 (_%i118380%_ '1))
              (let ((_%k118383%_ (vector-ref _%table118357%_ _%probe118378%_)))
                (if (eq? _%k118383%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118383%_ (macro-deleted-obj))
                        (_%loop118375%_
                         (let ((_%next-probe118388%_
                                (fx+ _%start118371%_
                                     _%i118380%_
                                     (fx* _%i118380%_ _%i118380%_))))
                           (##fxmodulo _%next-probe118388%_ _%size118365%_))
                         (##fx+ _%i118380%_ '1))
                        (if (eq? _%key118355%_ _%k118383%_)
                            (let ()
                              (vector-set!
                               _%table118357%_
                               _%probe118378%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118357%_
                               (##fx+ _%probe118378%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab118354%_
                               (##fx- (&raw-table-count _%tab118354%_) '1)))
                            (_%loop118375%_
                             (let ((_%next-probe118394%_
                                    (fx+ _%start118371%_
                                         _%i118380%_
                                         (fx* _%i118380%_ _%i118380%_))))
                               (##fxmodulo
                                _%next-probe118394%_
                                _%size118365%_))
                             (##fx+ _%i118380%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab118324%_ _%key118326%_)
        (let ((_%lock118329%_ (&raw-table-lock _%tab118324%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118334%_ ((_%spin118337%_ '0))
              (if (##fx= (##vector-cas! _%lock118329%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118329%_ '1 (current-thread))
                  (if (##fx< _%spin118337%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118334%_ (##fx+ _%spin118337%_ '1)))
                      (let ((_%owner118343%_ (##vector-ref _%lock118329%_ '1)))
                        (if (eq? _%owner118343%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118343%_)
                                (let () (##thread-yield!) (_%again118334%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118349%_
                 (symbolic-table-delete! _%tab118324%_ _%key118326%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118329%_ '1 '#f)
                (##vector-cas! _%lock118329%_ '0 '0 '1)))
            _%$r118349%_))))
    (define make-string-table__%
      (lambda (_%size-hint118306%_ _%seed118307%_)
        (make-raw-table__1
         _%size-hint118306%_
         string-hash
         ##string=?
         _%seed118307%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint118313%_ '#f) (_%seed118315%_ '0))
          (make-string-table__% _%size-hint118313%_ _%seed118315%_))))
    (define make-string-table__1
      (lambda (_%size-hint118317%_)
        (let ((_%seed118319%_ '0))
          (make-string-table__% _%size-hint118317%_ _%seed118319%_))))
    (define make-string-table
      (lambda _g120000_
        (let ((_g120001_ (##length _g120000_)))
          (cond ((##fx= _g120001_ 0) (apply make-string-table__0 _g120000_))
                ((##fx= _g120001_ 1) (apply make-string-table__1 _g120000_))
                ((##fx= _g120001_ 2) (apply make-string-table__% _g120000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g120000_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint118286%_ _%seed118288%_)
        (make-raw-table/lock__%
         _%size-hint118286%_
         string-hash
         ##string=?
         _%seed118288%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint118294%_ '#f) (_%seed118296%_ '0))
          (make-string-table/lock__% _%size-hint118294%_ _%seed118296%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint118298%_)
        (let ((_%seed118300%_ '0))
          (make-string-table/lock__% _%size-hint118298%_ _%seed118300%_))))
    (define make-string-table/lock
      (lambda _g120002_
        (let ((_g120003_ (##length _g120002_)))
          (cond ((##fx= _g120003_ 0)
                 (apply make-string-table/lock__0 _g120002_))
                ((##fx= _g120003_ 1)
                 (apply make-string-table/lock__1 _g120002_))
                ((##fx= _g120003_ 2)
                 (apply make-string-table/lock__% _g120002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g120002_))))))
    (define string-table-ref
      (lambda (_%tab118239%_ _%key118240%_ _%default118241%_)
        (let ((_%table118243%_ (&raw-table-table _%tab118239%_))
              (_%seed118244%_ (&raw-table-seed _%tab118239%_)))
          (let* ((_%h118246%_
                  (fxxor (##string=?-hash _%key118240%_) _%seed118244%_))
                 (_%size118249%_ (vector-length _%table118243%_))
                 (_%entries118252%_ (##fxquotient _%size118249%_ '2))
                 (_%start118255%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118246%_ _%entries118252%_)
                   '1)))
            (let _%loop118259%_ ((_%probe118262%_ _%start118255%_)
                                 (_%i118264%_ '1)
                                 (_%deleted118266%_ '#f))
              (let ((_%k118269%_ (vector-ref _%table118243%_ _%probe118262%_)))
                (if (eq? _%k118269%_ (macro-unused-obj))
                    _%default118241%_
                    (if (eq? _%k118269%_ (macro-deleted-obj))
                        (_%loop118259%_
                         (let ((_%next-probe118274%_
                                (fx+ _%start118255%_
                                     _%i118264%_
                                     (fx* _%i118264%_ _%i118264%_))))
                           (##fxmodulo _%next-probe118274%_ _%size118249%_))
                         (##fx+ _%i118264%_ '1)
                         (let ((_%$e118277%_ _%deleted118266%_))
                           (if _%$e118277%_ _%$e118277%_ _%probe118262%_)))
                        (if (##string=? _%key118240%_ _%k118269%_)
                            (vector-ref
                             _%table118243%_
                             (##fx+ _%probe118262%_ '1))
                            (_%loop118259%_
                             (let ((_%next-probe118282%_
                                    (fx+ _%start118255%_
                                         _%i118264%_
                                         (fx* _%i118264%_ _%i118264%_))))
                               (##fxmodulo
                                _%next-probe118282%_
                                _%size118249%_))
                             (##fx+ _%i118264%_ '1)
                             _%deleted118266%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab118210%_ _%key118211%_ _%default118212%_)
        (let ((_%lock118214%_ (&raw-table-lock _%tab118210%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118219%_ ((_%spin118222%_ '0))
              (if (##fx= (##vector-cas! _%lock118214%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118214%_ '1 (current-thread))
                  (if (##fx< _%spin118222%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118219%_ (##fx+ _%spin118222%_ '1)))
                      (let ((_%owner118228%_ (##vector-ref _%lock118214%_ '1)))
                        (if (eq? _%owner118228%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118228%_)
                                (let () (##thread-yield!) (_%again118219%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118234%_
                 (string-table-ref
                  _%tab118210%_
                  _%key118211%_
                  _%default118212%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118214%_ '1 '#f)
                (##vector-cas! _%lock118214%_ '0 '0 '1)))
            _%$r118234%_))))
    (define __string-table-set!
      (lambda (_%tab118162%_ _%key118163%_ _%value118164%_)
        (let ((_%table118166%_ (&raw-table-table _%tab118162%_))
              (_%seed118167%_ (&raw-table-seed _%tab118162%_)))
          (let* ((_%h118169%_
                  (fxxor (##string=?-hash _%key118163%_) _%seed118167%_))
                 (_%size118172%_ (vector-length _%table118166%_))
                 (_%entries118175%_ (##fxquotient _%size118172%_ '2))
                 (_%start118178%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118169%_ _%entries118175%_)
                   '1)))
            (let _%loop118182%_ ((_%probe118185%_ _%start118178%_)
                                 (_%i118187%_ '1)
                                 (_%deleted118189%_ '#f))
              (let ((_%k118192%_ (vector-ref _%table118166%_ _%probe118185%_)))
                (if (eq? _%k118192%_ (macro-unused-obj))
                    (if _%deleted118189%_
                        (begin
                          (vector-set!
                           _%table118166%_
                           _%deleted118189%_
                           _%key118163%_)
                          (vector-set!
                           _%table118166%_
                           (##fx+ _%deleted118189%_ '1)
                           _%value118164%_)
                          (&raw-table-count-set!
                           _%tab118162%_
                           (##fx+ (&raw-table-count _%tab118162%_) '1)))
                        (begin
                          (vector-set!
                           _%table118166%_
                           _%probe118185%_
                           _%key118163%_)
                          (vector-set!
                           _%table118166%_
                           (##fx+ _%probe118185%_ '1)
                           _%value118164%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab118162%_
                             (##fx- (&raw-table-free _%tab118162%_) '1))
                            (&raw-table-count-set!
                             _%tab118162%_
                             (##fx+ (&raw-table-count _%tab118162%_) '1)))))
                    (if (eq? _%k118192%_ (macro-deleted-obj))
                        (_%loop118182%_
                         (let ((_%next-probe118199%_
                                (fx+ _%start118178%_
                                     _%i118187%_
                                     (fx* _%i118187%_ _%i118187%_))))
                           (##fxmodulo _%next-probe118199%_ _%size118172%_))
                         (##fx+ _%i118187%_ '1)
                         (let ((_%$e118202%_ _%deleted118189%_))
                           (if _%$e118202%_ _%$e118202%_ _%probe118185%_)))
                        (if (##string=? _%key118163%_ _%k118192%_)
                            (let ()
                              (vector-set!
                               _%table118166%_
                               _%probe118185%_
                               _%key118163%_)
                              (vector-set!
                               _%table118166%_
                               (##fx+ _%probe118185%_ '1)
                               _%value118164%_))
                            (_%loop118182%_
                             (let ((_%next-probe118207%_
                                    (fx+ _%start118178%_
                                         _%i118187%_
                                         (fx* _%i118187%_ _%i118187%_))))
                               (##fxmodulo
                                _%next-probe118207%_
                                _%size118172%_))
                             (##fx+ _%i118187%_ '1)
                             _%deleted118189%_))))))))))
    (define string-table-set!
      (lambda (_%tab118158%_ _%key118159%_ _%value118160%_)
        (if (##fx< (&raw-table-free _%tab118158%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118158%_))
                    '4))
            (__raw-table-rehash! _%tab118158%_)
            '#!void)
        (__string-table-set! _%tab118158%_ _%key118159%_ _%value118160%_)))
    (define string-table-set!/lock
      (lambda (_%tab118128%_ _%key118129%_ _%value118130%_)
        (let ((_%lock118133%_ (&raw-table-lock _%tab118128%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118138%_ ((_%spin118141%_ '0))
              (if (##fx= (##vector-cas! _%lock118133%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118133%_ '1 (current-thread))
                  (if (##fx< _%spin118141%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118138%_ (##fx+ _%spin118141%_ '1)))
                      (let ((_%owner118147%_ (##vector-ref _%lock118133%_ '1)))
                        (if (eq? _%owner118147%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118147%_)
                                (let () (##thread-yield!) (_%again118138%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118153%_
                 (string-table-set!
                  _%tab118128%_
                  _%key118129%_
                  _%value118130%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118133%_ '1 '#f)
                (##vector-cas! _%lock118133%_ '0 '0 '1)))
            _%$r118153%_))))
    (define __string-table-update!
      (lambda (_%tab118079%_
               _%key118080%_
               _%string-table-update!118081%_
               _%default118082%_)
        (let ((_%table118084%_ (&raw-table-table _%tab118079%_))
              (_%seed118085%_ (&raw-table-seed _%tab118079%_)))
          (let* ((_%h118087%_
                  (fxxor (##string=?-hash _%key118080%_) _%seed118085%_))
                 (_%size118090%_ (vector-length _%table118084%_))
                 (_%entries118093%_ (##fxquotient _%size118090%_ '2))
                 (_%start118096%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118087%_ _%entries118093%_)
                   '1)))
            (let _%loop118100%_ ((_%probe118103%_ _%start118096%_)
                                 (_%i118105%_ '1)
                                 (_%deleted118107%_ '#f))
              (let ((_%k118110%_ (vector-ref _%table118084%_ _%probe118103%_)))
                (if (eq? _%k118110%_ (macro-unused-obj))
                    (if _%deleted118107%_
                        (begin
                          (vector-set!
                           _%table118084%_
                           _%deleted118107%_
                           _%key118080%_)
                          (vector-set!
                           _%table118084%_
                           (##fx+ _%deleted118107%_ '1)
                           (_%string-table-update!118081%_ _%default118082%_))
                          (&raw-table-count-set!
                           _%tab118079%_
                           (##fx+ (&raw-table-count _%tab118079%_) '1)))
                        (begin
                          (vector-set!
                           _%table118084%_
                           _%probe118103%_
                           _%key118080%_)
                          (vector-set!
                           _%table118084%_
                           (##fx+ _%probe118103%_ '1)
                           (_%string-table-update!118081%_ _%default118082%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab118079%_
                             (##fx- (&raw-table-free _%tab118079%_) '1))
                            (&raw-table-count-set!
                             _%tab118079%_
                             (##fx+ (&raw-table-count _%tab118079%_) '1)))))
                    (if (eq? _%k118110%_ (macro-deleted-obj))
                        (_%loop118100%_
                         (let ((_%next-probe118117%_
                                (fx+ _%start118096%_
                                     _%i118105%_
                                     (fx* _%i118105%_ _%i118105%_))))
                           (##fxmodulo _%next-probe118117%_ _%size118090%_))
                         (##fx+ _%i118105%_ '1)
                         (let ((_%$e118120%_ _%deleted118107%_))
                           (if _%$e118120%_ _%$e118120%_ _%probe118103%_)))
                        (if (##string=? _%key118080%_ _%k118110%_)
                            (let ()
                              (vector-set!
                               _%table118084%_
                               _%probe118103%_
                               _%key118080%_)
                              (vector-set!
                               _%table118084%_
                               (##fx+ _%probe118103%_ '1)
                               (_%string-table-update!118081%_
                                (vector-ref
                                 _%table118084%_
                                 (##fx+ _%probe118103%_ '1)))))
                            (_%loop118100%_
                             (let ((_%next-probe118125%_
                                    (fx+ _%start118096%_
                                         _%i118105%_
                                         (fx* _%i118105%_ _%i118105%_))))
                               (##fxmodulo
                                _%next-probe118125%_
                                _%size118090%_))
                             (##fx+ _%i118105%_ '1)
                             _%deleted118107%_))))))))))
    (define string-table-update!
      (lambda (_%tab118074%_
               _%key118075%_
               _%string-table-update!118076%_
               _%default118077%_)
        (if (##fx< (&raw-table-free _%tab118074%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118074%_))
                    '4))
            (__raw-table-rehash! _%tab118074%_)
            '#!void)
        (__string-table-update!
         _%tab118074%_
         _%key118075%_
         _%string-table-update!118076%_
         _%default118077%_)))
    (define string-table-update!/lock
      (lambda (_%tab118043%_
               _%key118044%_
               _%string-table-update!118045%_
               _%default118046%_)
        (let ((_%lock118049%_ (&raw-table-lock _%tab118043%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118054%_ ((_%spin118057%_ '0))
              (if (##fx= (##vector-cas! _%lock118049%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118049%_ '1 (current-thread))
                  (if (##fx< _%spin118057%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118054%_ (##fx+ _%spin118057%_ '1)))
                      (let ((_%owner118063%_ (##vector-ref _%lock118049%_ '1)))
                        (if (eq? _%owner118063%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118063%_)
                                (let () (##thread-yield!) (_%again118054%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118069%_
                 (_%string-table-update!118045%_
                  _%tab118043%_
                  _%key118044%_
                  _%string-table-update!118045%_
                  _%default118046%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118049%_ '1 '#f)
                (##vector-cas! _%lock118049%_ '0 '0 '1)))
            _%$r118069%_))))
    (define string-table-delete!
      (lambda (_%tab118000%_ _%key118001%_)
        (let ((_%table118003%_ (&raw-table-table _%tab118000%_))
              (_%seed118005%_ (&raw-table-seed _%tab118000%_)))
          (let* ((_%h118008%_
                  (fxxor (##string=?-hash _%key118001%_) _%seed118005%_))
                 (_%size118011%_ (vector-length _%table118003%_))
                 (_%entries118014%_ (##fxquotient _%size118011%_ '2))
                 (_%start118017%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118008%_ _%entries118014%_)
                   '1)))
            (let _%loop118021%_ ((_%probe118024%_ _%start118017%_)
                                 (_%i118026%_ '1))
              (let ((_%k118029%_ (vector-ref _%table118003%_ _%probe118024%_)))
                (if (eq? _%k118029%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118029%_ (macro-deleted-obj))
                        (_%loop118021%_
                         (let ((_%next-probe118034%_
                                (fx+ _%start118017%_
                                     _%i118026%_
                                     (fx* _%i118026%_ _%i118026%_))))
                           (##fxmodulo _%next-probe118034%_ _%size118011%_))
                         (##fx+ _%i118026%_ '1))
                        (if (##string=? _%key118001%_ _%k118029%_)
                            (let ()
                              (vector-set!
                               _%table118003%_
                               _%probe118024%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118003%_
                               (##fx+ _%probe118024%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab118000%_
                               (##fx- (&raw-table-count _%tab118000%_) '1)))
                            (_%loop118021%_
                             (let ((_%next-probe118040%_
                                    (fx+ _%start118017%_
                                         _%i118026%_
                                         (fx* _%i118026%_ _%i118026%_))))
                               (##fxmodulo
                                _%next-probe118040%_
                                _%size118011%_))
                             (##fx+ _%i118026%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab117970%_ _%key117972%_)
        (let ((_%lock117975%_ (&raw-table-lock _%tab117970%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117980%_ ((_%spin117983%_ '0))
              (if (##fx= (##vector-cas! _%lock117975%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117975%_ '1 (current-thread))
                  (if (##fx< _%spin117983%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117980%_ (##fx+ _%spin117983%_ '1)))
                      (let ((_%owner117989%_ (##vector-ref _%lock117975%_ '1)))
                        (if (eq? _%owner117989%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117989%_)
                                (let () (##thread-yield!) (_%again117980%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117995%_
                 (string-table-delete! _%tab117970%_ _%key117972%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117975%_ '1 '#f)
                (##vector-cas! _%lock117975%_ '0 '0 '1)))
            _%$r117995%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint117952%_ _%seed117953%_)
        (make-raw-table__1
         _%size-hint117952%_
         immediate-hash
         eq?
         _%seed117953%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint117959%_ '#f) (_%seed117961%_ '0))
          (make-immediate-table__% _%size-hint117959%_ _%seed117961%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint117963%_)
        (let ((_%seed117965%_ '0))
          (make-immediate-table__% _%size-hint117963%_ _%seed117965%_))))
    (define make-immediate-table
      (lambda _g120004_
        (let ((_g120005_ (##length _g120004_)))
          (cond ((##fx= _g120005_ 0) (apply make-immediate-table__0 _g120004_))
                ((##fx= _g120005_ 1) (apply make-immediate-table__1 _g120004_))
                ((##fx= _g120005_ 2) (apply make-immediate-table__% _g120004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g120004_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint117932%_ _%seed117934%_)
        (make-raw-table/lock__%
         _%size-hint117932%_
         immediate-hash
         eq?
         _%seed117934%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint117940%_ '#f) (_%seed117942%_ '0))
          (make-immediate-table/lock__% _%size-hint117940%_ _%seed117942%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint117944%_)
        (let ((_%seed117946%_ '0))
          (make-immediate-table/lock__% _%size-hint117944%_ _%seed117946%_))))
    (define make-immediate-table/lock
      (lambda _g120006_
        (let ((_g120007_ (##length _g120006_)))
          (cond ((##fx= _g120007_ 0)
                 (apply make-immediate-table/lock__0 _g120006_))
                ((##fx= _g120007_ 1)
                 (apply make-immediate-table/lock__1 _g120006_))
                ((##fx= _g120007_ 2)
                 (apply make-immediate-table/lock__% _g120006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g120006_))))))
    (define immediate-table-ref
      (lambda (_%tab117885%_ _%key117886%_ _%default117887%_)
        (let ((_%table117889%_ (&raw-table-table _%tab117885%_))
              (_%seed117890%_ (&raw-table-seed _%tab117885%_)))
          (let* ((_%h117892%_
                  (fxxor (immediate-hash _%key117886%_) _%seed117890%_))
                 (_%size117895%_ (vector-length _%table117889%_))
                 (_%entries117898%_ (##fxquotient _%size117895%_ '2))
                 (_%start117901%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117892%_ _%entries117898%_)
                   '1)))
            (let _%loop117905%_ ((_%probe117908%_ _%start117901%_)
                                 (_%i117910%_ '1)
                                 (_%deleted117912%_ '#f))
              (let ((_%k117915%_ (vector-ref _%table117889%_ _%probe117908%_)))
                (if (eq? _%k117915%_ (macro-unused-obj))
                    _%default117887%_
                    (if (eq? _%k117915%_ (macro-deleted-obj))
                        (_%loop117905%_
                         (let ((_%next-probe117920%_
                                (fx+ _%start117901%_
                                     _%i117910%_
                                     (fx* _%i117910%_ _%i117910%_))))
                           (##fxmodulo _%next-probe117920%_ _%size117895%_))
                         (##fx+ _%i117910%_ '1)
                         (let ((_%$e117923%_ _%deleted117912%_))
                           (if _%$e117923%_ _%$e117923%_ _%probe117908%_)))
                        (if (eq? _%key117886%_ _%k117915%_)
                            (vector-ref
                             _%table117889%_
                             (##fx+ _%probe117908%_ '1))
                            (_%loop117905%_
                             (let ((_%next-probe117928%_
                                    (fx+ _%start117901%_
                                         _%i117910%_
                                         (fx* _%i117910%_ _%i117910%_))))
                               (##fxmodulo
                                _%next-probe117928%_
                                _%size117895%_))
                             (##fx+ _%i117910%_ '1)
                             _%deleted117912%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab117856%_ _%key117857%_ _%default117858%_)
        (let ((_%lock117860%_ (&raw-table-lock _%tab117856%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117865%_ ((_%spin117868%_ '0))
              (if (##fx= (##vector-cas! _%lock117860%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117860%_ '1 (current-thread))
                  (if (##fx< _%spin117868%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117865%_ (##fx+ _%spin117868%_ '1)))
                      (let ((_%owner117874%_ (##vector-ref _%lock117860%_ '1)))
                        (if (eq? _%owner117874%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117874%_)
                                (let () (##thread-yield!) (_%again117865%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117880%_
                 (immediate-table-ref
                  _%tab117856%_
                  _%key117857%_
                  _%default117858%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117860%_ '1 '#f)
                (##vector-cas! _%lock117860%_ '0 '0 '1)))
            _%$r117880%_))))
    (define __immediate-table-set!
      (lambda (_%tab117808%_ _%key117809%_ _%value117810%_)
        (let ((_%table117812%_ (&raw-table-table _%tab117808%_))
              (_%seed117813%_ (&raw-table-seed _%tab117808%_)))
          (let* ((_%h117815%_
                  (fxxor (immediate-hash _%key117809%_) _%seed117813%_))
                 (_%size117818%_ (vector-length _%table117812%_))
                 (_%entries117821%_ (##fxquotient _%size117818%_ '2))
                 (_%start117824%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117815%_ _%entries117821%_)
                   '1)))
            (let _%loop117828%_ ((_%probe117831%_ _%start117824%_)
                                 (_%i117833%_ '1)
                                 (_%deleted117835%_ '#f))
              (let ((_%k117838%_ (vector-ref _%table117812%_ _%probe117831%_)))
                (if (eq? _%k117838%_ (macro-unused-obj))
                    (if _%deleted117835%_
                        (begin
                          (vector-set!
                           _%table117812%_
                           _%deleted117835%_
                           _%key117809%_)
                          (vector-set!
                           _%table117812%_
                           (##fx+ _%deleted117835%_ '1)
                           _%value117810%_)
                          (&raw-table-count-set!
                           _%tab117808%_
                           (##fx+ (&raw-table-count _%tab117808%_) '1)))
                        (begin
                          (vector-set!
                           _%table117812%_
                           _%probe117831%_
                           _%key117809%_)
                          (vector-set!
                           _%table117812%_
                           (##fx+ _%probe117831%_ '1)
                           _%value117810%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab117808%_
                             (##fx- (&raw-table-free _%tab117808%_) '1))
                            (&raw-table-count-set!
                             _%tab117808%_
                             (##fx+ (&raw-table-count _%tab117808%_) '1)))))
                    (if (eq? _%k117838%_ (macro-deleted-obj))
                        (_%loop117828%_
                         (let ((_%next-probe117845%_
                                (fx+ _%start117824%_
                                     _%i117833%_
                                     (fx* _%i117833%_ _%i117833%_))))
                           (##fxmodulo _%next-probe117845%_ _%size117818%_))
                         (##fx+ _%i117833%_ '1)
                         (let ((_%$e117848%_ _%deleted117835%_))
                           (if _%$e117848%_ _%$e117848%_ _%probe117831%_)))
                        (if (eq? _%key117809%_ _%k117838%_)
                            (let ()
                              (vector-set!
                               _%table117812%_
                               _%probe117831%_
                               _%key117809%_)
                              (vector-set!
                               _%table117812%_
                               (##fx+ _%probe117831%_ '1)
                               _%value117810%_))
                            (_%loop117828%_
                             (let ((_%next-probe117853%_
                                    (fx+ _%start117824%_
                                         _%i117833%_
                                         (fx* _%i117833%_ _%i117833%_))))
                               (##fxmodulo
                                _%next-probe117853%_
                                _%size117818%_))
                             (##fx+ _%i117833%_ '1)
                             _%deleted117835%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab117804%_ _%key117805%_ _%value117806%_)
        (if (##fx< (&raw-table-free _%tab117804%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117804%_))
                    '4))
            (__raw-table-rehash! _%tab117804%_)
            '#!void)
        (__immediate-table-set! _%tab117804%_ _%key117805%_ _%value117806%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab117774%_ _%key117775%_ _%value117776%_)
        (let ((_%lock117779%_ (&raw-table-lock _%tab117774%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117784%_ ((_%spin117787%_ '0))
              (if (##fx= (##vector-cas! _%lock117779%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117779%_ '1 (current-thread))
                  (if (##fx< _%spin117787%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117784%_ (##fx+ _%spin117787%_ '1)))
                      (let ((_%owner117793%_ (##vector-ref _%lock117779%_ '1)))
                        (if (eq? _%owner117793%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117793%_)
                                (let () (##thread-yield!) (_%again117784%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117799%_
                 (immediate-table-set!
                  _%tab117774%_
                  _%key117775%_
                  _%value117776%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117779%_ '1 '#f)
                (##vector-cas! _%lock117779%_ '0 '0 '1)))
            _%$r117799%_))))
    (define __immediate-table-update!
      (lambda (_%tab117725%_
               _%key117726%_
               _%immediate-table-update!117727%_
               _%default117728%_)
        (let ((_%table117730%_ (&raw-table-table _%tab117725%_))
              (_%seed117731%_ (&raw-table-seed _%tab117725%_)))
          (let* ((_%h117733%_
                  (fxxor (immediate-hash _%key117726%_) _%seed117731%_))
                 (_%size117736%_ (vector-length _%table117730%_))
                 (_%entries117739%_ (##fxquotient _%size117736%_ '2))
                 (_%start117742%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117733%_ _%entries117739%_)
                   '1)))
            (let _%loop117746%_ ((_%probe117749%_ _%start117742%_)
                                 (_%i117751%_ '1)
                                 (_%deleted117753%_ '#f))
              (let ((_%k117756%_ (vector-ref _%table117730%_ _%probe117749%_)))
                (if (eq? _%k117756%_ (macro-unused-obj))
                    (if _%deleted117753%_
                        (begin
                          (vector-set!
                           _%table117730%_
                           _%deleted117753%_
                           _%key117726%_)
                          (vector-set!
                           _%table117730%_
                           (##fx+ _%deleted117753%_ '1)
                           (_%immediate-table-update!117727%_
                            _%default117728%_))
                          (&raw-table-count-set!
                           _%tab117725%_
                           (##fx+ (&raw-table-count _%tab117725%_) '1)))
                        (begin
                          (vector-set!
                           _%table117730%_
                           _%probe117749%_
                           _%key117726%_)
                          (vector-set!
                           _%table117730%_
                           (##fx+ _%probe117749%_ '1)
                           (_%immediate-table-update!117727%_
                            _%default117728%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab117725%_
                             (##fx- (&raw-table-free _%tab117725%_) '1))
                            (&raw-table-count-set!
                             _%tab117725%_
                             (##fx+ (&raw-table-count _%tab117725%_) '1)))))
                    (if (eq? _%k117756%_ (macro-deleted-obj))
                        (_%loop117746%_
                         (let ((_%next-probe117763%_
                                (fx+ _%start117742%_
                                     _%i117751%_
                                     (fx* _%i117751%_ _%i117751%_))))
                           (##fxmodulo _%next-probe117763%_ _%size117736%_))
                         (##fx+ _%i117751%_ '1)
                         (let ((_%$e117766%_ _%deleted117753%_))
                           (if _%$e117766%_ _%$e117766%_ _%probe117749%_)))
                        (if (eq? _%key117726%_ _%k117756%_)
                            (let ()
                              (vector-set!
                               _%table117730%_
                               _%probe117749%_
                               _%key117726%_)
                              (vector-set!
                               _%table117730%_
                               (##fx+ _%probe117749%_ '1)
                               (_%immediate-table-update!117727%_
                                (vector-ref
                                 _%table117730%_
                                 (##fx+ _%probe117749%_ '1)))))
                            (_%loop117746%_
                             (let ((_%next-probe117771%_
                                    (fx+ _%start117742%_
                                         _%i117751%_
                                         (fx* _%i117751%_ _%i117751%_))))
                               (##fxmodulo
                                _%next-probe117771%_
                                _%size117736%_))
                             (##fx+ _%i117751%_ '1)
                             _%deleted117753%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab117720%_
               _%key117721%_
               _%immediate-table-update!117722%_
               _%default117723%_)
        (if (##fx< (&raw-table-free _%tab117720%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117720%_))
                    '4))
            (__raw-table-rehash! _%tab117720%_)
            '#!void)
        (__immediate-table-update!
         _%tab117720%_
         _%key117721%_
         _%immediate-table-update!117722%_
         _%default117723%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab117689%_
               _%key117690%_
               _%immediate-table-update!117691%_
               _%default117692%_)
        (let ((_%lock117695%_ (&raw-table-lock _%tab117689%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117700%_ ((_%spin117703%_ '0))
              (if (##fx= (##vector-cas! _%lock117695%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117695%_ '1 (current-thread))
                  (if (##fx< _%spin117703%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117700%_ (##fx+ _%spin117703%_ '1)))
                      (let ((_%owner117709%_ (##vector-ref _%lock117695%_ '1)))
                        (if (eq? _%owner117709%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117709%_)
                                (let () (##thread-yield!) (_%again117700%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117715%_
                 (_%immediate-table-update!117691%_
                  _%tab117689%_
                  _%key117690%_
                  _%immediate-table-update!117691%_
                  _%default117692%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117695%_ '1 '#f)
                (##vector-cas! _%lock117695%_ '0 '0 '1)))
            _%$r117715%_))))
    (define immediate-table-delete!
      (lambda (_%tab117646%_ _%key117647%_)
        (let ((_%table117649%_ (&raw-table-table _%tab117646%_))
              (_%seed117651%_ (&raw-table-seed _%tab117646%_)))
          (let* ((_%h117654%_
                  (fxxor (immediate-hash _%key117647%_) _%seed117651%_))
                 (_%size117657%_ (vector-length _%table117649%_))
                 (_%entries117660%_ (##fxquotient _%size117657%_ '2))
                 (_%start117663%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117654%_ _%entries117660%_)
                   '1)))
            (let _%loop117667%_ ((_%probe117670%_ _%start117663%_)
                                 (_%i117672%_ '1))
              (let ((_%k117675%_ (vector-ref _%table117649%_ _%probe117670%_)))
                (if (eq? _%k117675%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117675%_ (macro-deleted-obj))
                        (_%loop117667%_
                         (let ((_%next-probe117680%_
                                (fx+ _%start117663%_
                                     _%i117672%_
                                     (fx* _%i117672%_ _%i117672%_))))
                           (##fxmodulo _%next-probe117680%_ _%size117657%_))
                         (##fx+ _%i117672%_ '1))
                        (if (eq? _%key117647%_ _%k117675%_)
                            (let ()
                              (vector-set!
                               _%table117649%_
                               _%probe117670%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117649%_
                               (##fx+ _%probe117670%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab117646%_
                               (##fx- (&raw-table-count _%tab117646%_) '1)))
                            (_%loop117667%_
                             (let ((_%next-probe117686%_
                                    (fx+ _%start117663%_
                                         _%i117672%_
                                         (fx* _%i117672%_ _%i117672%_))))
                               (##fxmodulo
                                _%next-probe117686%_
                                _%size117657%_))
                             (##fx+ _%i117672%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab117616%_ _%key117618%_)
        (let ((_%lock117621%_ (&raw-table-lock _%tab117616%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117626%_ ((_%spin117629%_ '0))
              (if (##fx= (##vector-cas! _%lock117621%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117621%_ '1 (current-thread))
                  (if (##fx< _%spin117629%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117626%_ (##fx+ _%spin117629%_ '1)))
                      (let ((_%owner117635%_ (##vector-ref _%lock117621%_ '1)))
                        (if (eq? _%owner117635%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117635%_)
                                (let () (##thread-yield!) (_%again117626%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117641%_
                 (immediate-table-delete! _%tab117616%_ _%key117618%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117621%_ '1 '#f)
                (##vector-cas! _%lock117621%_ '0 '0 '1)))
            _%$r117641%_))))
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
      (lambda (_%tab117614%_)
        (##unchecked-structure-ref
         _%tab117614%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab117612%_)
        (##unchecked-structure-ref
         _%tab117612%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab117610%_)
        (##unchecked-structure-ref
         _%tab117610%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab117607%_ _%val117608%_)
        (##unchecked-structure-set!
         _%tab117607%_
         _%val117608%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab117604%_ _%val117605%_)
        (##unchecked-structure-set!
         _%tab117604%_
         _%val117605%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab117601%_ _%val117602%_)
        (##unchecked-structure-set!
         _%tab117601%_
         _%val117602%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint117565%_
               _%klass117566%_
               _%flags117567%_
               _%lock117568%_)
        (let ((_%gcht117570%_
               (__gc-table-new
                (if (fixnum? _%size-hint117565%_) _%size-hint117565%_ '16)
                _%flags117567%_)))
          (##structure _%klass117566%_ _%gcht117570%_ '#f _%lock117568%_))))
    (define make-gc-table__0
      (lambda (_%size-hint117575%_)
        (let* ((_%klass117577%_ __gc-table::t)
               (_%flags117579%_ '0)
               (_%lock117581%_ '#f))
          (make-gc-table__%
           _%size-hint117575%_
           _%klass117577%_
           _%flags117579%_
           _%lock117581%_))))
    (define make-gc-table__1
      (lambda (_%size-hint117583%_ _%klass117584%_)
        (let* ((_%flags117586%_ '0) (_%lock117588%_ '#f))
          (make-gc-table__%
           _%size-hint117583%_
           _%klass117584%_
           _%flags117586%_
           _%lock117588%_))))
    (define make-gc-table__2
      (lambda (_%size-hint117590%_ _%klass117591%_ _%flags117592%_)
        (let ((_%lock117594%_ '#f))
          (make-gc-table__%
           _%size-hint117590%_
           _%klass117591%_
           _%flags117592%_
           _%lock117594%_))))
    (define make-gc-table
      (lambda _g120008_
        (let ((_g120009_ (##length _g120008_)))
          (cond ((##fx= _g120009_ 1) (apply make-gc-table__0 _g120008_))
                ((##fx= _g120009_ 2) (apply make-gc-table__1 _g120008_))
                ((##fx= _g120009_ 3) (apply make-gc-table__2 _g120008_))
                ((##fx= _g120009_ 4) (apply make-gc-table__% _g120008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g120008_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint117542%_ _%klass117543%_ _%flags117544%_)
        (make-gc-table__%
         _%size-hint117542%_
         _%klass117543%_
         _%flags117544%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint117549%_)
        (let* ((_%klass117551%_ __gc-table::t) (_%flags117553%_ '0))
          (make-gc-table/lock__%
           _%size-hint117549%_
           _%klass117551%_
           _%flags117553%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint117555%_ _%klass117556%_)
        (let ((_%flags117558%_ '0))
          (make-gc-table/lock__%
           _%size-hint117555%_
           _%klass117556%_
           _%flags117558%_))))
    (define make-gc-table/lock
      (lambda _g120010_
        (let ((_g120011_ (##length _g120010_)))
          (cond ((##fx= _g120011_ 1) (apply make-gc-table/lock__0 _g120010_))
                ((##fx= _g120011_ 2) (apply make-gc-table/lock__1 _g120010_))
                ((##fx= _g120011_ 3) (apply make-gc-table/lock__% _g120010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g120010_))))))
    (define __gc-table-immediate
      (lambda (_%tab117533%_)
        (let ((_%$e117535%_ (&gc-table-immediate _%tab117533%_)))
          (if _%$e117535%_
              _%$e117535%_
              (let ((_%immediate117539%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab117533%_ _%immediate117539%_)
                _%immediate117539%_)))))
    (define __gc-table-new
      (lambda (_%size117523%_ _%flags117524%_)
        (let* ((_%flags117526%_
                (##fxand _%flags117524%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags117528%_
                (fxior _%flags117526%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht117530%_
                (##gc-hash-table-allocate
                 _%size117523%_
                 _%flags117528%_
                 __gc-table-loads)))
          _%gcht117530%_)))
    (define __gc-table-e
      (lambda (_%tab117518%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht117521%_ (&gc-table-gcht _%tab117518%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht117521%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht117521%_
              (begin
                (__gc-table-rehash! _%tab117518%_)
                (&gc-table-gcht _%tab117518%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab117509%_)
        (let* ((_%old-table117511%_ (&gc-table-gcht _%tab117509%_))
               (_%new-table117513%_
                (##gc-hash-table-resize! _%old-table117511%_ __gc-table-loads))
               (_%gcht117515%_
                (##gc-hash-table-rehash!
                 _%old-table117511%_
                 _%new-table117513%_)))
          (&gc-table-gcht-set! _%tab117509%_ _%gcht117515%_))))
    (define gc-table-ref
      (lambda (_%tab117493%_ _%key117494%_ _%default117495%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key117494%_)
            (let* ((_%gcht117499%_ (__gc-table-e _%tab117493%_))
                   (_%value117501%_
                    (##gc-hash-table-ref _%gcht117499%_ _%key117494%_)))
              (if (eq? _%value117501%_ (macro-unused-obj))
                  _%default117495%_
                  _%value117501%_))
            (let ((_%$e117503%_ (&gc-table-immediate _%tab117493%_)))
              (if _%$e117503%_
                  (immediate-table-ref
                   _%$e117503%_
                   _%key117494%_
                   _%default117495%_)
                  _%default117495%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab117467%_ _%key117468%_ _%default117469%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117473%_ ((_%spin117476%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117467%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117467%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117476%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117473%_ (##fx+ _%spin117476%_ '1)))
                    (let ((_%owner117482%_
                           (##vector-ref (&gc-table-lock _%tab117467%_) '1)))
                      (if (eq? _%owner117482%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117482%_)
                              (let () (##thread-yield!) (_%again117473%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117488%_
               (gc-table-ref _%tab117467%_ _%key117468%_ _%default117469%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117467%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117467%_) '0 '0 '1)))
          _%$r117488%_)))
    (define gc-table-set!
      (lambda (_%tab117460%_ _%key117461%_ _%value117462%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key117461%_)
            (let ((_%gcht117465%_ (__gc-table-e _%tab117460%_)))
              (if (##gc-hash-table-set!
                   _%gcht117465%_
                   _%key117461%_
                   _%value117462%_)
                  (begin
                    (__gc-table-rehash! _%tab117460%_)
                    (gc-table-set!
                     _%tab117460%_
                     _%key117461%_
                     _%value117462%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab117460%_)
             _%key117461%_
             _%value117462%_))))
    (define gc-table-set/lock!
      (lambda (_%tab117434%_ _%key117435%_ _%value117436%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117440%_ ((_%spin117443%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117434%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117434%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117443%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117440%_ (##fx+ _%spin117443%_ '1)))
                    (let ((_%owner117449%_
                           (##vector-ref (&gc-table-lock _%tab117434%_) '1)))
                      (if (eq? _%owner117449%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117449%_)
                              (let () (##thread-yield!) (_%again117440%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117455%_
               (gc-table-set! _%tab117434%_ _%key117435%_ _%value117436%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117434%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117434%_) '0 '0 '1)))
          _%$r117455%_)))
    (define gc-table-update!
      (lambda (_%tab117427%_ _%key117428%_ _%update117429%_ _%default117430%_)
        (if (##mem-allocated? _%key117428%_)
            (let ((_%value117432%_
                   (gc-table-ref
                    _%tab117427%_
                    _%key117428%_
                    _%default117430%_)))
              (gc-table-set!
               _%tab117427%_
               _%key117428%_
               (_%update117429%_ _%value117432%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab117427%_)
             _%key117428%_
             _%update117429%_
             _%default117430%_))))
    (define gc-table-update!/lock
      (lambda (_%tab117400%_ _%key117401%_ _%update117402%_ _%default117403%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117407%_ ((_%spin117410%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117400%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117400%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117410%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117407%_ (##fx+ _%spin117410%_ '1)))
                    (let ((_%owner117416%_
                           (##vector-ref (&gc-table-lock _%tab117400%_) '1)))
                      (if (eq? _%owner117416%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117416%_)
                              (let () (##thread-yield!) (_%again117407%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117422%_
               (gc-table-update!
                _%tab117400%_
                _%key117401%_
                _%update117402%_
                _%default117403%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117400%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117400%_) '0 '0 '1)))
          _%$r117422%_)))
    (define gc-table-delete!
      (lambda (_%tab117388%_ _%key117389%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key117389%_)
            (let ((_%gcht117393%_ (__gc-table-e _%tab117388%_)))
              (if (##gc-hash-table-set!
                   _%gcht117393%_
                   _%key117389%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab117388%_)
                    (gc-table-delete! _%tab117388%_ _%key117389%_))
                  '#!void))
            (let ((_%$e117395%_ (&gc-table-immediate _%tab117388%_)))
              (if _%$e117395%_
                  (immediate-table-delete! _%$e117395%_ _%key117389%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab117363%_ _%key117364%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117368%_ ((_%spin117371%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117363%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117363%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117371%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117368%_ (##fx+ _%spin117371%_ '1)))
                    (let ((_%owner117377%_
                           (##vector-ref (&gc-table-lock _%tab117363%_) '1)))
                      (if (eq? _%owner117377%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117377%_)
                              (let () (##thread-yield!) (_%again117368%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117383%_ (gc-table-delete! _%tab117363%_ _%key117364%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117363%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117363%_) '0 '0 '1)))
          _%$r117383%_)))
    (define gc-table-for-each
      (lambda (_%tab117352%_ _%proc117353%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht117356%_ (__gc-table-e _%tab117352%_)))
            (##gc-hash-table-for-each _%proc117353%_ _%gcht117356%_))
          (let ((_%$e117358%_ (&gc-table-immediate _%tab117352%_)))
            (if _%$e117358%_
                (raw-table-for-each _%$e117358%_ _%proc117353%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab117327%_ _%proc117328%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117332%_ ((_%spin117335%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117327%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117327%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117335%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117332%_ (##fx+ _%spin117335%_ '1)))
                    (let ((_%owner117341%_
                           (##vector-ref (&gc-table-lock _%tab117327%_) '1)))
                      (if (eq? _%owner117341%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117341%_)
                              (let () (##thread-yield!) (_%again117332%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117347%_ (gc-table-for-each _%tab117327%_ _%proc117328%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117327%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117327%_) '0 '0 '1)))
          _%$r117347%_)))
    (define gc-table-copy
      (lambda (_%tab117315%_)
        (let* ((_%gcht117317%_ (__gc-table-e _%tab117315%_))
               (_%new-table117319%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht117317%_)
                 (macro-gc-hash-table-flags _%gcht117317%_)))
               (_%result117321%_
                (##structure
                 (##structure-type _%tab117315%_)
                 _%new-table117319%_
                 '#f)))
          (gc-table-for-each
           _%tab117315%_
           (lambda (_%k117324%_ _%v117325%_)
             (gc-table-set! _%result117321%_ _%k117324%_ _%v117325%_)))
          _%result117321%_)))
    (define gc-table-copy/lock
      (lambda (_%tab117291%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117295%_ ((_%spin117298%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117291%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117291%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117298%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117295%_ (##fx+ _%spin117298%_ '1)))
                    (let ((_%owner117304%_
                           (##vector-ref (&gc-table-lock _%tab117291%_) '1)))
                      (if (eq? _%owner117304%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117304%_)
                              (let () (##thread-yield!) (_%again117295%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117310%_ (gc-table-copy _%tab117291%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117291%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117291%_) '0 '0 '1)))
          _%$r117310%_)))
    (define gc-table-clear!
      (lambda (_%tab117284%_)
        (let* ((_%gcht117286%_ (__gc-table-e _%tab117284%_))
               (_%new-table117288%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht117286%_))))
          (&gc-table-gcht-set! _%tab117284%_ _%new-table117288%_)
          (&gc-table-immediate-set! _%tab117284%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab117260%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117264%_ ((_%spin117267%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117260%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117260%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117267%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117264%_ (##fx+ _%spin117267%_ '1)))
                    (let ((_%owner117273%_
                           (##vector-ref (&gc-table-lock _%tab117260%_) '1)))
                      (if (eq? _%owner117273%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117273%_)
                              (let () (##thread-yield!) (_%again117264%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117279%_ (gc-table-clear! _%tab117260%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117260%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117260%_) '0 '0 '1)))
          _%$r117279%_)))
    (define gc-table-length
      (lambda (_%tab117252%_)
        (let ((_%gcht117254%_ (__gc-table-e _%tab117252%_)))
          (fx+ (macro-gc-hash-table-count _%gcht117254%_)
               (let ((_%$e117256%_ (&gc-table-immediate _%tab117252%_)))
                 (if _%$e117256%_ (&raw-table-count _%$e117256%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab117228%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117232%_ ((_%spin117235%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117228%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117228%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117235%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117232%_ (##fx+ _%spin117235%_ '1)))
                    (let ((_%owner117241%_
                           (##vector-ref (&gc-table-lock _%tab117228%_) '1)))
                      (if (eq? _%owner117241%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117241%_)
                              (let () (##thread-yield!) (_%again117232%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117247%_ (gc-table-length _%tab117228%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117228%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117228%_) '0 '0 '1)))
          _%$r117247%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj117194%_)
        (declare (not interrupts-enabled))
        (let ((_%val117197%_
               (gc-table-ref __object-eq-hash _%obj117194%_ '#f)))
          (if _%val117197%_
              _%val117197%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again117201%_ ((_%spin117204%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin117204%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again117201%_ (##fx+ _%spin117204%_ '1)))
                            (let ((_%owner117210%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner117210%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner117210%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again117201%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r117223%_
                       (let ((_%val117216%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj117194%_
                               '#f)))
                         (if _%val117216%_
                             _%val117216%_
                             (let ((_%h117218%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e117220%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e117220%_ _%$e117220%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj117194%_
                                _%h117218%_)
                               _%h117218%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r117223%_))))))))
