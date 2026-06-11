(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1781138346)
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
      (lambda (_%obj120079%_)
        (if (##structure? _%obj120079%_)
            (##structure-instance-of? _%obj120079%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab120077%_)
        (##unchecked-structure-ref
         _%tab120077%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab120075%_)
        (##unchecked-structure-ref
         _%tab120075%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab120073%_)
        (##unchecked-structure-ref
         _%tab120073%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab120071%_)
        (##unchecked-structure-ref
         _%tab120071%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab120069%_)
        (##unchecked-structure-ref
         _%tab120069%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab120067%_)
        (##unchecked-structure-ref
         _%tab120067%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab120065%_)
        (##unchecked-structure-ref
         _%tab120065%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab120062%_ _%val120063%_)
        (##unchecked-structure-set!
         _%tab120062%_
         _%val120063%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab120059%_ _%val120060%_)
        (##unchecked-structure-set!
         _%tab120059%_
         _%val120060%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab120056%_ _%val120057%_)
        (##unchecked-structure-set!
         _%tab120056%_
         _%val120057%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab120053%_ _%val120054%_)
        (##unchecked-structure-set!
         _%tab120053%_
         _%val120054%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab120050%_ _%val120051%_)
        (##unchecked-structure-set!
         _%tab120050%_
         _%val120051%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab120047%_ _%val120048%_)
        (##unchecked-structure-set!
         _%tab120047%_
         _%val120048%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab120044%_ _%val120045%_)
        (##unchecked-structure-set!
         _%tab120044%_
         _%val120045%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint120042%_)
        (if (and (fixnum? _%size-hint120042%_) (##fx> _%size-hint120042%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint120042%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint120007%_
               _%hash120008%_
               _%test120009%_
               _%seed120010%_
               _%lock120011%_)
        (let* ((_%size120013%_ (raw-table-size-hint->size _%size-hint120007%_))
               (_%table120015%_
                (##make-vector _%size120013%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table120015%_
           '0
           (##fxquotient _%size120013%_ '2)
           _%hash120008%_
           _%test120009%_
           _%seed120010%_
           _%lock120011%_))))
    (define make-raw-table__0
      (lambda (_%size-hint120021%_ _%hash120022%_ _%test120023%_)
        (let* ((_%seed120025%_ '0) (_%lock120027%_ '#f))
          (make-raw-table__%
           _%size-hint120021%_
           _%hash120022%_
           _%test120023%_
           _%seed120025%_
           _%lock120027%_))))
    (define make-raw-table__1
      (lambda (_%size-hint120029%_
               _%hash120030%_
               _%test120031%_
               _%seed120032%_)
        (let ((_%lock120034%_ '#f))
          (make-raw-table__%
           _%size-hint120029%_
           _%hash120030%_
           _%test120031%_
           _%seed120032%_
           _%lock120034%_))))
    (define make-raw-table
      (lambda _g120080_
        (let ((_g120081_ (##length _g120080_)))
          (cond ((##fx= _g120081_ 3) (apply make-raw-table__0 _g120080_))
                ((##fx= _g120081_ 4) (apply make-raw-table__1 _g120080_))
                ((##fx= _g120081_ 5) (apply make-raw-table__% _g120080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g120080_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint119987%_
               _%hash119988%_
               _%test119989%_
               _%seed119990%_)
        (make-raw-table__%
         _%size-hint119987%_
         _%hash119988%_
         _%test119989%_
         _%seed119990%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint119995%_ _%hash119996%_ _%test119997%_)
        (let ((_%seed119999%_ '0))
          (make-raw-table/lock__%
           _%size-hint119995%_
           _%hash119996%_
           _%test119997%_
           _%seed119999%_))))
    (define make-raw-table/lock
      (lambda _g120082_
        (let ((_g120083_ (##length _g120082_)))
          (cond ((##fx= _g120083_ 3) (apply make-raw-table/lock__0 _g120082_))
                ((##fx= _g120083_ 4) (apply make-raw-table/lock__% _g120082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g120082_))))))
    (define raw-table-length
      (lambda (_%tab119984%_) (&raw-table-count _%tab119984%_)))
    (define raw-table-length/lock
      (lambda (_%tab119957%_)
        (let ((_%lock119959%_ (&raw-table-lock _%tab119957%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119964%_ ((_%spin119967%_ '0))
              (if (##fx= (##vector-cas! _%lock119959%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119959%_ '1 (current-thread))
                  (if (##fx< _%spin119967%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119964%_ (##fx+ _%spin119967%_ '1)))
                      (let ((_%owner119973%_ (##vector-ref _%lock119959%_ '1)))
                        (if (eq? _%owner119973%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119973%_)
                                (let () (##thread-yield!) (_%again119964%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119979%_ (&raw-table-count _%tab119957%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119959%_ '1 '#f)
                (##vector-cas! _%lock119959%_ '0 '0 '1)))
            _%$r119979%_))))
    (define raw-table-ref
      (lambda (_%tab119909%_ _%key119910%_ _%default119911%_)
        (let ((_%table119913%_ (&raw-table-table _%tab119909%_))
              (_%seed119914%_ (&raw-table-seed _%tab119909%_))
              (_%hash119915%_ (&raw-table-hash _%tab119909%_))
              (_%test119916%_ (&raw-table-test _%tab119909%_)))
          (let* ((_%h119918%_
                  (fxxor (_%hash119915%_ _%key119910%_) _%seed119914%_))
                 (_%size119921%_ (vector-length _%table119913%_))
                 (_%entries119924%_ (##fxquotient _%size119921%_ '2))
                 (_%start119927%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119918%_ _%entries119924%_)
                   '1)))
            (let _%loop119931%_ ((_%probe119934%_ _%start119927%_)
                                 (_%i119936%_ '1)
                                 (_%deleted119938%_ '#f))
              (let ((_%k119941%_ (vector-ref _%table119913%_ _%probe119934%_)))
                (if (eq? _%k119941%_ (macro-unused-obj))
                    _%default119911%_
                    (if (eq? _%k119941%_ (macro-deleted-obj))
                        (_%loop119931%_
                         (let ((_%next-probe119946%_
                                (fx+ _%start119927%_
                                     _%i119936%_
                                     (fx* _%i119936%_ _%i119936%_))))
                           (##fxmodulo _%next-probe119946%_ _%size119921%_))
                         (##fx+ _%i119936%_ '1)
                         (let ((_%$e119949%_ _%deleted119938%_))
                           (if _%$e119949%_ _%$e119949%_ _%probe119934%_)))
                        (if (_%test119916%_ _%key119910%_ _%k119941%_)
                            (vector-ref
                             _%table119913%_
                             (##fx+ _%probe119934%_ '1))
                            (_%loop119931%_
                             (let ((_%next-probe119954%_
                                    (fx+ _%start119927%_
                                         _%i119936%_
                                         (fx* _%i119936%_ _%i119936%_))))
                               (##fxmodulo
                                _%next-probe119954%_
                                _%size119921%_))
                             (##fx+ _%i119936%_ '1)
                             _%deleted119938%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab119880%_ _%key119881%_ _%default119882%_)
        (let ((_%lock119884%_ (&raw-table-lock _%tab119880%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119889%_ ((_%spin119892%_ '0))
              (if (##fx= (##vector-cas! _%lock119884%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119884%_ '1 (current-thread))
                  (if (##fx< _%spin119892%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119889%_ (##fx+ _%spin119892%_ '1)))
                      (let ((_%owner119898%_ (##vector-ref _%lock119884%_ '1)))
                        (if (eq? _%owner119898%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119898%_)
                                (let () (##thread-yield!) (_%again119889%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119904%_
                 (raw-table-ref
                  _%tab119880%_
                  _%key119881%_
                  _%default119882%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119884%_ '1 '#f)
                (##vector-cas! _%lock119884%_ '0 '0 '1)))
            _%$r119904%_))))
    (define raw-table-set!
      (lambda (_%tab119876%_ _%key119877%_ _%value119878%_)
        (if (##fx< (&raw-table-free _%tab119876%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119876%_))
                    '4))
            (__raw-table-rehash! _%tab119876%_)
            '#!void)
        (__raw-table-set! _%tab119876%_ _%key119877%_ _%value119878%_)))
    (define raw-table-set!/lock
      (lambda (_%tab119847%_ _%key119848%_ _%value119849%_)
        (let ((_%lock119851%_ (&raw-table-lock _%tab119847%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119856%_ ((_%spin119859%_ '0))
              (if (##fx= (##vector-cas! _%lock119851%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119851%_ '1 (current-thread))
                  (if (##fx< _%spin119859%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119856%_ (##fx+ _%spin119859%_ '1)))
                      (let ((_%owner119865%_ (##vector-ref _%lock119851%_ '1)))
                        (if (eq? _%owner119865%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119865%_)
                                (let () (##thread-yield!) (_%again119856%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119871%_
                 (raw-table-set! _%tab119847%_ _%key119848%_ _%value119849%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119851%_ '1 '#f)
                (##vector-cas! _%lock119851%_ '0 '0 '1)))
            _%$r119871%_))))
    (define raw-table-update!
      (lambda (_%tab119842%_ _%key119843%_ _%update119844%_ _%default119845%_)
        (if (##fx< (&raw-table-free _%tab119842%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119842%_))
                    '4))
            (__raw-table-rehash! _%tab119842%_)
            '#!void)
        (__raw-table-update!
         _%tab119842%_
         _%key119843%_
         _%update119844%_
         _%default119845%_)))
    (define raw-table-update!/lock
      (lambda (_%tab119812%_ _%key119813%_ _%update119814%_ _%default119815%_)
        (let ((_%lock119817%_ (&raw-table-lock _%tab119812%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119822%_ ((_%spin119825%_ '0))
              (if (##fx= (##vector-cas! _%lock119817%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119817%_ '1 (current-thread))
                  (if (##fx< _%spin119825%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119822%_ (##fx+ _%spin119825%_ '1)))
                      (let ((_%owner119831%_ (##vector-ref _%lock119817%_ '1)))
                        (if (eq? _%owner119831%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119831%_)
                                (let () (##thread-yield!) (_%again119822%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119837%_
                 (raw-table-update!
                  _%tab119812%_
                  _%key119813%_
                  _%update119814%_
                  _%default119815%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119817%_ '1 '#f)
                (##vector-cas! _%lock119817%_ '0 '0 '1)))
            _%$r119837%_))))
    (define raw-table-delete!
      (lambda (_%tab119769%_ _%key119770%_)
        (let ((_%table119772%_ (&raw-table-table _%tab119769%_))
              (_%seed119773%_ (&raw-table-seed _%tab119769%_))
              (_%hash119774%_ (&raw-table-hash _%tab119769%_))
              (_%test119775%_ (&raw-table-test _%tab119769%_)))
          (let* ((_%h119777%_
                  (fxxor (_%hash119774%_ _%key119770%_) _%seed119773%_))
                 (_%size119780%_ (vector-length _%table119772%_))
                 (_%entries119783%_ (##fxquotient _%size119780%_ '2))
                 (_%start119786%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119777%_ _%entries119783%_)
                   '1)))
            (let _%loop119790%_ ((_%probe119793%_ _%start119786%_)
                                 (_%i119795%_ '1))
              (let ((_%k119798%_ (vector-ref _%table119772%_ _%probe119793%_)))
                (if (eq? _%k119798%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119798%_ (macro-deleted-obj))
                        (_%loop119790%_
                         (let ((_%next-probe119803%_
                                (fx+ _%start119786%_
                                     _%i119795%_
                                     (fx* _%i119795%_ _%i119795%_))))
                           (##fxmodulo _%next-probe119803%_ _%size119780%_))
                         (##fx+ _%i119795%_ '1))
                        (if (_%test119775%_ _%key119770%_ _%k119798%_)
                            (let ()
                              (vector-set!
                               _%table119772%_
                               _%probe119793%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119772%_
                               (##fx+ _%probe119793%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab119769%_
                               (##fx- (&raw-table-count _%tab119769%_) '1)))
                            (_%loop119790%_
                             (let ((_%next-probe119809%_
                                    (fx+ _%start119786%_
                                         _%i119795%_
                                         (fx* _%i119795%_ _%i119795%_))))
                               (##fxmodulo
                                _%next-probe119809%_
                                _%size119780%_))
                             (##fx+ _%i119795%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab119741%_ _%key119742%_)
        (let ((_%lock119744%_ (&raw-table-lock _%tab119741%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119749%_ ((_%spin119752%_ '0))
              (if (##fx= (##vector-cas! _%lock119744%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119744%_ '1 (current-thread))
                  (if (##fx< _%spin119752%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119749%_ (##fx+ _%spin119752%_ '1)))
                      (let ((_%owner119758%_ (##vector-ref _%lock119744%_ '1)))
                        (if (eq? _%owner119758%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119758%_)
                                (let () (##thread-yield!) (_%again119749%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119764%_ (raw-table-delete! _%tab119741%_ _%key119742%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119744%_ '1 '#f)
                (##vector-cas! _%lock119744%_ '0 '0 '1)))
            _%$r119764%_))))
    (define raw-table-for-each
      (lambda (_%tab119725%_ _%proc119726%_)
        (let* ((_%table119728%_ (&raw-table-table _%tab119725%_))
               (_%size119730%_ (vector-length _%table119728%_)))
          (let _%loop119733%_ ((_%i119735%_ '0))
            (if (##fx< _%i119735%_ _%size119730%_)
                (begin
                  (let ((_%key119737%_
                         (vector-ref _%table119728%_ _%i119735%_)))
                    (if (if (eq? _%key119737%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key119737%_ (macro-deleted-obj))))
                        (let ((_%value119739%_
                               (vector-ref
                                _%table119728%_
                                (##fx+ _%i119735%_ '1))))
                          (_%proc119726%_ _%key119737%_ _%value119739%_))
                        '#!void))
                  (_%loop119733%_ (##fx+ _%i119735%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab119697%_ _%proc119698%_)
        (let ((_%lock119700%_ (&raw-table-lock _%tab119697%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119705%_ ((_%spin119708%_ '0))
              (if (##fx= (##vector-cas! _%lock119700%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119700%_ '1 (current-thread))
                  (if (##fx< _%spin119708%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119705%_ (##fx+ _%spin119708%_ '1)))
                      (let ((_%owner119714%_ (##vector-ref _%lock119700%_ '1)))
                        (if (eq? _%owner119714%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119714%_)
                                (let () (##thread-yield!) (_%again119705%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119720%_
                 (raw-table-for-each _%tab119697%_ _%proc119698%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119700%_ '1 '#f)
                (##vector-cas! _%lock119700%_ '0 '0 '1)))
            _%$r119720%_))))
    (define raw-table-copy
      (lambda (_%tab119693%_)
        (let ((_%new-tab119695%_ (##structure-copy _%tab119693%_)))
          (&raw-table-table-set!
           _%new-tab119695%_
           (vector-copy (&raw-table-table _%tab119693%_)))
          _%new-tab119695%_)))
    (define raw-table-copy/lock
      (lambda (_%tab119666%_)
        (let ((_%lock119668%_ (&raw-table-lock _%tab119666%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119673%_ ((_%spin119676%_ '0))
              (if (##fx= (##vector-cas! _%lock119668%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119668%_ '1 (current-thread))
                  (if (##fx< _%spin119676%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119673%_ (##fx+ _%spin119676%_ '1)))
                      (let ((_%owner119682%_ (##vector-ref _%lock119668%_ '1)))
                        (if (eq? _%owner119682%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119682%_)
                                (let () (##thread-yield!) (_%again119673%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119688%_ (raw-table-copy _%tab119666%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119668%_ '1 '#f)
                (##vector-cas! _%lock119668%_ '0 '0 '1)))
            _%$r119688%_))))
    (define raw-table-clear!
      (lambda (_%tab119664%_)
        (vector-fill! (&raw-table-table _%tab119664%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab119664%_ '0)
        (&raw-table-free-set!
         _%tab119664%_
         (##fxquotient (vector-length (&raw-table-table _%tab119664%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab119637%_)
        (let ((_%lock119639%_ (&raw-table-lock _%tab119637%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119644%_ ((_%spin119647%_ '0))
              (if (##fx= (##vector-cas! _%lock119639%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119639%_ '1 (current-thread))
                  (if (##fx< _%spin119647%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119644%_ (##fx+ _%spin119647%_ '1)))
                      (let ((_%owner119653%_ (##vector-ref _%lock119639%_ '1)))
                        (if (eq? _%owner119653%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119653%_)
                                (let () (##thread-yield!) (_%again119644%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119659%_ (raw-table-clear! _%tab119637%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119639%_ '1 '#f)
                (##vector-cas! _%lock119639%_ '0 '0 '1)))
            _%$r119659%_))))
    (define __raw-table-set!
      (lambda (_%tab119587%_ _%key119588%_ _%value119589%_)
        (let ((_%table119591%_ (&raw-table-table _%tab119587%_))
              (_%seed119592%_ (&raw-table-seed _%tab119587%_))
              (_%hash119593%_ (&raw-table-hash _%tab119587%_))
              (_%test119594%_ (&raw-table-test _%tab119587%_)))
          (let* ((_%h119596%_
                  (fxxor (_%hash119593%_ _%key119588%_) _%seed119592%_))
                 (_%size119599%_ (vector-length _%table119591%_))
                 (_%entries119602%_ (##fxquotient _%size119599%_ '2))
                 (_%start119605%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119596%_ _%entries119602%_)
                   '1)))
            (let _%loop119609%_ ((_%probe119612%_ _%start119605%_)
                                 (_%i119614%_ '1)
                                 (_%deleted119616%_ '#f))
              (let ((_%k119619%_ (vector-ref _%table119591%_ _%probe119612%_)))
                (if (eq? _%k119619%_ (macro-unused-obj))
                    (if _%deleted119616%_
                        (begin
                          (vector-set!
                           _%table119591%_
                           _%deleted119616%_
                           _%key119588%_)
                          (vector-set!
                           _%table119591%_
                           (##fx+ _%deleted119616%_ '1)
                           _%value119589%_)
                          (&raw-table-count-set!
                           _%tab119587%_
                           (##fx+ (&raw-table-count _%tab119587%_) '1)))
                        (begin
                          (vector-set!
                           _%table119591%_
                           _%probe119612%_
                           _%key119588%_)
                          (vector-set!
                           _%table119591%_
                           (##fx+ _%probe119612%_ '1)
                           _%value119589%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab119587%_
                             (##fx- (&raw-table-free _%tab119587%_) '1))
                            (&raw-table-count-set!
                             _%tab119587%_
                             (##fx+ (&raw-table-count _%tab119587%_) '1)))))
                    (if (eq? _%k119619%_ (macro-deleted-obj))
                        (_%loop119609%_
                         (let ((_%next-probe119626%_
                                (fx+ _%start119605%_
                                     _%i119614%_
                                     (fx* _%i119614%_ _%i119614%_))))
                           (##fxmodulo _%next-probe119626%_ _%size119599%_))
                         (##fx+ _%i119614%_ '1)
                         (let ((_%$e119629%_ _%deleted119616%_))
                           (if _%$e119629%_ _%$e119629%_ _%probe119612%_)))
                        (if (_%test119594%_ _%key119588%_ _%k119619%_)
                            (let ()
                              (vector-set!
                               _%table119591%_
                               _%probe119612%_
                               _%key119588%_)
                              (vector-set!
                               _%table119591%_
                               (##fx+ _%probe119612%_ '1)
                               _%value119589%_))
                            (_%loop119609%_
                             (let ((_%next-probe119634%_
                                    (fx+ _%start119605%_
                                         _%i119614%_
                                         (fx* _%i119614%_ _%i119614%_))))
                               (##fxmodulo
                                _%next-probe119634%_
                                _%size119599%_))
                             (##fx+ _%i119614%_ '1)
                             _%deleted119616%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab119536%_ _%key119537%_ _%update119538%_ _%default119539%_)
        (let ((_%table119541%_ (&raw-table-table _%tab119536%_))
              (_%seed119542%_ (&raw-table-seed _%tab119536%_))
              (_%hash119543%_ (&raw-table-hash _%tab119536%_))
              (_%test119544%_ (&raw-table-test _%tab119536%_)))
          (let* ((_%h119546%_
                  (fxxor (_%hash119543%_ _%key119537%_) _%seed119542%_))
                 (_%size119549%_ (vector-length _%table119541%_))
                 (_%entries119552%_ (##fxquotient _%size119549%_ '2))
                 (_%start119555%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119546%_ _%entries119552%_)
                   '1)))
            (let _%loop119559%_ ((_%probe119562%_ _%start119555%_)
                                 (_%i119564%_ '1)
                                 (_%deleted119566%_ '#f))
              (let ((_%k119569%_ (vector-ref _%table119541%_ _%probe119562%_)))
                (if (eq? _%k119569%_ (macro-unused-obj))
                    (if _%deleted119566%_
                        (begin
                          (vector-set!
                           _%table119541%_
                           _%deleted119566%_
                           _%key119537%_)
                          (vector-set!
                           _%table119541%_
                           (##fx+ _%deleted119566%_ '1)
                           (_%update119538%_ _%default119539%_))
                          (&raw-table-count-set!
                           _%tab119536%_
                           (##fx+ (&raw-table-count _%tab119536%_) '1)))
                        (begin
                          (vector-set!
                           _%table119541%_
                           _%probe119562%_
                           _%key119537%_)
                          (vector-set!
                           _%table119541%_
                           (##fx+ _%probe119562%_ '1)
                           (_%update119538%_ _%default119539%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab119536%_
                             (##fx- (&raw-table-free _%tab119536%_) '1))
                            (&raw-table-count-set!
                             _%tab119536%_
                             (##fx+ (&raw-table-count _%tab119536%_) '1)))))
                    (if (eq? _%k119569%_ (macro-deleted-obj))
                        (_%loop119559%_
                         (let ((_%next-probe119576%_
                                (fx+ _%start119555%_
                                     _%i119564%_
                                     (fx* _%i119564%_ _%i119564%_))))
                           (##fxmodulo _%next-probe119576%_ _%size119549%_))
                         (##fx+ _%i119564%_ '1)
                         (let ((_%$e119579%_ _%deleted119566%_))
                           (if _%$e119579%_ _%$e119579%_ _%probe119562%_)))
                        (if (_%test119544%_ _%key119537%_ _%k119569%_)
                            (let ()
                              (vector-set!
                               _%table119541%_
                               _%probe119562%_
                               _%key119537%_)
                              (vector-set!
                               _%table119541%_
                               (##fx+ _%probe119562%_ '1)
                               (_%update119538%_
                                (vector-ref
                                 _%table119541%_
                                 (##fx+ _%probe119562%_ '1)))))
                            (_%loop119559%_
                             (let ((_%next-probe119584%_
                                    (fx+ _%start119555%_
                                         _%i119564%_
                                         (fx* _%i119564%_ _%i119564%_))))
                               (##fxmodulo
                                _%next-probe119584%_
                                _%size119549%_))
                             (##fx+ _%i119564%_ '1)
                             _%deleted119566%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab119517%_)
        (let* ((_%old-table119519%_ (&raw-table-table _%tab119517%_))
               (_%old-size119521%_ (vector-length _%old-table119519%_))
               (_%new-size119523%_
                (if (##fx< (&raw-table-count _%tab119517%_)
                           (##fxquotient _%old-size119521%_ '4))
                    (vector-length _%old-table119519%_)
                    (##fx* '2 (vector-length _%old-table119519%_))))
               (_%new-table119525%_
                (##make-vector _%new-size119523%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab119517%_ _%new-table119525%_)
          (&raw-table-count-set! _%tab119517%_ '0)
          (&raw-table-free-set!
           _%tab119517%_
           (##fxquotient _%new-size119523%_ '2))
          (let _%lp119528%_ ((_%i119530%_ '0))
            (if (##fx< _%i119530%_ _%old-size119521%_)
                (begin
                  (let ((_%key119532%_
                         (vector-ref _%old-table119519%_ _%i119530%_)))
                    (if (if (eq? _%key119532%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key119532%_ (macro-deleted-obj))))
                        (let ((_%value119534%_
                               (vector-ref
                                _%old-table119519%_
                                (##fx+ _%i119530%_ '1))))
                          (__raw-table-set!
                           _%tab119517%_
                           _%key119532%_
                           _%value119534%_))
                        '#!void))
                  (_%lp119528%_ (##fx+ _%i119530%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj119509%_)
        (let ((_%t119511%_ (##type _%obj119509%_)))
          (if (##fx= (##fxand _%t119511%_ '1) '0)
              (fxand (##type-cast _%obj119509%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj119509%_)
                  (##symbol-hash _%obj119509%_)
                  (if (procedure? _%obj119509%_)
                      (procedure-hash _%obj119509%_)
                      (fxand (__object->eq-hash _%obj119509%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj119505%_)
        (let ((_%h119507%_
               (if (##closure? _%obj119505%_)
                   (__object->eq-hash _%obj119505%_)
                   (##type-cast _%obj119505%_ '0))))
          (fxand _%h119507%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj119503%_) (__object->eq-hash _%obj119503%_)))
    (define eqv-hash
      (lambda (_%obj119493%_)
        (letrec ((_%combine119495%_
                  (lambda (_%a119500%_ _%b119501%_)
                    (fxand (##fx* (##fx+ _%a119500%_
                                         (fxarithmetic-shift-left
                                          _%b119501%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash119496%_
                  (lambda (_%obj119498%_)
                    (macro-number-dispatch
                     _%obj119498%_
                     (eq-hash _%obj119498%_)
                     (fxand _%obj119498%_ (macro-max-fixnum32))
                     (modulo _%obj119498%_ '331804481)
                     (_%combine119495%_
                      (_%hash119496%_ (macro-ratnum-numerator _%obj119498%_))
                      (_%hash119496%_
                       (macro-ratnum-denominator _%obj119498%_)))
                     (_%combine119495%_
                      (##u16vector-ref _%obj119498%_ '0)
                      (_%combine119495%_
                       (##u16vector-ref _%obj119498%_ '1)
                       (_%combine119495%_
                        (##u16vector-ref _%obj119498%_ '2)
                        (##u16vector-ref _%obj119498%_ '3))))
                     (_%combine119495%_
                      (_%hash119496%_ (macro-cpxnum-real _%obj119498%_))
                      (_%hash119496%_ (macro-cpxnum-imag _%obj119498%_)))))))
          (_%hash119496%_ _%obj119493%_))))
    (define symbolic?
      (lambda (_%obj119488%_)
        (let ((_%$e119490%_ (symbol? _%obj119488%_)))
          (if _%$e119490%_ _%$e119490%_ (keyword? _%obj119488%_)))))
    (define symbolic-hash
      (lambda (_%obj119486%_) (##symbol-hash _%obj119486%_)))
    (define string-hash
      (lambda (_%obj119484%_) (##string=?-hash _%obj119484%_)))
    (define immediate-hash
      (lambda (_%obj119482%_) (##type-cast _%obj119482%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint119464%_ _%seed119465%_)
        (make-raw-table__1 _%size-hint119464%_ eq-hash eq? _%seed119465%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint119471%_ '#f) (_%seed119473%_ '0))
          (make-eq-table__% _%size-hint119471%_ _%seed119473%_))))
    (define make-eq-table__1
      (lambda (_%size-hint119475%_)
        (let ((_%seed119477%_ '0))
          (make-eq-table__% _%size-hint119475%_ _%seed119477%_))))
    (define make-eq-table
      (lambda _g120084_
        (let ((_g120085_ (##length _g120084_)))
          (cond ((##fx= _g120085_ 0) (apply make-eq-table__0 _g120084_))
                ((##fx= _g120085_ 1) (apply make-eq-table__1 _g120084_))
                ((##fx= _g120085_ 2) (apply make-eq-table__% _g120084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g120084_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint119444%_ _%seed119446%_)
        (make-raw-table/lock__%
         _%size-hint119444%_
         eq-hash
         eq?
         _%seed119446%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint119452%_ '#f) (_%seed119454%_ '0))
          (make-eq-table/lock__% _%size-hint119452%_ _%seed119454%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint119456%_)
        (let ((_%seed119458%_ '0))
          (make-eq-table/lock__% _%size-hint119456%_ _%seed119458%_))))
    (define make-eq-table/lock
      (lambda _g120086_
        (let ((_g120087_ (##length _g120086_)))
          (cond ((##fx= _g120087_ 0) (apply make-eq-table/lock__0 _g120086_))
                ((##fx= _g120087_ 1) (apply make-eq-table/lock__1 _g120086_))
                ((##fx= _g120087_ 2) (apply make-eq-table/lock__% _g120086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g120086_))))))
    (define eq-table-ref
      (lambda (_%tab119397%_ _%key119398%_ _%default119399%_)
        (let ((_%table119401%_ (&raw-table-table _%tab119397%_))
              (_%seed119402%_ (&raw-table-seed _%tab119397%_)))
          (let* ((_%h119404%_ (fxxor (eq-hash _%key119398%_) _%seed119402%_))
                 (_%size119407%_ (vector-length _%table119401%_))
                 (_%entries119410%_ (##fxquotient _%size119407%_ '2))
                 (_%start119413%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119404%_ _%entries119410%_)
                   '1)))
            (let _%loop119417%_ ((_%probe119420%_ _%start119413%_)
                                 (_%i119422%_ '1)
                                 (_%deleted119424%_ '#f))
              (let ((_%k119427%_ (vector-ref _%table119401%_ _%probe119420%_)))
                (if (eq? _%k119427%_ (macro-unused-obj))
                    _%default119399%_
                    (if (eq? _%k119427%_ (macro-deleted-obj))
                        (_%loop119417%_
                         (let ((_%next-probe119432%_
                                (fx+ _%start119413%_
                                     _%i119422%_
                                     (fx* _%i119422%_ _%i119422%_))))
                           (##fxmodulo _%next-probe119432%_ _%size119407%_))
                         (##fx+ _%i119422%_ '1)
                         (let ((_%$e119435%_ _%deleted119424%_))
                           (if _%$e119435%_ _%$e119435%_ _%probe119420%_)))
                        (if (eq? _%key119398%_ _%k119427%_)
                            (vector-ref
                             _%table119401%_
                             (##fx+ _%probe119420%_ '1))
                            (_%loop119417%_
                             (let ((_%next-probe119440%_
                                    (fx+ _%start119413%_
                                         _%i119422%_
                                         (fx* _%i119422%_ _%i119422%_))))
                               (##fxmodulo
                                _%next-probe119440%_
                                _%size119407%_))
                             (##fx+ _%i119422%_ '1)
                             _%deleted119424%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab119368%_ _%key119369%_ _%default119370%_)
        (let ((_%lock119372%_ (&raw-table-lock _%tab119368%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119377%_ ((_%spin119380%_ '0))
              (if (##fx= (##vector-cas! _%lock119372%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119372%_ '1 (current-thread))
                  (if (##fx< _%spin119380%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119377%_ (##fx+ _%spin119380%_ '1)))
                      (let ((_%owner119386%_ (##vector-ref _%lock119372%_ '1)))
                        (if (eq? _%owner119386%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119386%_)
                                (let () (##thread-yield!) (_%again119377%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119392%_
                 (eq-table-ref _%tab119368%_ _%key119369%_ _%default119370%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119372%_ '1 '#f)
                (##vector-cas! _%lock119372%_ '0 '0 '1)))
            _%$r119392%_))))
    (define __eq-table-set!
      (lambda (_%tab119320%_ _%key119321%_ _%value119322%_)
        (let ((_%table119324%_ (&raw-table-table _%tab119320%_))
              (_%seed119325%_ (&raw-table-seed _%tab119320%_)))
          (let* ((_%h119327%_ (fxxor (eq-hash _%key119321%_) _%seed119325%_))
                 (_%size119330%_ (vector-length _%table119324%_))
                 (_%entries119333%_ (##fxquotient _%size119330%_ '2))
                 (_%start119336%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119327%_ _%entries119333%_)
                   '1)))
            (let _%loop119340%_ ((_%probe119343%_ _%start119336%_)
                                 (_%i119345%_ '1)
                                 (_%deleted119347%_ '#f))
              (let ((_%k119350%_ (vector-ref _%table119324%_ _%probe119343%_)))
                (if (eq? _%k119350%_ (macro-unused-obj))
                    (if _%deleted119347%_
                        (begin
                          (vector-set!
                           _%table119324%_
                           _%deleted119347%_
                           _%key119321%_)
                          (vector-set!
                           _%table119324%_
                           (##fx+ _%deleted119347%_ '1)
                           _%value119322%_)
                          (&raw-table-count-set!
                           _%tab119320%_
                           (##fx+ (&raw-table-count _%tab119320%_) '1)))
                        (begin
                          (vector-set!
                           _%table119324%_
                           _%probe119343%_
                           _%key119321%_)
                          (vector-set!
                           _%table119324%_
                           (##fx+ _%probe119343%_ '1)
                           _%value119322%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab119320%_
                             (##fx- (&raw-table-free _%tab119320%_) '1))
                            (&raw-table-count-set!
                             _%tab119320%_
                             (##fx+ (&raw-table-count _%tab119320%_) '1)))))
                    (if (eq? _%k119350%_ (macro-deleted-obj))
                        (_%loop119340%_
                         (let ((_%next-probe119357%_
                                (fx+ _%start119336%_
                                     _%i119345%_
                                     (fx* _%i119345%_ _%i119345%_))))
                           (##fxmodulo _%next-probe119357%_ _%size119330%_))
                         (##fx+ _%i119345%_ '1)
                         (let ((_%$e119360%_ _%deleted119347%_))
                           (if _%$e119360%_ _%$e119360%_ _%probe119343%_)))
                        (if (eq? _%key119321%_ _%k119350%_)
                            (let ()
                              (vector-set!
                               _%table119324%_
                               _%probe119343%_
                               _%key119321%_)
                              (vector-set!
                               _%table119324%_
                               (##fx+ _%probe119343%_ '1)
                               _%value119322%_))
                            (_%loop119340%_
                             (let ((_%next-probe119365%_
                                    (fx+ _%start119336%_
                                         _%i119345%_
                                         (fx* _%i119345%_ _%i119345%_))))
                               (##fxmodulo
                                _%next-probe119365%_
                                _%size119330%_))
                             (##fx+ _%i119345%_ '1)
                             _%deleted119347%_))))))))))
    (define eq-table-set!
      (lambda (_%tab119316%_ _%key119317%_ _%value119318%_)
        (if (##fx< (&raw-table-free _%tab119316%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119316%_))
                    '4))
            (__raw-table-rehash! _%tab119316%_)
            '#!void)
        (__eq-table-set! _%tab119316%_ _%key119317%_ _%value119318%_)))
    (define eq-table-set!/lock
      (lambda (_%tab119286%_ _%key119287%_ _%value119288%_)
        (let ((_%lock119291%_ (&raw-table-lock _%tab119286%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119296%_ ((_%spin119299%_ '0))
              (if (##fx= (##vector-cas! _%lock119291%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119291%_ '1 (current-thread))
                  (if (##fx< _%spin119299%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119296%_ (##fx+ _%spin119299%_ '1)))
                      (let ((_%owner119305%_ (##vector-ref _%lock119291%_ '1)))
                        (if (eq? _%owner119305%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119305%_)
                                (let () (##thread-yield!) (_%again119296%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119311%_
                 (eq-table-set! _%tab119286%_ _%key119287%_ _%value119288%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119291%_ '1 '#f)
                (##vector-cas! _%lock119291%_ '0 '0 '1)))
            _%$r119311%_))))
    (define __eq-table-update!
      (lambda (_%tab119237%_
               _%key119238%_
               _%eq-table-update!119239%_
               _%default119240%_)
        (let ((_%table119242%_ (&raw-table-table _%tab119237%_))
              (_%seed119243%_ (&raw-table-seed _%tab119237%_)))
          (let* ((_%h119245%_ (fxxor (eq-hash _%key119238%_) _%seed119243%_))
                 (_%size119248%_ (vector-length _%table119242%_))
                 (_%entries119251%_ (##fxquotient _%size119248%_ '2))
                 (_%start119254%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119245%_ _%entries119251%_)
                   '1)))
            (let _%loop119258%_ ((_%probe119261%_ _%start119254%_)
                                 (_%i119263%_ '1)
                                 (_%deleted119265%_ '#f))
              (let ((_%k119268%_ (vector-ref _%table119242%_ _%probe119261%_)))
                (if (eq? _%k119268%_ (macro-unused-obj))
                    (if _%deleted119265%_
                        (begin
                          (vector-set!
                           _%table119242%_
                           _%deleted119265%_
                           _%key119238%_)
                          (vector-set!
                           _%table119242%_
                           (##fx+ _%deleted119265%_ '1)
                           (_%eq-table-update!119239%_ _%default119240%_))
                          (&raw-table-count-set!
                           _%tab119237%_
                           (##fx+ (&raw-table-count _%tab119237%_) '1)))
                        (begin
                          (vector-set!
                           _%table119242%_
                           _%probe119261%_
                           _%key119238%_)
                          (vector-set!
                           _%table119242%_
                           (##fx+ _%probe119261%_ '1)
                           (_%eq-table-update!119239%_ _%default119240%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab119237%_
                             (##fx- (&raw-table-free _%tab119237%_) '1))
                            (&raw-table-count-set!
                             _%tab119237%_
                             (##fx+ (&raw-table-count _%tab119237%_) '1)))))
                    (if (eq? _%k119268%_ (macro-deleted-obj))
                        (_%loop119258%_
                         (let ((_%next-probe119275%_
                                (fx+ _%start119254%_
                                     _%i119263%_
                                     (fx* _%i119263%_ _%i119263%_))))
                           (##fxmodulo _%next-probe119275%_ _%size119248%_))
                         (##fx+ _%i119263%_ '1)
                         (let ((_%$e119278%_ _%deleted119265%_))
                           (if _%$e119278%_ _%$e119278%_ _%probe119261%_)))
                        (if (eq? _%key119238%_ _%k119268%_)
                            (let ()
                              (vector-set!
                               _%table119242%_
                               _%probe119261%_
                               _%key119238%_)
                              (vector-set!
                               _%table119242%_
                               (##fx+ _%probe119261%_ '1)
                               (_%eq-table-update!119239%_
                                (vector-ref
                                 _%table119242%_
                                 (##fx+ _%probe119261%_ '1)))))
                            (_%loop119258%_
                             (let ((_%next-probe119283%_
                                    (fx+ _%start119254%_
                                         _%i119263%_
                                         (fx* _%i119263%_ _%i119263%_))))
                               (##fxmodulo
                                _%next-probe119283%_
                                _%size119248%_))
                             (##fx+ _%i119263%_ '1)
                             _%deleted119265%_))))))))))
    (define eq-table-update!
      (lambda (_%tab119232%_
               _%key119233%_
               _%eq-table-update!119234%_
               _%default119235%_)
        (if (##fx< (&raw-table-free _%tab119232%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119232%_))
                    '4))
            (__raw-table-rehash! _%tab119232%_)
            '#!void)
        (__eq-table-update!
         _%tab119232%_
         _%key119233%_
         _%eq-table-update!119234%_
         _%default119235%_)))
    (define eq-table-update!/lock
      (lambda (_%tab119201%_
               _%key119202%_
               _%eq-table-update!119203%_
               _%default119204%_)
        (let ((_%lock119207%_ (&raw-table-lock _%tab119201%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119212%_ ((_%spin119215%_ '0))
              (if (##fx= (##vector-cas! _%lock119207%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119207%_ '1 (current-thread))
                  (if (##fx< _%spin119215%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119212%_ (##fx+ _%spin119215%_ '1)))
                      (let ((_%owner119221%_ (##vector-ref _%lock119207%_ '1)))
                        (if (eq? _%owner119221%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119221%_)
                                (let () (##thread-yield!) (_%again119212%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119227%_
                 (_%eq-table-update!119203%_
                  _%tab119201%_
                  _%key119202%_
                  _%eq-table-update!119203%_
                  _%default119204%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119207%_ '1 '#f)
                (##vector-cas! _%lock119207%_ '0 '0 '1)))
            _%$r119227%_))))
    (define eq-table-delete!
      (lambda (_%tab119158%_ _%key119159%_)
        (let ((_%table119161%_ (&raw-table-table _%tab119158%_))
              (_%seed119163%_ (&raw-table-seed _%tab119158%_)))
          (let* ((_%h119166%_ (fxxor (eq-hash _%key119159%_) _%seed119163%_))
                 (_%size119169%_ (vector-length _%table119161%_))
                 (_%entries119172%_ (##fxquotient _%size119169%_ '2))
                 (_%start119175%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119166%_ _%entries119172%_)
                   '1)))
            (let _%loop119179%_ ((_%probe119182%_ _%start119175%_)
                                 (_%i119184%_ '1))
              (let ((_%k119187%_ (vector-ref _%table119161%_ _%probe119182%_)))
                (if (eq? _%k119187%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119187%_ (macro-deleted-obj))
                        (_%loop119179%_
                         (let ((_%next-probe119192%_
                                (fx+ _%start119175%_
                                     _%i119184%_
                                     (fx* _%i119184%_ _%i119184%_))))
                           (##fxmodulo _%next-probe119192%_ _%size119169%_))
                         (##fx+ _%i119184%_ '1))
                        (if (eq? _%key119159%_ _%k119187%_)
                            (let ()
                              (vector-set!
                               _%table119161%_
                               _%probe119182%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119161%_
                               (##fx+ _%probe119182%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab119158%_
                               (##fx- (&raw-table-count _%tab119158%_) '1)))
                            (_%loop119179%_
                             (let ((_%next-probe119198%_
                                    (fx+ _%start119175%_
                                         _%i119184%_
                                         (fx* _%i119184%_ _%i119184%_))))
                               (##fxmodulo
                                _%next-probe119198%_
                                _%size119169%_))
                             (##fx+ _%i119184%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab119128%_ _%key119130%_)
        (let ((_%lock119133%_ (&raw-table-lock _%tab119128%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119138%_ ((_%spin119141%_ '0))
              (if (##fx= (##vector-cas! _%lock119133%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119133%_ '1 (current-thread))
                  (if (##fx< _%spin119141%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119138%_ (##fx+ _%spin119141%_ '1)))
                      (let ((_%owner119147%_ (##vector-ref _%lock119133%_ '1)))
                        (if (eq? _%owner119147%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119147%_)
                                (let () (##thread-yield!) (_%again119138%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119153%_ (eq-table-delete! _%tab119128%_ _%key119130%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119133%_ '1 '#f)
                (##vector-cas! _%lock119133%_ '0 '0 '1)))
            _%$r119153%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint119110%_ _%seed119111%_)
        (make-raw-table__1 _%size-hint119110%_ eqv-hash eqv? _%seed119111%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint119117%_ '#f) (_%seed119119%_ '0))
          (make-eqv-table__% _%size-hint119117%_ _%seed119119%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint119121%_)
        (let ((_%seed119123%_ '0))
          (make-eqv-table__% _%size-hint119121%_ _%seed119123%_))))
    (define make-eqv-table
      (lambda _g120088_
        (let ((_g120089_ (##length _g120088_)))
          (cond ((##fx= _g120089_ 0) (apply make-eqv-table__0 _g120088_))
                ((##fx= _g120089_ 1) (apply make-eqv-table__1 _g120088_))
                ((##fx= _g120089_ 2) (apply make-eqv-table__% _g120088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g120088_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint119090%_ _%seed119092%_)
        (make-raw-table/lock__%
         _%size-hint119090%_
         eqv-hash
         eqv?
         _%seed119092%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint119098%_ '#f) (_%seed119100%_ '0))
          (make-eqv-table/lock__% _%size-hint119098%_ _%seed119100%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint119102%_)
        (let ((_%seed119104%_ '0))
          (make-eqv-table/lock__% _%size-hint119102%_ _%seed119104%_))))
    (define make-eqv-table/lock
      (lambda _g120090_
        (let ((_g120091_ (##length _g120090_)))
          (cond ((##fx= _g120091_ 0) (apply make-eqv-table/lock__0 _g120090_))
                ((##fx= _g120091_ 1) (apply make-eqv-table/lock__1 _g120090_))
                ((##fx= _g120091_ 2) (apply make-eqv-table/lock__% _g120090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g120090_))))))
    (define eqv-table-ref
      (lambda (_%tab119043%_ _%key119044%_ _%default119045%_)
        (let ((_%table119047%_ (&raw-table-table _%tab119043%_))
              (_%seed119048%_ (&raw-table-seed _%tab119043%_)))
          (let* ((_%h119050%_ (fxxor (eqv-hash _%key119044%_) _%seed119048%_))
                 (_%size119053%_ (vector-length _%table119047%_))
                 (_%entries119056%_ (##fxquotient _%size119053%_ '2))
                 (_%start119059%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119050%_ _%entries119056%_)
                   '1)))
            (let _%loop119063%_ ((_%probe119066%_ _%start119059%_)
                                 (_%i119068%_ '1)
                                 (_%deleted119070%_ '#f))
              (let ((_%k119073%_ (vector-ref _%table119047%_ _%probe119066%_)))
                (if (eq? _%k119073%_ (macro-unused-obj))
                    _%default119045%_
                    (if (eq? _%k119073%_ (macro-deleted-obj))
                        (_%loop119063%_
                         (let ((_%next-probe119078%_
                                (fx+ _%start119059%_
                                     _%i119068%_
                                     (fx* _%i119068%_ _%i119068%_))))
                           (##fxmodulo _%next-probe119078%_ _%size119053%_))
                         (##fx+ _%i119068%_ '1)
                         (let ((_%$e119081%_ _%deleted119070%_))
                           (if _%$e119081%_ _%$e119081%_ _%probe119066%_)))
                        (if (eqv? _%key119044%_ _%k119073%_)
                            (vector-ref
                             _%table119047%_
                             (##fx+ _%probe119066%_ '1))
                            (_%loop119063%_
                             (let ((_%next-probe119086%_
                                    (fx+ _%start119059%_
                                         _%i119068%_
                                         (fx* _%i119068%_ _%i119068%_))))
                               (##fxmodulo
                                _%next-probe119086%_
                                _%size119053%_))
                             (##fx+ _%i119068%_ '1)
                             _%deleted119070%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab119014%_ _%key119015%_ _%default119016%_)
        (let ((_%lock119018%_ (&raw-table-lock _%tab119014%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119023%_ ((_%spin119026%_ '0))
              (if (##fx= (##vector-cas! _%lock119018%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119018%_ '1 (current-thread))
                  (if (##fx< _%spin119026%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119023%_ (##fx+ _%spin119026%_ '1)))
                      (let ((_%owner119032%_ (##vector-ref _%lock119018%_ '1)))
                        (if (eq? _%owner119032%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119032%_)
                                (let () (##thread-yield!) (_%again119023%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119038%_
                 (eqv-table-ref
                  _%tab119014%_
                  _%key119015%_
                  _%default119016%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119018%_ '1 '#f)
                (##vector-cas! _%lock119018%_ '0 '0 '1)))
            _%$r119038%_))))
    (define __eqv-table-set!
      (lambda (_%tab118966%_ _%key118967%_ _%value118968%_)
        (let ((_%table118970%_ (&raw-table-table _%tab118966%_))
              (_%seed118971%_ (&raw-table-seed _%tab118966%_)))
          (let* ((_%h118973%_ (fxxor (eqv-hash _%key118967%_) _%seed118971%_))
                 (_%size118976%_ (vector-length _%table118970%_))
                 (_%entries118979%_ (##fxquotient _%size118976%_ '2))
                 (_%start118982%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118973%_ _%entries118979%_)
                   '1)))
            (let _%loop118986%_ ((_%probe118989%_ _%start118982%_)
                                 (_%i118991%_ '1)
                                 (_%deleted118993%_ '#f))
              (let ((_%k118996%_ (vector-ref _%table118970%_ _%probe118989%_)))
                (if (eq? _%k118996%_ (macro-unused-obj))
                    (if _%deleted118993%_
                        (begin
                          (vector-set!
                           _%table118970%_
                           _%deleted118993%_
                           _%key118967%_)
                          (vector-set!
                           _%table118970%_
                           (##fx+ _%deleted118993%_ '1)
                           _%value118968%_)
                          (&raw-table-count-set!
                           _%tab118966%_
                           (##fx+ (&raw-table-count _%tab118966%_) '1)))
                        (begin
                          (vector-set!
                           _%table118970%_
                           _%probe118989%_
                           _%key118967%_)
                          (vector-set!
                           _%table118970%_
                           (##fx+ _%probe118989%_ '1)
                           _%value118968%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab118966%_
                             (##fx- (&raw-table-free _%tab118966%_) '1))
                            (&raw-table-count-set!
                             _%tab118966%_
                             (##fx+ (&raw-table-count _%tab118966%_) '1)))))
                    (if (eq? _%k118996%_ (macro-deleted-obj))
                        (_%loop118986%_
                         (let ((_%next-probe119003%_
                                (fx+ _%start118982%_
                                     _%i118991%_
                                     (fx* _%i118991%_ _%i118991%_))))
                           (##fxmodulo _%next-probe119003%_ _%size118976%_))
                         (##fx+ _%i118991%_ '1)
                         (let ((_%$e119006%_ _%deleted118993%_))
                           (if _%$e119006%_ _%$e119006%_ _%probe118989%_)))
                        (if (eqv? _%key118967%_ _%k118996%_)
                            (let ()
                              (vector-set!
                               _%table118970%_
                               _%probe118989%_
                               _%key118967%_)
                              (vector-set!
                               _%table118970%_
                               (##fx+ _%probe118989%_ '1)
                               _%value118968%_))
                            (_%loop118986%_
                             (let ((_%next-probe119011%_
                                    (fx+ _%start118982%_
                                         _%i118991%_
                                         (fx* _%i118991%_ _%i118991%_))))
                               (##fxmodulo
                                _%next-probe119011%_
                                _%size118976%_))
                             (##fx+ _%i118991%_ '1)
                             _%deleted118993%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab118962%_ _%key118963%_ _%value118964%_)
        (if (##fx< (&raw-table-free _%tab118962%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118962%_))
                    '4))
            (__raw-table-rehash! _%tab118962%_)
            '#!void)
        (__eqv-table-set! _%tab118962%_ _%key118963%_ _%value118964%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab118932%_ _%key118933%_ _%value118934%_)
        (let ((_%lock118937%_ (&raw-table-lock _%tab118932%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118942%_ ((_%spin118945%_ '0))
              (if (##fx= (##vector-cas! _%lock118937%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118937%_ '1 (current-thread))
                  (if (##fx< _%spin118945%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118942%_ (##fx+ _%spin118945%_ '1)))
                      (let ((_%owner118951%_ (##vector-ref _%lock118937%_ '1)))
                        (if (eq? _%owner118951%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118951%_)
                                (let () (##thread-yield!) (_%again118942%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118957%_
                 (eqv-table-set! _%tab118932%_ _%key118933%_ _%value118934%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118937%_ '1 '#f)
                (##vector-cas! _%lock118937%_ '0 '0 '1)))
            _%$r118957%_))))
    (define __eqv-table-update!
      (lambda (_%tab118883%_
               _%key118884%_
               _%eqv-table-update!118885%_
               _%default118886%_)
        (let ((_%table118888%_ (&raw-table-table _%tab118883%_))
              (_%seed118889%_ (&raw-table-seed _%tab118883%_)))
          (let* ((_%h118891%_ (fxxor (eqv-hash _%key118884%_) _%seed118889%_))
                 (_%size118894%_ (vector-length _%table118888%_))
                 (_%entries118897%_ (##fxquotient _%size118894%_ '2))
                 (_%start118900%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118891%_ _%entries118897%_)
                   '1)))
            (let _%loop118904%_ ((_%probe118907%_ _%start118900%_)
                                 (_%i118909%_ '1)
                                 (_%deleted118911%_ '#f))
              (let ((_%k118914%_ (vector-ref _%table118888%_ _%probe118907%_)))
                (if (eq? _%k118914%_ (macro-unused-obj))
                    (if _%deleted118911%_
                        (begin
                          (vector-set!
                           _%table118888%_
                           _%deleted118911%_
                           _%key118884%_)
                          (vector-set!
                           _%table118888%_
                           (##fx+ _%deleted118911%_ '1)
                           (_%eqv-table-update!118885%_ _%default118886%_))
                          (&raw-table-count-set!
                           _%tab118883%_
                           (##fx+ (&raw-table-count _%tab118883%_) '1)))
                        (begin
                          (vector-set!
                           _%table118888%_
                           _%probe118907%_
                           _%key118884%_)
                          (vector-set!
                           _%table118888%_
                           (##fx+ _%probe118907%_ '1)
                           (_%eqv-table-update!118885%_ _%default118886%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab118883%_
                             (##fx- (&raw-table-free _%tab118883%_) '1))
                            (&raw-table-count-set!
                             _%tab118883%_
                             (##fx+ (&raw-table-count _%tab118883%_) '1)))))
                    (if (eq? _%k118914%_ (macro-deleted-obj))
                        (_%loop118904%_
                         (let ((_%next-probe118921%_
                                (fx+ _%start118900%_
                                     _%i118909%_
                                     (fx* _%i118909%_ _%i118909%_))))
                           (##fxmodulo _%next-probe118921%_ _%size118894%_))
                         (##fx+ _%i118909%_ '1)
                         (let ((_%$e118924%_ _%deleted118911%_))
                           (if _%$e118924%_ _%$e118924%_ _%probe118907%_)))
                        (if (eqv? _%key118884%_ _%k118914%_)
                            (let ()
                              (vector-set!
                               _%table118888%_
                               _%probe118907%_
                               _%key118884%_)
                              (vector-set!
                               _%table118888%_
                               (##fx+ _%probe118907%_ '1)
                               (_%eqv-table-update!118885%_
                                (vector-ref
                                 _%table118888%_
                                 (##fx+ _%probe118907%_ '1)))))
                            (_%loop118904%_
                             (let ((_%next-probe118929%_
                                    (fx+ _%start118900%_
                                         _%i118909%_
                                         (fx* _%i118909%_ _%i118909%_))))
                               (##fxmodulo
                                _%next-probe118929%_
                                _%size118894%_))
                             (##fx+ _%i118909%_ '1)
                             _%deleted118911%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab118878%_
               _%key118879%_
               _%eqv-table-update!118880%_
               _%default118881%_)
        (if (##fx< (&raw-table-free _%tab118878%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118878%_))
                    '4))
            (__raw-table-rehash! _%tab118878%_)
            '#!void)
        (__eqv-table-update!
         _%tab118878%_
         _%key118879%_
         _%eqv-table-update!118880%_
         _%default118881%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab118847%_
               _%key118848%_
               _%eqv-table-update!118849%_
               _%default118850%_)
        (let ((_%lock118853%_ (&raw-table-lock _%tab118847%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118858%_ ((_%spin118861%_ '0))
              (if (##fx= (##vector-cas! _%lock118853%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118853%_ '1 (current-thread))
                  (if (##fx< _%spin118861%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118858%_ (##fx+ _%spin118861%_ '1)))
                      (let ((_%owner118867%_ (##vector-ref _%lock118853%_ '1)))
                        (if (eq? _%owner118867%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118867%_)
                                (let () (##thread-yield!) (_%again118858%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118873%_
                 (_%eqv-table-update!118849%_
                  _%tab118847%_
                  _%key118848%_
                  _%eqv-table-update!118849%_
                  _%default118850%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118853%_ '1 '#f)
                (##vector-cas! _%lock118853%_ '0 '0 '1)))
            _%$r118873%_))))
    (define eqv-table-delete!
      (lambda (_%tab118804%_ _%key118805%_)
        (let ((_%table118807%_ (&raw-table-table _%tab118804%_))
              (_%seed118809%_ (&raw-table-seed _%tab118804%_)))
          (let* ((_%h118812%_ (fxxor (eqv-hash _%key118805%_) _%seed118809%_))
                 (_%size118815%_ (vector-length _%table118807%_))
                 (_%entries118818%_ (##fxquotient _%size118815%_ '2))
                 (_%start118821%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118812%_ _%entries118818%_)
                   '1)))
            (let _%loop118825%_ ((_%probe118828%_ _%start118821%_)
                                 (_%i118830%_ '1))
              (let ((_%k118833%_ (vector-ref _%table118807%_ _%probe118828%_)))
                (if (eq? _%k118833%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118833%_ (macro-deleted-obj))
                        (_%loop118825%_
                         (let ((_%next-probe118838%_
                                (fx+ _%start118821%_
                                     _%i118830%_
                                     (fx* _%i118830%_ _%i118830%_))))
                           (##fxmodulo _%next-probe118838%_ _%size118815%_))
                         (##fx+ _%i118830%_ '1))
                        (if (eqv? _%key118805%_ _%k118833%_)
                            (let ()
                              (vector-set!
                               _%table118807%_
                               _%probe118828%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118807%_
                               (##fx+ _%probe118828%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab118804%_
                               (##fx- (&raw-table-count _%tab118804%_) '1)))
                            (_%loop118825%_
                             (let ((_%next-probe118844%_
                                    (fx+ _%start118821%_
                                         _%i118830%_
                                         (fx* _%i118830%_ _%i118830%_))))
                               (##fxmodulo
                                _%next-probe118844%_
                                _%size118815%_))
                             (##fx+ _%i118830%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab118774%_ _%key118776%_)
        (let ((_%lock118779%_ (&raw-table-lock _%tab118774%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118784%_ ((_%spin118787%_ '0))
              (if (##fx= (##vector-cas! _%lock118779%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118779%_ '1 (current-thread))
                  (if (##fx< _%spin118787%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118784%_ (##fx+ _%spin118787%_ '1)))
                      (let ((_%owner118793%_ (##vector-ref _%lock118779%_ '1)))
                        (if (eq? _%owner118793%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118793%_)
                                (let () (##thread-yield!) (_%again118784%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118799%_ (eqv-table-delete! _%tab118774%_ _%key118776%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118779%_ '1 '#f)
                (##vector-cas! _%lock118779%_ '0 '0 '1)))
            _%$r118799%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint118756%_ _%seed118757%_)
        (make-raw-table__1
         _%size-hint118756%_
         symbolic-hash
         eq?
         _%seed118757%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint118763%_ '#f) (_%seed118765%_ '0))
          (make-symbolic-table__% _%size-hint118763%_ _%seed118765%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint118767%_)
        (let ((_%seed118769%_ '0))
          (make-symbolic-table__% _%size-hint118767%_ _%seed118769%_))))
    (define make-symbolic-table
      (lambda _g120092_
        (let ((_g120093_ (##length _g120092_)))
          (cond ((##fx= _g120093_ 0) (apply make-symbolic-table__0 _g120092_))
                ((##fx= _g120093_ 1) (apply make-symbolic-table__1 _g120092_))
                ((##fx= _g120093_ 2) (apply make-symbolic-table__% _g120092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g120092_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint118736%_ _%seed118738%_)
        (make-raw-table/lock__%
         _%size-hint118736%_
         symbolic-hash
         eq?
         _%seed118738%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint118744%_ '#f) (_%seed118746%_ '0))
          (make-symbolic-table/lock__% _%size-hint118744%_ _%seed118746%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint118748%_)
        (let ((_%seed118750%_ '0))
          (make-symbolic-table/lock__% _%size-hint118748%_ _%seed118750%_))))
    (define make-symbolic-table/lock
      (lambda _g120094_
        (let ((_g120095_ (##length _g120094_)))
          (cond ((##fx= _g120095_ 0)
                 (apply make-symbolic-table/lock__0 _g120094_))
                ((##fx= _g120095_ 1)
                 (apply make-symbolic-table/lock__1 _g120094_))
                ((##fx= _g120095_ 2)
                 (apply make-symbolic-table/lock__% _g120094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g120094_))))))
    (define symbolic-table-ref
      (lambda (_%tab118689%_ _%key118690%_ _%default118691%_)
        (let ((_%table118693%_ (&raw-table-table _%tab118689%_))
              (_%seed118694%_ (&raw-table-seed _%tab118689%_)))
          (let* ((_%h118696%_
                  (fxxor (##symbol-hash _%key118690%_) _%seed118694%_))
                 (_%size118699%_ (vector-length _%table118693%_))
                 (_%entries118702%_ (##fxquotient _%size118699%_ '2))
                 (_%start118705%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118696%_ _%entries118702%_)
                   '1)))
            (let _%loop118709%_ ((_%probe118712%_ _%start118705%_)
                                 (_%i118714%_ '1)
                                 (_%deleted118716%_ '#f))
              (let ((_%k118719%_ (vector-ref _%table118693%_ _%probe118712%_)))
                (if (eq? _%k118719%_ (macro-unused-obj))
                    _%default118691%_
                    (if (eq? _%k118719%_ (macro-deleted-obj))
                        (_%loop118709%_
                         (let ((_%next-probe118724%_
                                (fx+ _%start118705%_
                                     _%i118714%_
                                     (fx* _%i118714%_ _%i118714%_))))
                           (##fxmodulo _%next-probe118724%_ _%size118699%_))
                         (##fx+ _%i118714%_ '1)
                         (let ((_%$e118727%_ _%deleted118716%_))
                           (if _%$e118727%_ _%$e118727%_ _%probe118712%_)))
                        (if (eq? _%key118690%_ _%k118719%_)
                            (vector-ref
                             _%table118693%_
                             (##fx+ _%probe118712%_ '1))
                            (_%loop118709%_
                             (let ((_%next-probe118732%_
                                    (fx+ _%start118705%_
                                         _%i118714%_
                                         (fx* _%i118714%_ _%i118714%_))))
                               (##fxmodulo
                                _%next-probe118732%_
                                _%size118699%_))
                             (##fx+ _%i118714%_ '1)
                             _%deleted118716%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab118660%_ _%key118661%_ _%default118662%_)
        (let ((_%lock118664%_ (&raw-table-lock _%tab118660%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118669%_ ((_%spin118672%_ '0))
              (if (##fx= (##vector-cas! _%lock118664%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118664%_ '1 (current-thread))
                  (if (##fx< _%spin118672%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118669%_ (##fx+ _%spin118672%_ '1)))
                      (let ((_%owner118678%_ (##vector-ref _%lock118664%_ '1)))
                        (if (eq? _%owner118678%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118678%_)
                                (let () (##thread-yield!) (_%again118669%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118684%_
                 (symbolic-table-ref
                  _%tab118660%_
                  _%key118661%_
                  _%default118662%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118664%_ '1 '#f)
                (##vector-cas! _%lock118664%_ '0 '0 '1)))
            _%$r118684%_))))
    (define __symbolic-table-set!
      (lambda (_%tab118612%_ _%key118613%_ _%value118614%_)
        (let ((_%table118616%_ (&raw-table-table _%tab118612%_))
              (_%seed118617%_ (&raw-table-seed _%tab118612%_)))
          (let* ((_%h118619%_
                  (fxxor (##symbol-hash _%key118613%_) _%seed118617%_))
                 (_%size118622%_ (vector-length _%table118616%_))
                 (_%entries118625%_ (##fxquotient _%size118622%_ '2))
                 (_%start118628%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118619%_ _%entries118625%_)
                   '1)))
            (let _%loop118632%_ ((_%probe118635%_ _%start118628%_)
                                 (_%i118637%_ '1)
                                 (_%deleted118639%_ '#f))
              (let ((_%k118642%_ (vector-ref _%table118616%_ _%probe118635%_)))
                (if (eq? _%k118642%_ (macro-unused-obj))
                    (if _%deleted118639%_
                        (begin
                          (vector-set!
                           _%table118616%_
                           _%deleted118639%_
                           _%key118613%_)
                          (vector-set!
                           _%table118616%_
                           (##fx+ _%deleted118639%_ '1)
                           _%value118614%_)
                          (&raw-table-count-set!
                           _%tab118612%_
                           (##fx+ (&raw-table-count _%tab118612%_) '1)))
                        (begin
                          (vector-set!
                           _%table118616%_
                           _%probe118635%_
                           _%key118613%_)
                          (vector-set!
                           _%table118616%_
                           (##fx+ _%probe118635%_ '1)
                           _%value118614%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab118612%_
                             (##fx- (&raw-table-free _%tab118612%_) '1))
                            (&raw-table-count-set!
                             _%tab118612%_
                             (##fx+ (&raw-table-count _%tab118612%_) '1)))))
                    (if (eq? _%k118642%_ (macro-deleted-obj))
                        (_%loop118632%_
                         (let ((_%next-probe118649%_
                                (fx+ _%start118628%_
                                     _%i118637%_
                                     (fx* _%i118637%_ _%i118637%_))))
                           (##fxmodulo _%next-probe118649%_ _%size118622%_))
                         (##fx+ _%i118637%_ '1)
                         (let ((_%$e118652%_ _%deleted118639%_))
                           (if _%$e118652%_ _%$e118652%_ _%probe118635%_)))
                        (if (eq? _%key118613%_ _%k118642%_)
                            (let ()
                              (vector-set!
                               _%table118616%_
                               _%probe118635%_
                               _%key118613%_)
                              (vector-set!
                               _%table118616%_
                               (##fx+ _%probe118635%_ '1)
                               _%value118614%_))
                            (_%loop118632%_
                             (let ((_%next-probe118657%_
                                    (fx+ _%start118628%_
                                         _%i118637%_
                                         (fx* _%i118637%_ _%i118637%_))))
                               (##fxmodulo
                                _%next-probe118657%_
                                _%size118622%_))
                             (##fx+ _%i118637%_ '1)
                             _%deleted118639%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab118608%_ _%key118609%_ _%value118610%_)
        (if (##fx< (&raw-table-free _%tab118608%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118608%_))
                    '4))
            (__raw-table-rehash! _%tab118608%_)
            '#!void)
        (__symbolic-table-set! _%tab118608%_ _%key118609%_ _%value118610%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab118578%_ _%key118579%_ _%value118580%_)
        (let ((_%lock118583%_ (&raw-table-lock _%tab118578%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118588%_ ((_%spin118591%_ '0))
              (if (##fx= (##vector-cas! _%lock118583%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118583%_ '1 (current-thread))
                  (if (##fx< _%spin118591%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118588%_ (##fx+ _%spin118591%_ '1)))
                      (let ((_%owner118597%_ (##vector-ref _%lock118583%_ '1)))
                        (if (eq? _%owner118597%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118597%_)
                                (let () (##thread-yield!) (_%again118588%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118603%_
                 (symbolic-table-set!
                  _%tab118578%_
                  _%key118579%_
                  _%value118580%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118583%_ '1 '#f)
                (##vector-cas! _%lock118583%_ '0 '0 '1)))
            _%$r118603%_))))
    (define __symbolic-table-update!
      (lambda (_%tab118529%_
               _%key118530%_
               _%symbolic-table-update!118531%_
               _%default118532%_)
        (let ((_%table118534%_ (&raw-table-table _%tab118529%_))
              (_%seed118535%_ (&raw-table-seed _%tab118529%_)))
          (let* ((_%h118537%_
                  (fxxor (##symbol-hash _%key118530%_) _%seed118535%_))
                 (_%size118540%_ (vector-length _%table118534%_))
                 (_%entries118543%_ (##fxquotient _%size118540%_ '2))
                 (_%start118546%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118537%_ _%entries118543%_)
                   '1)))
            (let _%loop118550%_ ((_%probe118553%_ _%start118546%_)
                                 (_%i118555%_ '1)
                                 (_%deleted118557%_ '#f))
              (let ((_%k118560%_ (vector-ref _%table118534%_ _%probe118553%_)))
                (if (eq? _%k118560%_ (macro-unused-obj))
                    (if _%deleted118557%_
                        (begin
                          (vector-set!
                           _%table118534%_
                           _%deleted118557%_
                           _%key118530%_)
                          (vector-set!
                           _%table118534%_
                           (##fx+ _%deleted118557%_ '1)
                           (_%symbolic-table-update!118531%_
                            _%default118532%_))
                          (&raw-table-count-set!
                           _%tab118529%_
                           (##fx+ (&raw-table-count _%tab118529%_) '1)))
                        (begin
                          (vector-set!
                           _%table118534%_
                           _%probe118553%_
                           _%key118530%_)
                          (vector-set!
                           _%table118534%_
                           (##fx+ _%probe118553%_ '1)
                           (_%symbolic-table-update!118531%_
                            _%default118532%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab118529%_
                             (##fx- (&raw-table-free _%tab118529%_) '1))
                            (&raw-table-count-set!
                             _%tab118529%_
                             (##fx+ (&raw-table-count _%tab118529%_) '1)))))
                    (if (eq? _%k118560%_ (macro-deleted-obj))
                        (_%loop118550%_
                         (let ((_%next-probe118567%_
                                (fx+ _%start118546%_
                                     _%i118555%_
                                     (fx* _%i118555%_ _%i118555%_))))
                           (##fxmodulo _%next-probe118567%_ _%size118540%_))
                         (##fx+ _%i118555%_ '1)
                         (let ((_%$e118570%_ _%deleted118557%_))
                           (if _%$e118570%_ _%$e118570%_ _%probe118553%_)))
                        (if (eq? _%key118530%_ _%k118560%_)
                            (let ()
                              (vector-set!
                               _%table118534%_
                               _%probe118553%_
                               _%key118530%_)
                              (vector-set!
                               _%table118534%_
                               (##fx+ _%probe118553%_ '1)
                               (_%symbolic-table-update!118531%_
                                (vector-ref
                                 _%table118534%_
                                 (##fx+ _%probe118553%_ '1)))))
                            (_%loop118550%_
                             (let ((_%next-probe118575%_
                                    (fx+ _%start118546%_
                                         _%i118555%_
                                         (fx* _%i118555%_ _%i118555%_))))
                               (##fxmodulo
                                _%next-probe118575%_
                                _%size118540%_))
                             (##fx+ _%i118555%_ '1)
                             _%deleted118557%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab118524%_
               _%key118525%_
               _%symbolic-table-update!118526%_
               _%default118527%_)
        (if (##fx< (&raw-table-free _%tab118524%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118524%_))
                    '4))
            (__raw-table-rehash! _%tab118524%_)
            '#!void)
        (__symbolic-table-update!
         _%tab118524%_
         _%key118525%_
         _%symbolic-table-update!118526%_
         _%default118527%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab118493%_
               _%key118494%_
               _%symbolic-table-update!118495%_
               _%default118496%_)
        (let ((_%lock118499%_ (&raw-table-lock _%tab118493%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118504%_ ((_%spin118507%_ '0))
              (if (##fx= (##vector-cas! _%lock118499%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118499%_ '1 (current-thread))
                  (if (##fx< _%spin118507%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118504%_ (##fx+ _%spin118507%_ '1)))
                      (let ((_%owner118513%_ (##vector-ref _%lock118499%_ '1)))
                        (if (eq? _%owner118513%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118513%_)
                                (let () (##thread-yield!) (_%again118504%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118519%_
                 (_%symbolic-table-update!118495%_
                  _%tab118493%_
                  _%key118494%_
                  _%symbolic-table-update!118495%_
                  _%default118496%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118499%_ '1 '#f)
                (##vector-cas! _%lock118499%_ '0 '0 '1)))
            _%$r118519%_))))
    (define symbolic-table-delete!
      (lambda (_%tab118450%_ _%key118451%_)
        (let ((_%table118453%_ (&raw-table-table _%tab118450%_))
              (_%seed118455%_ (&raw-table-seed _%tab118450%_)))
          (let* ((_%h118458%_
                  (fxxor (##symbol-hash _%key118451%_) _%seed118455%_))
                 (_%size118461%_ (vector-length _%table118453%_))
                 (_%entries118464%_ (##fxquotient _%size118461%_ '2))
                 (_%start118467%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118458%_ _%entries118464%_)
                   '1)))
            (let _%loop118471%_ ((_%probe118474%_ _%start118467%_)
                                 (_%i118476%_ '1))
              (let ((_%k118479%_ (vector-ref _%table118453%_ _%probe118474%_)))
                (if (eq? _%k118479%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118479%_ (macro-deleted-obj))
                        (_%loop118471%_
                         (let ((_%next-probe118484%_
                                (fx+ _%start118467%_
                                     _%i118476%_
                                     (fx* _%i118476%_ _%i118476%_))))
                           (##fxmodulo _%next-probe118484%_ _%size118461%_))
                         (##fx+ _%i118476%_ '1))
                        (if (eq? _%key118451%_ _%k118479%_)
                            (let ()
                              (vector-set!
                               _%table118453%_
                               _%probe118474%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118453%_
                               (##fx+ _%probe118474%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab118450%_
                               (##fx- (&raw-table-count _%tab118450%_) '1)))
                            (_%loop118471%_
                             (let ((_%next-probe118490%_
                                    (fx+ _%start118467%_
                                         _%i118476%_
                                         (fx* _%i118476%_ _%i118476%_))))
                               (##fxmodulo
                                _%next-probe118490%_
                                _%size118461%_))
                             (##fx+ _%i118476%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab118420%_ _%key118422%_)
        (let ((_%lock118425%_ (&raw-table-lock _%tab118420%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118430%_ ((_%spin118433%_ '0))
              (if (##fx= (##vector-cas! _%lock118425%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118425%_ '1 (current-thread))
                  (if (##fx< _%spin118433%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118430%_ (##fx+ _%spin118433%_ '1)))
                      (let ((_%owner118439%_ (##vector-ref _%lock118425%_ '1)))
                        (if (eq? _%owner118439%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118439%_)
                                (let () (##thread-yield!) (_%again118430%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118445%_
                 (symbolic-table-delete! _%tab118420%_ _%key118422%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118425%_ '1 '#f)
                (##vector-cas! _%lock118425%_ '0 '0 '1)))
            _%$r118445%_))))
    (define make-string-table__%
      (lambda (_%size-hint118402%_ _%seed118403%_)
        (make-raw-table__1
         _%size-hint118402%_
         string-hash
         ##string=?
         _%seed118403%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint118409%_ '#f) (_%seed118411%_ '0))
          (make-string-table__% _%size-hint118409%_ _%seed118411%_))))
    (define make-string-table__1
      (lambda (_%size-hint118413%_)
        (let ((_%seed118415%_ '0))
          (make-string-table__% _%size-hint118413%_ _%seed118415%_))))
    (define make-string-table
      (lambda _g120096_
        (let ((_g120097_ (##length _g120096_)))
          (cond ((##fx= _g120097_ 0) (apply make-string-table__0 _g120096_))
                ((##fx= _g120097_ 1) (apply make-string-table__1 _g120096_))
                ((##fx= _g120097_ 2) (apply make-string-table__% _g120096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g120096_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint118382%_ _%seed118384%_)
        (make-raw-table/lock__%
         _%size-hint118382%_
         string-hash
         ##string=?
         _%seed118384%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint118390%_ '#f) (_%seed118392%_ '0))
          (make-string-table/lock__% _%size-hint118390%_ _%seed118392%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint118394%_)
        (let ((_%seed118396%_ '0))
          (make-string-table/lock__% _%size-hint118394%_ _%seed118396%_))))
    (define make-string-table/lock
      (lambda _g120098_
        (let ((_g120099_ (##length _g120098_)))
          (cond ((##fx= _g120099_ 0)
                 (apply make-string-table/lock__0 _g120098_))
                ((##fx= _g120099_ 1)
                 (apply make-string-table/lock__1 _g120098_))
                ((##fx= _g120099_ 2)
                 (apply make-string-table/lock__% _g120098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g120098_))))))
    (define string-table-ref
      (lambda (_%tab118335%_ _%key118336%_ _%default118337%_)
        (let ((_%table118339%_ (&raw-table-table _%tab118335%_))
              (_%seed118340%_ (&raw-table-seed _%tab118335%_)))
          (let* ((_%h118342%_
                  (fxxor (##string=?-hash _%key118336%_) _%seed118340%_))
                 (_%size118345%_ (vector-length _%table118339%_))
                 (_%entries118348%_ (##fxquotient _%size118345%_ '2))
                 (_%start118351%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118342%_ _%entries118348%_)
                   '1)))
            (let _%loop118355%_ ((_%probe118358%_ _%start118351%_)
                                 (_%i118360%_ '1)
                                 (_%deleted118362%_ '#f))
              (let ((_%k118365%_ (vector-ref _%table118339%_ _%probe118358%_)))
                (if (eq? _%k118365%_ (macro-unused-obj))
                    _%default118337%_
                    (if (eq? _%k118365%_ (macro-deleted-obj))
                        (_%loop118355%_
                         (let ((_%next-probe118370%_
                                (fx+ _%start118351%_
                                     _%i118360%_
                                     (fx* _%i118360%_ _%i118360%_))))
                           (##fxmodulo _%next-probe118370%_ _%size118345%_))
                         (##fx+ _%i118360%_ '1)
                         (let ((_%$e118373%_ _%deleted118362%_))
                           (if _%$e118373%_ _%$e118373%_ _%probe118358%_)))
                        (if (##string=? _%key118336%_ _%k118365%_)
                            (vector-ref
                             _%table118339%_
                             (##fx+ _%probe118358%_ '1))
                            (_%loop118355%_
                             (let ((_%next-probe118378%_
                                    (fx+ _%start118351%_
                                         _%i118360%_
                                         (fx* _%i118360%_ _%i118360%_))))
                               (##fxmodulo
                                _%next-probe118378%_
                                _%size118345%_))
                             (##fx+ _%i118360%_ '1)
                             _%deleted118362%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab118306%_ _%key118307%_ _%default118308%_)
        (let ((_%lock118310%_ (&raw-table-lock _%tab118306%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118315%_ ((_%spin118318%_ '0))
              (if (##fx= (##vector-cas! _%lock118310%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118310%_ '1 (current-thread))
                  (if (##fx< _%spin118318%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118315%_ (##fx+ _%spin118318%_ '1)))
                      (let ((_%owner118324%_ (##vector-ref _%lock118310%_ '1)))
                        (if (eq? _%owner118324%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118324%_)
                                (let () (##thread-yield!) (_%again118315%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118330%_
                 (string-table-ref
                  _%tab118306%_
                  _%key118307%_
                  _%default118308%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118310%_ '1 '#f)
                (##vector-cas! _%lock118310%_ '0 '0 '1)))
            _%$r118330%_))))
    (define __string-table-set!
      (lambda (_%tab118258%_ _%key118259%_ _%value118260%_)
        (let ((_%table118262%_ (&raw-table-table _%tab118258%_))
              (_%seed118263%_ (&raw-table-seed _%tab118258%_)))
          (let* ((_%h118265%_
                  (fxxor (##string=?-hash _%key118259%_) _%seed118263%_))
                 (_%size118268%_ (vector-length _%table118262%_))
                 (_%entries118271%_ (##fxquotient _%size118268%_ '2))
                 (_%start118274%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118265%_ _%entries118271%_)
                   '1)))
            (let _%loop118278%_ ((_%probe118281%_ _%start118274%_)
                                 (_%i118283%_ '1)
                                 (_%deleted118285%_ '#f))
              (let ((_%k118288%_ (vector-ref _%table118262%_ _%probe118281%_)))
                (if (eq? _%k118288%_ (macro-unused-obj))
                    (if _%deleted118285%_
                        (begin
                          (vector-set!
                           _%table118262%_
                           _%deleted118285%_
                           _%key118259%_)
                          (vector-set!
                           _%table118262%_
                           (##fx+ _%deleted118285%_ '1)
                           _%value118260%_)
                          (&raw-table-count-set!
                           _%tab118258%_
                           (##fx+ (&raw-table-count _%tab118258%_) '1)))
                        (begin
                          (vector-set!
                           _%table118262%_
                           _%probe118281%_
                           _%key118259%_)
                          (vector-set!
                           _%table118262%_
                           (##fx+ _%probe118281%_ '1)
                           _%value118260%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab118258%_
                             (##fx- (&raw-table-free _%tab118258%_) '1))
                            (&raw-table-count-set!
                             _%tab118258%_
                             (##fx+ (&raw-table-count _%tab118258%_) '1)))))
                    (if (eq? _%k118288%_ (macro-deleted-obj))
                        (_%loop118278%_
                         (let ((_%next-probe118295%_
                                (fx+ _%start118274%_
                                     _%i118283%_
                                     (fx* _%i118283%_ _%i118283%_))))
                           (##fxmodulo _%next-probe118295%_ _%size118268%_))
                         (##fx+ _%i118283%_ '1)
                         (let ((_%$e118298%_ _%deleted118285%_))
                           (if _%$e118298%_ _%$e118298%_ _%probe118281%_)))
                        (if (##string=? _%key118259%_ _%k118288%_)
                            (let ()
                              (vector-set!
                               _%table118262%_
                               _%probe118281%_
                               _%key118259%_)
                              (vector-set!
                               _%table118262%_
                               (##fx+ _%probe118281%_ '1)
                               _%value118260%_))
                            (_%loop118278%_
                             (let ((_%next-probe118303%_
                                    (fx+ _%start118274%_
                                         _%i118283%_
                                         (fx* _%i118283%_ _%i118283%_))))
                               (##fxmodulo
                                _%next-probe118303%_
                                _%size118268%_))
                             (##fx+ _%i118283%_ '1)
                             _%deleted118285%_))))))))))
    (define string-table-set!
      (lambda (_%tab118254%_ _%key118255%_ _%value118256%_)
        (if (##fx< (&raw-table-free _%tab118254%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118254%_))
                    '4))
            (__raw-table-rehash! _%tab118254%_)
            '#!void)
        (__string-table-set! _%tab118254%_ _%key118255%_ _%value118256%_)))
    (define string-table-set!/lock
      (lambda (_%tab118224%_ _%key118225%_ _%value118226%_)
        (let ((_%lock118229%_ (&raw-table-lock _%tab118224%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118234%_ ((_%spin118237%_ '0))
              (if (##fx= (##vector-cas! _%lock118229%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118229%_ '1 (current-thread))
                  (if (##fx< _%spin118237%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118234%_ (##fx+ _%spin118237%_ '1)))
                      (let ((_%owner118243%_ (##vector-ref _%lock118229%_ '1)))
                        (if (eq? _%owner118243%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118243%_)
                                (let () (##thread-yield!) (_%again118234%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118249%_
                 (string-table-set!
                  _%tab118224%_
                  _%key118225%_
                  _%value118226%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118229%_ '1 '#f)
                (##vector-cas! _%lock118229%_ '0 '0 '1)))
            _%$r118249%_))))
    (define __string-table-update!
      (lambda (_%tab118175%_
               _%key118176%_
               _%string-table-update!118177%_
               _%default118178%_)
        (let ((_%table118180%_ (&raw-table-table _%tab118175%_))
              (_%seed118181%_ (&raw-table-seed _%tab118175%_)))
          (let* ((_%h118183%_
                  (fxxor (##string=?-hash _%key118176%_) _%seed118181%_))
                 (_%size118186%_ (vector-length _%table118180%_))
                 (_%entries118189%_ (##fxquotient _%size118186%_ '2))
                 (_%start118192%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118183%_ _%entries118189%_)
                   '1)))
            (let _%loop118196%_ ((_%probe118199%_ _%start118192%_)
                                 (_%i118201%_ '1)
                                 (_%deleted118203%_ '#f))
              (let ((_%k118206%_ (vector-ref _%table118180%_ _%probe118199%_)))
                (if (eq? _%k118206%_ (macro-unused-obj))
                    (if _%deleted118203%_
                        (begin
                          (vector-set!
                           _%table118180%_
                           _%deleted118203%_
                           _%key118176%_)
                          (vector-set!
                           _%table118180%_
                           (##fx+ _%deleted118203%_ '1)
                           (_%string-table-update!118177%_ _%default118178%_))
                          (&raw-table-count-set!
                           _%tab118175%_
                           (##fx+ (&raw-table-count _%tab118175%_) '1)))
                        (begin
                          (vector-set!
                           _%table118180%_
                           _%probe118199%_
                           _%key118176%_)
                          (vector-set!
                           _%table118180%_
                           (##fx+ _%probe118199%_ '1)
                           (_%string-table-update!118177%_ _%default118178%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab118175%_
                             (##fx- (&raw-table-free _%tab118175%_) '1))
                            (&raw-table-count-set!
                             _%tab118175%_
                             (##fx+ (&raw-table-count _%tab118175%_) '1)))))
                    (if (eq? _%k118206%_ (macro-deleted-obj))
                        (_%loop118196%_
                         (let ((_%next-probe118213%_
                                (fx+ _%start118192%_
                                     _%i118201%_
                                     (fx* _%i118201%_ _%i118201%_))))
                           (##fxmodulo _%next-probe118213%_ _%size118186%_))
                         (##fx+ _%i118201%_ '1)
                         (let ((_%$e118216%_ _%deleted118203%_))
                           (if _%$e118216%_ _%$e118216%_ _%probe118199%_)))
                        (if (##string=? _%key118176%_ _%k118206%_)
                            (let ()
                              (vector-set!
                               _%table118180%_
                               _%probe118199%_
                               _%key118176%_)
                              (vector-set!
                               _%table118180%_
                               (##fx+ _%probe118199%_ '1)
                               (_%string-table-update!118177%_
                                (vector-ref
                                 _%table118180%_
                                 (##fx+ _%probe118199%_ '1)))))
                            (_%loop118196%_
                             (let ((_%next-probe118221%_
                                    (fx+ _%start118192%_
                                         _%i118201%_
                                         (fx* _%i118201%_ _%i118201%_))))
                               (##fxmodulo
                                _%next-probe118221%_
                                _%size118186%_))
                             (##fx+ _%i118201%_ '1)
                             _%deleted118203%_))))))))))
    (define string-table-update!
      (lambda (_%tab118170%_
               _%key118171%_
               _%string-table-update!118172%_
               _%default118173%_)
        (if (##fx< (&raw-table-free _%tab118170%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118170%_))
                    '4))
            (__raw-table-rehash! _%tab118170%_)
            '#!void)
        (__string-table-update!
         _%tab118170%_
         _%key118171%_
         _%string-table-update!118172%_
         _%default118173%_)))
    (define string-table-update!/lock
      (lambda (_%tab118139%_
               _%key118140%_
               _%string-table-update!118141%_
               _%default118142%_)
        (let ((_%lock118145%_ (&raw-table-lock _%tab118139%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118150%_ ((_%spin118153%_ '0))
              (if (##fx= (##vector-cas! _%lock118145%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118145%_ '1 (current-thread))
                  (if (##fx< _%spin118153%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118150%_ (##fx+ _%spin118153%_ '1)))
                      (let ((_%owner118159%_ (##vector-ref _%lock118145%_ '1)))
                        (if (eq? _%owner118159%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118159%_)
                                (let () (##thread-yield!) (_%again118150%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118165%_
                 (_%string-table-update!118141%_
                  _%tab118139%_
                  _%key118140%_
                  _%string-table-update!118141%_
                  _%default118142%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118145%_ '1 '#f)
                (##vector-cas! _%lock118145%_ '0 '0 '1)))
            _%$r118165%_))))
    (define string-table-delete!
      (lambda (_%tab118096%_ _%key118097%_)
        (let ((_%table118099%_ (&raw-table-table _%tab118096%_))
              (_%seed118101%_ (&raw-table-seed _%tab118096%_)))
          (let* ((_%h118104%_
                  (fxxor (##string=?-hash _%key118097%_) _%seed118101%_))
                 (_%size118107%_ (vector-length _%table118099%_))
                 (_%entries118110%_ (##fxquotient _%size118107%_ '2))
                 (_%start118113%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118104%_ _%entries118110%_)
                   '1)))
            (let _%loop118117%_ ((_%probe118120%_ _%start118113%_)
                                 (_%i118122%_ '1))
              (let ((_%k118125%_ (vector-ref _%table118099%_ _%probe118120%_)))
                (if (eq? _%k118125%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118125%_ (macro-deleted-obj))
                        (_%loop118117%_
                         (let ((_%next-probe118130%_
                                (fx+ _%start118113%_
                                     _%i118122%_
                                     (fx* _%i118122%_ _%i118122%_))))
                           (##fxmodulo _%next-probe118130%_ _%size118107%_))
                         (##fx+ _%i118122%_ '1))
                        (if (##string=? _%key118097%_ _%k118125%_)
                            (let ()
                              (vector-set!
                               _%table118099%_
                               _%probe118120%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118099%_
                               (##fx+ _%probe118120%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab118096%_
                               (##fx- (&raw-table-count _%tab118096%_) '1)))
                            (_%loop118117%_
                             (let ((_%next-probe118136%_
                                    (fx+ _%start118113%_
                                         _%i118122%_
                                         (fx* _%i118122%_ _%i118122%_))))
                               (##fxmodulo
                                _%next-probe118136%_
                                _%size118107%_))
                             (##fx+ _%i118122%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab118066%_ _%key118068%_)
        (let ((_%lock118071%_ (&raw-table-lock _%tab118066%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118076%_ ((_%spin118079%_ '0))
              (if (##fx= (##vector-cas! _%lock118071%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118071%_ '1 (current-thread))
                  (if (##fx< _%spin118079%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118076%_ (##fx+ _%spin118079%_ '1)))
                      (let ((_%owner118085%_ (##vector-ref _%lock118071%_ '1)))
                        (if (eq? _%owner118085%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118085%_)
                                (let () (##thread-yield!) (_%again118076%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118091%_
                 (string-table-delete! _%tab118066%_ _%key118068%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118071%_ '1 '#f)
                (##vector-cas! _%lock118071%_ '0 '0 '1)))
            _%$r118091%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint118048%_ _%seed118049%_)
        (make-raw-table__1
         _%size-hint118048%_
         immediate-hash
         eq?
         _%seed118049%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint118055%_ '#f) (_%seed118057%_ '0))
          (make-immediate-table__% _%size-hint118055%_ _%seed118057%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint118059%_)
        (let ((_%seed118061%_ '0))
          (make-immediate-table__% _%size-hint118059%_ _%seed118061%_))))
    (define make-immediate-table
      (lambda _g120100_
        (let ((_g120101_ (##length _g120100_)))
          (cond ((##fx= _g120101_ 0) (apply make-immediate-table__0 _g120100_))
                ((##fx= _g120101_ 1) (apply make-immediate-table__1 _g120100_))
                ((##fx= _g120101_ 2) (apply make-immediate-table__% _g120100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g120100_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint118028%_ _%seed118030%_)
        (make-raw-table/lock__%
         _%size-hint118028%_
         immediate-hash
         eq?
         _%seed118030%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint118036%_ '#f) (_%seed118038%_ '0))
          (make-immediate-table/lock__% _%size-hint118036%_ _%seed118038%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint118040%_)
        (let ((_%seed118042%_ '0))
          (make-immediate-table/lock__% _%size-hint118040%_ _%seed118042%_))))
    (define make-immediate-table/lock
      (lambda _g120102_
        (let ((_g120103_ (##length _g120102_)))
          (cond ((##fx= _g120103_ 0)
                 (apply make-immediate-table/lock__0 _g120102_))
                ((##fx= _g120103_ 1)
                 (apply make-immediate-table/lock__1 _g120102_))
                ((##fx= _g120103_ 2)
                 (apply make-immediate-table/lock__% _g120102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g120102_))))))
    (define immediate-table-ref
      (lambda (_%tab117981%_ _%key117982%_ _%default117983%_)
        (let ((_%table117985%_ (&raw-table-table _%tab117981%_))
              (_%seed117986%_ (&raw-table-seed _%tab117981%_)))
          (let* ((_%h117988%_
                  (fxxor (immediate-hash _%key117982%_) _%seed117986%_))
                 (_%size117991%_ (vector-length _%table117985%_))
                 (_%entries117994%_ (##fxquotient _%size117991%_ '2))
                 (_%start117997%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117988%_ _%entries117994%_)
                   '1)))
            (let _%loop118001%_ ((_%probe118004%_ _%start117997%_)
                                 (_%i118006%_ '1)
                                 (_%deleted118008%_ '#f))
              (let ((_%k118011%_ (vector-ref _%table117985%_ _%probe118004%_)))
                (if (eq? _%k118011%_ (macro-unused-obj))
                    _%default117983%_
                    (if (eq? _%k118011%_ (macro-deleted-obj))
                        (_%loop118001%_
                         (let ((_%next-probe118016%_
                                (fx+ _%start117997%_
                                     _%i118006%_
                                     (fx* _%i118006%_ _%i118006%_))))
                           (##fxmodulo _%next-probe118016%_ _%size117991%_))
                         (##fx+ _%i118006%_ '1)
                         (let ((_%$e118019%_ _%deleted118008%_))
                           (if _%$e118019%_ _%$e118019%_ _%probe118004%_)))
                        (if (eq? _%key117982%_ _%k118011%_)
                            (vector-ref
                             _%table117985%_
                             (##fx+ _%probe118004%_ '1))
                            (_%loop118001%_
                             (let ((_%next-probe118024%_
                                    (fx+ _%start117997%_
                                         _%i118006%_
                                         (fx* _%i118006%_ _%i118006%_))))
                               (##fxmodulo
                                _%next-probe118024%_
                                _%size117991%_))
                             (##fx+ _%i118006%_ '1)
                             _%deleted118008%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab117952%_ _%key117953%_ _%default117954%_)
        (let ((_%lock117956%_ (&raw-table-lock _%tab117952%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117961%_ ((_%spin117964%_ '0))
              (if (##fx= (##vector-cas! _%lock117956%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117956%_ '1 (current-thread))
                  (if (##fx< _%spin117964%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117961%_ (##fx+ _%spin117964%_ '1)))
                      (let ((_%owner117970%_ (##vector-ref _%lock117956%_ '1)))
                        (if (eq? _%owner117970%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117970%_)
                                (let () (##thread-yield!) (_%again117961%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117976%_
                 (immediate-table-ref
                  _%tab117952%_
                  _%key117953%_
                  _%default117954%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117956%_ '1 '#f)
                (##vector-cas! _%lock117956%_ '0 '0 '1)))
            _%$r117976%_))))
    (define __immediate-table-set!
      (lambda (_%tab117904%_ _%key117905%_ _%value117906%_)
        (let ((_%table117908%_ (&raw-table-table _%tab117904%_))
              (_%seed117909%_ (&raw-table-seed _%tab117904%_)))
          (let* ((_%h117911%_
                  (fxxor (immediate-hash _%key117905%_) _%seed117909%_))
                 (_%size117914%_ (vector-length _%table117908%_))
                 (_%entries117917%_ (##fxquotient _%size117914%_ '2))
                 (_%start117920%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117911%_ _%entries117917%_)
                   '1)))
            (let _%loop117924%_ ((_%probe117927%_ _%start117920%_)
                                 (_%i117929%_ '1)
                                 (_%deleted117931%_ '#f))
              (let ((_%k117934%_ (vector-ref _%table117908%_ _%probe117927%_)))
                (if (eq? _%k117934%_ (macro-unused-obj))
                    (if _%deleted117931%_
                        (begin
                          (vector-set!
                           _%table117908%_
                           _%deleted117931%_
                           _%key117905%_)
                          (vector-set!
                           _%table117908%_
                           (##fx+ _%deleted117931%_ '1)
                           _%value117906%_)
                          (&raw-table-count-set!
                           _%tab117904%_
                           (##fx+ (&raw-table-count _%tab117904%_) '1)))
                        (begin
                          (vector-set!
                           _%table117908%_
                           _%probe117927%_
                           _%key117905%_)
                          (vector-set!
                           _%table117908%_
                           (##fx+ _%probe117927%_ '1)
                           _%value117906%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab117904%_
                             (##fx- (&raw-table-free _%tab117904%_) '1))
                            (&raw-table-count-set!
                             _%tab117904%_
                             (##fx+ (&raw-table-count _%tab117904%_) '1)))))
                    (if (eq? _%k117934%_ (macro-deleted-obj))
                        (_%loop117924%_
                         (let ((_%next-probe117941%_
                                (fx+ _%start117920%_
                                     _%i117929%_
                                     (fx* _%i117929%_ _%i117929%_))))
                           (##fxmodulo _%next-probe117941%_ _%size117914%_))
                         (##fx+ _%i117929%_ '1)
                         (let ((_%$e117944%_ _%deleted117931%_))
                           (if _%$e117944%_ _%$e117944%_ _%probe117927%_)))
                        (if (eq? _%key117905%_ _%k117934%_)
                            (let ()
                              (vector-set!
                               _%table117908%_
                               _%probe117927%_
                               _%key117905%_)
                              (vector-set!
                               _%table117908%_
                               (##fx+ _%probe117927%_ '1)
                               _%value117906%_))
                            (_%loop117924%_
                             (let ((_%next-probe117949%_
                                    (fx+ _%start117920%_
                                         _%i117929%_
                                         (fx* _%i117929%_ _%i117929%_))))
                               (##fxmodulo
                                _%next-probe117949%_
                                _%size117914%_))
                             (##fx+ _%i117929%_ '1)
                             _%deleted117931%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab117900%_ _%key117901%_ _%value117902%_)
        (if (##fx< (&raw-table-free _%tab117900%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117900%_))
                    '4))
            (__raw-table-rehash! _%tab117900%_)
            '#!void)
        (__immediate-table-set! _%tab117900%_ _%key117901%_ _%value117902%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab117870%_ _%key117871%_ _%value117872%_)
        (let ((_%lock117875%_ (&raw-table-lock _%tab117870%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117880%_ ((_%spin117883%_ '0))
              (if (##fx= (##vector-cas! _%lock117875%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117875%_ '1 (current-thread))
                  (if (##fx< _%spin117883%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117880%_ (##fx+ _%spin117883%_ '1)))
                      (let ((_%owner117889%_ (##vector-ref _%lock117875%_ '1)))
                        (if (eq? _%owner117889%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117889%_)
                                (let () (##thread-yield!) (_%again117880%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117895%_
                 (immediate-table-set!
                  _%tab117870%_
                  _%key117871%_
                  _%value117872%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117875%_ '1 '#f)
                (##vector-cas! _%lock117875%_ '0 '0 '1)))
            _%$r117895%_))))
    (define __immediate-table-update!
      (lambda (_%tab117821%_
               _%key117822%_
               _%immediate-table-update!117823%_
               _%default117824%_)
        (let ((_%table117826%_ (&raw-table-table _%tab117821%_))
              (_%seed117827%_ (&raw-table-seed _%tab117821%_)))
          (let* ((_%h117829%_
                  (fxxor (immediate-hash _%key117822%_) _%seed117827%_))
                 (_%size117832%_ (vector-length _%table117826%_))
                 (_%entries117835%_ (##fxquotient _%size117832%_ '2))
                 (_%start117838%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117829%_ _%entries117835%_)
                   '1)))
            (let _%loop117842%_ ((_%probe117845%_ _%start117838%_)
                                 (_%i117847%_ '1)
                                 (_%deleted117849%_ '#f))
              (let ((_%k117852%_ (vector-ref _%table117826%_ _%probe117845%_)))
                (if (eq? _%k117852%_ (macro-unused-obj))
                    (if _%deleted117849%_
                        (begin
                          (vector-set!
                           _%table117826%_
                           _%deleted117849%_
                           _%key117822%_)
                          (vector-set!
                           _%table117826%_
                           (##fx+ _%deleted117849%_ '1)
                           (_%immediate-table-update!117823%_
                            _%default117824%_))
                          (&raw-table-count-set!
                           _%tab117821%_
                           (##fx+ (&raw-table-count _%tab117821%_) '1)))
                        (begin
                          (vector-set!
                           _%table117826%_
                           _%probe117845%_
                           _%key117822%_)
                          (vector-set!
                           _%table117826%_
                           (##fx+ _%probe117845%_ '1)
                           (_%immediate-table-update!117823%_
                            _%default117824%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab117821%_
                             (##fx- (&raw-table-free _%tab117821%_) '1))
                            (&raw-table-count-set!
                             _%tab117821%_
                             (##fx+ (&raw-table-count _%tab117821%_) '1)))))
                    (if (eq? _%k117852%_ (macro-deleted-obj))
                        (_%loop117842%_
                         (let ((_%next-probe117859%_
                                (fx+ _%start117838%_
                                     _%i117847%_
                                     (fx* _%i117847%_ _%i117847%_))))
                           (##fxmodulo _%next-probe117859%_ _%size117832%_))
                         (##fx+ _%i117847%_ '1)
                         (let ((_%$e117862%_ _%deleted117849%_))
                           (if _%$e117862%_ _%$e117862%_ _%probe117845%_)))
                        (if (eq? _%key117822%_ _%k117852%_)
                            (let ()
                              (vector-set!
                               _%table117826%_
                               _%probe117845%_
                               _%key117822%_)
                              (vector-set!
                               _%table117826%_
                               (##fx+ _%probe117845%_ '1)
                               (_%immediate-table-update!117823%_
                                (vector-ref
                                 _%table117826%_
                                 (##fx+ _%probe117845%_ '1)))))
                            (_%loop117842%_
                             (let ((_%next-probe117867%_
                                    (fx+ _%start117838%_
                                         _%i117847%_
                                         (fx* _%i117847%_ _%i117847%_))))
                               (##fxmodulo
                                _%next-probe117867%_
                                _%size117832%_))
                             (##fx+ _%i117847%_ '1)
                             _%deleted117849%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab117816%_
               _%key117817%_
               _%immediate-table-update!117818%_
               _%default117819%_)
        (if (##fx< (&raw-table-free _%tab117816%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117816%_))
                    '4))
            (__raw-table-rehash! _%tab117816%_)
            '#!void)
        (__immediate-table-update!
         _%tab117816%_
         _%key117817%_
         _%immediate-table-update!117818%_
         _%default117819%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab117785%_
               _%key117786%_
               _%immediate-table-update!117787%_
               _%default117788%_)
        (let ((_%lock117791%_ (&raw-table-lock _%tab117785%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117796%_ ((_%spin117799%_ '0))
              (if (##fx= (##vector-cas! _%lock117791%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117791%_ '1 (current-thread))
                  (if (##fx< _%spin117799%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117796%_ (##fx+ _%spin117799%_ '1)))
                      (let ((_%owner117805%_ (##vector-ref _%lock117791%_ '1)))
                        (if (eq? _%owner117805%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117805%_)
                                (let () (##thread-yield!) (_%again117796%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117811%_
                 (_%immediate-table-update!117787%_
                  _%tab117785%_
                  _%key117786%_
                  _%immediate-table-update!117787%_
                  _%default117788%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117791%_ '1 '#f)
                (##vector-cas! _%lock117791%_ '0 '0 '1)))
            _%$r117811%_))))
    (define immediate-table-delete!
      (lambda (_%tab117742%_ _%key117743%_)
        (let ((_%table117745%_ (&raw-table-table _%tab117742%_))
              (_%seed117747%_ (&raw-table-seed _%tab117742%_)))
          (let* ((_%h117750%_
                  (fxxor (immediate-hash _%key117743%_) _%seed117747%_))
                 (_%size117753%_ (vector-length _%table117745%_))
                 (_%entries117756%_ (##fxquotient _%size117753%_ '2))
                 (_%start117759%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117750%_ _%entries117756%_)
                   '1)))
            (let _%loop117763%_ ((_%probe117766%_ _%start117759%_)
                                 (_%i117768%_ '1))
              (let ((_%k117771%_ (vector-ref _%table117745%_ _%probe117766%_)))
                (if (eq? _%k117771%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117771%_ (macro-deleted-obj))
                        (_%loop117763%_
                         (let ((_%next-probe117776%_
                                (fx+ _%start117759%_
                                     _%i117768%_
                                     (fx* _%i117768%_ _%i117768%_))))
                           (##fxmodulo _%next-probe117776%_ _%size117753%_))
                         (##fx+ _%i117768%_ '1))
                        (if (eq? _%key117743%_ _%k117771%_)
                            (let ()
                              (vector-set!
                               _%table117745%_
                               _%probe117766%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117745%_
                               (##fx+ _%probe117766%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab117742%_
                               (##fx- (&raw-table-count _%tab117742%_) '1)))
                            (_%loop117763%_
                             (let ((_%next-probe117782%_
                                    (fx+ _%start117759%_
                                         _%i117768%_
                                         (fx* _%i117768%_ _%i117768%_))))
                               (##fxmodulo
                                _%next-probe117782%_
                                _%size117753%_))
                             (##fx+ _%i117768%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab117712%_ _%key117714%_)
        (let ((_%lock117717%_ (&raw-table-lock _%tab117712%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117722%_ ((_%spin117725%_ '0))
              (if (##fx= (##vector-cas! _%lock117717%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117717%_ '1 (current-thread))
                  (if (##fx< _%spin117725%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117722%_ (##fx+ _%spin117725%_ '1)))
                      (let ((_%owner117731%_ (##vector-ref _%lock117717%_ '1)))
                        (if (eq? _%owner117731%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117731%_)
                                (let () (##thread-yield!) (_%again117722%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117737%_
                 (immediate-table-delete! _%tab117712%_ _%key117714%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117717%_ '1 '#f)
                (##vector-cas! _%lock117717%_ '0 '0 '1)))
            _%$r117737%_))))
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
      (lambda (_%tab117710%_)
        (##unchecked-structure-ref
         _%tab117710%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab117708%_)
        (##unchecked-structure-ref
         _%tab117708%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab117706%_)
        (##unchecked-structure-ref
         _%tab117706%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab117703%_ _%val117704%_)
        (##unchecked-structure-set!
         _%tab117703%_
         _%val117704%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab117700%_ _%val117701%_)
        (##unchecked-structure-set!
         _%tab117700%_
         _%val117701%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab117697%_ _%val117698%_)
        (##unchecked-structure-set!
         _%tab117697%_
         _%val117698%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint117661%_
               _%klass117662%_
               _%flags117663%_
               _%lock117664%_)
        (let ((_%gcht117666%_
               (__gc-table-new
                (if (fixnum? _%size-hint117661%_) _%size-hint117661%_ '16)
                _%flags117663%_)))
          (##structure _%klass117662%_ _%gcht117666%_ '#f _%lock117664%_))))
    (define make-gc-table__0
      (lambda (_%size-hint117671%_)
        (let* ((_%klass117673%_ __gc-table::t)
               (_%flags117675%_ '0)
               (_%lock117677%_ '#f))
          (make-gc-table__%
           _%size-hint117671%_
           _%klass117673%_
           _%flags117675%_
           _%lock117677%_))))
    (define make-gc-table__1
      (lambda (_%size-hint117679%_ _%klass117680%_)
        (let* ((_%flags117682%_ '0) (_%lock117684%_ '#f))
          (make-gc-table__%
           _%size-hint117679%_
           _%klass117680%_
           _%flags117682%_
           _%lock117684%_))))
    (define make-gc-table__2
      (lambda (_%size-hint117686%_ _%klass117687%_ _%flags117688%_)
        (let ((_%lock117690%_ '#f))
          (make-gc-table__%
           _%size-hint117686%_
           _%klass117687%_
           _%flags117688%_
           _%lock117690%_))))
    (define make-gc-table
      (lambda _g120104_
        (let ((_g120105_ (##length _g120104_)))
          (cond ((##fx= _g120105_ 1) (apply make-gc-table__0 _g120104_))
                ((##fx= _g120105_ 2) (apply make-gc-table__1 _g120104_))
                ((##fx= _g120105_ 3) (apply make-gc-table__2 _g120104_))
                ((##fx= _g120105_ 4) (apply make-gc-table__% _g120104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g120104_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint117638%_ _%klass117639%_ _%flags117640%_)
        (make-gc-table__%
         _%size-hint117638%_
         _%klass117639%_
         _%flags117640%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint117645%_)
        (let* ((_%klass117647%_ __gc-table::t) (_%flags117649%_ '0))
          (make-gc-table/lock__%
           _%size-hint117645%_
           _%klass117647%_
           _%flags117649%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint117651%_ _%klass117652%_)
        (let ((_%flags117654%_ '0))
          (make-gc-table/lock__%
           _%size-hint117651%_
           _%klass117652%_
           _%flags117654%_))))
    (define make-gc-table/lock
      (lambda _g120106_
        (let ((_g120107_ (##length _g120106_)))
          (cond ((##fx= _g120107_ 1) (apply make-gc-table/lock__0 _g120106_))
                ((##fx= _g120107_ 2) (apply make-gc-table/lock__1 _g120106_))
                ((##fx= _g120107_ 3) (apply make-gc-table/lock__% _g120106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g120106_))))))
    (define __gc-table-immediate
      (lambda (_%tab117629%_)
        (let ((_%$e117631%_ (&gc-table-immediate _%tab117629%_)))
          (if _%$e117631%_
              _%$e117631%_
              (let ((_%immediate117635%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab117629%_ _%immediate117635%_)
                _%immediate117635%_)))))
    (define __gc-table-new
      (lambda (_%size117619%_ _%flags117620%_)
        (let* ((_%flags117622%_
                (##fxand _%flags117620%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags117624%_
                (fxior _%flags117622%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht117626%_
                (##gc-hash-table-allocate
                 _%size117619%_
                 _%flags117624%_
                 __gc-table-loads)))
          _%gcht117626%_)))
    (define __gc-table-e
      (lambda (_%tab117614%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht117617%_ (&gc-table-gcht _%tab117614%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht117617%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht117617%_
              (begin
                (__gc-table-rehash! _%tab117614%_)
                (&gc-table-gcht _%tab117614%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab117605%_)
        (let* ((_%old-table117607%_ (&gc-table-gcht _%tab117605%_))
               (_%new-table117609%_
                (##gc-hash-table-resize! _%old-table117607%_ __gc-table-loads))
               (_%gcht117611%_
                (##gc-hash-table-rehash!
                 _%old-table117607%_
                 _%new-table117609%_)))
          (&gc-table-gcht-set! _%tab117605%_ _%gcht117611%_))))
    (define gc-table-ref
      (lambda (_%tab117589%_ _%key117590%_ _%default117591%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key117590%_)
            (let* ((_%gcht117595%_ (__gc-table-e _%tab117589%_))
                   (_%value117597%_
                    (##gc-hash-table-ref _%gcht117595%_ _%key117590%_)))
              (if (eq? _%value117597%_ (macro-unused-obj))
                  _%default117591%_
                  _%value117597%_))
            (let ((_%$e117599%_ (&gc-table-immediate _%tab117589%_)))
              (if _%$e117599%_
                  (immediate-table-ref
                   _%$e117599%_
                   _%key117590%_
                   _%default117591%_)
                  _%default117591%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab117563%_ _%key117564%_ _%default117565%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117569%_ ((_%spin117572%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117563%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117563%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117572%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117569%_ (##fx+ _%spin117572%_ '1)))
                    (let ((_%owner117578%_
                           (##vector-ref (&gc-table-lock _%tab117563%_) '1)))
                      (if (eq? _%owner117578%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117578%_)
                              (let () (##thread-yield!) (_%again117569%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117584%_
               (gc-table-ref _%tab117563%_ _%key117564%_ _%default117565%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117563%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117563%_) '0 '0 '1)))
          _%$r117584%_)))
    (define gc-table-set!
      (lambda (_%tab117556%_ _%key117557%_ _%value117558%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key117557%_)
            (let ((_%gcht117561%_ (__gc-table-e _%tab117556%_)))
              (if (##gc-hash-table-set!
                   _%gcht117561%_
                   _%key117557%_
                   _%value117558%_)
                  (begin
                    (__gc-table-rehash! _%tab117556%_)
                    (gc-table-set!
                     _%tab117556%_
                     _%key117557%_
                     _%value117558%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab117556%_)
             _%key117557%_
             _%value117558%_))))
    (define gc-table-set/lock!
      (lambda (_%tab117530%_ _%key117531%_ _%value117532%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117536%_ ((_%spin117539%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117530%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117530%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117539%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117536%_ (##fx+ _%spin117539%_ '1)))
                    (let ((_%owner117545%_
                           (##vector-ref (&gc-table-lock _%tab117530%_) '1)))
                      (if (eq? _%owner117545%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117545%_)
                              (let () (##thread-yield!) (_%again117536%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117551%_
               (gc-table-set! _%tab117530%_ _%key117531%_ _%value117532%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117530%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117530%_) '0 '0 '1)))
          _%$r117551%_)))
    (define gc-table-update!
      (lambda (_%tab117523%_ _%key117524%_ _%update117525%_ _%default117526%_)
        (if (##mem-allocated? _%key117524%_)
            (let ((_%value117528%_
                   (gc-table-ref
                    _%tab117523%_
                    _%key117524%_
                    _%default117526%_)))
              (gc-table-set!
               _%tab117523%_
               _%key117524%_
               (_%update117525%_ _%value117528%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab117523%_)
             _%key117524%_
             _%update117525%_
             _%default117526%_))))
    (define gc-table-update!/lock
      (lambda (_%tab117496%_ _%key117497%_ _%update117498%_ _%default117499%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117503%_ ((_%spin117506%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117496%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117496%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117506%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117503%_ (##fx+ _%spin117506%_ '1)))
                    (let ((_%owner117512%_
                           (##vector-ref (&gc-table-lock _%tab117496%_) '1)))
                      (if (eq? _%owner117512%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117512%_)
                              (let () (##thread-yield!) (_%again117503%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117518%_
               (gc-table-update!
                _%tab117496%_
                _%key117497%_
                _%update117498%_
                _%default117499%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117496%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117496%_) '0 '0 '1)))
          _%$r117518%_)))
    (define gc-table-delete!
      (lambda (_%tab117484%_ _%key117485%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key117485%_)
            (let ((_%gcht117489%_ (__gc-table-e _%tab117484%_)))
              (if (##gc-hash-table-set!
                   _%gcht117489%_
                   _%key117485%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab117484%_)
                    (gc-table-delete! _%tab117484%_ _%key117485%_))
                  '#!void))
            (let ((_%$e117491%_ (&gc-table-immediate _%tab117484%_)))
              (if _%$e117491%_
                  (immediate-table-delete! _%$e117491%_ _%key117485%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab117459%_ _%key117460%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117464%_ ((_%spin117467%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117459%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117459%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117467%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117464%_ (##fx+ _%spin117467%_ '1)))
                    (let ((_%owner117473%_
                           (##vector-ref (&gc-table-lock _%tab117459%_) '1)))
                      (if (eq? _%owner117473%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117473%_)
                              (let () (##thread-yield!) (_%again117464%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117479%_ (gc-table-delete! _%tab117459%_ _%key117460%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117459%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117459%_) '0 '0 '1)))
          _%$r117479%_)))
    (define gc-table-for-each
      (lambda (_%tab117448%_ _%proc117449%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht117452%_ (__gc-table-e _%tab117448%_)))
            (##gc-hash-table-for-each _%proc117449%_ _%gcht117452%_))
          (let ((_%$e117454%_ (&gc-table-immediate _%tab117448%_)))
            (if _%$e117454%_
                (raw-table-for-each _%$e117454%_ _%proc117449%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab117423%_ _%proc117424%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117428%_ ((_%spin117431%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117423%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117423%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117431%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117428%_ (##fx+ _%spin117431%_ '1)))
                    (let ((_%owner117437%_
                           (##vector-ref (&gc-table-lock _%tab117423%_) '1)))
                      (if (eq? _%owner117437%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117437%_)
                              (let () (##thread-yield!) (_%again117428%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117443%_ (gc-table-for-each _%tab117423%_ _%proc117424%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117423%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117423%_) '0 '0 '1)))
          _%$r117443%_)))
    (define gc-table-copy
      (lambda (_%tab117411%_)
        (let* ((_%gcht117413%_ (__gc-table-e _%tab117411%_))
               (_%new-table117415%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht117413%_)
                 (macro-gc-hash-table-flags _%gcht117413%_)))
               (_%result117417%_
                (##structure
                 (##structure-type _%tab117411%_)
                 _%new-table117415%_
                 '#f)))
          (gc-table-for-each
           _%tab117411%_
           (lambda (_%k117420%_ _%v117421%_)
             (gc-table-set! _%result117417%_ _%k117420%_ _%v117421%_)))
          _%result117417%_)))
    (define gc-table-copy/lock
      (lambda (_%tab117387%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117391%_ ((_%spin117394%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117387%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117387%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117394%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117391%_ (##fx+ _%spin117394%_ '1)))
                    (let ((_%owner117400%_
                           (##vector-ref (&gc-table-lock _%tab117387%_) '1)))
                      (if (eq? _%owner117400%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117400%_)
                              (let () (##thread-yield!) (_%again117391%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117406%_ (gc-table-copy _%tab117387%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117387%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117387%_) '0 '0 '1)))
          _%$r117406%_)))
    (define gc-table-clear!
      (lambda (_%tab117380%_)
        (let* ((_%gcht117382%_ (__gc-table-e _%tab117380%_))
               (_%new-table117384%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht117382%_))))
          (&gc-table-gcht-set! _%tab117380%_ _%new-table117384%_)
          (&gc-table-immediate-set! _%tab117380%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab117356%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117360%_ ((_%spin117363%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117356%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117356%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117363%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117360%_ (##fx+ _%spin117363%_ '1)))
                    (let ((_%owner117369%_
                           (##vector-ref (&gc-table-lock _%tab117356%_) '1)))
                      (if (eq? _%owner117369%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117369%_)
                              (let () (##thread-yield!) (_%again117360%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117375%_ (gc-table-clear! _%tab117356%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117356%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117356%_) '0 '0 '1)))
          _%$r117375%_)))
    (define gc-table-length
      (lambda (_%tab117348%_)
        (let ((_%gcht117350%_ (__gc-table-e _%tab117348%_)))
          (fx+ (macro-gc-hash-table-count _%gcht117350%_)
               (let ((_%$e117352%_ (&gc-table-immediate _%tab117348%_)))
                 (if _%$e117352%_ (&raw-table-count _%$e117352%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab117324%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117328%_ ((_%spin117331%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117324%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117324%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117331%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117328%_ (##fx+ _%spin117331%_ '1)))
                    (let ((_%owner117337%_
                           (##vector-ref (&gc-table-lock _%tab117324%_) '1)))
                      (if (eq? _%owner117337%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117337%_)
                              (let () (##thread-yield!) (_%again117328%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117343%_ (gc-table-length _%tab117324%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117324%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117324%_) '0 '0 '1)))
          _%$r117343%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj117290%_)
        (declare (not interrupts-enabled))
        (let ((_%val117293%_
               (gc-table-ref __object-eq-hash _%obj117290%_ '#f)))
          (if _%val117293%_
              _%val117293%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again117297%_ ((_%spin117300%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin117300%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again117297%_ (##fx+ _%spin117300%_ '1)))
                            (let ((_%owner117306%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner117306%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner117306%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again117297%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r117319%_
                       (let ((_%val117312%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj117290%_
                               '#f)))
                         (if _%val117312%_
                             _%val117312%_
                             (let ((_%h117314%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e117316%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e117316%_ _%$e117316%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj117290%_
                                _%h117314%_)
                               _%h117314%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r117319%_))))))))
