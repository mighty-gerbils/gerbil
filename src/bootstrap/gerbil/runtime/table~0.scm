(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712262512)
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
      (lambda (_%tab90741%_)
        (##unchecked-structure-ref
         _%tab90741%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90739%_)
        (##unchecked-structure-ref
         _%tab90739%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90737%_)
        (##unchecked-structure-ref
         _%tab90737%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90735%_)
        (##unchecked-structure-ref
         _%tab90735%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90733%_)
        (##unchecked-structure-ref
         _%tab90733%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90731%_)
        (##unchecked-structure-ref
         _%tab90731%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90728%_ _%val90729%_)
        (##unchecked-structure-set!
         _%tab90728%_
         _%val90729%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90725%_ _%val90726%_)
        (##unchecked-structure-set!
         _%tab90725%_
         _%val90726%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90722%_ _%val90723%_)
        (##unchecked-structure-set!
         _%tab90722%_
         _%val90723%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90719%_ _%val90720%_)
        (##unchecked-structure-set!
         _%tab90719%_
         _%val90720%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90716%_ _%val90717%_)
        (##unchecked-structure-set!
         _%tab90716%_
         _%val90717%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90713%_ _%val90714%_)
        (##unchecked-structure-set!
         _%tab90713%_
         _%val90714%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90711%_)
        (if (and (fixnum? _%size-hint90711%_) (##fx> _%size-hint90711%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90711%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint90687%_ _%hash90688%_ _%test90689%_ _%seed90690%_)
        (let* ((_%size90692%_ (raw-table-size-hint->size _%size-hint90687%_))
               (_%table90694%_
                (##make-vector _%size90692%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table90694%_
           '0
           (##fxquotient _%size90692%_ '2)
           _%hash90688%_
           _%test90689%_
           _%seed90690%_))))
    (define make-raw-table__0
      (lambda (_%size-hint90700%_ _%hash90701%_ _%test90702%_)
        (let ((_%seed90704%_ '0))
          (make-raw-table__%
           _%size-hint90700%_
           _%hash90701%_
           _%test90702%_
           _%seed90704%_))))
    (define make-raw-table
      (lambda _g90743_
        (let ((_g90742_ (##length _g90743_)))
          (cond ((##fx= _g90742_ 3)
                 (apply (lambda (_%size-hint90700%_
                                 _%hash90701%_
                                 _%test90702%_)
                          (make-raw-table__0
                           _%size-hint90700%_
                           _%hash90701%_
                           _%test90702%_))
                        _g90743_))
                ((##fx= _g90742_ 4)
                 (apply (lambda (_%size-hint90706%_
                                 _%hash90707%_
                                 _%test90708%_
                                 _%seed90709%_)
                          (make-raw-table__%
                           _%size-hint90706%_
                           _%hash90707%_
                           _%test90708%_
                           _%seed90709%_))
                        _g90743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90743_))))))
    (define raw-table-ref
      (lambda (_%tab90638%_ _%key90639%_ _%default90640%_)
        (let ((_%table90642%_ (&raw-table-table _%tab90638%_))
              (_%seed90643%_ (&raw-table-seed _%tab90638%_))
              (_%hash90644%_ (&raw-table-hash _%tab90638%_))
              (_%test90645%_ (&raw-table-test _%tab90638%_)))
          (let* ((_%h90647%_
                  (fxxor (_%hash90644%_ _%key90639%_) _%seed90643%_))
                 (_%size90650%_ (vector-length _%table90642%_))
                 (_%entries90653%_ (##fxquotient _%size90650%_ '2))
                 (_%start90656%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90647%_ _%entries90653%_)
                   '1)))
            (let _%loop90660%_ ((_%probe90663%_ _%start90656%_)
                                (_%i90665%_ '1)
                                (_%deleted90667%_ '#f))
              (let ((_%k90670%_ (vector-ref _%table90642%_ _%probe90663%_)))
                (if (eq? _%k90670%_ (macro-unused-obj))
                    (let () _%default90640%_)
                    (if (eq? _%k90670%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90660%_
                           (let ((_%next-probe90675%_
                                  (fx+ _%start90656%_
                                       _%i90665%_
                                       (fx* _%i90665%_ _%i90665%_))))
                             (##fxmodulo _%next-probe90675%_ _%size90650%_))
                           (##fx+ _%i90665%_ '1)
                           (let ((_%$e90678%_ _%deleted90667%_))
                             (if _%$e90678%_ _%$e90678%_ _%probe90663%_))))
                        (if (_%test90645%_ _%key90639%_ _%k90670%_)
                            (let ()
                              (vector-ref
                               _%table90642%_
                               (##fx+ _%probe90663%_ '1)))
                            (let ()
                              (_%loop90660%_
                               (let ((_%next-probe90683%_
                                      (fx+ _%start90656%_
                                           _%i90665%_
                                           (fx* _%i90665%_ _%i90665%_))))
                                 (##fxmodulo
                                  _%next-probe90683%_
                                  _%size90650%_))
                               (##fx+ _%i90665%_ '1)
                               _%deleted90667%_)))))))))))
    (define raw-table-set!
      (lambda (_%tab90634%_ _%key90635%_ _%value90636%_)
        (if (##fx< (&raw-table-free _%tab90634%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90634%_))
                    '4))
            (__raw-table-rehash! _%tab90634%_)
            '#!void)
        (__raw-table-set! _%tab90634%_ _%key90635%_ _%value90636%_)))
    (define raw-table-update!
      (lambda (_%tab90629%_ _%key90630%_ _%update90631%_ _%default90632%_)
        (if (##fx< (&raw-table-free _%tab90629%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90629%_))
                    '4))
            (__raw-table-rehash! _%tab90629%_)
            '#!void)
        (__raw-table-update!
         _%tab90629%_
         _%key90630%_
         _%update90631%_
         _%default90632%_)))
    (define raw-table-delete!
      (lambda (_%tab90586%_ _%key90587%_)
        (let ((_%table90589%_ (&raw-table-table _%tab90586%_))
              (_%seed90590%_ (&raw-table-seed _%tab90586%_))
              (_%hash90591%_ (&raw-table-hash _%tab90586%_))
              (_%test90592%_ (&raw-table-test _%tab90586%_)))
          (let* ((_%h90594%_
                  (fxxor (_%hash90591%_ _%key90587%_) _%seed90590%_))
                 (_%size90597%_ (vector-length _%table90589%_))
                 (_%entries90600%_ (##fxquotient _%size90597%_ '2))
                 (_%start90603%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90594%_ _%entries90600%_)
                   '1)))
            (let _%loop90607%_ ((_%probe90610%_ _%start90603%_)
                                (_%i90612%_ '1))
              (let ((_%k90615%_ (vector-ref _%table90589%_ _%probe90610%_)))
                (if (eq? _%k90615%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90615%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90607%_
                           (let ((_%next-probe90620%_
                                  (fx+ _%start90603%_
                                       _%i90612%_
                                       (fx* _%i90612%_ _%i90612%_))))
                             (##fxmodulo _%next-probe90620%_ _%size90597%_))
                           (##fx+ _%i90612%_ '1)))
                        (if (_%test90592%_ _%key90587%_ _%k90615%_)
                            (let ()
                              (vector-set!
                               _%table90589%_
                               _%probe90610%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90589%_
                               (##fx+ _%probe90610%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90586%_
                                  (##fx- (&raw-table-count _%tab90586%_)
                                         '1)))))
                            (let ()
                              (_%loop90607%_
                               (let ((_%next-probe90626%_
                                      (fx+ _%start90603%_
                                           _%i90612%_
                                           (fx* _%i90612%_ _%i90612%_))))
                                 (##fxmodulo
                                  _%next-probe90626%_
                                  _%size90597%_))
                               (##fx+ _%i90612%_ '1))))))))))))
    (define raw-table-for-each
      (lambda (_%tab90570%_ _%proc90571%_)
        (let* ((_%table90573%_ (&raw-table-table _%tab90570%_))
               (_%size90575%_ (vector-length _%table90573%_)))
          (let _%loop90578%_ ((_%i90580%_ '0))
            (if (##fx< _%i90580%_ _%size90575%_)
                (begin
                  (let ((_%key90582%_ (vector-ref _%table90573%_ _%i90580%_)))
                    (if (and (not (eq? _%key90582%_ (macro-unused-obj)))
                             (not (eq? _%key90582%_ (macro-deleted-obj))))
                        (let ((_%value90584%_
                               (vector-ref
                                _%table90573%_
                                (##fx+ _%i90580%_ '1))))
                          (_%proc90571%_ _%key90582%_ _%value90584%_))
                        '#!void))
                  (_%loop90578%_ (##fx+ _%i90580%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab90566%_)
        (let ((_%new-tab90568%_ (##structure-copy _%tab90566%_)))
          (&raw-table-table-set!
           _%new-tab90568%_
           (vector-copy (&raw-table-table _%tab90566%_)))
          _%new-tab90568%_)))
    (define raw-table-clear!
      (lambda (_%tab90564%_)
        (vector-fill! (&raw-table-table _%tab90564%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab90564%_ '0)
        (&raw-table-free-set!
         _%tab90564%_
         (##fxquotient (vector-length (&raw-table-table _%tab90564%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab90514%_ _%key90515%_ _%value90516%_)
        (let ((_%table90518%_ (&raw-table-table _%tab90514%_))
              (_%seed90519%_ (&raw-table-seed _%tab90514%_))
              (_%hash90520%_ (&raw-table-hash _%tab90514%_))
              (_%test90521%_ (&raw-table-test _%tab90514%_)))
          (let* ((_%h90523%_
                  (fxxor (_%hash90520%_ _%key90515%_) _%seed90519%_))
                 (_%size90526%_ (vector-length _%table90518%_))
                 (_%entries90529%_ (##fxquotient _%size90526%_ '2))
                 (_%start90532%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90523%_ _%entries90529%_)
                   '1)))
            (let _%loop90536%_ ((_%probe90539%_ _%start90532%_)
                                (_%i90541%_ '1)
                                (_%deleted90543%_ '#f))
              (let ((_%k90546%_ (vector-ref _%table90518%_ _%probe90539%_)))
                (if (eq? _%k90546%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90543%_
                          (begin
                            (vector-set!
                             _%table90518%_
                             _%deleted90543%_
                             _%key90515%_)
                            (vector-set!
                             _%table90518%_
                             (##fx+ _%deleted90543%_ '1)
                             _%value90516%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90514%_
                                (##fx+ (&raw-table-count _%tab90514%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90518%_
                             _%probe90539%_
                             _%key90515%_)
                            (vector-set!
                             _%table90518%_
                             (##fx+ _%probe90539%_ '1)
                             _%value90516%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90514%_
                                (##fx- (&raw-table-free _%tab90514%_) '1))
                               (&raw-table-count-set!
                                _%tab90514%_
                                (##fx+ (&raw-table-count _%tab90514%_)
                                       '1)))))))
                    (if (eq? _%k90546%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90536%_
                           (let ((_%next-probe90553%_
                                  (fx+ _%start90532%_
                                       _%i90541%_
                                       (fx* _%i90541%_ _%i90541%_))))
                             (##fxmodulo _%next-probe90553%_ _%size90526%_))
                           (##fx+ _%i90541%_ '1)
                           (let ((_%$e90556%_ _%deleted90543%_))
                             (if _%$e90556%_ _%$e90556%_ _%probe90539%_))))
                        (if (_%test90521%_ _%key90515%_ _%k90546%_)
                            (let ()
                              (vector-set!
                               _%table90518%_
                               _%probe90539%_
                               _%key90515%_)
                              (vector-set!
                               _%table90518%_
                               (##fx+ _%probe90539%_ '1)
                               _%value90516%_))
                            (let ()
                              (_%loop90536%_
                               (let ((_%next-probe90561%_
                                      (fx+ _%start90532%_
                                           _%i90541%_
                                           (fx* _%i90541%_ _%i90541%_))))
                                 (##fxmodulo
                                  _%next-probe90561%_
                                  _%size90526%_))
                               (##fx+ _%i90541%_ '1)
                               _%deleted90543%_)))))))))))
    (define __raw-table-update!
      (lambda (_%tab90463%_ _%key90464%_ _%update90465%_ _%default90466%_)
        (let ((_%table90468%_ (&raw-table-table _%tab90463%_))
              (_%seed90469%_ (&raw-table-seed _%tab90463%_))
              (_%hash90470%_ (&raw-table-hash _%tab90463%_))
              (_%test90471%_ (&raw-table-test _%tab90463%_)))
          (let* ((_%h90473%_
                  (fxxor (_%hash90470%_ _%key90464%_) _%seed90469%_))
                 (_%size90476%_ (vector-length _%table90468%_))
                 (_%entries90479%_ (##fxquotient _%size90476%_ '2))
                 (_%start90482%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90473%_ _%entries90479%_)
                   '1)))
            (let _%loop90486%_ ((_%probe90489%_ _%start90482%_)
                                (_%i90491%_ '1)
                                (_%deleted90493%_ '#f))
              (let ((_%k90496%_ (vector-ref _%table90468%_ _%probe90489%_)))
                (if (eq? _%k90496%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90493%_
                          (begin
                            (vector-set!
                             _%table90468%_
                             _%deleted90493%_
                             _%key90464%_)
                            (vector-set!
                             _%table90468%_
                             (##fx+ _%deleted90493%_ '1)
                             (_%update90465%_ _%default90466%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90463%_
                                (##fx+ (&raw-table-count _%tab90463%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90468%_
                             _%probe90489%_
                             _%key90464%_)
                            (vector-set!
                             _%table90468%_
                             (##fx+ _%probe90489%_ '1)
                             (_%update90465%_ _%default90466%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90463%_
                                (##fx- (&raw-table-free _%tab90463%_) '1))
                               (&raw-table-count-set!
                                _%tab90463%_
                                (##fx+ (&raw-table-count _%tab90463%_)
                                       '1)))))))
                    (if (eq? _%k90496%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90486%_
                           (let ((_%next-probe90503%_
                                  (fx+ _%start90482%_
                                       _%i90491%_
                                       (fx* _%i90491%_ _%i90491%_))))
                             (##fxmodulo _%next-probe90503%_ _%size90476%_))
                           (##fx+ _%i90491%_ '1)
                           (let ((_%$e90506%_ _%deleted90493%_))
                             (if _%$e90506%_ _%$e90506%_ _%probe90489%_))))
                        (if (_%test90471%_ _%key90464%_ _%k90496%_)
                            (let ()
                              (vector-set!
                               _%table90468%_
                               _%probe90489%_
                               _%key90464%_)
                              (vector-set!
                               _%table90468%_
                               (##fx+ _%probe90489%_ '1)
                               (_%update90465%_
                                (vector-ref
                                 _%table90468%_
                                 (##fx+ _%probe90489%_ '1)))))
                            (let ()
                              (_%loop90486%_
                               (let ((_%next-probe90511%_
                                      (fx+ _%start90482%_
                                           _%i90491%_
                                           (fx* _%i90491%_ _%i90491%_))))
                                 (##fxmodulo
                                  _%next-probe90511%_
                                  _%size90476%_))
                               (##fx+ _%i90491%_ '1)
                               _%deleted90493%_)))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab90444%_)
        (let* ((_%old-table90446%_ (&raw-table-table _%tab90444%_))
               (_%old-size90448%_ (vector-length _%old-table90446%_))
               (_%new-size90450%_
                (if (##fx< (&raw-table-count _%tab90444%_)
                           (##fxquotient _%old-size90448%_ '4))
                    (vector-length _%old-table90446%_)
                    (##fx* '2 (vector-length _%old-table90446%_))))
               (_%new-table90452%_
                (##make-vector _%new-size90450%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab90444%_ _%new-table90452%_)
          (&raw-table-count-set! _%tab90444%_ '0)
          (&raw-table-free-set!
           _%tab90444%_
           (##fxquotient _%new-size90450%_ '2))
          (let _%lp90455%_ ((_%i90457%_ '0))
            (if (##fx< _%i90457%_ _%old-size90448%_)
                (begin
                  (let ((_%key90459%_
                         (vector-ref _%old-table90446%_ _%i90457%_)))
                    (if (and (not (eq? _%key90459%_ (macro-unused-obj)))
                             (not (eq? _%key90459%_ (macro-deleted-obj))))
                        (let ((_%value90461%_
                               (vector-ref
                                _%old-table90446%_
                                (##fx+ _%i90457%_ '1))))
                          (__raw-table-set!
                           _%tab90444%_
                           _%key90459%_
                           _%value90461%_))
                        '#!void))
                  (_%lp90455%_ (##fx+ _%i90457%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj90436%_)
        (let ((_%t90438%_ (##type _%obj90436%_)))
          (if (##fx= (##fxand _%t90438%_ '1) '0)
              (let ()
                (fxand (##type-cast _%obj90436%_ (macro-type-fixnum))
                       (macro-max-fixnum32)))
              (if (symbolic? _%obj90436%_)
                  (let () (symbolic-hash _%obj90436%_))
                  (if (procedure? _%obj90436%_)
                      (let () (procedure-hash _%obj90436%_))
                      (let ()
                        (fxand (__eq-hash _%obj90436%_)
                               (macro-max-fixnum32)))))))))
    (define procedure-hash
      (lambda (_%obj90432%_)
        (let ((_%h90434%_
               (if (##closure? _%obj90432%_)
                   (__eq-hash _%obj90432%_)
                   (##type-cast _%obj90432%_ '0))))
          (fxand _%h90434%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj90429%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj90429%_)))
    (define eqv-hash
      (lambda (_%obj90419%_)
        (letrec ((_%combine90421%_
                  (lambda (_%a90426%_ _%b90427%_)
                    (fxand (##fx* (##fx+ _%a90426%_
                                         (fxarithmetic-shift-left
                                          _%b90427%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash90422%_
                  (lambda (_%obj90424%_)
                    (macro-number-dispatch
                     _%obj90424%_
                     (eq-hash _%obj90424%_)
                     (fxand _%obj90424%_ (macro-max-fixnum32))
                     (modulo _%obj90424%_ '331804481)
                     (_%combine90421%_
                      (_%hash90422%_ (macro-ratnum-numerator _%obj90424%_))
                      (_%hash90422%_ (macro-ratnum-denominator _%obj90424%_)))
                     (_%combine90421%_
                      (##u16vector-ref _%obj90424%_ '0)
                      (_%combine90421%_
                       (##u16vector-ref _%obj90424%_ '1)
                       (_%combine90421%_
                        (##u16vector-ref _%obj90424%_ '2)
                        (##u16vector-ref _%obj90424%_ '3))))
                     (_%combine90421%_
                      (_%hash90422%_ (macro-cpxnum-real _%obj90424%_))
                      (_%hash90422%_ (macro-cpxnum-imag _%obj90424%_)))))))
          (_%hash90422%_ _%obj90419%_))))
    (define symbolic?
      (lambda (_%obj90414%_)
        (let ((_%$e90416%_ (symbol? _%obj90414%_)))
          (if _%$e90416%_ _%$e90416%_ (keyword? _%obj90414%_)))))
    (define symbolic-hash (lambda (_%obj90412%_) (macro-slot '1 _%obj90412%_)))
    (define string-hash (lambda (_%obj90410%_) (##string=?-hash _%obj90410%_)))
    (define immediate-hash
      (lambda (_%obj90408%_) (##type-cast _%obj90408%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint90389%_ _%seed90391%_)
        (make-raw-table__% _%size-hint90389%_ eq-hash eq? _%seed90391%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint90397%_ '#f) (_%seed90399%_ '0))
          (make-eq-table__% _%size-hint90397%_ _%seed90399%_))))
    (define make-eq-table__1
      (lambda (_%size-hint90401%_)
        (let ((_%seed90403%_ '0))
          (make-eq-table__% _%size-hint90401%_ _%seed90403%_))))
    (define make-eq-table
      (lambda _g90745_
        (let ((_g90744_ (##length _g90745_)))
          (cond ((##fx= _g90744_ 0)
                 (apply (lambda () (make-eq-table__0)) _g90745_))
                ((##fx= _g90744_ 1)
                 (apply (lambda (_%size-hint90401%_)
                          (make-eq-table__1 _%size-hint90401%_))
                        _g90745_))
                ((##fx= _g90744_ 2)
                 (apply (lambda (_%size-hint90405%_ _%seed90406%_)
                          (make-eq-table__% _%size-hint90405%_ _%seed90406%_))
                        _g90745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90745_))))))
    (define eq-table-ref
      (lambda (_%tab90342%_ _%key90343%_ _%default90344%_)
        (let ((_%table90346%_ (&raw-table-table _%tab90342%_))
              (_%seed90347%_ (&raw-table-seed _%tab90342%_)))
          (let* ((_%h90349%_ (fxxor (eq-hash _%key90343%_) _%seed90347%_))
                 (_%size90352%_ (vector-length _%table90346%_))
                 (_%entries90355%_ (##fxquotient _%size90352%_ '2))
                 (_%start90358%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90349%_ _%entries90355%_)
                   '1)))
            (let _%loop90362%_ ((_%probe90365%_ _%start90358%_)
                                (_%i90367%_ '1)
                                (_%deleted90369%_ '#f))
              (let ((_%k90372%_ (vector-ref _%table90346%_ _%probe90365%_)))
                (if (eq? _%k90372%_ (macro-unused-obj))
                    (let () _%default90344%_)
                    (if (eq? _%k90372%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90362%_
                           (let ((_%next-probe90377%_
                                  (fx+ _%start90358%_
                                       _%i90367%_
                                       (fx* _%i90367%_ _%i90367%_))))
                             (##fxmodulo _%next-probe90377%_ _%size90352%_))
                           (##fx+ _%i90367%_ '1)
                           (let ((_%$e90380%_ _%deleted90369%_))
                             (if _%$e90380%_ _%$e90380%_ _%probe90365%_))))
                        (if (eq? _%key90343%_ _%k90372%_)
                            (let ()
                              (vector-ref
                               _%table90346%_
                               (##fx+ _%probe90365%_ '1)))
                            (let ()
                              (_%loop90362%_
                               (let ((_%next-probe90385%_
                                      (fx+ _%start90358%_
                                           _%i90367%_
                                           (fx* _%i90367%_ _%i90367%_))))
                                 (##fxmodulo
                                  _%next-probe90385%_
                                  _%size90352%_))
                               (##fx+ _%i90367%_ '1)
                               _%deleted90369%_)))))))))))
    (define eq-table-set!
      (lambda (_%tab90338%_ _%key90339%_ _%value90340%_)
        (if (##fx< (&raw-table-free _%tab90338%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90338%_))
                    '4))
            (__raw-table-rehash! _%tab90338%_)
            '#!void)
        (__eq-table-set! _%tab90338%_ _%key90339%_ _%value90340%_)))
    (define __eq-table-set!
      (lambda (_%tab90289%_ _%key90290%_ _%value90291%_)
        (let ((_%table90294%_ (&raw-table-table _%tab90289%_))
              (_%seed90295%_ (&raw-table-seed _%tab90289%_)))
          (let* ((_%h90297%_ (fxxor (eq-hash _%key90290%_) _%seed90295%_))
                 (_%size90300%_ (vector-length _%table90294%_))
                 (_%entries90303%_ (##fxquotient _%size90300%_ '2))
                 (_%start90306%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90297%_ _%entries90303%_)
                   '1)))
            (let _%loop90310%_ ((_%probe90313%_ _%start90306%_)
                                (_%i90315%_ '1)
                                (_%deleted90317%_ '#f))
              (let ((_%k90320%_ (vector-ref _%table90294%_ _%probe90313%_)))
                (if (eq? _%k90320%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90317%_
                          (begin
                            (vector-set!
                             _%table90294%_
                             _%deleted90317%_
                             _%key90290%_)
                            (vector-set!
                             _%table90294%_
                             (##fx+ _%deleted90317%_ '1)
                             _%value90291%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90289%_
                                (##fx+ (&raw-table-count _%tab90289%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90294%_
                             _%probe90313%_
                             _%key90290%_)
                            (vector-set!
                             _%table90294%_
                             (##fx+ _%probe90313%_ '1)
                             _%value90291%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90289%_
                                (##fx- (&raw-table-free _%tab90289%_) '1))
                               (&raw-table-count-set!
                                _%tab90289%_
                                (##fx+ (&raw-table-count _%tab90289%_)
                                       '1)))))))
                    (if (eq? _%k90320%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90310%_
                           (let ((_%next-probe90327%_
                                  (fx+ _%start90306%_
                                       _%i90315%_
                                       (fx* _%i90315%_ _%i90315%_))))
                             (##fxmodulo _%next-probe90327%_ _%size90300%_))
                           (##fx+ _%i90315%_ '1)
                           (let ((_%$e90330%_ _%deleted90317%_))
                             (if _%$e90330%_ _%$e90330%_ _%probe90313%_))))
                        (if (eq? _%key90290%_ _%k90320%_)
                            (let ()
                              (vector-set!
                               _%table90294%_
                               _%probe90313%_
                               _%key90290%_)
                              (vector-set!
                               _%table90294%_
                               (##fx+ _%probe90313%_ '1)
                               _%value90291%_))
                            (let ()
                              (_%loop90310%_
                               (let ((_%next-probe90335%_
                                      (fx+ _%start90306%_
                                           _%i90315%_
                                           (fx* _%i90315%_ _%i90315%_))))
                                 (##fxmodulo
                                  _%next-probe90335%_
                                  _%size90300%_))
                               (##fx+ _%i90315%_ '1)
                               _%deleted90317%_)))))))))))
    (define eq-table-update!
      (lambda (_%tab90284%_
               _%key90285%_
               _%eq-table-update!90286%_
               _%default90287%_)
        (if (##fx< (&raw-table-free _%tab90284%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90284%_))
                    '4))
            (__raw-table-rehash! _%tab90284%_)
            '#!void)
        (__eq-table-update!
         _%tab90284%_
         _%key90285%_
         _%eq-table-update!90286%_
         _%default90287%_)))
    (define __eq-table-update!
      (lambda (_%tab90234%_
               _%key90235%_
               _%eq-table-update!90236%_
               _%default90237%_)
        (let ((_%table90240%_ (&raw-table-table _%tab90234%_))
              (_%seed90241%_ (&raw-table-seed _%tab90234%_)))
          (let* ((_%h90243%_ (fxxor (eq-hash _%key90235%_) _%seed90241%_))
                 (_%size90246%_ (vector-length _%table90240%_))
                 (_%entries90249%_ (##fxquotient _%size90246%_ '2))
                 (_%start90252%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90243%_ _%entries90249%_)
                   '1)))
            (let _%loop90256%_ ((_%probe90259%_ _%start90252%_)
                                (_%i90261%_ '1)
                                (_%deleted90263%_ '#f))
              (let ((_%k90266%_ (vector-ref _%table90240%_ _%probe90259%_)))
                (if (eq? _%k90266%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90263%_
                          (begin
                            (vector-set!
                             _%table90240%_
                             _%deleted90263%_
                             _%key90235%_)
                            (vector-set!
                             _%table90240%_
                             (##fx+ _%deleted90263%_ '1)
                             (_%eq-table-update!90236%_ _%default90237%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90234%_
                                (##fx+ (&raw-table-count _%tab90234%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90240%_
                             _%probe90259%_
                             _%key90235%_)
                            (vector-set!
                             _%table90240%_
                             (##fx+ _%probe90259%_ '1)
                             (_%eq-table-update!90236%_ _%default90237%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90234%_
                                (##fx- (&raw-table-free _%tab90234%_) '1))
                               (&raw-table-count-set!
                                _%tab90234%_
                                (##fx+ (&raw-table-count _%tab90234%_)
                                       '1)))))))
                    (if (eq? _%k90266%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90256%_
                           (let ((_%next-probe90273%_
                                  (fx+ _%start90252%_
                                       _%i90261%_
                                       (fx* _%i90261%_ _%i90261%_))))
                             (##fxmodulo _%next-probe90273%_ _%size90246%_))
                           (##fx+ _%i90261%_ '1)
                           (let ((_%$e90276%_ _%deleted90263%_))
                             (if _%$e90276%_ _%$e90276%_ _%probe90259%_))))
                        (if (eq? _%key90235%_ _%k90266%_)
                            (let ()
                              (vector-set!
                               _%table90240%_
                               _%probe90259%_
                               _%key90235%_)
                              (vector-set!
                               _%table90240%_
                               (##fx+ _%probe90259%_ '1)
                               (_%eq-table-update!90236%_
                                (vector-ref
                                 _%table90240%_
                                 (##fx+ _%probe90259%_ '1)))))
                            (let ()
                              (_%loop90256%_
                               (let ((_%next-probe90281%_
                                      (fx+ _%start90252%_
                                           _%i90261%_
                                           (fx* _%i90261%_ _%i90261%_))))
                                 (##fxmodulo
                                  _%next-probe90281%_
                                  _%size90246%_))
                               (##fx+ _%i90261%_ '1)
                               _%deleted90263%_)))))))))))
    (define eq-table-delete!
      (lambda (_%tab90189%_ _%key90191%_)
        (let ((_%table90194%_ (&raw-table-table _%tab90189%_))
              (_%seed90196%_ (&raw-table-seed _%tab90189%_)))
          (let* ((_%h90199%_ (fxxor (eq-hash _%key90191%_) _%seed90196%_))
                 (_%size90202%_ (vector-length _%table90194%_))
                 (_%entries90205%_ (##fxquotient _%size90202%_ '2))
                 (_%start90208%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90199%_ _%entries90205%_)
                   '1)))
            (let _%loop90212%_ ((_%probe90215%_ _%start90208%_)
                                (_%i90217%_ '1))
              (let ((_%k90220%_ (vector-ref _%table90194%_ _%probe90215%_)))
                (if (eq? _%k90220%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90220%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90212%_
                           (let ((_%next-probe90225%_
                                  (fx+ _%start90208%_
                                       _%i90217%_
                                       (fx* _%i90217%_ _%i90217%_))))
                             (##fxmodulo _%next-probe90225%_ _%size90202%_))
                           (##fx+ _%i90217%_ '1)))
                        (if (eq? _%key90191%_ _%k90220%_)
                            (let ()
                              (vector-set!
                               _%table90194%_
                               _%probe90215%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90194%_
                               (##fx+ _%probe90215%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90189%_
                                  (##fx- (&raw-table-count _%tab90189%_)
                                         '1)))))
                            (let ()
                              (_%loop90212%_
                               (let ((_%next-probe90231%_
                                      (fx+ _%start90208%_
                                           _%i90217%_
                                           (fx* _%i90217%_ _%i90217%_))))
                                 (##fxmodulo
                                  _%next-probe90231%_
                                  _%size90202%_))
                               (##fx+ _%i90217%_ '1))))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint90170%_ _%seed90172%_)
        (make-raw-table__% _%size-hint90170%_ eqv-hash eqv? _%seed90172%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint90178%_ '#f) (_%seed90180%_ '0))
          (make-eqv-table__% _%size-hint90178%_ _%seed90180%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint90182%_)
        (let ((_%seed90184%_ '0))
          (make-eqv-table__% _%size-hint90182%_ _%seed90184%_))))
    (define make-eqv-table
      (lambda _g90747_
        (let ((_g90746_ (##length _g90747_)))
          (cond ((##fx= _g90746_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g90747_))
                ((##fx= _g90746_ 1)
                 (apply (lambda (_%size-hint90182%_)
                          (make-eqv-table__1 _%size-hint90182%_))
                        _g90747_))
                ((##fx= _g90746_ 2)
                 (apply (lambda (_%size-hint90186%_ _%seed90187%_)
                          (make-eqv-table__% _%size-hint90186%_ _%seed90187%_))
                        _g90747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90747_))))))
    (define eqv-table-ref
      (lambda (_%tab90123%_ _%key90124%_ _%default90125%_)
        (let ((_%table90127%_ (&raw-table-table _%tab90123%_))
              (_%seed90128%_ (&raw-table-seed _%tab90123%_)))
          (let* ((_%h90130%_ (fxxor (eqv-hash _%key90124%_) _%seed90128%_))
                 (_%size90133%_ (vector-length _%table90127%_))
                 (_%entries90136%_ (##fxquotient _%size90133%_ '2))
                 (_%start90139%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90130%_ _%entries90136%_)
                   '1)))
            (let _%loop90143%_ ((_%probe90146%_ _%start90139%_)
                                (_%i90148%_ '1)
                                (_%deleted90150%_ '#f))
              (let ((_%k90153%_ (vector-ref _%table90127%_ _%probe90146%_)))
                (if (eq? _%k90153%_ (macro-unused-obj))
                    (let () _%default90125%_)
                    (if (eq? _%k90153%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90143%_
                           (let ((_%next-probe90158%_
                                  (fx+ _%start90139%_
                                       _%i90148%_
                                       (fx* _%i90148%_ _%i90148%_))))
                             (##fxmodulo _%next-probe90158%_ _%size90133%_))
                           (##fx+ _%i90148%_ '1)
                           (let ((_%$e90161%_ _%deleted90150%_))
                             (if _%$e90161%_ _%$e90161%_ _%probe90146%_))))
                        (if (eqv? _%key90124%_ _%k90153%_)
                            (let ()
                              (vector-ref
                               _%table90127%_
                               (##fx+ _%probe90146%_ '1)))
                            (let ()
                              (_%loop90143%_
                               (let ((_%next-probe90166%_
                                      (fx+ _%start90139%_
                                           _%i90148%_
                                           (fx* _%i90148%_ _%i90148%_))))
                                 (##fxmodulo
                                  _%next-probe90166%_
                                  _%size90133%_))
                               (##fx+ _%i90148%_ '1)
                               _%deleted90150%_)))))))))))
    (define eqv-table-set!
      (lambda (_%tab90119%_ _%key90120%_ _%value90121%_)
        (if (##fx< (&raw-table-free _%tab90119%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90119%_))
                    '4))
            (__raw-table-rehash! _%tab90119%_)
            '#!void)
        (__eqv-table-set! _%tab90119%_ _%key90120%_ _%value90121%_)))
    (define __eqv-table-set!
      (lambda (_%tab90070%_ _%key90071%_ _%value90072%_)
        (let ((_%table90075%_ (&raw-table-table _%tab90070%_))
              (_%seed90076%_ (&raw-table-seed _%tab90070%_)))
          (let* ((_%h90078%_ (fxxor (eqv-hash _%key90071%_) _%seed90076%_))
                 (_%size90081%_ (vector-length _%table90075%_))
                 (_%entries90084%_ (##fxquotient _%size90081%_ '2))
                 (_%start90087%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90078%_ _%entries90084%_)
                   '1)))
            (let _%loop90091%_ ((_%probe90094%_ _%start90087%_)
                                (_%i90096%_ '1)
                                (_%deleted90098%_ '#f))
              (let ((_%k90101%_ (vector-ref _%table90075%_ _%probe90094%_)))
                (if (eq? _%k90101%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90098%_
                          (begin
                            (vector-set!
                             _%table90075%_
                             _%deleted90098%_
                             _%key90071%_)
                            (vector-set!
                             _%table90075%_
                             (##fx+ _%deleted90098%_ '1)
                             _%value90072%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90070%_
                                (##fx+ (&raw-table-count _%tab90070%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90075%_
                             _%probe90094%_
                             _%key90071%_)
                            (vector-set!
                             _%table90075%_
                             (##fx+ _%probe90094%_ '1)
                             _%value90072%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90070%_
                                (##fx- (&raw-table-free _%tab90070%_) '1))
                               (&raw-table-count-set!
                                _%tab90070%_
                                (##fx+ (&raw-table-count _%tab90070%_)
                                       '1)))))))
                    (if (eq? _%k90101%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90091%_
                           (let ((_%next-probe90108%_
                                  (fx+ _%start90087%_
                                       _%i90096%_
                                       (fx* _%i90096%_ _%i90096%_))))
                             (##fxmodulo _%next-probe90108%_ _%size90081%_))
                           (##fx+ _%i90096%_ '1)
                           (let ((_%$e90111%_ _%deleted90098%_))
                             (if _%$e90111%_ _%$e90111%_ _%probe90094%_))))
                        (if (eqv? _%key90071%_ _%k90101%_)
                            (let ()
                              (vector-set!
                               _%table90075%_
                               _%probe90094%_
                               _%key90071%_)
                              (vector-set!
                               _%table90075%_
                               (##fx+ _%probe90094%_ '1)
                               _%value90072%_))
                            (let ()
                              (_%loop90091%_
                               (let ((_%next-probe90116%_
                                      (fx+ _%start90087%_
                                           _%i90096%_
                                           (fx* _%i90096%_ _%i90096%_))))
                                 (##fxmodulo
                                  _%next-probe90116%_
                                  _%size90081%_))
                               (##fx+ _%i90096%_ '1)
                               _%deleted90098%_)))))))))))
    (define eqv-table-update!
      (lambda (_%tab90065%_
               _%key90066%_
               _%eqv-table-update!90067%_
               _%default90068%_)
        (if (##fx< (&raw-table-free _%tab90065%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90065%_))
                    '4))
            (__raw-table-rehash! _%tab90065%_)
            '#!void)
        (__eqv-table-update!
         _%tab90065%_
         _%key90066%_
         _%eqv-table-update!90067%_
         _%default90068%_)))
    (define __eqv-table-update!
      (lambda (_%tab90015%_
               _%key90016%_
               _%eqv-table-update!90017%_
               _%default90018%_)
        (let ((_%table90021%_ (&raw-table-table _%tab90015%_))
              (_%seed90022%_ (&raw-table-seed _%tab90015%_)))
          (let* ((_%h90024%_ (fxxor (eqv-hash _%key90016%_) _%seed90022%_))
                 (_%size90027%_ (vector-length _%table90021%_))
                 (_%entries90030%_ (##fxquotient _%size90027%_ '2))
                 (_%start90033%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90024%_ _%entries90030%_)
                   '1)))
            (let _%loop90037%_ ((_%probe90040%_ _%start90033%_)
                                (_%i90042%_ '1)
                                (_%deleted90044%_ '#f))
              (let ((_%k90047%_ (vector-ref _%table90021%_ _%probe90040%_)))
                (if (eq? _%k90047%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90044%_
                          (begin
                            (vector-set!
                             _%table90021%_
                             _%deleted90044%_
                             _%key90016%_)
                            (vector-set!
                             _%table90021%_
                             (##fx+ _%deleted90044%_ '1)
                             (_%eqv-table-update!90017%_ _%default90018%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90015%_
                                (##fx+ (&raw-table-count _%tab90015%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90021%_
                             _%probe90040%_
                             _%key90016%_)
                            (vector-set!
                             _%table90021%_
                             (##fx+ _%probe90040%_ '1)
                             (_%eqv-table-update!90017%_ _%default90018%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90015%_
                                (##fx- (&raw-table-free _%tab90015%_) '1))
                               (&raw-table-count-set!
                                _%tab90015%_
                                (##fx+ (&raw-table-count _%tab90015%_)
                                       '1)))))))
                    (if (eq? _%k90047%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90037%_
                           (let ((_%next-probe90054%_
                                  (fx+ _%start90033%_
                                       _%i90042%_
                                       (fx* _%i90042%_ _%i90042%_))))
                             (##fxmodulo _%next-probe90054%_ _%size90027%_))
                           (##fx+ _%i90042%_ '1)
                           (let ((_%$e90057%_ _%deleted90044%_))
                             (if _%$e90057%_ _%$e90057%_ _%probe90040%_))))
                        (if (eqv? _%key90016%_ _%k90047%_)
                            (let ()
                              (vector-set!
                               _%table90021%_
                               _%probe90040%_
                               _%key90016%_)
                              (vector-set!
                               _%table90021%_
                               (##fx+ _%probe90040%_ '1)
                               (_%eqv-table-update!90017%_
                                (vector-ref
                                 _%table90021%_
                                 (##fx+ _%probe90040%_ '1)))))
                            (let ()
                              (_%loop90037%_
                               (let ((_%next-probe90062%_
                                      (fx+ _%start90033%_
                                           _%i90042%_
                                           (fx* _%i90042%_ _%i90042%_))))
                                 (##fxmodulo
                                  _%next-probe90062%_
                                  _%size90027%_))
                               (##fx+ _%i90042%_ '1)
                               _%deleted90044%_)))))))))))
    (define eqv-table-delete!
      (lambda (_%tab89970%_ _%key89972%_)
        (let ((_%table89975%_ (&raw-table-table _%tab89970%_))
              (_%seed89977%_ (&raw-table-seed _%tab89970%_)))
          (let* ((_%h89980%_ (fxxor (eqv-hash _%key89972%_) _%seed89977%_))
                 (_%size89983%_ (vector-length _%table89975%_))
                 (_%entries89986%_ (##fxquotient _%size89983%_ '2))
                 (_%start89989%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89980%_ _%entries89986%_)
                   '1)))
            (let _%loop89993%_ ((_%probe89996%_ _%start89989%_)
                                (_%i89998%_ '1))
              (let ((_%k90001%_ (vector-ref _%table89975%_ _%probe89996%_)))
                (if (eq? _%k90001%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90001%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89993%_
                           (let ((_%next-probe90006%_
                                  (fx+ _%start89989%_
                                       _%i89998%_
                                       (fx* _%i89998%_ _%i89998%_))))
                             (##fxmodulo _%next-probe90006%_ _%size89983%_))
                           (##fx+ _%i89998%_ '1)))
                        (if (eqv? _%key89972%_ _%k90001%_)
                            (let ()
                              (vector-set!
                               _%table89975%_
                               _%probe89996%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89975%_
                               (##fx+ _%probe89996%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89970%_
                                  (##fx- (&raw-table-count _%tab89970%_)
                                         '1)))))
                            (let ()
                              (_%loop89993%_
                               (let ((_%next-probe90012%_
                                      (fx+ _%start89989%_
                                           _%i89998%_
                                           (fx* _%i89998%_ _%i89998%_))))
                                 (##fxmodulo
                                  _%next-probe90012%_
                                  _%size89983%_))
                               (##fx+ _%i89998%_ '1))))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint89951%_ _%seed89953%_)
        (make-raw-table__%
         _%size-hint89951%_
         symbolic-hash
         eq?
         _%seed89953%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint89959%_ '#f) (_%seed89961%_ '0))
          (make-symbolic-table__% _%size-hint89959%_ _%seed89961%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint89963%_)
        (let ((_%seed89965%_ '0))
          (make-symbolic-table__% _%size-hint89963%_ _%seed89965%_))))
    (define make-symbolic-table
      (lambda _g90749_
        (let ((_g90748_ (##length _g90749_)))
          (cond ((##fx= _g90748_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g90749_))
                ((##fx= _g90748_ 1)
                 (apply (lambda (_%size-hint89963%_)
                          (make-symbolic-table__1 _%size-hint89963%_))
                        _g90749_))
                ((##fx= _g90748_ 2)
                 (apply (lambda (_%size-hint89967%_ _%seed89968%_)
                          (make-symbolic-table__%
                           _%size-hint89967%_
                           _%seed89968%_))
                        _g90749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90749_))))))
    (define symbolic-table-ref
      (lambda (_%tab89904%_ _%key89905%_ _%default89906%_)
        (let ((_%table89908%_ (&raw-table-table _%tab89904%_))
              (_%seed89909%_ (&raw-table-seed _%tab89904%_)))
          (let* ((_%h89911%_
                  (fxxor (symbolic-hash _%key89905%_) _%seed89909%_))
                 (_%size89914%_ (vector-length _%table89908%_))
                 (_%entries89917%_ (##fxquotient _%size89914%_ '2))
                 (_%start89920%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89911%_ _%entries89917%_)
                   '1)))
            (let _%loop89924%_ ((_%probe89927%_ _%start89920%_)
                                (_%i89929%_ '1)
                                (_%deleted89931%_ '#f))
              (let ((_%k89934%_ (vector-ref _%table89908%_ _%probe89927%_)))
                (if (eq? _%k89934%_ (macro-unused-obj))
                    (let () _%default89906%_)
                    (if (eq? _%k89934%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89924%_
                           (let ((_%next-probe89939%_
                                  (fx+ _%start89920%_
                                       _%i89929%_
                                       (fx* _%i89929%_ _%i89929%_))))
                             (##fxmodulo _%next-probe89939%_ _%size89914%_))
                           (##fx+ _%i89929%_ '1)
                           (let ((_%$e89942%_ _%deleted89931%_))
                             (if _%$e89942%_ _%$e89942%_ _%probe89927%_))))
                        (if (eq? _%key89905%_ _%k89934%_)
                            (let ()
                              (vector-ref
                               _%table89908%_
                               (##fx+ _%probe89927%_ '1)))
                            (let ()
                              (_%loop89924%_
                               (let ((_%next-probe89947%_
                                      (fx+ _%start89920%_
                                           _%i89929%_
                                           (fx* _%i89929%_ _%i89929%_))))
                                 (##fxmodulo
                                  _%next-probe89947%_
                                  _%size89914%_))
                               (##fx+ _%i89929%_ '1)
                               _%deleted89931%_)))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89900%_ _%key89901%_ _%value89902%_)
        (if (##fx< (&raw-table-free _%tab89900%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89900%_))
                    '4))
            (__raw-table-rehash! _%tab89900%_)
            '#!void)
        (__symbolic-table-set! _%tab89900%_ _%key89901%_ _%value89902%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89851%_ _%key89852%_ _%value89853%_)
        (let ((_%table89856%_ (&raw-table-table _%tab89851%_))
              (_%seed89857%_ (&raw-table-seed _%tab89851%_)))
          (let* ((_%h89859%_
                  (fxxor (symbolic-hash _%key89852%_) _%seed89857%_))
                 (_%size89862%_ (vector-length _%table89856%_))
                 (_%entries89865%_ (##fxquotient _%size89862%_ '2))
                 (_%start89868%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89859%_ _%entries89865%_)
                   '1)))
            (let _%loop89872%_ ((_%probe89875%_ _%start89868%_)
                                (_%i89877%_ '1)
                                (_%deleted89879%_ '#f))
              (let ((_%k89882%_ (vector-ref _%table89856%_ _%probe89875%_)))
                (if (eq? _%k89882%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89879%_
                          (begin
                            (vector-set!
                             _%table89856%_
                             _%deleted89879%_
                             _%key89852%_)
                            (vector-set!
                             _%table89856%_
                             (##fx+ _%deleted89879%_ '1)
                             _%value89853%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89851%_
                                (##fx+ (&raw-table-count _%tab89851%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89856%_
                             _%probe89875%_
                             _%key89852%_)
                            (vector-set!
                             _%table89856%_
                             (##fx+ _%probe89875%_ '1)
                             _%value89853%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89851%_
                                (##fx- (&raw-table-free _%tab89851%_) '1))
                               (&raw-table-count-set!
                                _%tab89851%_
                                (##fx+ (&raw-table-count _%tab89851%_)
                                       '1)))))))
                    (if (eq? _%k89882%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89872%_
                           (let ((_%next-probe89889%_
                                  (fx+ _%start89868%_
                                       _%i89877%_
                                       (fx* _%i89877%_ _%i89877%_))))
                             (##fxmodulo _%next-probe89889%_ _%size89862%_))
                           (##fx+ _%i89877%_ '1)
                           (let ((_%$e89892%_ _%deleted89879%_))
                             (if _%$e89892%_ _%$e89892%_ _%probe89875%_))))
                        (if (eq? _%key89852%_ _%k89882%_)
                            (let ()
                              (vector-set!
                               _%table89856%_
                               _%probe89875%_
                               _%key89852%_)
                              (vector-set!
                               _%table89856%_
                               (##fx+ _%probe89875%_ '1)
                               _%value89853%_))
                            (let ()
                              (_%loop89872%_
                               (let ((_%next-probe89897%_
                                      (fx+ _%start89868%_
                                           _%i89877%_
                                           (fx* _%i89877%_ _%i89877%_))))
                                 (##fxmodulo
                                  _%next-probe89897%_
                                  _%size89862%_))
                               (##fx+ _%i89877%_ '1)
                               _%deleted89879%_)))))))))))
    (define symbolic-table-update!
      (lambda (_%tab89846%_
               _%key89847%_
               _%symbolic-table-update!89848%_
               _%default89849%_)
        (if (##fx< (&raw-table-free _%tab89846%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89846%_))
                    '4))
            (__raw-table-rehash! _%tab89846%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89846%_
         _%key89847%_
         _%symbolic-table-update!89848%_
         _%default89849%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89796%_
               _%key89797%_
               _%symbolic-table-update!89798%_
               _%default89799%_)
        (let ((_%table89802%_ (&raw-table-table _%tab89796%_))
              (_%seed89803%_ (&raw-table-seed _%tab89796%_)))
          (let* ((_%h89805%_
                  (fxxor (symbolic-hash _%key89797%_) _%seed89803%_))
                 (_%size89808%_ (vector-length _%table89802%_))
                 (_%entries89811%_ (##fxquotient _%size89808%_ '2))
                 (_%start89814%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89805%_ _%entries89811%_)
                   '1)))
            (let _%loop89818%_ ((_%probe89821%_ _%start89814%_)
                                (_%i89823%_ '1)
                                (_%deleted89825%_ '#f))
              (let ((_%k89828%_ (vector-ref _%table89802%_ _%probe89821%_)))
                (if (eq? _%k89828%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89825%_
                          (begin
                            (vector-set!
                             _%table89802%_
                             _%deleted89825%_
                             _%key89797%_)
                            (vector-set!
                             _%table89802%_
                             (##fx+ _%deleted89825%_ '1)
                             (_%symbolic-table-update!89798%_
                              _%default89799%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89796%_
                                (##fx+ (&raw-table-count _%tab89796%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89802%_
                             _%probe89821%_
                             _%key89797%_)
                            (vector-set!
                             _%table89802%_
                             (##fx+ _%probe89821%_ '1)
                             (_%symbolic-table-update!89798%_
                              _%default89799%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89796%_
                                (##fx- (&raw-table-free _%tab89796%_) '1))
                               (&raw-table-count-set!
                                _%tab89796%_
                                (##fx+ (&raw-table-count _%tab89796%_)
                                       '1)))))))
                    (if (eq? _%k89828%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89818%_
                           (let ((_%next-probe89835%_
                                  (fx+ _%start89814%_
                                       _%i89823%_
                                       (fx* _%i89823%_ _%i89823%_))))
                             (##fxmodulo _%next-probe89835%_ _%size89808%_))
                           (##fx+ _%i89823%_ '1)
                           (let ((_%$e89838%_ _%deleted89825%_))
                             (if _%$e89838%_ _%$e89838%_ _%probe89821%_))))
                        (if (eq? _%key89797%_ _%k89828%_)
                            (let ()
                              (vector-set!
                               _%table89802%_
                               _%probe89821%_
                               _%key89797%_)
                              (vector-set!
                               _%table89802%_
                               (##fx+ _%probe89821%_ '1)
                               (_%symbolic-table-update!89798%_
                                (vector-ref
                                 _%table89802%_
                                 (##fx+ _%probe89821%_ '1)))))
                            (let ()
                              (_%loop89818%_
                               (let ((_%next-probe89843%_
                                      (fx+ _%start89814%_
                                           _%i89823%_
                                           (fx* _%i89823%_ _%i89823%_))))
                                 (##fxmodulo
                                  _%next-probe89843%_
                                  _%size89808%_))
                               (##fx+ _%i89823%_ '1)
                               _%deleted89825%_)))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89751%_ _%key89753%_)
        (let ((_%table89756%_ (&raw-table-table _%tab89751%_))
              (_%seed89758%_ (&raw-table-seed _%tab89751%_)))
          (let* ((_%h89761%_
                  (fxxor (symbolic-hash _%key89753%_) _%seed89758%_))
                 (_%size89764%_ (vector-length _%table89756%_))
                 (_%entries89767%_ (##fxquotient _%size89764%_ '2))
                 (_%start89770%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89761%_ _%entries89767%_)
                   '1)))
            (let _%loop89774%_ ((_%probe89777%_ _%start89770%_)
                                (_%i89779%_ '1))
              (let ((_%k89782%_ (vector-ref _%table89756%_ _%probe89777%_)))
                (if (eq? _%k89782%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89782%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89774%_
                           (let ((_%next-probe89787%_
                                  (fx+ _%start89770%_
                                       _%i89779%_
                                       (fx* _%i89779%_ _%i89779%_))))
                             (##fxmodulo _%next-probe89787%_ _%size89764%_))
                           (##fx+ _%i89779%_ '1)))
                        (if (eq? _%key89753%_ _%k89782%_)
                            (let ()
                              (vector-set!
                               _%table89756%_
                               _%probe89777%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89756%_
                               (##fx+ _%probe89777%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89751%_
                                  (##fx- (&raw-table-count _%tab89751%_)
                                         '1)))))
                            (let ()
                              (_%loop89774%_
                               (let ((_%next-probe89793%_
                                      (fx+ _%start89770%_
                                           _%i89779%_
                                           (fx* _%i89779%_ _%i89779%_))))
                                 (##fxmodulo
                                  _%next-probe89793%_
                                  _%size89764%_))
                               (##fx+ _%i89779%_ '1))))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89732%_ _%seed89734%_)
        (make-raw-table__%
         _%size-hint89732%_
         string-hash
         ##string=?
         _%seed89734%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89740%_ '#f) (_%seed89742%_ '0))
          (make-string-table__% _%size-hint89740%_ _%seed89742%_))))
    (define make-string-table__1
      (lambda (_%size-hint89744%_)
        (let ((_%seed89746%_ '0))
          (make-string-table__% _%size-hint89744%_ _%seed89746%_))))
    (define make-string-table
      (lambda _g90751_
        (let ((_g90750_ (##length _g90751_)))
          (cond ((##fx= _g90750_ 0)
                 (apply (lambda () (make-string-table__0)) _g90751_))
                ((##fx= _g90750_ 1)
                 (apply (lambda (_%size-hint89744%_)
                          (make-string-table__1 _%size-hint89744%_))
                        _g90751_))
                ((##fx= _g90750_ 2)
                 (apply (lambda (_%size-hint89748%_ _%seed89749%_)
                          (make-string-table__%
                           _%size-hint89748%_
                           _%seed89749%_))
                        _g90751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90751_))))))
    (define string-table-ref
      (lambda (_%tab89685%_ _%key89686%_ _%default89687%_)
        (let ((_%table89689%_ (&raw-table-table _%tab89685%_))
              (_%seed89690%_ (&raw-table-seed _%tab89685%_)))
          (let* ((_%h89692%_
                  (fxxor (##string=?-hash _%key89686%_) _%seed89690%_))
                 (_%size89695%_ (vector-length _%table89689%_))
                 (_%entries89698%_ (##fxquotient _%size89695%_ '2))
                 (_%start89701%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89692%_ _%entries89698%_)
                   '1)))
            (let _%loop89705%_ ((_%probe89708%_ _%start89701%_)
                                (_%i89710%_ '1)
                                (_%deleted89712%_ '#f))
              (let ((_%k89715%_ (vector-ref _%table89689%_ _%probe89708%_)))
                (if (eq? _%k89715%_ (macro-unused-obj))
                    (let () _%default89687%_)
                    (if (eq? _%k89715%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89705%_
                           (let ((_%next-probe89720%_
                                  (fx+ _%start89701%_
                                       _%i89710%_
                                       (fx* _%i89710%_ _%i89710%_))))
                             (##fxmodulo _%next-probe89720%_ _%size89695%_))
                           (##fx+ _%i89710%_ '1)
                           (let ((_%$e89723%_ _%deleted89712%_))
                             (if _%$e89723%_ _%$e89723%_ _%probe89708%_))))
                        (if (##string=? _%key89686%_ _%k89715%_)
                            (let ()
                              (vector-ref
                               _%table89689%_
                               (##fx+ _%probe89708%_ '1)))
                            (let ()
                              (_%loop89705%_
                               (let ((_%next-probe89728%_
                                      (fx+ _%start89701%_
                                           _%i89710%_
                                           (fx* _%i89710%_ _%i89710%_))))
                                 (##fxmodulo
                                  _%next-probe89728%_
                                  _%size89695%_))
                               (##fx+ _%i89710%_ '1)
                               _%deleted89712%_)))))))))))
    (define string-table-set!
      (lambda (_%tab89681%_ _%key89682%_ _%value89683%_)
        (if (##fx< (&raw-table-free _%tab89681%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89681%_))
                    '4))
            (__raw-table-rehash! _%tab89681%_)
            '#!void)
        (__string-table-set! _%tab89681%_ _%key89682%_ _%value89683%_)))
    (define __string-table-set!
      (lambda (_%tab89632%_ _%key89633%_ _%value89634%_)
        (let ((_%table89637%_ (&raw-table-table _%tab89632%_))
              (_%seed89638%_ (&raw-table-seed _%tab89632%_)))
          (let* ((_%h89640%_
                  (fxxor (##string=?-hash _%key89633%_) _%seed89638%_))
                 (_%size89643%_ (vector-length _%table89637%_))
                 (_%entries89646%_ (##fxquotient _%size89643%_ '2))
                 (_%start89649%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89640%_ _%entries89646%_)
                   '1)))
            (let _%loop89653%_ ((_%probe89656%_ _%start89649%_)
                                (_%i89658%_ '1)
                                (_%deleted89660%_ '#f))
              (let ((_%k89663%_ (vector-ref _%table89637%_ _%probe89656%_)))
                (if (eq? _%k89663%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89660%_
                          (begin
                            (vector-set!
                             _%table89637%_
                             _%deleted89660%_
                             _%key89633%_)
                            (vector-set!
                             _%table89637%_
                             (##fx+ _%deleted89660%_ '1)
                             _%value89634%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89632%_
                                (##fx+ (&raw-table-count _%tab89632%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89637%_
                             _%probe89656%_
                             _%key89633%_)
                            (vector-set!
                             _%table89637%_
                             (##fx+ _%probe89656%_ '1)
                             _%value89634%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89632%_
                                (##fx- (&raw-table-free _%tab89632%_) '1))
                               (&raw-table-count-set!
                                _%tab89632%_
                                (##fx+ (&raw-table-count _%tab89632%_)
                                       '1)))))))
                    (if (eq? _%k89663%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89653%_
                           (let ((_%next-probe89670%_
                                  (fx+ _%start89649%_
                                       _%i89658%_
                                       (fx* _%i89658%_ _%i89658%_))))
                             (##fxmodulo _%next-probe89670%_ _%size89643%_))
                           (##fx+ _%i89658%_ '1)
                           (let ((_%$e89673%_ _%deleted89660%_))
                             (if _%$e89673%_ _%$e89673%_ _%probe89656%_))))
                        (if (##string=? _%key89633%_ _%k89663%_)
                            (let ()
                              (vector-set!
                               _%table89637%_
                               _%probe89656%_
                               _%key89633%_)
                              (vector-set!
                               _%table89637%_
                               (##fx+ _%probe89656%_ '1)
                               _%value89634%_))
                            (let ()
                              (_%loop89653%_
                               (let ((_%next-probe89678%_
                                      (fx+ _%start89649%_
                                           _%i89658%_
                                           (fx* _%i89658%_ _%i89658%_))))
                                 (##fxmodulo
                                  _%next-probe89678%_
                                  _%size89643%_))
                               (##fx+ _%i89658%_ '1)
                               _%deleted89660%_)))))))))))
    (define string-table-update!
      (lambda (_%tab89627%_
               _%key89628%_
               _%string-table-update!89629%_
               _%default89630%_)
        (if (##fx< (&raw-table-free _%tab89627%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89627%_))
                    '4))
            (__raw-table-rehash! _%tab89627%_)
            '#!void)
        (__string-table-update!
         _%tab89627%_
         _%key89628%_
         _%string-table-update!89629%_
         _%default89630%_)))
    (define __string-table-update!
      (lambda (_%tab89577%_
               _%key89578%_
               _%string-table-update!89579%_
               _%default89580%_)
        (let ((_%table89583%_ (&raw-table-table _%tab89577%_))
              (_%seed89584%_ (&raw-table-seed _%tab89577%_)))
          (let* ((_%h89586%_
                  (fxxor (##string=?-hash _%key89578%_) _%seed89584%_))
                 (_%size89589%_ (vector-length _%table89583%_))
                 (_%entries89592%_ (##fxquotient _%size89589%_ '2))
                 (_%start89595%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89586%_ _%entries89592%_)
                   '1)))
            (let _%loop89599%_ ((_%probe89602%_ _%start89595%_)
                                (_%i89604%_ '1)
                                (_%deleted89606%_ '#f))
              (let ((_%k89609%_ (vector-ref _%table89583%_ _%probe89602%_)))
                (if (eq? _%k89609%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89606%_
                          (begin
                            (vector-set!
                             _%table89583%_
                             _%deleted89606%_
                             _%key89578%_)
                            (vector-set!
                             _%table89583%_
                             (##fx+ _%deleted89606%_ '1)
                             (_%string-table-update!89579%_ _%default89580%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89577%_
                                (##fx+ (&raw-table-count _%tab89577%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89583%_
                             _%probe89602%_
                             _%key89578%_)
                            (vector-set!
                             _%table89583%_
                             (##fx+ _%probe89602%_ '1)
                             (_%string-table-update!89579%_ _%default89580%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89577%_
                                (##fx- (&raw-table-free _%tab89577%_) '1))
                               (&raw-table-count-set!
                                _%tab89577%_
                                (##fx+ (&raw-table-count _%tab89577%_)
                                       '1)))))))
                    (if (eq? _%k89609%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89599%_
                           (let ((_%next-probe89616%_
                                  (fx+ _%start89595%_
                                       _%i89604%_
                                       (fx* _%i89604%_ _%i89604%_))))
                             (##fxmodulo _%next-probe89616%_ _%size89589%_))
                           (##fx+ _%i89604%_ '1)
                           (let ((_%$e89619%_ _%deleted89606%_))
                             (if _%$e89619%_ _%$e89619%_ _%probe89602%_))))
                        (if (##string=? _%key89578%_ _%k89609%_)
                            (let ()
                              (vector-set!
                               _%table89583%_
                               _%probe89602%_
                               _%key89578%_)
                              (vector-set!
                               _%table89583%_
                               (##fx+ _%probe89602%_ '1)
                               (_%string-table-update!89579%_
                                (vector-ref
                                 _%table89583%_
                                 (##fx+ _%probe89602%_ '1)))))
                            (let ()
                              (_%loop89599%_
                               (let ((_%next-probe89624%_
                                      (fx+ _%start89595%_
                                           _%i89604%_
                                           (fx* _%i89604%_ _%i89604%_))))
                                 (##fxmodulo
                                  _%next-probe89624%_
                                  _%size89589%_))
                               (##fx+ _%i89604%_ '1)
                               _%deleted89606%_)))))))))))
    (define string-table-delete!
      (lambda (_%tab89532%_ _%key89534%_)
        (let ((_%table89537%_ (&raw-table-table _%tab89532%_))
              (_%seed89539%_ (&raw-table-seed _%tab89532%_)))
          (let* ((_%h89542%_
                  (fxxor (##string=?-hash _%key89534%_) _%seed89539%_))
                 (_%size89545%_ (vector-length _%table89537%_))
                 (_%entries89548%_ (##fxquotient _%size89545%_ '2))
                 (_%start89551%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89542%_ _%entries89548%_)
                   '1)))
            (let _%loop89555%_ ((_%probe89558%_ _%start89551%_)
                                (_%i89560%_ '1))
              (let ((_%k89563%_ (vector-ref _%table89537%_ _%probe89558%_)))
                (if (eq? _%k89563%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89563%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89555%_
                           (let ((_%next-probe89568%_
                                  (fx+ _%start89551%_
                                       _%i89560%_
                                       (fx* _%i89560%_ _%i89560%_))))
                             (##fxmodulo _%next-probe89568%_ _%size89545%_))
                           (##fx+ _%i89560%_ '1)))
                        (if (##string=? _%key89534%_ _%k89563%_)
                            (let ()
                              (vector-set!
                               _%table89537%_
                               _%probe89558%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89537%_
                               (##fx+ _%probe89558%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89532%_
                                  (##fx- (&raw-table-count _%tab89532%_)
                                         '1)))))
                            (let ()
                              (_%loop89555%_
                               (let ((_%next-probe89574%_
                                      (fx+ _%start89551%_
                                           _%i89560%_
                                           (fx* _%i89560%_ _%i89560%_))))
                                 (##fxmodulo
                                  _%next-probe89574%_
                                  _%size89545%_))
                               (##fx+ _%i89560%_ '1))))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint89513%_ _%seed89515%_)
        (make-raw-table__%
         _%size-hint89513%_
         immediate-hash
         eq?
         _%seed89515%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint89521%_ '#f) (_%seed89523%_ '0))
          (make-immediate-table__% _%size-hint89521%_ _%seed89523%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint89525%_)
        (let ((_%seed89527%_ '0))
          (make-immediate-table__% _%size-hint89525%_ _%seed89527%_))))
    (define make-immediate-table
      (lambda _g90753_
        (let ((_g90752_ (##length _g90753_)))
          (cond ((##fx= _g90752_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g90753_))
                ((##fx= _g90752_ 1)
                 (apply (lambda (_%size-hint89525%_)
                          (make-immediate-table__1 _%size-hint89525%_))
                        _g90753_))
                ((##fx= _g90752_ 2)
                 (apply (lambda (_%size-hint89529%_ _%seed89530%_)
                          (make-immediate-table__%
                           _%size-hint89529%_
                           _%seed89530%_))
                        _g90753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90753_))))))
    (define immediate-table-ref
      (lambda (_%tab89466%_ _%key89467%_ _%default89468%_)
        (let ((_%table89470%_ (&raw-table-table _%tab89466%_))
              (_%seed89471%_ (&raw-table-seed _%tab89466%_)))
          (let* ((_%h89473%_
                  (fxxor (immediate-hash _%key89467%_) _%seed89471%_))
                 (_%size89476%_ (vector-length _%table89470%_))
                 (_%entries89479%_ (##fxquotient _%size89476%_ '2))
                 (_%start89482%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89473%_ _%entries89479%_)
                   '1)))
            (let _%loop89486%_ ((_%probe89489%_ _%start89482%_)
                                (_%i89491%_ '1)
                                (_%deleted89493%_ '#f))
              (let ((_%k89496%_ (vector-ref _%table89470%_ _%probe89489%_)))
                (if (eq? _%k89496%_ (macro-unused-obj))
                    (let () _%default89468%_)
                    (if (eq? _%k89496%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89486%_
                           (let ((_%next-probe89501%_
                                  (fx+ _%start89482%_
                                       _%i89491%_
                                       (fx* _%i89491%_ _%i89491%_))))
                             (##fxmodulo _%next-probe89501%_ _%size89476%_))
                           (##fx+ _%i89491%_ '1)
                           (let ((_%$e89504%_ _%deleted89493%_))
                             (if _%$e89504%_ _%$e89504%_ _%probe89489%_))))
                        (if (eq? _%key89467%_ _%k89496%_)
                            (let ()
                              (vector-ref
                               _%table89470%_
                               (##fx+ _%probe89489%_ '1)))
                            (let ()
                              (_%loop89486%_
                               (let ((_%next-probe89509%_
                                      (fx+ _%start89482%_
                                           _%i89491%_
                                           (fx* _%i89491%_ _%i89491%_))))
                                 (##fxmodulo
                                  _%next-probe89509%_
                                  _%size89476%_))
                               (##fx+ _%i89491%_ '1)
                               _%deleted89493%_)))))))))))
    (define immediate-table-set!
      (lambda (_%tab89462%_ _%key89463%_ _%value89464%_)
        (if (##fx< (&raw-table-free _%tab89462%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89462%_))
                    '4))
            (__raw-table-rehash! _%tab89462%_)
            '#!void)
        (__immediate-table-set! _%tab89462%_ _%key89463%_ _%value89464%_)))
    (define __immediate-table-set!
      (lambda (_%tab89413%_ _%key89414%_ _%value89415%_)
        (let ((_%table89418%_ (&raw-table-table _%tab89413%_))
              (_%seed89419%_ (&raw-table-seed _%tab89413%_)))
          (let* ((_%h89421%_
                  (fxxor (immediate-hash _%key89414%_) _%seed89419%_))
                 (_%size89424%_ (vector-length _%table89418%_))
                 (_%entries89427%_ (##fxquotient _%size89424%_ '2))
                 (_%start89430%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89421%_ _%entries89427%_)
                   '1)))
            (let _%loop89434%_ ((_%probe89437%_ _%start89430%_)
                                (_%i89439%_ '1)
                                (_%deleted89441%_ '#f))
              (let ((_%k89444%_ (vector-ref _%table89418%_ _%probe89437%_)))
                (if (eq? _%k89444%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89441%_
                          (begin
                            (vector-set!
                             _%table89418%_
                             _%deleted89441%_
                             _%key89414%_)
                            (vector-set!
                             _%table89418%_
                             (##fx+ _%deleted89441%_ '1)
                             _%value89415%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89413%_
                                (##fx+ (&raw-table-count _%tab89413%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89418%_
                             _%probe89437%_
                             _%key89414%_)
                            (vector-set!
                             _%table89418%_
                             (##fx+ _%probe89437%_ '1)
                             _%value89415%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89413%_
                                (##fx- (&raw-table-free _%tab89413%_) '1))
                               (&raw-table-count-set!
                                _%tab89413%_
                                (##fx+ (&raw-table-count _%tab89413%_)
                                       '1)))))))
                    (if (eq? _%k89444%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89434%_
                           (let ((_%next-probe89451%_
                                  (fx+ _%start89430%_
                                       _%i89439%_
                                       (fx* _%i89439%_ _%i89439%_))))
                             (##fxmodulo _%next-probe89451%_ _%size89424%_))
                           (##fx+ _%i89439%_ '1)
                           (let ((_%$e89454%_ _%deleted89441%_))
                             (if _%$e89454%_ _%$e89454%_ _%probe89437%_))))
                        (if (eq? _%key89414%_ _%k89444%_)
                            (let ()
                              (vector-set!
                               _%table89418%_
                               _%probe89437%_
                               _%key89414%_)
                              (vector-set!
                               _%table89418%_
                               (##fx+ _%probe89437%_ '1)
                               _%value89415%_))
                            (let ()
                              (_%loop89434%_
                               (let ((_%next-probe89459%_
                                      (fx+ _%start89430%_
                                           _%i89439%_
                                           (fx* _%i89439%_ _%i89439%_))))
                                 (##fxmodulo
                                  _%next-probe89459%_
                                  _%size89424%_))
                               (##fx+ _%i89439%_ '1)
                               _%deleted89441%_)))))))))))
    (define immediate-table-update!
      (lambda (_%tab89408%_
               _%key89409%_
               _%immediate-table-update!89410%_
               _%default89411%_)
        (if (##fx< (&raw-table-free _%tab89408%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89408%_))
                    '4))
            (__raw-table-rehash! _%tab89408%_)
            '#!void)
        (__immediate-table-update!
         _%tab89408%_
         _%key89409%_
         _%immediate-table-update!89410%_
         _%default89411%_)))
    (define __immediate-table-update!
      (lambda (_%tab89358%_
               _%key89359%_
               _%immediate-table-update!89360%_
               _%default89361%_)
        (let ((_%table89364%_ (&raw-table-table _%tab89358%_))
              (_%seed89365%_ (&raw-table-seed _%tab89358%_)))
          (let* ((_%h89367%_
                  (fxxor (immediate-hash _%key89359%_) _%seed89365%_))
                 (_%size89370%_ (vector-length _%table89364%_))
                 (_%entries89373%_ (##fxquotient _%size89370%_ '2))
                 (_%start89376%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89367%_ _%entries89373%_)
                   '1)))
            (let _%loop89380%_ ((_%probe89383%_ _%start89376%_)
                                (_%i89385%_ '1)
                                (_%deleted89387%_ '#f))
              (let ((_%k89390%_ (vector-ref _%table89364%_ _%probe89383%_)))
                (if (eq? _%k89390%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89387%_
                          (begin
                            (vector-set!
                             _%table89364%_
                             _%deleted89387%_
                             _%key89359%_)
                            (vector-set!
                             _%table89364%_
                             (##fx+ _%deleted89387%_ '1)
                             (_%immediate-table-update!89360%_
                              _%default89361%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89358%_
                                (##fx+ (&raw-table-count _%tab89358%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89364%_
                             _%probe89383%_
                             _%key89359%_)
                            (vector-set!
                             _%table89364%_
                             (##fx+ _%probe89383%_ '1)
                             (_%immediate-table-update!89360%_
                              _%default89361%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89358%_
                                (##fx- (&raw-table-free _%tab89358%_) '1))
                               (&raw-table-count-set!
                                _%tab89358%_
                                (##fx+ (&raw-table-count _%tab89358%_)
                                       '1)))))))
                    (if (eq? _%k89390%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89380%_
                           (let ((_%next-probe89397%_
                                  (fx+ _%start89376%_
                                       _%i89385%_
                                       (fx* _%i89385%_ _%i89385%_))))
                             (##fxmodulo _%next-probe89397%_ _%size89370%_))
                           (##fx+ _%i89385%_ '1)
                           (let ((_%$e89400%_ _%deleted89387%_))
                             (if _%$e89400%_ _%$e89400%_ _%probe89383%_))))
                        (if (eq? _%key89359%_ _%k89390%_)
                            (let ()
                              (vector-set!
                               _%table89364%_
                               _%probe89383%_
                               _%key89359%_)
                              (vector-set!
                               _%table89364%_
                               (##fx+ _%probe89383%_ '1)
                               (_%immediate-table-update!89360%_
                                (vector-ref
                                 _%table89364%_
                                 (##fx+ _%probe89383%_ '1)))))
                            (let ()
                              (_%loop89380%_
                               (let ((_%next-probe89405%_
                                      (fx+ _%start89376%_
                                           _%i89385%_
                                           (fx* _%i89385%_ _%i89385%_))))
                                 (##fxmodulo
                                  _%next-probe89405%_
                                  _%size89370%_))
                               (##fx+ _%i89385%_ '1)
                               _%deleted89387%_)))))))))))
    (define immediate-table-delete!
      (lambda (_%tab89313%_ _%key89315%_)
        (let ((_%table89318%_ (&raw-table-table _%tab89313%_))
              (_%seed89320%_ (&raw-table-seed _%tab89313%_)))
          (let* ((_%h89323%_
                  (fxxor (immediate-hash _%key89315%_) _%seed89320%_))
                 (_%size89326%_ (vector-length _%table89318%_))
                 (_%entries89329%_ (##fxquotient _%size89326%_ '2))
                 (_%start89332%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89323%_ _%entries89329%_)
                   '1)))
            (let _%loop89336%_ ((_%probe89339%_ _%start89332%_)
                                (_%i89341%_ '1))
              (let ((_%k89344%_ (vector-ref _%table89318%_ _%probe89339%_)))
                (if (eq? _%k89344%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89344%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89336%_
                           (let ((_%next-probe89349%_
                                  (fx+ _%start89332%_
                                       _%i89341%_
                                       (fx* _%i89341%_ _%i89341%_))))
                             (##fxmodulo _%next-probe89349%_ _%size89326%_))
                           (##fx+ _%i89341%_ '1)))
                        (if (eq? _%key89315%_ _%k89344%_)
                            (let ()
                              (vector-set!
                               _%table89318%_
                               _%probe89339%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89318%_
                               (##fx+ _%probe89339%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89313%_
                                  (##fx- (&raw-table-count _%tab89313%_)
                                         '1)))))
                            (let ()
                              (_%loop89336%_
                               (let ((_%next-probe89355%_
                                      (fx+ _%start89332%_
                                           _%i89341%_
                                           (fx* _%i89341%_ _%i89341%_))))
                                 (##fxmodulo
                                  _%next-probe89355%_
                                  _%size89326%_))
                               (##fx+ _%i89341%_ '1))))))))))))
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
      (lambda (_%tab89311%_)
        (##unchecked-structure-ref
         _%tab89311%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab89309%_)
        (##unchecked-structure-ref
         _%tab89309%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab89306%_ _%val89307%_)
        (##unchecked-structure-set!
         _%tab89306%_
         _%val89307%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab89303%_ _%val89304%_)
        (##unchecked-structure-set!
         _%tab89303%_
         _%val89304%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint89279%_ _%klass89280%_ _%flags89281%_)
        (let ((_%gcht89283%_
               (__gc-table-new
                (if (fixnum? _%size-hint89279%_) _%size-hint89279%_ '16)
                _%flags89281%_)))
          (##structure _%klass89280%_ _%gcht89283%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint89288%_)
        (let* ((_%klass89290%_ __gc-table::t) (_%flags89292%_ '0))
          (make-gc-table__%
           _%size-hint89288%_
           _%klass89290%_
           _%flags89292%_))))
    (define make-gc-table__1
      (lambda (_%size-hint89294%_ _%klass89295%_)
        (let ((_%flags89297%_ '0))
          (make-gc-table__%
           _%size-hint89294%_
           _%klass89295%_
           _%flags89297%_))))
    (define make-gc-table
      (lambda _g90755_
        (let ((_g90754_ (##length _g90755_)))
          (cond ((##fx= _g90754_ 1)
                 (apply (lambda (_%size-hint89288%_)
                          (make-gc-table__0 _%size-hint89288%_))
                        _g90755_))
                ((##fx= _g90754_ 2)
                 (apply (lambda (_%size-hint89294%_ _%klass89295%_)
                          (make-gc-table__1 _%size-hint89294%_ _%klass89295%_))
                        _g90755_))
                ((##fx= _g90754_ 3)
                 (apply (lambda (_%size-hint89299%_
                                 _%klass89300%_
                                 _%flags89301%_)
                          (make-gc-table__%
                           _%size-hint89299%_
                           _%klass89300%_
                           _%flags89301%_))
                        _g90755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90755_))))))
    (define __gc-table-immediate
      (lambda (_%tab89270%_)
        (let ((_%$e89272%_ (&gc-table-immediate _%tab89270%_)))
          (if _%$e89272%_
              _%$e89272%_
              (let ((_%immediate89276%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab89270%_ _%immediate89276%_)
                _%immediate89276%_)))))
    (define __gc-table-new
      (lambda (_%size89260%_ _%flags89261%_)
        (let* ((_%flags89263%_
                (##fxand _%flags89261%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags89265%_
                (fxior _%flags89263%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht89267%_
                (##gc-hash-table-allocate
                 _%size89260%_
                 _%flags89265%_
                 __gc-table-loads)))
          _%gcht89267%_)))
    (define __gc-table-e
      (lambda (_%tab89255%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht89258%_ (&gc-table-gcht _%tab89255%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht89258%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht89258%_
              (begin
                (__gc-table-rehash! _%tab89255%_)
                (&gc-table-gcht _%tab89255%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab89246%_)
        (let* ((_%old-table89248%_ (&gc-table-gcht _%tab89246%_))
               (_%new-table89250%_
                (##gc-hash-table-resize! _%old-table89248%_ __gc-table-loads))
               (_%gcht89252%_
                (##gc-hash-table-rehash!
                 _%old-table89248%_
                 _%new-table89250%_)))
          (&gc-table-gcht-set! _%tab89246%_ _%gcht89252%_))))
    (define gc-table-ref
      (lambda (_%tab89230%_ _%key89231%_ _%default89232%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89231%_)
            (let ()
              (let* ((_%gcht89236%_ (__gc-table-e _%tab89230%_))
                     (_%value89238%_
                      (##gc-hash-table-ref _%gcht89236%_ _%key89231%_)))
                (if (eq? _%value89238%_ (macro-unused-obj))
                    _%default89232%_
                    _%value89238%_)))
            (let ((_%$e89240%_ (&gc-table-immediate _%tab89230%_)))
              (if _%$e89240%_
                  ((lambda (_%immediate89243%_)
                     (immediate-table-ref
                      _%immediate89243%_
                      _%key89231%_
                      _%default89232%_))
                   _%$e89240%_)
                  (let () _%default89232%_))))))
    (define gc-table-set!
      (lambda (_%tab89223%_ _%key89224%_ _%value89225%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89224%_)
            (let ((_%gcht89228%_ (__gc-table-e _%tab89223%_)))
              (if (##gc-hash-table-set!
                   _%gcht89228%_
                   _%key89224%_
                   _%value89225%_)
                  (begin
                    (__gc-table-rehash! _%tab89223%_)
                    (gc-table-set! _%tab89223%_ _%key89224%_ _%value89225%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab89223%_)
             _%key89224%_
             _%value89225%_))))
    (define gc-table-update!
      (lambda (_%tab89216%_ _%key89217%_ _%update89218%_ _%default89219%_)
        (if (##mem-allocated? _%key89217%_)
            (let ((_%value89221%_
                   (gc-table-ref _%tab89216%_ _%key89217%_ _%default89219%_)))
              (gc-table-set!
               _%tab89216%_
               _%key89217%_
               (_%update89218%_ _%value89221%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab89216%_)
             _%key89217%_
             _%update89218%_
             _%default89219%_))))
    (define gc-table-delete!
      (lambda (_%tab89204%_ _%key89205%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89205%_)
            (let ((_%gcht89209%_ (__gc-table-e _%tab89204%_)))
              (if (##gc-hash-table-set!
                   _%gcht89209%_
                   _%key89205%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab89204%_)
                    (gc-table-delete! _%tab89204%_ _%key89205%_))
                  '#!void))
            (let ((_%$e89211%_ (&gc-table-immediate _%tab89204%_)))
              (if _%$e89211%_
                  ((lambda (_%immediate89214%_)
                     (immediate-table-delete! _%immediate89214%_ _%key89205%_))
                   _%$e89211%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab89185%_ _%proc89186%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht89189%_ (__gc-table-e _%tab89185%_)))
            (let _%loop89191%_ ((_%i89193%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i89193%_ (##vector-length _%gcht89189%_))
                  (let ((_%key89195%_ (##vector-ref _%gcht89189%_ _%i89193%_)))
                    (if (and (not (eq? _%key89195%_ (macro-unused-obj)))
                             (not (eq? _%key89195%_ (macro-deleted-obj))))
                        (_%proc89186%_
                         _%key89195%_
                         (##vector-ref _%gcht89189%_ (##fx+ _%i89193%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop89191%_ (##fx+ _%i89193%_ '2))))
                  '#!void)))
          (let ((_%$e89199%_ (&gc-table-immediate _%tab89185%_)))
            (if _%$e89199%_
                ((lambda (_%immediate89202%_)
                   (raw-table-for-each _%immediate89202%_ _%proc89186%_))
                 _%$e89199%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab89173%_)
        (let* ((_%gcht89175%_ (__gc-table-e _%tab89173%_))
               (_%new-table89177%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht89175%_)
                 (macro-gc-hash-table-flags _%gcht89175%_)))
               (_%result89179%_
                (##structure
                 (##structure-type _%tab89173%_)
                 _%new-table89177%_
                 '#f)))
          (gc-table-for-each
           _%tab89173%_
           (lambda (_%k89182%_ _%v89183%_)
             (gc-table-set! _%result89179%_ _%k89182%_ _%v89183%_)))
          _%result89179%_)))
    (define gc-table-clear!
      (lambda (_%tab89166%_)
        (let* ((_%gcht89168%_ (__gc-table-e _%tab89166%_))
               (_%new-table89170%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht89168%_))))
          (&gc-table-gcht-set! _%tab89166%_ _%new-table89170%_)
          (&gc-table-immediate-set! _%tab89166%_ '#f))))
    (define gc-table-length
      (lambda (_%tab89158%_)
        (let ((_%gcht89160%_ (__gc-table-e _%tab89158%_)))
          (fx+ (macro-gc-hash-table-count _%gcht89160%_)
               (let ((_%$e89162%_ (&gc-table-immediate _%tab89158%_)))
                 (if _%$e89162%_
                     (&raw-table-count _%$e89162%_)
                     (let () '0)))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj89143%_)
        (declare (not interrupts-enabled))
        (let ((_%val89146%_ (gc-table-ref __object-eq-hash _%obj89143%_ '#f)))
          (if _%val89146%_
              _%val89146%_
              (let* ((_%mix89148%_ __object-eq-hash-next)
                     (_%ptr89150%_ (##type-cast _%obj89143%_ '0))
                     (_%h89152%_
                      (fxand (fxxor _%mix89148%_ _%ptr89150%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e89155%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e89155%_ _%$e89155%_ '0)))
                (gc-table-set! __object-eq-hash _%obj89143%_ _%h89152%_)
                _%h89152%_)))))))
