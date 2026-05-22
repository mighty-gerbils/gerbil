(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1779435576)
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
      (lambda (_%obj119936%_)
        (if (##structure? _%obj119936%_)
            (##structure-instance-of? _%obj119936%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab119934%_)
        (##unchecked-structure-ref
         _%tab119934%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab119932%_)
        (##unchecked-structure-ref
         _%tab119932%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab119930%_)
        (##unchecked-structure-ref
         _%tab119930%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab119928%_)
        (##unchecked-structure-ref
         _%tab119928%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab119926%_)
        (##unchecked-structure-ref
         _%tab119926%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab119924%_)
        (##unchecked-structure-ref
         _%tab119924%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab119922%_)
        (##unchecked-structure-ref
         _%tab119922%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab119919%_ _%val119920%_)
        (##unchecked-structure-set!
         _%tab119919%_
         _%val119920%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab119916%_ _%val119917%_)
        (##unchecked-structure-set!
         _%tab119916%_
         _%val119917%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab119913%_ _%val119914%_)
        (##unchecked-structure-set!
         _%tab119913%_
         _%val119914%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab119910%_ _%val119911%_)
        (##unchecked-structure-set!
         _%tab119910%_
         _%val119911%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab119907%_ _%val119908%_)
        (##unchecked-structure-set!
         _%tab119907%_
         _%val119908%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab119904%_ _%val119905%_)
        (##unchecked-structure-set!
         _%tab119904%_
         _%val119905%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab119901%_ _%val119902%_)
        (##unchecked-structure-set!
         _%tab119901%_
         _%val119902%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint119899%_)
        (if (and (fixnum? _%size-hint119899%_) (##fx> _%size-hint119899%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint119899%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint119864%_
               _%hash119865%_
               _%test119866%_
               _%seed119867%_
               _%lock119868%_)
        (let* ((_%size119870%_ (raw-table-size-hint->size _%size-hint119864%_))
               (_%table119872%_
                (##make-vector _%size119870%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table119872%_
           '0
           (##fxquotient _%size119870%_ '2)
           _%hash119865%_
           _%test119866%_
           _%seed119867%_
           _%lock119868%_))))
    (define make-raw-table__0
      (lambda (_%size-hint119878%_ _%hash119879%_ _%test119880%_)
        (let* ((_%seed119882%_ '0) (_%lock119884%_ '#f))
          (make-raw-table__%
           _%size-hint119878%_
           _%hash119879%_
           _%test119880%_
           _%seed119882%_
           _%lock119884%_))))
    (define make-raw-table__1
      (lambda (_%size-hint119886%_
               _%hash119887%_
               _%test119888%_
               _%seed119889%_)
        (let ((_%lock119891%_ '#f))
          (make-raw-table__%
           _%size-hint119886%_
           _%hash119887%_
           _%test119888%_
           _%seed119889%_
           _%lock119891%_))))
    (define make-raw-table
      (lambda _g119937_
        (let ((_g119938_ (##length _g119937_)))
          (cond ((##fx= _g119938_ 3) (apply make-raw-table__0 _g119937_))
                ((##fx= _g119938_ 4) (apply make-raw-table__1 _g119937_))
                ((##fx= _g119938_ 5) (apply make-raw-table__% _g119937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g119937_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint119844%_
               _%hash119845%_
               _%test119846%_
               _%seed119847%_)
        (make-raw-table__%
         _%size-hint119844%_
         _%hash119845%_
         _%test119846%_
         _%seed119847%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint119852%_ _%hash119853%_ _%test119854%_)
        (let ((_%seed119856%_ '0))
          (make-raw-table/lock__%
           _%size-hint119852%_
           _%hash119853%_
           _%test119854%_
           _%seed119856%_))))
    (define make-raw-table/lock
      (lambda _g119939_
        (let ((_g119940_ (##length _g119939_)))
          (cond ((##fx= _g119940_ 3) (apply make-raw-table/lock__0 _g119939_))
                ((##fx= _g119940_ 4) (apply make-raw-table/lock__% _g119939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g119939_))))))
    (define raw-table-length
      (lambda (_%tab119841%_) (&raw-table-count _%tab119841%_)))
    (define raw-table-length/lock
      (lambda (_%tab119814%_)
        (let ((_%lock119816%_ (&raw-table-lock _%tab119814%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119821%_ ((_%spin119824%_ '0))
              (if (##fx= (##vector-cas! _%lock119816%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119816%_ '1 (current-thread))
                  (if (##fx< _%spin119824%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119821%_ (##fx+ _%spin119824%_ '1)))
                      (let ((_%owner119830%_ (##vector-ref _%lock119816%_ '1)))
                        (if (eq? _%owner119830%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119830%_)
                                (let () (##thread-yield!) (_%again119821%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119836%_ (&raw-table-count _%tab119814%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119816%_ '1 '#f)
                (##vector-cas! _%lock119816%_ '0 '0 '1)))
            _%$r119836%_))))
    (define raw-table-ref
      (lambda (_%tab119766%_ _%key119767%_ _%default119768%_)
        (let ((_%table119770%_ (&raw-table-table _%tab119766%_))
              (_%seed119771%_ (&raw-table-seed _%tab119766%_))
              (_%hash119772%_ (&raw-table-hash _%tab119766%_))
              (_%test119773%_ (&raw-table-test _%tab119766%_)))
          (let* ((_%h119775%_
                  (fxxor (_%hash119772%_ _%key119767%_) _%seed119771%_))
                 (_%size119778%_ (vector-length _%table119770%_))
                 (_%entries119781%_ (##fxquotient _%size119778%_ '2))
                 (_%start119784%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119775%_ _%entries119781%_)
                   '1)))
            (let _%loop119788%_ ((_%probe119791%_ _%start119784%_)
                                 (_%i119793%_ '1)
                                 (_%deleted119795%_ '#f))
              (let ((_%k119798%_ (vector-ref _%table119770%_ _%probe119791%_)))
                (if (eq? _%k119798%_ (macro-unused-obj))
                    _%default119768%_
                    (if (eq? _%k119798%_ (macro-deleted-obj))
                        (_%loop119788%_
                         (let ((_%next-probe119803%_
                                (fx+ _%start119784%_
                                     _%i119793%_
                                     (fx* _%i119793%_ _%i119793%_))))
                           (##fxmodulo _%next-probe119803%_ _%size119778%_))
                         (##fx+ _%i119793%_ '1)
                         (let ((_%$e119806%_ _%deleted119795%_))
                           (if _%$e119806%_ _%$e119806%_ _%probe119791%_)))
                        (if (_%test119773%_ _%key119767%_ _%k119798%_)
                            (vector-ref
                             _%table119770%_
                             (##fx+ _%probe119791%_ '1))
                            (_%loop119788%_
                             (let ((_%next-probe119811%_
                                    (fx+ _%start119784%_
                                         _%i119793%_
                                         (fx* _%i119793%_ _%i119793%_))))
                               (##fxmodulo
                                _%next-probe119811%_
                                _%size119778%_))
                             (##fx+ _%i119793%_ '1)
                             _%deleted119795%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab119737%_ _%key119738%_ _%default119739%_)
        (let ((_%lock119741%_ (&raw-table-lock _%tab119737%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119746%_ ((_%spin119749%_ '0))
              (if (##fx= (##vector-cas! _%lock119741%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119741%_ '1 (current-thread))
                  (if (##fx< _%spin119749%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119746%_ (##fx+ _%spin119749%_ '1)))
                      (let ((_%owner119755%_ (##vector-ref _%lock119741%_ '1)))
                        (if (eq? _%owner119755%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119755%_)
                                (let () (##thread-yield!) (_%again119746%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119761%_
                 (raw-table-ref
                  _%tab119737%_
                  _%key119738%_
                  _%default119739%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119741%_ '1 '#f)
                (##vector-cas! _%lock119741%_ '0 '0 '1)))
            _%$r119761%_))))
    (define raw-table-set!
      (lambda (_%tab119733%_ _%key119734%_ _%value119735%_)
        (if (##fx< (&raw-table-free _%tab119733%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119733%_))
                    '4))
            (__raw-table-rehash! _%tab119733%_)
            '#!void)
        (__raw-table-set! _%tab119733%_ _%key119734%_ _%value119735%_)))
    (define raw-table-set!/lock
      (lambda (_%tab119704%_ _%key119705%_ _%value119706%_)
        (let ((_%lock119708%_ (&raw-table-lock _%tab119704%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119713%_ ((_%spin119716%_ '0))
              (if (##fx= (##vector-cas! _%lock119708%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119708%_ '1 (current-thread))
                  (if (##fx< _%spin119716%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119713%_ (##fx+ _%spin119716%_ '1)))
                      (let ((_%owner119722%_ (##vector-ref _%lock119708%_ '1)))
                        (if (eq? _%owner119722%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119722%_)
                                (let () (##thread-yield!) (_%again119713%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119728%_
                 (raw-table-set! _%tab119704%_ _%key119705%_ _%value119706%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119708%_ '1 '#f)
                (##vector-cas! _%lock119708%_ '0 '0 '1)))
            _%$r119728%_))))
    (define raw-table-update!
      (lambda (_%tab119699%_ _%key119700%_ _%update119701%_ _%default119702%_)
        (if (##fx< (&raw-table-free _%tab119699%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119699%_))
                    '4))
            (__raw-table-rehash! _%tab119699%_)
            '#!void)
        (__raw-table-update!
         _%tab119699%_
         _%key119700%_
         _%update119701%_
         _%default119702%_)))
    (define raw-table-update!/lock
      (lambda (_%tab119669%_ _%key119670%_ _%update119671%_ _%default119672%_)
        (let ((_%lock119674%_ (&raw-table-lock _%tab119669%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119679%_ ((_%spin119682%_ '0))
              (if (##fx= (##vector-cas! _%lock119674%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119674%_ '1 (current-thread))
                  (if (##fx< _%spin119682%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119679%_ (##fx+ _%spin119682%_ '1)))
                      (let ((_%owner119688%_ (##vector-ref _%lock119674%_ '1)))
                        (if (eq? _%owner119688%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119688%_)
                                (let () (##thread-yield!) (_%again119679%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119694%_
                 (raw-table-update!
                  _%tab119669%_
                  _%key119670%_
                  _%update119671%_
                  _%default119672%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119674%_ '1 '#f)
                (##vector-cas! _%lock119674%_ '0 '0 '1)))
            _%$r119694%_))))
    (define raw-table-delete!
      (lambda (_%tab119626%_ _%key119627%_)
        (let ((_%table119629%_ (&raw-table-table _%tab119626%_))
              (_%seed119630%_ (&raw-table-seed _%tab119626%_))
              (_%hash119631%_ (&raw-table-hash _%tab119626%_))
              (_%test119632%_ (&raw-table-test _%tab119626%_)))
          (let* ((_%h119634%_
                  (fxxor (_%hash119631%_ _%key119627%_) _%seed119630%_))
                 (_%size119637%_ (vector-length _%table119629%_))
                 (_%entries119640%_ (##fxquotient _%size119637%_ '2))
                 (_%start119643%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119634%_ _%entries119640%_)
                   '1)))
            (let _%loop119647%_ ((_%probe119650%_ _%start119643%_)
                                 (_%i119652%_ '1))
              (let ((_%k119655%_ (vector-ref _%table119629%_ _%probe119650%_)))
                (if (eq? _%k119655%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119655%_ (macro-deleted-obj))
                        (_%loop119647%_
                         (let ((_%next-probe119660%_
                                (fx+ _%start119643%_
                                     _%i119652%_
                                     (fx* _%i119652%_ _%i119652%_))))
                           (##fxmodulo _%next-probe119660%_ _%size119637%_))
                         (##fx+ _%i119652%_ '1))
                        (if (_%test119632%_ _%key119627%_ _%k119655%_)
                            (let ()
                              (vector-set!
                               _%table119629%_
                               _%probe119650%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119629%_
                               (##fx+ _%probe119650%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab119626%_
                               (##fx- (&raw-table-count _%tab119626%_) '1)))
                            (_%loop119647%_
                             (let ((_%next-probe119666%_
                                    (fx+ _%start119643%_
                                         _%i119652%_
                                         (fx* _%i119652%_ _%i119652%_))))
                               (##fxmodulo
                                _%next-probe119666%_
                                _%size119637%_))
                             (##fx+ _%i119652%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab119598%_ _%key119599%_)
        (let ((_%lock119601%_ (&raw-table-lock _%tab119598%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119606%_ ((_%spin119609%_ '0))
              (if (##fx= (##vector-cas! _%lock119601%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119601%_ '1 (current-thread))
                  (if (##fx< _%spin119609%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119606%_ (##fx+ _%spin119609%_ '1)))
                      (let ((_%owner119615%_ (##vector-ref _%lock119601%_ '1)))
                        (if (eq? _%owner119615%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119615%_)
                                (let () (##thread-yield!) (_%again119606%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119621%_ (raw-table-delete! _%tab119598%_ _%key119599%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119601%_ '1 '#f)
                (##vector-cas! _%lock119601%_ '0 '0 '1)))
            _%$r119621%_))))
    (define raw-table-for-each
      (lambda (_%tab119582%_ _%proc119583%_)
        (let* ((_%table119585%_ (&raw-table-table _%tab119582%_))
               (_%size119587%_ (vector-length _%table119585%_)))
          (let _%loop119590%_ ((_%i119592%_ '0))
            (if (##fx< _%i119592%_ _%size119587%_)
                (begin
                  (let ((_%key119594%_
                         (vector-ref _%table119585%_ _%i119592%_)))
                    (if (if (eq? _%key119594%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key119594%_ (macro-deleted-obj))))
                        (let ((_%value119596%_
                               (vector-ref
                                _%table119585%_
                                (##fx+ _%i119592%_ '1))))
                          (_%proc119583%_ _%key119594%_ _%value119596%_))
                        '#!void))
                  (_%loop119590%_ (##fx+ _%i119592%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab119554%_ _%proc119555%_)
        (let ((_%lock119557%_ (&raw-table-lock _%tab119554%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119562%_ ((_%spin119565%_ '0))
              (if (##fx= (##vector-cas! _%lock119557%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119557%_ '1 (current-thread))
                  (if (##fx< _%spin119565%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119562%_ (##fx+ _%spin119565%_ '1)))
                      (let ((_%owner119571%_ (##vector-ref _%lock119557%_ '1)))
                        (if (eq? _%owner119571%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119571%_)
                                (let () (##thread-yield!) (_%again119562%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119577%_
                 (raw-table-for-each _%tab119554%_ _%proc119555%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119557%_ '1 '#f)
                (##vector-cas! _%lock119557%_ '0 '0 '1)))
            _%$r119577%_))))
    (define raw-table-copy
      (lambda (_%tab119550%_)
        (let ((_%new-tab119552%_ (##structure-copy _%tab119550%_)))
          (&raw-table-table-set!
           _%new-tab119552%_
           (vector-copy (&raw-table-table _%tab119550%_)))
          _%new-tab119552%_)))
    (define raw-table-copy/lock
      (lambda (_%tab119523%_)
        (let ((_%lock119525%_ (&raw-table-lock _%tab119523%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119530%_ ((_%spin119533%_ '0))
              (if (##fx= (##vector-cas! _%lock119525%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119525%_ '1 (current-thread))
                  (if (##fx< _%spin119533%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119530%_ (##fx+ _%spin119533%_ '1)))
                      (let ((_%owner119539%_ (##vector-ref _%lock119525%_ '1)))
                        (if (eq? _%owner119539%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119539%_)
                                (let () (##thread-yield!) (_%again119530%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119545%_ (raw-table-copy _%tab119523%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119525%_ '1 '#f)
                (##vector-cas! _%lock119525%_ '0 '0 '1)))
            _%$r119545%_))))
    (define raw-table-clear!
      (lambda (_%tab119521%_)
        (vector-fill! (&raw-table-table _%tab119521%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab119521%_ '0)
        (&raw-table-free-set!
         _%tab119521%_
         (##fxquotient (vector-length (&raw-table-table _%tab119521%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab119494%_)
        (let ((_%lock119496%_ (&raw-table-lock _%tab119494%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119501%_ ((_%spin119504%_ '0))
              (if (##fx= (##vector-cas! _%lock119496%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119496%_ '1 (current-thread))
                  (if (##fx< _%spin119504%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119501%_ (##fx+ _%spin119504%_ '1)))
                      (let ((_%owner119510%_ (##vector-ref _%lock119496%_ '1)))
                        (if (eq? _%owner119510%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119510%_)
                                (let () (##thread-yield!) (_%again119501%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119516%_ (raw-table-clear! _%tab119494%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119496%_ '1 '#f)
                (##vector-cas! _%lock119496%_ '0 '0 '1)))
            _%$r119516%_))))
    (define __raw-table-set!
      (lambda (_%tab119444%_ _%key119445%_ _%value119446%_)
        (let ((_%table119448%_ (&raw-table-table _%tab119444%_))
              (_%seed119449%_ (&raw-table-seed _%tab119444%_))
              (_%hash119450%_ (&raw-table-hash _%tab119444%_))
              (_%test119451%_ (&raw-table-test _%tab119444%_)))
          (let* ((_%h119453%_
                  (fxxor (_%hash119450%_ _%key119445%_) _%seed119449%_))
                 (_%size119456%_ (vector-length _%table119448%_))
                 (_%entries119459%_ (##fxquotient _%size119456%_ '2))
                 (_%start119462%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119453%_ _%entries119459%_)
                   '1)))
            (let _%loop119466%_ ((_%probe119469%_ _%start119462%_)
                                 (_%i119471%_ '1)
                                 (_%deleted119473%_ '#f))
              (let ((_%k119476%_ (vector-ref _%table119448%_ _%probe119469%_)))
                (if (eq? _%k119476%_ (macro-unused-obj))
                    (if _%deleted119473%_
                        (begin
                          (vector-set!
                           _%table119448%_
                           _%deleted119473%_
                           _%key119445%_)
                          (vector-set!
                           _%table119448%_
                           (##fx+ _%deleted119473%_ '1)
                           _%value119446%_)
                          (&raw-table-count-set!
                           _%tab119444%_
                           (##fx+ (&raw-table-count _%tab119444%_) '1)))
                        (begin
                          (vector-set!
                           _%table119448%_
                           _%probe119469%_
                           _%key119445%_)
                          (vector-set!
                           _%table119448%_
                           (##fx+ _%probe119469%_ '1)
                           _%value119446%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab119444%_
                             (##fx- (&raw-table-free _%tab119444%_) '1))
                            (&raw-table-count-set!
                             _%tab119444%_
                             (##fx+ (&raw-table-count _%tab119444%_) '1)))))
                    (if (eq? _%k119476%_ (macro-deleted-obj))
                        (_%loop119466%_
                         (let ((_%next-probe119483%_
                                (fx+ _%start119462%_
                                     _%i119471%_
                                     (fx* _%i119471%_ _%i119471%_))))
                           (##fxmodulo _%next-probe119483%_ _%size119456%_))
                         (##fx+ _%i119471%_ '1)
                         (let ((_%$e119486%_ _%deleted119473%_))
                           (if _%$e119486%_ _%$e119486%_ _%probe119469%_)))
                        (if (_%test119451%_ _%key119445%_ _%k119476%_)
                            (let ()
                              (vector-set!
                               _%table119448%_
                               _%probe119469%_
                               _%key119445%_)
                              (vector-set!
                               _%table119448%_
                               (##fx+ _%probe119469%_ '1)
                               _%value119446%_))
                            (_%loop119466%_
                             (let ((_%next-probe119491%_
                                    (fx+ _%start119462%_
                                         _%i119471%_
                                         (fx* _%i119471%_ _%i119471%_))))
                               (##fxmodulo
                                _%next-probe119491%_
                                _%size119456%_))
                             (##fx+ _%i119471%_ '1)
                             _%deleted119473%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab119393%_ _%key119394%_ _%update119395%_ _%default119396%_)
        (let ((_%table119398%_ (&raw-table-table _%tab119393%_))
              (_%seed119399%_ (&raw-table-seed _%tab119393%_))
              (_%hash119400%_ (&raw-table-hash _%tab119393%_))
              (_%test119401%_ (&raw-table-test _%tab119393%_)))
          (let* ((_%h119403%_
                  (fxxor (_%hash119400%_ _%key119394%_) _%seed119399%_))
                 (_%size119406%_ (vector-length _%table119398%_))
                 (_%entries119409%_ (##fxquotient _%size119406%_ '2))
                 (_%start119412%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119403%_ _%entries119409%_)
                   '1)))
            (let _%loop119416%_ ((_%probe119419%_ _%start119412%_)
                                 (_%i119421%_ '1)
                                 (_%deleted119423%_ '#f))
              (let ((_%k119426%_ (vector-ref _%table119398%_ _%probe119419%_)))
                (if (eq? _%k119426%_ (macro-unused-obj))
                    (if _%deleted119423%_
                        (begin
                          (vector-set!
                           _%table119398%_
                           _%deleted119423%_
                           _%key119394%_)
                          (vector-set!
                           _%table119398%_
                           (##fx+ _%deleted119423%_ '1)
                           (_%update119395%_ _%default119396%_))
                          (&raw-table-count-set!
                           _%tab119393%_
                           (##fx+ (&raw-table-count _%tab119393%_) '1)))
                        (begin
                          (vector-set!
                           _%table119398%_
                           _%probe119419%_
                           _%key119394%_)
                          (vector-set!
                           _%table119398%_
                           (##fx+ _%probe119419%_ '1)
                           (_%update119395%_ _%default119396%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab119393%_
                             (##fx- (&raw-table-free _%tab119393%_) '1))
                            (&raw-table-count-set!
                             _%tab119393%_
                             (##fx+ (&raw-table-count _%tab119393%_) '1)))))
                    (if (eq? _%k119426%_ (macro-deleted-obj))
                        (_%loop119416%_
                         (let ((_%next-probe119433%_
                                (fx+ _%start119412%_
                                     _%i119421%_
                                     (fx* _%i119421%_ _%i119421%_))))
                           (##fxmodulo _%next-probe119433%_ _%size119406%_))
                         (##fx+ _%i119421%_ '1)
                         (let ((_%$e119436%_ _%deleted119423%_))
                           (if _%$e119436%_ _%$e119436%_ _%probe119419%_)))
                        (if (_%test119401%_ _%key119394%_ _%k119426%_)
                            (let ()
                              (vector-set!
                               _%table119398%_
                               _%probe119419%_
                               _%key119394%_)
                              (vector-set!
                               _%table119398%_
                               (##fx+ _%probe119419%_ '1)
                               (_%update119395%_
                                (vector-ref
                                 _%table119398%_
                                 (##fx+ _%probe119419%_ '1)))))
                            (_%loop119416%_
                             (let ((_%next-probe119441%_
                                    (fx+ _%start119412%_
                                         _%i119421%_
                                         (fx* _%i119421%_ _%i119421%_))))
                               (##fxmodulo
                                _%next-probe119441%_
                                _%size119406%_))
                             (##fx+ _%i119421%_ '1)
                             _%deleted119423%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab119374%_)
        (let* ((_%old-table119376%_ (&raw-table-table _%tab119374%_))
               (_%old-size119378%_ (vector-length _%old-table119376%_))
               (_%new-size119380%_
                (if (##fx< (&raw-table-count _%tab119374%_)
                           (##fxquotient _%old-size119378%_ '4))
                    (vector-length _%old-table119376%_)
                    (##fx* '2 (vector-length _%old-table119376%_))))
               (_%new-table119382%_
                (##make-vector _%new-size119380%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab119374%_ _%new-table119382%_)
          (&raw-table-count-set! _%tab119374%_ '0)
          (&raw-table-free-set!
           _%tab119374%_
           (##fxquotient _%new-size119380%_ '2))
          (let _%lp119385%_ ((_%i119387%_ '0))
            (if (##fx< _%i119387%_ _%old-size119378%_)
                (begin
                  (let ((_%key119389%_
                         (vector-ref _%old-table119376%_ _%i119387%_)))
                    (if (if (eq? _%key119389%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key119389%_ (macro-deleted-obj))))
                        (let ((_%value119391%_
                               (vector-ref
                                _%old-table119376%_
                                (##fx+ _%i119387%_ '1))))
                          (__raw-table-set!
                           _%tab119374%_
                           _%key119389%_
                           _%value119391%_))
                        '#!void))
                  (_%lp119385%_ (##fx+ _%i119387%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj119366%_)
        (let ((_%t119368%_ (##type _%obj119366%_)))
          (if (##fx= (##fxand _%t119368%_ '1) '0)
              (fxand (##type-cast _%obj119366%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj119366%_)
                  (##symbol-hash _%obj119366%_)
                  (if (procedure? _%obj119366%_)
                      (procedure-hash _%obj119366%_)
                      (fxand (__object->eq-hash _%obj119366%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj119362%_)
        (let ((_%h119364%_
               (if (##closure? _%obj119362%_)
                   (__object->eq-hash _%obj119362%_)
                   (##type-cast _%obj119362%_ '0))))
          (fxand _%h119364%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj119360%_) (__object->eq-hash _%obj119360%_)))
    (define eqv-hash
      (lambda (_%obj119350%_)
        (letrec ((_%combine119352%_
                  (lambda (_%a119357%_ _%b119358%_)
                    (fxand (##fx* (##fx+ _%a119357%_
                                         (fxarithmetic-shift-left
                                          _%b119358%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash119353%_
                  (lambda (_%obj119355%_)
                    (macro-number-dispatch
                     _%obj119355%_
                     (eq-hash _%obj119355%_)
                     (fxand _%obj119355%_ (macro-max-fixnum32))
                     (modulo _%obj119355%_ '331804481)
                     (_%combine119352%_
                      (_%hash119353%_ (macro-ratnum-numerator _%obj119355%_))
                      (_%hash119353%_
                       (macro-ratnum-denominator _%obj119355%_)))
                     (_%combine119352%_
                      (##u16vector-ref _%obj119355%_ '0)
                      (_%combine119352%_
                       (##u16vector-ref _%obj119355%_ '1)
                       (_%combine119352%_
                        (##u16vector-ref _%obj119355%_ '2)
                        (##u16vector-ref _%obj119355%_ '3))))
                     (_%combine119352%_
                      (_%hash119353%_ (macro-cpxnum-real _%obj119355%_))
                      (_%hash119353%_ (macro-cpxnum-imag _%obj119355%_)))))))
          (_%hash119353%_ _%obj119350%_))))
    (define symbolic?
      (lambda (_%obj119345%_)
        (let ((_%$e119347%_ (symbol? _%obj119345%_)))
          (if _%$e119347%_ _%$e119347%_ (keyword? _%obj119345%_)))))
    (define symbolic-hash
      (lambda (_%obj119343%_) (##symbol-hash _%obj119343%_)))
    (define string-hash
      (lambda (_%obj119341%_) (##string=?-hash _%obj119341%_)))
    (define immediate-hash
      (lambda (_%obj119339%_) (##type-cast _%obj119339%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint119321%_ _%seed119322%_)
        (make-raw-table__1 _%size-hint119321%_ eq-hash eq? _%seed119322%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint119328%_ '#f) (_%seed119330%_ '0))
          (make-eq-table__% _%size-hint119328%_ _%seed119330%_))))
    (define make-eq-table__1
      (lambda (_%size-hint119332%_)
        (let ((_%seed119334%_ '0))
          (make-eq-table__% _%size-hint119332%_ _%seed119334%_))))
    (define make-eq-table
      (lambda _g119941_
        (let ((_g119942_ (##length _g119941_)))
          (cond ((##fx= _g119942_ 0) (apply make-eq-table__0 _g119941_))
                ((##fx= _g119942_ 1) (apply make-eq-table__1 _g119941_))
                ((##fx= _g119942_ 2) (apply make-eq-table__% _g119941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g119941_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint119301%_ _%seed119303%_)
        (make-raw-table/lock__%
         _%size-hint119301%_
         eq-hash
         eq?
         _%seed119303%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint119309%_ '#f) (_%seed119311%_ '0))
          (make-eq-table/lock__% _%size-hint119309%_ _%seed119311%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint119313%_)
        (let ((_%seed119315%_ '0))
          (make-eq-table/lock__% _%size-hint119313%_ _%seed119315%_))))
    (define make-eq-table/lock
      (lambda _g119943_
        (let ((_g119944_ (##length _g119943_)))
          (cond ((##fx= _g119944_ 0) (apply make-eq-table/lock__0 _g119943_))
                ((##fx= _g119944_ 1) (apply make-eq-table/lock__1 _g119943_))
                ((##fx= _g119944_ 2) (apply make-eq-table/lock__% _g119943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g119943_))))))
    (define eq-table-ref
      (lambda (_%tab119254%_ _%key119255%_ _%default119256%_)
        (let ((_%table119258%_ (&raw-table-table _%tab119254%_))
              (_%seed119259%_ (&raw-table-seed _%tab119254%_)))
          (let* ((_%h119261%_ (fxxor (eq-hash _%key119255%_) _%seed119259%_))
                 (_%size119264%_ (vector-length _%table119258%_))
                 (_%entries119267%_ (##fxquotient _%size119264%_ '2))
                 (_%start119270%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119261%_ _%entries119267%_)
                   '1)))
            (let _%loop119274%_ ((_%probe119277%_ _%start119270%_)
                                 (_%i119279%_ '1)
                                 (_%deleted119281%_ '#f))
              (let ((_%k119284%_ (vector-ref _%table119258%_ _%probe119277%_)))
                (if (eq? _%k119284%_ (macro-unused-obj))
                    _%default119256%_
                    (if (eq? _%k119284%_ (macro-deleted-obj))
                        (_%loop119274%_
                         (let ((_%next-probe119289%_
                                (fx+ _%start119270%_
                                     _%i119279%_
                                     (fx* _%i119279%_ _%i119279%_))))
                           (##fxmodulo _%next-probe119289%_ _%size119264%_))
                         (##fx+ _%i119279%_ '1)
                         (let ((_%$e119292%_ _%deleted119281%_))
                           (if _%$e119292%_ _%$e119292%_ _%probe119277%_)))
                        (if (eq? _%key119255%_ _%k119284%_)
                            (vector-ref
                             _%table119258%_
                             (##fx+ _%probe119277%_ '1))
                            (_%loop119274%_
                             (let ((_%next-probe119297%_
                                    (fx+ _%start119270%_
                                         _%i119279%_
                                         (fx* _%i119279%_ _%i119279%_))))
                               (##fxmodulo
                                _%next-probe119297%_
                                _%size119264%_))
                             (##fx+ _%i119279%_ '1)
                             _%deleted119281%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab119225%_ _%key119226%_ _%default119227%_)
        (let ((_%lock119229%_ (&raw-table-lock _%tab119225%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119234%_ ((_%spin119237%_ '0))
              (if (##fx= (##vector-cas! _%lock119229%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119229%_ '1 (current-thread))
                  (if (##fx< _%spin119237%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119234%_ (##fx+ _%spin119237%_ '1)))
                      (let ((_%owner119243%_ (##vector-ref _%lock119229%_ '1)))
                        (if (eq? _%owner119243%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119243%_)
                                (let () (##thread-yield!) (_%again119234%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119249%_
                 (eq-table-ref _%tab119225%_ _%key119226%_ _%default119227%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119229%_ '1 '#f)
                (##vector-cas! _%lock119229%_ '0 '0 '1)))
            _%$r119249%_))))
    (define __eq-table-set!
      (lambda (_%tab119177%_ _%key119178%_ _%value119179%_)
        (let ((_%table119181%_ (&raw-table-table _%tab119177%_))
              (_%seed119182%_ (&raw-table-seed _%tab119177%_)))
          (let* ((_%h119184%_ (fxxor (eq-hash _%key119178%_) _%seed119182%_))
                 (_%size119187%_ (vector-length _%table119181%_))
                 (_%entries119190%_ (##fxquotient _%size119187%_ '2))
                 (_%start119193%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119184%_ _%entries119190%_)
                   '1)))
            (let _%loop119197%_ ((_%probe119200%_ _%start119193%_)
                                 (_%i119202%_ '1)
                                 (_%deleted119204%_ '#f))
              (let ((_%k119207%_ (vector-ref _%table119181%_ _%probe119200%_)))
                (if (eq? _%k119207%_ (macro-unused-obj))
                    (if _%deleted119204%_
                        (begin
                          (vector-set!
                           _%table119181%_
                           _%deleted119204%_
                           _%key119178%_)
                          (vector-set!
                           _%table119181%_
                           (##fx+ _%deleted119204%_ '1)
                           _%value119179%_)
                          (&raw-table-count-set!
                           _%tab119177%_
                           (##fx+ (&raw-table-count _%tab119177%_) '1)))
                        (begin
                          (vector-set!
                           _%table119181%_
                           _%probe119200%_
                           _%key119178%_)
                          (vector-set!
                           _%table119181%_
                           (##fx+ _%probe119200%_ '1)
                           _%value119179%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab119177%_
                             (##fx- (&raw-table-free _%tab119177%_) '1))
                            (&raw-table-count-set!
                             _%tab119177%_
                             (##fx+ (&raw-table-count _%tab119177%_) '1)))))
                    (if (eq? _%k119207%_ (macro-deleted-obj))
                        (_%loop119197%_
                         (let ((_%next-probe119214%_
                                (fx+ _%start119193%_
                                     _%i119202%_
                                     (fx* _%i119202%_ _%i119202%_))))
                           (##fxmodulo _%next-probe119214%_ _%size119187%_))
                         (##fx+ _%i119202%_ '1)
                         (let ((_%$e119217%_ _%deleted119204%_))
                           (if _%$e119217%_ _%$e119217%_ _%probe119200%_)))
                        (if (eq? _%key119178%_ _%k119207%_)
                            (let ()
                              (vector-set!
                               _%table119181%_
                               _%probe119200%_
                               _%key119178%_)
                              (vector-set!
                               _%table119181%_
                               (##fx+ _%probe119200%_ '1)
                               _%value119179%_))
                            (_%loop119197%_
                             (let ((_%next-probe119222%_
                                    (fx+ _%start119193%_
                                         _%i119202%_
                                         (fx* _%i119202%_ _%i119202%_))))
                               (##fxmodulo
                                _%next-probe119222%_
                                _%size119187%_))
                             (##fx+ _%i119202%_ '1)
                             _%deleted119204%_))))))))))
    (define eq-table-set!
      (lambda (_%tab119173%_ _%key119174%_ _%value119175%_)
        (if (##fx< (&raw-table-free _%tab119173%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119173%_))
                    '4))
            (__raw-table-rehash! _%tab119173%_)
            '#!void)
        (__eq-table-set! _%tab119173%_ _%key119174%_ _%value119175%_)))
    (define eq-table-set!/lock
      (lambda (_%tab119143%_ _%key119144%_ _%value119145%_)
        (let ((_%lock119148%_ (&raw-table-lock _%tab119143%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119153%_ ((_%spin119156%_ '0))
              (if (##fx= (##vector-cas! _%lock119148%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119148%_ '1 (current-thread))
                  (if (##fx< _%spin119156%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119153%_ (##fx+ _%spin119156%_ '1)))
                      (let ((_%owner119162%_ (##vector-ref _%lock119148%_ '1)))
                        (if (eq? _%owner119162%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119162%_)
                                (let () (##thread-yield!) (_%again119153%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119168%_
                 (eq-table-set! _%tab119143%_ _%key119144%_ _%value119145%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119148%_ '1 '#f)
                (##vector-cas! _%lock119148%_ '0 '0 '1)))
            _%$r119168%_))))
    (define __eq-table-update!
      (lambda (_%tab119094%_
               _%key119095%_
               _%eq-table-update!119096%_
               _%default119097%_)
        (let ((_%table119099%_ (&raw-table-table _%tab119094%_))
              (_%seed119100%_ (&raw-table-seed _%tab119094%_)))
          (let* ((_%h119102%_ (fxxor (eq-hash _%key119095%_) _%seed119100%_))
                 (_%size119105%_ (vector-length _%table119099%_))
                 (_%entries119108%_ (##fxquotient _%size119105%_ '2))
                 (_%start119111%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119102%_ _%entries119108%_)
                   '1)))
            (let _%loop119115%_ ((_%probe119118%_ _%start119111%_)
                                 (_%i119120%_ '1)
                                 (_%deleted119122%_ '#f))
              (let ((_%k119125%_ (vector-ref _%table119099%_ _%probe119118%_)))
                (if (eq? _%k119125%_ (macro-unused-obj))
                    (if _%deleted119122%_
                        (begin
                          (vector-set!
                           _%table119099%_
                           _%deleted119122%_
                           _%key119095%_)
                          (vector-set!
                           _%table119099%_
                           (##fx+ _%deleted119122%_ '1)
                           (_%eq-table-update!119096%_ _%default119097%_))
                          (&raw-table-count-set!
                           _%tab119094%_
                           (##fx+ (&raw-table-count _%tab119094%_) '1)))
                        (begin
                          (vector-set!
                           _%table119099%_
                           _%probe119118%_
                           _%key119095%_)
                          (vector-set!
                           _%table119099%_
                           (##fx+ _%probe119118%_ '1)
                           (_%eq-table-update!119096%_ _%default119097%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab119094%_
                             (##fx- (&raw-table-free _%tab119094%_) '1))
                            (&raw-table-count-set!
                             _%tab119094%_
                             (##fx+ (&raw-table-count _%tab119094%_) '1)))))
                    (if (eq? _%k119125%_ (macro-deleted-obj))
                        (_%loop119115%_
                         (let ((_%next-probe119132%_
                                (fx+ _%start119111%_
                                     _%i119120%_
                                     (fx* _%i119120%_ _%i119120%_))))
                           (##fxmodulo _%next-probe119132%_ _%size119105%_))
                         (##fx+ _%i119120%_ '1)
                         (let ((_%$e119135%_ _%deleted119122%_))
                           (if _%$e119135%_ _%$e119135%_ _%probe119118%_)))
                        (if (eq? _%key119095%_ _%k119125%_)
                            (let ()
                              (vector-set!
                               _%table119099%_
                               _%probe119118%_
                               _%key119095%_)
                              (vector-set!
                               _%table119099%_
                               (##fx+ _%probe119118%_ '1)
                               (_%eq-table-update!119096%_
                                (vector-ref
                                 _%table119099%_
                                 (##fx+ _%probe119118%_ '1)))))
                            (_%loop119115%_
                             (let ((_%next-probe119140%_
                                    (fx+ _%start119111%_
                                         _%i119120%_
                                         (fx* _%i119120%_ _%i119120%_))))
                               (##fxmodulo
                                _%next-probe119140%_
                                _%size119105%_))
                             (##fx+ _%i119120%_ '1)
                             _%deleted119122%_))))))))))
    (define eq-table-update!
      (lambda (_%tab119089%_
               _%key119090%_
               _%eq-table-update!119091%_
               _%default119092%_)
        (if (##fx< (&raw-table-free _%tab119089%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119089%_))
                    '4))
            (__raw-table-rehash! _%tab119089%_)
            '#!void)
        (__eq-table-update!
         _%tab119089%_
         _%key119090%_
         _%eq-table-update!119091%_
         _%default119092%_)))
    (define eq-table-update!/lock
      (lambda (_%tab119058%_
               _%key119059%_
               _%eq-table-update!119060%_
               _%default119061%_)
        (let ((_%lock119064%_ (&raw-table-lock _%tab119058%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119069%_ ((_%spin119072%_ '0))
              (if (##fx= (##vector-cas! _%lock119064%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119064%_ '1 (current-thread))
                  (if (##fx< _%spin119072%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119069%_ (##fx+ _%spin119072%_ '1)))
                      (let ((_%owner119078%_ (##vector-ref _%lock119064%_ '1)))
                        (if (eq? _%owner119078%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119078%_)
                                (let () (##thread-yield!) (_%again119069%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119084%_
                 (_%eq-table-update!119060%_
                  _%tab119058%_
                  _%key119059%_
                  _%eq-table-update!119060%_
                  _%default119061%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119064%_ '1 '#f)
                (##vector-cas! _%lock119064%_ '0 '0 '1)))
            _%$r119084%_))))
    (define eq-table-delete!
      (lambda (_%tab119015%_ _%key119016%_)
        (let ((_%table119018%_ (&raw-table-table _%tab119015%_))
              (_%seed119020%_ (&raw-table-seed _%tab119015%_)))
          (let* ((_%h119023%_ (fxxor (eq-hash _%key119016%_) _%seed119020%_))
                 (_%size119026%_ (vector-length _%table119018%_))
                 (_%entries119029%_ (##fxquotient _%size119026%_ '2))
                 (_%start119032%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119023%_ _%entries119029%_)
                   '1)))
            (let _%loop119036%_ ((_%probe119039%_ _%start119032%_)
                                 (_%i119041%_ '1))
              (let ((_%k119044%_ (vector-ref _%table119018%_ _%probe119039%_)))
                (if (eq? _%k119044%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119044%_ (macro-deleted-obj))
                        (_%loop119036%_
                         (let ((_%next-probe119049%_
                                (fx+ _%start119032%_
                                     _%i119041%_
                                     (fx* _%i119041%_ _%i119041%_))))
                           (##fxmodulo _%next-probe119049%_ _%size119026%_))
                         (##fx+ _%i119041%_ '1))
                        (if (eq? _%key119016%_ _%k119044%_)
                            (let ()
                              (vector-set!
                               _%table119018%_
                               _%probe119039%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119018%_
                               (##fx+ _%probe119039%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab119015%_
                               (##fx- (&raw-table-count _%tab119015%_) '1)))
                            (_%loop119036%_
                             (let ((_%next-probe119055%_
                                    (fx+ _%start119032%_
                                         _%i119041%_
                                         (fx* _%i119041%_ _%i119041%_))))
                               (##fxmodulo
                                _%next-probe119055%_
                                _%size119026%_))
                             (##fx+ _%i119041%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab118985%_ _%key118987%_)
        (let ((_%lock118990%_ (&raw-table-lock _%tab118985%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118995%_ ((_%spin118998%_ '0))
              (if (##fx= (##vector-cas! _%lock118990%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118990%_ '1 (current-thread))
                  (if (##fx< _%spin118998%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118995%_ (##fx+ _%spin118998%_ '1)))
                      (let ((_%owner119004%_ (##vector-ref _%lock118990%_ '1)))
                        (if (eq? _%owner119004%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119004%_)
                                (let () (##thread-yield!) (_%again118995%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119010%_ (eq-table-delete! _%tab118985%_ _%key118987%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118990%_ '1 '#f)
                (##vector-cas! _%lock118990%_ '0 '0 '1)))
            _%$r119010%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint118967%_ _%seed118968%_)
        (make-raw-table__1 _%size-hint118967%_ eqv-hash eqv? _%seed118968%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint118974%_ '#f) (_%seed118976%_ '0))
          (make-eqv-table__% _%size-hint118974%_ _%seed118976%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint118978%_)
        (let ((_%seed118980%_ '0))
          (make-eqv-table__% _%size-hint118978%_ _%seed118980%_))))
    (define make-eqv-table
      (lambda _g119945_
        (let ((_g119946_ (##length _g119945_)))
          (cond ((##fx= _g119946_ 0) (apply make-eqv-table__0 _g119945_))
                ((##fx= _g119946_ 1) (apply make-eqv-table__1 _g119945_))
                ((##fx= _g119946_ 2) (apply make-eqv-table__% _g119945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g119945_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint118947%_ _%seed118949%_)
        (make-raw-table/lock__%
         _%size-hint118947%_
         eqv-hash
         eqv?
         _%seed118949%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint118955%_ '#f) (_%seed118957%_ '0))
          (make-eqv-table/lock__% _%size-hint118955%_ _%seed118957%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint118959%_)
        (let ((_%seed118961%_ '0))
          (make-eqv-table/lock__% _%size-hint118959%_ _%seed118961%_))))
    (define make-eqv-table/lock
      (lambda _g119947_
        (let ((_g119948_ (##length _g119947_)))
          (cond ((##fx= _g119948_ 0) (apply make-eqv-table/lock__0 _g119947_))
                ((##fx= _g119948_ 1) (apply make-eqv-table/lock__1 _g119947_))
                ((##fx= _g119948_ 2) (apply make-eqv-table/lock__% _g119947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g119947_))))))
    (define eqv-table-ref
      (lambda (_%tab118900%_ _%key118901%_ _%default118902%_)
        (let ((_%table118904%_ (&raw-table-table _%tab118900%_))
              (_%seed118905%_ (&raw-table-seed _%tab118900%_)))
          (let* ((_%h118907%_ (fxxor (eqv-hash _%key118901%_) _%seed118905%_))
                 (_%size118910%_ (vector-length _%table118904%_))
                 (_%entries118913%_ (##fxquotient _%size118910%_ '2))
                 (_%start118916%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118907%_ _%entries118913%_)
                   '1)))
            (let _%loop118920%_ ((_%probe118923%_ _%start118916%_)
                                 (_%i118925%_ '1)
                                 (_%deleted118927%_ '#f))
              (let ((_%k118930%_ (vector-ref _%table118904%_ _%probe118923%_)))
                (if (eq? _%k118930%_ (macro-unused-obj))
                    _%default118902%_
                    (if (eq? _%k118930%_ (macro-deleted-obj))
                        (_%loop118920%_
                         (let ((_%next-probe118935%_
                                (fx+ _%start118916%_
                                     _%i118925%_
                                     (fx* _%i118925%_ _%i118925%_))))
                           (##fxmodulo _%next-probe118935%_ _%size118910%_))
                         (##fx+ _%i118925%_ '1)
                         (let ((_%$e118938%_ _%deleted118927%_))
                           (if _%$e118938%_ _%$e118938%_ _%probe118923%_)))
                        (if (eqv? _%key118901%_ _%k118930%_)
                            (vector-ref
                             _%table118904%_
                             (##fx+ _%probe118923%_ '1))
                            (_%loop118920%_
                             (let ((_%next-probe118943%_
                                    (fx+ _%start118916%_
                                         _%i118925%_
                                         (fx* _%i118925%_ _%i118925%_))))
                               (##fxmodulo
                                _%next-probe118943%_
                                _%size118910%_))
                             (##fx+ _%i118925%_ '1)
                             _%deleted118927%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab118871%_ _%key118872%_ _%default118873%_)
        (let ((_%lock118875%_ (&raw-table-lock _%tab118871%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118880%_ ((_%spin118883%_ '0))
              (if (##fx= (##vector-cas! _%lock118875%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118875%_ '1 (current-thread))
                  (if (##fx< _%spin118883%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118880%_ (##fx+ _%spin118883%_ '1)))
                      (let ((_%owner118889%_ (##vector-ref _%lock118875%_ '1)))
                        (if (eq? _%owner118889%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118889%_)
                                (let () (##thread-yield!) (_%again118880%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118895%_
                 (eqv-table-ref
                  _%tab118871%_
                  _%key118872%_
                  _%default118873%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118875%_ '1 '#f)
                (##vector-cas! _%lock118875%_ '0 '0 '1)))
            _%$r118895%_))))
    (define __eqv-table-set!
      (lambda (_%tab118823%_ _%key118824%_ _%value118825%_)
        (let ((_%table118827%_ (&raw-table-table _%tab118823%_))
              (_%seed118828%_ (&raw-table-seed _%tab118823%_)))
          (let* ((_%h118830%_ (fxxor (eqv-hash _%key118824%_) _%seed118828%_))
                 (_%size118833%_ (vector-length _%table118827%_))
                 (_%entries118836%_ (##fxquotient _%size118833%_ '2))
                 (_%start118839%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118830%_ _%entries118836%_)
                   '1)))
            (let _%loop118843%_ ((_%probe118846%_ _%start118839%_)
                                 (_%i118848%_ '1)
                                 (_%deleted118850%_ '#f))
              (let ((_%k118853%_ (vector-ref _%table118827%_ _%probe118846%_)))
                (if (eq? _%k118853%_ (macro-unused-obj))
                    (if _%deleted118850%_
                        (begin
                          (vector-set!
                           _%table118827%_
                           _%deleted118850%_
                           _%key118824%_)
                          (vector-set!
                           _%table118827%_
                           (##fx+ _%deleted118850%_ '1)
                           _%value118825%_)
                          (&raw-table-count-set!
                           _%tab118823%_
                           (##fx+ (&raw-table-count _%tab118823%_) '1)))
                        (begin
                          (vector-set!
                           _%table118827%_
                           _%probe118846%_
                           _%key118824%_)
                          (vector-set!
                           _%table118827%_
                           (##fx+ _%probe118846%_ '1)
                           _%value118825%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab118823%_
                             (##fx- (&raw-table-free _%tab118823%_) '1))
                            (&raw-table-count-set!
                             _%tab118823%_
                             (##fx+ (&raw-table-count _%tab118823%_) '1)))))
                    (if (eq? _%k118853%_ (macro-deleted-obj))
                        (_%loop118843%_
                         (let ((_%next-probe118860%_
                                (fx+ _%start118839%_
                                     _%i118848%_
                                     (fx* _%i118848%_ _%i118848%_))))
                           (##fxmodulo _%next-probe118860%_ _%size118833%_))
                         (##fx+ _%i118848%_ '1)
                         (let ((_%$e118863%_ _%deleted118850%_))
                           (if _%$e118863%_ _%$e118863%_ _%probe118846%_)))
                        (if (eqv? _%key118824%_ _%k118853%_)
                            (let ()
                              (vector-set!
                               _%table118827%_
                               _%probe118846%_
                               _%key118824%_)
                              (vector-set!
                               _%table118827%_
                               (##fx+ _%probe118846%_ '1)
                               _%value118825%_))
                            (_%loop118843%_
                             (let ((_%next-probe118868%_
                                    (fx+ _%start118839%_
                                         _%i118848%_
                                         (fx* _%i118848%_ _%i118848%_))))
                               (##fxmodulo
                                _%next-probe118868%_
                                _%size118833%_))
                             (##fx+ _%i118848%_ '1)
                             _%deleted118850%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab118819%_ _%key118820%_ _%value118821%_)
        (if (##fx< (&raw-table-free _%tab118819%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118819%_))
                    '4))
            (__raw-table-rehash! _%tab118819%_)
            '#!void)
        (__eqv-table-set! _%tab118819%_ _%key118820%_ _%value118821%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab118789%_ _%key118790%_ _%value118791%_)
        (let ((_%lock118794%_ (&raw-table-lock _%tab118789%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118799%_ ((_%spin118802%_ '0))
              (if (##fx= (##vector-cas! _%lock118794%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118794%_ '1 (current-thread))
                  (if (##fx< _%spin118802%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118799%_ (##fx+ _%spin118802%_ '1)))
                      (let ((_%owner118808%_ (##vector-ref _%lock118794%_ '1)))
                        (if (eq? _%owner118808%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118808%_)
                                (let () (##thread-yield!) (_%again118799%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118814%_
                 (eqv-table-set! _%tab118789%_ _%key118790%_ _%value118791%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118794%_ '1 '#f)
                (##vector-cas! _%lock118794%_ '0 '0 '1)))
            _%$r118814%_))))
    (define __eqv-table-update!
      (lambda (_%tab118740%_
               _%key118741%_
               _%eqv-table-update!118742%_
               _%default118743%_)
        (let ((_%table118745%_ (&raw-table-table _%tab118740%_))
              (_%seed118746%_ (&raw-table-seed _%tab118740%_)))
          (let* ((_%h118748%_ (fxxor (eqv-hash _%key118741%_) _%seed118746%_))
                 (_%size118751%_ (vector-length _%table118745%_))
                 (_%entries118754%_ (##fxquotient _%size118751%_ '2))
                 (_%start118757%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118748%_ _%entries118754%_)
                   '1)))
            (let _%loop118761%_ ((_%probe118764%_ _%start118757%_)
                                 (_%i118766%_ '1)
                                 (_%deleted118768%_ '#f))
              (let ((_%k118771%_ (vector-ref _%table118745%_ _%probe118764%_)))
                (if (eq? _%k118771%_ (macro-unused-obj))
                    (if _%deleted118768%_
                        (begin
                          (vector-set!
                           _%table118745%_
                           _%deleted118768%_
                           _%key118741%_)
                          (vector-set!
                           _%table118745%_
                           (##fx+ _%deleted118768%_ '1)
                           (_%eqv-table-update!118742%_ _%default118743%_))
                          (&raw-table-count-set!
                           _%tab118740%_
                           (##fx+ (&raw-table-count _%tab118740%_) '1)))
                        (begin
                          (vector-set!
                           _%table118745%_
                           _%probe118764%_
                           _%key118741%_)
                          (vector-set!
                           _%table118745%_
                           (##fx+ _%probe118764%_ '1)
                           (_%eqv-table-update!118742%_ _%default118743%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab118740%_
                             (##fx- (&raw-table-free _%tab118740%_) '1))
                            (&raw-table-count-set!
                             _%tab118740%_
                             (##fx+ (&raw-table-count _%tab118740%_) '1)))))
                    (if (eq? _%k118771%_ (macro-deleted-obj))
                        (_%loop118761%_
                         (let ((_%next-probe118778%_
                                (fx+ _%start118757%_
                                     _%i118766%_
                                     (fx* _%i118766%_ _%i118766%_))))
                           (##fxmodulo _%next-probe118778%_ _%size118751%_))
                         (##fx+ _%i118766%_ '1)
                         (let ((_%$e118781%_ _%deleted118768%_))
                           (if _%$e118781%_ _%$e118781%_ _%probe118764%_)))
                        (if (eqv? _%key118741%_ _%k118771%_)
                            (let ()
                              (vector-set!
                               _%table118745%_
                               _%probe118764%_
                               _%key118741%_)
                              (vector-set!
                               _%table118745%_
                               (##fx+ _%probe118764%_ '1)
                               (_%eqv-table-update!118742%_
                                (vector-ref
                                 _%table118745%_
                                 (##fx+ _%probe118764%_ '1)))))
                            (_%loop118761%_
                             (let ((_%next-probe118786%_
                                    (fx+ _%start118757%_
                                         _%i118766%_
                                         (fx* _%i118766%_ _%i118766%_))))
                               (##fxmodulo
                                _%next-probe118786%_
                                _%size118751%_))
                             (##fx+ _%i118766%_ '1)
                             _%deleted118768%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab118735%_
               _%key118736%_
               _%eqv-table-update!118737%_
               _%default118738%_)
        (if (##fx< (&raw-table-free _%tab118735%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118735%_))
                    '4))
            (__raw-table-rehash! _%tab118735%_)
            '#!void)
        (__eqv-table-update!
         _%tab118735%_
         _%key118736%_
         _%eqv-table-update!118737%_
         _%default118738%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab118704%_
               _%key118705%_
               _%eqv-table-update!118706%_
               _%default118707%_)
        (let ((_%lock118710%_ (&raw-table-lock _%tab118704%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118715%_ ((_%spin118718%_ '0))
              (if (##fx= (##vector-cas! _%lock118710%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118710%_ '1 (current-thread))
                  (if (##fx< _%spin118718%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118715%_ (##fx+ _%spin118718%_ '1)))
                      (let ((_%owner118724%_ (##vector-ref _%lock118710%_ '1)))
                        (if (eq? _%owner118724%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118724%_)
                                (let () (##thread-yield!) (_%again118715%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118730%_
                 (_%eqv-table-update!118706%_
                  _%tab118704%_
                  _%key118705%_
                  _%eqv-table-update!118706%_
                  _%default118707%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118710%_ '1 '#f)
                (##vector-cas! _%lock118710%_ '0 '0 '1)))
            _%$r118730%_))))
    (define eqv-table-delete!
      (lambda (_%tab118661%_ _%key118662%_)
        (let ((_%table118664%_ (&raw-table-table _%tab118661%_))
              (_%seed118666%_ (&raw-table-seed _%tab118661%_)))
          (let* ((_%h118669%_ (fxxor (eqv-hash _%key118662%_) _%seed118666%_))
                 (_%size118672%_ (vector-length _%table118664%_))
                 (_%entries118675%_ (##fxquotient _%size118672%_ '2))
                 (_%start118678%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118669%_ _%entries118675%_)
                   '1)))
            (let _%loop118682%_ ((_%probe118685%_ _%start118678%_)
                                 (_%i118687%_ '1))
              (let ((_%k118690%_ (vector-ref _%table118664%_ _%probe118685%_)))
                (if (eq? _%k118690%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118690%_ (macro-deleted-obj))
                        (_%loop118682%_
                         (let ((_%next-probe118695%_
                                (fx+ _%start118678%_
                                     _%i118687%_
                                     (fx* _%i118687%_ _%i118687%_))))
                           (##fxmodulo _%next-probe118695%_ _%size118672%_))
                         (##fx+ _%i118687%_ '1))
                        (if (eqv? _%key118662%_ _%k118690%_)
                            (let ()
                              (vector-set!
                               _%table118664%_
                               _%probe118685%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118664%_
                               (##fx+ _%probe118685%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab118661%_
                               (##fx- (&raw-table-count _%tab118661%_) '1)))
                            (_%loop118682%_
                             (let ((_%next-probe118701%_
                                    (fx+ _%start118678%_
                                         _%i118687%_
                                         (fx* _%i118687%_ _%i118687%_))))
                               (##fxmodulo
                                _%next-probe118701%_
                                _%size118672%_))
                             (##fx+ _%i118687%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab118631%_ _%key118633%_)
        (let ((_%lock118636%_ (&raw-table-lock _%tab118631%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118641%_ ((_%spin118644%_ '0))
              (if (##fx= (##vector-cas! _%lock118636%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118636%_ '1 (current-thread))
                  (if (##fx< _%spin118644%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118641%_ (##fx+ _%spin118644%_ '1)))
                      (let ((_%owner118650%_ (##vector-ref _%lock118636%_ '1)))
                        (if (eq? _%owner118650%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118650%_)
                                (let () (##thread-yield!) (_%again118641%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118656%_ (eqv-table-delete! _%tab118631%_ _%key118633%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118636%_ '1 '#f)
                (##vector-cas! _%lock118636%_ '0 '0 '1)))
            _%$r118656%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint118613%_ _%seed118614%_)
        (make-raw-table__1
         _%size-hint118613%_
         symbolic-hash
         eq?
         _%seed118614%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint118620%_ '#f) (_%seed118622%_ '0))
          (make-symbolic-table__% _%size-hint118620%_ _%seed118622%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint118624%_)
        (let ((_%seed118626%_ '0))
          (make-symbolic-table__% _%size-hint118624%_ _%seed118626%_))))
    (define make-symbolic-table
      (lambda _g119949_
        (let ((_g119950_ (##length _g119949_)))
          (cond ((##fx= _g119950_ 0) (apply make-symbolic-table__0 _g119949_))
                ((##fx= _g119950_ 1) (apply make-symbolic-table__1 _g119949_))
                ((##fx= _g119950_ 2) (apply make-symbolic-table__% _g119949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g119949_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint118593%_ _%seed118595%_)
        (make-raw-table/lock__%
         _%size-hint118593%_
         symbolic-hash
         eq?
         _%seed118595%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint118601%_ '#f) (_%seed118603%_ '0))
          (make-symbolic-table/lock__% _%size-hint118601%_ _%seed118603%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint118605%_)
        (let ((_%seed118607%_ '0))
          (make-symbolic-table/lock__% _%size-hint118605%_ _%seed118607%_))))
    (define make-symbolic-table/lock
      (lambda _g119951_
        (let ((_g119952_ (##length _g119951_)))
          (cond ((##fx= _g119952_ 0)
                 (apply make-symbolic-table/lock__0 _g119951_))
                ((##fx= _g119952_ 1)
                 (apply make-symbolic-table/lock__1 _g119951_))
                ((##fx= _g119952_ 2)
                 (apply make-symbolic-table/lock__% _g119951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g119951_))))))
    (define symbolic-table-ref
      (lambda (_%tab118546%_ _%key118547%_ _%default118548%_)
        (let ((_%table118550%_ (&raw-table-table _%tab118546%_))
              (_%seed118551%_ (&raw-table-seed _%tab118546%_)))
          (let* ((_%h118553%_
                  (fxxor (##symbol-hash _%key118547%_) _%seed118551%_))
                 (_%size118556%_ (vector-length _%table118550%_))
                 (_%entries118559%_ (##fxquotient _%size118556%_ '2))
                 (_%start118562%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118553%_ _%entries118559%_)
                   '1)))
            (let _%loop118566%_ ((_%probe118569%_ _%start118562%_)
                                 (_%i118571%_ '1)
                                 (_%deleted118573%_ '#f))
              (let ((_%k118576%_ (vector-ref _%table118550%_ _%probe118569%_)))
                (if (eq? _%k118576%_ (macro-unused-obj))
                    _%default118548%_
                    (if (eq? _%k118576%_ (macro-deleted-obj))
                        (_%loop118566%_
                         (let ((_%next-probe118581%_
                                (fx+ _%start118562%_
                                     _%i118571%_
                                     (fx* _%i118571%_ _%i118571%_))))
                           (##fxmodulo _%next-probe118581%_ _%size118556%_))
                         (##fx+ _%i118571%_ '1)
                         (let ((_%$e118584%_ _%deleted118573%_))
                           (if _%$e118584%_ _%$e118584%_ _%probe118569%_)))
                        (if (eq? _%key118547%_ _%k118576%_)
                            (vector-ref
                             _%table118550%_
                             (##fx+ _%probe118569%_ '1))
                            (_%loop118566%_
                             (let ((_%next-probe118589%_
                                    (fx+ _%start118562%_
                                         _%i118571%_
                                         (fx* _%i118571%_ _%i118571%_))))
                               (##fxmodulo
                                _%next-probe118589%_
                                _%size118556%_))
                             (##fx+ _%i118571%_ '1)
                             _%deleted118573%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab118517%_ _%key118518%_ _%default118519%_)
        (let ((_%lock118521%_ (&raw-table-lock _%tab118517%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118526%_ ((_%spin118529%_ '0))
              (if (##fx= (##vector-cas! _%lock118521%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118521%_ '1 (current-thread))
                  (if (##fx< _%spin118529%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118526%_ (##fx+ _%spin118529%_ '1)))
                      (let ((_%owner118535%_ (##vector-ref _%lock118521%_ '1)))
                        (if (eq? _%owner118535%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118535%_)
                                (let () (##thread-yield!) (_%again118526%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118541%_
                 (symbolic-table-ref
                  _%tab118517%_
                  _%key118518%_
                  _%default118519%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118521%_ '1 '#f)
                (##vector-cas! _%lock118521%_ '0 '0 '1)))
            _%$r118541%_))))
    (define __symbolic-table-set!
      (lambda (_%tab118469%_ _%key118470%_ _%value118471%_)
        (let ((_%table118473%_ (&raw-table-table _%tab118469%_))
              (_%seed118474%_ (&raw-table-seed _%tab118469%_)))
          (let* ((_%h118476%_
                  (fxxor (##symbol-hash _%key118470%_) _%seed118474%_))
                 (_%size118479%_ (vector-length _%table118473%_))
                 (_%entries118482%_ (##fxquotient _%size118479%_ '2))
                 (_%start118485%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118476%_ _%entries118482%_)
                   '1)))
            (let _%loop118489%_ ((_%probe118492%_ _%start118485%_)
                                 (_%i118494%_ '1)
                                 (_%deleted118496%_ '#f))
              (let ((_%k118499%_ (vector-ref _%table118473%_ _%probe118492%_)))
                (if (eq? _%k118499%_ (macro-unused-obj))
                    (if _%deleted118496%_
                        (begin
                          (vector-set!
                           _%table118473%_
                           _%deleted118496%_
                           _%key118470%_)
                          (vector-set!
                           _%table118473%_
                           (##fx+ _%deleted118496%_ '1)
                           _%value118471%_)
                          (&raw-table-count-set!
                           _%tab118469%_
                           (##fx+ (&raw-table-count _%tab118469%_) '1)))
                        (begin
                          (vector-set!
                           _%table118473%_
                           _%probe118492%_
                           _%key118470%_)
                          (vector-set!
                           _%table118473%_
                           (##fx+ _%probe118492%_ '1)
                           _%value118471%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab118469%_
                             (##fx- (&raw-table-free _%tab118469%_) '1))
                            (&raw-table-count-set!
                             _%tab118469%_
                             (##fx+ (&raw-table-count _%tab118469%_) '1)))))
                    (if (eq? _%k118499%_ (macro-deleted-obj))
                        (_%loop118489%_
                         (let ((_%next-probe118506%_
                                (fx+ _%start118485%_
                                     _%i118494%_
                                     (fx* _%i118494%_ _%i118494%_))))
                           (##fxmodulo _%next-probe118506%_ _%size118479%_))
                         (##fx+ _%i118494%_ '1)
                         (let ((_%$e118509%_ _%deleted118496%_))
                           (if _%$e118509%_ _%$e118509%_ _%probe118492%_)))
                        (if (eq? _%key118470%_ _%k118499%_)
                            (let ()
                              (vector-set!
                               _%table118473%_
                               _%probe118492%_
                               _%key118470%_)
                              (vector-set!
                               _%table118473%_
                               (##fx+ _%probe118492%_ '1)
                               _%value118471%_))
                            (_%loop118489%_
                             (let ((_%next-probe118514%_
                                    (fx+ _%start118485%_
                                         _%i118494%_
                                         (fx* _%i118494%_ _%i118494%_))))
                               (##fxmodulo
                                _%next-probe118514%_
                                _%size118479%_))
                             (##fx+ _%i118494%_ '1)
                             _%deleted118496%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab118465%_ _%key118466%_ _%value118467%_)
        (if (##fx< (&raw-table-free _%tab118465%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118465%_))
                    '4))
            (__raw-table-rehash! _%tab118465%_)
            '#!void)
        (__symbolic-table-set! _%tab118465%_ _%key118466%_ _%value118467%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab118435%_ _%key118436%_ _%value118437%_)
        (let ((_%lock118440%_ (&raw-table-lock _%tab118435%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118445%_ ((_%spin118448%_ '0))
              (if (##fx= (##vector-cas! _%lock118440%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118440%_ '1 (current-thread))
                  (if (##fx< _%spin118448%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118445%_ (##fx+ _%spin118448%_ '1)))
                      (let ((_%owner118454%_ (##vector-ref _%lock118440%_ '1)))
                        (if (eq? _%owner118454%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118454%_)
                                (let () (##thread-yield!) (_%again118445%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118460%_
                 (symbolic-table-set!
                  _%tab118435%_
                  _%key118436%_
                  _%value118437%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118440%_ '1 '#f)
                (##vector-cas! _%lock118440%_ '0 '0 '1)))
            _%$r118460%_))))
    (define __symbolic-table-update!
      (lambda (_%tab118386%_
               _%key118387%_
               _%symbolic-table-update!118388%_
               _%default118389%_)
        (let ((_%table118391%_ (&raw-table-table _%tab118386%_))
              (_%seed118392%_ (&raw-table-seed _%tab118386%_)))
          (let* ((_%h118394%_
                  (fxxor (##symbol-hash _%key118387%_) _%seed118392%_))
                 (_%size118397%_ (vector-length _%table118391%_))
                 (_%entries118400%_ (##fxquotient _%size118397%_ '2))
                 (_%start118403%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118394%_ _%entries118400%_)
                   '1)))
            (let _%loop118407%_ ((_%probe118410%_ _%start118403%_)
                                 (_%i118412%_ '1)
                                 (_%deleted118414%_ '#f))
              (let ((_%k118417%_ (vector-ref _%table118391%_ _%probe118410%_)))
                (if (eq? _%k118417%_ (macro-unused-obj))
                    (if _%deleted118414%_
                        (begin
                          (vector-set!
                           _%table118391%_
                           _%deleted118414%_
                           _%key118387%_)
                          (vector-set!
                           _%table118391%_
                           (##fx+ _%deleted118414%_ '1)
                           (_%symbolic-table-update!118388%_
                            _%default118389%_))
                          (&raw-table-count-set!
                           _%tab118386%_
                           (##fx+ (&raw-table-count _%tab118386%_) '1)))
                        (begin
                          (vector-set!
                           _%table118391%_
                           _%probe118410%_
                           _%key118387%_)
                          (vector-set!
                           _%table118391%_
                           (##fx+ _%probe118410%_ '1)
                           (_%symbolic-table-update!118388%_
                            _%default118389%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab118386%_
                             (##fx- (&raw-table-free _%tab118386%_) '1))
                            (&raw-table-count-set!
                             _%tab118386%_
                             (##fx+ (&raw-table-count _%tab118386%_) '1)))))
                    (if (eq? _%k118417%_ (macro-deleted-obj))
                        (_%loop118407%_
                         (let ((_%next-probe118424%_
                                (fx+ _%start118403%_
                                     _%i118412%_
                                     (fx* _%i118412%_ _%i118412%_))))
                           (##fxmodulo _%next-probe118424%_ _%size118397%_))
                         (##fx+ _%i118412%_ '1)
                         (let ((_%$e118427%_ _%deleted118414%_))
                           (if _%$e118427%_ _%$e118427%_ _%probe118410%_)))
                        (if (eq? _%key118387%_ _%k118417%_)
                            (let ()
                              (vector-set!
                               _%table118391%_
                               _%probe118410%_
                               _%key118387%_)
                              (vector-set!
                               _%table118391%_
                               (##fx+ _%probe118410%_ '1)
                               (_%symbolic-table-update!118388%_
                                (vector-ref
                                 _%table118391%_
                                 (##fx+ _%probe118410%_ '1)))))
                            (_%loop118407%_
                             (let ((_%next-probe118432%_
                                    (fx+ _%start118403%_
                                         _%i118412%_
                                         (fx* _%i118412%_ _%i118412%_))))
                               (##fxmodulo
                                _%next-probe118432%_
                                _%size118397%_))
                             (##fx+ _%i118412%_ '1)
                             _%deleted118414%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab118381%_
               _%key118382%_
               _%symbolic-table-update!118383%_
               _%default118384%_)
        (if (##fx< (&raw-table-free _%tab118381%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118381%_))
                    '4))
            (__raw-table-rehash! _%tab118381%_)
            '#!void)
        (__symbolic-table-update!
         _%tab118381%_
         _%key118382%_
         _%symbolic-table-update!118383%_
         _%default118384%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab118350%_
               _%key118351%_
               _%symbolic-table-update!118352%_
               _%default118353%_)
        (let ((_%lock118356%_ (&raw-table-lock _%tab118350%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118361%_ ((_%spin118364%_ '0))
              (if (##fx= (##vector-cas! _%lock118356%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118356%_ '1 (current-thread))
                  (if (##fx< _%spin118364%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118361%_ (##fx+ _%spin118364%_ '1)))
                      (let ((_%owner118370%_ (##vector-ref _%lock118356%_ '1)))
                        (if (eq? _%owner118370%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118370%_)
                                (let () (##thread-yield!) (_%again118361%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118376%_
                 (_%symbolic-table-update!118352%_
                  _%tab118350%_
                  _%key118351%_
                  _%symbolic-table-update!118352%_
                  _%default118353%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118356%_ '1 '#f)
                (##vector-cas! _%lock118356%_ '0 '0 '1)))
            _%$r118376%_))))
    (define symbolic-table-delete!
      (lambda (_%tab118307%_ _%key118308%_)
        (let ((_%table118310%_ (&raw-table-table _%tab118307%_))
              (_%seed118312%_ (&raw-table-seed _%tab118307%_)))
          (let* ((_%h118315%_
                  (fxxor (##symbol-hash _%key118308%_) _%seed118312%_))
                 (_%size118318%_ (vector-length _%table118310%_))
                 (_%entries118321%_ (##fxquotient _%size118318%_ '2))
                 (_%start118324%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118315%_ _%entries118321%_)
                   '1)))
            (let _%loop118328%_ ((_%probe118331%_ _%start118324%_)
                                 (_%i118333%_ '1))
              (let ((_%k118336%_ (vector-ref _%table118310%_ _%probe118331%_)))
                (if (eq? _%k118336%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118336%_ (macro-deleted-obj))
                        (_%loop118328%_
                         (let ((_%next-probe118341%_
                                (fx+ _%start118324%_
                                     _%i118333%_
                                     (fx* _%i118333%_ _%i118333%_))))
                           (##fxmodulo _%next-probe118341%_ _%size118318%_))
                         (##fx+ _%i118333%_ '1))
                        (if (eq? _%key118308%_ _%k118336%_)
                            (let ()
                              (vector-set!
                               _%table118310%_
                               _%probe118331%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118310%_
                               (##fx+ _%probe118331%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab118307%_
                               (##fx- (&raw-table-count _%tab118307%_) '1)))
                            (_%loop118328%_
                             (let ((_%next-probe118347%_
                                    (fx+ _%start118324%_
                                         _%i118333%_
                                         (fx* _%i118333%_ _%i118333%_))))
                               (##fxmodulo
                                _%next-probe118347%_
                                _%size118318%_))
                             (##fx+ _%i118333%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab118277%_ _%key118279%_)
        (let ((_%lock118282%_ (&raw-table-lock _%tab118277%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118287%_ ((_%spin118290%_ '0))
              (if (##fx= (##vector-cas! _%lock118282%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118282%_ '1 (current-thread))
                  (if (##fx< _%spin118290%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118287%_ (##fx+ _%spin118290%_ '1)))
                      (let ((_%owner118296%_ (##vector-ref _%lock118282%_ '1)))
                        (if (eq? _%owner118296%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118296%_)
                                (let () (##thread-yield!) (_%again118287%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118302%_
                 (symbolic-table-delete! _%tab118277%_ _%key118279%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118282%_ '1 '#f)
                (##vector-cas! _%lock118282%_ '0 '0 '1)))
            _%$r118302%_))))
    (define make-string-table__%
      (lambda (_%size-hint118259%_ _%seed118260%_)
        (make-raw-table__1
         _%size-hint118259%_
         string-hash
         ##string=?
         _%seed118260%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint118266%_ '#f) (_%seed118268%_ '0))
          (make-string-table__% _%size-hint118266%_ _%seed118268%_))))
    (define make-string-table__1
      (lambda (_%size-hint118270%_)
        (let ((_%seed118272%_ '0))
          (make-string-table__% _%size-hint118270%_ _%seed118272%_))))
    (define make-string-table
      (lambda _g119953_
        (let ((_g119954_ (##length _g119953_)))
          (cond ((##fx= _g119954_ 0) (apply make-string-table__0 _g119953_))
                ((##fx= _g119954_ 1) (apply make-string-table__1 _g119953_))
                ((##fx= _g119954_ 2) (apply make-string-table__% _g119953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g119953_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint118239%_ _%seed118241%_)
        (make-raw-table/lock__%
         _%size-hint118239%_
         string-hash
         ##string=?
         _%seed118241%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint118247%_ '#f) (_%seed118249%_ '0))
          (make-string-table/lock__% _%size-hint118247%_ _%seed118249%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint118251%_)
        (let ((_%seed118253%_ '0))
          (make-string-table/lock__% _%size-hint118251%_ _%seed118253%_))))
    (define make-string-table/lock
      (lambda _g119955_
        (let ((_g119956_ (##length _g119955_)))
          (cond ((##fx= _g119956_ 0)
                 (apply make-string-table/lock__0 _g119955_))
                ((##fx= _g119956_ 1)
                 (apply make-string-table/lock__1 _g119955_))
                ((##fx= _g119956_ 2)
                 (apply make-string-table/lock__% _g119955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g119955_))))))
    (define string-table-ref
      (lambda (_%tab118192%_ _%key118193%_ _%default118194%_)
        (let ((_%table118196%_ (&raw-table-table _%tab118192%_))
              (_%seed118197%_ (&raw-table-seed _%tab118192%_)))
          (let* ((_%h118199%_
                  (fxxor (##string=?-hash _%key118193%_) _%seed118197%_))
                 (_%size118202%_ (vector-length _%table118196%_))
                 (_%entries118205%_ (##fxquotient _%size118202%_ '2))
                 (_%start118208%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118199%_ _%entries118205%_)
                   '1)))
            (let _%loop118212%_ ((_%probe118215%_ _%start118208%_)
                                 (_%i118217%_ '1)
                                 (_%deleted118219%_ '#f))
              (let ((_%k118222%_ (vector-ref _%table118196%_ _%probe118215%_)))
                (if (eq? _%k118222%_ (macro-unused-obj))
                    _%default118194%_
                    (if (eq? _%k118222%_ (macro-deleted-obj))
                        (_%loop118212%_
                         (let ((_%next-probe118227%_
                                (fx+ _%start118208%_
                                     _%i118217%_
                                     (fx* _%i118217%_ _%i118217%_))))
                           (##fxmodulo _%next-probe118227%_ _%size118202%_))
                         (##fx+ _%i118217%_ '1)
                         (let ((_%$e118230%_ _%deleted118219%_))
                           (if _%$e118230%_ _%$e118230%_ _%probe118215%_)))
                        (if (##string=? _%key118193%_ _%k118222%_)
                            (vector-ref
                             _%table118196%_
                             (##fx+ _%probe118215%_ '1))
                            (_%loop118212%_
                             (let ((_%next-probe118235%_
                                    (fx+ _%start118208%_
                                         _%i118217%_
                                         (fx* _%i118217%_ _%i118217%_))))
                               (##fxmodulo
                                _%next-probe118235%_
                                _%size118202%_))
                             (##fx+ _%i118217%_ '1)
                             _%deleted118219%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab118163%_ _%key118164%_ _%default118165%_)
        (let ((_%lock118167%_ (&raw-table-lock _%tab118163%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118172%_ ((_%spin118175%_ '0))
              (if (##fx= (##vector-cas! _%lock118167%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118167%_ '1 (current-thread))
                  (if (##fx< _%spin118175%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118172%_ (##fx+ _%spin118175%_ '1)))
                      (let ((_%owner118181%_ (##vector-ref _%lock118167%_ '1)))
                        (if (eq? _%owner118181%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118181%_)
                                (let () (##thread-yield!) (_%again118172%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118187%_
                 (string-table-ref
                  _%tab118163%_
                  _%key118164%_
                  _%default118165%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118167%_ '1 '#f)
                (##vector-cas! _%lock118167%_ '0 '0 '1)))
            _%$r118187%_))))
    (define __string-table-set!
      (lambda (_%tab118115%_ _%key118116%_ _%value118117%_)
        (let ((_%table118119%_ (&raw-table-table _%tab118115%_))
              (_%seed118120%_ (&raw-table-seed _%tab118115%_)))
          (let* ((_%h118122%_
                  (fxxor (##string=?-hash _%key118116%_) _%seed118120%_))
                 (_%size118125%_ (vector-length _%table118119%_))
                 (_%entries118128%_ (##fxquotient _%size118125%_ '2))
                 (_%start118131%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118122%_ _%entries118128%_)
                   '1)))
            (let _%loop118135%_ ((_%probe118138%_ _%start118131%_)
                                 (_%i118140%_ '1)
                                 (_%deleted118142%_ '#f))
              (let ((_%k118145%_ (vector-ref _%table118119%_ _%probe118138%_)))
                (if (eq? _%k118145%_ (macro-unused-obj))
                    (if _%deleted118142%_
                        (begin
                          (vector-set!
                           _%table118119%_
                           _%deleted118142%_
                           _%key118116%_)
                          (vector-set!
                           _%table118119%_
                           (##fx+ _%deleted118142%_ '1)
                           _%value118117%_)
                          (&raw-table-count-set!
                           _%tab118115%_
                           (##fx+ (&raw-table-count _%tab118115%_) '1)))
                        (begin
                          (vector-set!
                           _%table118119%_
                           _%probe118138%_
                           _%key118116%_)
                          (vector-set!
                           _%table118119%_
                           (##fx+ _%probe118138%_ '1)
                           _%value118117%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab118115%_
                             (##fx- (&raw-table-free _%tab118115%_) '1))
                            (&raw-table-count-set!
                             _%tab118115%_
                             (##fx+ (&raw-table-count _%tab118115%_) '1)))))
                    (if (eq? _%k118145%_ (macro-deleted-obj))
                        (_%loop118135%_
                         (let ((_%next-probe118152%_
                                (fx+ _%start118131%_
                                     _%i118140%_
                                     (fx* _%i118140%_ _%i118140%_))))
                           (##fxmodulo _%next-probe118152%_ _%size118125%_))
                         (##fx+ _%i118140%_ '1)
                         (let ((_%$e118155%_ _%deleted118142%_))
                           (if _%$e118155%_ _%$e118155%_ _%probe118138%_)))
                        (if (##string=? _%key118116%_ _%k118145%_)
                            (let ()
                              (vector-set!
                               _%table118119%_
                               _%probe118138%_
                               _%key118116%_)
                              (vector-set!
                               _%table118119%_
                               (##fx+ _%probe118138%_ '1)
                               _%value118117%_))
                            (_%loop118135%_
                             (let ((_%next-probe118160%_
                                    (fx+ _%start118131%_
                                         _%i118140%_
                                         (fx* _%i118140%_ _%i118140%_))))
                               (##fxmodulo
                                _%next-probe118160%_
                                _%size118125%_))
                             (##fx+ _%i118140%_ '1)
                             _%deleted118142%_))))))))))
    (define string-table-set!
      (lambda (_%tab118111%_ _%key118112%_ _%value118113%_)
        (if (##fx< (&raw-table-free _%tab118111%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118111%_))
                    '4))
            (__raw-table-rehash! _%tab118111%_)
            '#!void)
        (__string-table-set! _%tab118111%_ _%key118112%_ _%value118113%_)))
    (define string-table-set!/lock
      (lambda (_%tab118081%_ _%key118082%_ _%value118083%_)
        (let ((_%lock118086%_ (&raw-table-lock _%tab118081%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118091%_ ((_%spin118094%_ '0))
              (if (##fx= (##vector-cas! _%lock118086%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118086%_ '1 (current-thread))
                  (if (##fx< _%spin118094%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118091%_ (##fx+ _%spin118094%_ '1)))
                      (let ((_%owner118100%_ (##vector-ref _%lock118086%_ '1)))
                        (if (eq? _%owner118100%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118100%_)
                                (let () (##thread-yield!) (_%again118091%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118106%_
                 (string-table-set!
                  _%tab118081%_
                  _%key118082%_
                  _%value118083%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118086%_ '1 '#f)
                (##vector-cas! _%lock118086%_ '0 '0 '1)))
            _%$r118106%_))))
    (define __string-table-update!
      (lambda (_%tab118032%_
               _%key118033%_
               _%string-table-update!118034%_
               _%default118035%_)
        (let ((_%table118037%_ (&raw-table-table _%tab118032%_))
              (_%seed118038%_ (&raw-table-seed _%tab118032%_)))
          (let* ((_%h118040%_
                  (fxxor (##string=?-hash _%key118033%_) _%seed118038%_))
                 (_%size118043%_ (vector-length _%table118037%_))
                 (_%entries118046%_ (##fxquotient _%size118043%_ '2))
                 (_%start118049%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118040%_ _%entries118046%_)
                   '1)))
            (let _%loop118053%_ ((_%probe118056%_ _%start118049%_)
                                 (_%i118058%_ '1)
                                 (_%deleted118060%_ '#f))
              (let ((_%k118063%_ (vector-ref _%table118037%_ _%probe118056%_)))
                (if (eq? _%k118063%_ (macro-unused-obj))
                    (if _%deleted118060%_
                        (begin
                          (vector-set!
                           _%table118037%_
                           _%deleted118060%_
                           _%key118033%_)
                          (vector-set!
                           _%table118037%_
                           (##fx+ _%deleted118060%_ '1)
                           (_%string-table-update!118034%_ _%default118035%_))
                          (&raw-table-count-set!
                           _%tab118032%_
                           (##fx+ (&raw-table-count _%tab118032%_) '1)))
                        (begin
                          (vector-set!
                           _%table118037%_
                           _%probe118056%_
                           _%key118033%_)
                          (vector-set!
                           _%table118037%_
                           (##fx+ _%probe118056%_ '1)
                           (_%string-table-update!118034%_ _%default118035%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab118032%_
                             (##fx- (&raw-table-free _%tab118032%_) '1))
                            (&raw-table-count-set!
                             _%tab118032%_
                             (##fx+ (&raw-table-count _%tab118032%_) '1)))))
                    (if (eq? _%k118063%_ (macro-deleted-obj))
                        (_%loop118053%_
                         (let ((_%next-probe118070%_
                                (fx+ _%start118049%_
                                     _%i118058%_
                                     (fx* _%i118058%_ _%i118058%_))))
                           (##fxmodulo _%next-probe118070%_ _%size118043%_))
                         (##fx+ _%i118058%_ '1)
                         (let ((_%$e118073%_ _%deleted118060%_))
                           (if _%$e118073%_ _%$e118073%_ _%probe118056%_)))
                        (if (##string=? _%key118033%_ _%k118063%_)
                            (let ()
                              (vector-set!
                               _%table118037%_
                               _%probe118056%_
                               _%key118033%_)
                              (vector-set!
                               _%table118037%_
                               (##fx+ _%probe118056%_ '1)
                               (_%string-table-update!118034%_
                                (vector-ref
                                 _%table118037%_
                                 (##fx+ _%probe118056%_ '1)))))
                            (_%loop118053%_
                             (let ((_%next-probe118078%_
                                    (fx+ _%start118049%_
                                         _%i118058%_
                                         (fx* _%i118058%_ _%i118058%_))))
                               (##fxmodulo
                                _%next-probe118078%_
                                _%size118043%_))
                             (##fx+ _%i118058%_ '1)
                             _%deleted118060%_))))))))))
    (define string-table-update!
      (lambda (_%tab118027%_
               _%key118028%_
               _%string-table-update!118029%_
               _%default118030%_)
        (if (##fx< (&raw-table-free _%tab118027%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118027%_))
                    '4))
            (__raw-table-rehash! _%tab118027%_)
            '#!void)
        (__string-table-update!
         _%tab118027%_
         _%key118028%_
         _%string-table-update!118029%_
         _%default118030%_)))
    (define string-table-update!/lock
      (lambda (_%tab117996%_
               _%key117997%_
               _%string-table-update!117998%_
               _%default117999%_)
        (let ((_%lock118002%_ (&raw-table-lock _%tab117996%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118007%_ ((_%spin118010%_ '0))
              (if (##fx= (##vector-cas! _%lock118002%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118002%_ '1 (current-thread))
                  (if (##fx< _%spin118010%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118007%_ (##fx+ _%spin118010%_ '1)))
                      (let ((_%owner118016%_ (##vector-ref _%lock118002%_ '1)))
                        (if (eq? _%owner118016%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118016%_)
                                (let () (##thread-yield!) (_%again118007%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118022%_
                 (_%string-table-update!117998%_
                  _%tab117996%_
                  _%key117997%_
                  _%string-table-update!117998%_
                  _%default117999%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118002%_ '1 '#f)
                (##vector-cas! _%lock118002%_ '0 '0 '1)))
            _%$r118022%_))))
    (define string-table-delete!
      (lambda (_%tab117953%_ _%key117954%_)
        (let ((_%table117956%_ (&raw-table-table _%tab117953%_))
              (_%seed117958%_ (&raw-table-seed _%tab117953%_)))
          (let* ((_%h117961%_
                  (fxxor (##string=?-hash _%key117954%_) _%seed117958%_))
                 (_%size117964%_ (vector-length _%table117956%_))
                 (_%entries117967%_ (##fxquotient _%size117964%_ '2))
                 (_%start117970%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117961%_ _%entries117967%_)
                   '1)))
            (let _%loop117974%_ ((_%probe117977%_ _%start117970%_)
                                 (_%i117979%_ '1))
              (let ((_%k117982%_ (vector-ref _%table117956%_ _%probe117977%_)))
                (if (eq? _%k117982%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117982%_ (macro-deleted-obj))
                        (_%loop117974%_
                         (let ((_%next-probe117987%_
                                (fx+ _%start117970%_
                                     _%i117979%_
                                     (fx* _%i117979%_ _%i117979%_))))
                           (##fxmodulo _%next-probe117987%_ _%size117964%_))
                         (##fx+ _%i117979%_ '1))
                        (if (##string=? _%key117954%_ _%k117982%_)
                            (let ()
                              (vector-set!
                               _%table117956%_
                               _%probe117977%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117956%_
                               (##fx+ _%probe117977%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab117953%_
                               (##fx- (&raw-table-count _%tab117953%_) '1)))
                            (_%loop117974%_
                             (let ((_%next-probe117993%_
                                    (fx+ _%start117970%_
                                         _%i117979%_
                                         (fx* _%i117979%_ _%i117979%_))))
                               (##fxmodulo
                                _%next-probe117993%_
                                _%size117964%_))
                             (##fx+ _%i117979%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab117923%_ _%key117925%_)
        (let ((_%lock117928%_ (&raw-table-lock _%tab117923%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117933%_ ((_%spin117936%_ '0))
              (if (##fx= (##vector-cas! _%lock117928%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117928%_ '1 (current-thread))
                  (if (##fx< _%spin117936%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117933%_ (##fx+ _%spin117936%_ '1)))
                      (let ((_%owner117942%_ (##vector-ref _%lock117928%_ '1)))
                        (if (eq? _%owner117942%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117942%_)
                                (let () (##thread-yield!) (_%again117933%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117948%_
                 (string-table-delete! _%tab117923%_ _%key117925%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117928%_ '1 '#f)
                (##vector-cas! _%lock117928%_ '0 '0 '1)))
            _%$r117948%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint117905%_ _%seed117906%_)
        (make-raw-table__1
         _%size-hint117905%_
         immediate-hash
         eq?
         _%seed117906%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint117912%_ '#f) (_%seed117914%_ '0))
          (make-immediate-table__% _%size-hint117912%_ _%seed117914%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint117916%_)
        (let ((_%seed117918%_ '0))
          (make-immediate-table__% _%size-hint117916%_ _%seed117918%_))))
    (define make-immediate-table
      (lambda _g119957_
        (let ((_g119958_ (##length _g119957_)))
          (cond ((##fx= _g119958_ 0) (apply make-immediate-table__0 _g119957_))
                ((##fx= _g119958_ 1) (apply make-immediate-table__1 _g119957_))
                ((##fx= _g119958_ 2) (apply make-immediate-table__% _g119957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g119957_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint117885%_ _%seed117887%_)
        (make-raw-table/lock__%
         _%size-hint117885%_
         immediate-hash
         eq?
         _%seed117887%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint117893%_ '#f) (_%seed117895%_ '0))
          (make-immediate-table/lock__% _%size-hint117893%_ _%seed117895%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint117897%_)
        (let ((_%seed117899%_ '0))
          (make-immediate-table/lock__% _%size-hint117897%_ _%seed117899%_))))
    (define make-immediate-table/lock
      (lambda _g119959_
        (let ((_g119960_ (##length _g119959_)))
          (cond ((##fx= _g119960_ 0)
                 (apply make-immediate-table/lock__0 _g119959_))
                ((##fx= _g119960_ 1)
                 (apply make-immediate-table/lock__1 _g119959_))
                ((##fx= _g119960_ 2)
                 (apply make-immediate-table/lock__% _g119959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g119959_))))))
    (define immediate-table-ref
      (lambda (_%tab117838%_ _%key117839%_ _%default117840%_)
        (let ((_%table117842%_ (&raw-table-table _%tab117838%_))
              (_%seed117843%_ (&raw-table-seed _%tab117838%_)))
          (let* ((_%h117845%_
                  (fxxor (immediate-hash _%key117839%_) _%seed117843%_))
                 (_%size117848%_ (vector-length _%table117842%_))
                 (_%entries117851%_ (##fxquotient _%size117848%_ '2))
                 (_%start117854%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117845%_ _%entries117851%_)
                   '1)))
            (let _%loop117858%_ ((_%probe117861%_ _%start117854%_)
                                 (_%i117863%_ '1)
                                 (_%deleted117865%_ '#f))
              (let ((_%k117868%_ (vector-ref _%table117842%_ _%probe117861%_)))
                (if (eq? _%k117868%_ (macro-unused-obj))
                    _%default117840%_
                    (if (eq? _%k117868%_ (macro-deleted-obj))
                        (_%loop117858%_
                         (let ((_%next-probe117873%_
                                (fx+ _%start117854%_
                                     _%i117863%_
                                     (fx* _%i117863%_ _%i117863%_))))
                           (##fxmodulo _%next-probe117873%_ _%size117848%_))
                         (##fx+ _%i117863%_ '1)
                         (let ((_%$e117876%_ _%deleted117865%_))
                           (if _%$e117876%_ _%$e117876%_ _%probe117861%_)))
                        (if (eq? _%key117839%_ _%k117868%_)
                            (vector-ref
                             _%table117842%_
                             (##fx+ _%probe117861%_ '1))
                            (_%loop117858%_
                             (let ((_%next-probe117881%_
                                    (fx+ _%start117854%_
                                         _%i117863%_
                                         (fx* _%i117863%_ _%i117863%_))))
                               (##fxmodulo
                                _%next-probe117881%_
                                _%size117848%_))
                             (##fx+ _%i117863%_ '1)
                             _%deleted117865%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab117809%_ _%key117810%_ _%default117811%_)
        (let ((_%lock117813%_ (&raw-table-lock _%tab117809%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117818%_ ((_%spin117821%_ '0))
              (if (##fx= (##vector-cas! _%lock117813%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117813%_ '1 (current-thread))
                  (if (##fx< _%spin117821%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117818%_ (##fx+ _%spin117821%_ '1)))
                      (let ((_%owner117827%_ (##vector-ref _%lock117813%_ '1)))
                        (if (eq? _%owner117827%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117827%_)
                                (let () (##thread-yield!) (_%again117818%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117833%_
                 (immediate-table-ref
                  _%tab117809%_
                  _%key117810%_
                  _%default117811%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117813%_ '1 '#f)
                (##vector-cas! _%lock117813%_ '0 '0 '1)))
            _%$r117833%_))))
    (define __immediate-table-set!
      (lambda (_%tab117761%_ _%key117762%_ _%value117763%_)
        (let ((_%table117765%_ (&raw-table-table _%tab117761%_))
              (_%seed117766%_ (&raw-table-seed _%tab117761%_)))
          (let* ((_%h117768%_
                  (fxxor (immediate-hash _%key117762%_) _%seed117766%_))
                 (_%size117771%_ (vector-length _%table117765%_))
                 (_%entries117774%_ (##fxquotient _%size117771%_ '2))
                 (_%start117777%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117768%_ _%entries117774%_)
                   '1)))
            (let _%loop117781%_ ((_%probe117784%_ _%start117777%_)
                                 (_%i117786%_ '1)
                                 (_%deleted117788%_ '#f))
              (let ((_%k117791%_ (vector-ref _%table117765%_ _%probe117784%_)))
                (if (eq? _%k117791%_ (macro-unused-obj))
                    (if _%deleted117788%_
                        (begin
                          (vector-set!
                           _%table117765%_
                           _%deleted117788%_
                           _%key117762%_)
                          (vector-set!
                           _%table117765%_
                           (##fx+ _%deleted117788%_ '1)
                           _%value117763%_)
                          (&raw-table-count-set!
                           _%tab117761%_
                           (##fx+ (&raw-table-count _%tab117761%_) '1)))
                        (begin
                          (vector-set!
                           _%table117765%_
                           _%probe117784%_
                           _%key117762%_)
                          (vector-set!
                           _%table117765%_
                           (##fx+ _%probe117784%_ '1)
                           _%value117763%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab117761%_
                             (##fx- (&raw-table-free _%tab117761%_) '1))
                            (&raw-table-count-set!
                             _%tab117761%_
                             (##fx+ (&raw-table-count _%tab117761%_) '1)))))
                    (if (eq? _%k117791%_ (macro-deleted-obj))
                        (_%loop117781%_
                         (let ((_%next-probe117798%_
                                (fx+ _%start117777%_
                                     _%i117786%_
                                     (fx* _%i117786%_ _%i117786%_))))
                           (##fxmodulo _%next-probe117798%_ _%size117771%_))
                         (##fx+ _%i117786%_ '1)
                         (let ((_%$e117801%_ _%deleted117788%_))
                           (if _%$e117801%_ _%$e117801%_ _%probe117784%_)))
                        (if (eq? _%key117762%_ _%k117791%_)
                            (let ()
                              (vector-set!
                               _%table117765%_
                               _%probe117784%_
                               _%key117762%_)
                              (vector-set!
                               _%table117765%_
                               (##fx+ _%probe117784%_ '1)
                               _%value117763%_))
                            (_%loop117781%_
                             (let ((_%next-probe117806%_
                                    (fx+ _%start117777%_
                                         _%i117786%_
                                         (fx* _%i117786%_ _%i117786%_))))
                               (##fxmodulo
                                _%next-probe117806%_
                                _%size117771%_))
                             (##fx+ _%i117786%_ '1)
                             _%deleted117788%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab117757%_ _%key117758%_ _%value117759%_)
        (if (##fx< (&raw-table-free _%tab117757%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117757%_))
                    '4))
            (__raw-table-rehash! _%tab117757%_)
            '#!void)
        (__immediate-table-set! _%tab117757%_ _%key117758%_ _%value117759%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab117727%_ _%key117728%_ _%value117729%_)
        (let ((_%lock117732%_ (&raw-table-lock _%tab117727%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117737%_ ((_%spin117740%_ '0))
              (if (##fx= (##vector-cas! _%lock117732%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117732%_ '1 (current-thread))
                  (if (##fx< _%spin117740%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117737%_ (##fx+ _%spin117740%_ '1)))
                      (let ((_%owner117746%_ (##vector-ref _%lock117732%_ '1)))
                        (if (eq? _%owner117746%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117746%_)
                                (let () (##thread-yield!) (_%again117737%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117752%_
                 (immediate-table-set!
                  _%tab117727%_
                  _%key117728%_
                  _%value117729%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117732%_ '1 '#f)
                (##vector-cas! _%lock117732%_ '0 '0 '1)))
            _%$r117752%_))))
    (define __immediate-table-update!
      (lambda (_%tab117678%_
               _%key117679%_
               _%immediate-table-update!117680%_
               _%default117681%_)
        (let ((_%table117683%_ (&raw-table-table _%tab117678%_))
              (_%seed117684%_ (&raw-table-seed _%tab117678%_)))
          (let* ((_%h117686%_
                  (fxxor (immediate-hash _%key117679%_) _%seed117684%_))
                 (_%size117689%_ (vector-length _%table117683%_))
                 (_%entries117692%_ (##fxquotient _%size117689%_ '2))
                 (_%start117695%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117686%_ _%entries117692%_)
                   '1)))
            (let _%loop117699%_ ((_%probe117702%_ _%start117695%_)
                                 (_%i117704%_ '1)
                                 (_%deleted117706%_ '#f))
              (let ((_%k117709%_ (vector-ref _%table117683%_ _%probe117702%_)))
                (if (eq? _%k117709%_ (macro-unused-obj))
                    (if _%deleted117706%_
                        (begin
                          (vector-set!
                           _%table117683%_
                           _%deleted117706%_
                           _%key117679%_)
                          (vector-set!
                           _%table117683%_
                           (##fx+ _%deleted117706%_ '1)
                           (_%immediate-table-update!117680%_
                            _%default117681%_))
                          (&raw-table-count-set!
                           _%tab117678%_
                           (##fx+ (&raw-table-count _%tab117678%_) '1)))
                        (begin
                          (vector-set!
                           _%table117683%_
                           _%probe117702%_
                           _%key117679%_)
                          (vector-set!
                           _%table117683%_
                           (##fx+ _%probe117702%_ '1)
                           (_%immediate-table-update!117680%_
                            _%default117681%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab117678%_
                             (##fx- (&raw-table-free _%tab117678%_) '1))
                            (&raw-table-count-set!
                             _%tab117678%_
                             (##fx+ (&raw-table-count _%tab117678%_) '1)))))
                    (if (eq? _%k117709%_ (macro-deleted-obj))
                        (_%loop117699%_
                         (let ((_%next-probe117716%_
                                (fx+ _%start117695%_
                                     _%i117704%_
                                     (fx* _%i117704%_ _%i117704%_))))
                           (##fxmodulo _%next-probe117716%_ _%size117689%_))
                         (##fx+ _%i117704%_ '1)
                         (let ((_%$e117719%_ _%deleted117706%_))
                           (if _%$e117719%_ _%$e117719%_ _%probe117702%_)))
                        (if (eq? _%key117679%_ _%k117709%_)
                            (let ()
                              (vector-set!
                               _%table117683%_
                               _%probe117702%_
                               _%key117679%_)
                              (vector-set!
                               _%table117683%_
                               (##fx+ _%probe117702%_ '1)
                               (_%immediate-table-update!117680%_
                                (vector-ref
                                 _%table117683%_
                                 (##fx+ _%probe117702%_ '1)))))
                            (_%loop117699%_
                             (let ((_%next-probe117724%_
                                    (fx+ _%start117695%_
                                         _%i117704%_
                                         (fx* _%i117704%_ _%i117704%_))))
                               (##fxmodulo
                                _%next-probe117724%_
                                _%size117689%_))
                             (##fx+ _%i117704%_ '1)
                             _%deleted117706%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab117673%_
               _%key117674%_
               _%immediate-table-update!117675%_
               _%default117676%_)
        (if (##fx< (&raw-table-free _%tab117673%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117673%_))
                    '4))
            (__raw-table-rehash! _%tab117673%_)
            '#!void)
        (__immediate-table-update!
         _%tab117673%_
         _%key117674%_
         _%immediate-table-update!117675%_
         _%default117676%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab117642%_
               _%key117643%_
               _%immediate-table-update!117644%_
               _%default117645%_)
        (let ((_%lock117648%_ (&raw-table-lock _%tab117642%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117653%_ ((_%spin117656%_ '0))
              (if (##fx= (##vector-cas! _%lock117648%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117648%_ '1 (current-thread))
                  (if (##fx< _%spin117656%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117653%_ (##fx+ _%spin117656%_ '1)))
                      (let ((_%owner117662%_ (##vector-ref _%lock117648%_ '1)))
                        (if (eq? _%owner117662%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117662%_)
                                (let () (##thread-yield!) (_%again117653%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117668%_
                 (_%immediate-table-update!117644%_
                  _%tab117642%_
                  _%key117643%_
                  _%immediate-table-update!117644%_
                  _%default117645%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117648%_ '1 '#f)
                (##vector-cas! _%lock117648%_ '0 '0 '1)))
            _%$r117668%_))))
    (define immediate-table-delete!
      (lambda (_%tab117599%_ _%key117600%_)
        (let ((_%table117602%_ (&raw-table-table _%tab117599%_))
              (_%seed117604%_ (&raw-table-seed _%tab117599%_)))
          (let* ((_%h117607%_
                  (fxxor (immediate-hash _%key117600%_) _%seed117604%_))
                 (_%size117610%_ (vector-length _%table117602%_))
                 (_%entries117613%_ (##fxquotient _%size117610%_ '2))
                 (_%start117616%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117607%_ _%entries117613%_)
                   '1)))
            (let _%loop117620%_ ((_%probe117623%_ _%start117616%_)
                                 (_%i117625%_ '1))
              (let ((_%k117628%_ (vector-ref _%table117602%_ _%probe117623%_)))
                (if (eq? _%k117628%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117628%_ (macro-deleted-obj))
                        (_%loop117620%_
                         (let ((_%next-probe117633%_
                                (fx+ _%start117616%_
                                     _%i117625%_
                                     (fx* _%i117625%_ _%i117625%_))))
                           (##fxmodulo _%next-probe117633%_ _%size117610%_))
                         (##fx+ _%i117625%_ '1))
                        (if (eq? _%key117600%_ _%k117628%_)
                            (let ()
                              (vector-set!
                               _%table117602%_
                               _%probe117623%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117602%_
                               (##fx+ _%probe117623%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab117599%_
                               (##fx- (&raw-table-count _%tab117599%_) '1)))
                            (_%loop117620%_
                             (let ((_%next-probe117639%_
                                    (fx+ _%start117616%_
                                         _%i117625%_
                                         (fx* _%i117625%_ _%i117625%_))))
                               (##fxmodulo
                                _%next-probe117639%_
                                _%size117610%_))
                             (##fx+ _%i117625%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab117569%_ _%key117571%_)
        (let ((_%lock117574%_ (&raw-table-lock _%tab117569%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117579%_ ((_%spin117582%_ '0))
              (if (##fx= (##vector-cas! _%lock117574%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117574%_ '1 (current-thread))
                  (if (##fx< _%spin117582%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117579%_ (##fx+ _%spin117582%_ '1)))
                      (let ((_%owner117588%_ (##vector-ref _%lock117574%_ '1)))
                        (if (eq? _%owner117588%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117588%_)
                                (let () (##thread-yield!) (_%again117579%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117594%_
                 (immediate-table-delete! _%tab117569%_ _%key117571%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117574%_ '1 '#f)
                (##vector-cas! _%lock117574%_ '0 '0 '1)))
            _%$r117594%_))))
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
      (lambda (_%tab117567%_)
        (##unchecked-structure-ref
         _%tab117567%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab117565%_)
        (##unchecked-structure-ref
         _%tab117565%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab117563%_)
        (##unchecked-structure-ref
         _%tab117563%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab117560%_ _%val117561%_)
        (##unchecked-structure-set!
         _%tab117560%_
         _%val117561%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab117557%_ _%val117558%_)
        (##unchecked-structure-set!
         _%tab117557%_
         _%val117558%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab117554%_ _%val117555%_)
        (##unchecked-structure-set!
         _%tab117554%_
         _%val117555%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint117518%_
               _%klass117519%_
               _%flags117520%_
               _%lock117521%_)
        (let ((_%gcht117523%_
               (__gc-table-new
                (if (fixnum? _%size-hint117518%_) _%size-hint117518%_ '16)
                _%flags117520%_)))
          (##structure _%klass117519%_ _%gcht117523%_ '#f _%lock117521%_))))
    (define make-gc-table__0
      (lambda (_%size-hint117528%_)
        (let* ((_%klass117530%_ __gc-table::t)
               (_%flags117532%_ '0)
               (_%lock117534%_ '#f))
          (make-gc-table__%
           _%size-hint117528%_
           _%klass117530%_
           _%flags117532%_
           _%lock117534%_))))
    (define make-gc-table__1
      (lambda (_%size-hint117536%_ _%klass117537%_)
        (let* ((_%flags117539%_ '0) (_%lock117541%_ '#f))
          (make-gc-table__%
           _%size-hint117536%_
           _%klass117537%_
           _%flags117539%_
           _%lock117541%_))))
    (define make-gc-table__2
      (lambda (_%size-hint117543%_ _%klass117544%_ _%flags117545%_)
        (let ((_%lock117547%_ '#f))
          (make-gc-table__%
           _%size-hint117543%_
           _%klass117544%_
           _%flags117545%_
           _%lock117547%_))))
    (define make-gc-table
      (lambda _g119961_
        (let ((_g119962_ (##length _g119961_)))
          (cond ((##fx= _g119962_ 1) (apply make-gc-table__0 _g119961_))
                ((##fx= _g119962_ 2) (apply make-gc-table__1 _g119961_))
                ((##fx= _g119962_ 3) (apply make-gc-table__2 _g119961_))
                ((##fx= _g119962_ 4) (apply make-gc-table__% _g119961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g119961_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint117495%_ _%klass117496%_ _%flags117497%_)
        (make-gc-table__%
         _%size-hint117495%_
         _%klass117496%_
         _%flags117497%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint117502%_)
        (let* ((_%klass117504%_ __gc-table::t) (_%flags117506%_ '0))
          (make-gc-table/lock__%
           _%size-hint117502%_
           _%klass117504%_
           _%flags117506%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint117508%_ _%klass117509%_)
        (let ((_%flags117511%_ '0))
          (make-gc-table/lock__%
           _%size-hint117508%_
           _%klass117509%_
           _%flags117511%_))))
    (define make-gc-table/lock
      (lambda _g119963_
        (let ((_g119964_ (##length _g119963_)))
          (cond ((##fx= _g119964_ 1) (apply make-gc-table/lock__0 _g119963_))
                ((##fx= _g119964_ 2) (apply make-gc-table/lock__1 _g119963_))
                ((##fx= _g119964_ 3) (apply make-gc-table/lock__% _g119963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g119963_))))))
    (define __gc-table-immediate
      (lambda (_%tab117486%_)
        (let ((_%$e117488%_ (&gc-table-immediate _%tab117486%_)))
          (if _%$e117488%_
              _%$e117488%_
              (let ((_%immediate117492%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab117486%_ _%immediate117492%_)
                _%immediate117492%_)))))
    (define __gc-table-new
      (lambda (_%size117476%_ _%flags117477%_)
        (let* ((_%flags117479%_
                (##fxand _%flags117477%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags117481%_
                (fxior _%flags117479%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht117483%_
                (##gc-hash-table-allocate
                 _%size117476%_
                 _%flags117481%_
                 __gc-table-loads)))
          _%gcht117483%_)))
    (define __gc-table-e
      (lambda (_%tab117471%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht117474%_ (&gc-table-gcht _%tab117471%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht117474%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht117474%_
              (begin
                (__gc-table-rehash! _%tab117471%_)
                (&gc-table-gcht _%tab117471%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab117462%_)
        (let* ((_%old-table117464%_ (&gc-table-gcht _%tab117462%_))
               (_%new-table117466%_
                (##gc-hash-table-resize! _%old-table117464%_ __gc-table-loads))
               (_%gcht117468%_
                (##gc-hash-table-rehash!
                 _%old-table117464%_
                 _%new-table117466%_)))
          (&gc-table-gcht-set! _%tab117462%_ _%gcht117468%_))))
    (define gc-table-ref
      (lambda (_%tab117446%_ _%key117447%_ _%default117448%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key117447%_)
            (let* ((_%gcht117452%_ (__gc-table-e _%tab117446%_))
                   (_%value117454%_
                    (##gc-hash-table-ref _%gcht117452%_ _%key117447%_)))
              (if (eq? _%value117454%_ (macro-unused-obj))
                  _%default117448%_
                  _%value117454%_))
            (let ((_%$e117456%_ (&gc-table-immediate _%tab117446%_)))
              (if _%$e117456%_
                  (immediate-table-ref
                   _%$e117456%_
                   _%key117447%_
                   _%default117448%_)
                  _%default117448%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab117420%_ _%key117421%_ _%default117422%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117426%_ ((_%spin117429%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117420%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117420%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117429%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117426%_ (##fx+ _%spin117429%_ '1)))
                    (let ((_%owner117435%_
                           (##vector-ref (&gc-table-lock _%tab117420%_) '1)))
                      (if (eq? _%owner117435%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117435%_)
                              (let () (##thread-yield!) (_%again117426%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117441%_
               (gc-table-ref _%tab117420%_ _%key117421%_ _%default117422%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117420%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117420%_) '0 '0 '1)))
          _%$r117441%_)))
    (define gc-table-set!
      (lambda (_%tab117413%_ _%key117414%_ _%value117415%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key117414%_)
            (let ((_%gcht117418%_ (__gc-table-e _%tab117413%_)))
              (if (##gc-hash-table-set!
                   _%gcht117418%_
                   _%key117414%_
                   _%value117415%_)
                  (begin
                    (__gc-table-rehash! _%tab117413%_)
                    (gc-table-set!
                     _%tab117413%_
                     _%key117414%_
                     _%value117415%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab117413%_)
             _%key117414%_
             _%value117415%_))))
    (define gc-table-set/lock!
      (lambda (_%tab117387%_ _%key117388%_ _%value117389%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117393%_ ((_%spin117396%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117387%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117387%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117396%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117393%_ (##fx+ _%spin117396%_ '1)))
                    (let ((_%owner117402%_
                           (##vector-ref (&gc-table-lock _%tab117387%_) '1)))
                      (if (eq? _%owner117402%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117402%_)
                              (let () (##thread-yield!) (_%again117393%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117408%_
               (gc-table-set! _%tab117387%_ _%key117388%_ _%value117389%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117387%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117387%_) '0 '0 '1)))
          _%$r117408%_)))
    (define gc-table-update!
      (lambda (_%tab117380%_ _%key117381%_ _%update117382%_ _%default117383%_)
        (if (##mem-allocated? _%key117381%_)
            (let ((_%value117385%_
                   (gc-table-ref
                    _%tab117380%_
                    _%key117381%_
                    _%default117383%_)))
              (gc-table-set!
               _%tab117380%_
               _%key117381%_
               (_%update117382%_ _%value117385%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab117380%_)
             _%key117381%_
             _%update117382%_
             _%default117383%_))))
    (define gc-table-update!/lock
      (lambda (_%tab117353%_ _%key117354%_ _%update117355%_ _%default117356%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117360%_ ((_%spin117363%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117353%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117353%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117363%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117360%_ (##fx+ _%spin117363%_ '1)))
                    (let ((_%owner117369%_
                           (##vector-ref (&gc-table-lock _%tab117353%_) '1)))
                      (if (eq? _%owner117369%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117369%_)
                              (let () (##thread-yield!) (_%again117360%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117375%_
               (gc-table-update!
                _%tab117353%_
                _%key117354%_
                _%update117355%_
                _%default117356%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117353%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117353%_) '0 '0 '1)))
          _%$r117375%_)))
    (define gc-table-delete!
      (lambda (_%tab117341%_ _%key117342%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key117342%_)
            (let ((_%gcht117346%_ (__gc-table-e _%tab117341%_)))
              (if (##gc-hash-table-set!
                   _%gcht117346%_
                   _%key117342%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab117341%_)
                    (gc-table-delete! _%tab117341%_ _%key117342%_))
                  '#!void))
            (let ((_%$e117348%_ (&gc-table-immediate _%tab117341%_)))
              (if _%$e117348%_
                  (immediate-table-delete! _%$e117348%_ _%key117342%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab117316%_ _%key117317%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117321%_ ((_%spin117324%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117316%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117316%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117324%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117321%_ (##fx+ _%spin117324%_ '1)))
                    (let ((_%owner117330%_
                           (##vector-ref (&gc-table-lock _%tab117316%_) '1)))
                      (if (eq? _%owner117330%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117330%_)
                              (let () (##thread-yield!) (_%again117321%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117336%_ (gc-table-delete! _%tab117316%_ _%key117317%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117316%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117316%_) '0 '0 '1)))
          _%$r117336%_)))
    (define gc-table-for-each
      (lambda (_%tab117305%_ _%proc117306%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht117309%_ (__gc-table-e _%tab117305%_)))
            (##gc-hash-table-for-each _%proc117306%_ _%gcht117309%_))
          (let ((_%$e117311%_ (&gc-table-immediate _%tab117305%_)))
            (if _%$e117311%_
                (raw-table-for-each _%$e117311%_ _%proc117306%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab117280%_ _%proc117281%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117285%_ ((_%spin117288%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117280%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117280%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117288%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117285%_ (##fx+ _%spin117288%_ '1)))
                    (let ((_%owner117294%_
                           (##vector-ref (&gc-table-lock _%tab117280%_) '1)))
                      (if (eq? _%owner117294%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117294%_)
                              (let () (##thread-yield!) (_%again117285%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117300%_ (gc-table-for-each _%tab117280%_ _%proc117281%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117280%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117280%_) '0 '0 '1)))
          _%$r117300%_)))
    (define gc-table-copy
      (lambda (_%tab117268%_)
        (let* ((_%gcht117270%_ (__gc-table-e _%tab117268%_))
               (_%new-table117272%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht117270%_)
                 (macro-gc-hash-table-flags _%gcht117270%_)))
               (_%result117274%_
                (##structure
                 (##structure-type _%tab117268%_)
                 _%new-table117272%_
                 '#f)))
          (gc-table-for-each
           _%tab117268%_
           (lambda (_%k117277%_ _%v117278%_)
             (gc-table-set! _%result117274%_ _%k117277%_ _%v117278%_)))
          _%result117274%_)))
    (define gc-table-copy/lock
      (lambda (_%tab117244%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117248%_ ((_%spin117251%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117244%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117244%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117251%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117248%_ (##fx+ _%spin117251%_ '1)))
                    (let ((_%owner117257%_
                           (##vector-ref (&gc-table-lock _%tab117244%_) '1)))
                      (if (eq? _%owner117257%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117257%_)
                              (let () (##thread-yield!) (_%again117248%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117263%_ (gc-table-copy _%tab117244%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117244%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117244%_) '0 '0 '1)))
          _%$r117263%_)))
    (define gc-table-clear!
      (lambda (_%tab117237%_)
        (let* ((_%gcht117239%_ (__gc-table-e _%tab117237%_))
               (_%new-table117241%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht117239%_))))
          (&gc-table-gcht-set! _%tab117237%_ _%new-table117241%_)
          (&gc-table-immediate-set! _%tab117237%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab117213%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117217%_ ((_%spin117220%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117213%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117213%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117220%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117217%_ (##fx+ _%spin117220%_ '1)))
                    (let ((_%owner117226%_
                           (##vector-ref (&gc-table-lock _%tab117213%_) '1)))
                      (if (eq? _%owner117226%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117226%_)
                              (let () (##thread-yield!) (_%again117217%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117232%_ (gc-table-clear! _%tab117213%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117213%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117213%_) '0 '0 '1)))
          _%$r117232%_)))
    (define gc-table-length
      (lambda (_%tab117205%_)
        (let ((_%gcht117207%_ (__gc-table-e _%tab117205%_)))
          (fx+ (macro-gc-hash-table-count _%gcht117207%_)
               (let ((_%$e117209%_ (&gc-table-immediate _%tab117205%_)))
                 (if _%$e117209%_ (&raw-table-count _%$e117209%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab117181%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again117185%_ ((_%spin117188%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab117181%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab117181%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin117188%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again117185%_ (##fx+ _%spin117188%_ '1)))
                    (let ((_%owner117194%_
                           (##vector-ref (&gc-table-lock _%tab117181%_) '1)))
                      (if (eq? _%owner117194%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner117194%_)
                              (let () (##thread-yield!) (_%again117185%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r117200%_ (gc-table-length _%tab117181%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab117181%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab117181%_) '0 '0 '1)))
          _%$r117200%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj117147%_)
        (declare (not interrupts-enabled))
        (let ((_%val117150%_
               (gc-table-ref __object-eq-hash _%obj117147%_ '#f)))
          (if _%val117150%_
              _%val117150%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again117154%_ ((_%spin117157%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin117157%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again117154%_ (##fx+ _%spin117157%_ '1)))
                            (let ((_%owner117163%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner117163%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner117163%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again117154%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r117176%_
                       (let ((_%val117169%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj117147%_
                               '#f)))
                         (if _%val117169%_
                             _%val117169%_
                             (let ((_%h117171%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e117173%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e117173%_ _%$e117173%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj117147%_
                                _%h117171%_)
                               _%h117171%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r117176%_))))))))
