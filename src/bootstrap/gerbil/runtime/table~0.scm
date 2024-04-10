(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712757953)
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
       '#(table 5 #f count 5 #f free 5 #f hash 5 #f test 5 #f seed 5 #f)))
    (define &raw-table-table
      (lambda (_%tab90837%_)
        (##unchecked-structure-ref
         _%tab90837%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90835%_)
        (##unchecked-structure-ref
         _%tab90835%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90833%_)
        (##unchecked-structure-ref
         _%tab90833%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90831%_)
        (##unchecked-structure-ref
         _%tab90831%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90829%_)
        (##unchecked-structure-ref
         _%tab90829%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90827%_)
        (##unchecked-structure-ref
         _%tab90827%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90824%_ _%val90825%_)
        (##unchecked-structure-set!
         _%tab90824%_
         _%val90825%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90821%_ _%val90822%_)
        (##unchecked-structure-set!
         _%tab90821%_
         _%val90822%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90818%_ _%val90819%_)
        (##unchecked-structure-set!
         _%tab90818%_
         _%val90819%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90815%_ _%val90816%_)
        (##unchecked-structure-set!
         _%tab90815%_
         _%val90816%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90812%_ _%val90813%_)
        (##unchecked-structure-set!
         _%tab90812%_
         _%val90813%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90809%_ _%val90810%_)
        (##unchecked-structure-set!
         _%tab90809%_
         _%val90810%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90807%_)
        (if (and (fixnum? _%size-hint90807%_) (##fx> _%size-hint90807%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90807%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint90783%_ _%hash90784%_ _%test90785%_ _%seed90786%_)
        (let* ((_%size90788%_ (raw-table-size-hint->size _%size-hint90783%_))
               (_%table90790%_
                (##make-vector _%size90788%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table90790%_
           '0
           (##fxquotient _%size90788%_ '2)
           _%hash90784%_
           _%test90785%_
           _%seed90786%_))))
    (define make-raw-table__0
      (lambda (_%size-hint90796%_ _%hash90797%_ _%test90798%_)
        (let ((_%seed90800%_ '0))
          (make-raw-table__%
           _%size-hint90796%_
           _%hash90797%_
           _%test90798%_
           _%seed90800%_))))
    (define make-raw-table
      (lambda _g90839_
        (let ((_g90838_ (##length _g90839_)))
          (cond ((##fx= _g90838_ 3) (apply make-raw-table__0 _g90839_))
                ((##fx= _g90838_ 4) (apply make-raw-table__% _g90839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90839_))))))
    (define raw-table-ref
      (lambda (_%tab90734%_ _%key90735%_ _%default90736%_)
        (let ((_%table90738%_ (&raw-table-table _%tab90734%_))
              (_%seed90739%_ (&raw-table-seed _%tab90734%_))
              (_%hash90740%_ (&raw-table-hash _%tab90734%_))
              (_%test90741%_ (&raw-table-test _%tab90734%_)))
          (let* ((_%h90743%_
                  (fxxor (_%hash90740%_ _%key90735%_) _%seed90739%_))
                 (_%size90746%_ (vector-length _%table90738%_))
                 (_%entries90749%_ (##fxquotient _%size90746%_ '2))
                 (_%start90752%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90743%_ _%entries90749%_)
                   '1)))
            (let _%loop90756%_ ((_%probe90759%_ _%start90752%_)
                                (_%i90761%_ '1)
                                (_%deleted90763%_ '#f))
              (let ((_%k90766%_ (vector-ref _%table90738%_ _%probe90759%_)))
                (if (eq? _%k90766%_ (macro-unused-obj))
                    _%default90736%_
                    (if (eq? _%k90766%_ (macro-deleted-obj))
                        (_%loop90756%_
                         (let ((_%next-probe90771%_
                                (fx+ _%start90752%_
                                     _%i90761%_
                                     (fx* _%i90761%_ _%i90761%_))))
                           (##fxmodulo _%next-probe90771%_ _%size90746%_))
                         (##fx+ _%i90761%_ '1)
                         (let ((_%$e90774%_ _%deleted90763%_))
                           (if _%$e90774%_ _%$e90774%_ _%probe90759%_)))
                        (if (_%test90741%_ _%key90735%_ _%k90766%_)
                            (vector-ref
                             _%table90738%_
                             (##fx+ _%probe90759%_ '1))
                            (_%loop90756%_
                             (let ((_%next-probe90779%_
                                    (fx+ _%start90752%_
                                         _%i90761%_
                                         (fx* _%i90761%_ _%i90761%_))))
                               (##fxmodulo _%next-probe90779%_ _%size90746%_))
                             (##fx+ _%i90761%_ '1)
                             _%deleted90763%_))))))))))
    (define raw-table-set!
      (lambda (_%tab90730%_ _%key90731%_ _%value90732%_)
        (if (##fx< (&raw-table-free _%tab90730%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90730%_))
                    '4))
            (__raw-table-rehash! _%tab90730%_)
            '#!void)
        (__raw-table-set! _%tab90730%_ _%key90731%_ _%value90732%_)))
    (define raw-table-update!
      (lambda (_%tab90725%_ _%key90726%_ _%update90727%_ _%default90728%_)
        (if (##fx< (&raw-table-free _%tab90725%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90725%_))
                    '4))
            (__raw-table-rehash! _%tab90725%_)
            '#!void)
        (__raw-table-update!
         _%tab90725%_
         _%key90726%_
         _%update90727%_
         _%default90728%_)))
    (define raw-table-delete!
      (lambda (_%tab90682%_ _%key90683%_)
        (let ((_%table90685%_ (&raw-table-table _%tab90682%_))
              (_%seed90686%_ (&raw-table-seed _%tab90682%_))
              (_%hash90687%_ (&raw-table-hash _%tab90682%_))
              (_%test90688%_ (&raw-table-test _%tab90682%_)))
          (let* ((_%h90690%_
                  (fxxor (_%hash90687%_ _%key90683%_) _%seed90686%_))
                 (_%size90693%_ (vector-length _%table90685%_))
                 (_%entries90696%_ (##fxquotient _%size90693%_ '2))
                 (_%start90699%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90690%_ _%entries90696%_)
                   '1)))
            (let _%loop90703%_ ((_%probe90706%_ _%start90699%_)
                                (_%i90708%_ '1))
              (let ((_%k90711%_ (vector-ref _%table90685%_ _%probe90706%_)))
                (if (eq? _%k90711%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90711%_ (macro-deleted-obj))
                        (_%loop90703%_
                         (let ((_%next-probe90716%_
                                (fx+ _%start90699%_
                                     _%i90708%_
                                     (fx* _%i90708%_ _%i90708%_))))
                           (##fxmodulo _%next-probe90716%_ _%size90693%_))
                         (##fx+ _%i90708%_ '1))
                        (if (_%test90688%_ _%key90683%_ _%k90711%_)
                            (let ()
                              (vector-set!
                               _%table90685%_
                               _%probe90706%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90685%_
                               (##fx+ _%probe90706%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90682%_
                                  (##fx- (&raw-table-count _%tab90682%_)
                                         '1)))))
                            (_%loop90703%_
                             (let ((_%next-probe90722%_
                                    (fx+ _%start90699%_
                                         _%i90708%_
                                         (fx* _%i90708%_ _%i90708%_))))
                               (##fxmodulo _%next-probe90722%_ _%size90693%_))
                             (##fx+ _%i90708%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab90666%_ _%proc90667%_)
        (let* ((_%table90669%_ (&raw-table-table _%tab90666%_))
               (_%size90671%_ (vector-length _%table90669%_)))
          (let _%loop90674%_ ((_%i90676%_ '0))
            (if (##fx< _%i90676%_ _%size90671%_)
                (begin
                  (let ((_%key90678%_ (vector-ref _%table90669%_ _%i90676%_)))
                    (if (and (not (eq? _%key90678%_ (macro-unused-obj)))
                             (not (eq? _%key90678%_ (macro-deleted-obj))))
                        (let ((_%value90680%_
                               (vector-ref
                                _%table90669%_
                                (##fx+ _%i90676%_ '1))))
                          (_%proc90667%_ _%key90678%_ _%value90680%_))
                        '#!void))
                  (_%loop90674%_ (##fx+ _%i90676%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab90662%_)
        (let ((_%new-tab90664%_ (##structure-copy _%tab90662%_)))
          (&raw-table-table-set!
           _%new-tab90664%_
           (vector-copy (&raw-table-table _%tab90662%_)))
          _%new-tab90664%_)))
    (define raw-table-clear!
      (lambda (_%tab90660%_)
        (vector-fill! (&raw-table-table _%tab90660%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab90660%_ '0)
        (&raw-table-free-set!
         _%tab90660%_
         (##fxquotient (vector-length (&raw-table-table _%tab90660%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab90610%_ _%key90611%_ _%value90612%_)
        (let ((_%table90614%_ (&raw-table-table _%tab90610%_))
              (_%seed90615%_ (&raw-table-seed _%tab90610%_))
              (_%hash90616%_ (&raw-table-hash _%tab90610%_))
              (_%test90617%_ (&raw-table-test _%tab90610%_)))
          (let* ((_%h90619%_
                  (fxxor (_%hash90616%_ _%key90611%_) _%seed90615%_))
                 (_%size90622%_ (vector-length _%table90614%_))
                 (_%entries90625%_ (##fxquotient _%size90622%_ '2))
                 (_%start90628%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90619%_ _%entries90625%_)
                   '1)))
            (let _%loop90632%_ ((_%probe90635%_ _%start90628%_)
                                (_%i90637%_ '1)
                                (_%deleted90639%_ '#f))
              (let ((_%k90642%_ (vector-ref _%table90614%_ _%probe90635%_)))
                (if (eq? _%k90642%_ (macro-unused-obj))
                    (if _%deleted90639%_
                        (begin
                          (vector-set!
                           _%table90614%_
                           _%deleted90639%_
                           _%key90611%_)
                          (vector-set!
                           _%table90614%_
                           (##fx+ _%deleted90639%_ '1)
                           _%value90612%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90610%_
                              (##fx+ (&raw-table-count _%tab90610%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90614%_
                           _%probe90635%_
                           _%key90611%_)
                          (vector-set!
                           _%table90614%_
                           (##fx+ _%probe90635%_ '1)
                           _%value90612%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90610%_
                              (##fx- (&raw-table-free _%tab90610%_) '1))
                             (&raw-table-count-set!
                              _%tab90610%_
                              (##fx+ (&raw-table-count _%tab90610%_) '1))))))
                    (if (eq? _%k90642%_ (macro-deleted-obj))
                        (_%loop90632%_
                         (let ((_%next-probe90649%_
                                (fx+ _%start90628%_
                                     _%i90637%_
                                     (fx* _%i90637%_ _%i90637%_))))
                           (##fxmodulo _%next-probe90649%_ _%size90622%_))
                         (##fx+ _%i90637%_ '1)
                         (let ((_%$e90652%_ _%deleted90639%_))
                           (if _%$e90652%_ _%$e90652%_ _%probe90635%_)))
                        (if (_%test90617%_ _%key90611%_ _%k90642%_)
                            (let ()
                              (vector-set!
                               _%table90614%_
                               _%probe90635%_
                               _%key90611%_)
                              (vector-set!
                               _%table90614%_
                               (##fx+ _%probe90635%_ '1)
                               _%value90612%_))
                            (_%loop90632%_
                             (let ((_%next-probe90657%_
                                    (fx+ _%start90628%_
                                         _%i90637%_
                                         (fx* _%i90637%_ _%i90637%_))))
                               (##fxmodulo _%next-probe90657%_ _%size90622%_))
                             (##fx+ _%i90637%_ '1)
                             _%deleted90639%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab90559%_ _%key90560%_ _%update90561%_ _%default90562%_)
        (let ((_%table90564%_ (&raw-table-table _%tab90559%_))
              (_%seed90565%_ (&raw-table-seed _%tab90559%_))
              (_%hash90566%_ (&raw-table-hash _%tab90559%_))
              (_%test90567%_ (&raw-table-test _%tab90559%_)))
          (let* ((_%h90569%_
                  (fxxor (_%hash90566%_ _%key90560%_) _%seed90565%_))
                 (_%size90572%_ (vector-length _%table90564%_))
                 (_%entries90575%_ (##fxquotient _%size90572%_ '2))
                 (_%start90578%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90569%_ _%entries90575%_)
                   '1)))
            (let _%loop90582%_ ((_%probe90585%_ _%start90578%_)
                                (_%i90587%_ '1)
                                (_%deleted90589%_ '#f))
              (let ((_%k90592%_ (vector-ref _%table90564%_ _%probe90585%_)))
                (if (eq? _%k90592%_ (macro-unused-obj))
                    (if _%deleted90589%_
                        (begin
                          (vector-set!
                           _%table90564%_
                           _%deleted90589%_
                           _%key90560%_)
                          (vector-set!
                           _%table90564%_
                           (##fx+ _%deleted90589%_ '1)
                           (_%update90561%_ _%default90562%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90559%_
                              (##fx+ (&raw-table-count _%tab90559%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90564%_
                           _%probe90585%_
                           _%key90560%_)
                          (vector-set!
                           _%table90564%_
                           (##fx+ _%probe90585%_ '1)
                           (_%update90561%_ _%default90562%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90559%_
                              (##fx- (&raw-table-free _%tab90559%_) '1))
                             (&raw-table-count-set!
                              _%tab90559%_
                              (##fx+ (&raw-table-count _%tab90559%_) '1))))))
                    (if (eq? _%k90592%_ (macro-deleted-obj))
                        (_%loop90582%_
                         (let ((_%next-probe90599%_
                                (fx+ _%start90578%_
                                     _%i90587%_
                                     (fx* _%i90587%_ _%i90587%_))))
                           (##fxmodulo _%next-probe90599%_ _%size90572%_))
                         (##fx+ _%i90587%_ '1)
                         (let ((_%$e90602%_ _%deleted90589%_))
                           (if _%$e90602%_ _%$e90602%_ _%probe90585%_)))
                        (if (_%test90567%_ _%key90560%_ _%k90592%_)
                            (let ()
                              (vector-set!
                               _%table90564%_
                               _%probe90585%_
                               _%key90560%_)
                              (vector-set!
                               _%table90564%_
                               (##fx+ _%probe90585%_ '1)
                               (_%update90561%_
                                (vector-ref
                                 _%table90564%_
                                 (##fx+ _%probe90585%_ '1)))))
                            (_%loop90582%_
                             (let ((_%next-probe90607%_
                                    (fx+ _%start90578%_
                                         _%i90587%_
                                         (fx* _%i90587%_ _%i90587%_))))
                               (##fxmodulo _%next-probe90607%_ _%size90572%_))
                             (##fx+ _%i90587%_ '1)
                             _%deleted90589%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab90540%_)
        (let* ((_%old-table90542%_ (&raw-table-table _%tab90540%_))
               (_%old-size90544%_ (vector-length _%old-table90542%_))
               (_%new-size90546%_
                (if (##fx< (&raw-table-count _%tab90540%_)
                           (##fxquotient _%old-size90544%_ '4))
                    (vector-length _%old-table90542%_)
                    (##fx* '2 (vector-length _%old-table90542%_))))
               (_%new-table90548%_
                (##make-vector _%new-size90546%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab90540%_ _%new-table90548%_)
          (&raw-table-count-set! _%tab90540%_ '0)
          (&raw-table-free-set!
           _%tab90540%_
           (##fxquotient _%new-size90546%_ '2))
          (let _%lp90551%_ ((_%i90553%_ '0))
            (if (##fx< _%i90553%_ _%old-size90544%_)
                (begin
                  (let ((_%key90555%_
                         (vector-ref _%old-table90542%_ _%i90553%_)))
                    (if (and (not (eq? _%key90555%_ (macro-unused-obj)))
                             (not (eq? _%key90555%_ (macro-deleted-obj))))
                        (let ((_%value90557%_
                               (vector-ref
                                _%old-table90542%_
                                (##fx+ _%i90553%_ '1))))
                          (__raw-table-set!
                           _%tab90540%_
                           _%key90555%_
                           _%value90557%_))
                        '#!void))
                  (_%lp90551%_ (##fx+ _%i90553%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj90532%_)
        (let ((_%t90534%_ (##type _%obj90532%_)))
          (if (##fx= (##fxand _%t90534%_ '1) '0)
              (fxand (##type-cast _%obj90532%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj90532%_)
                  (symbolic-hash _%obj90532%_)
                  (if (procedure? _%obj90532%_)
                      (procedure-hash _%obj90532%_)
                      (fxand (__eq-hash _%obj90532%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj90528%_)
        (let ((_%h90530%_
               (if (##closure? _%obj90528%_)
                   (__eq-hash _%obj90528%_)
                   (##type-cast _%obj90528%_ '0))))
          (fxand _%h90530%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj90525%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj90525%_)))
    (define eqv-hash
      (lambda (_%obj90515%_)
        (letrec ((_%combine90517%_
                  (lambda (_%a90522%_ _%b90523%_)
                    (fxand (##fx* (##fx+ _%a90522%_
                                         (fxarithmetic-shift-left
                                          _%b90523%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash90518%_
                  (lambda (_%obj90520%_)
                    (macro-number-dispatch
                     _%obj90520%_
                     (eq-hash _%obj90520%_)
                     (fxand _%obj90520%_ (macro-max-fixnum32))
                     (modulo _%obj90520%_ '331804481)
                     (_%combine90517%_
                      (_%hash90518%_ (macro-ratnum-numerator _%obj90520%_))
                      (_%hash90518%_ (macro-ratnum-denominator _%obj90520%_)))
                     (_%combine90517%_
                      (##u16vector-ref _%obj90520%_ '0)
                      (_%combine90517%_
                       (##u16vector-ref _%obj90520%_ '1)
                       (_%combine90517%_
                        (##u16vector-ref _%obj90520%_ '2)
                        (##u16vector-ref _%obj90520%_ '3))))
                     (_%combine90517%_
                      (_%hash90518%_ (macro-cpxnum-real _%obj90520%_))
                      (_%hash90518%_ (macro-cpxnum-imag _%obj90520%_)))))))
          (_%hash90518%_ _%obj90515%_))))
    (define symbolic?
      (lambda (_%obj90510%_)
        (let ((_%$e90512%_ (symbol? _%obj90510%_)))
          (if _%$e90512%_ _%$e90512%_ (keyword? _%obj90510%_)))))
    (define symbolic-hash (lambda (_%obj90508%_) (macro-slot '1 _%obj90508%_)))
    (define string-hash (lambda (_%obj90506%_) (##string=?-hash _%obj90506%_)))
    (define immediate-hash
      (lambda (_%obj90504%_) (##type-cast _%obj90504%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint90485%_ _%seed90487%_)
        (make-raw-table__% _%size-hint90485%_ eq-hash eq? _%seed90487%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint90493%_ '#f) (_%seed90495%_ '0))
          (make-eq-table__% _%size-hint90493%_ _%seed90495%_))))
    (define make-eq-table__1
      (lambda (_%size-hint90497%_)
        (let ((_%seed90499%_ '0))
          (make-eq-table__% _%size-hint90497%_ _%seed90499%_))))
    (define make-eq-table
      (lambda _g90841_
        (let ((_g90840_ (##length _g90841_)))
          (cond ((##fx= _g90840_ 0) (apply make-eq-table__0 _g90841_))
                ((##fx= _g90840_ 1) (apply make-eq-table__1 _g90841_))
                ((##fx= _g90840_ 2) (apply make-eq-table__% _g90841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90841_))))))
    (define eq-table-ref
      (lambda (_%tab90438%_ _%key90439%_ _%default90440%_)
        (let ((_%table90442%_ (&raw-table-table _%tab90438%_))
              (_%seed90443%_ (&raw-table-seed _%tab90438%_)))
          (let* ((_%h90445%_ (fxxor (eq-hash _%key90439%_) _%seed90443%_))
                 (_%size90448%_ (vector-length _%table90442%_))
                 (_%entries90451%_ (##fxquotient _%size90448%_ '2))
                 (_%start90454%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90445%_ _%entries90451%_)
                   '1)))
            (let _%loop90458%_ ((_%probe90461%_ _%start90454%_)
                                (_%i90463%_ '1)
                                (_%deleted90465%_ '#f))
              (let ((_%k90468%_ (vector-ref _%table90442%_ _%probe90461%_)))
                (if (eq? _%k90468%_ (macro-unused-obj))
                    _%default90440%_
                    (if (eq? _%k90468%_ (macro-deleted-obj))
                        (_%loop90458%_
                         (let ((_%next-probe90473%_
                                (fx+ _%start90454%_
                                     _%i90463%_
                                     (fx* _%i90463%_ _%i90463%_))))
                           (##fxmodulo _%next-probe90473%_ _%size90448%_))
                         (##fx+ _%i90463%_ '1)
                         (let ((_%$e90476%_ _%deleted90465%_))
                           (if _%$e90476%_ _%$e90476%_ _%probe90461%_)))
                        (if (eq? _%key90439%_ _%k90468%_)
                            (vector-ref
                             _%table90442%_
                             (##fx+ _%probe90461%_ '1))
                            (_%loop90458%_
                             (let ((_%next-probe90481%_
                                    (fx+ _%start90454%_
                                         _%i90463%_
                                         (fx* _%i90463%_ _%i90463%_))))
                               (##fxmodulo _%next-probe90481%_ _%size90448%_))
                             (##fx+ _%i90463%_ '1)
                             _%deleted90465%_))))))))))
    (define eq-table-set!
      (lambda (_%tab90434%_ _%key90435%_ _%value90436%_)
        (if (##fx< (&raw-table-free _%tab90434%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90434%_))
                    '4))
            (__raw-table-rehash! _%tab90434%_)
            '#!void)
        (__eq-table-set! _%tab90434%_ _%key90435%_ _%value90436%_)))
    (define __eq-table-set!
      (lambda (_%tab90385%_ _%key90386%_ _%value90387%_)
        (let ((_%table90390%_ (&raw-table-table _%tab90385%_))
              (_%seed90391%_ (&raw-table-seed _%tab90385%_)))
          (let* ((_%h90393%_ (fxxor (eq-hash _%key90386%_) _%seed90391%_))
                 (_%size90396%_ (vector-length _%table90390%_))
                 (_%entries90399%_ (##fxquotient _%size90396%_ '2))
                 (_%start90402%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90393%_ _%entries90399%_)
                   '1)))
            (let _%loop90406%_ ((_%probe90409%_ _%start90402%_)
                                (_%i90411%_ '1)
                                (_%deleted90413%_ '#f))
              (let ((_%k90416%_ (vector-ref _%table90390%_ _%probe90409%_)))
                (if (eq? _%k90416%_ (macro-unused-obj))
                    (if _%deleted90413%_
                        (begin
                          (vector-set!
                           _%table90390%_
                           _%deleted90413%_
                           _%key90386%_)
                          (vector-set!
                           _%table90390%_
                           (##fx+ _%deleted90413%_ '1)
                           _%value90387%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90385%_
                              (##fx+ (&raw-table-count _%tab90385%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90390%_
                           _%probe90409%_
                           _%key90386%_)
                          (vector-set!
                           _%table90390%_
                           (##fx+ _%probe90409%_ '1)
                           _%value90387%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90385%_
                              (##fx- (&raw-table-free _%tab90385%_) '1))
                             (&raw-table-count-set!
                              _%tab90385%_
                              (##fx+ (&raw-table-count _%tab90385%_) '1))))))
                    (if (eq? _%k90416%_ (macro-deleted-obj))
                        (_%loop90406%_
                         (let ((_%next-probe90423%_
                                (fx+ _%start90402%_
                                     _%i90411%_
                                     (fx* _%i90411%_ _%i90411%_))))
                           (##fxmodulo _%next-probe90423%_ _%size90396%_))
                         (##fx+ _%i90411%_ '1)
                         (let ((_%$e90426%_ _%deleted90413%_))
                           (if _%$e90426%_ _%$e90426%_ _%probe90409%_)))
                        (if (eq? _%key90386%_ _%k90416%_)
                            (let ()
                              (vector-set!
                               _%table90390%_
                               _%probe90409%_
                               _%key90386%_)
                              (vector-set!
                               _%table90390%_
                               (##fx+ _%probe90409%_ '1)
                               _%value90387%_))
                            (_%loop90406%_
                             (let ((_%next-probe90431%_
                                    (fx+ _%start90402%_
                                         _%i90411%_
                                         (fx* _%i90411%_ _%i90411%_))))
                               (##fxmodulo _%next-probe90431%_ _%size90396%_))
                             (##fx+ _%i90411%_ '1)
                             _%deleted90413%_))))))))))
    (define eq-table-update!
      (lambda (_%tab90380%_
               _%key90381%_
               _%eq-table-update!90382%_
               _%default90383%_)
        (if (##fx< (&raw-table-free _%tab90380%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90380%_))
                    '4))
            (__raw-table-rehash! _%tab90380%_)
            '#!void)
        (__eq-table-update!
         _%tab90380%_
         _%key90381%_
         _%eq-table-update!90382%_
         _%default90383%_)))
    (define __eq-table-update!
      (lambda (_%tab90330%_
               _%key90331%_
               _%eq-table-update!90332%_
               _%default90333%_)
        (let ((_%table90336%_ (&raw-table-table _%tab90330%_))
              (_%seed90337%_ (&raw-table-seed _%tab90330%_)))
          (let* ((_%h90339%_ (fxxor (eq-hash _%key90331%_) _%seed90337%_))
                 (_%size90342%_ (vector-length _%table90336%_))
                 (_%entries90345%_ (##fxquotient _%size90342%_ '2))
                 (_%start90348%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90339%_ _%entries90345%_)
                   '1)))
            (let _%loop90352%_ ((_%probe90355%_ _%start90348%_)
                                (_%i90357%_ '1)
                                (_%deleted90359%_ '#f))
              (let ((_%k90362%_ (vector-ref _%table90336%_ _%probe90355%_)))
                (if (eq? _%k90362%_ (macro-unused-obj))
                    (if _%deleted90359%_
                        (begin
                          (vector-set!
                           _%table90336%_
                           _%deleted90359%_
                           _%key90331%_)
                          (vector-set!
                           _%table90336%_
                           (##fx+ _%deleted90359%_ '1)
                           (_%eq-table-update!90332%_ _%default90333%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90330%_
                              (##fx+ (&raw-table-count _%tab90330%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90336%_
                           _%probe90355%_
                           _%key90331%_)
                          (vector-set!
                           _%table90336%_
                           (##fx+ _%probe90355%_ '1)
                           (_%eq-table-update!90332%_ _%default90333%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90330%_
                              (##fx- (&raw-table-free _%tab90330%_) '1))
                             (&raw-table-count-set!
                              _%tab90330%_
                              (##fx+ (&raw-table-count _%tab90330%_) '1))))))
                    (if (eq? _%k90362%_ (macro-deleted-obj))
                        (_%loop90352%_
                         (let ((_%next-probe90369%_
                                (fx+ _%start90348%_
                                     _%i90357%_
                                     (fx* _%i90357%_ _%i90357%_))))
                           (##fxmodulo _%next-probe90369%_ _%size90342%_))
                         (##fx+ _%i90357%_ '1)
                         (let ((_%$e90372%_ _%deleted90359%_))
                           (if _%$e90372%_ _%$e90372%_ _%probe90355%_)))
                        (if (eq? _%key90331%_ _%k90362%_)
                            (let ()
                              (vector-set!
                               _%table90336%_
                               _%probe90355%_
                               _%key90331%_)
                              (vector-set!
                               _%table90336%_
                               (##fx+ _%probe90355%_ '1)
                               (_%eq-table-update!90332%_
                                (vector-ref
                                 _%table90336%_
                                 (##fx+ _%probe90355%_ '1)))))
                            (_%loop90352%_
                             (let ((_%next-probe90377%_
                                    (fx+ _%start90348%_
                                         _%i90357%_
                                         (fx* _%i90357%_ _%i90357%_))))
                               (##fxmodulo _%next-probe90377%_ _%size90342%_))
                             (##fx+ _%i90357%_ '1)
                             _%deleted90359%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab90285%_ _%key90287%_)
        (let ((_%table90290%_ (&raw-table-table _%tab90285%_))
              (_%seed90292%_ (&raw-table-seed _%tab90285%_)))
          (let* ((_%h90295%_ (fxxor (eq-hash _%key90287%_) _%seed90292%_))
                 (_%size90298%_ (vector-length _%table90290%_))
                 (_%entries90301%_ (##fxquotient _%size90298%_ '2))
                 (_%start90304%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90295%_ _%entries90301%_)
                   '1)))
            (let _%loop90308%_ ((_%probe90311%_ _%start90304%_)
                                (_%i90313%_ '1))
              (let ((_%k90316%_ (vector-ref _%table90290%_ _%probe90311%_)))
                (if (eq? _%k90316%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90316%_ (macro-deleted-obj))
                        (_%loop90308%_
                         (let ((_%next-probe90321%_
                                (fx+ _%start90304%_
                                     _%i90313%_
                                     (fx* _%i90313%_ _%i90313%_))))
                           (##fxmodulo _%next-probe90321%_ _%size90298%_))
                         (##fx+ _%i90313%_ '1))
                        (if (eq? _%key90287%_ _%k90316%_)
                            (let ()
                              (vector-set!
                               _%table90290%_
                               _%probe90311%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90290%_
                               (##fx+ _%probe90311%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90285%_
                                  (##fx- (&raw-table-count _%tab90285%_)
                                         '1)))))
                            (_%loop90308%_
                             (let ((_%next-probe90327%_
                                    (fx+ _%start90304%_
                                         _%i90313%_
                                         (fx* _%i90313%_ _%i90313%_))))
                               (##fxmodulo _%next-probe90327%_ _%size90298%_))
                             (##fx+ _%i90313%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint90266%_ _%seed90268%_)
        (make-raw-table__% _%size-hint90266%_ eqv-hash eqv? _%seed90268%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint90274%_ '#f) (_%seed90276%_ '0))
          (make-eqv-table__% _%size-hint90274%_ _%seed90276%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint90278%_)
        (let ((_%seed90280%_ '0))
          (make-eqv-table__% _%size-hint90278%_ _%seed90280%_))))
    (define make-eqv-table
      (lambda _g90843_
        (let ((_g90842_ (##length _g90843_)))
          (cond ((##fx= _g90842_ 0) (apply make-eqv-table__0 _g90843_))
                ((##fx= _g90842_ 1) (apply make-eqv-table__1 _g90843_))
                ((##fx= _g90842_ 2) (apply make-eqv-table__% _g90843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90843_))))))
    (define eqv-table-ref
      (lambda (_%tab90219%_ _%key90220%_ _%default90221%_)
        (let ((_%table90223%_ (&raw-table-table _%tab90219%_))
              (_%seed90224%_ (&raw-table-seed _%tab90219%_)))
          (let* ((_%h90226%_ (fxxor (eqv-hash _%key90220%_) _%seed90224%_))
                 (_%size90229%_ (vector-length _%table90223%_))
                 (_%entries90232%_ (##fxquotient _%size90229%_ '2))
                 (_%start90235%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90226%_ _%entries90232%_)
                   '1)))
            (let _%loop90239%_ ((_%probe90242%_ _%start90235%_)
                                (_%i90244%_ '1)
                                (_%deleted90246%_ '#f))
              (let ((_%k90249%_ (vector-ref _%table90223%_ _%probe90242%_)))
                (if (eq? _%k90249%_ (macro-unused-obj))
                    _%default90221%_
                    (if (eq? _%k90249%_ (macro-deleted-obj))
                        (_%loop90239%_
                         (let ((_%next-probe90254%_
                                (fx+ _%start90235%_
                                     _%i90244%_
                                     (fx* _%i90244%_ _%i90244%_))))
                           (##fxmodulo _%next-probe90254%_ _%size90229%_))
                         (##fx+ _%i90244%_ '1)
                         (let ((_%$e90257%_ _%deleted90246%_))
                           (if _%$e90257%_ _%$e90257%_ _%probe90242%_)))
                        (if (eqv? _%key90220%_ _%k90249%_)
                            (vector-ref
                             _%table90223%_
                             (##fx+ _%probe90242%_ '1))
                            (_%loop90239%_
                             (let ((_%next-probe90262%_
                                    (fx+ _%start90235%_
                                         _%i90244%_
                                         (fx* _%i90244%_ _%i90244%_))))
                               (##fxmodulo _%next-probe90262%_ _%size90229%_))
                             (##fx+ _%i90244%_ '1)
                             _%deleted90246%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab90215%_ _%key90216%_ _%value90217%_)
        (if (##fx< (&raw-table-free _%tab90215%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90215%_))
                    '4))
            (__raw-table-rehash! _%tab90215%_)
            '#!void)
        (__eqv-table-set! _%tab90215%_ _%key90216%_ _%value90217%_)))
    (define __eqv-table-set!
      (lambda (_%tab90166%_ _%key90167%_ _%value90168%_)
        (let ((_%table90171%_ (&raw-table-table _%tab90166%_))
              (_%seed90172%_ (&raw-table-seed _%tab90166%_)))
          (let* ((_%h90174%_ (fxxor (eqv-hash _%key90167%_) _%seed90172%_))
                 (_%size90177%_ (vector-length _%table90171%_))
                 (_%entries90180%_ (##fxquotient _%size90177%_ '2))
                 (_%start90183%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90174%_ _%entries90180%_)
                   '1)))
            (let _%loop90187%_ ((_%probe90190%_ _%start90183%_)
                                (_%i90192%_ '1)
                                (_%deleted90194%_ '#f))
              (let ((_%k90197%_ (vector-ref _%table90171%_ _%probe90190%_)))
                (if (eq? _%k90197%_ (macro-unused-obj))
                    (if _%deleted90194%_
                        (begin
                          (vector-set!
                           _%table90171%_
                           _%deleted90194%_
                           _%key90167%_)
                          (vector-set!
                           _%table90171%_
                           (##fx+ _%deleted90194%_ '1)
                           _%value90168%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90166%_
                              (##fx+ (&raw-table-count _%tab90166%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90171%_
                           _%probe90190%_
                           _%key90167%_)
                          (vector-set!
                           _%table90171%_
                           (##fx+ _%probe90190%_ '1)
                           _%value90168%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90166%_
                              (##fx- (&raw-table-free _%tab90166%_) '1))
                             (&raw-table-count-set!
                              _%tab90166%_
                              (##fx+ (&raw-table-count _%tab90166%_) '1))))))
                    (if (eq? _%k90197%_ (macro-deleted-obj))
                        (_%loop90187%_
                         (let ((_%next-probe90204%_
                                (fx+ _%start90183%_
                                     _%i90192%_
                                     (fx* _%i90192%_ _%i90192%_))))
                           (##fxmodulo _%next-probe90204%_ _%size90177%_))
                         (##fx+ _%i90192%_ '1)
                         (let ((_%$e90207%_ _%deleted90194%_))
                           (if _%$e90207%_ _%$e90207%_ _%probe90190%_)))
                        (if (eqv? _%key90167%_ _%k90197%_)
                            (let ()
                              (vector-set!
                               _%table90171%_
                               _%probe90190%_
                               _%key90167%_)
                              (vector-set!
                               _%table90171%_
                               (##fx+ _%probe90190%_ '1)
                               _%value90168%_))
                            (_%loop90187%_
                             (let ((_%next-probe90212%_
                                    (fx+ _%start90183%_
                                         _%i90192%_
                                         (fx* _%i90192%_ _%i90192%_))))
                               (##fxmodulo _%next-probe90212%_ _%size90177%_))
                             (##fx+ _%i90192%_ '1)
                             _%deleted90194%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab90161%_
               _%key90162%_
               _%eqv-table-update!90163%_
               _%default90164%_)
        (if (##fx< (&raw-table-free _%tab90161%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90161%_))
                    '4))
            (__raw-table-rehash! _%tab90161%_)
            '#!void)
        (__eqv-table-update!
         _%tab90161%_
         _%key90162%_
         _%eqv-table-update!90163%_
         _%default90164%_)))
    (define __eqv-table-update!
      (lambda (_%tab90111%_
               _%key90112%_
               _%eqv-table-update!90113%_
               _%default90114%_)
        (let ((_%table90117%_ (&raw-table-table _%tab90111%_))
              (_%seed90118%_ (&raw-table-seed _%tab90111%_)))
          (let* ((_%h90120%_ (fxxor (eqv-hash _%key90112%_) _%seed90118%_))
                 (_%size90123%_ (vector-length _%table90117%_))
                 (_%entries90126%_ (##fxquotient _%size90123%_ '2))
                 (_%start90129%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90120%_ _%entries90126%_)
                   '1)))
            (let _%loop90133%_ ((_%probe90136%_ _%start90129%_)
                                (_%i90138%_ '1)
                                (_%deleted90140%_ '#f))
              (let ((_%k90143%_ (vector-ref _%table90117%_ _%probe90136%_)))
                (if (eq? _%k90143%_ (macro-unused-obj))
                    (if _%deleted90140%_
                        (begin
                          (vector-set!
                           _%table90117%_
                           _%deleted90140%_
                           _%key90112%_)
                          (vector-set!
                           _%table90117%_
                           (##fx+ _%deleted90140%_ '1)
                           (_%eqv-table-update!90113%_ _%default90114%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90111%_
                              (##fx+ (&raw-table-count _%tab90111%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90117%_
                           _%probe90136%_
                           _%key90112%_)
                          (vector-set!
                           _%table90117%_
                           (##fx+ _%probe90136%_ '1)
                           (_%eqv-table-update!90113%_ _%default90114%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90111%_
                              (##fx- (&raw-table-free _%tab90111%_) '1))
                             (&raw-table-count-set!
                              _%tab90111%_
                              (##fx+ (&raw-table-count _%tab90111%_) '1))))))
                    (if (eq? _%k90143%_ (macro-deleted-obj))
                        (_%loop90133%_
                         (let ((_%next-probe90150%_
                                (fx+ _%start90129%_
                                     _%i90138%_
                                     (fx* _%i90138%_ _%i90138%_))))
                           (##fxmodulo _%next-probe90150%_ _%size90123%_))
                         (##fx+ _%i90138%_ '1)
                         (let ((_%$e90153%_ _%deleted90140%_))
                           (if _%$e90153%_ _%$e90153%_ _%probe90136%_)))
                        (if (eqv? _%key90112%_ _%k90143%_)
                            (let ()
                              (vector-set!
                               _%table90117%_
                               _%probe90136%_
                               _%key90112%_)
                              (vector-set!
                               _%table90117%_
                               (##fx+ _%probe90136%_ '1)
                               (_%eqv-table-update!90113%_
                                (vector-ref
                                 _%table90117%_
                                 (##fx+ _%probe90136%_ '1)))))
                            (_%loop90133%_
                             (let ((_%next-probe90158%_
                                    (fx+ _%start90129%_
                                         _%i90138%_
                                         (fx* _%i90138%_ _%i90138%_))))
                               (##fxmodulo _%next-probe90158%_ _%size90123%_))
                             (##fx+ _%i90138%_ '1)
                             _%deleted90140%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab90066%_ _%key90068%_)
        (let ((_%table90071%_ (&raw-table-table _%tab90066%_))
              (_%seed90073%_ (&raw-table-seed _%tab90066%_)))
          (let* ((_%h90076%_ (fxxor (eqv-hash _%key90068%_) _%seed90073%_))
                 (_%size90079%_ (vector-length _%table90071%_))
                 (_%entries90082%_ (##fxquotient _%size90079%_ '2))
                 (_%start90085%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90076%_ _%entries90082%_)
                   '1)))
            (let _%loop90089%_ ((_%probe90092%_ _%start90085%_)
                                (_%i90094%_ '1))
              (let ((_%k90097%_ (vector-ref _%table90071%_ _%probe90092%_)))
                (if (eq? _%k90097%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90097%_ (macro-deleted-obj))
                        (_%loop90089%_
                         (let ((_%next-probe90102%_
                                (fx+ _%start90085%_
                                     _%i90094%_
                                     (fx* _%i90094%_ _%i90094%_))))
                           (##fxmodulo _%next-probe90102%_ _%size90079%_))
                         (##fx+ _%i90094%_ '1))
                        (if (eqv? _%key90068%_ _%k90097%_)
                            (let ()
                              (vector-set!
                               _%table90071%_
                               _%probe90092%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90071%_
                               (##fx+ _%probe90092%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90066%_
                                  (##fx- (&raw-table-count _%tab90066%_)
                                         '1)))))
                            (_%loop90089%_
                             (let ((_%next-probe90108%_
                                    (fx+ _%start90085%_
                                         _%i90094%_
                                         (fx* _%i90094%_ _%i90094%_))))
                               (##fxmodulo _%next-probe90108%_ _%size90079%_))
                             (##fx+ _%i90094%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint90047%_ _%seed90049%_)
        (make-raw-table__%
         _%size-hint90047%_
         symbolic-hash
         eq?
         _%seed90049%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint90055%_ '#f) (_%seed90057%_ '0))
          (make-symbolic-table__% _%size-hint90055%_ _%seed90057%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint90059%_)
        (let ((_%seed90061%_ '0))
          (make-symbolic-table__% _%size-hint90059%_ _%seed90061%_))))
    (define make-symbolic-table
      (lambda _g90845_
        (let ((_g90844_ (##length _g90845_)))
          (cond ((##fx= _g90844_ 0) (apply make-symbolic-table__0 _g90845_))
                ((##fx= _g90844_ 1) (apply make-symbolic-table__1 _g90845_))
                ((##fx= _g90844_ 2) (apply make-symbolic-table__% _g90845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90845_))))))
    (define symbolic-table-ref
      (lambda (_%tab90000%_ _%key90001%_ _%default90002%_)
        (let ((_%table90004%_ (&raw-table-table _%tab90000%_))
              (_%seed90005%_ (&raw-table-seed _%tab90000%_)))
          (let* ((_%h90007%_
                  (fxxor (symbolic-hash _%key90001%_) _%seed90005%_))
                 (_%size90010%_ (vector-length _%table90004%_))
                 (_%entries90013%_ (##fxquotient _%size90010%_ '2))
                 (_%start90016%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90007%_ _%entries90013%_)
                   '1)))
            (let _%loop90020%_ ((_%probe90023%_ _%start90016%_)
                                (_%i90025%_ '1)
                                (_%deleted90027%_ '#f))
              (let ((_%k90030%_ (vector-ref _%table90004%_ _%probe90023%_)))
                (if (eq? _%k90030%_ (macro-unused-obj))
                    _%default90002%_
                    (if (eq? _%k90030%_ (macro-deleted-obj))
                        (_%loop90020%_
                         (let ((_%next-probe90035%_
                                (fx+ _%start90016%_
                                     _%i90025%_
                                     (fx* _%i90025%_ _%i90025%_))))
                           (##fxmodulo _%next-probe90035%_ _%size90010%_))
                         (##fx+ _%i90025%_ '1)
                         (let ((_%$e90038%_ _%deleted90027%_))
                           (if _%$e90038%_ _%$e90038%_ _%probe90023%_)))
                        (if (eq? _%key90001%_ _%k90030%_)
                            (vector-ref
                             _%table90004%_
                             (##fx+ _%probe90023%_ '1))
                            (_%loop90020%_
                             (let ((_%next-probe90043%_
                                    (fx+ _%start90016%_
                                         _%i90025%_
                                         (fx* _%i90025%_ _%i90025%_))))
                               (##fxmodulo _%next-probe90043%_ _%size90010%_))
                             (##fx+ _%i90025%_ '1)
                             _%deleted90027%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89996%_ _%key89997%_ _%value89998%_)
        (if (##fx< (&raw-table-free _%tab89996%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89996%_))
                    '4))
            (__raw-table-rehash! _%tab89996%_)
            '#!void)
        (__symbolic-table-set! _%tab89996%_ _%key89997%_ _%value89998%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89947%_ _%key89948%_ _%value89949%_)
        (let ((_%table89952%_ (&raw-table-table _%tab89947%_))
              (_%seed89953%_ (&raw-table-seed _%tab89947%_)))
          (let* ((_%h89955%_
                  (fxxor (symbolic-hash _%key89948%_) _%seed89953%_))
                 (_%size89958%_ (vector-length _%table89952%_))
                 (_%entries89961%_ (##fxquotient _%size89958%_ '2))
                 (_%start89964%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89955%_ _%entries89961%_)
                   '1)))
            (let _%loop89968%_ ((_%probe89971%_ _%start89964%_)
                                (_%i89973%_ '1)
                                (_%deleted89975%_ '#f))
              (let ((_%k89978%_ (vector-ref _%table89952%_ _%probe89971%_)))
                (if (eq? _%k89978%_ (macro-unused-obj))
                    (if _%deleted89975%_
                        (begin
                          (vector-set!
                           _%table89952%_
                           _%deleted89975%_
                           _%key89948%_)
                          (vector-set!
                           _%table89952%_
                           (##fx+ _%deleted89975%_ '1)
                           _%value89949%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89947%_
                              (##fx+ (&raw-table-count _%tab89947%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89952%_
                           _%probe89971%_
                           _%key89948%_)
                          (vector-set!
                           _%table89952%_
                           (##fx+ _%probe89971%_ '1)
                           _%value89949%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89947%_
                              (##fx- (&raw-table-free _%tab89947%_) '1))
                             (&raw-table-count-set!
                              _%tab89947%_
                              (##fx+ (&raw-table-count _%tab89947%_) '1))))))
                    (if (eq? _%k89978%_ (macro-deleted-obj))
                        (_%loop89968%_
                         (let ((_%next-probe89985%_
                                (fx+ _%start89964%_
                                     _%i89973%_
                                     (fx* _%i89973%_ _%i89973%_))))
                           (##fxmodulo _%next-probe89985%_ _%size89958%_))
                         (##fx+ _%i89973%_ '1)
                         (let ((_%$e89988%_ _%deleted89975%_))
                           (if _%$e89988%_ _%$e89988%_ _%probe89971%_)))
                        (if (eq? _%key89948%_ _%k89978%_)
                            (let ()
                              (vector-set!
                               _%table89952%_
                               _%probe89971%_
                               _%key89948%_)
                              (vector-set!
                               _%table89952%_
                               (##fx+ _%probe89971%_ '1)
                               _%value89949%_))
                            (_%loop89968%_
                             (let ((_%next-probe89993%_
                                    (fx+ _%start89964%_
                                         _%i89973%_
                                         (fx* _%i89973%_ _%i89973%_))))
                               (##fxmodulo _%next-probe89993%_ _%size89958%_))
                             (##fx+ _%i89973%_ '1)
                             _%deleted89975%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab89942%_
               _%key89943%_
               _%symbolic-table-update!89944%_
               _%default89945%_)
        (if (##fx< (&raw-table-free _%tab89942%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89942%_))
                    '4))
            (__raw-table-rehash! _%tab89942%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89942%_
         _%key89943%_
         _%symbolic-table-update!89944%_
         _%default89945%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89892%_
               _%key89893%_
               _%symbolic-table-update!89894%_
               _%default89895%_)
        (let ((_%table89898%_ (&raw-table-table _%tab89892%_))
              (_%seed89899%_ (&raw-table-seed _%tab89892%_)))
          (let* ((_%h89901%_
                  (fxxor (symbolic-hash _%key89893%_) _%seed89899%_))
                 (_%size89904%_ (vector-length _%table89898%_))
                 (_%entries89907%_ (##fxquotient _%size89904%_ '2))
                 (_%start89910%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89901%_ _%entries89907%_)
                   '1)))
            (let _%loop89914%_ ((_%probe89917%_ _%start89910%_)
                                (_%i89919%_ '1)
                                (_%deleted89921%_ '#f))
              (let ((_%k89924%_ (vector-ref _%table89898%_ _%probe89917%_)))
                (if (eq? _%k89924%_ (macro-unused-obj))
                    (if _%deleted89921%_
                        (begin
                          (vector-set!
                           _%table89898%_
                           _%deleted89921%_
                           _%key89893%_)
                          (vector-set!
                           _%table89898%_
                           (##fx+ _%deleted89921%_ '1)
                           (_%symbolic-table-update!89894%_ _%default89895%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89892%_
                              (##fx+ (&raw-table-count _%tab89892%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89898%_
                           _%probe89917%_
                           _%key89893%_)
                          (vector-set!
                           _%table89898%_
                           (##fx+ _%probe89917%_ '1)
                           (_%symbolic-table-update!89894%_ _%default89895%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89892%_
                              (##fx- (&raw-table-free _%tab89892%_) '1))
                             (&raw-table-count-set!
                              _%tab89892%_
                              (##fx+ (&raw-table-count _%tab89892%_) '1))))))
                    (if (eq? _%k89924%_ (macro-deleted-obj))
                        (_%loop89914%_
                         (let ((_%next-probe89931%_
                                (fx+ _%start89910%_
                                     _%i89919%_
                                     (fx* _%i89919%_ _%i89919%_))))
                           (##fxmodulo _%next-probe89931%_ _%size89904%_))
                         (##fx+ _%i89919%_ '1)
                         (let ((_%$e89934%_ _%deleted89921%_))
                           (if _%$e89934%_ _%$e89934%_ _%probe89917%_)))
                        (if (eq? _%key89893%_ _%k89924%_)
                            (let ()
                              (vector-set!
                               _%table89898%_
                               _%probe89917%_
                               _%key89893%_)
                              (vector-set!
                               _%table89898%_
                               (##fx+ _%probe89917%_ '1)
                               (_%symbolic-table-update!89894%_
                                (vector-ref
                                 _%table89898%_
                                 (##fx+ _%probe89917%_ '1)))))
                            (_%loop89914%_
                             (let ((_%next-probe89939%_
                                    (fx+ _%start89910%_
                                         _%i89919%_
                                         (fx* _%i89919%_ _%i89919%_))))
                               (##fxmodulo _%next-probe89939%_ _%size89904%_))
                             (##fx+ _%i89919%_ '1)
                             _%deleted89921%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89847%_ _%key89849%_)
        (let ((_%table89852%_ (&raw-table-table _%tab89847%_))
              (_%seed89854%_ (&raw-table-seed _%tab89847%_)))
          (let* ((_%h89857%_
                  (fxxor (symbolic-hash _%key89849%_) _%seed89854%_))
                 (_%size89860%_ (vector-length _%table89852%_))
                 (_%entries89863%_ (##fxquotient _%size89860%_ '2))
                 (_%start89866%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89857%_ _%entries89863%_)
                   '1)))
            (let _%loop89870%_ ((_%probe89873%_ _%start89866%_)
                                (_%i89875%_ '1))
              (let ((_%k89878%_ (vector-ref _%table89852%_ _%probe89873%_)))
                (if (eq? _%k89878%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k89878%_ (macro-deleted-obj))
                        (_%loop89870%_
                         (let ((_%next-probe89883%_
                                (fx+ _%start89866%_
                                     _%i89875%_
                                     (fx* _%i89875%_ _%i89875%_))))
                           (##fxmodulo _%next-probe89883%_ _%size89860%_))
                         (##fx+ _%i89875%_ '1))
                        (if (eq? _%key89849%_ _%k89878%_)
                            (let ()
                              (vector-set!
                               _%table89852%_
                               _%probe89873%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89852%_
                               (##fx+ _%probe89873%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89847%_
                                  (##fx- (&raw-table-count _%tab89847%_)
                                         '1)))))
                            (_%loop89870%_
                             (let ((_%next-probe89889%_
                                    (fx+ _%start89866%_
                                         _%i89875%_
                                         (fx* _%i89875%_ _%i89875%_))))
                               (##fxmodulo _%next-probe89889%_ _%size89860%_))
                             (##fx+ _%i89875%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89828%_ _%seed89830%_)
        (make-raw-table__%
         _%size-hint89828%_
         string-hash
         ##string=?
         _%seed89830%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89836%_ '#f) (_%seed89838%_ '0))
          (make-string-table__% _%size-hint89836%_ _%seed89838%_))))
    (define make-string-table__1
      (lambda (_%size-hint89840%_)
        (let ((_%seed89842%_ '0))
          (make-string-table__% _%size-hint89840%_ _%seed89842%_))))
    (define make-string-table
      (lambda _g90847_
        (let ((_g90846_ (##length _g90847_)))
          (cond ((##fx= _g90846_ 0) (apply make-string-table__0 _g90847_))
                ((##fx= _g90846_ 1) (apply make-string-table__1 _g90847_))
                ((##fx= _g90846_ 2) (apply make-string-table__% _g90847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90847_))))))
    (define string-table-ref
      (lambda (_%tab89781%_ _%key89782%_ _%default89783%_)
        (let ((_%table89785%_ (&raw-table-table _%tab89781%_))
              (_%seed89786%_ (&raw-table-seed _%tab89781%_)))
          (let* ((_%h89788%_
                  (fxxor (##string=?-hash _%key89782%_) _%seed89786%_))
                 (_%size89791%_ (vector-length _%table89785%_))
                 (_%entries89794%_ (##fxquotient _%size89791%_ '2))
                 (_%start89797%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89788%_ _%entries89794%_)
                   '1)))
            (let _%loop89801%_ ((_%probe89804%_ _%start89797%_)
                                (_%i89806%_ '1)
                                (_%deleted89808%_ '#f))
              (let ((_%k89811%_ (vector-ref _%table89785%_ _%probe89804%_)))
                (if (eq? _%k89811%_ (macro-unused-obj))
                    _%default89783%_
                    (if (eq? _%k89811%_ (macro-deleted-obj))
                        (_%loop89801%_
                         (let ((_%next-probe89816%_
                                (fx+ _%start89797%_
                                     _%i89806%_
                                     (fx* _%i89806%_ _%i89806%_))))
                           (##fxmodulo _%next-probe89816%_ _%size89791%_))
                         (##fx+ _%i89806%_ '1)
                         (let ((_%$e89819%_ _%deleted89808%_))
                           (if _%$e89819%_ _%$e89819%_ _%probe89804%_)))
                        (if (##string=? _%key89782%_ _%k89811%_)
                            (vector-ref
                             _%table89785%_
                             (##fx+ _%probe89804%_ '1))
                            (_%loop89801%_
                             (let ((_%next-probe89824%_
                                    (fx+ _%start89797%_
                                         _%i89806%_
                                         (fx* _%i89806%_ _%i89806%_))))
                               (##fxmodulo _%next-probe89824%_ _%size89791%_))
                             (##fx+ _%i89806%_ '1)
                             _%deleted89808%_))))))))))
    (define string-table-set!
      (lambda (_%tab89777%_ _%key89778%_ _%value89779%_)
        (if (##fx< (&raw-table-free _%tab89777%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89777%_))
                    '4))
            (__raw-table-rehash! _%tab89777%_)
            '#!void)
        (__string-table-set! _%tab89777%_ _%key89778%_ _%value89779%_)))
    (define __string-table-set!
      (lambda (_%tab89728%_ _%key89729%_ _%value89730%_)
        (let ((_%table89733%_ (&raw-table-table _%tab89728%_))
              (_%seed89734%_ (&raw-table-seed _%tab89728%_)))
          (let* ((_%h89736%_
                  (fxxor (##string=?-hash _%key89729%_) _%seed89734%_))
                 (_%size89739%_ (vector-length _%table89733%_))
                 (_%entries89742%_ (##fxquotient _%size89739%_ '2))
                 (_%start89745%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89736%_ _%entries89742%_)
                   '1)))
            (let _%loop89749%_ ((_%probe89752%_ _%start89745%_)
                                (_%i89754%_ '1)
                                (_%deleted89756%_ '#f))
              (let ((_%k89759%_ (vector-ref _%table89733%_ _%probe89752%_)))
                (if (eq? _%k89759%_ (macro-unused-obj))
                    (if _%deleted89756%_
                        (begin
                          (vector-set!
                           _%table89733%_
                           _%deleted89756%_
                           _%key89729%_)
                          (vector-set!
                           _%table89733%_
                           (##fx+ _%deleted89756%_ '1)
                           _%value89730%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89728%_
                              (##fx+ (&raw-table-count _%tab89728%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89733%_
                           _%probe89752%_
                           _%key89729%_)
                          (vector-set!
                           _%table89733%_
                           (##fx+ _%probe89752%_ '1)
                           _%value89730%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89728%_
                              (##fx- (&raw-table-free _%tab89728%_) '1))
                             (&raw-table-count-set!
                              _%tab89728%_
                              (##fx+ (&raw-table-count _%tab89728%_) '1))))))
                    (if (eq? _%k89759%_ (macro-deleted-obj))
                        (_%loop89749%_
                         (let ((_%next-probe89766%_
                                (fx+ _%start89745%_
                                     _%i89754%_
                                     (fx* _%i89754%_ _%i89754%_))))
                           (##fxmodulo _%next-probe89766%_ _%size89739%_))
                         (##fx+ _%i89754%_ '1)
                         (let ((_%$e89769%_ _%deleted89756%_))
                           (if _%$e89769%_ _%$e89769%_ _%probe89752%_)))
                        (if (##string=? _%key89729%_ _%k89759%_)
                            (let ()
                              (vector-set!
                               _%table89733%_
                               _%probe89752%_
                               _%key89729%_)
                              (vector-set!
                               _%table89733%_
                               (##fx+ _%probe89752%_ '1)
                               _%value89730%_))
                            (_%loop89749%_
                             (let ((_%next-probe89774%_
                                    (fx+ _%start89745%_
                                         _%i89754%_
                                         (fx* _%i89754%_ _%i89754%_))))
                               (##fxmodulo _%next-probe89774%_ _%size89739%_))
                             (##fx+ _%i89754%_ '1)
                             _%deleted89756%_))))))))))
    (define string-table-update!
      (lambda (_%tab89723%_
               _%key89724%_
               _%string-table-update!89725%_
               _%default89726%_)
        (if (##fx< (&raw-table-free _%tab89723%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89723%_))
                    '4))
            (__raw-table-rehash! _%tab89723%_)
            '#!void)
        (__string-table-update!
         _%tab89723%_
         _%key89724%_
         _%string-table-update!89725%_
         _%default89726%_)))
    (define __string-table-update!
      (lambda (_%tab89673%_
               _%key89674%_
               _%string-table-update!89675%_
               _%default89676%_)
        (let ((_%table89679%_ (&raw-table-table _%tab89673%_))
              (_%seed89680%_ (&raw-table-seed _%tab89673%_)))
          (let* ((_%h89682%_
                  (fxxor (##string=?-hash _%key89674%_) _%seed89680%_))
                 (_%size89685%_ (vector-length _%table89679%_))
                 (_%entries89688%_ (##fxquotient _%size89685%_ '2))
                 (_%start89691%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89682%_ _%entries89688%_)
                   '1)))
            (let _%loop89695%_ ((_%probe89698%_ _%start89691%_)
                                (_%i89700%_ '1)
                                (_%deleted89702%_ '#f))
              (let ((_%k89705%_ (vector-ref _%table89679%_ _%probe89698%_)))
                (if (eq? _%k89705%_ (macro-unused-obj))
                    (if _%deleted89702%_
                        (begin
                          (vector-set!
                           _%table89679%_
                           _%deleted89702%_
                           _%key89674%_)
                          (vector-set!
                           _%table89679%_
                           (##fx+ _%deleted89702%_ '1)
                           (_%string-table-update!89675%_ _%default89676%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89673%_
                              (##fx+ (&raw-table-count _%tab89673%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89679%_
                           _%probe89698%_
                           _%key89674%_)
                          (vector-set!
                           _%table89679%_
                           (##fx+ _%probe89698%_ '1)
                           (_%string-table-update!89675%_ _%default89676%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89673%_
                              (##fx- (&raw-table-free _%tab89673%_) '1))
                             (&raw-table-count-set!
                              _%tab89673%_
                              (##fx+ (&raw-table-count _%tab89673%_) '1))))))
                    (if (eq? _%k89705%_ (macro-deleted-obj))
                        (_%loop89695%_
                         (let ((_%next-probe89712%_
                                (fx+ _%start89691%_
                                     _%i89700%_
                                     (fx* _%i89700%_ _%i89700%_))))
                           (##fxmodulo _%next-probe89712%_ _%size89685%_))
                         (##fx+ _%i89700%_ '1)
                         (let ((_%$e89715%_ _%deleted89702%_))
                           (if _%$e89715%_ _%$e89715%_ _%probe89698%_)))
                        (if (##string=? _%key89674%_ _%k89705%_)
                            (let ()
                              (vector-set!
                               _%table89679%_
                               _%probe89698%_
                               _%key89674%_)
                              (vector-set!
                               _%table89679%_
                               (##fx+ _%probe89698%_ '1)
                               (_%string-table-update!89675%_
                                (vector-ref
                                 _%table89679%_
                                 (##fx+ _%probe89698%_ '1)))))
                            (_%loop89695%_
                             (let ((_%next-probe89720%_
                                    (fx+ _%start89691%_
                                         _%i89700%_
                                         (fx* _%i89700%_ _%i89700%_))))
                               (##fxmodulo _%next-probe89720%_ _%size89685%_))
                             (##fx+ _%i89700%_ '1)
                             _%deleted89702%_))))))))))
    (define string-table-delete!
      (lambda (_%tab89628%_ _%key89630%_)
        (let ((_%table89633%_ (&raw-table-table _%tab89628%_))
              (_%seed89635%_ (&raw-table-seed _%tab89628%_)))
          (let* ((_%h89638%_
                  (fxxor (##string=?-hash _%key89630%_) _%seed89635%_))
                 (_%size89641%_ (vector-length _%table89633%_))
                 (_%entries89644%_ (##fxquotient _%size89641%_ '2))
                 (_%start89647%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89638%_ _%entries89644%_)
                   '1)))
            (let _%loop89651%_ ((_%probe89654%_ _%start89647%_)
                                (_%i89656%_ '1))
              (let ((_%k89659%_ (vector-ref _%table89633%_ _%probe89654%_)))
                (if (eq? _%k89659%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k89659%_ (macro-deleted-obj))
                        (_%loop89651%_
                         (let ((_%next-probe89664%_
                                (fx+ _%start89647%_
                                     _%i89656%_
                                     (fx* _%i89656%_ _%i89656%_))))
                           (##fxmodulo _%next-probe89664%_ _%size89641%_))
                         (##fx+ _%i89656%_ '1))
                        (if (##string=? _%key89630%_ _%k89659%_)
                            (let ()
                              (vector-set!
                               _%table89633%_
                               _%probe89654%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89633%_
                               (##fx+ _%probe89654%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89628%_
                                  (##fx- (&raw-table-count _%tab89628%_)
                                         '1)))))
                            (_%loop89651%_
                             (let ((_%next-probe89670%_
                                    (fx+ _%start89647%_
                                         _%i89656%_
                                         (fx* _%i89656%_ _%i89656%_))))
                               (##fxmodulo _%next-probe89670%_ _%size89641%_))
                             (##fx+ _%i89656%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint89609%_ _%seed89611%_)
        (make-raw-table__%
         _%size-hint89609%_
         immediate-hash
         eq?
         _%seed89611%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint89617%_ '#f) (_%seed89619%_ '0))
          (make-immediate-table__% _%size-hint89617%_ _%seed89619%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint89621%_)
        (let ((_%seed89623%_ '0))
          (make-immediate-table__% _%size-hint89621%_ _%seed89623%_))))
    (define make-immediate-table
      (lambda _g90849_
        (let ((_g90848_ (##length _g90849_)))
          (cond ((##fx= _g90848_ 0) (apply make-immediate-table__0 _g90849_))
                ((##fx= _g90848_ 1) (apply make-immediate-table__1 _g90849_))
                ((##fx= _g90848_ 2) (apply make-immediate-table__% _g90849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90849_))))))
    (define immediate-table-ref
      (lambda (_%tab89562%_ _%key89563%_ _%default89564%_)
        (let ((_%table89566%_ (&raw-table-table _%tab89562%_))
              (_%seed89567%_ (&raw-table-seed _%tab89562%_)))
          (let* ((_%h89569%_
                  (fxxor (immediate-hash _%key89563%_) _%seed89567%_))
                 (_%size89572%_ (vector-length _%table89566%_))
                 (_%entries89575%_ (##fxquotient _%size89572%_ '2))
                 (_%start89578%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89569%_ _%entries89575%_)
                   '1)))
            (let _%loop89582%_ ((_%probe89585%_ _%start89578%_)
                                (_%i89587%_ '1)
                                (_%deleted89589%_ '#f))
              (let ((_%k89592%_ (vector-ref _%table89566%_ _%probe89585%_)))
                (if (eq? _%k89592%_ (macro-unused-obj))
                    _%default89564%_
                    (if (eq? _%k89592%_ (macro-deleted-obj))
                        (_%loop89582%_
                         (let ((_%next-probe89597%_
                                (fx+ _%start89578%_
                                     _%i89587%_
                                     (fx* _%i89587%_ _%i89587%_))))
                           (##fxmodulo _%next-probe89597%_ _%size89572%_))
                         (##fx+ _%i89587%_ '1)
                         (let ((_%$e89600%_ _%deleted89589%_))
                           (if _%$e89600%_ _%$e89600%_ _%probe89585%_)))
                        (if (eq? _%key89563%_ _%k89592%_)
                            (vector-ref
                             _%table89566%_
                             (##fx+ _%probe89585%_ '1))
                            (_%loop89582%_
                             (let ((_%next-probe89605%_
                                    (fx+ _%start89578%_
                                         _%i89587%_
                                         (fx* _%i89587%_ _%i89587%_))))
                               (##fxmodulo _%next-probe89605%_ _%size89572%_))
                             (##fx+ _%i89587%_ '1)
                             _%deleted89589%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab89558%_ _%key89559%_ _%value89560%_)
        (if (##fx< (&raw-table-free _%tab89558%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89558%_))
                    '4))
            (__raw-table-rehash! _%tab89558%_)
            '#!void)
        (__immediate-table-set! _%tab89558%_ _%key89559%_ _%value89560%_)))
    (define __immediate-table-set!
      (lambda (_%tab89509%_ _%key89510%_ _%value89511%_)
        (let ((_%table89514%_ (&raw-table-table _%tab89509%_))
              (_%seed89515%_ (&raw-table-seed _%tab89509%_)))
          (let* ((_%h89517%_
                  (fxxor (immediate-hash _%key89510%_) _%seed89515%_))
                 (_%size89520%_ (vector-length _%table89514%_))
                 (_%entries89523%_ (##fxquotient _%size89520%_ '2))
                 (_%start89526%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89517%_ _%entries89523%_)
                   '1)))
            (let _%loop89530%_ ((_%probe89533%_ _%start89526%_)
                                (_%i89535%_ '1)
                                (_%deleted89537%_ '#f))
              (let ((_%k89540%_ (vector-ref _%table89514%_ _%probe89533%_)))
                (if (eq? _%k89540%_ (macro-unused-obj))
                    (if _%deleted89537%_
                        (begin
                          (vector-set!
                           _%table89514%_
                           _%deleted89537%_
                           _%key89510%_)
                          (vector-set!
                           _%table89514%_
                           (##fx+ _%deleted89537%_ '1)
                           _%value89511%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89509%_
                              (##fx+ (&raw-table-count _%tab89509%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89514%_
                           _%probe89533%_
                           _%key89510%_)
                          (vector-set!
                           _%table89514%_
                           (##fx+ _%probe89533%_ '1)
                           _%value89511%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89509%_
                              (##fx- (&raw-table-free _%tab89509%_) '1))
                             (&raw-table-count-set!
                              _%tab89509%_
                              (##fx+ (&raw-table-count _%tab89509%_) '1))))))
                    (if (eq? _%k89540%_ (macro-deleted-obj))
                        (_%loop89530%_
                         (let ((_%next-probe89547%_
                                (fx+ _%start89526%_
                                     _%i89535%_
                                     (fx* _%i89535%_ _%i89535%_))))
                           (##fxmodulo _%next-probe89547%_ _%size89520%_))
                         (##fx+ _%i89535%_ '1)
                         (let ((_%$e89550%_ _%deleted89537%_))
                           (if _%$e89550%_ _%$e89550%_ _%probe89533%_)))
                        (if (eq? _%key89510%_ _%k89540%_)
                            (let ()
                              (vector-set!
                               _%table89514%_
                               _%probe89533%_
                               _%key89510%_)
                              (vector-set!
                               _%table89514%_
                               (##fx+ _%probe89533%_ '1)
                               _%value89511%_))
                            (_%loop89530%_
                             (let ((_%next-probe89555%_
                                    (fx+ _%start89526%_
                                         _%i89535%_
                                         (fx* _%i89535%_ _%i89535%_))))
                               (##fxmodulo _%next-probe89555%_ _%size89520%_))
                             (##fx+ _%i89535%_ '1)
                             _%deleted89537%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab89504%_
               _%key89505%_
               _%immediate-table-update!89506%_
               _%default89507%_)
        (if (##fx< (&raw-table-free _%tab89504%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89504%_))
                    '4))
            (__raw-table-rehash! _%tab89504%_)
            '#!void)
        (__immediate-table-update!
         _%tab89504%_
         _%key89505%_
         _%immediate-table-update!89506%_
         _%default89507%_)))
    (define __immediate-table-update!
      (lambda (_%tab89454%_
               _%key89455%_
               _%immediate-table-update!89456%_
               _%default89457%_)
        (let ((_%table89460%_ (&raw-table-table _%tab89454%_))
              (_%seed89461%_ (&raw-table-seed _%tab89454%_)))
          (let* ((_%h89463%_
                  (fxxor (immediate-hash _%key89455%_) _%seed89461%_))
                 (_%size89466%_ (vector-length _%table89460%_))
                 (_%entries89469%_ (##fxquotient _%size89466%_ '2))
                 (_%start89472%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89463%_ _%entries89469%_)
                   '1)))
            (let _%loop89476%_ ((_%probe89479%_ _%start89472%_)
                                (_%i89481%_ '1)
                                (_%deleted89483%_ '#f))
              (let ((_%k89486%_ (vector-ref _%table89460%_ _%probe89479%_)))
                (if (eq? _%k89486%_ (macro-unused-obj))
                    (if _%deleted89483%_
                        (begin
                          (vector-set!
                           _%table89460%_
                           _%deleted89483%_
                           _%key89455%_)
                          (vector-set!
                           _%table89460%_
                           (##fx+ _%deleted89483%_ '1)
                           (_%immediate-table-update!89456%_ _%default89457%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89454%_
                              (##fx+ (&raw-table-count _%tab89454%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89460%_
                           _%probe89479%_
                           _%key89455%_)
                          (vector-set!
                           _%table89460%_
                           (##fx+ _%probe89479%_ '1)
                           (_%immediate-table-update!89456%_ _%default89457%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89454%_
                              (##fx- (&raw-table-free _%tab89454%_) '1))
                             (&raw-table-count-set!
                              _%tab89454%_
                              (##fx+ (&raw-table-count _%tab89454%_) '1))))))
                    (if (eq? _%k89486%_ (macro-deleted-obj))
                        (_%loop89476%_
                         (let ((_%next-probe89493%_
                                (fx+ _%start89472%_
                                     _%i89481%_
                                     (fx* _%i89481%_ _%i89481%_))))
                           (##fxmodulo _%next-probe89493%_ _%size89466%_))
                         (##fx+ _%i89481%_ '1)
                         (let ((_%$e89496%_ _%deleted89483%_))
                           (if _%$e89496%_ _%$e89496%_ _%probe89479%_)))
                        (if (eq? _%key89455%_ _%k89486%_)
                            (let ()
                              (vector-set!
                               _%table89460%_
                               _%probe89479%_
                               _%key89455%_)
                              (vector-set!
                               _%table89460%_
                               (##fx+ _%probe89479%_ '1)
                               (_%immediate-table-update!89456%_
                                (vector-ref
                                 _%table89460%_
                                 (##fx+ _%probe89479%_ '1)))))
                            (_%loop89476%_
                             (let ((_%next-probe89501%_
                                    (fx+ _%start89472%_
                                         _%i89481%_
                                         (fx* _%i89481%_ _%i89481%_))))
                               (##fxmodulo _%next-probe89501%_ _%size89466%_))
                             (##fx+ _%i89481%_ '1)
                             _%deleted89483%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab89409%_ _%key89411%_)
        (let ((_%table89414%_ (&raw-table-table _%tab89409%_))
              (_%seed89416%_ (&raw-table-seed _%tab89409%_)))
          (let* ((_%h89419%_
                  (fxxor (immediate-hash _%key89411%_) _%seed89416%_))
                 (_%size89422%_ (vector-length _%table89414%_))
                 (_%entries89425%_ (##fxquotient _%size89422%_ '2))
                 (_%start89428%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89419%_ _%entries89425%_)
                   '1)))
            (let _%loop89432%_ ((_%probe89435%_ _%start89428%_)
                                (_%i89437%_ '1))
              (let ((_%k89440%_ (vector-ref _%table89414%_ _%probe89435%_)))
                (if (eq? _%k89440%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k89440%_ (macro-deleted-obj))
                        (_%loop89432%_
                         (let ((_%next-probe89445%_
                                (fx+ _%start89428%_
                                     _%i89437%_
                                     (fx* _%i89437%_ _%i89437%_))))
                           (##fxmodulo _%next-probe89445%_ _%size89422%_))
                         (##fx+ _%i89437%_ '1))
                        (if (eq? _%key89411%_ _%k89440%_)
                            (let ()
                              (vector-set!
                               _%table89414%_
                               _%probe89435%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89414%_
                               (##fx+ _%probe89435%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89409%_
                                  (##fx- (&raw-table-count _%tab89409%_)
                                         '1)))))
                            (_%loop89432%_
                             (let ((_%next-probe89451%_
                                    (fx+ _%start89428%_
                                         _%i89437%_
                                         (fx* _%i89437%_ _%i89437%_))))
                               (##fxmodulo _%next-probe89451%_ _%size89422%_))
                             (##fx+ _%i89437%_ '1)))))))))))
    (define __gc-table::t.id 'gerbil#__gc-table::t)
    (define __gc-table::t
      (##structure
       ##type-type
       __gc-table::t.id
       'gc-table
       '26
       '#f
       '#(gcht 5 #f immediate 5 #f)))
    (define __gc-table-loads '#f64(.45 .6363961030678927 .9))
    (define &gc-table-gcht
      (lambda (_%tab89407%_)
        (##unchecked-structure-ref
         _%tab89407%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab89405%_)
        (##unchecked-structure-ref
         _%tab89405%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab89402%_ _%val89403%_)
        (##unchecked-structure-set!
         _%tab89402%_
         _%val89403%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab89399%_ _%val89400%_)
        (##unchecked-structure-set!
         _%tab89399%_
         _%val89400%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint89375%_ _%klass89376%_ _%flags89377%_)
        (let ((_%gcht89379%_
               (__gc-table-new
                (if (fixnum? _%size-hint89375%_) _%size-hint89375%_ '16)
                _%flags89377%_)))
          (##structure _%klass89376%_ _%gcht89379%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint89384%_)
        (let* ((_%klass89386%_ __gc-table::t) (_%flags89388%_ '0))
          (make-gc-table__%
           _%size-hint89384%_
           _%klass89386%_
           _%flags89388%_))))
    (define make-gc-table__1
      (lambda (_%size-hint89390%_ _%klass89391%_)
        (let ((_%flags89393%_ '0))
          (make-gc-table__%
           _%size-hint89390%_
           _%klass89391%_
           _%flags89393%_))))
    (define make-gc-table
      (lambda _g90851_
        (let ((_g90850_ (##length _g90851_)))
          (cond ((##fx= _g90850_ 1) (apply make-gc-table__0 _g90851_))
                ((##fx= _g90850_ 2) (apply make-gc-table__1 _g90851_))
                ((##fx= _g90850_ 3) (apply make-gc-table__% _g90851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90851_))))))
    (define __gc-table-immediate
      (lambda (_%tab89366%_)
        (let ((_%$e89368%_ (&gc-table-immediate _%tab89366%_)))
          (if _%$e89368%_
              _%$e89368%_
              (let ((_%immediate89372%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab89366%_ _%immediate89372%_)
                _%immediate89372%_)))))
    (define __gc-table-new
      (lambda (_%size89356%_ _%flags89357%_)
        (let* ((_%flags89359%_
                (##fxand _%flags89357%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags89361%_
                (fxior _%flags89359%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht89363%_
                (##gc-hash-table-allocate
                 _%size89356%_
                 _%flags89361%_
                 __gc-table-loads)))
          _%gcht89363%_)))
    (define __gc-table-e
      (lambda (_%tab89351%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht89354%_ (&gc-table-gcht _%tab89351%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht89354%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht89354%_
              (begin
                (__gc-table-rehash! _%tab89351%_)
                (&gc-table-gcht _%tab89351%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab89342%_)
        (let* ((_%old-table89344%_ (&gc-table-gcht _%tab89342%_))
               (_%new-table89346%_
                (##gc-hash-table-resize! _%old-table89344%_ __gc-table-loads))
               (_%gcht89348%_
                (##gc-hash-table-rehash!
                 _%old-table89344%_
                 _%new-table89346%_)))
          (&gc-table-gcht-set! _%tab89342%_ _%gcht89348%_))))
    (define gc-table-ref
      (lambda (_%tab89326%_ _%key89327%_ _%default89328%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89327%_)
            (let* ((_%gcht89332%_ (__gc-table-e _%tab89326%_))
                   (_%value89334%_
                    (##gc-hash-table-ref _%gcht89332%_ _%key89327%_)))
              (if (eq? _%value89334%_ (macro-unused-obj))
                  _%default89328%_
                  _%value89334%_))
            (let ((_%$e89336%_ (&gc-table-immediate _%tab89326%_)))
              (if _%$e89336%_
                  ((lambda (_%immediate89339%_)
                     (immediate-table-ref
                      _%immediate89339%_
                      _%key89327%_
                      _%default89328%_))
                   _%$e89336%_)
                  _%default89328%_)))))
    (define gc-table-set!
      (lambda (_%tab89319%_ _%key89320%_ _%value89321%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89320%_)
            (let ((_%gcht89324%_ (__gc-table-e _%tab89319%_)))
              (if (##gc-hash-table-set!
                   _%gcht89324%_
                   _%key89320%_
                   _%value89321%_)
                  (begin
                    (__gc-table-rehash! _%tab89319%_)
                    (gc-table-set! _%tab89319%_ _%key89320%_ _%value89321%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab89319%_)
             _%key89320%_
             _%value89321%_))))
    (define gc-table-update!
      (lambda (_%tab89312%_ _%key89313%_ _%update89314%_ _%default89315%_)
        (if (##mem-allocated? _%key89313%_)
            (let ((_%value89317%_
                   (gc-table-ref _%tab89312%_ _%key89313%_ _%default89315%_)))
              (gc-table-set!
               _%tab89312%_
               _%key89313%_
               (_%update89314%_ _%value89317%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab89312%_)
             _%key89313%_
             _%update89314%_
             _%default89315%_))))
    (define gc-table-delete!
      (lambda (_%tab89300%_ _%key89301%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89301%_)
            (let ((_%gcht89305%_ (__gc-table-e _%tab89300%_)))
              (if (##gc-hash-table-set!
                   _%gcht89305%_
                   _%key89301%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab89300%_)
                    (gc-table-delete! _%tab89300%_ _%key89301%_))
                  '#!void))
            (let ((_%$e89307%_ (&gc-table-immediate _%tab89300%_)))
              (if _%$e89307%_
                  ((lambda (_%immediate89310%_)
                     (immediate-table-delete! _%immediate89310%_ _%key89301%_))
                   _%$e89307%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab89281%_ _%proc89282%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht89285%_ (__gc-table-e _%tab89281%_)))
            (let _%loop89287%_ ((_%i89289%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i89289%_ (##vector-length _%gcht89285%_))
                  (let ((_%key89291%_ (##vector-ref _%gcht89285%_ _%i89289%_)))
                    (if (and (not (eq? _%key89291%_ (macro-unused-obj)))
                             (not (eq? _%key89291%_ (macro-deleted-obj))))
                        (_%proc89282%_
                         _%key89291%_
                         (##vector-ref _%gcht89285%_ (##fx+ _%i89289%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop89287%_ (##fx+ _%i89289%_ '2))))
                  '#!void)))
          (let ((_%$e89295%_ (&gc-table-immediate _%tab89281%_)))
            (if _%$e89295%_
                ((lambda (_%immediate89298%_)
                   (raw-table-for-each _%immediate89298%_ _%proc89282%_))
                 _%$e89295%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab89269%_)
        (let* ((_%gcht89271%_ (__gc-table-e _%tab89269%_))
               (_%new-table89273%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht89271%_)
                 (macro-gc-hash-table-flags _%gcht89271%_)))
               (_%result89275%_
                (##structure
                 (##structure-type _%tab89269%_)
                 _%new-table89273%_
                 '#f)))
          (gc-table-for-each
           _%tab89269%_
           (lambda (_%k89278%_ _%v89279%_)
             (gc-table-set! _%result89275%_ _%k89278%_ _%v89279%_)))
          _%result89275%_)))
    (define gc-table-clear!
      (lambda (_%tab89262%_)
        (let* ((_%gcht89264%_ (__gc-table-e _%tab89262%_))
               (_%new-table89266%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht89264%_))))
          (&gc-table-gcht-set! _%tab89262%_ _%new-table89266%_)
          (&gc-table-immediate-set! _%tab89262%_ '#f))))
    (define gc-table-length
      (lambda (_%tab89254%_)
        (let ((_%gcht89256%_ (__gc-table-e _%tab89254%_)))
          (fx+ (macro-gc-hash-table-count _%gcht89256%_)
               (let ((_%$e89258%_ (&gc-table-immediate _%tab89254%_)))
                 (if _%$e89258%_ (&raw-table-count _%$e89258%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj89239%_)
        (declare (not interrupts-enabled))
        (let ((_%val89242%_ (gc-table-ref __object-eq-hash _%obj89239%_ '#f)))
          (if _%val89242%_
              _%val89242%_
              (let* ((_%mix89244%_ __object-eq-hash-next)
                     (_%ptr89246%_ (##type-cast _%obj89239%_ '0))
                     (_%h89248%_
                      (fxand (fxxor _%mix89244%_ _%ptr89246%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e89251%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e89251%_ _%$e89251%_ '0)))
                (gc-table-set! __object-eq-hash _%obj89239%_ _%h89248%_)
                _%h89248%_)))))))
