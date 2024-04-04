(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712246554)
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
      (lambda (_%tab90764%_)
        (##unchecked-structure-ref
         _%tab90764%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90762%_)
        (##unchecked-structure-ref
         _%tab90762%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90760%_)
        (##unchecked-structure-ref
         _%tab90760%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90758%_)
        (##unchecked-structure-ref
         _%tab90758%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90756%_)
        (##unchecked-structure-ref
         _%tab90756%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90754%_)
        (##unchecked-structure-ref
         _%tab90754%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90751%_ _%val90752%_)
        (##unchecked-structure-set!
         _%tab90751%_
         _%val90752%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90748%_ _%val90749%_)
        (##unchecked-structure-set!
         _%tab90748%_
         _%val90749%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90745%_ _%val90746%_)
        (##unchecked-structure-set!
         _%tab90745%_
         _%val90746%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90742%_ _%val90743%_)
        (##unchecked-structure-set!
         _%tab90742%_
         _%val90743%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90739%_ _%val90740%_)
        (##unchecked-structure-set!
         _%tab90739%_
         _%val90740%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90736%_ _%val90737%_)
        (##unchecked-structure-set!
         _%tab90736%_
         _%val90737%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90734%_)
        (if (and (fixnum? _%size-hint90734%_) (##fx> _%size-hint90734%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90734%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint90710%_ _%hash90711%_ _%test90712%_ _%seed90713%_)
        (let* ((_%size90715%_ (raw-table-size-hint->size _%size-hint90710%_))
               (_%table90717%_
                (##make-vector _%size90715%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table90717%_
           '0
           (##fxquotient _%size90715%_ '2)
           _%hash90711%_
           _%test90712%_
           _%seed90713%_))))
    (define make-raw-table__0
      (lambda (_%size-hint90723%_ _%hash90724%_ _%test90725%_)
        (let ((_%seed90727%_ '0))
          (make-raw-table__%
           _%size-hint90723%_
           _%hash90724%_
           _%test90725%_
           _%seed90727%_))))
    (define make-raw-table
      (lambda _g90766_
        (let ((_g90765_ (##length _g90766_)))
          (cond ((##fx= _g90765_ 3)
                 (apply (lambda (_%size-hint90723%_
                                 _%hash90724%_
                                 _%test90725%_)
                          (make-raw-table__0
                           _%size-hint90723%_
                           _%hash90724%_
                           _%test90725%_))
                        _g90766_))
                ((##fx= _g90765_ 4)
                 (apply (lambda (_%size-hint90729%_
                                 _%hash90730%_
                                 _%test90731%_
                                 _%seed90732%_)
                          (make-raw-table__%
                           _%size-hint90729%_
                           _%hash90730%_
                           _%test90731%_
                           _%seed90732%_))
                        _g90766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90766_))))))
    (define raw-table-ref
      (lambda (_%tab90661%_ _%key90662%_ _%default90663%_)
        (let ((_%table90665%_ (&raw-table-table _%tab90661%_))
              (_%seed90666%_ (&raw-table-seed _%tab90661%_))
              (_%hash90667%_ (&raw-table-hash _%tab90661%_))
              (_%test90668%_ (&raw-table-test _%tab90661%_)))
          (let* ((_%h90670%_
                  (fxxor (_%hash90667%_ _%key90662%_) _%seed90666%_))
                 (_%size90673%_ (vector-length _%table90665%_))
                 (_%entries90676%_ (##fxquotient _%size90673%_ '2))
                 (_%start90679%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90670%_ _%entries90676%_)
                   '1)))
            (let _%loop90683%_ ((_%probe90686%_ _%start90679%_)
                                (_%i90688%_ '1)
                                (_%deleted90690%_ '#f))
              (let ((_%k90693%_ (vector-ref _%table90665%_ _%probe90686%_)))
                (if (eq? _%k90693%_ (macro-unused-obj))
                    (let () _%default90663%_)
                    (if (eq? _%k90693%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90683%_
                           (let ((_%next-probe90698%_
                                  (fx+ _%start90679%_
                                       _%i90688%_
                                       (fx* _%i90688%_ _%i90688%_))))
                             (##fxmodulo _%next-probe90698%_ _%size90673%_))
                           (##fx+ _%i90688%_ '1)
                           (let ((_%$e90701%_ _%deleted90690%_))
                             (if _%$e90701%_ _%$e90701%_ _%probe90686%_))))
                        (if (_%test90668%_ _%key90662%_ _%k90693%_)
                            (let ()
                              (vector-ref
                               _%table90665%_
                               (##fx+ _%probe90686%_ '1)))
                            (let ()
                              (_%loop90683%_
                               (let ((_%next-probe90706%_
                                      (fx+ _%start90679%_
                                           _%i90688%_
                                           (fx* _%i90688%_ _%i90688%_))))
                                 (##fxmodulo
                                  _%next-probe90706%_
                                  _%size90673%_))
                               (##fx+ _%i90688%_ '1)
                               _%deleted90690%_)))))))))))
    (define raw-table-set!
      (lambda (_%tab90657%_ _%key90658%_ _%value90659%_)
        (if (##fx< (&raw-table-free _%tab90657%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90657%_))
                    '4))
            (__raw-table-rehash! _%tab90657%_)
            '#!void)
        (__raw-table-set! _%tab90657%_ _%key90658%_ _%value90659%_)))
    (define raw-table-update!
      (lambda (_%tab90652%_ _%key90653%_ _%update90654%_ _%default90655%_)
        (if (##fx< (&raw-table-free _%tab90652%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90652%_))
                    '4))
            (__raw-table-rehash! _%tab90652%_)
            '#!void)
        (__raw-table-update!
         _%tab90652%_
         _%key90653%_
         _%update90654%_
         _%default90655%_)))
    (define raw-table-delete!
      (lambda (_%tab90609%_ _%key90610%_)
        (let ((_%table90612%_ (&raw-table-table _%tab90609%_))
              (_%seed90613%_ (&raw-table-seed _%tab90609%_))
              (_%hash90614%_ (&raw-table-hash _%tab90609%_))
              (_%test90615%_ (&raw-table-test _%tab90609%_)))
          (let* ((_%h90617%_
                  (fxxor (_%hash90614%_ _%key90610%_) _%seed90613%_))
                 (_%size90620%_ (vector-length _%table90612%_))
                 (_%entries90623%_ (##fxquotient _%size90620%_ '2))
                 (_%start90626%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90617%_ _%entries90623%_)
                   '1)))
            (let _%loop90630%_ ((_%probe90633%_ _%start90626%_)
                                (_%i90635%_ '1))
              (let ((_%k90638%_ (vector-ref _%table90612%_ _%probe90633%_)))
                (if (eq? _%k90638%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90638%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90630%_
                           (let ((_%next-probe90643%_
                                  (fx+ _%start90626%_
                                       _%i90635%_
                                       (fx* _%i90635%_ _%i90635%_))))
                             (##fxmodulo _%next-probe90643%_ _%size90620%_))
                           (##fx+ _%i90635%_ '1)))
                        (if (_%test90615%_ _%key90610%_ _%k90638%_)
                            (let ()
                              (vector-set!
                               _%table90612%_
                               _%probe90633%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90612%_
                               (##fx+ _%probe90633%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90609%_
                                  (##fx- (&raw-table-count _%tab90609%_)
                                         '1)))))
                            (let ()
                              (_%loop90630%_
                               (let ((_%next-probe90649%_
                                      (fx+ _%start90626%_
                                           _%i90635%_
                                           (fx* _%i90635%_ _%i90635%_))))
                                 (##fxmodulo
                                  _%next-probe90649%_
                                  _%size90620%_))
                               (##fx+ _%i90635%_ '1))))))))))))
    (define raw-table-for-each
      (lambda (_%tab90593%_ _%proc90594%_)
        (let* ((_%table90596%_ (&raw-table-table _%tab90593%_))
               (_%size90598%_ (vector-length _%table90596%_)))
          (let _%loop90601%_ ((_%i90603%_ '0))
            (if (##fx< _%i90603%_ _%size90598%_)
                (begin
                  (let ((_%key90605%_ (vector-ref _%table90596%_ _%i90603%_)))
                    (if (and (not (eq? _%key90605%_ (macro-unused-obj)))
                             (not (eq? _%key90605%_ (macro-deleted-obj))))
                        (let ((_%value90607%_
                               (vector-ref
                                _%table90596%_
                                (##fx+ _%i90603%_ '1))))
                          (_%proc90594%_ _%key90605%_ _%value90607%_))
                        '#!void))
                  (_%loop90601%_ (##fx+ _%i90603%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab90589%_)
        (let ((_%new-tab90591%_ (##structure-copy _%tab90589%_)))
          (&raw-table-table-set!
           _%new-tab90591%_
           (vector-copy (&raw-table-table _%tab90589%_)))
          _%new-tab90591%_)))
    (define raw-table-clear!
      (lambda (_%tab90587%_)
        (vector-fill! (&raw-table-table _%tab90587%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab90587%_ '0)
        (&raw-table-free-set!
         _%tab90587%_
         (##fxquotient (vector-length (&raw-table-table _%tab90587%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab90537%_ _%key90538%_ _%value90539%_)
        (let ((_%table90541%_ (&raw-table-table _%tab90537%_))
              (_%seed90542%_ (&raw-table-seed _%tab90537%_))
              (_%hash90543%_ (&raw-table-hash _%tab90537%_))
              (_%test90544%_ (&raw-table-test _%tab90537%_)))
          (let* ((_%h90546%_
                  (fxxor (_%hash90543%_ _%key90538%_) _%seed90542%_))
                 (_%size90549%_ (vector-length _%table90541%_))
                 (_%entries90552%_ (##fxquotient _%size90549%_ '2))
                 (_%start90555%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90546%_ _%entries90552%_)
                   '1)))
            (let _%loop90559%_ ((_%probe90562%_ _%start90555%_)
                                (_%i90564%_ '1)
                                (_%deleted90566%_ '#f))
              (let ((_%k90569%_ (vector-ref _%table90541%_ _%probe90562%_)))
                (if (eq? _%k90569%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90566%_
                          (begin
                            (vector-set!
                             _%table90541%_
                             _%deleted90566%_
                             _%key90538%_)
                            (vector-set!
                             _%table90541%_
                             (##fx+ _%deleted90566%_ '1)
                             _%value90539%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90537%_
                                (##fx+ (&raw-table-count _%tab90537%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90541%_
                             _%probe90562%_
                             _%key90538%_)
                            (vector-set!
                             _%table90541%_
                             (##fx+ _%probe90562%_ '1)
                             _%value90539%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90537%_
                                (##fx- (&raw-table-free _%tab90537%_) '1))
                               (&raw-table-count-set!
                                _%tab90537%_
                                (##fx+ (&raw-table-count _%tab90537%_)
                                       '1)))))))
                    (if (eq? _%k90569%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90559%_
                           (let ((_%next-probe90576%_
                                  (fx+ _%start90555%_
                                       _%i90564%_
                                       (fx* _%i90564%_ _%i90564%_))))
                             (##fxmodulo _%next-probe90576%_ _%size90549%_))
                           (##fx+ _%i90564%_ '1)
                           (let ((_%$e90579%_ _%deleted90566%_))
                             (if _%$e90579%_ _%$e90579%_ _%probe90562%_))))
                        (if (_%test90544%_ _%key90538%_ _%k90569%_)
                            (let ()
                              (vector-set!
                               _%table90541%_
                               _%probe90562%_
                               _%key90538%_)
                              (vector-set!
                               _%table90541%_
                               (##fx+ _%probe90562%_ '1)
                               _%value90539%_))
                            (let ()
                              (_%loop90559%_
                               (let ((_%next-probe90584%_
                                      (fx+ _%start90555%_
                                           _%i90564%_
                                           (fx* _%i90564%_ _%i90564%_))))
                                 (##fxmodulo
                                  _%next-probe90584%_
                                  _%size90549%_))
                               (##fx+ _%i90564%_ '1)
                               _%deleted90566%_)))))))))))
    (define __raw-table-update!
      (lambda (_%tab90486%_ _%key90487%_ _%update90488%_ _%default90489%_)
        (let ((_%table90491%_ (&raw-table-table _%tab90486%_))
              (_%seed90492%_ (&raw-table-seed _%tab90486%_))
              (_%hash90493%_ (&raw-table-hash _%tab90486%_))
              (_%test90494%_ (&raw-table-test _%tab90486%_)))
          (let* ((_%h90496%_
                  (fxxor (_%hash90493%_ _%key90487%_) _%seed90492%_))
                 (_%size90499%_ (vector-length _%table90491%_))
                 (_%entries90502%_ (##fxquotient _%size90499%_ '2))
                 (_%start90505%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90496%_ _%entries90502%_)
                   '1)))
            (let _%loop90509%_ ((_%probe90512%_ _%start90505%_)
                                (_%i90514%_ '1)
                                (_%deleted90516%_ '#f))
              (let ((_%k90519%_ (vector-ref _%table90491%_ _%probe90512%_)))
                (if (eq? _%k90519%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90516%_
                          (begin
                            (vector-set!
                             _%table90491%_
                             _%deleted90516%_
                             _%key90487%_)
                            (vector-set!
                             _%table90491%_
                             (##fx+ _%deleted90516%_ '1)
                             (_%update90488%_ _%default90489%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90486%_
                                (##fx+ (&raw-table-count _%tab90486%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90491%_
                             _%probe90512%_
                             _%key90487%_)
                            (vector-set!
                             _%table90491%_
                             (##fx+ _%probe90512%_ '1)
                             (_%update90488%_ _%default90489%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90486%_
                                (##fx- (&raw-table-free _%tab90486%_) '1))
                               (&raw-table-count-set!
                                _%tab90486%_
                                (##fx+ (&raw-table-count _%tab90486%_)
                                       '1)))))))
                    (if (eq? _%k90519%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90509%_
                           (let ((_%next-probe90526%_
                                  (fx+ _%start90505%_
                                       _%i90514%_
                                       (fx* _%i90514%_ _%i90514%_))))
                             (##fxmodulo _%next-probe90526%_ _%size90499%_))
                           (##fx+ _%i90514%_ '1)
                           (let ((_%$e90529%_ _%deleted90516%_))
                             (if _%$e90529%_ _%$e90529%_ _%probe90512%_))))
                        (if (_%test90494%_ _%key90487%_ _%k90519%_)
                            (let ()
                              (vector-set!
                               _%table90491%_
                               _%probe90512%_
                               _%key90487%_)
                              (vector-set!
                               _%table90491%_
                               (##fx+ _%probe90512%_ '1)
                               (_%update90488%_
                                (vector-ref
                                 _%table90491%_
                                 (##fx+ _%probe90512%_ '1)))))
                            (let ()
                              (_%loop90509%_
                               (let ((_%next-probe90534%_
                                      (fx+ _%start90505%_
                                           _%i90514%_
                                           (fx* _%i90514%_ _%i90514%_))))
                                 (##fxmodulo
                                  _%next-probe90534%_
                                  _%size90499%_))
                               (##fx+ _%i90514%_ '1)
                               _%deleted90516%_)))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab90467%_)
        (let* ((_%old-table90469%_ (&raw-table-table _%tab90467%_))
               (_%old-size90471%_ (vector-length _%old-table90469%_))
               (_%new-size90473%_
                (if (##fx< (&raw-table-count _%tab90467%_)
                           (##fxquotient _%old-size90471%_ '4))
                    (vector-length _%old-table90469%_)
                    (##fx* '2 (vector-length _%old-table90469%_))))
               (_%new-table90475%_
                (##make-vector _%new-size90473%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab90467%_ _%new-table90475%_)
          (&raw-table-count-set! _%tab90467%_ '0)
          (&raw-table-free-set!
           _%tab90467%_
           (##fxquotient _%new-size90473%_ '2))
          (let _%lp90478%_ ((_%i90480%_ '0))
            (if (##fx< _%i90480%_ _%old-size90471%_)
                (begin
                  (let ((_%key90482%_
                         (vector-ref _%old-table90469%_ _%i90480%_)))
                    (if (and (not (eq? _%key90482%_ (macro-unused-obj)))
                             (not (eq? _%key90482%_ (macro-deleted-obj))))
                        (let ((_%value90484%_
                               (vector-ref
                                _%old-table90469%_
                                (##fx+ _%i90480%_ '1))))
                          (__raw-table-set!
                           _%tab90467%_
                           _%key90482%_
                           _%value90484%_))
                        '#!void))
                  (_%lp90478%_ (##fx+ _%i90480%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj90459%_)
        (let ((_%t90461%_ (##type _%obj90459%_)))
          (if (##fx= (##fxand _%t90461%_ '1) '0)
              (let ()
                (fxand (##type-cast _%obj90459%_ (macro-type-fixnum))
                       (macro-max-fixnum32)))
              (if (symbolic? _%obj90459%_)
                  (let () (symbolic-hash _%obj90459%_))
                  (if (procedure? _%obj90459%_)
                      (let () (procedure-hash _%obj90459%_))
                      (let ()
                        (fxand (__eq-hash _%obj90459%_)
                               (macro-max-fixnum32)))))))))
    (define procedure-hash
      (lambda (_%obj90455%_)
        (let ((_%h90457%_
               (if (##closure? _%obj90455%_)
                   (__eq-hash _%obj90455%_)
                   (##type-cast _%obj90455%_ '0))))
          (fxand _%h90457%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj90452%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj90452%_)))
    (define eqv-hash
      (lambda (_%obj90442%_)
        (letrec ((_%combine90444%_
                  (lambda (_%a90449%_ _%b90450%_)
                    (fxand (##fx* (##fx+ _%a90449%_
                                         (fxarithmetic-shift-left
                                          _%b90450%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash90445%_
                  (lambda (_%obj90447%_)
                    (macro-number-dispatch
                     _%obj90447%_
                     (eq-hash _%obj90447%_)
                     (fxand _%obj90447%_ (macro-max-fixnum32))
                     (modulo _%obj90447%_ '331804481)
                     (_%combine90444%_
                      (_%hash90445%_ (macro-ratnum-numerator _%obj90447%_))
                      (_%hash90445%_ (macro-ratnum-denominator _%obj90447%_)))
                     (_%combine90444%_
                      (##u16vector-ref _%obj90447%_ '0)
                      (_%combine90444%_
                       (##u16vector-ref _%obj90447%_ '1)
                       (_%combine90444%_
                        (##u16vector-ref _%obj90447%_ '2)
                        (##u16vector-ref _%obj90447%_ '3))))
                     (_%combine90444%_
                      (_%hash90445%_ (macro-cpxnum-real _%obj90447%_))
                      (_%hash90445%_ (macro-cpxnum-imag _%obj90447%_)))))))
          (_%hash90445%_ _%obj90442%_))))
    (define symbolic?
      (lambda (_%obj90437%_)
        (let ((_%$e90439%_ (symbol? _%obj90437%_)))
          (if _%$e90439%_ _%$e90439%_ (keyword? _%obj90437%_)))))
    (define symbolic-hash (lambda (_%obj90435%_) (macro-slot '1 _%obj90435%_)))
    (define string-hash (lambda (_%obj90433%_) (##string=?-hash _%obj90433%_)))
    (define immediate-hash
      (lambda (_%obj90431%_) (##type-cast _%obj90431%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint90412%_ _%seed90414%_)
        (make-raw-table__% _%size-hint90412%_ eq-hash eq? _%seed90414%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint90420%_ '#f) (_%seed90422%_ '0))
          (make-eq-table__% _%size-hint90420%_ _%seed90422%_))))
    (define make-eq-table__1
      (lambda (_%size-hint90424%_)
        (let ((_%seed90426%_ '0))
          (make-eq-table__% _%size-hint90424%_ _%seed90426%_))))
    (define make-eq-table
      (lambda _g90768_
        (let ((_g90767_ (##length _g90768_)))
          (cond ((##fx= _g90767_ 0)
                 (apply (lambda () (make-eq-table__0)) _g90768_))
                ((##fx= _g90767_ 1)
                 (apply (lambda (_%size-hint90424%_)
                          (make-eq-table__1 _%size-hint90424%_))
                        _g90768_))
                ((##fx= _g90767_ 2)
                 (apply (lambda (_%size-hint90428%_ _%seed90429%_)
                          (make-eq-table__% _%size-hint90428%_ _%seed90429%_))
                        _g90768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90768_))))))
    (define eq-table-ref
      (lambda (_%tab90365%_ _%key90366%_ _%default90367%_)
        (let ((_%table90369%_ (&raw-table-table _%tab90365%_))
              (_%seed90370%_ (&raw-table-seed _%tab90365%_)))
          (let* ((_%h90372%_ (fxxor (eq-hash _%key90366%_) _%seed90370%_))
                 (_%size90375%_ (vector-length _%table90369%_))
                 (_%entries90378%_ (##fxquotient _%size90375%_ '2))
                 (_%start90381%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90372%_ _%entries90378%_)
                   '1)))
            (let _%loop90385%_ ((_%probe90388%_ _%start90381%_)
                                (_%i90390%_ '1)
                                (_%deleted90392%_ '#f))
              (let ((_%k90395%_ (vector-ref _%table90369%_ _%probe90388%_)))
                (if (eq? _%k90395%_ (macro-unused-obj))
                    (let () _%default90367%_)
                    (if (eq? _%k90395%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90385%_
                           (let ((_%next-probe90400%_
                                  (fx+ _%start90381%_
                                       _%i90390%_
                                       (fx* _%i90390%_ _%i90390%_))))
                             (##fxmodulo _%next-probe90400%_ _%size90375%_))
                           (##fx+ _%i90390%_ '1)
                           (let ((_%$e90403%_ _%deleted90392%_))
                             (if _%$e90403%_ _%$e90403%_ _%probe90388%_))))
                        (if (eq? _%key90366%_ _%k90395%_)
                            (let ()
                              (vector-ref
                               _%table90369%_
                               (##fx+ _%probe90388%_ '1)))
                            (let ()
                              (_%loop90385%_
                               (let ((_%next-probe90408%_
                                      (fx+ _%start90381%_
                                           _%i90390%_
                                           (fx* _%i90390%_ _%i90390%_))))
                                 (##fxmodulo
                                  _%next-probe90408%_
                                  _%size90375%_))
                               (##fx+ _%i90390%_ '1)
                               _%deleted90392%_)))))))))))
    (define eq-table-set!
      (lambda (_%tab90361%_ _%key90362%_ _%value90363%_)
        (if (##fx< (&raw-table-free _%tab90361%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90361%_))
                    '4))
            (__raw-table-rehash! _%tab90361%_)
            '#!void)
        (__eq-table-set! _%tab90361%_ _%key90362%_ _%value90363%_)))
    (define __eq-table-set!
      (lambda (_%tab90312%_ _%key90313%_ _%value90314%_)
        (let ((_%table90317%_ (&raw-table-table _%tab90312%_))
              (_%seed90318%_ (&raw-table-seed _%tab90312%_)))
          (let* ((_%h90320%_ (fxxor (eq-hash _%key90313%_) _%seed90318%_))
                 (_%size90323%_ (vector-length _%table90317%_))
                 (_%entries90326%_ (##fxquotient _%size90323%_ '2))
                 (_%start90329%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90320%_ _%entries90326%_)
                   '1)))
            (let _%loop90333%_ ((_%probe90336%_ _%start90329%_)
                                (_%i90338%_ '1)
                                (_%deleted90340%_ '#f))
              (let ((_%k90343%_ (vector-ref _%table90317%_ _%probe90336%_)))
                (if (eq? _%k90343%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90340%_
                          (begin
                            (vector-set!
                             _%table90317%_
                             _%deleted90340%_
                             _%key90313%_)
                            (vector-set!
                             _%table90317%_
                             (##fx+ _%deleted90340%_ '1)
                             _%value90314%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90312%_
                                (##fx+ (&raw-table-count _%tab90312%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90317%_
                             _%probe90336%_
                             _%key90313%_)
                            (vector-set!
                             _%table90317%_
                             (##fx+ _%probe90336%_ '1)
                             _%value90314%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90312%_
                                (##fx- (&raw-table-free _%tab90312%_) '1))
                               (&raw-table-count-set!
                                _%tab90312%_
                                (##fx+ (&raw-table-count _%tab90312%_)
                                       '1)))))))
                    (if (eq? _%k90343%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90333%_
                           (let ((_%next-probe90350%_
                                  (fx+ _%start90329%_
                                       _%i90338%_
                                       (fx* _%i90338%_ _%i90338%_))))
                             (##fxmodulo _%next-probe90350%_ _%size90323%_))
                           (##fx+ _%i90338%_ '1)
                           (let ((_%$e90353%_ _%deleted90340%_))
                             (if _%$e90353%_ _%$e90353%_ _%probe90336%_))))
                        (if (eq? _%key90313%_ _%k90343%_)
                            (let ()
                              (vector-set!
                               _%table90317%_
                               _%probe90336%_
                               _%key90313%_)
                              (vector-set!
                               _%table90317%_
                               (##fx+ _%probe90336%_ '1)
                               _%value90314%_))
                            (let ()
                              (_%loop90333%_
                               (let ((_%next-probe90358%_
                                      (fx+ _%start90329%_
                                           _%i90338%_
                                           (fx* _%i90338%_ _%i90338%_))))
                                 (##fxmodulo
                                  _%next-probe90358%_
                                  _%size90323%_))
                               (##fx+ _%i90338%_ '1)
                               _%deleted90340%_)))))))))))
    (define eq-table-update!
      (lambda (_%tab90307%_
               _%key90308%_
               _%eq-table-update!90309%_
               _%default90310%_)
        (if (##fx< (&raw-table-free _%tab90307%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90307%_))
                    '4))
            (__raw-table-rehash! _%tab90307%_)
            '#!void)
        (__eq-table-update!
         _%tab90307%_
         _%key90308%_
         _%eq-table-update!90309%_
         _%default90310%_)))
    (define __eq-table-update!
      (lambda (_%tab90257%_
               _%key90258%_
               _%eq-table-update!90259%_
               _%default90260%_)
        (let ((_%table90263%_ (&raw-table-table _%tab90257%_))
              (_%seed90264%_ (&raw-table-seed _%tab90257%_)))
          (let* ((_%h90266%_ (fxxor (eq-hash _%key90258%_) _%seed90264%_))
                 (_%size90269%_ (vector-length _%table90263%_))
                 (_%entries90272%_ (##fxquotient _%size90269%_ '2))
                 (_%start90275%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90266%_ _%entries90272%_)
                   '1)))
            (let _%loop90279%_ ((_%probe90282%_ _%start90275%_)
                                (_%i90284%_ '1)
                                (_%deleted90286%_ '#f))
              (let ((_%k90289%_ (vector-ref _%table90263%_ _%probe90282%_)))
                (if (eq? _%k90289%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90286%_
                          (begin
                            (vector-set!
                             _%table90263%_
                             _%deleted90286%_
                             _%key90258%_)
                            (vector-set!
                             _%table90263%_
                             (##fx+ _%deleted90286%_ '1)
                             (_%eq-table-update!90259%_ _%default90260%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90257%_
                                (##fx+ (&raw-table-count _%tab90257%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90263%_
                             _%probe90282%_
                             _%key90258%_)
                            (vector-set!
                             _%table90263%_
                             (##fx+ _%probe90282%_ '1)
                             (_%eq-table-update!90259%_ _%default90260%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90257%_
                                (##fx- (&raw-table-free _%tab90257%_) '1))
                               (&raw-table-count-set!
                                _%tab90257%_
                                (##fx+ (&raw-table-count _%tab90257%_)
                                       '1)))))))
                    (if (eq? _%k90289%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90279%_
                           (let ((_%next-probe90296%_
                                  (fx+ _%start90275%_
                                       _%i90284%_
                                       (fx* _%i90284%_ _%i90284%_))))
                             (##fxmodulo _%next-probe90296%_ _%size90269%_))
                           (##fx+ _%i90284%_ '1)
                           (let ((_%$e90299%_ _%deleted90286%_))
                             (if _%$e90299%_ _%$e90299%_ _%probe90282%_))))
                        (if (eq? _%key90258%_ _%k90289%_)
                            (let ()
                              (vector-set!
                               _%table90263%_
                               _%probe90282%_
                               _%key90258%_)
                              (vector-set!
                               _%table90263%_
                               (##fx+ _%probe90282%_ '1)
                               (_%eq-table-update!90259%_
                                (vector-ref
                                 _%table90263%_
                                 (##fx+ _%probe90282%_ '1)))))
                            (let ()
                              (_%loop90279%_
                               (let ((_%next-probe90304%_
                                      (fx+ _%start90275%_
                                           _%i90284%_
                                           (fx* _%i90284%_ _%i90284%_))))
                                 (##fxmodulo
                                  _%next-probe90304%_
                                  _%size90269%_))
                               (##fx+ _%i90284%_ '1)
                               _%deleted90286%_)))))))))))
    (define eq-table-delete!
      (lambda (_%tab90212%_ _%key90214%_)
        (let ((_%table90217%_ (&raw-table-table _%tab90212%_))
              (_%seed90219%_ (&raw-table-seed _%tab90212%_)))
          (let* ((_%h90222%_ (fxxor (eq-hash _%key90214%_) _%seed90219%_))
                 (_%size90225%_ (vector-length _%table90217%_))
                 (_%entries90228%_ (##fxquotient _%size90225%_ '2))
                 (_%start90231%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90222%_ _%entries90228%_)
                   '1)))
            (let _%loop90235%_ ((_%probe90238%_ _%start90231%_)
                                (_%i90240%_ '1))
              (let ((_%k90243%_ (vector-ref _%table90217%_ _%probe90238%_)))
                (if (eq? _%k90243%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90243%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90235%_
                           (let ((_%next-probe90248%_
                                  (fx+ _%start90231%_
                                       _%i90240%_
                                       (fx* _%i90240%_ _%i90240%_))))
                             (##fxmodulo _%next-probe90248%_ _%size90225%_))
                           (##fx+ _%i90240%_ '1)))
                        (if (eq? _%key90214%_ _%k90243%_)
                            (let ()
                              (vector-set!
                               _%table90217%_
                               _%probe90238%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90217%_
                               (##fx+ _%probe90238%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90212%_
                                  (##fx- (&raw-table-count _%tab90212%_)
                                         '1)))))
                            (let ()
                              (_%loop90235%_
                               (let ((_%next-probe90254%_
                                      (fx+ _%start90231%_
                                           _%i90240%_
                                           (fx* _%i90240%_ _%i90240%_))))
                                 (##fxmodulo
                                  _%next-probe90254%_
                                  _%size90225%_))
                               (##fx+ _%i90240%_ '1))))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint90193%_ _%seed90195%_)
        (make-raw-table__% _%size-hint90193%_ eqv-hash eqv? _%seed90195%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint90201%_ '#f) (_%seed90203%_ '0))
          (make-eqv-table__% _%size-hint90201%_ _%seed90203%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint90205%_)
        (let ((_%seed90207%_ '0))
          (make-eqv-table__% _%size-hint90205%_ _%seed90207%_))))
    (define make-eqv-table
      (lambda _g90770_
        (let ((_g90769_ (##length _g90770_)))
          (cond ((##fx= _g90769_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g90770_))
                ((##fx= _g90769_ 1)
                 (apply (lambda (_%size-hint90205%_)
                          (make-eqv-table__1 _%size-hint90205%_))
                        _g90770_))
                ((##fx= _g90769_ 2)
                 (apply (lambda (_%size-hint90209%_ _%seed90210%_)
                          (make-eqv-table__% _%size-hint90209%_ _%seed90210%_))
                        _g90770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90770_))))))
    (define eqv-table-ref
      (lambda (_%tab90146%_ _%key90147%_ _%default90148%_)
        (let ((_%table90150%_ (&raw-table-table _%tab90146%_))
              (_%seed90151%_ (&raw-table-seed _%tab90146%_)))
          (let* ((_%h90153%_ (fxxor (eqv-hash _%key90147%_) _%seed90151%_))
                 (_%size90156%_ (vector-length _%table90150%_))
                 (_%entries90159%_ (##fxquotient _%size90156%_ '2))
                 (_%start90162%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90153%_ _%entries90159%_)
                   '1)))
            (let _%loop90166%_ ((_%probe90169%_ _%start90162%_)
                                (_%i90171%_ '1)
                                (_%deleted90173%_ '#f))
              (let ((_%k90176%_ (vector-ref _%table90150%_ _%probe90169%_)))
                (if (eq? _%k90176%_ (macro-unused-obj))
                    (let () _%default90148%_)
                    (if (eq? _%k90176%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90166%_
                           (let ((_%next-probe90181%_
                                  (fx+ _%start90162%_
                                       _%i90171%_
                                       (fx* _%i90171%_ _%i90171%_))))
                             (##fxmodulo _%next-probe90181%_ _%size90156%_))
                           (##fx+ _%i90171%_ '1)
                           (let ((_%$e90184%_ _%deleted90173%_))
                             (if _%$e90184%_ _%$e90184%_ _%probe90169%_))))
                        (if (eqv? _%key90147%_ _%k90176%_)
                            (let ()
                              (vector-ref
                               _%table90150%_
                               (##fx+ _%probe90169%_ '1)))
                            (let ()
                              (_%loop90166%_
                               (let ((_%next-probe90189%_
                                      (fx+ _%start90162%_
                                           _%i90171%_
                                           (fx* _%i90171%_ _%i90171%_))))
                                 (##fxmodulo
                                  _%next-probe90189%_
                                  _%size90156%_))
                               (##fx+ _%i90171%_ '1)
                               _%deleted90173%_)))))))))))
    (define eqv-table-set!
      (lambda (_%tab90142%_ _%key90143%_ _%value90144%_)
        (if (##fx< (&raw-table-free _%tab90142%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90142%_))
                    '4))
            (__raw-table-rehash! _%tab90142%_)
            '#!void)
        (__eqv-table-set! _%tab90142%_ _%key90143%_ _%value90144%_)))
    (define __eqv-table-set!
      (lambda (_%tab90093%_ _%key90094%_ _%value90095%_)
        (let ((_%table90098%_ (&raw-table-table _%tab90093%_))
              (_%seed90099%_ (&raw-table-seed _%tab90093%_)))
          (let* ((_%h90101%_ (fxxor (eqv-hash _%key90094%_) _%seed90099%_))
                 (_%size90104%_ (vector-length _%table90098%_))
                 (_%entries90107%_ (##fxquotient _%size90104%_ '2))
                 (_%start90110%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90101%_ _%entries90107%_)
                   '1)))
            (let _%loop90114%_ ((_%probe90117%_ _%start90110%_)
                                (_%i90119%_ '1)
                                (_%deleted90121%_ '#f))
              (let ((_%k90124%_ (vector-ref _%table90098%_ _%probe90117%_)))
                (if (eq? _%k90124%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90121%_
                          (begin
                            (vector-set!
                             _%table90098%_
                             _%deleted90121%_
                             _%key90094%_)
                            (vector-set!
                             _%table90098%_
                             (##fx+ _%deleted90121%_ '1)
                             _%value90095%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90093%_
                                (##fx+ (&raw-table-count _%tab90093%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90098%_
                             _%probe90117%_
                             _%key90094%_)
                            (vector-set!
                             _%table90098%_
                             (##fx+ _%probe90117%_ '1)
                             _%value90095%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90093%_
                                (##fx- (&raw-table-free _%tab90093%_) '1))
                               (&raw-table-count-set!
                                _%tab90093%_
                                (##fx+ (&raw-table-count _%tab90093%_)
                                       '1)))))))
                    (if (eq? _%k90124%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90114%_
                           (let ((_%next-probe90131%_
                                  (fx+ _%start90110%_
                                       _%i90119%_
                                       (fx* _%i90119%_ _%i90119%_))))
                             (##fxmodulo _%next-probe90131%_ _%size90104%_))
                           (##fx+ _%i90119%_ '1)
                           (let ((_%$e90134%_ _%deleted90121%_))
                             (if _%$e90134%_ _%$e90134%_ _%probe90117%_))))
                        (if (eqv? _%key90094%_ _%k90124%_)
                            (let ()
                              (vector-set!
                               _%table90098%_
                               _%probe90117%_
                               _%key90094%_)
                              (vector-set!
                               _%table90098%_
                               (##fx+ _%probe90117%_ '1)
                               _%value90095%_))
                            (let ()
                              (_%loop90114%_
                               (let ((_%next-probe90139%_
                                      (fx+ _%start90110%_
                                           _%i90119%_
                                           (fx* _%i90119%_ _%i90119%_))))
                                 (##fxmodulo
                                  _%next-probe90139%_
                                  _%size90104%_))
                               (##fx+ _%i90119%_ '1)
                               _%deleted90121%_)))))))))))
    (define eqv-table-update!
      (lambda (_%tab90088%_
               _%key90089%_
               _%eqv-table-update!90090%_
               _%default90091%_)
        (if (##fx< (&raw-table-free _%tab90088%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90088%_))
                    '4))
            (__raw-table-rehash! _%tab90088%_)
            '#!void)
        (__eqv-table-update!
         _%tab90088%_
         _%key90089%_
         _%eqv-table-update!90090%_
         _%default90091%_)))
    (define __eqv-table-update!
      (lambda (_%tab90038%_
               _%key90039%_
               _%eqv-table-update!90040%_
               _%default90041%_)
        (let ((_%table90044%_ (&raw-table-table _%tab90038%_))
              (_%seed90045%_ (&raw-table-seed _%tab90038%_)))
          (let* ((_%h90047%_ (fxxor (eqv-hash _%key90039%_) _%seed90045%_))
                 (_%size90050%_ (vector-length _%table90044%_))
                 (_%entries90053%_ (##fxquotient _%size90050%_ '2))
                 (_%start90056%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90047%_ _%entries90053%_)
                   '1)))
            (let _%loop90060%_ ((_%probe90063%_ _%start90056%_)
                                (_%i90065%_ '1)
                                (_%deleted90067%_ '#f))
              (let ((_%k90070%_ (vector-ref _%table90044%_ _%probe90063%_)))
                (if (eq? _%k90070%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90067%_
                          (begin
                            (vector-set!
                             _%table90044%_
                             _%deleted90067%_
                             _%key90039%_)
                            (vector-set!
                             _%table90044%_
                             (##fx+ _%deleted90067%_ '1)
                             (_%eqv-table-update!90040%_ _%default90041%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90038%_
                                (##fx+ (&raw-table-count _%tab90038%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90044%_
                             _%probe90063%_
                             _%key90039%_)
                            (vector-set!
                             _%table90044%_
                             (##fx+ _%probe90063%_ '1)
                             (_%eqv-table-update!90040%_ _%default90041%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90038%_
                                (##fx- (&raw-table-free _%tab90038%_) '1))
                               (&raw-table-count-set!
                                _%tab90038%_
                                (##fx+ (&raw-table-count _%tab90038%_)
                                       '1)))))))
                    (if (eq? _%k90070%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90060%_
                           (let ((_%next-probe90077%_
                                  (fx+ _%start90056%_
                                       _%i90065%_
                                       (fx* _%i90065%_ _%i90065%_))))
                             (##fxmodulo _%next-probe90077%_ _%size90050%_))
                           (##fx+ _%i90065%_ '1)
                           (let ((_%$e90080%_ _%deleted90067%_))
                             (if _%$e90080%_ _%$e90080%_ _%probe90063%_))))
                        (if (eqv? _%key90039%_ _%k90070%_)
                            (let ()
                              (vector-set!
                               _%table90044%_
                               _%probe90063%_
                               _%key90039%_)
                              (vector-set!
                               _%table90044%_
                               (##fx+ _%probe90063%_ '1)
                               (_%eqv-table-update!90040%_
                                (vector-ref
                                 _%table90044%_
                                 (##fx+ _%probe90063%_ '1)))))
                            (let ()
                              (_%loop90060%_
                               (let ((_%next-probe90085%_
                                      (fx+ _%start90056%_
                                           _%i90065%_
                                           (fx* _%i90065%_ _%i90065%_))))
                                 (##fxmodulo
                                  _%next-probe90085%_
                                  _%size90050%_))
                               (##fx+ _%i90065%_ '1)
                               _%deleted90067%_)))))))))))
    (define eqv-table-delete!
      (lambda (_%tab89993%_ _%key89995%_)
        (let ((_%table89998%_ (&raw-table-table _%tab89993%_))
              (_%seed90000%_ (&raw-table-seed _%tab89993%_)))
          (let* ((_%h90003%_ (fxxor (eqv-hash _%key89995%_) _%seed90000%_))
                 (_%size90006%_ (vector-length _%table89998%_))
                 (_%entries90009%_ (##fxquotient _%size90006%_ '2))
                 (_%start90012%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90003%_ _%entries90009%_)
                   '1)))
            (let _%loop90016%_ ((_%probe90019%_ _%start90012%_)
                                (_%i90021%_ '1))
              (let ((_%k90024%_ (vector-ref _%table89998%_ _%probe90019%_)))
                (if (eq? _%k90024%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90024%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90016%_
                           (let ((_%next-probe90029%_
                                  (fx+ _%start90012%_
                                       _%i90021%_
                                       (fx* _%i90021%_ _%i90021%_))))
                             (##fxmodulo _%next-probe90029%_ _%size90006%_))
                           (##fx+ _%i90021%_ '1)))
                        (if (eqv? _%key89995%_ _%k90024%_)
                            (let ()
                              (vector-set!
                               _%table89998%_
                               _%probe90019%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89998%_
                               (##fx+ _%probe90019%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89993%_
                                  (##fx- (&raw-table-count _%tab89993%_)
                                         '1)))))
                            (let ()
                              (_%loop90016%_
                               (let ((_%next-probe90035%_
                                      (fx+ _%start90012%_
                                           _%i90021%_
                                           (fx* _%i90021%_ _%i90021%_))))
                                 (##fxmodulo
                                  _%next-probe90035%_
                                  _%size90006%_))
                               (##fx+ _%i90021%_ '1))))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint89974%_ _%seed89976%_)
        (make-raw-table__%
         _%size-hint89974%_
         symbolic-hash
         eq?
         _%seed89976%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint89982%_ '#f) (_%seed89984%_ '0))
          (make-symbolic-table__% _%size-hint89982%_ _%seed89984%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint89986%_)
        (let ((_%seed89988%_ '0))
          (make-symbolic-table__% _%size-hint89986%_ _%seed89988%_))))
    (define make-symbolic-table
      (lambda _g90772_
        (let ((_g90771_ (##length _g90772_)))
          (cond ((##fx= _g90771_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g90772_))
                ((##fx= _g90771_ 1)
                 (apply (lambda (_%size-hint89986%_)
                          (make-symbolic-table__1 _%size-hint89986%_))
                        _g90772_))
                ((##fx= _g90771_ 2)
                 (apply (lambda (_%size-hint89990%_ _%seed89991%_)
                          (make-symbolic-table__%
                           _%size-hint89990%_
                           _%seed89991%_))
                        _g90772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90772_))))))
    (define symbolic-table-ref
      (lambda (_%tab89927%_ _%key89928%_ _%default89929%_)
        (let ((_%table89931%_ (&raw-table-table _%tab89927%_))
              (_%seed89932%_ (&raw-table-seed _%tab89927%_)))
          (let* ((_%h89934%_
                  (fxxor (symbolic-hash _%key89928%_) _%seed89932%_))
                 (_%size89937%_ (vector-length _%table89931%_))
                 (_%entries89940%_ (##fxquotient _%size89937%_ '2))
                 (_%start89943%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89934%_ _%entries89940%_)
                   '1)))
            (let _%loop89947%_ ((_%probe89950%_ _%start89943%_)
                                (_%i89952%_ '1)
                                (_%deleted89954%_ '#f))
              (let ((_%k89957%_ (vector-ref _%table89931%_ _%probe89950%_)))
                (if (eq? _%k89957%_ (macro-unused-obj))
                    (let () _%default89929%_)
                    (if (eq? _%k89957%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89947%_
                           (let ((_%next-probe89962%_
                                  (fx+ _%start89943%_
                                       _%i89952%_
                                       (fx* _%i89952%_ _%i89952%_))))
                             (##fxmodulo _%next-probe89962%_ _%size89937%_))
                           (##fx+ _%i89952%_ '1)
                           (let ((_%$e89965%_ _%deleted89954%_))
                             (if _%$e89965%_ _%$e89965%_ _%probe89950%_))))
                        (if (eq? _%key89928%_ _%k89957%_)
                            (let ()
                              (vector-ref
                               _%table89931%_
                               (##fx+ _%probe89950%_ '1)))
                            (let ()
                              (_%loop89947%_
                               (let ((_%next-probe89970%_
                                      (fx+ _%start89943%_
                                           _%i89952%_
                                           (fx* _%i89952%_ _%i89952%_))))
                                 (##fxmodulo
                                  _%next-probe89970%_
                                  _%size89937%_))
                               (##fx+ _%i89952%_ '1)
                               _%deleted89954%_)))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89923%_ _%key89924%_ _%value89925%_)
        (if (##fx< (&raw-table-free _%tab89923%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89923%_))
                    '4))
            (__raw-table-rehash! _%tab89923%_)
            '#!void)
        (__symbolic-table-set! _%tab89923%_ _%key89924%_ _%value89925%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89874%_ _%key89875%_ _%value89876%_)
        (let ((_%table89879%_ (&raw-table-table _%tab89874%_))
              (_%seed89880%_ (&raw-table-seed _%tab89874%_)))
          (let* ((_%h89882%_
                  (fxxor (symbolic-hash _%key89875%_) _%seed89880%_))
                 (_%size89885%_ (vector-length _%table89879%_))
                 (_%entries89888%_ (##fxquotient _%size89885%_ '2))
                 (_%start89891%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89882%_ _%entries89888%_)
                   '1)))
            (let _%loop89895%_ ((_%probe89898%_ _%start89891%_)
                                (_%i89900%_ '1)
                                (_%deleted89902%_ '#f))
              (let ((_%k89905%_ (vector-ref _%table89879%_ _%probe89898%_)))
                (if (eq? _%k89905%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89902%_
                          (begin
                            (vector-set!
                             _%table89879%_
                             _%deleted89902%_
                             _%key89875%_)
                            (vector-set!
                             _%table89879%_
                             (##fx+ _%deleted89902%_ '1)
                             _%value89876%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89874%_
                                (##fx+ (&raw-table-count _%tab89874%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89879%_
                             _%probe89898%_
                             _%key89875%_)
                            (vector-set!
                             _%table89879%_
                             (##fx+ _%probe89898%_ '1)
                             _%value89876%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89874%_
                                (##fx- (&raw-table-free _%tab89874%_) '1))
                               (&raw-table-count-set!
                                _%tab89874%_
                                (##fx+ (&raw-table-count _%tab89874%_)
                                       '1)))))))
                    (if (eq? _%k89905%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89895%_
                           (let ((_%next-probe89912%_
                                  (fx+ _%start89891%_
                                       _%i89900%_
                                       (fx* _%i89900%_ _%i89900%_))))
                             (##fxmodulo _%next-probe89912%_ _%size89885%_))
                           (##fx+ _%i89900%_ '1)
                           (let ((_%$e89915%_ _%deleted89902%_))
                             (if _%$e89915%_ _%$e89915%_ _%probe89898%_))))
                        (if (eq? _%key89875%_ _%k89905%_)
                            (let ()
                              (vector-set!
                               _%table89879%_
                               _%probe89898%_
                               _%key89875%_)
                              (vector-set!
                               _%table89879%_
                               (##fx+ _%probe89898%_ '1)
                               _%value89876%_))
                            (let ()
                              (_%loop89895%_
                               (let ((_%next-probe89920%_
                                      (fx+ _%start89891%_
                                           _%i89900%_
                                           (fx* _%i89900%_ _%i89900%_))))
                                 (##fxmodulo
                                  _%next-probe89920%_
                                  _%size89885%_))
                               (##fx+ _%i89900%_ '1)
                               _%deleted89902%_)))))))))))
    (define symbolic-table-update!
      (lambda (_%tab89869%_
               _%key89870%_
               _%symbolic-table-update!89871%_
               _%default89872%_)
        (if (##fx< (&raw-table-free _%tab89869%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89869%_))
                    '4))
            (__raw-table-rehash! _%tab89869%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89869%_
         _%key89870%_
         _%symbolic-table-update!89871%_
         _%default89872%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89819%_
               _%key89820%_
               _%symbolic-table-update!89821%_
               _%default89822%_)
        (let ((_%table89825%_ (&raw-table-table _%tab89819%_))
              (_%seed89826%_ (&raw-table-seed _%tab89819%_)))
          (let* ((_%h89828%_
                  (fxxor (symbolic-hash _%key89820%_) _%seed89826%_))
                 (_%size89831%_ (vector-length _%table89825%_))
                 (_%entries89834%_ (##fxquotient _%size89831%_ '2))
                 (_%start89837%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89828%_ _%entries89834%_)
                   '1)))
            (let _%loop89841%_ ((_%probe89844%_ _%start89837%_)
                                (_%i89846%_ '1)
                                (_%deleted89848%_ '#f))
              (let ((_%k89851%_ (vector-ref _%table89825%_ _%probe89844%_)))
                (if (eq? _%k89851%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89848%_
                          (begin
                            (vector-set!
                             _%table89825%_
                             _%deleted89848%_
                             _%key89820%_)
                            (vector-set!
                             _%table89825%_
                             (##fx+ _%deleted89848%_ '1)
                             (_%symbolic-table-update!89821%_
                              _%default89822%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89819%_
                                (##fx+ (&raw-table-count _%tab89819%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89825%_
                             _%probe89844%_
                             _%key89820%_)
                            (vector-set!
                             _%table89825%_
                             (##fx+ _%probe89844%_ '1)
                             (_%symbolic-table-update!89821%_
                              _%default89822%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89819%_
                                (##fx- (&raw-table-free _%tab89819%_) '1))
                               (&raw-table-count-set!
                                _%tab89819%_
                                (##fx+ (&raw-table-count _%tab89819%_)
                                       '1)))))))
                    (if (eq? _%k89851%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89841%_
                           (let ((_%next-probe89858%_
                                  (fx+ _%start89837%_
                                       _%i89846%_
                                       (fx* _%i89846%_ _%i89846%_))))
                             (##fxmodulo _%next-probe89858%_ _%size89831%_))
                           (##fx+ _%i89846%_ '1)
                           (let ((_%$e89861%_ _%deleted89848%_))
                             (if _%$e89861%_ _%$e89861%_ _%probe89844%_))))
                        (if (eq? _%key89820%_ _%k89851%_)
                            (let ()
                              (vector-set!
                               _%table89825%_
                               _%probe89844%_
                               _%key89820%_)
                              (vector-set!
                               _%table89825%_
                               (##fx+ _%probe89844%_ '1)
                               (_%symbolic-table-update!89821%_
                                (vector-ref
                                 _%table89825%_
                                 (##fx+ _%probe89844%_ '1)))))
                            (let ()
                              (_%loop89841%_
                               (let ((_%next-probe89866%_
                                      (fx+ _%start89837%_
                                           _%i89846%_
                                           (fx* _%i89846%_ _%i89846%_))))
                                 (##fxmodulo
                                  _%next-probe89866%_
                                  _%size89831%_))
                               (##fx+ _%i89846%_ '1)
                               _%deleted89848%_)))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89774%_ _%key89776%_)
        (let ((_%table89779%_ (&raw-table-table _%tab89774%_))
              (_%seed89781%_ (&raw-table-seed _%tab89774%_)))
          (let* ((_%h89784%_
                  (fxxor (symbolic-hash _%key89776%_) _%seed89781%_))
                 (_%size89787%_ (vector-length _%table89779%_))
                 (_%entries89790%_ (##fxquotient _%size89787%_ '2))
                 (_%start89793%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89784%_ _%entries89790%_)
                   '1)))
            (let _%loop89797%_ ((_%probe89800%_ _%start89793%_)
                                (_%i89802%_ '1))
              (let ((_%k89805%_ (vector-ref _%table89779%_ _%probe89800%_)))
                (if (eq? _%k89805%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89805%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89797%_
                           (let ((_%next-probe89810%_
                                  (fx+ _%start89793%_
                                       _%i89802%_
                                       (fx* _%i89802%_ _%i89802%_))))
                             (##fxmodulo _%next-probe89810%_ _%size89787%_))
                           (##fx+ _%i89802%_ '1)))
                        (if (eq? _%key89776%_ _%k89805%_)
                            (let ()
                              (vector-set!
                               _%table89779%_
                               _%probe89800%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89779%_
                               (##fx+ _%probe89800%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89774%_
                                  (##fx- (&raw-table-count _%tab89774%_)
                                         '1)))))
                            (let ()
                              (_%loop89797%_
                               (let ((_%next-probe89816%_
                                      (fx+ _%start89793%_
                                           _%i89802%_
                                           (fx* _%i89802%_ _%i89802%_))))
                                 (##fxmodulo
                                  _%next-probe89816%_
                                  _%size89787%_))
                               (##fx+ _%i89802%_ '1))))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89755%_ _%seed89757%_)
        (make-raw-table__%
         _%size-hint89755%_
         string-hash
         ##string=?
         _%seed89757%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89763%_ '#f) (_%seed89765%_ '0))
          (make-string-table__% _%size-hint89763%_ _%seed89765%_))))
    (define make-string-table__1
      (lambda (_%size-hint89767%_)
        (let ((_%seed89769%_ '0))
          (make-string-table__% _%size-hint89767%_ _%seed89769%_))))
    (define make-string-table
      (lambda _g90774_
        (let ((_g90773_ (##length _g90774_)))
          (cond ((##fx= _g90773_ 0)
                 (apply (lambda () (make-string-table__0)) _g90774_))
                ((##fx= _g90773_ 1)
                 (apply (lambda (_%size-hint89767%_)
                          (make-string-table__1 _%size-hint89767%_))
                        _g90774_))
                ((##fx= _g90773_ 2)
                 (apply (lambda (_%size-hint89771%_ _%seed89772%_)
                          (make-string-table__%
                           _%size-hint89771%_
                           _%seed89772%_))
                        _g90774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90774_))))))
    (define string-table-ref
      (lambda (_%tab89708%_ _%key89709%_ _%default89710%_)
        (let ((_%table89712%_ (&raw-table-table _%tab89708%_))
              (_%seed89713%_ (&raw-table-seed _%tab89708%_)))
          (let* ((_%h89715%_
                  (fxxor (##string=?-hash _%key89709%_) _%seed89713%_))
                 (_%size89718%_ (vector-length _%table89712%_))
                 (_%entries89721%_ (##fxquotient _%size89718%_ '2))
                 (_%start89724%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89715%_ _%entries89721%_)
                   '1)))
            (let _%loop89728%_ ((_%probe89731%_ _%start89724%_)
                                (_%i89733%_ '1)
                                (_%deleted89735%_ '#f))
              (let ((_%k89738%_ (vector-ref _%table89712%_ _%probe89731%_)))
                (if (eq? _%k89738%_ (macro-unused-obj))
                    (let () _%default89710%_)
                    (if (eq? _%k89738%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89728%_
                           (let ((_%next-probe89743%_
                                  (fx+ _%start89724%_
                                       _%i89733%_
                                       (fx* _%i89733%_ _%i89733%_))))
                             (##fxmodulo _%next-probe89743%_ _%size89718%_))
                           (##fx+ _%i89733%_ '1)
                           (let ((_%$e89746%_ _%deleted89735%_))
                             (if _%$e89746%_ _%$e89746%_ _%probe89731%_))))
                        (if (##string=? _%key89709%_ _%k89738%_)
                            (let ()
                              (vector-ref
                               _%table89712%_
                               (##fx+ _%probe89731%_ '1)))
                            (let ()
                              (_%loop89728%_
                               (let ((_%next-probe89751%_
                                      (fx+ _%start89724%_
                                           _%i89733%_
                                           (fx* _%i89733%_ _%i89733%_))))
                                 (##fxmodulo
                                  _%next-probe89751%_
                                  _%size89718%_))
                               (##fx+ _%i89733%_ '1)
                               _%deleted89735%_)))))))))))
    (define string-table-set!
      (lambda (_%tab89704%_ _%key89705%_ _%value89706%_)
        (if (##fx< (&raw-table-free _%tab89704%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89704%_))
                    '4))
            (__raw-table-rehash! _%tab89704%_)
            '#!void)
        (__string-table-set! _%tab89704%_ _%key89705%_ _%value89706%_)))
    (define __string-table-set!
      (lambda (_%tab89655%_ _%key89656%_ _%value89657%_)
        (let ((_%table89660%_ (&raw-table-table _%tab89655%_))
              (_%seed89661%_ (&raw-table-seed _%tab89655%_)))
          (let* ((_%h89663%_
                  (fxxor (##string=?-hash _%key89656%_) _%seed89661%_))
                 (_%size89666%_ (vector-length _%table89660%_))
                 (_%entries89669%_ (##fxquotient _%size89666%_ '2))
                 (_%start89672%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89663%_ _%entries89669%_)
                   '1)))
            (let _%loop89676%_ ((_%probe89679%_ _%start89672%_)
                                (_%i89681%_ '1)
                                (_%deleted89683%_ '#f))
              (let ((_%k89686%_ (vector-ref _%table89660%_ _%probe89679%_)))
                (if (eq? _%k89686%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89683%_
                          (begin
                            (vector-set!
                             _%table89660%_
                             _%deleted89683%_
                             _%key89656%_)
                            (vector-set!
                             _%table89660%_
                             (##fx+ _%deleted89683%_ '1)
                             _%value89657%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89655%_
                                (##fx+ (&raw-table-count _%tab89655%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89660%_
                             _%probe89679%_
                             _%key89656%_)
                            (vector-set!
                             _%table89660%_
                             (##fx+ _%probe89679%_ '1)
                             _%value89657%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89655%_
                                (##fx- (&raw-table-free _%tab89655%_) '1))
                               (&raw-table-count-set!
                                _%tab89655%_
                                (##fx+ (&raw-table-count _%tab89655%_)
                                       '1)))))))
                    (if (eq? _%k89686%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89676%_
                           (let ((_%next-probe89693%_
                                  (fx+ _%start89672%_
                                       _%i89681%_
                                       (fx* _%i89681%_ _%i89681%_))))
                             (##fxmodulo _%next-probe89693%_ _%size89666%_))
                           (##fx+ _%i89681%_ '1)
                           (let ((_%$e89696%_ _%deleted89683%_))
                             (if _%$e89696%_ _%$e89696%_ _%probe89679%_))))
                        (if (##string=? _%key89656%_ _%k89686%_)
                            (let ()
                              (vector-set!
                               _%table89660%_
                               _%probe89679%_
                               _%key89656%_)
                              (vector-set!
                               _%table89660%_
                               (##fx+ _%probe89679%_ '1)
                               _%value89657%_))
                            (let ()
                              (_%loop89676%_
                               (let ((_%next-probe89701%_
                                      (fx+ _%start89672%_
                                           _%i89681%_
                                           (fx* _%i89681%_ _%i89681%_))))
                                 (##fxmodulo
                                  _%next-probe89701%_
                                  _%size89666%_))
                               (##fx+ _%i89681%_ '1)
                               _%deleted89683%_)))))))))))
    (define string-table-update!
      (lambda (_%tab89650%_
               _%key89651%_
               _%string-table-update!89652%_
               _%default89653%_)
        (if (##fx< (&raw-table-free _%tab89650%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89650%_))
                    '4))
            (__raw-table-rehash! _%tab89650%_)
            '#!void)
        (__string-table-update!
         _%tab89650%_
         _%key89651%_
         _%string-table-update!89652%_
         _%default89653%_)))
    (define __string-table-update!
      (lambda (_%tab89600%_
               _%key89601%_
               _%string-table-update!89602%_
               _%default89603%_)
        (let ((_%table89606%_ (&raw-table-table _%tab89600%_))
              (_%seed89607%_ (&raw-table-seed _%tab89600%_)))
          (let* ((_%h89609%_
                  (fxxor (##string=?-hash _%key89601%_) _%seed89607%_))
                 (_%size89612%_ (vector-length _%table89606%_))
                 (_%entries89615%_ (##fxquotient _%size89612%_ '2))
                 (_%start89618%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89609%_ _%entries89615%_)
                   '1)))
            (let _%loop89622%_ ((_%probe89625%_ _%start89618%_)
                                (_%i89627%_ '1)
                                (_%deleted89629%_ '#f))
              (let ((_%k89632%_ (vector-ref _%table89606%_ _%probe89625%_)))
                (if (eq? _%k89632%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89629%_
                          (begin
                            (vector-set!
                             _%table89606%_
                             _%deleted89629%_
                             _%key89601%_)
                            (vector-set!
                             _%table89606%_
                             (##fx+ _%deleted89629%_ '1)
                             (_%string-table-update!89602%_ _%default89603%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89600%_
                                (##fx+ (&raw-table-count _%tab89600%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89606%_
                             _%probe89625%_
                             _%key89601%_)
                            (vector-set!
                             _%table89606%_
                             (##fx+ _%probe89625%_ '1)
                             (_%string-table-update!89602%_ _%default89603%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89600%_
                                (##fx- (&raw-table-free _%tab89600%_) '1))
                               (&raw-table-count-set!
                                _%tab89600%_
                                (##fx+ (&raw-table-count _%tab89600%_)
                                       '1)))))))
                    (if (eq? _%k89632%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89622%_
                           (let ((_%next-probe89639%_
                                  (fx+ _%start89618%_
                                       _%i89627%_
                                       (fx* _%i89627%_ _%i89627%_))))
                             (##fxmodulo _%next-probe89639%_ _%size89612%_))
                           (##fx+ _%i89627%_ '1)
                           (let ((_%$e89642%_ _%deleted89629%_))
                             (if _%$e89642%_ _%$e89642%_ _%probe89625%_))))
                        (if (##string=? _%key89601%_ _%k89632%_)
                            (let ()
                              (vector-set!
                               _%table89606%_
                               _%probe89625%_
                               _%key89601%_)
                              (vector-set!
                               _%table89606%_
                               (##fx+ _%probe89625%_ '1)
                               (_%string-table-update!89602%_
                                (vector-ref
                                 _%table89606%_
                                 (##fx+ _%probe89625%_ '1)))))
                            (let ()
                              (_%loop89622%_
                               (let ((_%next-probe89647%_
                                      (fx+ _%start89618%_
                                           _%i89627%_
                                           (fx* _%i89627%_ _%i89627%_))))
                                 (##fxmodulo
                                  _%next-probe89647%_
                                  _%size89612%_))
                               (##fx+ _%i89627%_ '1)
                               _%deleted89629%_)))))))))))
    (define string-table-delete!
      (lambda (_%tab89555%_ _%key89557%_)
        (let ((_%table89560%_ (&raw-table-table _%tab89555%_))
              (_%seed89562%_ (&raw-table-seed _%tab89555%_)))
          (let* ((_%h89565%_
                  (fxxor (##string=?-hash _%key89557%_) _%seed89562%_))
                 (_%size89568%_ (vector-length _%table89560%_))
                 (_%entries89571%_ (##fxquotient _%size89568%_ '2))
                 (_%start89574%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89565%_ _%entries89571%_)
                   '1)))
            (let _%loop89578%_ ((_%probe89581%_ _%start89574%_)
                                (_%i89583%_ '1))
              (let ((_%k89586%_ (vector-ref _%table89560%_ _%probe89581%_)))
                (if (eq? _%k89586%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89586%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89578%_
                           (let ((_%next-probe89591%_
                                  (fx+ _%start89574%_
                                       _%i89583%_
                                       (fx* _%i89583%_ _%i89583%_))))
                             (##fxmodulo _%next-probe89591%_ _%size89568%_))
                           (##fx+ _%i89583%_ '1)))
                        (if (##string=? _%key89557%_ _%k89586%_)
                            (let ()
                              (vector-set!
                               _%table89560%_
                               _%probe89581%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89560%_
                               (##fx+ _%probe89581%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89555%_
                                  (##fx- (&raw-table-count _%tab89555%_)
                                         '1)))))
                            (let ()
                              (_%loop89578%_
                               (let ((_%next-probe89597%_
                                      (fx+ _%start89574%_
                                           _%i89583%_
                                           (fx* _%i89583%_ _%i89583%_))))
                                 (##fxmodulo
                                  _%next-probe89597%_
                                  _%size89568%_))
                               (##fx+ _%i89583%_ '1))))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint89536%_ _%seed89538%_)
        (make-raw-table__%
         _%size-hint89536%_
         immediate-hash
         eq?
         _%seed89538%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint89544%_ '#f) (_%seed89546%_ '0))
          (make-immediate-table__% _%size-hint89544%_ _%seed89546%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint89548%_)
        (let ((_%seed89550%_ '0))
          (make-immediate-table__% _%size-hint89548%_ _%seed89550%_))))
    (define make-immediate-table
      (lambda _g90776_
        (let ((_g90775_ (##length _g90776_)))
          (cond ((##fx= _g90775_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g90776_))
                ((##fx= _g90775_ 1)
                 (apply (lambda (_%size-hint89548%_)
                          (make-immediate-table__1 _%size-hint89548%_))
                        _g90776_))
                ((##fx= _g90775_ 2)
                 (apply (lambda (_%size-hint89552%_ _%seed89553%_)
                          (make-immediate-table__%
                           _%size-hint89552%_
                           _%seed89553%_))
                        _g90776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90776_))))))
    (define immediate-table-ref
      (lambda (_%tab89489%_ _%key89490%_ _%default89491%_)
        (let ((_%table89493%_ (&raw-table-table _%tab89489%_))
              (_%seed89494%_ (&raw-table-seed _%tab89489%_)))
          (let* ((_%h89496%_
                  (fxxor (immediate-hash _%key89490%_) _%seed89494%_))
                 (_%size89499%_ (vector-length _%table89493%_))
                 (_%entries89502%_ (##fxquotient _%size89499%_ '2))
                 (_%start89505%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89496%_ _%entries89502%_)
                   '1)))
            (let _%loop89509%_ ((_%probe89512%_ _%start89505%_)
                                (_%i89514%_ '1)
                                (_%deleted89516%_ '#f))
              (let ((_%k89519%_ (vector-ref _%table89493%_ _%probe89512%_)))
                (if (eq? _%k89519%_ (macro-unused-obj))
                    (let () _%default89491%_)
                    (if (eq? _%k89519%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89509%_
                           (let ((_%next-probe89524%_
                                  (fx+ _%start89505%_
                                       _%i89514%_
                                       (fx* _%i89514%_ _%i89514%_))))
                             (##fxmodulo _%next-probe89524%_ _%size89499%_))
                           (##fx+ _%i89514%_ '1)
                           (let ((_%$e89527%_ _%deleted89516%_))
                             (if _%$e89527%_ _%$e89527%_ _%probe89512%_))))
                        (if (eq? _%key89490%_ _%k89519%_)
                            (let ()
                              (vector-ref
                               _%table89493%_
                               (##fx+ _%probe89512%_ '1)))
                            (let ()
                              (_%loop89509%_
                               (let ((_%next-probe89532%_
                                      (fx+ _%start89505%_
                                           _%i89514%_
                                           (fx* _%i89514%_ _%i89514%_))))
                                 (##fxmodulo
                                  _%next-probe89532%_
                                  _%size89499%_))
                               (##fx+ _%i89514%_ '1)
                               _%deleted89516%_)))))))))))
    (define immediate-table-set!
      (lambda (_%tab89485%_ _%key89486%_ _%value89487%_)
        (if (##fx< (&raw-table-free _%tab89485%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89485%_))
                    '4))
            (__raw-table-rehash! _%tab89485%_)
            '#!void)
        (__immediate-table-set! _%tab89485%_ _%key89486%_ _%value89487%_)))
    (define __immediate-table-set!
      (lambda (_%tab89436%_ _%key89437%_ _%value89438%_)
        (let ((_%table89441%_ (&raw-table-table _%tab89436%_))
              (_%seed89442%_ (&raw-table-seed _%tab89436%_)))
          (let* ((_%h89444%_
                  (fxxor (immediate-hash _%key89437%_) _%seed89442%_))
                 (_%size89447%_ (vector-length _%table89441%_))
                 (_%entries89450%_ (##fxquotient _%size89447%_ '2))
                 (_%start89453%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89444%_ _%entries89450%_)
                   '1)))
            (let _%loop89457%_ ((_%probe89460%_ _%start89453%_)
                                (_%i89462%_ '1)
                                (_%deleted89464%_ '#f))
              (let ((_%k89467%_ (vector-ref _%table89441%_ _%probe89460%_)))
                (if (eq? _%k89467%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89464%_
                          (begin
                            (vector-set!
                             _%table89441%_
                             _%deleted89464%_
                             _%key89437%_)
                            (vector-set!
                             _%table89441%_
                             (##fx+ _%deleted89464%_ '1)
                             _%value89438%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89436%_
                                (##fx+ (&raw-table-count _%tab89436%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89441%_
                             _%probe89460%_
                             _%key89437%_)
                            (vector-set!
                             _%table89441%_
                             (##fx+ _%probe89460%_ '1)
                             _%value89438%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89436%_
                                (##fx- (&raw-table-free _%tab89436%_) '1))
                               (&raw-table-count-set!
                                _%tab89436%_
                                (##fx+ (&raw-table-count _%tab89436%_)
                                       '1)))))))
                    (if (eq? _%k89467%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89457%_
                           (let ((_%next-probe89474%_
                                  (fx+ _%start89453%_
                                       _%i89462%_
                                       (fx* _%i89462%_ _%i89462%_))))
                             (##fxmodulo _%next-probe89474%_ _%size89447%_))
                           (##fx+ _%i89462%_ '1)
                           (let ((_%$e89477%_ _%deleted89464%_))
                             (if _%$e89477%_ _%$e89477%_ _%probe89460%_))))
                        (if (eq? _%key89437%_ _%k89467%_)
                            (let ()
                              (vector-set!
                               _%table89441%_
                               _%probe89460%_
                               _%key89437%_)
                              (vector-set!
                               _%table89441%_
                               (##fx+ _%probe89460%_ '1)
                               _%value89438%_))
                            (let ()
                              (_%loop89457%_
                               (let ((_%next-probe89482%_
                                      (fx+ _%start89453%_
                                           _%i89462%_
                                           (fx* _%i89462%_ _%i89462%_))))
                                 (##fxmodulo
                                  _%next-probe89482%_
                                  _%size89447%_))
                               (##fx+ _%i89462%_ '1)
                               _%deleted89464%_)))))))))))
    (define immediate-table-update!
      (lambda (_%tab89431%_
               _%key89432%_
               _%immediate-table-update!89433%_
               _%default89434%_)
        (if (##fx< (&raw-table-free _%tab89431%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89431%_))
                    '4))
            (__raw-table-rehash! _%tab89431%_)
            '#!void)
        (__immediate-table-update!
         _%tab89431%_
         _%key89432%_
         _%immediate-table-update!89433%_
         _%default89434%_)))
    (define __immediate-table-update!
      (lambda (_%tab89381%_
               _%key89382%_
               _%immediate-table-update!89383%_
               _%default89384%_)
        (let ((_%table89387%_ (&raw-table-table _%tab89381%_))
              (_%seed89388%_ (&raw-table-seed _%tab89381%_)))
          (let* ((_%h89390%_
                  (fxxor (immediate-hash _%key89382%_) _%seed89388%_))
                 (_%size89393%_ (vector-length _%table89387%_))
                 (_%entries89396%_ (##fxquotient _%size89393%_ '2))
                 (_%start89399%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89390%_ _%entries89396%_)
                   '1)))
            (let _%loop89403%_ ((_%probe89406%_ _%start89399%_)
                                (_%i89408%_ '1)
                                (_%deleted89410%_ '#f))
              (let ((_%k89413%_ (vector-ref _%table89387%_ _%probe89406%_)))
                (if (eq? _%k89413%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89410%_
                          (begin
                            (vector-set!
                             _%table89387%_
                             _%deleted89410%_
                             _%key89382%_)
                            (vector-set!
                             _%table89387%_
                             (##fx+ _%deleted89410%_ '1)
                             (_%immediate-table-update!89383%_
                              _%default89384%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89381%_
                                (##fx+ (&raw-table-count _%tab89381%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89387%_
                             _%probe89406%_
                             _%key89382%_)
                            (vector-set!
                             _%table89387%_
                             (##fx+ _%probe89406%_ '1)
                             (_%immediate-table-update!89383%_
                              _%default89384%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89381%_
                                (##fx- (&raw-table-free _%tab89381%_) '1))
                               (&raw-table-count-set!
                                _%tab89381%_
                                (##fx+ (&raw-table-count _%tab89381%_)
                                       '1)))))))
                    (if (eq? _%k89413%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89403%_
                           (let ((_%next-probe89420%_
                                  (fx+ _%start89399%_
                                       _%i89408%_
                                       (fx* _%i89408%_ _%i89408%_))))
                             (##fxmodulo _%next-probe89420%_ _%size89393%_))
                           (##fx+ _%i89408%_ '1)
                           (let ((_%$e89423%_ _%deleted89410%_))
                             (if _%$e89423%_ _%$e89423%_ _%probe89406%_))))
                        (if (eq? _%key89382%_ _%k89413%_)
                            (let ()
                              (vector-set!
                               _%table89387%_
                               _%probe89406%_
                               _%key89382%_)
                              (vector-set!
                               _%table89387%_
                               (##fx+ _%probe89406%_ '1)
                               (_%immediate-table-update!89383%_
                                (vector-ref
                                 _%table89387%_
                                 (##fx+ _%probe89406%_ '1)))))
                            (let ()
                              (_%loop89403%_
                               (let ((_%next-probe89428%_
                                      (fx+ _%start89399%_
                                           _%i89408%_
                                           (fx* _%i89408%_ _%i89408%_))))
                                 (##fxmodulo
                                  _%next-probe89428%_
                                  _%size89393%_))
                               (##fx+ _%i89408%_ '1)
                               _%deleted89410%_)))))))))))
    (define immediate-table-delete!
      (lambda (_%tab89336%_ _%key89338%_)
        (let ((_%table89341%_ (&raw-table-table _%tab89336%_))
              (_%seed89343%_ (&raw-table-seed _%tab89336%_)))
          (let* ((_%h89346%_
                  (fxxor (immediate-hash _%key89338%_) _%seed89343%_))
                 (_%size89349%_ (vector-length _%table89341%_))
                 (_%entries89352%_ (##fxquotient _%size89349%_ '2))
                 (_%start89355%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89346%_ _%entries89352%_)
                   '1)))
            (let _%loop89359%_ ((_%probe89362%_ _%start89355%_)
                                (_%i89364%_ '1))
              (let ((_%k89367%_ (vector-ref _%table89341%_ _%probe89362%_)))
                (if (eq? _%k89367%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89367%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89359%_
                           (let ((_%next-probe89372%_
                                  (fx+ _%start89355%_
                                       _%i89364%_
                                       (fx* _%i89364%_ _%i89364%_))))
                             (##fxmodulo _%next-probe89372%_ _%size89349%_))
                           (##fx+ _%i89364%_ '1)))
                        (if (eq? _%key89338%_ _%k89367%_)
                            (let ()
                              (vector-set!
                               _%table89341%_
                               _%probe89362%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89341%_
                               (##fx+ _%probe89362%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89336%_
                                  (##fx- (&raw-table-count _%tab89336%_)
                                         '1)))))
                            (let ()
                              (_%loop89359%_
                               (let ((_%next-probe89378%_
                                      (fx+ _%start89355%_
                                           _%i89364%_
                                           (fx* _%i89364%_ _%i89364%_))))
                                 (##fxmodulo
                                  _%next-probe89378%_
                                  _%size89349%_))
                               (##fx+ _%i89364%_ '1))))))))))))
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
      (lambda (_%tab89334%_)
        (##unchecked-structure-ref
         _%tab89334%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab89332%_)
        (##unchecked-structure-ref
         _%tab89332%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab89329%_ _%val89330%_)
        (##unchecked-structure-set!
         _%tab89329%_
         _%val89330%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab89326%_ _%val89327%_)
        (##unchecked-structure-set!
         _%tab89326%_
         _%val89327%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint89302%_ _%klass89303%_ _%flags89304%_)
        (let ((_%gcht89306%_
               (__gc-table-new
                (if (fixnum? _%size-hint89302%_) _%size-hint89302%_ '16)
                _%flags89304%_)))
          (##structure _%klass89303%_ _%gcht89306%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint89311%_)
        (let* ((_%klass89313%_ __gc-table::t) (_%flags89315%_ '0))
          (make-gc-table__%
           _%size-hint89311%_
           _%klass89313%_
           _%flags89315%_))))
    (define make-gc-table__1
      (lambda (_%size-hint89317%_ _%klass89318%_)
        (let ((_%flags89320%_ '0))
          (make-gc-table__%
           _%size-hint89317%_
           _%klass89318%_
           _%flags89320%_))))
    (define make-gc-table
      (lambda _g90778_
        (let ((_g90777_ (##length _g90778_)))
          (cond ((##fx= _g90777_ 1)
                 (apply (lambda (_%size-hint89311%_)
                          (make-gc-table__0 _%size-hint89311%_))
                        _g90778_))
                ((##fx= _g90777_ 2)
                 (apply (lambda (_%size-hint89317%_ _%klass89318%_)
                          (make-gc-table__1 _%size-hint89317%_ _%klass89318%_))
                        _g90778_))
                ((##fx= _g90777_ 3)
                 (apply (lambda (_%size-hint89322%_
                                 _%klass89323%_
                                 _%flags89324%_)
                          (make-gc-table__%
                           _%size-hint89322%_
                           _%klass89323%_
                           _%flags89324%_))
                        _g90778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90778_))))))
    (define __gc-table-immediate
      (lambda (_%tab89293%_)
        (let ((_%$e89295%_ (&gc-table-immediate _%tab89293%_)))
          (if _%$e89295%_
              _%$e89295%_
              (let ((_%immediate89299%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab89293%_ _%immediate89299%_)
                _%immediate89299%_)))))
    (define __gc-table-new
      (lambda (_%size89283%_ _%flags89284%_)
        (let* ((_%flags89286%_
                (##fxand _%flags89284%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags89288%_
                (fxior _%flags89286%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht89290%_
                (##gc-hash-table-allocate
                 _%size89283%_
                 _%flags89288%_
                 __gc-table-loads)))
          _%gcht89290%_)))
    (define __gc-table-e
      (lambda (_%tab89278%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht89281%_ (&gc-table-gcht _%tab89278%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht89281%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht89281%_
              (begin
                (__gc-table-rehash! _%tab89278%_)
                (&gc-table-gcht _%tab89278%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab89269%_)
        (let* ((_%old-table89271%_ (&gc-table-gcht _%tab89269%_))
               (_%new-table89273%_
                (##gc-hash-table-resize! _%old-table89271%_ __gc-table-loads))
               (_%gcht89275%_
                (##gc-hash-table-rehash!
                 _%old-table89271%_
                 _%new-table89273%_)))
          (&gc-table-gcht-set! _%tab89269%_ _%gcht89275%_))))
    (define gc-table-ref
      (lambda (_%tab89253%_ _%key89254%_ _%default89255%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89254%_)
            (let ()
              (let* ((_%gcht89259%_ (__gc-table-e _%tab89253%_))
                     (_%value89261%_
                      (##gc-hash-table-ref _%gcht89259%_ _%key89254%_)))
                (if (eq? _%value89261%_ (macro-unused-obj))
                    _%default89255%_
                    _%value89261%_)))
            (let ((_%$e89263%_ (&gc-table-immediate _%tab89253%_)))
              (if _%$e89263%_
                  ((lambda (_%immediate89266%_)
                     (immediate-table-ref
                      _%immediate89266%_
                      _%key89254%_
                      _%default89255%_))
                   _%$e89263%_)
                  (let () _%default89255%_))))))
    (define gc-table-set!
      (lambda (_%tab89246%_ _%key89247%_ _%value89248%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89247%_)
            (let ((_%gcht89251%_ (__gc-table-e _%tab89246%_)))
              (if (##gc-hash-table-set!
                   _%gcht89251%_
                   _%key89247%_
                   _%value89248%_)
                  (begin
                    (__gc-table-rehash! _%tab89246%_)
                    (gc-table-set! _%tab89246%_ _%key89247%_ _%value89248%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab89246%_)
             _%key89247%_
             _%value89248%_))))
    (define gc-table-update!
      (lambda (_%tab89239%_ _%key89240%_ _%update89241%_ _%default89242%_)
        (if (##mem-allocated? _%key89240%_)
            (let ((_%value89244%_
                   (gc-table-ref _%tab89239%_ _%key89240%_ _%default89242%_)))
              (gc-table-set!
               _%tab89239%_
               _%key89240%_
               (_%update89241%_ _%value89244%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab89239%_)
             _%key89240%_
             _%update89241%_
             _%default89242%_))))
    (define gc-table-delete!
      (lambda (_%tab89227%_ _%key89228%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89228%_)
            (let ((_%gcht89232%_ (__gc-table-e _%tab89227%_)))
              (if (##gc-hash-table-set!
                   _%gcht89232%_
                   _%key89228%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab89227%_)
                    (gc-table-delete! _%tab89227%_ _%key89228%_))
                  '#!void))
            (let ((_%$e89234%_ (&gc-table-immediate _%tab89227%_)))
              (if _%$e89234%_
                  ((lambda (_%immediate89237%_)
                     (immediate-table-delete! _%immediate89237%_ _%key89228%_))
                   _%$e89234%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab89208%_ _%proc89209%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht89212%_ (__gc-table-e _%tab89208%_)))
            (let _%loop89214%_ ((_%i89216%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i89216%_ (##vector-length _%gcht89212%_))
                  (let ((_%key89218%_ (##vector-ref _%gcht89212%_ _%i89216%_)))
                    (if (and (not (eq? _%key89218%_ (macro-unused-obj)))
                             (not (eq? _%key89218%_ (macro-deleted-obj))))
                        (_%proc89209%_
                         _%key89218%_
                         (##vector-ref _%gcht89212%_ (##fx+ _%i89216%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop89214%_ (##fx+ _%i89216%_ '2))))
                  '#!void)))
          (let ((_%$e89222%_ (&gc-table-immediate _%tab89208%_)))
            (if _%$e89222%_
                ((lambda (_%immediate89225%_)
                   (raw-table-for-each _%immediate89225%_ _%proc89209%_))
                 _%$e89222%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab89196%_)
        (let* ((_%gcht89198%_ (__gc-table-e _%tab89196%_))
               (_%new-table89200%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht89198%_)
                 (macro-gc-hash-table-flags _%gcht89198%_)))
               (_%result89202%_
                (##structure
                 (##structure-type _%tab89196%_)
                 _%new-table89200%_
                 '#f)))
          (gc-table-for-each
           _%tab89196%_
           (lambda (_%k89205%_ _%v89206%_)
             (gc-table-set! _%result89202%_ _%k89205%_ _%v89206%_)))
          _%result89202%_)))
    (define gc-table-clear!
      (lambda (_%tab89189%_)
        (let* ((_%gcht89191%_ (__gc-table-e _%tab89189%_))
               (_%new-table89193%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht89191%_))))
          (&gc-table-gcht-set! _%tab89189%_ _%new-table89193%_)
          (&gc-table-immediate-set! _%tab89189%_ '#f))))
    (define gc-table-length
      (lambda (_%tab89181%_)
        (let ((_%gcht89183%_ (__gc-table-e _%tab89181%_)))
          (fx+ (macro-gc-hash-table-count _%gcht89183%_)
               (let ((_%$e89185%_ (&gc-table-immediate _%tab89181%_)))
                 (if _%$e89185%_
                     (&raw-table-count _%$e89185%_)
                     (let () '0)))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj89166%_)
        (declare (not interrupts-enabled))
        (let ((_%val89169%_ (gc-table-ref __object-eq-hash _%obj89166%_ '#f)))
          (if _%val89169%_
              _%val89169%_
              (let* ((_%mix89171%_ __object-eq-hash-next)
                     (_%ptr89173%_ (##type-cast _%obj89166%_ '0))
                     (_%h89175%_
                      (fxand (fxxor _%mix89171%_ _%ptr89173%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e89178%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e89178%_ _%$e89178%_ '0)))
                (gc-table-set! __object-eq-hash _%obj89166%_ _%h89175%_)
                _%h89175%_)))))))
