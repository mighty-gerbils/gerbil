(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712299482)
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
      (lambda (_%tab90679%_)
        (##unchecked-structure-ref
         _%tab90679%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90677%_)
        (##unchecked-structure-ref
         _%tab90677%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90675%_)
        (##unchecked-structure-ref
         _%tab90675%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90673%_)
        (##unchecked-structure-ref
         _%tab90673%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90671%_)
        (##unchecked-structure-ref
         _%tab90671%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90669%_)
        (##unchecked-structure-ref
         _%tab90669%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90666%_ _%val90667%_)
        (##unchecked-structure-set!
         _%tab90666%_
         _%val90667%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90663%_ _%val90664%_)
        (##unchecked-structure-set!
         _%tab90663%_
         _%val90664%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90660%_ _%val90661%_)
        (##unchecked-structure-set!
         _%tab90660%_
         _%val90661%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90657%_ _%val90658%_)
        (##unchecked-structure-set!
         _%tab90657%_
         _%val90658%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90654%_ _%val90655%_)
        (##unchecked-structure-set!
         _%tab90654%_
         _%val90655%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90651%_ _%val90652%_)
        (##unchecked-structure-set!
         _%tab90651%_
         _%val90652%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90649%_)
        (if (and (fixnum? _%size-hint90649%_) (##fx> _%size-hint90649%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90649%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint90625%_ _%hash90626%_ _%test90627%_ _%seed90628%_)
        (let* ((_%size90630%_ (raw-table-size-hint->size _%size-hint90625%_))
               (_%table90632%_
                (##make-vector _%size90630%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table90632%_
           '0
           (##fxquotient _%size90630%_ '2)
           _%hash90626%_
           _%test90627%_
           _%seed90628%_))))
    (define make-raw-table__0
      (lambda (_%size-hint90638%_ _%hash90639%_ _%test90640%_)
        (let ((_%seed90642%_ '0))
          (make-raw-table__%
           _%size-hint90638%_
           _%hash90639%_
           _%test90640%_
           _%seed90642%_))))
    (define make-raw-table
      (lambda _g90681_
        (let ((_g90680_ (##length _g90681_)))
          (cond ((##fx= _g90680_ 3)
                 (apply (lambda (_%size-hint90638%_
                                 _%hash90639%_
                                 _%test90640%_)
                          (make-raw-table__0
                           _%size-hint90638%_
                           _%hash90639%_
                           _%test90640%_))
                        _g90681_))
                ((##fx= _g90680_ 4)
                 (apply (lambda (_%size-hint90644%_
                                 _%hash90645%_
                                 _%test90646%_
                                 _%seed90647%_)
                          (make-raw-table__%
                           _%size-hint90644%_
                           _%hash90645%_
                           _%test90646%_
                           _%seed90647%_))
                        _g90681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90681_))))))
    (define raw-table-ref
      (lambda (_%tab90576%_ _%key90577%_ _%default90578%_)
        (let ((_%table90580%_ (&raw-table-table _%tab90576%_))
              (_%seed90581%_ (&raw-table-seed _%tab90576%_))
              (_%hash90582%_ (&raw-table-hash _%tab90576%_))
              (_%test90583%_ (&raw-table-test _%tab90576%_)))
          (let* ((_%h90585%_
                  (fxxor (_%hash90582%_ _%key90577%_) _%seed90581%_))
                 (_%size90588%_ (vector-length _%table90580%_))
                 (_%entries90591%_ (##fxquotient _%size90588%_ '2))
                 (_%start90594%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90585%_ _%entries90591%_)
                   '1)))
            (let _%loop90598%_ ((_%probe90601%_ _%start90594%_)
                                (_%i90603%_ '1)
                                (_%deleted90605%_ '#f))
              (let ((_%k90608%_ (vector-ref _%table90580%_ _%probe90601%_)))
                (if (eq? _%k90608%_ (macro-unused-obj))
                    (let () _%default90578%_)
                    (if (eq? _%k90608%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90598%_
                           (let ((_%next-probe90613%_
                                  (fx+ _%start90594%_
                                       _%i90603%_
                                       (fx* _%i90603%_ _%i90603%_))))
                             (##fxmodulo _%next-probe90613%_ _%size90588%_))
                           (##fx+ _%i90603%_ '1)
                           (let ((_%$e90616%_ _%deleted90605%_))
                             (if _%$e90616%_ _%$e90616%_ _%probe90601%_))))
                        (if (_%test90583%_ _%key90577%_ _%k90608%_)
                            (let ()
                              (vector-ref
                               _%table90580%_
                               (##fx+ _%probe90601%_ '1)))
                            (let ()
                              (_%loop90598%_
                               (let ((_%next-probe90621%_
                                      (fx+ _%start90594%_
                                           _%i90603%_
                                           (fx* _%i90603%_ _%i90603%_))))
                                 (##fxmodulo
                                  _%next-probe90621%_
                                  _%size90588%_))
                               (##fx+ _%i90603%_ '1)
                               _%deleted90605%_)))))))))))
    (define raw-table-set!
      (lambda (_%tab90572%_ _%key90573%_ _%value90574%_)
        (if (##fx< (&raw-table-free _%tab90572%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90572%_))
                    '4))
            (__raw-table-rehash! _%tab90572%_)
            '#!void)
        (__raw-table-set! _%tab90572%_ _%key90573%_ _%value90574%_)))
    (define raw-table-update!
      (lambda (_%tab90567%_ _%key90568%_ _%update90569%_ _%default90570%_)
        (if (##fx< (&raw-table-free _%tab90567%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90567%_))
                    '4))
            (__raw-table-rehash! _%tab90567%_)
            '#!void)
        (__raw-table-update!
         _%tab90567%_
         _%key90568%_
         _%update90569%_
         _%default90570%_)))
    (define raw-table-delete!
      (lambda (_%tab90524%_ _%key90525%_)
        (let ((_%table90527%_ (&raw-table-table _%tab90524%_))
              (_%seed90528%_ (&raw-table-seed _%tab90524%_))
              (_%hash90529%_ (&raw-table-hash _%tab90524%_))
              (_%test90530%_ (&raw-table-test _%tab90524%_)))
          (let* ((_%h90532%_
                  (fxxor (_%hash90529%_ _%key90525%_) _%seed90528%_))
                 (_%size90535%_ (vector-length _%table90527%_))
                 (_%entries90538%_ (##fxquotient _%size90535%_ '2))
                 (_%start90541%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90532%_ _%entries90538%_)
                   '1)))
            (let _%loop90545%_ ((_%probe90548%_ _%start90541%_)
                                (_%i90550%_ '1))
              (let ((_%k90553%_ (vector-ref _%table90527%_ _%probe90548%_)))
                (if (eq? _%k90553%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90553%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90545%_
                           (let ((_%next-probe90558%_
                                  (fx+ _%start90541%_
                                       _%i90550%_
                                       (fx* _%i90550%_ _%i90550%_))))
                             (##fxmodulo _%next-probe90558%_ _%size90535%_))
                           (##fx+ _%i90550%_ '1)))
                        (if (_%test90530%_ _%key90525%_ _%k90553%_)
                            (let ()
                              (vector-set!
                               _%table90527%_
                               _%probe90548%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90527%_
                               (##fx+ _%probe90548%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90524%_
                                  (##fx- (&raw-table-count _%tab90524%_)
                                         '1)))))
                            (let ()
                              (_%loop90545%_
                               (let ((_%next-probe90564%_
                                      (fx+ _%start90541%_
                                           _%i90550%_
                                           (fx* _%i90550%_ _%i90550%_))))
                                 (##fxmodulo
                                  _%next-probe90564%_
                                  _%size90535%_))
                               (##fx+ _%i90550%_ '1))))))))))))
    (define raw-table-for-each
      (lambda (_%tab90508%_ _%proc90509%_)
        (let* ((_%table90511%_ (&raw-table-table _%tab90508%_))
               (_%size90513%_ (vector-length _%table90511%_)))
          (let _%loop90516%_ ((_%i90518%_ '0))
            (if (##fx< _%i90518%_ _%size90513%_)
                (begin
                  (let ((_%key90520%_ (vector-ref _%table90511%_ _%i90518%_)))
                    (if (and (not (eq? _%key90520%_ (macro-unused-obj)))
                             (not (eq? _%key90520%_ (macro-deleted-obj))))
                        (let ((_%value90522%_
                               (vector-ref
                                _%table90511%_
                                (##fx+ _%i90518%_ '1))))
                          (_%proc90509%_ _%key90520%_ _%value90522%_))
                        '#!void))
                  (_%loop90516%_ (##fx+ _%i90518%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab90504%_)
        (let ((_%new-tab90506%_ (##structure-copy _%tab90504%_)))
          (&raw-table-table-set!
           _%new-tab90506%_
           (vector-copy (&raw-table-table _%tab90504%_)))
          _%new-tab90506%_)))
    (define raw-table-clear!
      (lambda (_%tab90502%_)
        (vector-fill! (&raw-table-table _%tab90502%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab90502%_ '0)
        (&raw-table-free-set!
         _%tab90502%_
         (##fxquotient (vector-length (&raw-table-table _%tab90502%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab90452%_ _%key90453%_ _%value90454%_)
        (let ((_%table90456%_ (&raw-table-table _%tab90452%_))
              (_%seed90457%_ (&raw-table-seed _%tab90452%_))
              (_%hash90458%_ (&raw-table-hash _%tab90452%_))
              (_%test90459%_ (&raw-table-test _%tab90452%_)))
          (let* ((_%h90461%_
                  (fxxor (_%hash90458%_ _%key90453%_) _%seed90457%_))
                 (_%size90464%_ (vector-length _%table90456%_))
                 (_%entries90467%_ (##fxquotient _%size90464%_ '2))
                 (_%start90470%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90461%_ _%entries90467%_)
                   '1)))
            (let _%loop90474%_ ((_%probe90477%_ _%start90470%_)
                                (_%i90479%_ '1)
                                (_%deleted90481%_ '#f))
              (let ((_%k90484%_ (vector-ref _%table90456%_ _%probe90477%_)))
                (if (eq? _%k90484%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90481%_
                          (begin
                            (vector-set!
                             _%table90456%_
                             _%deleted90481%_
                             _%key90453%_)
                            (vector-set!
                             _%table90456%_
                             (##fx+ _%deleted90481%_ '1)
                             _%value90454%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90452%_
                                (##fx+ (&raw-table-count _%tab90452%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90456%_
                             _%probe90477%_
                             _%key90453%_)
                            (vector-set!
                             _%table90456%_
                             (##fx+ _%probe90477%_ '1)
                             _%value90454%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90452%_
                                (##fx- (&raw-table-free _%tab90452%_) '1))
                               (&raw-table-count-set!
                                _%tab90452%_
                                (##fx+ (&raw-table-count _%tab90452%_)
                                       '1)))))))
                    (if (eq? _%k90484%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90474%_
                           (let ((_%next-probe90491%_
                                  (fx+ _%start90470%_
                                       _%i90479%_
                                       (fx* _%i90479%_ _%i90479%_))))
                             (##fxmodulo _%next-probe90491%_ _%size90464%_))
                           (##fx+ _%i90479%_ '1)
                           (let ((_%$e90494%_ _%deleted90481%_))
                             (if _%$e90494%_ _%$e90494%_ _%probe90477%_))))
                        (if (_%test90459%_ _%key90453%_ _%k90484%_)
                            (let ()
                              (vector-set!
                               _%table90456%_
                               _%probe90477%_
                               _%key90453%_)
                              (vector-set!
                               _%table90456%_
                               (##fx+ _%probe90477%_ '1)
                               _%value90454%_))
                            (let ()
                              (_%loop90474%_
                               (let ((_%next-probe90499%_
                                      (fx+ _%start90470%_
                                           _%i90479%_
                                           (fx* _%i90479%_ _%i90479%_))))
                                 (##fxmodulo
                                  _%next-probe90499%_
                                  _%size90464%_))
                               (##fx+ _%i90479%_ '1)
                               _%deleted90481%_)))))))))))
    (define __raw-table-update!
      (lambda (_%tab90401%_ _%key90402%_ _%update90403%_ _%default90404%_)
        (let ((_%table90406%_ (&raw-table-table _%tab90401%_))
              (_%seed90407%_ (&raw-table-seed _%tab90401%_))
              (_%hash90408%_ (&raw-table-hash _%tab90401%_))
              (_%test90409%_ (&raw-table-test _%tab90401%_)))
          (let* ((_%h90411%_
                  (fxxor (_%hash90408%_ _%key90402%_) _%seed90407%_))
                 (_%size90414%_ (vector-length _%table90406%_))
                 (_%entries90417%_ (##fxquotient _%size90414%_ '2))
                 (_%start90420%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90411%_ _%entries90417%_)
                   '1)))
            (let _%loop90424%_ ((_%probe90427%_ _%start90420%_)
                                (_%i90429%_ '1)
                                (_%deleted90431%_ '#f))
              (let ((_%k90434%_ (vector-ref _%table90406%_ _%probe90427%_)))
                (if (eq? _%k90434%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90431%_
                          (begin
                            (vector-set!
                             _%table90406%_
                             _%deleted90431%_
                             _%key90402%_)
                            (vector-set!
                             _%table90406%_
                             (##fx+ _%deleted90431%_ '1)
                             (_%update90403%_ _%default90404%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90401%_
                                (##fx+ (&raw-table-count _%tab90401%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90406%_
                             _%probe90427%_
                             _%key90402%_)
                            (vector-set!
                             _%table90406%_
                             (##fx+ _%probe90427%_ '1)
                             (_%update90403%_ _%default90404%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90401%_
                                (##fx- (&raw-table-free _%tab90401%_) '1))
                               (&raw-table-count-set!
                                _%tab90401%_
                                (##fx+ (&raw-table-count _%tab90401%_)
                                       '1)))))))
                    (if (eq? _%k90434%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90424%_
                           (let ((_%next-probe90441%_
                                  (fx+ _%start90420%_
                                       _%i90429%_
                                       (fx* _%i90429%_ _%i90429%_))))
                             (##fxmodulo _%next-probe90441%_ _%size90414%_))
                           (##fx+ _%i90429%_ '1)
                           (let ((_%$e90444%_ _%deleted90431%_))
                             (if _%$e90444%_ _%$e90444%_ _%probe90427%_))))
                        (if (_%test90409%_ _%key90402%_ _%k90434%_)
                            (let ()
                              (vector-set!
                               _%table90406%_
                               _%probe90427%_
                               _%key90402%_)
                              (vector-set!
                               _%table90406%_
                               (##fx+ _%probe90427%_ '1)
                               (_%update90403%_
                                (vector-ref
                                 _%table90406%_
                                 (##fx+ _%probe90427%_ '1)))))
                            (let ()
                              (_%loop90424%_
                               (let ((_%next-probe90449%_
                                      (fx+ _%start90420%_
                                           _%i90429%_
                                           (fx* _%i90429%_ _%i90429%_))))
                                 (##fxmodulo
                                  _%next-probe90449%_
                                  _%size90414%_))
                               (##fx+ _%i90429%_ '1)
                               _%deleted90431%_)))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab90382%_)
        (let* ((_%old-table90384%_ (&raw-table-table _%tab90382%_))
               (_%old-size90386%_ (vector-length _%old-table90384%_))
               (_%new-size90388%_
                (if (##fx< (&raw-table-count _%tab90382%_)
                           (##fxquotient _%old-size90386%_ '4))
                    (vector-length _%old-table90384%_)
                    (##fx* '2 (vector-length _%old-table90384%_))))
               (_%new-table90390%_
                (##make-vector _%new-size90388%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab90382%_ _%new-table90390%_)
          (&raw-table-count-set! _%tab90382%_ '0)
          (&raw-table-free-set!
           _%tab90382%_
           (##fxquotient _%new-size90388%_ '2))
          (let _%lp90393%_ ((_%i90395%_ '0))
            (if (##fx< _%i90395%_ _%old-size90386%_)
                (begin
                  (let ((_%key90397%_
                         (vector-ref _%old-table90384%_ _%i90395%_)))
                    (if (and (not (eq? _%key90397%_ (macro-unused-obj)))
                             (not (eq? _%key90397%_ (macro-deleted-obj))))
                        (let ((_%value90399%_
                               (vector-ref
                                _%old-table90384%_
                                (##fx+ _%i90395%_ '1))))
                          (__raw-table-set!
                           _%tab90382%_
                           _%key90397%_
                           _%value90399%_))
                        '#!void))
                  (_%lp90393%_ (##fx+ _%i90395%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj90374%_)
        (let ((_%t90376%_ (##type _%obj90374%_)))
          (if (##fx= (##fxand _%t90376%_ '1) '0)
              (let ()
                (fxand (##type-cast _%obj90374%_ (macro-type-fixnum))
                       (macro-max-fixnum32)))
              (if (symbolic? _%obj90374%_)
                  (let () (symbolic-hash _%obj90374%_))
                  (if (procedure? _%obj90374%_)
                      (let () (procedure-hash _%obj90374%_))
                      (let ()
                        (fxand (__eq-hash _%obj90374%_)
                               (macro-max-fixnum32)))))))))
    (define procedure-hash
      (lambda (_%obj90370%_)
        (let ((_%h90372%_
               (if (##closure? _%obj90370%_)
                   (__eq-hash _%obj90370%_)
                   (##type-cast _%obj90370%_ '0))))
          (fxand _%h90372%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj90367%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj90367%_)))
    (define eqv-hash
      (lambda (_%obj90357%_)
        (letrec ((_%combine90359%_
                  (lambda (_%a90364%_ _%b90365%_)
                    (fxand (##fx* (##fx+ _%a90364%_
                                         (fxarithmetic-shift-left
                                          _%b90365%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash90360%_
                  (lambda (_%obj90362%_)
                    (macro-number-dispatch
                     _%obj90362%_
                     (eq-hash _%obj90362%_)
                     (fxand _%obj90362%_ (macro-max-fixnum32))
                     (modulo _%obj90362%_ '331804481)
                     (_%combine90359%_
                      (_%hash90360%_ (macro-ratnum-numerator _%obj90362%_))
                      (_%hash90360%_ (macro-ratnum-denominator _%obj90362%_)))
                     (_%combine90359%_
                      (##u16vector-ref _%obj90362%_ '0)
                      (_%combine90359%_
                       (##u16vector-ref _%obj90362%_ '1)
                       (_%combine90359%_
                        (##u16vector-ref _%obj90362%_ '2)
                        (##u16vector-ref _%obj90362%_ '3))))
                     (_%combine90359%_
                      (_%hash90360%_ (macro-cpxnum-real _%obj90362%_))
                      (_%hash90360%_ (macro-cpxnum-imag _%obj90362%_)))))))
          (_%hash90360%_ _%obj90357%_))))
    (define symbolic?
      (lambda (_%obj90352%_)
        (let ((_%$e90354%_ (symbol? _%obj90352%_)))
          (if _%$e90354%_ _%$e90354%_ (keyword? _%obj90352%_)))))
    (define symbolic-hash (lambda (_%obj90350%_) (macro-slot '1 _%obj90350%_)))
    (define string-hash (lambda (_%obj90348%_) (##string=?-hash _%obj90348%_)))
    (define immediate-hash
      (lambda (_%obj90346%_) (##type-cast _%obj90346%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint90327%_ _%seed90329%_)
        (make-raw-table__% _%size-hint90327%_ eq-hash eq? _%seed90329%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint90335%_ '#f) (_%seed90337%_ '0))
          (make-eq-table__% _%size-hint90335%_ _%seed90337%_))))
    (define make-eq-table__1
      (lambda (_%size-hint90339%_)
        (let ((_%seed90341%_ '0))
          (make-eq-table__% _%size-hint90339%_ _%seed90341%_))))
    (define make-eq-table
      (lambda _g90683_
        (let ((_g90682_ (##length _g90683_)))
          (cond ((##fx= _g90682_ 0)
                 (apply (lambda () (make-eq-table__0)) _g90683_))
                ((##fx= _g90682_ 1)
                 (apply (lambda (_%size-hint90339%_)
                          (make-eq-table__1 _%size-hint90339%_))
                        _g90683_))
                ((##fx= _g90682_ 2)
                 (apply (lambda (_%size-hint90343%_ _%seed90344%_)
                          (make-eq-table__% _%size-hint90343%_ _%seed90344%_))
                        _g90683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90683_))))))
    (define eq-table-ref
      (lambda (_%tab90280%_ _%key90281%_ _%default90282%_)
        (let ((_%table90284%_ (&raw-table-table _%tab90280%_))
              (_%seed90285%_ (&raw-table-seed _%tab90280%_)))
          (let* ((_%h90287%_ (fxxor (eq-hash _%key90281%_) _%seed90285%_))
                 (_%size90290%_ (vector-length _%table90284%_))
                 (_%entries90293%_ (##fxquotient _%size90290%_ '2))
                 (_%start90296%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90287%_ _%entries90293%_)
                   '1)))
            (let _%loop90300%_ ((_%probe90303%_ _%start90296%_)
                                (_%i90305%_ '1)
                                (_%deleted90307%_ '#f))
              (let ((_%k90310%_ (vector-ref _%table90284%_ _%probe90303%_)))
                (if (eq? _%k90310%_ (macro-unused-obj))
                    (let () _%default90282%_)
                    (if (eq? _%k90310%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90300%_
                           (let ((_%next-probe90315%_
                                  (fx+ _%start90296%_
                                       _%i90305%_
                                       (fx* _%i90305%_ _%i90305%_))))
                             (##fxmodulo _%next-probe90315%_ _%size90290%_))
                           (##fx+ _%i90305%_ '1)
                           (let ((_%$e90318%_ _%deleted90307%_))
                             (if _%$e90318%_ _%$e90318%_ _%probe90303%_))))
                        (if (eq? _%key90281%_ _%k90310%_)
                            (let ()
                              (vector-ref
                               _%table90284%_
                               (##fx+ _%probe90303%_ '1)))
                            (let ()
                              (_%loop90300%_
                               (let ((_%next-probe90323%_
                                      (fx+ _%start90296%_
                                           _%i90305%_
                                           (fx* _%i90305%_ _%i90305%_))))
                                 (##fxmodulo
                                  _%next-probe90323%_
                                  _%size90290%_))
                               (##fx+ _%i90305%_ '1)
                               _%deleted90307%_)))))))))))
    (define eq-table-set!
      (lambda (_%tab90276%_ _%key90277%_ _%value90278%_)
        (if (##fx< (&raw-table-free _%tab90276%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90276%_))
                    '4))
            (__raw-table-rehash! _%tab90276%_)
            '#!void)
        (__eq-table-set! _%tab90276%_ _%key90277%_ _%value90278%_)))
    (define __eq-table-set!
      (lambda (_%tab90227%_ _%key90228%_ _%value90229%_)
        (let ((_%table90232%_ (&raw-table-table _%tab90227%_))
              (_%seed90233%_ (&raw-table-seed _%tab90227%_)))
          (let* ((_%h90235%_ (fxxor (eq-hash _%key90228%_) _%seed90233%_))
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
                             _%key90228%_)
                            (vector-set!
                             _%table90232%_
                             (##fx+ _%deleted90255%_ '1)
                             _%value90229%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90227%_
                                (##fx+ (&raw-table-count _%tab90227%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90232%_
                             _%probe90251%_
                             _%key90228%_)
                            (vector-set!
                             _%table90232%_
                             (##fx+ _%probe90251%_ '1)
                             _%value90229%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90227%_
                                (##fx- (&raw-table-free _%tab90227%_) '1))
                               (&raw-table-count-set!
                                _%tab90227%_
                                (##fx+ (&raw-table-count _%tab90227%_)
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
                        (if (eq? _%key90228%_ _%k90258%_)
                            (let ()
                              (vector-set!
                               _%table90232%_
                               _%probe90251%_
                               _%key90228%_)
                              (vector-set!
                               _%table90232%_
                               (##fx+ _%probe90251%_ '1)
                               _%value90229%_))
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
    (define eq-table-update!
      (lambda (_%tab90222%_
               _%key90223%_
               _%eq-table-update!90224%_
               _%default90225%_)
        (if (##fx< (&raw-table-free _%tab90222%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90222%_))
                    '4))
            (__raw-table-rehash! _%tab90222%_)
            '#!void)
        (__eq-table-update!
         _%tab90222%_
         _%key90223%_
         _%eq-table-update!90224%_
         _%default90225%_)))
    (define __eq-table-update!
      (lambda (_%tab90172%_
               _%key90173%_
               _%eq-table-update!90174%_
               _%default90175%_)
        (let ((_%table90178%_ (&raw-table-table _%tab90172%_))
              (_%seed90179%_ (&raw-table-seed _%tab90172%_)))
          (let* ((_%h90181%_ (fxxor (eq-hash _%key90173%_) _%seed90179%_))
                 (_%size90184%_ (vector-length _%table90178%_))
                 (_%entries90187%_ (##fxquotient _%size90184%_ '2))
                 (_%start90190%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90181%_ _%entries90187%_)
                   '1)))
            (let _%loop90194%_ ((_%probe90197%_ _%start90190%_)
                                (_%i90199%_ '1)
                                (_%deleted90201%_ '#f))
              (let ((_%k90204%_ (vector-ref _%table90178%_ _%probe90197%_)))
                (if (eq? _%k90204%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted90201%_
                          (begin
                            (vector-set!
                             _%table90178%_
                             _%deleted90201%_
                             _%key90173%_)
                            (vector-set!
                             _%table90178%_
                             (##fx+ _%deleted90201%_ '1)
                             (_%eq-table-update!90174%_ _%default90175%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90172%_
                                (##fx+ (&raw-table-count _%tab90172%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90178%_
                             _%probe90197%_
                             _%key90173%_)
                            (vector-set!
                             _%table90178%_
                             (##fx+ _%probe90197%_ '1)
                             (_%eq-table-update!90174%_ _%default90175%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90172%_
                                (##fx- (&raw-table-free _%tab90172%_) '1))
                               (&raw-table-count-set!
                                _%tab90172%_
                                (##fx+ (&raw-table-count _%tab90172%_)
                                       '1)))))))
                    (if (eq? _%k90204%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90194%_
                           (let ((_%next-probe90211%_
                                  (fx+ _%start90190%_
                                       _%i90199%_
                                       (fx* _%i90199%_ _%i90199%_))))
                             (##fxmodulo _%next-probe90211%_ _%size90184%_))
                           (##fx+ _%i90199%_ '1)
                           (let ((_%$e90214%_ _%deleted90201%_))
                             (if _%$e90214%_ _%$e90214%_ _%probe90197%_))))
                        (if (eq? _%key90173%_ _%k90204%_)
                            (let ()
                              (vector-set!
                               _%table90178%_
                               _%probe90197%_
                               _%key90173%_)
                              (vector-set!
                               _%table90178%_
                               (##fx+ _%probe90197%_ '1)
                               (_%eq-table-update!90174%_
                                (vector-ref
                                 _%table90178%_
                                 (##fx+ _%probe90197%_ '1)))))
                            (let ()
                              (_%loop90194%_
                               (let ((_%next-probe90219%_
                                      (fx+ _%start90190%_
                                           _%i90199%_
                                           (fx* _%i90199%_ _%i90199%_))))
                                 (##fxmodulo
                                  _%next-probe90219%_
                                  _%size90184%_))
                               (##fx+ _%i90199%_ '1)
                               _%deleted90201%_)))))))))))
    (define eq-table-delete!
      (lambda (_%tab90127%_ _%key90129%_)
        (let ((_%table90132%_ (&raw-table-table _%tab90127%_))
              (_%seed90134%_ (&raw-table-seed _%tab90127%_)))
          (let* ((_%h90137%_ (fxxor (eq-hash _%key90129%_) _%seed90134%_))
                 (_%size90140%_ (vector-length _%table90132%_))
                 (_%entries90143%_ (##fxquotient _%size90140%_ '2))
                 (_%start90146%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90137%_ _%entries90143%_)
                   '1)))
            (let _%loop90150%_ ((_%probe90153%_ _%start90146%_)
                                (_%i90155%_ '1))
              (let ((_%k90158%_ (vector-ref _%table90132%_ _%probe90153%_)))
                (if (eq? _%k90158%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90158%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90150%_
                           (let ((_%next-probe90163%_
                                  (fx+ _%start90146%_
                                       _%i90155%_
                                       (fx* _%i90155%_ _%i90155%_))))
                             (##fxmodulo _%next-probe90163%_ _%size90140%_))
                           (##fx+ _%i90155%_ '1)))
                        (if (eq? _%key90129%_ _%k90158%_)
                            (let ()
                              (vector-set!
                               _%table90132%_
                               _%probe90153%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90132%_
                               (##fx+ _%probe90153%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90127%_
                                  (##fx- (&raw-table-count _%tab90127%_)
                                         '1)))))
                            (let ()
                              (_%loop90150%_
                               (let ((_%next-probe90169%_
                                      (fx+ _%start90146%_
                                           _%i90155%_
                                           (fx* _%i90155%_ _%i90155%_))))
                                 (##fxmodulo
                                  _%next-probe90169%_
                                  _%size90140%_))
                               (##fx+ _%i90155%_ '1))))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint90108%_ _%seed90110%_)
        (make-raw-table__% _%size-hint90108%_ eqv-hash eqv? _%seed90110%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint90116%_ '#f) (_%seed90118%_ '0))
          (make-eqv-table__% _%size-hint90116%_ _%seed90118%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint90120%_)
        (let ((_%seed90122%_ '0))
          (make-eqv-table__% _%size-hint90120%_ _%seed90122%_))))
    (define make-eqv-table
      (lambda _g90685_
        (let ((_g90684_ (##length _g90685_)))
          (cond ((##fx= _g90684_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g90685_))
                ((##fx= _g90684_ 1)
                 (apply (lambda (_%size-hint90120%_)
                          (make-eqv-table__1 _%size-hint90120%_))
                        _g90685_))
                ((##fx= _g90684_ 2)
                 (apply (lambda (_%size-hint90124%_ _%seed90125%_)
                          (make-eqv-table__% _%size-hint90124%_ _%seed90125%_))
                        _g90685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90685_))))))
    (define eqv-table-ref
      (lambda (_%tab90061%_ _%key90062%_ _%default90063%_)
        (let ((_%table90065%_ (&raw-table-table _%tab90061%_))
              (_%seed90066%_ (&raw-table-seed _%tab90061%_)))
          (let* ((_%h90068%_ (fxxor (eqv-hash _%key90062%_) _%seed90066%_))
                 (_%size90071%_ (vector-length _%table90065%_))
                 (_%entries90074%_ (##fxquotient _%size90071%_ '2))
                 (_%start90077%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90068%_ _%entries90074%_)
                   '1)))
            (let _%loop90081%_ ((_%probe90084%_ _%start90077%_)
                                (_%i90086%_ '1)
                                (_%deleted90088%_ '#f))
              (let ((_%k90091%_ (vector-ref _%table90065%_ _%probe90084%_)))
                (if (eq? _%k90091%_ (macro-unused-obj))
                    (let () _%default90063%_)
                    (if (eq? _%k90091%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90081%_
                           (let ((_%next-probe90096%_
                                  (fx+ _%start90077%_
                                       _%i90086%_
                                       (fx* _%i90086%_ _%i90086%_))))
                             (##fxmodulo _%next-probe90096%_ _%size90071%_))
                           (##fx+ _%i90086%_ '1)
                           (let ((_%$e90099%_ _%deleted90088%_))
                             (if _%$e90099%_ _%$e90099%_ _%probe90084%_))))
                        (if (eqv? _%key90062%_ _%k90091%_)
                            (let ()
                              (vector-ref
                               _%table90065%_
                               (##fx+ _%probe90084%_ '1)))
                            (let ()
                              (_%loop90081%_
                               (let ((_%next-probe90104%_
                                      (fx+ _%start90077%_
                                           _%i90086%_
                                           (fx* _%i90086%_ _%i90086%_))))
                                 (##fxmodulo
                                  _%next-probe90104%_
                                  _%size90071%_))
                               (##fx+ _%i90086%_ '1)
                               _%deleted90088%_)))))))))))
    (define eqv-table-set!
      (lambda (_%tab90057%_ _%key90058%_ _%value90059%_)
        (if (##fx< (&raw-table-free _%tab90057%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90057%_))
                    '4))
            (__raw-table-rehash! _%tab90057%_)
            '#!void)
        (__eqv-table-set! _%tab90057%_ _%key90058%_ _%value90059%_)))
    (define __eqv-table-set!
      (lambda (_%tab90008%_ _%key90009%_ _%value90010%_)
        (let ((_%table90013%_ (&raw-table-table _%tab90008%_))
              (_%seed90014%_ (&raw-table-seed _%tab90008%_)))
          (let* ((_%h90016%_ (fxxor (eqv-hash _%key90009%_) _%seed90014%_))
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
                             _%key90009%_)
                            (vector-set!
                             _%table90013%_
                             (##fx+ _%deleted90036%_ '1)
                             _%value90010%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab90008%_
                                (##fx+ (&raw-table-count _%tab90008%_) '1)))))
                          (begin
                            (vector-set!
                             _%table90013%_
                             _%probe90032%_
                             _%key90009%_)
                            (vector-set!
                             _%table90013%_
                             (##fx+ _%probe90032%_ '1)
                             _%value90010%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab90008%_
                                (##fx- (&raw-table-free _%tab90008%_) '1))
                               (&raw-table-count-set!
                                _%tab90008%_
                                (##fx+ (&raw-table-count _%tab90008%_)
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
                        (if (eqv? _%key90009%_ _%k90039%_)
                            (let ()
                              (vector-set!
                               _%table90013%_
                               _%probe90032%_
                               _%key90009%_)
                              (vector-set!
                               _%table90013%_
                               (##fx+ _%probe90032%_ '1)
                               _%value90010%_))
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
    (define eqv-table-update!
      (lambda (_%tab90003%_
               _%key90004%_
               _%eqv-table-update!90005%_
               _%default90006%_)
        (if (##fx< (&raw-table-free _%tab90003%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90003%_))
                    '4))
            (__raw-table-rehash! _%tab90003%_)
            '#!void)
        (__eqv-table-update!
         _%tab90003%_
         _%key90004%_
         _%eqv-table-update!90005%_
         _%default90006%_)))
    (define __eqv-table-update!
      (lambda (_%tab89953%_
               _%key89954%_
               _%eqv-table-update!89955%_
               _%default89956%_)
        (let ((_%table89959%_ (&raw-table-table _%tab89953%_))
              (_%seed89960%_ (&raw-table-seed _%tab89953%_)))
          (let* ((_%h89962%_ (fxxor (eqv-hash _%key89954%_) _%seed89960%_))
                 (_%size89965%_ (vector-length _%table89959%_))
                 (_%entries89968%_ (##fxquotient _%size89965%_ '2))
                 (_%start89971%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89962%_ _%entries89968%_)
                   '1)))
            (let _%loop89975%_ ((_%probe89978%_ _%start89971%_)
                                (_%i89980%_ '1)
                                (_%deleted89982%_ '#f))
              (let ((_%k89985%_ (vector-ref _%table89959%_ _%probe89978%_)))
                (if (eq? _%k89985%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89982%_
                          (begin
                            (vector-set!
                             _%table89959%_
                             _%deleted89982%_
                             _%key89954%_)
                            (vector-set!
                             _%table89959%_
                             (##fx+ _%deleted89982%_ '1)
                             (_%eqv-table-update!89955%_ _%default89956%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89953%_
                                (##fx+ (&raw-table-count _%tab89953%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89959%_
                             _%probe89978%_
                             _%key89954%_)
                            (vector-set!
                             _%table89959%_
                             (##fx+ _%probe89978%_ '1)
                             (_%eqv-table-update!89955%_ _%default89956%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89953%_
                                (##fx- (&raw-table-free _%tab89953%_) '1))
                               (&raw-table-count-set!
                                _%tab89953%_
                                (##fx+ (&raw-table-count _%tab89953%_)
                                       '1)))))))
                    (if (eq? _%k89985%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89975%_
                           (let ((_%next-probe89992%_
                                  (fx+ _%start89971%_
                                       _%i89980%_
                                       (fx* _%i89980%_ _%i89980%_))))
                             (##fxmodulo _%next-probe89992%_ _%size89965%_))
                           (##fx+ _%i89980%_ '1)
                           (let ((_%$e89995%_ _%deleted89982%_))
                             (if _%$e89995%_ _%$e89995%_ _%probe89978%_))))
                        (if (eqv? _%key89954%_ _%k89985%_)
                            (let ()
                              (vector-set!
                               _%table89959%_
                               _%probe89978%_
                               _%key89954%_)
                              (vector-set!
                               _%table89959%_
                               (##fx+ _%probe89978%_ '1)
                               (_%eqv-table-update!89955%_
                                (vector-ref
                                 _%table89959%_
                                 (##fx+ _%probe89978%_ '1)))))
                            (let ()
                              (_%loop89975%_
                               (let ((_%next-probe90000%_
                                      (fx+ _%start89971%_
                                           _%i89980%_
                                           (fx* _%i89980%_ _%i89980%_))))
                                 (##fxmodulo
                                  _%next-probe90000%_
                                  _%size89965%_))
                               (##fx+ _%i89980%_ '1)
                               _%deleted89982%_)))))))))))
    (define eqv-table-delete!
      (lambda (_%tab89908%_ _%key89910%_)
        (let ((_%table89913%_ (&raw-table-table _%tab89908%_))
              (_%seed89915%_ (&raw-table-seed _%tab89908%_)))
          (let* ((_%h89918%_ (fxxor (eqv-hash _%key89910%_) _%seed89915%_))
                 (_%size89921%_ (vector-length _%table89913%_))
                 (_%entries89924%_ (##fxquotient _%size89921%_ '2))
                 (_%start89927%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89918%_ _%entries89924%_)
                   '1)))
            (let _%loop89931%_ ((_%probe89934%_ _%start89927%_)
                                (_%i89936%_ '1))
              (let ((_%k89939%_ (vector-ref _%table89913%_ _%probe89934%_)))
                (if (eq? _%k89939%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89939%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89931%_
                           (let ((_%next-probe89944%_
                                  (fx+ _%start89927%_
                                       _%i89936%_
                                       (fx* _%i89936%_ _%i89936%_))))
                             (##fxmodulo _%next-probe89944%_ _%size89921%_))
                           (##fx+ _%i89936%_ '1)))
                        (if (eqv? _%key89910%_ _%k89939%_)
                            (let ()
                              (vector-set!
                               _%table89913%_
                               _%probe89934%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89913%_
                               (##fx+ _%probe89934%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89908%_
                                  (##fx- (&raw-table-count _%tab89908%_)
                                         '1)))))
                            (let ()
                              (_%loop89931%_
                               (let ((_%next-probe89950%_
                                      (fx+ _%start89927%_
                                           _%i89936%_
                                           (fx* _%i89936%_ _%i89936%_))))
                                 (##fxmodulo
                                  _%next-probe89950%_
                                  _%size89921%_))
                               (##fx+ _%i89936%_ '1))))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint89889%_ _%seed89891%_)
        (make-raw-table__%
         _%size-hint89889%_
         symbolic-hash
         eq?
         _%seed89891%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint89897%_ '#f) (_%seed89899%_ '0))
          (make-symbolic-table__% _%size-hint89897%_ _%seed89899%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint89901%_)
        (let ((_%seed89903%_ '0))
          (make-symbolic-table__% _%size-hint89901%_ _%seed89903%_))))
    (define make-symbolic-table
      (lambda _g90687_
        (let ((_g90686_ (##length _g90687_)))
          (cond ((##fx= _g90686_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g90687_))
                ((##fx= _g90686_ 1)
                 (apply (lambda (_%size-hint89901%_)
                          (make-symbolic-table__1 _%size-hint89901%_))
                        _g90687_))
                ((##fx= _g90686_ 2)
                 (apply (lambda (_%size-hint89905%_ _%seed89906%_)
                          (make-symbolic-table__%
                           _%size-hint89905%_
                           _%seed89906%_))
                        _g90687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90687_))))))
    (define symbolic-table-ref
      (lambda (_%tab89842%_ _%key89843%_ _%default89844%_)
        (let ((_%table89846%_ (&raw-table-table _%tab89842%_))
              (_%seed89847%_ (&raw-table-seed _%tab89842%_)))
          (let* ((_%h89849%_
                  (fxxor (symbolic-hash _%key89843%_) _%seed89847%_))
                 (_%size89852%_ (vector-length _%table89846%_))
                 (_%entries89855%_ (##fxquotient _%size89852%_ '2))
                 (_%start89858%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89849%_ _%entries89855%_)
                   '1)))
            (let _%loop89862%_ ((_%probe89865%_ _%start89858%_)
                                (_%i89867%_ '1)
                                (_%deleted89869%_ '#f))
              (let ((_%k89872%_ (vector-ref _%table89846%_ _%probe89865%_)))
                (if (eq? _%k89872%_ (macro-unused-obj))
                    (let () _%default89844%_)
                    (if (eq? _%k89872%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89862%_
                           (let ((_%next-probe89877%_
                                  (fx+ _%start89858%_
                                       _%i89867%_
                                       (fx* _%i89867%_ _%i89867%_))))
                             (##fxmodulo _%next-probe89877%_ _%size89852%_))
                           (##fx+ _%i89867%_ '1)
                           (let ((_%$e89880%_ _%deleted89869%_))
                             (if _%$e89880%_ _%$e89880%_ _%probe89865%_))))
                        (if (eq? _%key89843%_ _%k89872%_)
                            (let ()
                              (vector-ref
                               _%table89846%_
                               (##fx+ _%probe89865%_ '1)))
                            (let ()
                              (_%loop89862%_
                               (let ((_%next-probe89885%_
                                      (fx+ _%start89858%_
                                           _%i89867%_
                                           (fx* _%i89867%_ _%i89867%_))))
                                 (##fxmodulo
                                  _%next-probe89885%_
                                  _%size89852%_))
                               (##fx+ _%i89867%_ '1)
                               _%deleted89869%_)))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89838%_ _%key89839%_ _%value89840%_)
        (if (##fx< (&raw-table-free _%tab89838%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89838%_))
                    '4))
            (__raw-table-rehash! _%tab89838%_)
            '#!void)
        (__symbolic-table-set! _%tab89838%_ _%key89839%_ _%value89840%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89789%_ _%key89790%_ _%value89791%_)
        (let ((_%table89794%_ (&raw-table-table _%tab89789%_))
              (_%seed89795%_ (&raw-table-seed _%tab89789%_)))
          (let* ((_%h89797%_
                  (fxxor (symbolic-hash _%key89790%_) _%seed89795%_))
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
                             _%key89790%_)
                            (vector-set!
                             _%table89794%_
                             (##fx+ _%deleted89817%_ '1)
                             _%value89791%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89789%_
                                (##fx+ (&raw-table-count _%tab89789%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89794%_
                             _%probe89813%_
                             _%key89790%_)
                            (vector-set!
                             _%table89794%_
                             (##fx+ _%probe89813%_ '1)
                             _%value89791%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89789%_
                                (##fx- (&raw-table-free _%tab89789%_) '1))
                               (&raw-table-count-set!
                                _%tab89789%_
                                (##fx+ (&raw-table-count _%tab89789%_)
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
                        (if (eq? _%key89790%_ _%k89820%_)
                            (let ()
                              (vector-set!
                               _%table89794%_
                               _%probe89813%_
                               _%key89790%_)
                              (vector-set!
                               _%table89794%_
                               (##fx+ _%probe89813%_ '1)
                               _%value89791%_))
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
    (define symbolic-table-update!
      (lambda (_%tab89784%_
               _%key89785%_
               _%symbolic-table-update!89786%_
               _%default89787%_)
        (if (##fx< (&raw-table-free _%tab89784%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89784%_))
                    '4))
            (__raw-table-rehash! _%tab89784%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89784%_
         _%key89785%_
         _%symbolic-table-update!89786%_
         _%default89787%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89734%_
               _%key89735%_
               _%symbolic-table-update!89736%_
               _%default89737%_)
        (let ((_%table89740%_ (&raw-table-table _%tab89734%_))
              (_%seed89741%_ (&raw-table-seed _%tab89734%_)))
          (let* ((_%h89743%_
                  (fxxor (symbolic-hash _%key89735%_) _%seed89741%_))
                 (_%size89746%_ (vector-length _%table89740%_))
                 (_%entries89749%_ (##fxquotient _%size89746%_ '2))
                 (_%start89752%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89743%_ _%entries89749%_)
                   '1)))
            (let _%loop89756%_ ((_%probe89759%_ _%start89752%_)
                                (_%i89761%_ '1)
                                (_%deleted89763%_ '#f))
              (let ((_%k89766%_ (vector-ref _%table89740%_ _%probe89759%_)))
                (if (eq? _%k89766%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89763%_
                          (begin
                            (vector-set!
                             _%table89740%_
                             _%deleted89763%_
                             _%key89735%_)
                            (vector-set!
                             _%table89740%_
                             (##fx+ _%deleted89763%_ '1)
                             (_%symbolic-table-update!89736%_
                              _%default89737%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89734%_
                                (##fx+ (&raw-table-count _%tab89734%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89740%_
                             _%probe89759%_
                             _%key89735%_)
                            (vector-set!
                             _%table89740%_
                             (##fx+ _%probe89759%_ '1)
                             (_%symbolic-table-update!89736%_
                              _%default89737%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89734%_
                                (##fx- (&raw-table-free _%tab89734%_) '1))
                               (&raw-table-count-set!
                                _%tab89734%_
                                (##fx+ (&raw-table-count _%tab89734%_)
                                       '1)))))))
                    (if (eq? _%k89766%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89756%_
                           (let ((_%next-probe89773%_
                                  (fx+ _%start89752%_
                                       _%i89761%_
                                       (fx* _%i89761%_ _%i89761%_))))
                             (##fxmodulo _%next-probe89773%_ _%size89746%_))
                           (##fx+ _%i89761%_ '1)
                           (let ((_%$e89776%_ _%deleted89763%_))
                             (if _%$e89776%_ _%$e89776%_ _%probe89759%_))))
                        (if (eq? _%key89735%_ _%k89766%_)
                            (let ()
                              (vector-set!
                               _%table89740%_
                               _%probe89759%_
                               _%key89735%_)
                              (vector-set!
                               _%table89740%_
                               (##fx+ _%probe89759%_ '1)
                               (_%symbolic-table-update!89736%_
                                (vector-ref
                                 _%table89740%_
                                 (##fx+ _%probe89759%_ '1)))))
                            (let ()
                              (_%loop89756%_
                               (let ((_%next-probe89781%_
                                      (fx+ _%start89752%_
                                           _%i89761%_
                                           (fx* _%i89761%_ _%i89761%_))))
                                 (##fxmodulo
                                  _%next-probe89781%_
                                  _%size89746%_))
                               (##fx+ _%i89761%_ '1)
                               _%deleted89763%_)))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89689%_ _%key89691%_)
        (let ((_%table89694%_ (&raw-table-table _%tab89689%_))
              (_%seed89696%_ (&raw-table-seed _%tab89689%_)))
          (let* ((_%h89699%_
                  (fxxor (symbolic-hash _%key89691%_) _%seed89696%_))
                 (_%size89702%_ (vector-length _%table89694%_))
                 (_%entries89705%_ (##fxquotient _%size89702%_ '2))
                 (_%start89708%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89699%_ _%entries89705%_)
                   '1)))
            (let _%loop89712%_ ((_%probe89715%_ _%start89708%_)
                                (_%i89717%_ '1))
              (let ((_%k89720%_ (vector-ref _%table89694%_ _%probe89715%_)))
                (if (eq? _%k89720%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89720%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89712%_
                           (let ((_%next-probe89725%_
                                  (fx+ _%start89708%_
                                       _%i89717%_
                                       (fx* _%i89717%_ _%i89717%_))))
                             (##fxmodulo _%next-probe89725%_ _%size89702%_))
                           (##fx+ _%i89717%_ '1)))
                        (if (eq? _%key89691%_ _%k89720%_)
                            (let ()
                              (vector-set!
                               _%table89694%_
                               _%probe89715%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89694%_
                               (##fx+ _%probe89715%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89689%_
                                  (##fx- (&raw-table-count _%tab89689%_)
                                         '1)))))
                            (let ()
                              (_%loop89712%_
                               (let ((_%next-probe89731%_
                                      (fx+ _%start89708%_
                                           _%i89717%_
                                           (fx* _%i89717%_ _%i89717%_))))
                                 (##fxmodulo
                                  _%next-probe89731%_
                                  _%size89702%_))
                               (##fx+ _%i89717%_ '1))))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89670%_ _%seed89672%_)
        (make-raw-table__%
         _%size-hint89670%_
         string-hash
         ##string=?
         _%seed89672%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89678%_ '#f) (_%seed89680%_ '0))
          (make-string-table__% _%size-hint89678%_ _%seed89680%_))))
    (define make-string-table__1
      (lambda (_%size-hint89682%_)
        (let ((_%seed89684%_ '0))
          (make-string-table__% _%size-hint89682%_ _%seed89684%_))))
    (define make-string-table
      (lambda _g90689_
        (let ((_g90688_ (##length _g90689_)))
          (cond ((##fx= _g90688_ 0)
                 (apply (lambda () (make-string-table__0)) _g90689_))
                ((##fx= _g90688_ 1)
                 (apply (lambda (_%size-hint89682%_)
                          (make-string-table__1 _%size-hint89682%_))
                        _g90689_))
                ((##fx= _g90688_ 2)
                 (apply (lambda (_%size-hint89686%_ _%seed89687%_)
                          (make-string-table__%
                           _%size-hint89686%_
                           _%seed89687%_))
                        _g90689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90689_))))))
    (define string-table-ref
      (lambda (_%tab89623%_ _%key89624%_ _%default89625%_)
        (let ((_%table89627%_ (&raw-table-table _%tab89623%_))
              (_%seed89628%_ (&raw-table-seed _%tab89623%_)))
          (let* ((_%h89630%_
                  (fxxor (##string=?-hash _%key89624%_) _%seed89628%_))
                 (_%size89633%_ (vector-length _%table89627%_))
                 (_%entries89636%_ (##fxquotient _%size89633%_ '2))
                 (_%start89639%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89630%_ _%entries89636%_)
                   '1)))
            (let _%loop89643%_ ((_%probe89646%_ _%start89639%_)
                                (_%i89648%_ '1)
                                (_%deleted89650%_ '#f))
              (let ((_%k89653%_ (vector-ref _%table89627%_ _%probe89646%_)))
                (if (eq? _%k89653%_ (macro-unused-obj))
                    (let () _%default89625%_)
                    (if (eq? _%k89653%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89643%_
                           (let ((_%next-probe89658%_
                                  (fx+ _%start89639%_
                                       _%i89648%_
                                       (fx* _%i89648%_ _%i89648%_))))
                             (##fxmodulo _%next-probe89658%_ _%size89633%_))
                           (##fx+ _%i89648%_ '1)
                           (let ((_%$e89661%_ _%deleted89650%_))
                             (if _%$e89661%_ _%$e89661%_ _%probe89646%_))))
                        (if (##string=? _%key89624%_ _%k89653%_)
                            (let ()
                              (vector-ref
                               _%table89627%_
                               (##fx+ _%probe89646%_ '1)))
                            (let ()
                              (_%loop89643%_
                               (let ((_%next-probe89666%_
                                      (fx+ _%start89639%_
                                           _%i89648%_
                                           (fx* _%i89648%_ _%i89648%_))))
                                 (##fxmodulo
                                  _%next-probe89666%_
                                  _%size89633%_))
                               (##fx+ _%i89648%_ '1)
                               _%deleted89650%_)))))))))))
    (define string-table-set!
      (lambda (_%tab89619%_ _%key89620%_ _%value89621%_)
        (if (##fx< (&raw-table-free _%tab89619%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89619%_))
                    '4))
            (__raw-table-rehash! _%tab89619%_)
            '#!void)
        (__string-table-set! _%tab89619%_ _%key89620%_ _%value89621%_)))
    (define __string-table-set!
      (lambda (_%tab89570%_ _%key89571%_ _%value89572%_)
        (let ((_%table89575%_ (&raw-table-table _%tab89570%_))
              (_%seed89576%_ (&raw-table-seed _%tab89570%_)))
          (let* ((_%h89578%_
                  (fxxor (##string=?-hash _%key89571%_) _%seed89576%_))
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
                             _%key89571%_)
                            (vector-set!
                             _%table89575%_
                             (##fx+ _%deleted89598%_ '1)
                             _%value89572%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89570%_
                                (##fx+ (&raw-table-count _%tab89570%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89575%_
                             _%probe89594%_
                             _%key89571%_)
                            (vector-set!
                             _%table89575%_
                             (##fx+ _%probe89594%_ '1)
                             _%value89572%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89570%_
                                (##fx- (&raw-table-free _%tab89570%_) '1))
                               (&raw-table-count-set!
                                _%tab89570%_
                                (##fx+ (&raw-table-count _%tab89570%_)
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
                        (if (##string=? _%key89571%_ _%k89601%_)
                            (let ()
                              (vector-set!
                               _%table89575%_
                               _%probe89594%_
                               _%key89571%_)
                              (vector-set!
                               _%table89575%_
                               (##fx+ _%probe89594%_ '1)
                               _%value89572%_))
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
    (define string-table-update!
      (lambda (_%tab89565%_
               _%key89566%_
               _%string-table-update!89567%_
               _%default89568%_)
        (if (##fx< (&raw-table-free _%tab89565%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89565%_))
                    '4))
            (__raw-table-rehash! _%tab89565%_)
            '#!void)
        (__string-table-update!
         _%tab89565%_
         _%key89566%_
         _%string-table-update!89567%_
         _%default89568%_)))
    (define __string-table-update!
      (lambda (_%tab89515%_
               _%key89516%_
               _%string-table-update!89517%_
               _%default89518%_)
        (let ((_%table89521%_ (&raw-table-table _%tab89515%_))
              (_%seed89522%_ (&raw-table-seed _%tab89515%_)))
          (let* ((_%h89524%_
                  (fxxor (##string=?-hash _%key89516%_) _%seed89522%_))
                 (_%size89527%_ (vector-length _%table89521%_))
                 (_%entries89530%_ (##fxquotient _%size89527%_ '2))
                 (_%start89533%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89524%_ _%entries89530%_)
                   '1)))
            (let _%loop89537%_ ((_%probe89540%_ _%start89533%_)
                                (_%i89542%_ '1)
                                (_%deleted89544%_ '#f))
              (let ((_%k89547%_ (vector-ref _%table89521%_ _%probe89540%_)))
                (if (eq? _%k89547%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89544%_
                          (begin
                            (vector-set!
                             _%table89521%_
                             _%deleted89544%_
                             _%key89516%_)
                            (vector-set!
                             _%table89521%_
                             (##fx+ _%deleted89544%_ '1)
                             (_%string-table-update!89517%_ _%default89518%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89515%_
                                (##fx+ (&raw-table-count _%tab89515%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89521%_
                             _%probe89540%_
                             _%key89516%_)
                            (vector-set!
                             _%table89521%_
                             (##fx+ _%probe89540%_ '1)
                             (_%string-table-update!89517%_ _%default89518%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89515%_
                                (##fx- (&raw-table-free _%tab89515%_) '1))
                               (&raw-table-count-set!
                                _%tab89515%_
                                (##fx+ (&raw-table-count _%tab89515%_)
                                       '1)))))))
                    (if (eq? _%k89547%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89537%_
                           (let ((_%next-probe89554%_
                                  (fx+ _%start89533%_
                                       _%i89542%_
                                       (fx* _%i89542%_ _%i89542%_))))
                             (##fxmodulo _%next-probe89554%_ _%size89527%_))
                           (##fx+ _%i89542%_ '1)
                           (let ((_%$e89557%_ _%deleted89544%_))
                             (if _%$e89557%_ _%$e89557%_ _%probe89540%_))))
                        (if (##string=? _%key89516%_ _%k89547%_)
                            (let ()
                              (vector-set!
                               _%table89521%_
                               _%probe89540%_
                               _%key89516%_)
                              (vector-set!
                               _%table89521%_
                               (##fx+ _%probe89540%_ '1)
                               (_%string-table-update!89517%_
                                (vector-ref
                                 _%table89521%_
                                 (##fx+ _%probe89540%_ '1)))))
                            (let ()
                              (_%loop89537%_
                               (let ((_%next-probe89562%_
                                      (fx+ _%start89533%_
                                           _%i89542%_
                                           (fx* _%i89542%_ _%i89542%_))))
                                 (##fxmodulo
                                  _%next-probe89562%_
                                  _%size89527%_))
                               (##fx+ _%i89542%_ '1)
                               _%deleted89544%_)))))))))))
    (define string-table-delete!
      (lambda (_%tab89470%_ _%key89472%_)
        (let ((_%table89475%_ (&raw-table-table _%tab89470%_))
              (_%seed89477%_ (&raw-table-seed _%tab89470%_)))
          (let* ((_%h89480%_
                  (fxxor (##string=?-hash _%key89472%_) _%seed89477%_))
                 (_%size89483%_ (vector-length _%table89475%_))
                 (_%entries89486%_ (##fxquotient _%size89483%_ '2))
                 (_%start89489%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89480%_ _%entries89486%_)
                   '1)))
            (let _%loop89493%_ ((_%probe89496%_ _%start89489%_)
                                (_%i89498%_ '1))
              (let ((_%k89501%_ (vector-ref _%table89475%_ _%probe89496%_)))
                (if (eq? _%k89501%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89501%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89493%_
                           (let ((_%next-probe89506%_
                                  (fx+ _%start89489%_
                                       _%i89498%_
                                       (fx* _%i89498%_ _%i89498%_))))
                             (##fxmodulo _%next-probe89506%_ _%size89483%_))
                           (##fx+ _%i89498%_ '1)))
                        (if (##string=? _%key89472%_ _%k89501%_)
                            (let ()
                              (vector-set!
                               _%table89475%_
                               _%probe89496%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89475%_
                               (##fx+ _%probe89496%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89470%_
                                  (##fx- (&raw-table-count _%tab89470%_)
                                         '1)))))
                            (let ()
                              (_%loop89493%_
                               (let ((_%next-probe89512%_
                                      (fx+ _%start89489%_
                                           _%i89498%_
                                           (fx* _%i89498%_ _%i89498%_))))
                                 (##fxmodulo
                                  _%next-probe89512%_
                                  _%size89483%_))
                               (##fx+ _%i89498%_ '1))))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint89451%_ _%seed89453%_)
        (make-raw-table__%
         _%size-hint89451%_
         immediate-hash
         eq?
         _%seed89453%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint89459%_ '#f) (_%seed89461%_ '0))
          (make-immediate-table__% _%size-hint89459%_ _%seed89461%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint89463%_)
        (let ((_%seed89465%_ '0))
          (make-immediate-table__% _%size-hint89463%_ _%seed89465%_))))
    (define make-immediate-table
      (lambda _g90691_
        (let ((_g90690_ (##length _g90691_)))
          (cond ((##fx= _g90690_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g90691_))
                ((##fx= _g90690_ 1)
                 (apply (lambda (_%size-hint89463%_)
                          (make-immediate-table__1 _%size-hint89463%_))
                        _g90691_))
                ((##fx= _g90690_ 2)
                 (apply (lambda (_%size-hint89467%_ _%seed89468%_)
                          (make-immediate-table__%
                           _%size-hint89467%_
                           _%seed89468%_))
                        _g90691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90691_))))))
    (define immediate-table-ref
      (lambda (_%tab89404%_ _%key89405%_ _%default89406%_)
        (let ((_%table89408%_ (&raw-table-table _%tab89404%_))
              (_%seed89409%_ (&raw-table-seed _%tab89404%_)))
          (let* ((_%h89411%_
                  (fxxor (immediate-hash _%key89405%_) _%seed89409%_))
                 (_%size89414%_ (vector-length _%table89408%_))
                 (_%entries89417%_ (##fxquotient _%size89414%_ '2))
                 (_%start89420%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89411%_ _%entries89417%_)
                   '1)))
            (let _%loop89424%_ ((_%probe89427%_ _%start89420%_)
                                (_%i89429%_ '1)
                                (_%deleted89431%_ '#f))
              (let ((_%k89434%_ (vector-ref _%table89408%_ _%probe89427%_)))
                (if (eq? _%k89434%_ (macro-unused-obj))
                    (let () _%default89406%_)
                    (if (eq? _%k89434%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89424%_
                           (let ((_%next-probe89439%_
                                  (fx+ _%start89420%_
                                       _%i89429%_
                                       (fx* _%i89429%_ _%i89429%_))))
                             (##fxmodulo _%next-probe89439%_ _%size89414%_))
                           (##fx+ _%i89429%_ '1)
                           (let ((_%$e89442%_ _%deleted89431%_))
                             (if _%$e89442%_ _%$e89442%_ _%probe89427%_))))
                        (if (eq? _%key89405%_ _%k89434%_)
                            (let ()
                              (vector-ref
                               _%table89408%_
                               (##fx+ _%probe89427%_ '1)))
                            (let ()
                              (_%loop89424%_
                               (let ((_%next-probe89447%_
                                      (fx+ _%start89420%_
                                           _%i89429%_
                                           (fx* _%i89429%_ _%i89429%_))))
                                 (##fxmodulo
                                  _%next-probe89447%_
                                  _%size89414%_))
                               (##fx+ _%i89429%_ '1)
                               _%deleted89431%_)))))))))))
    (define immediate-table-set!
      (lambda (_%tab89400%_ _%key89401%_ _%value89402%_)
        (if (##fx< (&raw-table-free _%tab89400%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89400%_))
                    '4))
            (__raw-table-rehash! _%tab89400%_)
            '#!void)
        (__immediate-table-set! _%tab89400%_ _%key89401%_ _%value89402%_)))
    (define __immediate-table-set!
      (lambda (_%tab89351%_ _%key89352%_ _%value89353%_)
        (let ((_%table89356%_ (&raw-table-table _%tab89351%_))
              (_%seed89357%_ (&raw-table-seed _%tab89351%_)))
          (let* ((_%h89359%_
                  (fxxor (immediate-hash _%key89352%_) _%seed89357%_))
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
                             _%key89352%_)
                            (vector-set!
                             _%table89356%_
                             (##fx+ _%deleted89379%_ '1)
                             _%value89353%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89351%_
                                (##fx+ (&raw-table-count _%tab89351%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89356%_
                             _%probe89375%_
                             _%key89352%_)
                            (vector-set!
                             _%table89356%_
                             (##fx+ _%probe89375%_ '1)
                             _%value89353%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89351%_
                                (##fx- (&raw-table-free _%tab89351%_) '1))
                               (&raw-table-count-set!
                                _%tab89351%_
                                (##fx+ (&raw-table-count _%tab89351%_)
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
                        (if (eq? _%key89352%_ _%k89382%_)
                            (let ()
                              (vector-set!
                               _%table89356%_
                               _%probe89375%_
                               _%key89352%_)
                              (vector-set!
                               _%table89356%_
                               (##fx+ _%probe89375%_ '1)
                               _%value89353%_))
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
    (define immediate-table-update!
      (lambda (_%tab89346%_
               _%key89347%_
               _%immediate-table-update!89348%_
               _%default89349%_)
        (if (##fx< (&raw-table-free _%tab89346%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89346%_))
                    '4))
            (__raw-table-rehash! _%tab89346%_)
            '#!void)
        (__immediate-table-update!
         _%tab89346%_
         _%key89347%_
         _%immediate-table-update!89348%_
         _%default89349%_)))
    (define __immediate-table-update!
      (lambda (_%tab89296%_
               _%key89297%_
               _%immediate-table-update!89298%_
               _%default89299%_)
        (let ((_%table89302%_ (&raw-table-table _%tab89296%_))
              (_%seed89303%_ (&raw-table-seed _%tab89296%_)))
          (let* ((_%h89305%_
                  (fxxor (immediate-hash _%key89297%_) _%seed89303%_))
                 (_%size89308%_ (vector-length _%table89302%_))
                 (_%entries89311%_ (##fxquotient _%size89308%_ '2))
                 (_%start89314%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89305%_ _%entries89311%_)
                   '1)))
            (let _%loop89318%_ ((_%probe89321%_ _%start89314%_)
                                (_%i89323%_ '1)
                                (_%deleted89325%_ '#f))
              (let ((_%k89328%_ (vector-ref _%table89302%_ _%probe89321%_)))
                (if (eq? _%k89328%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89325%_
                          (begin
                            (vector-set!
                             _%table89302%_
                             _%deleted89325%_
                             _%key89297%_)
                            (vector-set!
                             _%table89302%_
                             (##fx+ _%deleted89325%_ '1)
                             (_%immediate-table-update!89298%_
                              _%default89299%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89296%_
                                (##fx+ (&raw-table-count _%tab89296%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89302%_
                             _%probe89321%_
                             _%key89297%_)
                            (vector-set!
                             _%table89302%_
                             (##fx+ _%probe89321%_ '1)
                             (_%immediate-table-update!89298%_
                              _%default89299%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89296%_
                                (##fx- (&raw-table-free _%tab89296%_) '1))
                               (&raw-table-count-set!
                                _%tab89296%_
                                (##fx+ (&raw-table-count _%tab89296%_)
                                       '1)))))))
                    (if (eq? _%k89328%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89318%_
                           (let ((_%next-probe89335%_
                                  (fx+ _%start89314%_
                                       _%i89323%_
                                       (fx* _%i89323%_ _%i89323%_))))
                             (##fxmodulo _%next-probe89335%_ _%size89308%_))
                           (##fx+ _%i89323%_ '1)
                           (let ((_%$e89338%_ _%deleted89325%_))
                             (if _%$e89338%_ _%$e89338%_ _%probe89321%_))))
                        (if (eq? _%key89297%_ _%k89328%_)
                            (let ()
                              (vector-set!
                               _%table89302%_
                               _%probe89321%_
                               _%key89297%_)
                              (vector-set!
                               _%table89302%_
                               (##fx+ _%probe89321%_ '1)
                               (_%immediate-table-update!89298%_
                                (vector-ref
                                 _%table89302%_
                                 (##fx+ _%probe89321%_ '1)))))
                            (let ()
                              (_%loop89318%_
                               (let ((_%next-probe89343%_
                                      (fx+ _%start89314%_
                                           _%i89323%_
                                           (fx* _%i89323%_ _%i89323%_))))
                                 (##fxmodulo
                                  _%next-probe89343%_
                                  _%size89308%_))
                               (##fx+ _%i89323%_ '1)
                               _%deleted89325%_)))))))))))
    (define immediate-table-delete!
      (lambda (_%tab89251%_ _%key89253%_)
        (let ((_%table89256%_ (&raw-table-table _%tab89251%_))
              (_%seed89258%_ (&raw-table-seed _%tab89251%_)))
          (let* ((_%h89261%_
                  (fxxor (immediate-hash _%key89253%_) _%seed89258%_))
                 (_%size89264%_ (vector-length _%table89256%_))
                 (_%entries89267%_ (##fxquotient _%size89264%_ '2))
                 (_%start89270%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89261%_ _%entries89267%_)
                   '1)))
            (let _%loop89274%_ ((_%probe89277%_ _%start89270%_)
                                (_%i89279%_ '1))
              (let ((_%k89282%_ (vector-ref _%table89256%_ _%probe89277%_)))
                (if (eq? _%k89282%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89282%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89274%_
                           (let ((_%next-probe89287%_
                                  (fx+ _%start89270%_
                                       _%i89279%_
                                       (fx* _%i89279%_ _%i89279%_))))
                             (##fxmodulo _%next-probe89287%_ _%size89264%_))
                           (##fx+ _%i89279%_ '1)))
                        (if (eq? _%key89253%_ _%k89282%_)
                            (let ()
                              (vector-set!
                               _%table89256%_
                               _%probe89277%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89256%_
                               (##fx+ _%probe89277%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89251%_
                                  (##fx- (&raw-table-count _%tab89251%_)
                                         '1)))))
                            (let ()
                              (_%loop89274%_
                               (let ((_%next-probe89293%_
                                      (fx+ _%start89270%_
                                           _%i89279%_
                                           (fx* _%i89279%_ _%i89279%_))))
                                 (##fxmodulo
                                  _%next-probe89293%_
                                  _%size89264%_))
                               (##fx+ _%i89279%_ '1))))))))))))
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
      (lambda (_%tab89249%_)
        (##unchecked-structure-ref
         _%tab89249%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab89247%_)
        (##unchecked-structure-ref
         _%tab89247%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab89244%_ _%val89245%_)
        (##unchecked-structure-set!
         _%tab89244%_
         _%val89245%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab89241%_ _%val89242%_)
        (##unchecked-structure-set!
         _%tab89241%_
         _%val89242%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint89217%_ _%klass89218%_ _%flags89219%_)
        (let ((_%gcht89221%_
               (__gc-table-new
                (if (fixnum? _%size-hint89217%_) _%size-hint89217%_ '16)
                _%flags89219%_)))
          (##structure _%klass89218%_ _%gcht89221%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint89226%_)
        (let* ((_%klass89228%_ __gc-table::t) (_%flags89230%_ '0))
          (make-gc-table__%
           _%size-hint89226%_
           _%klass89228%_
           _%flags89230%_))))
    (define make-gc-table__1
      (lambda (_%size-hint89232%_ _%klass89233%_)
        (let ((_%flags89235%_ '0))
          (make-gc-table__%
           _%size-hint89232%_
           _%klass89233%_
           _%flags89235%_))))
    (define make-gc-table
      (lambda _g90693_
        (let ((_g90692_ (##length _g90693_)))
          (cond ((##fx= _g90692_ 1)
                 (apply (lambda (_%size-hint89226%_)
                          (make-gc-table__0 _%size-hint89226%_))
                        _g90693_))
                ((##fx= _g90692_ 2)
                 (apply (lambda (_%size-hint89232%_ _%klass89233%_)
                          (make-gc-table__1 _%size-hint89232%_ _%klass89233%_))
                        _g90693_))
                ((##fx= _g90692_ 3)
                 (apply (lambda (_%size-hint89237%_
                                 _%klass89238%_
                                 _%flags89239%_)
                          (make-gc-table__%
                           _%size-hint89237%_
                           _%klass89238%_
                           _%flags89239%_))
                        _g90693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90693_))))))
    (define __gc-table-immediate
      (lambda (_%tab89208%_)
        (let ((_%$e89210%_ (&gc-table-immediate _%tab89208%_)))
          (if _%$e89210%_
              _%$e89210%_
              (let ((_%immediate89214%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab89208%_ _%immediate89214%_)
                _%immediate89214%_)))))
    (define __gc-table-new
      (lambda (_%size89198%_ _%flags89199%_)
        (let* ((_%flags89201%_
                (##fxand _%flags89199%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags89203%_
                (fxior _%flags89201%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht89205%_
                (##gc-hash-table-allocate
                 _%size89198%_
                 _%flags89203%_
                 __gc-table-loads)))
          _%gcht89205%_)))
    (define __gc-table-e
      (lambda (_%tab89193%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht89196%_ (&gc-table-gcht _%tab89193%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht89196%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht89196%_
              (begin
                (__gc-table-rehash! _%tab89193%_)
                (&gc-table-gcht _%tab89193%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab89184%_)
        (let* ((_%old-table89186%_ (&gc-table-gcht _%tab89184%_))
               (_%new-table89188%_
                (##gc-hash-table-resize! _%old-table89186%_ __gc-table-loads))
               (_%gcht89190%_
                (##gc-hash-table-rehash!
                 _%old-table89186%_
                 _%new-table89188%_)))
          (&gc-table-gcht-set! _%tab89184%_ _%gcht89190%_))))
    (define gc-table-ref
      (lambda (_%tab89168%_ _%key89169%_ _%default89170%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89169%_)
            (let ()
              (let* ((_%gcht89174%_ (__gc-table-e _%tab89168%_))
                     (_%value89176%_
                      (##gc-hash-table-ref _%gcht89174%_ _%key89169%_)))
                (if (eq? _%value89176%_ (macro-unused-obj))
                    _%default89170%_
                    _%value89176%_)))
            (let ((_%$e89178%_ (&gc-table-immediate _%tab89168%_)))
              (if _%$e89178%_
                  ((lambda (_%immediate89181%_)
                     (immediate-table-ref
                      _%immediate89181%_
                      _%key89169%_
                      _%default89170%_))
                   _%$e89178%_)
                  (let () _%default89170%_))))))
    (define gc-table-set!
      (lambda (_%tab89161%_ _%key89162%_ _%value89163%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89162%_)
            (let ((_%gcht89166%_ (__gc-table-e _%tab89161%_)))
              (if (##gc-hash-table-set!
                   _%gcht89166%_
                   _%key89162%_
                   _%value89163%_)
                  (begin
                    (__gc-table-rehash! _%tab89161%_)
                    (gc-table-set! _%tab89161%_ _%key89162%_ _%value89163%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab89161%_)
             _%key89162%_
             _%value89163%_))))
    (define gc-table-update!
      (lambda (_%tab89154%_ _%key89155%_ _%update89156%_ _%default89157%_)
        (if (##mem-allocated? _%key89155%_)
            (let ((_%value89159%_
                   (gc-table-ref _%tab89154%_ _%key89155%_ _%default89157%_)))
              (gc-table-set!
               _%tab89154%_
               _%key89155%_
               (_%update89156%_ _%value89159%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab89154%_)
             _%key89155%_
             _%update89156%_
             _%default89157%_))))
    (define gc-table-delete!
      (lambda (_%tab89142%_ _%key89143%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89143%_)
            (let ((_%gcht89147%_ (__gc-table-e _%tab89142%_)))
              (if (##gc-hash-table-set!
                   _%gcht89147%_
                   _%key89143%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab89142%_)
                    (gc-table-delete! _%tab89142%_ _%key89143%_))
                  '#!void))
            (let ((_%$e89149%_ (&gc-table-immediate _%tab89142%_)))
              (if _%$e89149%_
                  ((lambda (_%immediate89152%_)
                     (immediate-table-delete! _%immediate89152%_ _%key89143%_))
                   _%$e89149%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab89123%_ _%proc89124%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht89127%_ (__gc-table-e _%tab89123%_)))
            (let _%loop89129%_ ((_%i89131%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i89131%_ (##vector-length _%gcht89127%_))
                  (let ((_%key89133%_ (##vector-ref _%gcht89127%_ _%i89131%_)))
                    (if (and (not (eq? _%key89133%_ (macro-unused-obj)))
                             (not (eq? _%key89133%_ (macro-deleted-obj))))
                        (_%proc89124%_
                         _%key89133%_
                         (##vector-ref _%gcht89127%_ (##fx+ _%i89131%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop89129%_ (##fx+ _%i89131%_ '2))))
                  '#!void)))
          (let ((_%$e89137%_ (&gc-table-immediate _%tab89123%_)))
            (if _%$e89137%_
                ((lambda (_%immediate89140%_)
                   (raw-table-for-each _%immediate89140%_ _%proc89124%_))
                 _%$e89137%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab89111%_)
        (let* ((_%gcht89113%_ (__gc-table-e _%tab89111%_))
               (_%new-table89115%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht89113%_)
                 (macro-gc-hash-table-flags _%gcht89113%_)))
               (_%result89117%_
                (##structure
                 (##structure-type _%tab89111%_)
                 _%new-table89115%_
                 '#f)))
          (gc-table-for-each
           _%tab89111%_
           (lambda (_%k89120%_ _%v89121%_)
             (gc-table-set! _%result89117%_ _%k89120%_ _%v89121%_)))
          _%result89117%_)))
    (define gc-table-clear!
      (lambda (_%tab89104%_)
        (let* ((_%gcht89106%_ (__gc-table-e _%tab89104%_))
               (_%new-table89108%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht89106%_))))
          (&gc-table-gcht-set! _%tab89104%_ _%new-table89108%_)
          (&gc-table-immediate-set! _%tab89104%_ '#f))))
    (define gc-table-length
      (lambda (_%tab89096%_)
        (let ((_%gcht89098%_ (__gc-table-e _%tab89096%_)))
          (fx+ (macro-gc-hash-table-count _%gcht89098%_)
               (let ((_%$e89100%_ (&gc-table-immediate _%tab89096%_)))
                 (if _%$e89100%_
                     (&raw-table-count _%$e89100%_)
                     (let () '0)))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj89081%_)
        (declare (not interrupts-enabled))
        (let ((_%val89084%_ (gc-table-ref __object-eq-hash _%obj89081%_ '#f)))
          (if _%val89084%_
              _%val89084%_
              (let* ((_%mix89086%_ __object-eq-hash-next)
                     (_%ptr89088%_ (##type-cast _%obj89081%_ '0))
                     (_%h89090%_
                      (fxand (fxxor _%mix89086%_ _%ptr89088%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e89093%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e89093%_ _%$e89093%_ '0)))
                (gc-table-set! __object-eq-hash _%obj89081%_ _%h89090%_)
                _%h89090%_)))))))
