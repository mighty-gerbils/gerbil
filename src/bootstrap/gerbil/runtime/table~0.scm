(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712251110)
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
      (lambda (_%tab90733%_)
        (##unchecked-structure-ref
         _%tab90733%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90731%_)
        (##unchecked-structure-ref
         _%tab90731%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90729%_)
        (##unchecked-structure-ref
         _%tab90729%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90727%_)
        (##unchecked-structure-ref
         _%tab90727%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90725%_)
        (##unchecked-structure-ref
         _%tab90725%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90723%_)
        (##unchecked-structure-ref
         _%tab90723%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90720%_ _%val90721%_)
        (##unchecked-structure-set!
         _%tab90720%_
         _%val90721%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90717%_ _%val90718%_)
        (##unchecked-structure-set!
         _%tab90717%_
         _%val90718%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90714%_ _%val90715%_)
        (##unchecked-structure-set!
         _%tab90714%_
         _%val90715%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90711%_ _%val90712%_)
        (##unchecked-structure-set!
         _%tab90711%_
         _%val90712%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90708%_ _%val90709%_)
        (##unchecked-structure-set!
         _%tab90708%_
         _%val90709%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90705%_ _%val90706%_)
        (##unchecked-structure-set!
         _%tab90705%_
         _%val90706%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90703%_)
        (if (and (fixnum? _%size-hint90703%_) (##fx> _%size-hint90703%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90703%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint90679%_ _%hash90680%_ _%test90681%_ _%seed90682%_)
        (let* ((_%size90684%_ (raw-table-size-hint->size _%size-hint90679%_))
               (_%table90686%_
                (##make-vector _%size90684%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table90686%_
           '0
           (##fxquotient _%size90684%_ '2)
           _%hash90680%_
           _%test90681%_
           _%seed90682%_))))
    (define make-raw-table__0
      (lambda (_%size-hint90692%_ _%hash90693%_ _%test90694%_)
        (let ((_%seed90696%_ '0))
          (make-raw-table__%
           _%size-hint90692%_
           _%hash90693%_
           _%test90694%_
           _%seed90696%_))))
    (define make-raw-table
      (lambda _g90735_
        (let ((_g90734_ (##length _g90735_)))
          (cond ((##fx= _g90734_ 3)
                 (apply (lambda (_%size-hint90692%_
                                 _%hash90693%_
                                 _%test90694%_)
                          (make-raw-table__0
                           _%size-hint90692%_
                           _%hash90693%_
                           _%test90694%_))
                        _g90735_))
                ((##fx= _g90734_ 4)
                 (apply (lambda (_%size-hint90698%_
                                 _%hash90699%_
                                 _%test90700%_
                                 _%seed90701%_)
                          (make-raw-table__%
                           _%size-hint90698%_
                           _%hash90699%_
                           _%test90700%_
                           _%seed90701%_))
                        _g90735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90735_))))))
    (define raw-table-ref
      (lambda (_%tab90630%_ _%key90631%_ _%default90632%_)
        (let ((_%table90634%_ (&raw-table-table _%tab90630%_))
              (_%seed90635%_ (&raw-table-seed _%tab90630%_))
              (_%hash90636%_ (&raw-table-hash _%tab90630%_))
              (_%test90637%_ (&raw-table-test _%tab90630%_)))
          (let* ((_%h90639%_
                  (fxxor (_%hash90636%_ _%key90631%_) _%seed90635%_))
                 (_%size90642%_ (vector-length _%table90634%_))
                 (_%entries90645%_ (##fxquotient _%size90642%_ '2))
                 (_%start90648%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90639%_ _%entries90645%_)
                   '1)))
            (let _%loop90652%_ ((_%probe90655%_ _%start90648%_)
                                (_%i90657%_ '1)
                                (_%deleted90659%_ '#f))
              (let ((_%k90662%_ (vector-ref _%table90634%_ _%probe90655%_)))
                (if (eq? _%k90662%_ (macro-unused-obj))
                    (let () _%default90632%_)
                    (if (eq? _%k90662%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90652%_
                           (let ((_%next-probe90667%_
                                  (fx+ _%start90648%_
                                       _%i90657%_
                                       (fx* _%i90657%_ _%i90657%_))))
                             (##fxmodulo _%next-probe90667%_ _%size90642%_))
                           (##fx+ _%i90657%_ '1)
                           (let ((_%$e90670%_ _%deleted90659%_))
                             (if _%$e90670%_ _%$e90670%_ _%probe90655%_))))
                        (if (_%test90637%_ _%key90631%_ _%k90662%_)
                            (let ()
                              (vector-ref
                               _%table90634%_
                               (##fx+ _%probe90655%_ '1)))
                            (let ()
                              (_%loop90652%_
                               (let ((_%next-probe90675%_
                                      (fx+ _%start90648%_
                                           _%i90657%_
                                           (fx* _%i90657%_ _%i90657%_))))
                                 (##fxmodulo
                                  _%next-probe90675%_
                                  _%size90642%_))
                               (##fx+ _%i90657%_ '1)
                               _%deleted90659%_)))))))))))
    (define raw-table-set!
      (lambda (_%tab90626%_ _%key90627%_ _%value90628%_)
        (if (##fx< (&raw-table-free _%tab90626%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90626%_))
                    '4))
            (__raw-table-rehash! _%tab90626%_)
            '#!void)
        (__raw-table-set! _%tab90626%_ _%key90627%_ _%value90628%_)))
    (define raw-table-update!
      (lambda (_%tab90621%_ _%key90622%_ _%update90623%_ _%default90624%_)
        (if (##fx< (&raw-table-free _%tab90621%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90621%_))
                    '4))
            (__raw-table-rehash! _%tab90621%_)
            '#!void)
        (__raw-table-update!
         _%tab90621%_
         _%key90622%_
         _%update90623%_
         _%default90624%_)))
    (define raw-table-delete!
      (lambda (_%tab90578%_ _%key90579%_)
        (let ((_%table90581%_ (&raw-table-table _%tab90578%_))
              (_%seed90582%_ (&raw-table-seed _%tab90578%_))
              (_%hash90583%_ (&raw-table-hash _%tab90578%_))
              (_%test90584%_ (&raw-table-test _%tab90578%_)))
          (let* ((_%h90586%_
                  (fxxor (_%hash90583%_ _%key90579%_) _%seed90582%_))
                 (_%size90589%_ (vector-length _%table90581%_))
                 (_%entries90592%_ (##fxquotient _%size90589%_ '2))
                 (_%start90595%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90586%_ _%entries90592%_)
                   '1)))
            (let _%loop90599%_ ((_%probe90602%_ _%start90595%_)
                                (_%i90604%_ '1))
              (let ((_%k90607%_ (vector-ref _%table90581%_ _%probe90602%_)))
                (if (eq? _%k90607%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90607%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90599%_
                           (let ((_%next-probe90612%_
                                  (fx+ _%start90595%_
                                       _%i90604%_
                                       (fx* _%i90604%_ _%i90604%_))))
                             (##fxmodulo _%next-probe90612%_ _%size90589%_))
                           (##fx+ _%i90604%_ '1)))
                        (if (_%test90584%_ _%key90579%_ _%k90607%_)
                            (let ()
                              (vector-set!
                               _%table90581%_
                               _%probe90602%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90581%_
                               (##fx+ _%probe90602%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90578%_
                                  (##fx- (&raw-table-count _%tab90578%_)
                                         '1)))))
                            (let ()
                              (_%loop90599%_
                               (let ((_%next-probe90618%_
                                      (fx+ _%start90595%_
                                           _%i90604%_
                                           (fx* _%i90604%_ _%i90604%_))))
                                 (##fxmodulo
                                  _%next-probe90618%_
                                  _%size90589%_))
                               (##fx+ _%i90604%_ '1))))))))))))
    (define raw-table-for-each
      (lambda (_%tab90562%_ _%proc90563%_)
        (let* ((_%table90565%_ (&raw-table-table _%tab90562%_))
               (_%size90567%_ (vector-length _%table90565%_)))
          (let _%loop90570%_ ((_%i90572%_ '0))
            (if (##fx< _%i90572%_ _%size90567%_)
                (begin
                  (let ((_%key90574%_ (vector-ref _%table90565%_ _%i90572%_)))
                    (if (and (not (eq? _%key90574%_ (macro-unused-obj)))
                             (not (eq? _%key90574%_ (macro-deleted-obj))))
                        (let ((_%value90576%_
                               (vector-ref
                                _%table90565%_
                                (##fx+ _%i90572%_ '1))))
                          (_%proc90563%_ _%key90574%_ _%value90576%_))
                        '#!void))
                  (_%loop90570%_ (##fx+ _%i90572%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab90558%_)
        (let ((_%new-tab90560%_ (##structure-copy _%tab90558%_)))
          (&raw-table-table-set!
           _%new-tab90560%_
           (vector-copy (&raw-table-table _%tab90558%_)))
          _%new-tab90560%_)))
    (define raw-table-clear!
      (lambda (_%tab90556%_)
        (vector-fill! (&raw-table-table _%tab90556%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab90556%_ '0)
        (&raw-table-free-set!
         _%tab90556%_
         (##fxquotient (vector-length (&raw-table-table _%tab90556%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab90506%_ _%key90507%_ _%value90508%_)
        (let ((_%table90510%_ (&raw-table-table _%tab90506%_))
              (_%seed90511%_ (&raw-table-seed _%tab90506%_))
              (_%hash90512%_ (&raw-table-hash _%tab90506%_))
              (_%test90513%_ (&raw-table-test _%tab90506%_)))
          (let* ((_%h90515%_
                  (fxxor (_%hash90512%_ _%key90507%_) _%seed90511%_))
                 (_%size90518%_ (vector-length _%table90510%_))
                 (_%entries90521%_ (##fxquotient _%size90518%_ '2))
                 (_%start90524%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90515%_ _%entries90521%_)
                   '1)))
            (let _%loop90528%_ ((_%probe90531%_ _%start90524%_)
                                (_%i90533%_ '1)
                                (_%deleted90535%_ '#f))
              (let ((_%k90538%_ (vector-ref _%table90510%_ _%probe90531%_)))
                (if (eq? _%k90538%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90535%_
                          (begin
                            (vector-set!
                             _%table90510%_
                             _%deleted90535%_
                             _%key90507%_)
                            (vector-set!
                             _%table90510%_
                             (##fx+ _%deleted90535%_ '1)
                             _%value90508%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90506%_
                                (##fx+ (&raw-table-count _%tab90506%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90510%_
                             _%probe90531%_
                             _%key90507%_)
                            (vector-set!
                             _%table90510%_
                             (##fx+ _%probe90531%_ '1)
                             _%value90508%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90506%_
                                (##fx- (&raw-table-free _%tab90506%_) '1))
                               (&raw-table-count-set!
                                _%tab90506%_
                                (##fx+ (&raw-table-count _%tab90506%_)
                                       '1)))))))
                    (if (eq? _%k90538%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90528%_
                           (let ((_%next-probe90545%_
                                  (fx+ _%start90524%_
                                       _%i90533%_
                                       (fx* _%i90533%_ _%i90533%_))))
                             (##fxmodulo _%next-probe90545%_ _%size90518%_))
                           (##fx+ _%i90533%_ '1)
                           (let ((_%$e90548%_ _%deleted90535%_))
                             (if _%$e90548%_ _%$e90548%_ _%probe90531%_))))
                        (if (_%test90513%_ _%key90507%_ _%k90538%_)
                            (let ()
                              (vector-set!
                               _%table90510%_
                               _%probe90531%_
                               _%key90507%_)
                              (vector-set!
                               _%table90510%_
                               (##fx+ _%probe90531%_ '1)
                               _%value90508%_))
                            (let ()
                              (_%loop90528%_
                               (let ((_%next-probe90553%_
                                      (fx+ _%start90524%_
                                           _%i90533%_
                                           (fx* _%i90533%_ _%i90533%_))))
                                 (##fxmodulo
                                  _%next-probe90553%_
                                  _%size90518%_))
                               (##fx+ _%i90533%_ '1)
                               _%deleted90535%_)))))))))))
    (define __raw-table-update!
      (lambda (_%tab90455%_ _%key90456%_ _%update90457%_ _%default90458%_)
        (let ((_%table90460%_ (&raw-table-table _%tab90455%_))
              (_%seed90461%_ (&raw-table-seed _%tab90455%_))
              (_%hash90462%_ (&raw-table-hash _%tab90455%_))
              (_%test90463%_ (&raw-table-test _%tab90455%_)))
          (let* ((_%h90465%_
                  (fxxor (_%hash90462%_ _%key90456%_) _%seed90461%_))
                 (_%size90468%_ (vector-length _%table90460%_))
                 (_%entries90471%_ (##fxquotient _%size90468%_ '2))
                 (_%start90474%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90465%_ _%entries90471%_)
                   '1)))
            (let _%loop90478%_ ((_%probe90481%_ _%start90474%_)
                                (_%i90483%_ '1)
                                (_%deleted90485%_ '#f))
              (let ((_%k90488%_ (vector-ref _%table90460%_ _%probe90481%_)))
                (if (eq? _%k90488%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90485%_
                          (begin
                            (vector-set!
                             _%table90460%_
                             _%deleted90485%_
                             _%key90456%_)
                            (vector-set!
                             _%table90460%_
                             (##fx+ _%deleted90485%_ '1)
                             (_%update90457%_ _%default90458%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90455%_
                                (##fx+ (&raw-table-count _%tab90455%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90460%_
                             _%probe90481%_
                             _%key90456%_)
                            (vector-set!
                             _%table90460%_
                             (##fx+ _%probe90481%_ '1)
                             (_%update90457%_ _%default90458%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90455%_
                                (##fx- (&raw-table-free _%tab90455%_) '1))
                               (&raw-table-count-set!
                                _%tab90455%_
                                (##fx+ (&raw-table-count _%tab90455%_)
                                       '1)))))))
                    (if (eq? _%k90488%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90478%_
                           (let ((_%next-probe90495%_
                                  (fx+ _%start90474%_
                                       _%i90483%_
                                       (fx* _%i90483%_ _%i90483%_))))
                             (##fxmodulo _%next-probe90495%_ _%size90468%_))
                           (##fx+ _%i90483%_ '1)
                           (let ((_%$e90498%_ _%deleted90485%_))
                             (if _%$e90498%_ _%$e90498%_ _%probe90481%_))))
                        (if (_%test90463%_ _%key90456%_ _%k90488%_)
                            (let ()
                              (vector-set!
                               _%table90460%_
                               _%probe90481%_
                               _%key90456%_)
                              (vector-set!
                               _%table90460%_
                               (##fx+ _%probe90481%_ '1)
                               (_%update90457%_
                                (vector-ref
                                 _%table90460%_
                                 (##fx+ _%probe90481%_ '1)))))
                            (let ()
                              (_%loop90478%_
                               (let ((_%next-probe90503%_
                                      (fx+ _%start90474%_
                                           _%i90483%_
                                           (fx* _%i90483%_ _%i90483%_))))
                                 (##fxmodulo
                                  _%next-probe90503%_
                                  _%size90468%_))
                               (##fx+ _%i90483%_ '1)
                               _%deleted90485%_)))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab90436%_)
        (let* ((_%old-table90438%_ (&raw-table-table _%tab90436%_))
               (_%old-size90440%_ (vector-length _%old-table90438%_))
               (_%new-size90442%_
                (if (##fx< (&raw-table-count _%tab90436%_)
                           (##fxquotient _%old-size90440%_ '4))
                    (vector-length _%old-table90438%_)
                    (##fx* '2 (vector-length _%old-table90438%_))))
               (_%new-table90444%_
                (##make-vector _%new-size90442%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab90436%_ _%new-table90444%_)
          (&raw-table-count-set! _%tab90436%_ '0)
          (&raw-table-free-set!
           _%tab90436%_
           (##fxquotient _%new-size90442%_ '2))
          (let _%lp90447%_ ((_%i90449%_ '0))
            (if (##fx< _%i90449%_ _%old-size90440%_)
                (begin
                  (let ((_%key90451%_
                         (vector-ref _%old-table90438%_ _%i90449%_)))
                    (if (and (not (eq? _%key90451%_ (macro-unused-obj)))
                             (not (eq? _%key90451%_ (macro-deleted-obj))))
                        (let ((_%value90453%_
                               (vector-ref
                                _%old-table90438%_
                                (##fx+ _%i90449%_ '1))))
                          (__raw-table-set!
                           _%tab90436%_
                           _%key90451%_
                           _%value90453%_))
                        '#!void))
                  (_%lp90447%_ (##fx+ _%i90449%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj90428%_)
        (let ((_%t90430%_ (##type _%obj90428%_)))
          (if (##fx= (##fxand _%t90430%_ '1) '0)
              (let ()
                (fxand (##type-cast _%obj90428%_ (macro-type-fixnum))
                       (macro-max-fixnum32)))
              (if (symbolic? _%obj90428%_)
                  (let () (symbolic-hash _%obj90428%_))
                  (if (procedure? _%obj90428%_)
                      (let () (procedure-hash _%obj90428%_))
                      (let ()
                        (fxand (__eq-hash _%obj90428%_)
                               (macro-max-fixnum32)))))))))
    (define procedure-hash
      (lambda (_%obj90424%_)
        (let ((_%h90426%_
               (if (##closure? _%obj90424%_)
                   (__eq-hash _%obj90424%_)
                   (##type-cast _%obj90424%_ '0))))
          (fxand _%h90426%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj90421%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj90421%_)))
    (define eqv-hash
      (lambda (_%obj90411%_)
        (letrec ((_%combine90413%_
                  (lambda (_%a90418%_ _%b90419%_)
                    (fxand (##fx* (##fx+ _%a90418%_
                                         (fxarithmetic-shift-left
                                          _%b90419%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash90414%_
                  (lambda (_%obj90416%_)
                    (macro-number-dispatch
                     _%obj90416%_
                     (eq-hash _%obj90416%_)
                     (fxand _%obj90416%_ (macro-max-fixnum32))
                     (modulo _%obj90416%_ '331804481)
                     (_%combine90413%_
                      (_%hash90414%_ (macro-ratnum-numerator _%obj90416%_))
                      (_%hash90414%_ (macro-ratnum-denominator _%obj90416%_)))
                     (_%combine90413%_
                      (##u16vector-ref _%obj90416%_ '0)
                      (_%combine90413%_
                       (##u16vector-ref _%obj90416%_ '1)
                       (_%combine90413%_
                        (##u16vector-ref _%obj90416%_ '2)
                        (##u16vector-ref _%obj90416%_ '3))))
                     (_%combine90413%_
                      (_%hash90414%_ (macro-cpxnum-real _%obj90416%_))
                      (_%hash90414%_ (macro-cpxnum-imag _%obj90416%_)))))))
          (_%hash90414%_ _%obj90411%_))))
    (define symbolic?
      (lambda (_%obj90406%_)
        (let ((_%$e90408%_ (symbol? _%obj90406%_)))
          (if _%$e90408%_ _%$e90408%_ (keyword? _%obj90406%_)))))
    (define symbolic-hash (lambda (_%obj90404%_) (macro-slot '1 _%obj90404%_)))
    (define string-hash (lambda (_%obj90402%_) (##string=?-hash _%obj90402%_)))
    (define immediate-hash
      (lambda (_%obj90400%_) (##type-cast _%obj90400%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint90381%_ _%seed90383%_)
        (make-raw-table__% _%size-hint90381%_ eq-hash eq? _%seed90383%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint90389%_ '#f) (_%seed90391%_ '0))
          (make-eq-table__% _%size-hint90389%_ _%seed90391%_))))
    (define make-eq-table__1
      (lambda (_%size-hint90393%_)
        (let ((_%seed90395%_ '0))
          (make-eq-table__% _%size-hint90393%_ _%seed90395%_))))
    (define make-eq-table
      (lambda _g90737_
        (let ((_g90736_ (##length _g90737_)))
          (cond ((##fx= _g90736_ 0)
                 (apply (lambda () (make-eq-table__0)) _g90737_))
                ((##fx= _g90736_ 1)
                 (apply (lambda (_%size-hint90393%_)
                          (make-eq-table__1 _%size-hint90393%_))
                        _g90737_))
                ((##fx= _g90736_ 2)
                 (apply (lambda (_%size-hint90397%_ _%seed90398%_)
                          (make-eq-table__% _%size-hint90397%_ _%seed90398%_))
                        _g90737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90737_))))))
    (define eq-table-ref
      (lambda (_%tab90334%_ _%key90335%_ _%default90336%_)
        (let ((_%table90338%_ (&raw-table-table _%tab90334%_))
              (_%seed90339%_ (&raw-table-seed _%tab90334%_)))
          (let* ((_%h90341%_ (fxxor (eq-hash _%key90335%_) _%seed90339%_))
                 (_%size90344%_ (vector-length _%table90338%_))
                 (_%entries90347%_ (##fxquotient _%size90344%_ '2))
                 (_%start90350%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90341%_ _%entries90347%_)
                   '1)))
            (let _%loop90354%_ ((_%probe90357%_ _%start90350%_)
                                (_%i90359%_ '1)
                                (_%deleted90361%_ '#f))
              (let ((_%k90364%_ (vector-ref _%table90338%_ _%probe90357%_)))
                (if (eq? _%k90364%_ (macro-unused-obj))
                    (let () _%default90336%_)
                    (if (eq? _%k90364%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90354%_
                           (let ((_%next-probe90369%_
                                  (fx+ _%start90350%_
                                       _%i90359%_
                                       (fx* _%i90359%_ _%i90359%_))))
                             (##fxmodulo _%next-probe90369%_ _%size90344%_))
                           (##fx+ _%i90359%_ '1)
                           (let ((_%$e90372%_ _%deleted90361%_))
                             (if _%$e90372%_ _%$e90372%_ _%probe90357%_))))
                        (if (eq? _%key90335%_ _%k90364%_)
                            (let ()
                              (vector-ref
                               _%table90338%_
                               (##fx+ _%probe90357%_ '1)))
                            (let ()
                              (_%loop90354%_
                               (let ((_%next-probe90377%_
                                      (fx+ _%start90350%_
                                           _%i90359%_
                                           (fx* _%i90359%_ _%i90359%_))))
                                 (##fxmodulo
                                  _%next-probe90377%_
                                  _%size90344%_))
                               (##fx+ _%i90359%_ '1)
                               _%deleted90361%_)))))))))))
    (define eq-table-set!
      (lambda (_%tab90330%_ _%key90331%_ _%value90332%_)
        (if (##fx< (&raw-table-free _%tab90330%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90330%_))
                    '4))
            (__raw-table-rehash! _%tab90330%_)
            '#!void)
        (__eq-table-set! _%tab90330%_ _%key90331%_ _%value90332%_)))
    (define __eq-table-set!
      (lambda (_%tab90281%_ _%key90282%_ _%value90283%_)
        (let ((_%table90286%_ (&raw-table-table _%tab90281%_))
              (_%seed90287%_ (&raw-table-seed _%tab90281%_)))
          (let* ((_%h90289%_ (fxxor (eq-hash _%key90282%_) _%seed90287%_))
                 (_%size90292%_ (vector-length _%table90286%_))
                 (_%entries90295%_ (##fxquotient _%size90292%_ '2))
                 (_%start90298%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90289%_ _%entries90295%_)
                   '1)))
            (let _%loop90302%_ ((_%probe90305%_ _%start90298%_)
                                (_%i90307%_ '1)
                                (_%deleted90309%_ '#f))
              (let ((_%k90312%_ (vector-ref _%table90286%_ _%probe90305%_)))
                (if (eq? _%k90312%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90309%_
                          (begin
                            (vector-set!
                             _%table90286%_
                             _%deleted90309%_
                             _%key90282%_)
                            (vector-set!
                             _%table90286%_
                             (##fx+ _%deleted90309%_ '1)
                             _%value90283%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90281%_
                                (##fx+ (&raw-table-count _%tab90281%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90286%_
                             _%probe90305%_
                             _%key90282%_)
                            (vector-set!
                             _%table90286%_
                             (##fx+ _%probe90305%_ '1)
                             _%value90283%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90281%_
                                (##fx- (&raw-table-free _%tab90281%_) '1))
                               (&raw-table-count-set!
                                _%tab90281%_
                                (##fx+ (&raw-table-count _%tab90281%_)
                                       '1)))))))
                    (if (eq? _%k90312%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90302%_
                           (let ((_%next-probe90319%_
                                  (fx+ _%start90298%_
                                       _%i90307%_
                                       (fx* _%i90307%_ _%i90307%_))))
                             (##fxmodulo _%next-probe90319%_ _%size90292%_))
                           (##fx+ _%i90307%_ '1)
                           (let ((_%$e90322%_ _%deleted90309%_))
                             (if _%$e90322%_ _%$e90322%_ _%probe90305%_))))
                        (if (eq? _%key90282%_ _%k90312%_)
                            (let ()
                              (vector-set!
                               _%table90286%_
                               _%probe90305%_
                               _%key90282%_)
                              (vector-set!
                               _%table90286%_
                               (##fx+ _%probe90305%_ '1)
                               _%value90283%_))
                            (let ()
                              (_%loop90302%_
                               (let ((_%next-probe90327%_
                                      (fx+ _%start90298%_
                                           _%i90307%_
                                           (fx* _%i90307%_ _%i90307%_))))
                                 (##fxmodulo
                                  _%next-probe90327%_
                                  _%size90292%_))
                               (##fx+ _%i90307%_ '1)
                               _%deleted90309%_)))))))))))
    (define eq-table-update!
      (lambda (_%tab90276%_
               _%key90277%_
               _%eq-table-update!90278%_
               _%default90279%_)
        (if (##fx< (&raw-table-free _%tab90276%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90276%_))
                    '4))
            (__raw-table-rehash! _%tab90276%_)
            '#!void)
        (__eq-table-update!
         _%tab90276%_
         _%key90277%_
         _%eq-table-update!90278%_
         _%default90279%_)))
    (define __eq-table-update!
      (lambda (_%tab90226%_
               _%key90227%_
               _%eq-table-update!90228%_
               _%default90229%_)
        (let ((_%table90232%_ (&raw-table-table _%tab90226%_))
              (_%seed90233%_ (&raw-table-seed _%tab90226%_)))
          (let* ((_%h90235%_ (fxxor (eq-hash _%key90227%_) _%seed90233%_))
                 (_%size90238%_ (vector-length _%table90232%_))
                 (_%entries90241%_ (##fxquotient _%size90238%_ '2))
                 (_%start90244%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90235%_ _%entries90241%_)
                   '1)))
            (let _%loop90248%_ ((_%probe90251%_ _%start90244%_)
                                (_%i90253%_ '1)
                                (_%deleted90255%_ '#f))
              (let ((_%k90258%_ (vector-ref _%table90232%_ _%probe90251%_)))
                (if (eq? _%k90258%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90255%_
                          (begin
                            (vector-set!
                             _%table90232%_
                             _%deleted90255%_
                             _%key90227%_)
                            (vector-set!
                             _%table90232%_
                             (##fx+ _%deleted90255%_ '1)
                             (_%eq-table-update!90228%_ _%default90229%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90226%_
                                (##fx+ (&raw-table-count _%tab90226%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90232%_
                             _%probe90251%_
                             _%key90227%_)
                            (vector-set!
                             _%table90232%_
                             (##fx+ _%probe90251%_ '1)
                             (_%eq-table-update!90228%_ _%default90229%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90226%_
                                (##fx- (&raw-table-free _%tab90226%_) '1))
                               (&raw-table-count-set!
                                _%tab90226%_
                                (##fx+ (&raw-table-count _%tab90226%_)
                                       '1)))))))
                    (if (eq? _%k90258%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90248%_
                           (let ((_%next-probe90265%_
                                  (fx+ _%start90244%_
                                       _%i90253%_
                                       (fx* _%i90253%_ _%i90253%_))))
                             (##fxmodulo _%next-probe90265%_ _%size90238%_))
                           (##fx+ _%i90253%_ '1)
                           (let ((_%$e90268%_ _%deleted90255%_))
                             (if _%$e90268%_ _%$e90268%_ _%probe90251%_))))
                        (if (eq? _%key90227%_ _%k90258%_)
                            (let ()
                              (vector-set!
                               _%table90232%_
                               _%probe90251%_
                               _%key90227%_)
                              (vector-set!
                               _%table90232%_
                               (##fx+ _%probe90251%_ '1)
                               (_%eq-table-update!90228%_
                                (vector-ref
                                 _%table90232%_
                                 (##fx+ _%probe90251%_ '1)))))
                            (let ()
                              (_%loop90248%_
                               (let ((_%next-probe90273%_
                                      (fx+ _%start90244%_
                                           _%i90253%_
                                           (fx* _%i90253%_ _%i90253%_))))
                                 (##fxmodulo
                                  _%next-probe90273%_
                                  _%size90238%_))
                               (##fx+ _%i90253%_ '1)
                               _%deleted90255%_)))))))))))
    (define eq-table-delete!
      (lambda (_%tab90181%_ _%key90183%_)
        (let ((_%table90186%_ (&raw-table-table _%tab90181%_))
              (_%seed90188%_ (&raw-table-seed _%tab90181%_)))
          (let* ((_%h90191%_ (fxxor (eq-hash _%key90183%_) _%seed90188%_))
                 (_%size90194%_ (vector-length _%table90186%_))
                 (_%entries90197%_ (##fxquotient _%size90194%_ '2))
                 (_%start90200%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90191%_ _%entries90197%_)
                   '1)))
            (let _%loop90204%_ ((_%probe90207%_ _%start90200%_)
                                (_%i90209%_ '1))
              (let ((_%k90212%_ (vector-ref _%table90186%_ _%probe90207%_)))
                (if (eq? _%k90212%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90212%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90204%_
                           (let ((_%next-probe90217%_
                                  (fx+ _%start90200%_
                                       _%i90209%_
                                       (fx* _%i90209%_ _%i90209%_))))
                             (##fxmodulo _%next-probe90217%_ _%size90194%_))
                           (##fx+ _%i90209%_ '1)))
                        (if (eq? _%key90183%_ _%k90212%_)
                            (let ()
                              (vector-set!
                               _%table90186%_
                               _%probe90207%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90186%_
                               (##fx+ _%probe90207%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90181%_
                                  (##fx- (&raw-table-count _%tab90181%_)
                                         '1)))))
                            (let ()
                              (_%loop90204%_
                               (let ((_%next-probe90223%_
                                      (fx+ _%start90200%_
                                           _%i90209%_
                                           (fx* _%i90209%_ _%i90209%_))))
                                 (##fxmodulo
                                  _%next-probe90223%_
                                  _%size90194%_))
                               (##fx+ _%i90209%_ '1))))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint90162%_ _%seed90164%_)
        (make-raw-table__% _%size-hint90162%_ eqv-hash eqv? _%seed90164%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint90170%_ '#f) (_%seed90172%_ '0))
          (make-eqv-table__% _%size-hint90170%_ _%seed90172%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint90174%_)
        (let ((_%seed90176%_ '0))
          (make-eqv-table__% _%size-hint90174%_ _%seed90176%_))))
    (define make-eqv-table
      (lambda _g90739_
        (let ((_g90738_ (##length _g90739_)))
          (cond ((##fx= _g90738_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g90739_))
                ((##fx= _g90738_ 1)
                 (apply (lambda (_%size-hint90174%_)
                          (make-eqv-table__1 _%size-hint90174%_))
                        _g90739_))
                ((##fx= _g90738_ 2)
                 (apply (lambda (_%size-hint90178%_ _%seed90179%_)
                          (make-eqv-table__% _%size-hint90178%_ _%seed90179%_))
                        _g90739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90739_))))))
    (define eqv-table-ref
      (lambda (_%tab90115%_ _%key90116%_ _%default90117%_)
        (let ((_%table90119%_ (&raw-table-table _%tab90115%_))
              (_%seed90120%_ (&raw-table-seed _%tab90115%_)))
          (let* ((_%h90122%_ (fxxor (eqv-hash _%key90116%_) _%seed90120%_))
                 (_%size90125%_ (vector-length _%table90119%_))
                 (_%entries90128%_ (##fxquotient _%size90125%_ '2))
                 (_%start90131%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90122%_ _%entries90128%_)
                   '1)))
            (let _%loop90135%_ ((_%probe90138%_ _%start90131%_)
                                (_%i90140%_ '1)
                                (_%deleted90142%_ '#f))
              (let ((_%k90145%_ (vector-ref _%table90119%_ _%probe90138%_)))
                (if (eq? _%k90145%_ (macro-unused-obj))
                    (let () _%default90117%_)
                    (if (eq? _%k90145%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90135%_
                           (let ((_%next-probe90150%_
                                  (fx+ _%start90131%_
                                       _%i90140%_
                                       (fx* _%i90140%_ _%i90140%_))))
                             (##fxmodulo _%next-probe90150%_ _%size90125%_))
                           (##fx+ _%i90140%_ '1)
                           (let ((_%$e90153%_ _%deleted90142%_))
                             (if _%$e90153%_ _%$e90153%_ _%probe90138%_))))
                        (if (eqv? _%key90116%_ _%k90145%_)
                            (let ()
                              (vector-ref
                               _%table90119%_
                               (##fx+ _%probe90138%_ '1)))
                            (let ()
                              (_%loop90135%_
                               (let ((_%next-probe90158%_
                                      (fx+ _%start90131%_
                                           _%i90140%_
                                           (fx* _%i90140%_ _%i90140%_))))
                                 (##fxmodulo
                                  _%next-probe90158%_
                                  _%size90125%_))
                               (##fx+ _%i90140%_ '1)
                               _%deleted90142%_)))))))))))
    (define eqv-table-set!
      (lambda (_%tab90111%_ _%key90112%_ _%value90113%_)
        (if (##fx< (&raw-table-free _%tab90111%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90111%_))
                    '4))
            (__raw-table-rehash! _%tab90111%_)
            '#!void)
        (__eqv-table-set! _%tab90111%_ _%key90112%_ _%value90113%_)))
    (define __eqv-table-set!
      (lambda (_%tab90062%_ _%key90063%_ _%value90064%_)
        (let ((_%table90067%_ (&raw-table-table _%tab90062%_))
              (_%seed90068%_ (&raw-table-seed _%tab90062%_)))
          (let* ((_%h90070%_ (fxxor (eqv-hash _%key90063%_) _%seed90068%_))
                 (_%size90073%_ (vector-length _%table90067%_))
                 (_%entries90076%_ (##fxquotient _%size90073%_ '2))
                 (_%start90079%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90070%_ _%entries90076%_)
                   '1)))
            (let _%loop90083%_ ((_%probe90086%_ _%start90079%_)
                                (_%i90088%_ '1)
                                (_%deleted90090%_ '#f))
              (let ((_%k90093%_ (vector-ref _%table90067%_ _%probe90086%_)))
                (if (eq? _%k90093%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90090%_
                          (begin
                            (vector-set!
                             _%table90067%_
                             _%deleted90090%_
                             _%key90063%_)
                            (vector-set!
                             _%table90067%_
                             (##fx+ _%deleted90090%_ '1)
                             _%value90064%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90062%_
                                (##fx+ (&raw-table-count _%tab90062%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90067%_
                             _%probe90086%_
                             _%key90063%_)
                            (vector-set!
                             _%table90067%_
                             (##fx+ _%probe90086%_ '1)
                             _%value90064%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90062%_
                                (##fx- (&raw-table-free _%tab90062%_) '1))
                               (&raw-table-count-set!
                                _%tab90062%_
                                (##fx+ (&raw-table-count _%tab90062%_)
                                       '1)))))))
                    (if (eq? _%k90093%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90083%_
                           (let ((_%next-probe90100%_
                                  (fx+ _%start90079%_
                                       _%i90088%_
                                       (fx* _%i90088%_ _%i90088%_))))
                             (##fxmodulo _%next-probe90100%_ _%size90073%_))
                           (##fx+ _%i90088%_ '1)
                           (let ((_%$e90103%_ _%deleted90090%_))
                             (if _%$e90103%_ _%$e90103%_ _%probe90086%_))))
                        (if (eqv? _%key90063%_ _%k90093%_)
                            (let ()
                              (vector-set!
                               _%table90067%_
                               _%probe90086%_
                               _%key90063%_)
                              (vector-set!
                               _%table90067%_
                               (##fx+ _%probe90086%_ '1)
                               _%value90064%_))
                            (let ()
                              (_%loop90083%_
                               (let ((_%next-probe90108%_
                                      (fx+ _%start90079%_
                                           _%i90088%_
                                           (fx* _%i90088%_ _%i90088%_))))
                                 (##fxmodulo
                                  _%next-probe90108%_
                                  _%size90073%_))
                               (##fx+ _%i90088%_ '1)
                               _%deleted90090%_)))))))))))
    (define eqv-table-update!
      (lambda (_%tab90057%_
               _%key90058%_
               _%eqv-table-update!90059%_
               _%default90060%_)
        (if (##fx< (&raw-table-free _%tab90057%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90057%_))
                    '4))
            (__raw-table-rehash! _%tab90057%_)
            '#!void)
        (__eqv-table-update!
         _%tab90057%_
         _%key90058%_
         _%eqv-table-update!90059%_
         _%default90060%_)))
    (define __eqv-table-update!
      (lambda (_%tab90007%_
               _%key90008%_
               _%eqv-table-update!90009%_
               _%default90010%_)
        (let ((_%table90013%_ (&raw-table-table _%tab90007%_))
              (_%seed90014%_ (&raw-table-seed _%tab90007%_)))
          (let* ((_%h90016%_ (fxxor (eqv-hash _%key90008%_) _%seed90014%_))
                 (_%size90019%_ (vector-length _%table90013%_))
                 (_%entries90022%_ (##fxquotient _%size90019%_ '2))
                 (_%start90025%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90016%_ _%entries90022%_)
                   '1)))
            (let _%loop90029%_ ((_%probe90032%_ _%start90025%_)
                                (_%i90034%_ '1)
                                (_%deleted90036%_ '#f))
              (let ((_%k90039%_ (vector-ref _%table90013%_ _%probe90032%_)))
                (if (eq? _%k90039%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90036%_
                          (begin
                            (vector-set!
                             _%table90013%_
                             _%deleted90036%_
                             _%key90008%_)
                            (vector-set!
                             _%table90013%_
                             (##fx+ _%deleted90036%_ '1)
                             (_%eqv-table-update!90009%_ _%default90010%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90007%_
                                (##fx+ (&raw-table-count _%tab90007%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90013%_
                             _%probe90032%_
                             _%key90008%_)
                            (vector-set!
                             _%table90013%_
                             (##fx+ _%probe90032%_ '1)
                             (_%eqv-table-update!90009%_ _%default90010%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90007%_
                                (##fx- (&raw-table-free _%tab90007%_) '1))
                               (&raw-table-count-set!
                                _%tab90007%_
                                (##fx+ (&raw-table-count _%tab90007%_)
                                       '1)))))))
                    (if (eq? _%k90039%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90029%_
                           (let ((_%next-probe90046%_
                                  (fx+ _%start90025%_
                                       _%i90034%_
                                       (fx* _%i90034%_ _%i90034%_))))
                             (##fxmodulo _%next-probe90046%_ _%size90019%_))
                           (##fx+ _%i90034%_ '1)
                           (let ((_%$e90049%_ _%deleted90036%_))
                             (if _%$e90049%_ _%$e90049%_ _%probe90032%_))))
                        (if (eqv? _%key90008%_ _%k90039%_)
                            (let ()
                              (vector-set!
                               _%table90013%_
                               _%probe90032%_
                               _%key90008%_)
                              (vector-set!
                               _%table90013%_
                               (##fx+ _%probe90032%_ '1)
                               (_%eqv-table-update!90009%_
                                (vector-ref
                                 _%table90013%_
                                 (##fx+ _%probe90032%_ '1)))))
                            (let ()
                              (_%loop90029%_
                               (let ((_%next-probe90054%_
                                      (fx+ _%start90025%_
                                           _%i90034%_
                                           (fx* _%i90034%_ _%i90034%_))))
                                 (##fxmodulo
                                  _%next-probe90054%_
                                  _%size90019%_))
                               (##fx+ _%i90034%_ '1)
                               _%deleted90036%_)))))))))))
    (define eqv-table-delete!
      (lambda (_%tab89962%_ _%key89964%_)
        (let ((_%table89967%_ (&raw-table-table _%tab89962%_))
              (_%seed89969%_ (&raw-table-seed _%tab89962%_)))
          (let* ((_%h89972%_ (fxxor (eqv-hash _%key89964%_) _%seed89969%_))
                 (_%size89975%_ (vector-length _%table89967%_))
                 (_%entries89978%_ (##fxquotient _%size89975%_ '2))
                 (_%start89981%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89972%_ _%entries89978%_)
                   '1)))
            (let _%loop89985%_ ((_%probe89988%_ _%start89981%_)
                                (_%i89990%_ '1))
              (let ((_%k89993%_ (vector-ref _%table89967%_ _%probe89988%_)))
                (if (eq? _%k89993%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89993%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89985%_
                           (let ((_%next-probe89998%_
                                  (fx+ _%start89981%_
                                       _%i89990%_
                                       (fx* _%i89990%_ _%i89990%_))))
                             (##fxmodulo _%next-probe89998%_ _%size89975%_))
                           (##fx+ _%i89990%_ '1)))
                        (if (eqv? _%key89964%_ _%k89993%_)
                            (let ()
                              (vector-set!
                               _%table89967%_
                               _%probe89988%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89967%_
                               (##fx+ _%probe89988%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89962%_
                                  (##fx- (&raw-table-count _%tab89962%_)
                                         '1)))))
                            (let ()
                              (_%loop89985%_
                               (let ((_%next-probe90004%_
                                      (fx+ _%start89981%_
                                           _%i89990%_
                                           (fx* _%i89990%_ _%i89990%_))))
                                 (##fxmodulo
                                  _%next-probe90004%_
                                  _%size89975%_))
                               (##fx+ _%i89990%_ '1))))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint89943%_ _%seed89945%_)
        (make-raw-table__%
         _%size-hint89943%_
         symbolic-hash
         eq?
         _%seed89945%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint89951%_ '#f) (_%seed89953%_ '0))
          (make-symbolic-table__% _%size-hint89951%_ _%seed89953%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint89955%_)
        (let ((_%seed89957%_ '0))
          (make-symbolic-table__% _%size-hint89955%_ _%seed89957%_))))
    (define make-symbolic-table
      (lambda _g90741_
        (let ((_g90740_ (##length _g90741_)))
          (cond ((##fx= _g90740_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g90741_))
                ((##fx= _g90740_ 1)
                 (apply (lambda (_%size-hint89955%_)
                          (make-symbolic-table__1 _%size-hint89955%_))
                        _g90741_))
                ((##fx= _g90740_ 2)
                 (apply (lambda (_%size-hint89959%_ _%seed89960%_)
                          (make-symbolic-table__%
                           _%size-hint89959%_
                           _%seed89960%_))
                        _g90741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90741_))))))
    (define symbolic-table-ref
      (lambda (_%tab89896%_ _%key89897%_ _%default89898%_)
        (let ((_%table89900%_ (&raw-table-table _%tab89896%_))
              (_%seed89901%_ (&raw-table-seed _%tab89896%_)))
          (let* ((_%h89903%_
                  (fxxor (symbolic-hash _%key89897%_) _%seed89901%_))
                 (_%size89906%_ (vector-length _%table89900%_))
                 (_%entries89909%_ (##fxquotient _%size89906%_ '2))
                 (_%start89912%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89903%_ _%entries89909%_)
                   '1)))
            (let _%loop89916%_ ((_%probe89919%_ _%start89912%_)
                                (_%i89921%_ '1)
                                (_%deleted89923%_ '#f))
              (let ((_%k89926%_ (vector-ref _%table89900%_ _%probe89919%_)))
                (if (eq? _%k89926%_ (macro-unused-obj))
                    (let () _%default89898%_)
                    (if (eq? _%k89926%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89916%_
                           (let ((_%next-probe89931%_
                                  (fx+ _%start89912%_
                                       _%i89921%_
                                       (fx* _%i89921%_ _%i89921%_))))
                             (##fxmodulo _%next-probe89931%_ _%size89906%_))
                           (##fx+ _%i89921%_ '1)
                           (let ((_%$e89934%_ _%deleted89923%_))
                             (if _%$e89934%_ _%$e89934%_ _%probe89919%_))))
                        (if (eq? _%key89897%_ _%k89926%_)
                            (let ()
                              (vector-ref
                               _%table89900%_
                               (##fx+ _%probe89919%_ '1)))
                            (let ()
                              (_%loop89916%_
                               (let ((_%next-probe89939%_
                                      (fx+ _%start89912%_
                                           _%i89921%_
                                           (fx* _%i89921%_ _%i89921%_))))
                                 (##fxmodulo
                                  _%next-probe89939%_
                                  _%size89906%_))
                               (##fx+ _%i89921%_ '1)
                               _%deleted89923%_)))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89892%_ _%key89893%_ _%value89894%_)
        (if (##fx< (&raw-table-free _%tab89892%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89892%_))
                    '4))
            (__raw-table-rehash! _%tab89892%_)
            '#!void)
        (__symbolic-table-set! _%tab89892%_ _%key89893%_ _%value89894%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89843%_ _%key89844%_ _%value89845%_)
        (let ((_%table89848%_ (&raw-table-table _%tab89843%_))
              (_%seed89849%_ (&raw-table-seed _%tab89843%_)))
          (let* ((_%h89851%_
                  (fxxor (symbolic-hash _%key89844%_) _%seed89849%_))
                 (_%size89854%_ (vector-length _%table89848%_))
                 (_%entries89857%_ (##fxquotient _%size89854%_ '2))
                 (_%start89860%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89851%_ _%entries89857%_)
                   '1)))
            (let _%loop89864%_ ((_%probe89867%_ _%start89860%_)
                                (_%i89869%_ '1)
                                (_%deleted89871%_ '#f))
              (let ((_%k89874%_ (vector-ref _%table89848%_ _%probe89867%_)))
                (if (eq? _%k89874%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89871%_
                          (begin
                            (vector-set!
                             _%table89848%_
                             _%deleted89871%_
                             _%key89844%_)
                            (vector-set!
                             _%table89848%_
                             (##fx+ _%deleted89871%_ '1)
                             _%value89845%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89843%_
                                (##fx+ (&raw-table-count _%tab89843%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89848%_
                             _%probe89867%_
                             _%key89844%_)
                            (vector-set!
                             _%table89848%_
                             (##fx+ _%probe89867%_ '1)
                             _%value89845%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89843%_
                                (##fx- (&raw-table-free _%tab89843%_) '1))
                               (&raw-table-count-set!
                                _%tab89843%_
                                (##fx+ (&raw-table-count _%tab89843%_)
                                       '1)))))))
                    (if (eq? _%k89874%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89864%_
                           (let ((_%next-probe89881%_
                                  (fx+ _%start89860%_
                                       _%i89869%_
                                       (fx* _%i89869%_ _%i89869%_))))
                             (##fxmodulo _%next-probe89881%_ _%size89854%_))
                           (##fx+ _%i89869%_ '1)
                           (let ((_%$e89884%_ _%deleted89871%_))
                             (if _%$e89884%_ _%$e89884%_ _%probe89867%_))))
                        (if (eq? _%key89844%_ _%k89874%_)
                            (let ()
                              (vector-set!
                               _%table89848%_
                               _%probe89867%_
                               _%key89844%_)
                              (vector-set!
                               _%table89848%_
                               (##fx+ _%probe89867%_ '1)
                               _%value89845%_))
                            (let ()
                              (_%loop89864%_
                               (let ((_%next-probe89889%_
                                      (fx+ _%start89860%_
                                           _%i89869%_
                                           (fx* _%i89869%_ _%i89869%_))))
                                 (##fxmodulo
                                  _%next-probe89889%_
                                  _%size89854%_))
                               (##fx+ _%i89869%_ '1)
                               _%deleted89871%_)))))))))))
    (define symbolic-table-update!
      (lambda (_%tab89838%_
               _%key89839%_
               _%symbolic-table-update!89840%_
               _%default89841%_)
        (if (##fx< (&raw-table-free _%tab89838%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89838%_))
                    '4))
            (__raw-table-rehash! _%tab89838%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89838%_
         _%key89839%_
         _%symbolic-table-update!89840%_
         _%default89841%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89788%_
               _%key89789%_
               _%symbolic-table-update!89790%_
               _%default89791%_)
        (let ((_%table89794%_ (&raw-table-table _%tab89788%_))
              (_%seed89795%_ (&raw-table-seed _%tab89788%_)))
          (let* ((_%h89797%_
                  (fxxor (symbolic-hash _%key89789%_) _%seed89795%_))
                 (_%size89800%_ (vector-length _%table89794%_))
                 (_%entries89803%_ (##fxquotient _%size89800%_ '2))
                 (_%start89806%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89797%_ _%entries89803%_)
                   '1)))
            (let _%loop89810%_ ((_%probe89813%_ _%start89806%_)
                                (_%i89815%_ '1)
                                (_%deleted89817%_ '#f))
              (let ((_%k89820%_ (vector-ref _%table89794%_ _%probe89813%_)))
                (if (eq? _%k89820%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89817%_
                          (begin
                            (vector-set!
                             _%table89794%_
                             _%deleted89817%_
                             _%key89789%_)
                            (vector-set!
                             _%table89794%_
                             (##fx+ _%deleted89817%_ '1)
                             (_%symbolic-table-update!89790%_
                              _%default89791%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89788%_
                                (##fx+ (&raw-table-count _%tab89788%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89794%_
                             _%probe89813%_
                             _%key89789%_)
                            (vector-set!
                             _%table89794%_
                             (##fx+ _%probe89813%_ '1)
                             (_%symbolic-table-update!89790%_
                              _%default89791%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89788%_
                                (##fx- (&raw-table-free _%tab89788%_) '1))
                               (&raw-table-count-set!
                                _%tab89788%_
                                (##fx+ (&raw-table-count _%tab89788%_)
                                       '1)))))))
                    (if (eq? _%k89820%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89810%_
                           (let ((_%next-probe89827%_
                                  (fx+ _%start89806%_
                                       _%i89815%_
                                       (fx* _%i89815%_ _%i89815%_))))
                             (##fxmodulo _%next-probe89827%_ _%size89800%_))
                           (##fx+ _%i89815%_ '1)
                           (let ((_%$e89830%_ _%deleted89817%_))
                             (if _%$e89830%_ _%$e89830%_ _%probe89813%_))))
                        (if (eq? _%key89789%_ _%k89820%_)
                            (let ()
                              (vector-set!
                               _%table89794%_
                               _%probe89813%_
                               _%key89789%_)
                              (vector-set!
                               _%table89794%_
                               (##fx+ _%probe89813%_ '1)
                               (_%symbolic-table-update!89790%_
                                (vector-ref
                                 _%table89794%_
                                 (##fx+ _%probe89813%_ '1)))))
                            (let ()
                              (_%loop89810%_
                               (let ((_%next-probe89835%_
                                      (fx+ _%start89806%_
                                           _%i89815%_
                                           (fx* _%i89815%_ _%i89815%_))))
                                 (##fxmodulo
                                  _%next-probe89835%_
                                  _%size89800%_))
                               (##fx+ _%i89815%_ '1)
                               _%deleted89817%_)))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89743%_ _%key89745%_)
        (let ((_%table89748%_ (&raw-table-table _%tab89743%_))
              (_%seed89750%_ (&raw-table-seed _%tab89743%_)))
          (let* ((_%h89753%_
                  (fxxor (symbolic-hash _%key89745%_) _%seed89750%_))
                 (_%size89756%_ (vector-length _%table89748%_))
                 (_%entries89759%_ (##fxquotient _%size89756%_ '2))
                 (_%start89762%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89753%_ _%entries89759%_)
                   '1)))
            (let _%loop89766%_ ((_%probe89769%_ _%start89762%_)
                                (_%i89771%_ '1))
              (let ((_%k89774%_ (vector-ref _%table89748%_ _%probe89769%_)))
                (if (eq? _%k89774%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89774%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89766%_
                           (let ((_%next-probe89779%_
                                  (fx+ _%start89762%_
                                       _%i89771%_
                                       (fx* _%i89771%_ _%i89771%_))))
                             (##fxmodulo _%next-probe89779%_ _%size89756%_))
                           (##fx+ _%i89771%_ '1)))
                        (if (eq? _%key89745%_ _%k89774%_)
                            (let ()
                              (vector-set!
                               _%table89748%_
                               _%probe89769%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89748%_
                               (##fx+ _%probe89769%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89743%_
                                  (##fx- (&raw-table-count _%tab89743%_)
                                         '1)))))
                            (let ()
                              (_%loop89766%_
                               (let ((_%next-probe89785%_
                                      (fx+ _%start89762%_
                                           _%i89771%_
                                           (fx* _%i89771%_ _%i89771%_))))
                                 (##fxmodulo
                                  _%next-probe89785%_
                                  _%size89756%_))
                               (##fx+ _%i89771%_ '1))))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89724%_ _%seed89726%_)
        (make-raw-table__%
         _%size-hint89724%_
         string-hash
         ##string=?
         _%seed89726%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89732%_ '#f) (_%seed89734%_ '0))
          (make-string-table__% _%size-hint89732%_ _%seed89734%_))))
    (define make-string-table__1
      (lambda (_%size-hint89736%_)
        (let ((_%seed89738%_ '0))
          (make-string-table__% _%size-hint89736%_ _%seed89738%_))))
    (define make-string-table
      (lambda _g90743_
        (let ((_g90742_ (##length _g90743_)))
          (cond ((##fx= _g90742_ 0)
                 (apply (lambda () (make-string-table__0)) _g90743_))
                ((##fx= _g90742_ 1)
                 (apply (lambda (_%size-hint89736%_)
                          (make-string-table__1 _%size-hint89736%_))
                        _g90743_))
                ((##fx= _g90742_ 2)
                 (apply (lambda (_%size-hint89740%_ _%seed89741%_)
                          (make-string-table__%
                           _%size-hint89740%_
                           _%seed89741%_))
                        _g90743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90743_))))))
    (define string-table-ref
      (lambda (_%tab89677%_ _%key89678%_ _%default89679%_)
        (let ((_%table89681%_ (&raw-table-table _%tab89677%_))
              (_%seed89682%_ (&raw-table-seed _%tab89677%_)))
          (let* ((_%h89684%_
                  (fxxor (##string=?-hash _%key89678%_) _%seed89682%_))
                 (_%size89687%_ (vector-length _%table89681%_))
                 (_%entries89690%_ (##fxquotient _%size89687%_ '2))
                 (_%start89693%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89684%_ _%entries89690%_)
                   '1)))
            (let _%loop89697%_ ((_%probe89700%_ _%start89693%_)
                                (_%i89702%_ '1)
                                (_%deleted89704%_ '#f))
              (let ((_%k89707%_ (vector-ref _%table89681%_ _%probe89700%_)))
                (if (eq? _%k89707%_ (macro-unused-obj))
                    (let () _%default89679%_)
                    (if (eq? _%k89707%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89697%_
                           (let ((_%next-probe89712%_
                                  (fx+ _%start89693%_
                                       _%i89702%_
                                       (fx* _%i89702%_ _%i89702%_))))
                             (##fxmodulo _%next-probe89712%_ _%size89687%_))
                           (##fx+ _%i89702%_ '1)
                           (let ((_%$e89715%_ _%deleted89704%_))
                             (if _%$e89715%_ _%$e89715%_ _%probe89700%_))))
                        (if (##string=? _%key89678%_ _%k89707%_)
                            (let ()
                              (vector-ref
                               _%table89681%_
                               (##fx+ _%probe89700%_ '1)))
                            (let ()
                              (_%loop89697%_
                               (let ((_%next-probe89720%_
                                      (fx+ _%start89693%_
                                           _%i89702%_
                                           (fx* _%i89702%_ _%i89702%_))))
                                 (##fxmodulo
                                  _%next-probe89720%_
                                  _%size89687%_))
                               (##fx+ _%i89702%_ '1)
                               _%deleted89704%_)))))))))))
    (define string-table-set!
      (lambda (_%tab89673%_ _%key89674%_ _%value89675%_)
        (if (##fx< (&raw-table-free _%tab89673%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89673%_))
                    '4))
            (__raw-table-rehash! _%tab89673%_)
            '#!void)
        (__string-table-set! _%tab89673%_ _%key89674%_ _%value89675%_)))
    (define __string-table-set!
      (lambda (_%tab89624%_ _%key89625%_ _%value89626%_)
        (let ((_%table89629%_ (&raw-table-table _%tab89624%_))
              (_%seed89630%_ (&raw-table-seed _%tab89624%_)))
          (let* ((_%h89632%_
                  (fxxor (##string=?-hash _%key89625%_) _%seed89630%_))
                 (_%size89635%_ (vector-length _%table89629%_))
                 (_%entries89638%_ (##fxquotient _%size89635%_ '2))
                 (_%start89641%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89632%_ _%entries89638%_)
                   '1)))
            (let _%loop89645%_ ((_%probe89648%_ _%start89641%_)
                                (_%i89650%_ '1)
                                (_%deleted89652%_ '#f))
              (let ((_%k89655%_ (vector-ref _%table89629%_ _%probe89648%_)))
                (if (eq? _%k89655%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89652%_
                          (begin
                            (vector-set!
                             _%table89629%_
                             _%deleted89652%_
                             _%key89625%_)
                            (vector-set!
                             _%table89629%_
                             (##fx+ _%deleted89652%_ '1)
                             _%value89626%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89624%_
                                (##fx+ (&raw-table-count _%tab89624%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89629%_
                             _%probe89648%_
                             _%key89625%_)
                            (vector-set!
                             _%table89629%_
                             (##fx+ _%probe89648%_ '1)
                             _%value89626%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89624%_
                                (##fx- (&raw-table-free _%tab89624%_) '1))
                               (&raw-table-count-set!
                                _%tab89624%_
                                (##fx+ (&raw-table-count _%tab89624%_)
                                       '1)))))))
                    (if (eq? _%k89655%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89645%_
                           (let ((_%next-probe89662%_
                                  (fx+ _%start89641%_
                                       _%i89650%_
                                       (fx* _%i89650%_ _%i89650%_))))
                             (##fxmodulo _%next-probe89662%_ _%size89635%_))
                           (##fx+ _%i89650%_ '1)
                           (let ((_%$e89665%_ _%deleted89652%_))
                             (if _%$e89665%_ _%$e89665%_ _%probe89648%_))))
                        (if (##string=? _%key89625%_ _%k89655%_)
                            (let ()
                              (vector-set!
                               _%table89629%_
                               _%probe89648%_
                               _%key89625%_)
                              (vector-set!
                               _%table89629%_
                               (##fx+ _%probe89648%_ '1)
                               _%value89626%_))
                            (let ()
                              (_%loop89645%_
                               (let ((_%next-probe89670%_
                                      (fx+ _%start89641%_
                                           _%i89650%_
                                           (fx* _%i89650%_ _%i89650%_))))
                                 (##fxmodulo
                                  _%next-probe89670%_
                                  _%size89635%_))
                               (##fx+ _%i89650%_ '1)
                               _%deleted89652%_)))))))))))
    (define string-table-update!
      (lambda (_%tab89619%_
               _%key89620%_
               _%string-table-update!89621%_
               _%default89622%_)
        (if (##fx< (&raw-table-free _%tab89619%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89619%_))
                    '4))
            (__raw-table-rehash! _%tab89619%_)
            '#!void)
        (__string-table-update!
         _%tab89619%_
         _%key89620%_
         _%string-table-update!89621%_
         _%default89622%_)))
    (define __string-table-update!
      (lambda (_%tab89569%_
               _%key89570%_
               _%string-table-update!89571%_
               _%default89572%_)
        (let ((_%table89575%_ (&raw-table-table _%tab89569%_))
              (_%seed89576%_ (&raw-table-seed _%tab89569%_)))
          (let* ((_%h89578%_
                  (fxxor (##string=?-hash _%key89570%_) _%seed89576%_))
                 (_%size89581%_ (vector-length _%table89575%_))
                 (_%entries89584%_ (##fxquotient _%size89581%_ '2))
                 (_%start89587%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89578%_ _%entries89584%_)
                   '1)))
            (let _%loop89591%_ ((_%probe89594%_ _%start89587%_)
                                (_%i89596%_ '1)
                                (_%deleted89598%_ '#f))
              (let ((_%k89601%_ (vector-ref _%table89575%_ _%probe89594%_)))
                (if (eq? _%k89601%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89598%_
                          (begin
                            (vector-set!
                             _%table89575%_
                             _%deleted89598%_
                             _%key89570%_)
                            (vector-set!
                             _%table89575%_
                             (##fx+ _%deleted89598%_ '1)
                             (_%string-table-update!89571%_ _%default89572%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89569%_
                                (##fx+ (&raw-table-count _%tab89569%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89575%_
                             _%probe89594%_
                             _%key89570%_)
                            (vector-set!
                             _%table89575%_
                             (##fx+ _%probe89594%_ '1)
                             (_%string-table-update!89571%_ _%default89572%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89569%_
                                (##fx- (&raw-table-free _%tab89569%_) '1))
                               (&raw-table-count-set!
                                _%tab89569%_
                                (##fx+ (&raw-table-count _%tab89569%_)
                                       '1)))))))
                    (if (eq? _%k89601%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89591%_
                           (let ((_%next-probe89608%_
                                  (fx+ _%start89587%_
                                       _%i89596%_
                                       (fx* _%i89596%_ _%i89596%_))))
                             (##fxmodulo _%next-probe89608%_ _%size89581%_))
                           (##fx+ _%i89596%_ '1)
                           (let ((_%$e89611%_ _%deleted89598%_))
                             (if _%$e89611%_ _%$e89611%_ _%probe89594%_))))
                        (if (##string=? _%key89570%_ _%k89601%_)
                            (let ()
                              (vector-set!
                               _%table89575%_
                               _%probe89594%_
                               _%key89570%_)
                              (vector-set!
                               _%table89575%_
                               (##fx+ _%probe89594%_ '1)
                               (_%string-table-update!89571%_
                                (vector-ref
                                 _%table89575%_
                                 (##fx+ _%probe89594%_ '1)))))
                            (let ()
                              (_%loop89591%_
                               (let ((_%next-probe89616%_
                                      (fx+ _%start89587%_
                                           _%i89596%_
                                           (fx* _%i89596%_ _%i89596%_))))
                                 (##fxmodulo
                                  _%next-probe89616%_
                                  _%size89581%_))
                               (##fx+ _%i89596%_ '1)
                               _%deleted89598%_)))))))))))
    (define string-table-delete!
      (lambda (_%tab89524%_ _%key89526%_)
        (let ((_%table89529%_ (&raw-table-table _%tab89524%_))
              (_%seed89531%_ (&raw-table-seed _%tab89524%_)))
          (let* ((_%h89534%_
                  (fxxor (##string=?-hash _%key89526%_) _%seed89531%_))
                 (_%size89537%_ (vector-length _%table89529%_))
                 (_%entries89540%_ (##fxquotient _%size89537%_ '2))
                 (_%start89543%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89534%_ _%entries89540%_)
                   '1)))
            (let _%loop89547%_ ((_%probe89550%_ _%start89543%_)
                                (_%i89552%_ '1))
              (let ((_%k89555%_ (vector-ref _%table89529%_ _%probe89550%_)))
                (if (eq? _%k89555%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89555%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89547%_
                           (let ((_%next-probe89560%_
                                  (fx+ _%start89543%_
                                       _%i89552%_
                                       (fx* _%i89552%_ _%i89552%_))))
                             (##fxmodulo _%next-probe89560%_ _%size89537%_))
                           (##fx+ _%i89552%_ '1)))
                        (if (##string=? _%key89526%_ _%k89555%_)
                            (let ()
                              (vector-set!
                               _%table89529%_
                               _%probe89550%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89529%_
                               (##fx+ _%probe89550%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89524%_
                                  (##fx- (&raw-table-count _%tab89524%_)
                                         '1)))))
                            (let ()
                              (_%loop89547%_
                               (let ((_%next-probe89566%_
                                      (fx+ _%start89543%_
                                           _%i89552%_
                                           (fx* _%i89552%_ _%i89552%_))))
                                 (##fxmodulo
                                  _%next-probe89566%_
                                  _%size89537%_))
                               (##fx+ _%i89552%_ '1))))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint89505%_ _%seed89507%_)
        (make-raw-table__%
         _%size-hint89505%_
         immediate-hash
         eq?
         _%seed89507%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint89513%_ '#f) (_%seed89515%_ '0))
          (make-immediate-table__% _%size-hint89513%_ _%seed89515%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint89517%_)
        (let ((_%seed89519%_ '0))
          (make-immediate-table__% _%size-hint89517%_ _%seed89519%_))))
    (define make-immediate-table
      (lambda _g90745_
        (let ((_g90744_ (##length _g90745_)))
          (cond ((##fx= _g90744_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g90745_))
                ((##fx= _g90744_ 1)
                 (apply (lambda (_%size-hint89517%_)
                          (make-immediate-table__1 _%size-hint89517%_))
                        _g90745_))
                ((##fx= _g90744_ 2)
                 (apply (lambda (_%size-hint89521%_ _%seed89522%_)
                          (make-immediate-table__%
                           _%size-hint89521%_
                           _%seed89522%_))
                        _g90745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90745_))))))
    (define immediate-table-ref
      (lambda (_%tab89458%_ _%key89459%_ _%default89460%_)
        (let ((_%table89462%_ (&raw-table-table _%tab89458%_))
              (_%seed89463%_ (&raw-table-seed _%tab89458%_)))
          (let* ((_%h89465%_
                  (fxxor (immediate-hash _%key89459%_) _%seed89463%_))
                 (_%size89468%_ (vector-length _%table89462%_))
                 (_%entries89471%_ (##fxquotient _%size89468%_ '2))
                 (_%start89474%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89465%_ _%entries89471%_)
                   '1)))
            (let _%loop89478%_ ((_%probe89481%_ _%start89474%_)
                                (_%i89483%_ '1)
                                (_%deleted89485%_ '#f))
              (let ((_%k89488%_ (vector-ref _%table89462%_ _%probe89481%_)))
                (if (eq? _%k89488%_ (macro-unused-obj))
                    (let () _%default89460%_)
                    (if (eq? _%k89488%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89478%_
                           (let ((_%next-probe89493%_
                                  (fx+ _%start89474%_
                                       _%i89483%_
                                       (fx* _%i89483%_ _%i89483%_))))
                             (##fxmodulo _%next-probe89493%_ _%size89468%_))
                           (##fx+ _%i89483%_ '1)
                           (let ((_%$e89496%_ _%deleted89485%_))
                             (if _%$e89496%_ _%$e89496%_ _%probe89481%_))))
                        (if (eq? _%key89459%_ _%k89488%_)
                            (let ()
                              (vector-ref
                               _%table89462%_
                               (##fx+ _%probe89481%_ '1)))
                            (let ()
                              (_%loop89478%_
                               (let ((_%next-probe89501%_
                                      (fx+ _%start89474%_
                                           _%i89483%_
                                           (fx* _%i89483%_ _%i89483%_))))
                                 (##fxmodulo
                                  _%next-probe89501%_
                                  _%size89468%_))
                               (##fx+ _%i89483%_ '1)
                               _%deleted89485%_)))))))))))
    (define immediate-table-set!
      (lambda (_%tab89454%_ _%key89455%_ _%value89456%_)
        (if (##fx< (&raw-table-free _%tab89454%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89454%_))
                    '4))
            (__raw-table-rehash! _%tab89454%_)
            '#!void)
        (__immediate-table-set! _%tab89454%_ _%key89455%_ _%value89456%_)))
    (define __immediate-table-set!
      (lambda (_%tab89405%_ _%key89406%_ _%value89407%_)
        (let ((_%table89410%_ (&raw-table-table _%tab89405%_))
              (_%seed89411%_ (&raw-table-seed _%tab89405%_)))
          (let* ((_%h89413%_
                  (fxxor (immediate-hash _%key89406%_) _%seed89411%_))
                 (_%size89416%_ (vector-length _%table89410%_))
                 (_%entries89419%_ (##fxquotient _%size89416%_ '2))
                 (_%start89422%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89413%_ _%entries89419%_)
                   '1)))
            (let _%loop89426%_ ((_%probe89429%_ _%start89422%_)
                                (_%i89431%_ '1)
                                (_%deleted89433%_ '#f))
              (let ((_%k89436%_ (vector-ref _%table89410%_ _%probe89429%_)))
                (if (eq? _%k89436%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89433%_
                          (begin
                            (vector-set!
                             _%table89410%_
                             _%deleted89433%_
                             _%key89406%_)
                            (vector-set!
                             _%table89410%_
                             (##fx+ _%deleted89433%_ '1)
                             _%value89407%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89405%_
                                (##fx+ (&raw-table-count _%tab89405%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89410%_
                             _%probe89429%_
                             _%key89406%_)
                            (vector-set!
                             _%table89410%_
                             (##fx+ _%probe89429%_ '1)
                             _%value89407%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89405%_
                                (##fx- (&raw-table-free _%tab89405%_) '1))
                               (&raw-table-count-set!
                                _%tab89405%_
                                (##fx+ (&raw-table-count _%tab89405%_)
                                       '1)))))))
                    (if (eq? _%k89436%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89426%_
                           (let ((_%next-probe89443%_
                                  (fx+ _%start89422%_
                                       _%i89431%_
                                       (fx* _%i89431%_ _%i89431%_))))
                             (##fxmodulo _%next-probe89443%_ _%size89416%_))
                           (##fx+ _%i89431%_ '1)
                           (let ((_%$e89446%_ _%deleted89433%_))
                             (if _%$e89446%_ _%$e89446%_ _%probe89429%_))))
                        (if (eq? _%key89406%_ _%k89436%_)
                            (let ()
                              (vector-set!
                               _%table89410%_
                               _%probe89429%_
                               _%key89406%_)
                              (vector-set!
                               _%table89410%_
                               (##fx+ _%probe89429%_ '1)
                               _%value89407%_))
                            (let ()
                              (_%loop89426%_
                               (let ((_%next-probe89451%_
                                      (fx+ _%start89422%_
                                           _%i89431%_
                                           (fx* _%i89431%_ _%i89431%_))))
                                 (##fxmodulo
                                  _%next-probe89451%_
                                  _%size89416%_))
                               (##fx+ _%i89431%_ '1)
                               _%deleted89433%_)))))))))))
    (define immediate-table-update!
      (lambda (_%tab89400%_
               _%key89401%_
               _%immediate-table-update!89402%_
               _%default89403%_)
        (if (##fx< (&raw-table-free _%tab89400%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89400%_))
                    '4))
            (__raw-table-rehash! _%tab89400%_)
            '#!void)
        (__immediate-table-update!
         _%tab89400%_
         _%key89401%_
         _%immediate-table-update!89402%_
         _%default89403%_)))
    (define __immediate-table-update!
      (lambda (_%tab89350%_
               _%key89351%_
               _%immediate-table-update!89352%_
               _%default89353%_)
        (let ((_%table89356%_ (&raw-table-table _%tab89350%_))
              (_%seed89357%_ (&raw-table-seed _%tab89350%_)))
          (let* ((_%h89359%_
                  (fxxor (immediate-hash _%key89351%_) _%seed89357%_))
                 (_%size89362%_ (vector-length _%table89356%_))
                 (_%entries89365%_ (##fxquotient _%size89362%_ '2))
                 (_%start89368%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89359%_ _%entries89365%_)
                   '1)))
            (let _%loop89372%_ ((_%probe89375%_ _%start89368%_)
                                (_%i89377%_ '1)
                                (_%deleted89379%_ '#f))
              (let ((_%k89382%_ (vector-ref _%table89356%_ _%probe89375%_)))
                (if (eq? _%k89382%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89379%_
                          (begin
                            (vector-set!
                             _%table89356%_
                             _%deleted89379%_
                             _%key89351%_)
                            (vector-set!
                             _%table89356%_
                             (##fx+ _%deleted89379%_ '1)
                             (_%immediate-table-update!89352%_
                              _%default89353%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89350%_
                                (##fx+ (&raw-table-count _%tab89350%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89356%_
                             _%probe89375%_
                             _%key89351%_)
                            (vector-set!
                             _%table89356%_
                             (##fx+ _%probe89375%_ '1)
                             (_%immediate-table-update!89352%_
                              _%default89353%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89350%_
                                (##fx- (&raw-table-free _%tab89350%_) '1))
                               (&raw-table-count-set!
                                _%tab89350%_
                                (##fx+ (&raw-table-count _%tab89350%_)
                                       '1)))))))
                    (if (eq? _%k89382%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89372%_
                           (let ((_%next-probe89389%_
                                  (fx+ _%start89368%_
                                       _%i89377%_
                                       (fx* _%i89377%_ _%i89377%_))))
                             (##fxmodulo _%next-probe89389%_ _%size89362%_))
                           (##fx+ _%i89377%_ '1)
                           (let ((_%$e89392%_ _%deleted89379%_))
                             (if _%$e89392%_ _%$e89392%_ _%probe89375%_))))
                        (if (eq? _%key89351%_ _%k89382%_)
                            (let ()
                              (vector-set!
                               _%table89356%_
                               _%probe89375%_
                               _%key89351%_)
                              (vector-set!
                               _%table89356%_
                               (##fx+ _%probe89375%_ '1)
                               (_%immediate-table-update!89352%_
                                (vector-ref
                                 _%table89356%_
                                 (##fx+ _%probe89375%_ '1)))))
                            (let ()
                              (_%loop89372%_
                               (let ((_%next-probe89397%_
                                      (fx+ _%start89368%_
                                           _%i89377%_
                                           (fx* _%i89377%_ _%i89377%_))))
                                 (##fxmodulo
                                  _%next-probe89397%_
                                  _%size89362%_))
                               (##fx+ _%i89377%_ '1)
                               _%deleted89379%_)))))))))))
    (define immediate-table-delete!
      (lambda (_%tab89305%_ _%key89307%_)
        (let ((_%table89310%_ (&raw-table-table _%tab89305%_))
              (_%seed89312%_ (&raw-table-seed _%tab89305%_)))
          (let* ((_%h89315%_
                  (fxxor (immediate-hash _%key89307%_) _%seed89312%_))
                 (_%size89318%_ (vector-length _%table89310%_))
                 (_%entries89321%_ (##fxquotient _%size89318%_ '2))
                 (_%start89324%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89315%_ _%entries89321%_)
                   '1)))
            (let _%loop89328%_ ((_%probe89331%_ _%start89324%_)
                                (_%i89333%_ '1))
              (let ((_%k89336%_ (vector-ref _%table89310%_ _%probe89331%_)))
                (if (eq? _%k89336%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89336%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89328%_
                           (let ((_%next-probe89341%_
                                  (fx+ _%start89324%_
                                       _%i89333%_
                                       (fx* _%i89333%_ _%i89333%_))))
                             (##fxmodulo _%next-probe89341%_ _%size89318%_))
                           (##fx+ _%i89333%_ '1)))
                        (if (eq? _%key89307%_ _%k89336%_)
                            (let ()
                              (vector-set!
                               _%table89310%_
                               _%probe89331%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89310%_
                               (##fx+ _%probe89331%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89305%_
                                  (##fx- (&raw-table-count _%tab89305%_)
                                         '1)))))
                            (let ()
                              (_%loop89328%_
                               (let ((_%next-probe89347%_
                                      (fx+ _%start89324%_
                                           _%i89333%_
                                           (fx* _%i89333%_ _%i89333%_))))
                                 (##fxmodulo
                                  _%next-probe89347%_
                                  _%size89318%_))
                               (##fx+ _%i89333%_ '1))))))))))))
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
      (lambda (_%tab89303%_)
        (##unchecked-structure-ref
         _%tab89303%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab89301%_)
        (##unchecked-structure-ref
         _%tab89301%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab89298%_ _%val89299%_)
        (##unchecked-structure-set!
         _%tab89298%_
         _%val89299%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab89295%_ _%val89296%_)
        (##unchecked-structure-set!
         _%tab89295%_
         _%val89296%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint89271%_ _%klass89272%_ _%flags89273%_)
        (let ((_%gcht89275%_
               (__gc-table-new
                (if (fixnum? _%size-hint89271%_) _%size-hint89271%_ '16)
                _%flags89273%_)))
          (##structure _%klass89272%_ _%gcht89275%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint89280%_)
        (let* ((_%klass89282%_ __gc-table::t) (_%flags89284%_ '0))
          (make-gc-table__%
           _%size-hint89280%_
           _%klass89282%_
           _%flags89284%_))))
    (define make-gc-table__1
      (lambda (_%size-hint89286%_ _%klass89287%_)
        (let ((_%flags89289%_ '0))
          (make-gc-table__%
           _%size-hint89286%_
           _%klass89287%_
           _%flags89289%_))))
    (define make-gc-table
      (lambda _g90747_
        (let ((_g90746_ (##length _g90747_)))
          (cond ((##fx= _g90746_ 1)
                 (apply (lambda (_%size-hint89280%_)
                          (make-gc-table__0 _%size-hint89280%_))
                        _g90747_))
                ((##fx= _g90746_ 2)
                 (apply (lambda (_%size-hint89286%_ _%klass89287%_)
                          (make-gc-table__1 _%size-hint89286%_ _%klass89287%_))
                        _g90747_))
                ((##fx= _g90746_ 3)
                 (apply (lambda (_%size-hint89291%_
                                 _%klass89292%_
                                 _%flags89293%_)
                          (make-gc-table__%
                           _%size-hint89291%_
                           _%klass89292%_
                           _%flags89293%_))
                        _g90747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90747_))))))
    (define __gc-table-immediate
      (lambda (_%tab89262%_)
        (let ((_%$e89264%_ (&gc-table-immediate _%tab89262%_)))
          (if _%$e89264%_
              _%$e89264%_
              (let ((_%immediate89268%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab89262%_ _%immediate89268%_)
                _%immediate89268%_)))))
    (define __gc-table-new
      (lambda (_%size89252%_ _%flags89253%_)
        (let* ((_%flags89255%_
                (##fxand _%flags89253%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags89257%_
                (fxior _%flags89255%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht89259%_
                (##gc-hash-table-allocate
                 _%size89252%_
                 _%flags89257%_
                 __gc-table-loads)))
          _%gcht89259%_)))
    (define __gc-table-e
      (lambda (_%tab89247%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht89250%_ (&gc-table-gcht _%tab89247%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht89250%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht89250%_
              (begin
                (__gc-table-rehash! _%tab89247%_)
                (&gc-table-gcht _%tab89247%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab89238%_)
        (let* ((_%old-table89240%_ (&gc-table-gcht _%tab89238%_))
               (_%new-table89242%_
                (##gc-hash-table-resize! _%old-table89240%_ __gc-table-loads))
               (_%gcht89244%_
                (##gc-hash-table-rehash!
                 _%old-table89240%_
                 _%new-table89242%_)))
          (&gc-table-gcht-set! _%tab89238%_ _%gcht89244%_))))
    (define gc-table-ref
      (lambda (_%tab89222%_ _%key89223%_ _%default89224%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89223%_)
            (let ()
              (let* ((_%gcht89228%_ (__gc-table-e _%tab89222%_))
                     (_%value89230%_
                      (##gc-hash-table-ref _%gcht89228%_ _%key89223%_)))
                (if (eq? _%value89230%_ (macro-unused-obj))
                    _%default89224%_
                    _%value89230%_)))
            (let ((_%$e89232%_ (&gc-table-immediate _%tab89222%_)))
              (if _%$e89232%_
                  ((lambda (_%immediate89235%_)
                     (immediate-table-ref
                      _%immediate89235%_
                      _%key89223%_
                      _%default89224%_))
                   _%$e89232%_)
                  (let () _%default89224%_))))))
    (define gc-table-set!
      (lambda (_%tab89215%_ _%key89216%_ _%value89217%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89216%_)
            (let ((_%gcht89220%_ (__gc-table-e _%tab89215%_)))
              (if (##gc-hash-table-set!
                   _%gcht89220%_
                   _%key89216%_
                   _%value89217%_)
                  (begin
                    (__gc-table-rehash! _%tab89215%_)
                    (gc-table-set! _%tab89215%_ _%key89216%_ _%value89217%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab89215%_)
             _%key89216%_
             _%value89217%_))))
    (define gc-table-update!
      (lambda (_%tab89208%_ _%key89209%_ _%update89210%_ _%default89211%_)
        (if (##mem-allocated? _%key89209%_)
            (let ((_%value89213%_
                   (gc-table-ref _%tab89208%_ _%key89209%_ _%default89211%_)))
              (gc-table-set!
               _%tab89208%_
               _%key89209%_
               (_%update89210%_ _%value89213%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab89208%_)
             _%key89209%_
             _%update89210%_
             _%default89211%_))))
    (define gc-table-delete!
      (lambda (_%tab89196%_ _%key89197%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89197%_)
            (let ((_%gcht89201%_ (__gc-table-e _%tab89196%_)))
              (if (##gc-hash-table-set!
                   _%gcht89201%_
                   _%key89197%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab89196%_)
                    (gc-table-delete! _%tab89196%_ _%key89197%_))
                  '#!void))
            (let ((_%$e89203%_ (&gc-table-immediate _%tab89196%_)))
              (if _%$e89203%_
                  ((lambda (_%immediate89206%_)
                     (immediate-table-delete! _%immediate89206%_ _%key89197%_))
                   _%$e89203%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab89177%_ _%proc89178%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht89181%_ (__gc-table-e _%tab89177%_)))
            (let _%loop89183%_ ((_%i89185%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i89185%_ (##vector-length _%gcht89181%_))
                  (let ((_%key89187%_ (##vector-ref _%gcht89181%_ _%i89185%_)))
                    (if (and (not (eq? _%key89187%_ (macro-unused-obj)))
                             (not (eq? _%key89187%_ (macro-deleted-obj))))
                        (_%proc89178%_
                         _%key89187%_
                         (##vector-ref _%gcht89181%_ (##fx+ _%i89185%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop89183%_ (##fx+ _%i89185%_ '2))))
                  '#!void)))
          (let ((_%$e89191%_ (&gc-table-immediate _%tab89177%_)))
            (if _%$e89191%_
                ((lambda (_%immediate89194%_)
                   (raw-table-for-each _%immediate89194%_ _%proc89178%_))
                 _%$e89191%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab89165%_)
        (let* ((_%gcht89167%_ (__gc-table-e _%tab89165%_))
               (_%new-table89169%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht89167%_)
                 (macro-gc-hash-table-flags _%gcht89167%_)))
               (_%result89171%_
                (##structure
                 (##structure-type _%tab89165%_)
                 _%new-table89169%_
                 '#f)))
          (gc-table-for-each
           _%tab89165%_
           (lambda (_%k89174%_ _%v89175%_)
             (gc-table-set! _%result89171%_ _%k89174%_ _%v89175%_)))
          _%result89171%_)))
    (define gc-table-clear!
      (lambda (_%tab89158%_)
        (let* ((_%gcht89160%_ (__gc-table-e _%tab89158%_))
               (_%new-table89162%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht89160%_))))
          (&gc-table-gcht-set! _%tab89158%_ _%new-table89162%_)
          (&gc-table-immediate-set! _%tab89158%_ '#f))))
    (define gc-table-length
      (lambda (_%tab89150%_)
        (let ((_%gcht89152%_ (__gc-table-e _%tab89150%_)))
          (fx+ (macro-gc-hash-table-count _%gcht89152%_)
               (let ((_%$e89154%_ (&gc-table-immediate _%tab89150%_)))
                 (if _%$e89154%_
                     (&raw-table-count _%$e89154%_)
                     (let () '0)))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj89135%_)
        (declare (not interrupts-enabled))
        (let ((_%val89138%_ (gc-table-ref __object-eq-hash _%obj89135%_ '#f)))
          (if _%val89138%_
              _%val89138%_
              (let* ((_%mix89140%_ __object-eq-hash-next)
                     (_%ptr89142%_ (##type-cast _%obj89135%_ '0))
                     (_%h89144%_
                      (fxand (fxxor _%mix89140%_ _%ptr89142%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e89147%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e89147%_ _%$e89147%_ '0)))
                (gc-table-set! __object-eq-hash _%obj89135%_ _%h89144%_)
                _%h89144%_)))))))
