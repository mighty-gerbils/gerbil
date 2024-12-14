(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1734215268)
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
      (lambda (_%tab94096%_)
        (##unchecked-structure-ref
         _%tab94096%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab94094%_)
        (##unchecked-structure-ref
         _%tab94094%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab94092%_)
        (##unchecked-structure-ref
         _%tab94092%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab94090%_)
        (##unchecked-structure-ref
         _%tab94090%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab94088%_)
        (##unchecked-structure-ref
         _%tab94088%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab94086%_)
        (##unchecked-structure-ref
         _%tab94086%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab94083%_ _%val94084%_)
        (##unchecked-structure-set!
         _%tab94083%_
         _%val94084%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab94080%_ _%val94081%_)
        (##unchecked-structure-set!
         _%tab94080%_
         _%val94081%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab94077%_ _%val94078%_)
        (##unchecked-structure-set!
         _%tab94077%_
         _%val94078%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab94074%_ _%val94075%_)
        (##unchecked-structure-set!
         _%tab94074%_
         _%val94075%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab94071%_ _%val94072%_)
        (##unchecked-structure-set!
         _%tab94071%_
         _%val94072%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab94068%_ _%val94069%_)
        (##unchecked-structure-set!
         _%tab94068%_
         _%val94069%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint94066%_)
        (if (and (fixnum? _%size-hint94066%_) (##fx> _%size-hint94066%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint94066%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint94042%_ _%hash94043%_ _%test94044%_ _%seed94045%_)
        (let* ((_%size94047%_ (raw-table-size-hint->size _%size-hint94042%_))
               (_%table94049%_
                (##make-vector _%size94047%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table94049%_
           '0
           (##fxquotient _%size94047%_ '2)
           _%hash94043%_
           _%test94044%_
           _%seed94045%_))))
    (define make-raw-table__0
      (lambda (_%size-hint94055%_ _%hash94056%_ _%test94057%_)
        (let ((_%seed94059%_ '0))
          (make-raw-table__%
           _%size-hint94055%_
           _%hash94056%_
           _%test94057%_
           _%seed94059%_))))
    (define make-raw-table
      (lambda _g94098_
        (let ((_g94097_ (##length _g94098_)))
          (cond ((##fx= _g94097_ 3) (apply make-raw-table__0 _g94098_))
                ((##fx= _g94097_ 4) (apply make-raw-table__% _g94098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g94098_))))))
    (define raw-table-ref
      (lambda (_%tab93993%_ _%key93994%_ _%default93995%_)
        (let ((_%table93997%_ (&raw-table-table _%tab93993%_))
              (_%seed93998%_ (&raw-table-seed _%tab93993%_))
              (_%hash93999%_ (&raw-table-hash _%tab93993%_))
              (_%test94000%_ (&raw-table-test _%tab93993%_)))
          (let* ((_%h94002%_
                  (fxxor (_%hash93999%_ _%key93994%_) _%seed93998%_))
                 (_%size94005%_ (vector-length _%table93997%_))
                 (_%entries94008%_ (##fxquotient _%size94005%_ '2))
                 (_%start94011%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94002%_ _%entries94008%_)
                   '1)))
            (let _%loop94015%_ ((_%probe94018%_ _%start94011%_)
                                (_%i94020%_ '1)
                                (_%deleted94022%_ '#f))
              (let ((_%k94025%_ (vector-ref _%table93997%_ _%probe94018%_)))
                (if (eq? _%k94025%_ (macro-unused-obj))
                    _%default93995%_
                    (if (eq? _%k94025%_ (macro-deleted-obj))
                        (_%loop94015%_
                         (let ((_%next-probe94030%_
                                (fx+ _%start94011%_
                                     _%i94020%_
                                     (fx* _%i94020%_ _%i94020%_))))
                           (##fxmodulo _%next-probe94030%_ _%size94005%_))
                         (##fx+ _%i94020%_ '1)
                         (let ((_%$e94033%_ _%deleted94022%_))
                           (if _%$e94033%_ _%$e94033%_ _%probe94018%_)))
                        (if (_%test94000%_ _%key93994%_ _%k94025%_)
                            (vector-ref
                             _%table93997%_
                             (##fx+ _%probe94018%_ '1))
                            (_%loop94015%_
                             (let ((_%next-probe94038%_
                                    (fx+ _%start94011%_
                                         _%i94020%_
                                         (fx* _%i94020%_ _%i94020%_))))
                               (##fxmodulo _%next-probe94038%_ _%size94005%_))
                             (##fx+ _%i94020%_ '1)
                             _%deleted94022%_))))))))))
    (define raw-table-set!
      (lambda (_%tab93989%_ _%key93990%_ _%value93991%_)
        (if (##fx< (&raw-table-free _%tab93989%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93989%_))
                    '4))
            (__raw-table-rehash! _%tab93989%_)
            '#!void)
        (__raw-table-set! _%tab93989%_ _%key93990%_ _%value93991%_)))
    (define raw-table-update!
      (lambda (_%tab93984%_ _%key93985%_ _%update93986%_ _%default93987%_)
        (if (##fx< (&raw-table-free _%tab93984%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93984%_))
                    '4))
            (__raw-table-rehash! _%tab93984%_)
            '#!void)
        (__raw-table-update!
         _%tab93984%_
         _%key93985%_
         _%update93986%_
         _%default93987%_)))
    (define raw-table-delete!
      (lambda (_%tab93941%_ _%key93942%_)
        (let ((_%table93944%_ (&raw-table-table _%tab93941%_))
              (_%seed93945%_ (&raw-table-seed _%tab93941%_))
              (_%hash93946%_ (&raw-table-hash _%tab93941%_))
              (_%test93947%_ (&raw-table-test _%tab93941%_)))
          (let* ((_%h93949%_
                  (fxxor (_%hash93946%_ _%key93942%_) _%seed93945%_))
                 (_%size93952%_ (vector-length _%table93944%_))
                 (_%entries93955%_ (##fxquotient _%size93952%_ '2))
                 (_%start93958%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93949%_ _%entries93955%_)
                   '1)))
            (let _%loop93962%_ ((_%probe93965%_ _%start93958%_)
                                (_%i93967%_ '1))
              (let ((_%k93970%_ (vector-ref _%table93944%_ _%probe93965%_)))
                (if (eq? _%k93970%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93970%_ (macro-deleted-obj))
                        (_%loop93962%_
                         (let ((_%next-probe93975%_
                                (fx+ _%start93958%_
                                     _%i93967%_
                                     (fx* _%i93967%_ _%i93967%_))))
                           (##fxmodulo _%next-probe93975%_ _%size93952%_))
                         (##fx+ _%i93967%_ '1))
                        (if (_%test93947%_ _%key93942%_ _%k93970%_)
                            (let ()
                              (vector-set!
                               _%table93944%_
                               _%probe93965%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93944%_
                               (##fx+ _%probe93965%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93941%_
                                  (##fx- (&raw-table-count _%tab93941%_)
                                         '1)))))
                            (_%loop93962%_
                             (let ((_%next-probe93981%_
                                    (fx+ _%start93958%_
                                         _%i93967%_
                                         (fx* _%i93967%_ _%i93967%_))))
                               (##fxmodulo _%next-probe93981%_ _%size93952%_))
                             (##fx+ _%i93967%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab93925%_ _%proc93926%_)
        (let* ((_%table93928%_ (&raw-table-table _%tab93925%_))
               (_%size93930%_ (vector-length _%table93928%_)))
          (let _%loop93933%_ ((_%i93935%_ '0))
            (if (##fx< _%i93935%_ _%size93930%_)
                (begin
                  (let ((_%key93937%_ (vector-ref _%table93928%_ _%i93935%_)))
                    (if (if (eq? _%key93937%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key93937%_ (macro-deleted-obj))))
                        (let ((_%value93939%_
                               (vector-ref
                                _%table93928%_
                                (##fx+ _%i93935%_ '1))))
                          (_%proc93926%_ _%key93937%_ _%value93939%_))
                        '#!void))
                  (_%loop93933%_ (##fx+ _%i93935%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab93921%_)
        (let ((_%new-tab93923%_ (##structure-copy _%tab93921%_)))
          (&raw-table-table-set!
           _%new-tab93923%_
           (vector-copy (&raw-table-table _%tab93921%_)))
          _%new-tab93923%_)))
    (define raw-table-clear!
      (lambda (_%tab93919%_)
        (vector-fill! (&raw-table-table _%tab93919%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab93919%_ '0)
        (&raw-table-free-set!
         _%tab93919%_
         (##fxquotient (vector-length (&raw-table-table _%tab93919%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab93869%_ _%key93870%_ _%value93871%_)
        (let ((_%table93873%_ (&raw-table-table _%tab93869%_))
              (_%seed93874%_ (&raw-table-seed _%tab93869%_))
              (_%hash93875%_ (&raw-table-hash _%tab93869%_))
              (_%test93876%_ (&raw-table-test _%tab93869%_)))
          (let* ((_%h93878%_
                  (fxxor (_%hash93875%_ _%key93870%_) _%seed93874%_))
                 (_%size93881%_ (vector-length _%table93873%_))
                 (_%entries93884%_ (##fxquotient _%size93881%_ '2))
                 (_%start93887%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93878%_ _%entries93884%_)
                   '1)))
            (let _%loop93891%_ ((_%probe93894%_ _%start93887%_)
                                (_%i93896%_ '1)
                                (_%deleted93898%_ '#f))
              (let ((_%k93901%_ (vector-ref _%table93873%_ _%probe93894%_)))
                (if (eq? _%k93901%_ (macro-unused-obj))
                    (if _%deleted93898%_
                        (begin
                          (vector-set!
                           _%table93873%_
                           _%deleted93898%_
                           _%key93870%_)
                          (vector-set!
                           _%table93873%_
                           (##fx+ _%deleted93898%_ '1)
                           _%value93871%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93869%_
                              (##fx+ (&raw-table-count _%tab93869%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93873%_
                           _%probe93894%_
                           _%key93870%_)
                          (vector-set!
                           _%table93873%_
                           (##fx+ _%probe93894%_ '1)
                           _%value93871%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93869%_
                              (##fx- (&raw-table-free _%tab93869%_) '1))
                             (&raw-table-count-set!
                              _%tab93869%_
                              (##fx+ (&raw-table-count _%tab93869%_) '1))))))
                    (if (eq? _%k93901%_ (macro-deleted-obj))
                        (_%loop93891%_
                         (let ((_%next-probe93908%_
                                (fx+ _%start93887%_
                                     _%i93896%_
                                     (fx* _%i93896%_ _%i93896%_))))
                           (##fxmodulo _%next-probe93908%_ _%size93881%_))
                         (##fx+ _%i93896%_ '1)
                         (let ((_%$e93911%_ _%deleted93898%_))
                           (if _%$e93911%_ _%$e93911%_ _%probe93894%_)))
                        (if (_%test93876%_ _%key93870%_ _%k93901%_)
                            (let ()
                              (vector-set!
                               _%table93873%_
                               _%probe93894%_
                               _%key93870%_)
                              (vector-set!
                               _%table93873%_
                               (##fx+ _%probe93894%_ '1)
                               _%value93871%_))
                            (_%loop93891%_
                             (let ((_%next-probe93916%_
                                    (fx+ _%start93887%_
                                         _%i93896%_
                                         (fx* _%i93896%_ _%i93896%_))))
                               (##fxmodulo _%next-probe93916%_ _%size93881%_))
                             (##fx+ _%i93896%_ '1)
                             _%deleted93898%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab93818%_ _%key93819%_ _%update93820%_ _%default93821%_)
        (let ((_%table93823%_ (&raw-table-table _%tab93818%_))
              (_%seed93824%_ (&raw-table-seed _%tab93818%_))
              (_%hash93825%_ (&raw-table-hash _%tab93818%_))
              (_%test93826%_ (&raw-table-test _%tab93818%_)))
          (let* ((_%h93828%_
                  (fxxor (_%hash93825%_ _%key93819%_) _%seed93824%_))
                 (_%size93831%_ (vector-length _%table93823%_))
                 (_%entries93834%_ (##fxquotient _%size93831%_ '2))
                 (_%start93837%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93828%_ _%entries93834%_)
                   '1)))
            (let _%loop93841%_ ((_%probe93844%_ _%start93837%_)
                                (_%i93846%_ '1)
                                (_%deleted93848%_ '#f))
              (let ((_%k93851%_ (vector-ref _%table93823%_ _%probe93844%_)))
                (if (eq? _%k93851%_ (macro-unused-obj))
                    (if _%deleted93848%_
                        (begin
                          (vector-set!
                           _%table93823%_
                           _%deleted93848%_
                           _%key93819%_)
                          (vector-set!
                           _%table93823%_
                           (##fx+ _%deleted93848%_ '1)
                           (_%update93820%_ _%default93821%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93818%_
                              (##fx+ (&raw-table-count _%tab93818%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93823%_
                           _%probe93844%_
                           _%key93819%_)
                          (vector-set!
                           _%table93823%_
                           (##fx+ _%probe93844%_ '1)
                           (_%update93820%_ _%default93821%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93818%_
                              (##fx- (&raw-table-free _%tab93818%_) '1))
                             (&raw-table-count-set!
                              _%tab93818%_
                              (##fx+ (&raw-table-count _%tab93818%_) '1))))))
                    (if (eq? _%k93851%_ (macro-deleted-obj))
                        (_%loop93841%_
                         (let ((_%next-probe93858%_
                                (fx+ _%start93837%_
                                     _%i93846%_
                                     (fx* _%i93846%_ _%i93846%_))))
                           (##fxmodulo _%next-probe93858%_ _%size93831%_))
                         (##fx+ _%i93846%_ '1)
                         (let ((_%$e93861%_ _%deleted93848%_))
                           (if _%$e93861%_ _%$e93861%_ _%probe93844%_)))
                        (if (_%test93826%_ _%key93819%_ _%k93851%_)
                            (let ()
                              (vector-set!
                               _%table93823%_
                               _%probe93844%_
                               _%key93819%_)
                              (vector-set!
                               _%table93823%_
                               (##fx+ _%probe93844%_ '1)
                               (_%update93820%_
                                (vector-ref
                                 _%table93823%_
                                 (##fx+ _%probe93844%_ '1)))))
                            (_%loop93841%_
                             (let ((_%next-probe93866%_
                                    (fx+ _%start93837%_
                                         _%i93846%_
                                         (fx* _%i93846%_ _%i93846%_))))
                               (##fxmodulo _%next-probe93866%_ _%size93831%_))
                             (##fx+ _%i93846%_ '1)
                             _%deleted93848%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab93799%_)
        (let* ((_%old-table93801%_ (&raw-table-table _%tab93799%_))
               (_%old-size93803%_ (vector-length _%old-table93801%_))
               (_%new-size93805%_
                (if (##fx< (&raw-table-count _%tab93799%_)
                           (##fxquotient _%old-size93803%_ '4))
                    (vector-length _%old-table93801%_)
                    (##fx* '2 (vector-length _%old-table93801%_))))
               (_%new-table93807%_
                (##make-vector _%new-size93805%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab93799%_ _%new-table93807%_)
          (&raw-table-count-set! _%tab93799%_ '0)
          (&raw-table-free-set!
           _%tab93799%_
           (##fxquotient _%new-size93805%_ '2))
          (let _%lp93810%_ ((_%i93812%_ '0))
            (if (##fx< _%i93812%_ _%old-size93803%_)
                (begin
                  (let ((_%key93814%_
                         (vector-ref _%old-table93801%_ _%i93812%_)))
                    (if (if (eq? _%key93814%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key93814%_ (macro-deleted-obj))))
                        (let ((_%value93816%_
                               (vector-ref
                                _%old-table93801%_
                                (##fx+ _%i93812%_ '1))))
                          (__raw-table-set!
                           _%tab93799%_
                           _%key93814%_
                           _%value93816%_))
                        '#!void))
                  (_%lp93810%_ (##fx+ _%i93812%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj93791%_)
        (let ((_%t93793%_ (##type _%obj93791%_)))
          (if (##fx= (##fxand _%t93793%_ '1) '0)
              (fxand (##type-cast _%obj93791%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj93791%_)
                  (symbolic-hash _%obj93791%_)
                  (if (procedure? _%obj93791%_)
                      (procedure-hash _%obj93791%_)
                      (fxand (__eq-hash _%obj93791%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj93787%_)
        (let ((_%h93789%_
               (if (##closure? _%obj93787%_)
                   (__eq-hash _%obj93787%_)
                   (##type-cast _%obj93787%_ '0))))
          (fxand _%h93789%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj93784%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj93784%_)))
    (define eqv-hash
      (lambda (_%obj93774%_)
        (letrec ((_%combine93776%_
                  (lambda (_%a93781%_ _%b93782%_)
                    (fxand (##fx* (##fx+ _%a93781%_
                                         (fxarithmetic-shift-left
                                          _%b93782%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash93777%_
                  (lambda (_%obj93779%_)
                    (macro-number-dispatch
                     _%obj93779%_
                     (eq-hash _%obj93779%_)
                     (fxand _%obj93779%_ (macro-max-fixnum32))
                     (modulo _%obj93779%_ '331804481)
                     (_%combine93776%_
                      (_%hash93777%_ (macro-ratnum-numerator _%obj93779%_))
                      (_%hash93777%_ (macro-ratnum-denominator _%obj93779%_)))
                     (_%combine93776%_
                      (##u16vector-ref _%obj93779%_ '0)
                      (_%combine93776%_
                       (##u16vector-ref _%obj93779%_ '1)
                       (_%combine93776%_
                        (##u16vector-ref _%obj93779%_ '2)
                        (##u16vector-ref _%obj93779%_ '3))))
                     (_%combine93776%_
                      (_%hash93777%_ (macro-cpxnum-real _%obj93779%_))
                      (_%hash93777%_ (macro-cpxnum-imag _%obj93779%_)))))))
          (_%hash93777%_ _%obj93774%_))))
    (define symbolic?
      (lambda (_%obj93769%_)
        (let ((_%$e93771%_ (symbol? _%obj93769%_)))
          (if _%$e93771%_ _%$e93771%_ (keyword? _%obj93769%_)))))
    (define symbolic-hash (lambda (_%obj93767%_) (macro-slot '1 _%obj93767%_)))
    (define string-hash (lambda (_%obj93765%_) (##string=?-hash _%obj93765%_)))
    (define immediate-hash
      (lambda (_%obj93763%_) (##type-cast _%obj93763%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint93744%_ _%seed93746%_)
        (make-raw-table__% _%size-hint93744%_ eq-hash eq? _%seed93746%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint93752%_ '#f) (_%seed93754%_ '0))
          (make-eq-table__% _%size-hint93752%_ _%seed93754%_))))
    (define make-eq-table__1
      (lambda (_%size-hint93756%_)
        (let ((_%seed93758%_ '0))
          (make-eq-table__% _%size-hint93756%_ _%seed93758%_))))
    (define make-eq-table
      (lambda _g94100_
        (let ((_g94099_ (##length _g94100_)))
          (cond ((##fx= _g94099_ 0) (apply make-eq-table__0 _g94100_))
                ((##fx= _g94099_ 1) (apply make-eq-table__1 _g94100_))
                ((##fx= _g94099_ 2) (apply make-eq-table__% _g94100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g94100_))))))
    (define eq-table-ref
      (lambda (_%tab93697%_ _%key93698%_ _%default93699%_)
        (let ((_%table93701%_ (&raw-table-table _%tab93697%_))
              (_%seed93702%_ (&raw-table-seed _%tab93697%_)))
          (let* ((_%h93704%_ (fxxor (eq-hash _%key93698%_) _%seed93702%_))
                 (_%size93707%_ (vector-length _%table93701%_))
                 (_%entries93710%_ (##fxquotient _%size93707%_ '2))
                 (_%start93713%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93704%_ _%entries93710%_)
                   '1)))
            (let _%loop93717%_ ((_%probe93720%_ _%start93713%_)
                                (_%i93722%_ '1)
                                (_%deleted93724%_ '#f))
              (let ((_%k93727%_ (vector-ref _%table93701%_ _%probe93720%_)))
                (if (eq? _%k93727%_ (macro-unused-obj))
                    _%default93699%_
                    (if (eq? _%k93727%_ (macro-deleted-obj))
                        (_%loop93717%_
                         (let ((_%next-probe93732%_
                                (fx+ _%start93713%_
                                     _%i93722%_
                                     (fx* _%i93722%_ _%i93722%_))))
                           (##fxmodulo _%next-probe93732%_ _%size93707%_))
                         (##fx+ _%i93722%_ '1)
                         (let ((_%$e93735%_ _%deleted93724%_))
                           (if _%$e93735%_ _%$e93735%_ _%probe93720%_)))
                        (if (eq? _%key93698%_ _%k93727%_)
                            (vector-ref
                             _%table93701%_
                             (##fx+ _%probe93720%_ '1))
                            (_%loop93717%_
                             (let ((_%next-probe93740%_
                                    (fx+ _%start93713%_
                                         _%i93722%_
                                         (fx* _%i93722%_ _%i93722%_))))
                               (##fxmodulo _%next-probe93740%_ _%size93707%_))
                             (##fx+ _%i93722%_ '1)
                             _%deleted93724%_))))))))))
    (define eq-table-set!
      (lambda (_%tab93693%_ _%key93694%_ _%value93695%_)
        (if (##fx< (&raw-table-free _%tab93693%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93693%_))
                    '4))
            (__raw-table-rehash! _%tab93693%_)
            '#!void)
        (__eq-table-set! _%tab93693%_ _%key93694%_ _%value93695%_)))
    (define __eq-table-set!
      (lambda (_%tab93644%_ _%key93645%_ _%value93646%_)
        (let ((_%table93649%_ (&raw-table-table _%tab93644%_))
              (_%seed93650%_ (&raw-table-seed _%tab93644%_)))
          (let* ((_%h93652%_ (fxxor (eq-hash _%key93645%_) _%seed93650%_))
                 (_%size93655%_ (vector-length _%table93649%_))
                 (_%entries93658%_ (##fxquotient _%size93655%_ '2))
                 (_%start93661%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93652%_ _%entries93658%_)
                   '1)))
            (let _%loop93665%_ ((_%probe93668%_ _%start93661%_)
                                (_%i93670%_ '1)
                                (_%deleted93672%_ '#f))
              (let ((_%k93675%_ (vector-ref _%table93649%_ _%probe93668%_)))
                (if (eq? _%k93675%_ (macro-unused-obj))
                    (if _%deleted93672%_
                        (begin
                          (vector-set!
                           _%table93649%_
                           _%deleted93672%_
                           _%key93645%_)
                          (vector-set!
                           _%table93649%_
                           (##fx+ _%deleted93672%_ '1)
                           _%value93646%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93644%_
                              (##fx+ (&raw-table-count _%tab93644%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93649%_
                           _%probe93668%_
                           _%key93645%_)
                          (vector-set!
                           _%table93649%_
                           (##fx+ _%probe93668%_ '1)
                           _%value93646%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93644%_
                              (##fx- (&raw-table-free _%tab93644%_) '1))
                             (&raw-table-count-set!
                              _%tab93644%_
                              (##fx+ (&raw-table-count _%tab93644%_) '1))))))
                    (if (eq? _%k93675%_ (macro-deleted-obj))
                        (_%loop93665%_
                         (let ((_%next-probe93682%_
                                (fx+ _%start93661%_
                                     _%i93670%_
                                     (fx* _%i93670%_ _%i93670%_))))
                           (##fxmodulo _%next-probe93682%_ _%size93655%_))
                         (##fx+ _%i93670%_ '1)
                         (let ((_%$e93685%_ _%deleted93672%_))
                           (if _%$e93685%_ _%$e93685%_ _%probe93668%_)))
                        (if (eq? _%key93645%_ _%k93675%_)
                            (let ()
                              (vector-set!
                               _%table93649%_
                               _%probe93668%_
                               _%key93645%_)
                              (vector-set!
                               _%table93649%_
                               (##fx+ _%probe93668%_ '1)
                               _%value93646%_))
                            (_%loop93665%_
                             (let ((_%next-probe93690%_
                                    (fx+ _%start93661%_
                                         _%i93670%_
                                         (fx* _%i93670%_ _%i93670%_))))
                               (##fxmodulo _%next-probe93690%_ _%size93655%_))
                             (##fx+ _%i93670%_ '1)
                             _%deleted93672%_))))))))))
    (define eq-table-update!
      (lambda (_%tab93639%_
               _%key93640%_
               _%eq-table-update!93641%_
               _%default93642%_)
        (if (##fx< (&raw-table-free _%tab93639%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93639%_))
                    '4))
            (__raw-table-rehash! _%tab93639%_)
            '#!void)
        (__eq-table-update!
         _%tab93639%_
         _%key93640%_
         _%eq-table-update!93641%_
         _%default93642%_)))
    (define __eq-table-update!
      (lambda (_%tab93589%_
               _%key93590%_
               _%eq-table-update!93591%_
               _%default93592%_)
        (let ((_%table93595%_ (&raw-table-table _%tab93589%_))
              (_%seed93596%_ (&raw-table-seed _%tab93589%_)))
          (let* ((_%h93598%_ (fxxor (eq-hash _%key93590%_) _%seed93596%_))
                 (_%size93601%_ (vector-length _%table93595%_))
                 (_%entries93604%_ (##fxquotient _%size93601%_ '2))
                 (_%start93607%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93598%_ _%entries93604%_)
                   '1)))
            (let _%loop93611%_ ((_%probe93614%_ _%start93607%_)
                                (_%i93616%_ '1)
                                (_%deleted93618%_ '#f))
              (let ((_%k93621%_ (vector-ref _%table93595%_ _%probe93614%_)))
                (if (eq? _%k93621%_ (macro-unused-obj))
                    (if _%deleted93618%_
                        (begin
                          (vector-set!
                           _%table93595%_
                           _%deleted93618%_
                           _%key93590%_)
                          (vector-set!
                           _%table93595%_
                           (##fx+ _%deleted93618%_ '1)
                           (_%eq-table-update!93591%_ _%default93592%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93589%_
                              (##fx+ (&raw-table-count _%tab93589%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93595%_
                           _%probe93614%_
                           _%key93590%_)
                          (vector-set!
                           _%table93595%_
                           (##fx+ _%probe93614%_ '1)
                           (_%eq-table-update!93591%_ _%default93592%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93589%_
                              (##fx- (&raw-table-free _%tab93589%_) '1))
                             (&raw-table-count-set!
                              _%tab93589%_
                              (##fx+ (&raw-table-count _%tab93589%_) '1))))))
                    (if (eq? _%k93621%_ (macro-deleted-obj))
                        (_%loop93611%_
                         (let ((_%next-probe93628%_
                                (fx+ _%start93607%_
                                     _%i93616%_
                                     (fx* _%i93616%_ _%i93616%_))))
                           (##fxmodulo _%next-probe93628%_ _%size93601%_))
                         (##fx+ _%i93616%_ '1)
                         (let ((_%$e93631%_ _%deleted93618%_))
                           (if _%$e93631%_ _%$e93631%_ _%probe93614%_)))
                        (if (eq? _%key93590%_ _%k93621%_)
                            (let ()
                              (vector-set!
                               _%table93595%_
                               _%probe93614%_
                               _%key93590%_)
                              (vector-set!
                               _%table93595%_
                               (##fx+ _%probe93614%_ '1)
                               (_%eq-table-update!93591%_
                                (vector-ref
                                 _%table93595%_
                                 (##fx+ _%probe93614%_ '1)))))
                            (_%loop93611%_
                             (let ((_%next-probe93636%_
                                    (fx+ _%start93607%_
                                         _%i93616%_
                                         (fx* _%i93616%_ _%i93616%_))))
                               (##fxmodulo _%next-probe93636%_ _%size93601%_))
                             (##fx+ _%i93616%_ '1)
                             _%deleted93618%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab93544%_ _%key93546%_)
        (let ((_%table93549%_ (&raw-table-table _%tab93544%_))
              (_%seed93551%_ (&raw-table-seed _%tab93544%_)))
          (let* ((_%h93554%_ (fxxor (eq-hash _%key93546%_) _%seed93551%_))
                 (_%size93557%_ (vector-length _%table93549%_))
                 (_%entries93560%_ (##fxquotient _%size93557%_ '2))
                 (_%start93563%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93554%_ _%entries93560%_)
                   '1)))
            (let _%loop93567%_ ((_%probe93570%_ _%start93563%_)
                                (_%i93572%_ '1))
              (let ((_%k93575%_ (vector-ref _%table93549%_ _%probe93570%_)))
                (if (eq? _%k93575%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93575%_ (macro-deleted-obj))
                        (_%loop93567%_
                         (let ((_%next-probe93580%_
                                (fx+ _%start93563%_
                                     _%i93572%_
                                     (fx* _%i93572%_ _%i93572%_))))
                           (##fxmodulo _%next-probe93580%_ _%size93557%_))
                         (##fx+ _%i93572%_ '1))
                        (if (eq? _%key93546%_ _%k93575%_)
                            (let ()
                              (vector-set!
                               _%table93549%_
                               _%probe93570%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93549%_
                               (##fx+ _%probe93570%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93544%_
                                  (##fx- (&raw-table-count _%tab93544%_)
                                         '1)))))
                            (_%loop93567%_
                             (let ((_%next-probe93586%_
                                    (fx+ _%start93563%_
                                         _%i93572%_
                                         (fx* _%i93572%_ _%i93572%_))))
                               (##fxmodulo _%next-probe93586%_ _%size93557%_))
                             (##fx+ _%i93572%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint93525%_ _%seed93527%_)
        (make-raw-table__% _%size-hint93525%_ eqv-hash eqv? _%seed93527%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint93533%_ '#f) (_%seed93535%_ '0))
          (make-eqv-table__% _%size-hint93533%_ _%seed93535%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint93537%_)
        (let ((_%seed93539%_ '0))
          (make-eqv-table__% _%size-hint93537%_ _%seed93539%_))))
    (define make-eqv-table
      (lambda _g94102_
        (let ((_g94101_ (##length _g94102_)))
          (cond ((##fx= _g94101_ 0) (apply make-eqv-table__0 _g94102_))
                ((##fx= _g94101_ 1) (apply make-eqv-table__1 _g94102_))
                ((##fx= _g94101_ 2) (apply make-eqv-table__% _g94102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g94102_))))))
    (define eqv-table-ref
      (lambda (_%tab93478%_ _%key93479%_ _%default93480%_)
        (let ((_%table93482%_ (&raw-table-table _%tab93478%_))
              (_%seed93483%_ (&raw-table-seed _%tab93478%_)))
          (let* ((_%h93485%_ (fxxor (eqv-hash _%key93479%_) _%seed93483%_))
                 (_%size93488%_ (vector-length _%table93482%_))
                 (_%entries93491%_ (##fxquotient _%size93488%_ '2))
                 (_%start93494%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93485%_ _%entries93491%_)
                   '1)))
            (let _%loop93498%_ ((_%probe93501%_ _%start93494%_)
                                (_%i93503%_ '1)
                                (_%deleted93505%_ '#f))
              (let ((_%k93508%_ (vector-ref _%table93482%_ _%probe93501%_)))
                (if (eq? _%k93508%_ (macro-unused-obj))
                    _%default93480%_
                    (if (eq? _%k93508%_ (macro-deleted-obj))
                        (_%loop93498%_
                         (let ((_%next-probe93513%_
                                (fx+ _%start93494%_
                                     _%i93503%_
                                     (fx* _%i93503%_ _%i93503%_))))
                           (##fxmodulo _%next-probe93513%_ _%size93488%_))
                         (##fx+ _%i93503%_ '1)
                         (let ((_%$e93516%_ _%deleted93505%_))
                           (if _%$e93516%_ _%$e93516%_ _%probe93501%_)))
                        (if (eqv? _%key93479%_ _%k93508%_)
                            (vector-ref
                             _%table93482%_
                             (##fx+ _%probe93501%_ '1))
                            (_%loop93498%_
                             (let ((_%next-probe93521%_
                                    (fx+ _%start93494%_
                                         _%i93503%_
                                         (fx* _%i93503%_ _%i93503%_))))
                               (##fxmodulo _%next-probe93521%_ _%size93488%_))
                             (##fx+ _%i93503%_ '1)
                             _%deleted93505%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab93474%_ _%key93475%_ _%value93476%_)
        (if (##fx< (&raw-table-free _%tab93474%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93474%_))
                    '4))
            (__raw-table-rehash! _%tab93474%_)
            '#!void)
        (__eqv-table-set! _%tab93474%_ _%key93475%_ _%value93476%_)))
    (define __eqv-table-set!
      (lambda (_%tab93425%_ _%key93426%_ _%value93427%_)
        (let ((_%table93430%_ (&raw-table-table _%tab93425%_))
              (_%seed93431%_ (&raw-table-seed _%tab93425%_)))
          (let* ((_%h93433%_ (fxxor (eqv-hash _%key93426%_) _%seed93431%_))
                 (_%size93436%_ (vector-length _%table93430%_))
                 (_%entries93439%_ (##fxquotient _%size93436%_ '2))
                 (_%start93442%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93433%_ _%entries93439%_)
                   '1)))
            (let _%loop93446%_ ((_%probe93449%_ _%start93442%_)
                                (_%i93451%_ '1)
                                (_%deleted93453%_ '#f))
              (let ((_%k93456%_ (vector-ref _%table93430%_ _%probe93449%_)))
                (if (eq? _%k93456%_ (macro-unused-obj))
                    (if _%deleted93453%_
                        (begin
                          (vector-set!
                           _%table93430%_
                           _%deleted93453%_
                           _%key93426%_)
                          (vector-set!
                           _%table93430%_
                           (##fx+ _%deleted93453%_ '1)
                           _%value93427%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93425%_
                              (##fx+ (&raw-table-count _%tab93425%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93430%_
                           _%probe93449%_
                           _%key93426%_)
                          (vector-set!
                           _%table93430%_
                           (##fx+ _%probe93449%_ '1)
                           _%value93427%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93425%_
                              (##fx- (&raw-table-free _%tab93425%_) '1))
                             (&raw-table-count-set!
                              _%tab93425%_
                              (##fx+ (&raw-table-count _%tab93425%_) '1))))))
                    (if (eq? _%k93456%_ (macro-deleted-obj))
                        (_%loop93446%_
                         (let ((_%next-probe93463%_
                                (fx+ _%start93442%_
                                     _%i93451%_
                                     (fx* _%i93451%_ _%i93451%_))))
                           (##fxmodulo _%next-probe93463%_ _%size93436%_))
                         (##fx+ _%i93451%_ '1)
                         (let ((_%$e93466%_ _%deleted93453%_))
                           (if _%$e93466%_ _%$e93466%_ _%probe93449%_)))
                        (if (eqv? _%key93426%_ _%k93456%_)
                            (let ()
                              (vector-set!
                               _%table93430%_
                               _%probe93449%_
                               _%key93426%_)
                              (vector-set!
                               _%table93430%_
                               (##fx+ _%probe93449%_ '1)
                               _%value93427%_))
                            (_%loop93446%_
                             (let ((_%next-probe93471%_
                                    (fx+ _%start93442%_
                                         _%i93451%_
                                         (fx* _%i93451%_ _%i93451%_))))
                               (##fxmodulo _%next-probe93471%_ _%size93436%_))
                             (##fx+ _%i93451%_ '1)
                             _%deleted93453%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab93420%_
               _%key93421%_
               _%eqv-table-update!93422%_
               _%default93423%_)
        (if (##fx< (&raw-table-free _%tab93420%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93420%_))
                    '4))
            (__raw-table-rehash! _%tab93420%_)
            '#!void)
        (__eqv-table-update!
         _%tab93420%_
         _%key93421%_
         _%eqv-table-update!93422%_
         _%default93423%_)))
    (define __eqv-table-update!
      (lambda (_%tab93370%_
               _%key93371%_
               _%eqv-table-update!93372%_
               _%default93373%_)
        (let ((_%table93376%_ (&raw-table-table _%tab93370%_))
              (_%seed93377%_ (&raw-table-seed _%tab93370%_)))
          (let* ((_%h93379%_ (fxxor (eqv-hash _%key93371%_) _%seed93377%_))
                 (_%size93382%_ (vector-length _%table93376%_))
                 (_%entries93385%_ (##fxquotient _%size93382%_ '2))
                 (_%start93388%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93379%_ _%entries93385%_)
                   '1)))
            (let _%loop93392%_ ((_%probe93395%_ _%start93388%_)
                                (_%i93397%_ '1)
                                (_%deleted93399%_ '#f))
              (let ((_%k93402%_ (vector-ref _%table93376%_ _%probe93395%_)))
                (if (eq? _%k93402%_ (macro-unused-obj))
                    (if _%deleted93399%_
                        (begin
                          (vector-set!
                           _%table93376%_
                           _%deleted93399%_
                           _%key93371%_)
                          (vector-set!
                           _%table93376%_
                           (##fx+ _%deleted93399%_ '1)
                           (_%eqv-table-update!93372%_ _%default93373%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93370%_
                              (##fx+ (&raw-table-count _%tab93370%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93376%_
                           _%probe93395%_
                           _%key93371%_)
                          (vector-set!
                           _%table93376%_
                           (##fx+ _%probe93395%_ '1)
                           (_%eqv-table-update!93372%_ _%default93373%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93370%_
                              (##fx- (&raw-table-free _%tab93370%_) '1))
                             (&raw-table-count-set!
                              _%tab93370%_
                              (##fx+ (&raw-table-count _%tab93370%_) '1))))))
                    (if (eq? _%k93402%_ (macro-deleted-obj))
                        (_%loop93392%_
                         (let ((_%next-probe93409%_
                                (fx+ _%start93388%_
                                     _%i93397%_
                                     (fx* _%i93397%_ _%i93397%_))))
                           (##fxmodulo _%next-probe93409%_ _%size93382%_))
                         (##fx+ _%i93397%_ '1)
                         (let ((_%$e93412%_ _%deleted93399%_))
                           (if _%$e93412%_ _%$e93412%_ _%probe93395%_)))
                        (if (eqv? _%key93371%_ _%k93402%_)
                            (let ()
                              (vector-set!
                               _%table93376%_
                               _%probe93395%_
                               _%key93371%_)
                              (vector-set!
                               _%table93376%_
                               (##fx+ _%probe93395%_ '1)
                               (_%eqv-table-update!93372%_
                                (vector-ref
                                 _%table93376%_
                                 (##fx+ _%probe93395%_ '1)))))
                            (_%loop93392%_
                             (let ((_%next-probe93417%_
                                    (fx+ _%start93388%_
                                         _%i93397%_
                                         (fx* _%i93397%_ _%i93397%_))))
                               (##fxmodulo _%next-probe93417%_ _%size93382%_))
                             (##fx+ _%i93397%_ '1)
                             _%deleted93399%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab93325%_ _%key93327%_)
        (let ((_%table93330%_ (&raw-table-table _%tab93325%_))
              (_%seed93332%_ (&raw-table-seed _%tab93325%_)))
          (let* ((_%h93335%_ (fxxor (eqv-hash _%key93327%_) _%seed93332%_))
                 (_%size93338%_ (vector-length _%table93330%_))
                 (_%entries93341%_ (##fxquotient _%size93338%_ '2))
                 (_%start93344%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93335%_ _%entries93341%_)
                   '1)))
            (let _%loop93348%_ ((_%probe93351%_ _%start93344%_)
                                (_%i93353%_ '1))
              (let ((_%k93356%_ (vector-ref _%table93330%_ _%probe93351%_)))
                (if (eq? _%k93356%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93356%_ (macro-deleted-obj))
                        (_%loop93348%_
                         (let ((_%next-probe93361%_
                                (fx+ _%start93344%_
                                     _%i93353%_
                                     (fx* _%i93353%_ _%i93353%_))))
                           (##fxmodulo _%next-probe93361%_ _%size93338%_))
                         (##fx+ _%i93353%_ '1))
                        (if (eqv? _%key93327%_ _%k93356%_)
                            (let ()
                              (vector-set!
                               _%table93330%_
                               _%probe93351%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93330%_
                               (##fx+ _%probe93351%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93325%_
                                  (##fx- (&raw-table-count _%tab93325%_)
                                         '1)))))
                            (_%loop93348%_
                             (let ((_%next-probe93367%_
                                    (fx+ _%start93344%_
                                         _%i93353%_
                                         (fx* _%i93353%_ _%i93353%_))))
                               (##fxmodulo _%next-probe93367%_ _%size93338%_))
                             (##fx+ _%i93353%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint93306%_ _%seed93308%_)
        (make-raw-table__%
         _%size-hint93306%_
         symbolic-hash
         eq?
         _%seed93308%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint93314%_ '#f) (_%seed93316%_ '0))
          (make-symbolic-table__% _%size-hint93314%_ _%seed93316%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint93318%_)
        (let ((_%seed93320%_ '0))
          (make-symbolic-table__% _%size-hint93318%_ _%seed93320%_))))
    (define make-symbolic-table
      (lambda _g94104_
        (let ((_g94103_ (##length _g94104_)))
          (cond ((##fx= _g94103_ 0) (apply make-symbolic-table__0 _g94104_))
                ((##fx= _g94103_ 1) (apply make-symbolic-table__1 _g94104_))
                ((##fx= _g94103_ 2) (apply make-symbolic-table__% _g94104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g94104_))))))
    (define symbolic-table-ref
      (lambda (_%tab93259%_ _%key93260%_ _%default93261%_)
        (let ((_%table93263%_ (&raw-table-table _%tab93259%_))
              (_%seed93264%_ (&raw-table-seed _%tab93259%_)))
          (let* ((_%h93266%_
                  (fxxor (symbolic-hash _%key93260%_) _%seed93264%_))
                 (_%size93269%_ (vector-length _%table93263%_))
                 (_%entries93272%_ (##fxquotient _%size93269%_ '2))
                 (_%start93275%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93266%_ _%entries93272%_)
                   '1)))
            (let _%loop93279%_ ((_%probe93282%_ _%start93275%_)
                                (_%i93284%_ '1)
                                (_%deleted93286%_ '#f))
              (let ((_%k93289%_ (vector-ref _%table93263%_ _%probe93282%_)))
                (if (eq? _%k93289%_ (macro-unused-obj))
                    _%default93261%_
                    (if (eq? _%k93289%_ (macro-deleted-obj))
                        (_%loop93279%_
                         (let ((_%next-probe93294%_
                                (fx+ _%start93275%_
                                     _%i93284%_
                                     (fx* _%i93284%_ _%i93284%_))))
                           (##fxmodulo _%next-probe93294%_ _%size93269%_))
                         (##fx+ _%i93284%_ '1)
                         (let ((_%$e93297%_ _%deleted93286%_))
                           (if _%$e93297%_ _%$e93297%_ _%probe93282%_)))
                        (if (eq? _%key93260%_ _%k93289%_)
                            (vector-ref
                             _%table93263%_
                             (##fx+ _%probe93282%_ '1))
                            (_%loop93279%_
                             (let ((_%next-probe93302%_
                                    (fx+ _%start93275%_
                                         _%i93284%_
                                         (fx* _%i93284%_ _%i93284%_))))
                               (##fxmodulo _%next-probe93302%_ _%size93269%_))
                             (##fx+ _%i93284%_ '1)
                             _%deleted93286%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab93255%_ _%key93256%_ _%value93257%_)
        (if (##fx< (&raw-table-free _%tab93255%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93255%_))
                    '4))
            (__raw-table-rehash! _%tab93255%_)
            '#!void)
        (__symbolic-table-set! _%tab93255%_ _%key93256%_ _%value93257%_)))
    (define __symbolic-table-set!
      (lambda (_%tab93206%_ _%key93207%_ _%value93208%_)
        (let ((_%table93211%_ (&raw-table-table _%tab93206%_))
              (_%seed93212%_ (&raw-table-seed _%tab93206%_)))
          (let* ((_%h93214%_
                  (fxxor (symbolic-hash _%key93207%_) _%seed93212%_))
                 (_%size93217%_ (vector-length _%table93211%_))
                 (_%entries93220%_ (##fxquotient _%size93217%_ '2))
                 (_%start93223%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93214%_ _%entries93220%_)
                   '1)))
            (let _%loop93227%_ ((_%probe93230%_ _%start93223%_)
                                (_%i93232%_ '1)
                                (_%deleted93234%_ '#f))
              (let ((_%k93237%_ (vector-ref _%table93211%_ _%probe93230%_)))
                (if (eq? _%k93237%_ (macro-unused-obj))
                    (if _%deleted93234%_
                        (begin
                          (vector-set!
                           _%table93211%_
                           _%deleted93234%_
                           _%key93207%_)
                          (vector-set!
                           _%table93211%_
                           (##fx+ _%deleted93234%_ '1)
                           _%value93208%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93206%_
                              (##fx+ (&raw-table-count _%tab93206%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93211%_
                           _%probe93230%_
                           _%key93207%_)
                          (vector-set!
                           _%table93211%_
                           (##fx+ _%probe93230%_ '1)
                           _%value93208%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93206%_
                              (##fx- (&raw-table-free _%tab93206%_) '1))
                             (&raw-table-count-set!
                              _%tab93206%_
                              (##fx+ (&raw-table-count _%tab93206%_) '1))))))
                    (if (eq? _%k93237%_ (macro-deleted-obj))
                        (_%loop93227%_
                         (let ((_%next-probe93244%_
                                (fx+ _%start93223%_
                                     _%i93232%_
                                     (fx* _%i93232%_ _%i93232%_))))
                           (##fxmodulo _%next-probe93244%_ _%size93217%_))
                         (##fx+ _%i93232%_ '1)
                         (let ((_%$e93247%_ _%deleted93234%_))
                           (if _%$e93247%_ _%$e93247%_ _%probe93230%_)))
                        (if (eq? _%key93207%_ _%k93237%_)
                            (let ()
                              (vector-set!
                               _%table93211%_
                               _%probe93230%_
                               _%key93207%_)
                              (vector-set!
                               _%table93211%_
                               (##fx+ _%probe93230%_ '1)
                               _%value93208%_))
                            (_%loop93227%_
                             (let ((_%next-probe93252%_
                                    (fx+ _%start93223%_
                                         _%i93232%_
                                         (fx* _%i93232%_ _%i93232%_))))
                               (##fxmodulo _%next-probe93252%_ _%size93217%_))
                             (##fx+ _%i93232%_ '1)
                             _%deleted93234%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab93201%_
               _%key93202%_
               _%symbolic-table-update!93203%_
               _%default93204%_)
        (if (##fx< (&raw-table-free _%tab93201%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93201%_))
                    '4))
            (__raw-table-rehash! _%tab93201%_)
            '#!void)
        (__symbolic-table-update!
         _%tab93201%_
         _%key93202%_
         _%symbolic-table-update!93203%_
         _%default93204%_)))
    (define __symbolic-table-update!
      (lambda (_%tab93151%_
               _%key93152%_
               _%symbolic-table-update!93153%_
               _%default93154%_)
        (let ((_%table93157%_ (&raw-table-table _%tab93151%_))
              (_%seed93158%_ (&raw-table-seed _%tab93151%_)))
          (let* ((_%h93160%_
                  (fxxor (symbolic-hash _%key93152%_) _%seed93158%_))
                 (_%size93163%_ (vector-length _%table93157%_))
                 (_%entries93166%_ (##fxquotient _%size93163%_ '2))
                 (_%start93169%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93160%_ _%entries93166%_)
                   '1)))
            (let _%loop93173%_ ((_%probe93176%_ _%start93169%_)
                                (_%i93178%_ '1)
                                (_%deleted93180%_ '#f))
              (let ((_%k93183%_ (vector-ref _%table93157%_ _%probe93176%_)))
                (if (eq? _%k93183%_ (macro-unused-obj))
                    (if _%deleted93180%_
                        (begin
                          (vector-set!
                           _%table93157%_
                           _%deleted93180%_
                           _%key93152%_)
                          (vector-set!
                           _%table93157%_
                           (##fx+ _%deleted93180%_ '1)
                           (_%symbolic-table-update!93153%_ _%default93154%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93151%_
                              (##fx+ (&raw-table-count _%tab93151%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93157%_
                           _%probe93176%_
                           _%key93152%_)
                          (vector-set!
                           _%table93157%_
                           (##fx+ _%probe93176%_ '1)
                           (_%symbolic-table-update!93153%_ _%default93154%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93151%_
                              (##fx- (&raw-table-free _%tab93151%_) '1))
                             (&raw-table-count-set!
                              _%tab93151%_
                              (##fx+ (&raw-table-count _%tab93151%_) '1))))))
                    (if (eq? _%k93183%_ (macro-deleted-obj))
                        (_%loop93173%_
                         (let ((_%next-probe93190%_
                                (fx+ _%start93169%_
                                     _%i93178%_
                                     (fx* _%i93178%_ _%i93178%_))))
                           (##fxmodulo _%next-probe93190%_ _%size93163%_))
                         (##fx+ _%i93178%_ '1)
                         (let ((_%$e93193%_ _%deleted93180%_))
                           (if _%$e93193%_ _%$e93193%_ _%probe93176%_)))
                        (if (eq? _%key93152%_ _%k93183%_)
                            (let ()
                              (vector-set!
                               _%table93157%_
                               _%probe93176%_
                               _%key93152%_)
                              (vector-set!
                               _%table93157%_
                               (##fx+ _%probe93176%_ '1)
                               (_%symbolic-table-update!93153%_
                                (vector-ref
                                 _%table93157%_
                                 (##fx+ _%probe93176%_ '1)))))
                            (_%loop93173%_
                             (let ((_%next-probe93198%_
                                    (fx+ _%start93169%_
                                         _%i93178%_
                                         (fx* _%i93178%_ _%i93178%_))))
                               (##fxmodulo _%next-probe93198%_ _%size93163%_))
                             (##fx+ _%i93178%_ '1)
                             _%deleted93180%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab93106%_ _%key93108%_)
        (let ((_%table93111%_ (&raw-table-table _%tab93106%_))
              (_%seed93113%_ (&raw-table-seed _%tab93106%_)))
          (let* ((_%h93116%_
                  (fxxor (symbolic-hash _%key93108%_) _%seed93113%_))
                 (_%size93119%_ (vector-length _%table93111%_))
                 (_%entries93122%_ (##fxquotient _%size93119%_ '2))
                 (_%start93125%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93116%_ _%entries93122%_)
                   '1)))
            (let _%loop93129%_ ((_%probe93132%_ _%start93125%_)
                                (_%i93134%_ '1))
              (let ((_%k93137%_ (vector-ref _%table93111%_ _%probe93132%_)))
                (if (eq? _%k93137%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93137%_ (macro-deleted-obj))
                        (_%loop93129%_
                         (let ((_%next-probe93142%_
                                (fx+ _%start93125%_
                                     _%i93134%_
                                     (fx* _%i93134%_ _%i93134%_))))
                           (##fxmodulo _%next-probe93142%_ _%size93119%_))
                         (##fx+ _%i93134%_ '1))
                        (if (eq? _%key93108%_ _%k93137%_)
                            (let ()
                              (vector-set!
                               _%table93111%_
                               _%probe93132%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93111%_
                               (##fx+ _%probe93132%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93106%_
                                  (##fx- (&raw-table-count _%tab93106%_)
                                         '1)))))
                            (_%loop93129%_
                             (let ((_%next-probe93148%_
                                    (fx+ _%start93125%_
                                         _%i93134%_
                                         (fx* _%i93134%_ _%i93134%_))))
                               (##fxmodulo _%next-probe93148%_ _%size93119%_))
                             (##fx+ _%i93134%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint93087%_ _%seed93089%_)
        (make-raw-table__%
         _%size-hint93087%_
         string-hash
         ##string=?
         _%seed93089%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint93095%_ '#f) (_%seed93097%_ '0))
          (make-string-table__% _%size-hint93095%_ _%seed93097%_))))
    (define make-string-table__1
      (lambda (_%size-hint93099%_)
        (let ((_%seed93101%_ '0))
          (make-string-table__% _%size-hint93099%_ _%seed93101%_))))
    (define make-string-table
      (lambda _g94106_
        (let ((_g94105_ (##length _g94106_)))
          (cond ((##fx= _g94105_ 0) (apply make-string-table__0 _g94106_))
                ((##fx= _g94105_ 1) (apply make-string-table__1 _g94106_))
                ((##fx= _g94105_ 2) (apply make-string-table__% _g94106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g94106_))))))
    (define string-table-ref
      (lambda (_%tab93040%_ _%key93041%_ _%default93042%_)
        (let ((_%table93044%_ (&raw-table-table _%tab93040%_))
              (_%seed93045%_ (&raw-table-seed _%tab93040%_)))
          (let* ((_%h93047%_
                  (fxxor (##string=?-hash _%key93041%_) _%seed93045%_))
                 (_%size93050%_ (vector-length _%table93044%_))
                 (_%entries93053%_ (##fxquotient _%size93050%_ '2))
                 (_%start93056%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93047%_ _%entries93053%_)
                   '1)))
            (let _%loop93060%_ ((_%probe93063%_ _%start93056%_)
                                (_%i93065%_ '1)
                                (_%deleted93067%_ '#f))
              (let ((_%k93070%_ (vector-ref _%table93044%_ _%probe93063%_)))
                (if (eq? _%k93070%_ (macro-unused-obj))
                    _%default93042%_
                    (if (eq? _%k93070%_ (macro-deleted-obj))
                        (_%loop93060%_
                         (let ((_%next-probe93075%_
                                (fx+ _%start93056%_
                                     _%i93065%_
                                     (fx* _%i93065%_ _%i93065%_))))
                           (##fxmodulo _%next-probe93075%_ _%size93050%_))
                         (##fx+ _%i93065%_ '1)
                         (let ((_%$e93078%_ _%deleted93067%_))
                           (if _%$e93078%_ _%$e93078%_ _%probe93063%_)))
                        (if (##string=? _%key93041%_ _%k93070%_)
                            (vector-ref
                             _%table93044%_
                             (##fx+ _%probe93063%_ '1))
                            (_%loop93060%_
                             (let ((_%next-probe93083%_
                                    (fx+ _%start93056%_
                                         _%i93065%_
                                         (fx* _%i93065%_ _%i93065%_))))
                               (##fxmodulo _%next-probe93083%_ _%size93050%_))
                             (##fx+ _%i93065%_ '1)
                             _%deleted93067%_))))))))))
    (define string-table-set!
      (lambda (_%tab93036%_ _%key93037%_ _%value93038%_)
        (if (##fx< (&raw-table-free _%tab93036%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93036%_))
                    '4))
            (__raw-table-rehash! _%tab93036%_)
            '#!void)
        (__string-table-set! _%tab93036%_ _%key93037%_ _%value93038%_)))
    (define __string-table-set!
      (lambda (_%tab92987%_ _%key92988%_ _%value92989%_)
        (let ((_%table92992%_ (&raw-table-table _%tab92987%_))
              (_%seed92993%_ (&raw-table-seed _%tab92987%_)))
          (let* ((_%h92995%_
                  (fxxor (##string=?-hash _%key92988%_) _%seed92993%_))
                 (_%size92998%_ (vector-length _%table92992%_))
                 (_%entries93001%_ (##fxquotient _%size92998%_ '2))
                 (_%start93004%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92995%_ _%entries93001%_)
                   '1)))
            (let _%loop93008%_ ((_%probe93011%_ _%start93004%_)
                                (_%i93013%_ '1)
                                (_%deleted93015%_ '#f))
              (let ((_%k93018%_ (vector-ref _%table92992%_ _%probe93011%_)))
                (if (eq? _%k93018%_ (macro-unused-obj))
                    (if _%deleted93015%_
                        (begin
                          (vector-set!
                           _%table92992%_
                           _%deleted93015%_
                           _%key92988%_)
                          (vector-set!
                           _%table92992%_
                           (##fx+ _%deleted93015%_ '1)
                           _%value92989%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92987%_
                              (##fx+ (&raw-table-count _%tab92987%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92992%_
                           _%probe93011%_
                           _%key92988%_)
                          (vector-set!
                           _%table92992%_
                           (##fx+ _%probe93011%_ '1)
                           _%value92989%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92987%_
                              (##fx- (&raw-table-free _%tab92987%_) '1))
                             (&raw-table-count-set!
                              _%tab92987%_
                              (##fx+ (&raw-table-count _%tab92987%_) '1))))))
                    (if (eq? _%k93018%_ (macro-deleted-obj))
                        (_%loop93008%_
                         (let ((_%next-probe93025%_
                                (fx+ _%start93004%_
                                     _%i93013%_
                                     (fx* _%i93013%_ _%i93013%_))))
                           (##fxmodulo _%next-probe93025%_ _%size92998%_))
                         (##fx+ _%i93013%_ '1)
                         (let ((_%$e93028%_ _%deleted93015%_))
                           (if _%$e93028%_ _%$e93028%_ _%probe93011%_)))
                        (if (##string=? _%key92988%_ _%k93018%_)
                            (let ()
                              (vector-set!
                               _%table92992%_
                               _%probe93011%_
                               _%key92988%_)
                              (vector-set!
                               _%table92992%_
                               (##fx+ _%probe93011%_ '1)
                               _%value92989%_))
                            (_%loop93008%_
                             (let ((_%next-probe93033%_
                                    (fx+ _%start93004%_
                                         _%i93013%_
                                         (fx* _%i93013%_ _%i93013%_))))
                               (##fxmodulo _%next-probe93033%_ _%size92998%_))
                             (##fx+ _%i93013%_ '1)
                             _%deleted93015%_))))))))))
    (define string-table-update!
      (lambda (_%tab92982%_
               _%key92983%_
               _%string-table-update!92984%_
               _%default92985%_)
        (if (##fx< (&raw-table-free _%tab92982%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92982%_))
                    '4))
            (__raw-table-rehash! _%tab92982%_)
            '#!void)
        (__string-table-update!
         _%tab92982%_
         _%key92983%_
         _%string-table-update!92984%_
         _%default92985%_)))
    (define __string-table-update!
      (lambda (_%tab92932%_
               _%key92933%_
               _%string-table-update!92934%_
               _%default92935%_)
        (let ((_%table92938%_ (&raw-table-table _%tab92932%_))
              (_%seed92939%_ (&raw-table-seed _%tab92932%_)))
          (let* ((_%h92941%_
                  (fxxor (##string=?-hash _%key92933%_) _%seed92939%_))
                 (_%size92944%_ (vector-length _%table92938%_))
                 (_%entries92947%_ (##fxquotient _%size92944%_ '2))
                 (_%start92950%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92941%_ _%entries92947%_)
                   '1)))
            (let _%loop92954%_ ((_%probe92957%_ _%start92950%_)
                                (_%i92959%_ '1)
                                (_%deleted92961%_ '#f))
              (let ((_%k92964%_ (vector-ref _%table92938%_ _%probe92957%_)))
                (if (eq? _%k92964%_ (macro-unused-obj))
                    (if _%deleted92961%_
                        (begin
                          (vector-set!
                           _%table92938%_
                           _%deleted92961%_
                           _%key92933%_)
                          (vector-set!
                           _%table92938%_
                           (##fx+ _%deleted92961%_ '1)
                           (_%string-table-update!92934%_ _%default92935%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92932%_
                              (##fx+ (&raw-table-count _%tab92932%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92938%_
                           _%probe92957%_
                           _%key92933%_)
                          (vector-set!
                           _%table92938%_
                           (##fx+ _%probe92957%_ '1)
                           (_%string-table-update!92934%_ _%default92935%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92932%_
                              (##fx- (&raw-table-free _%tab92932%_) '1))
                             (&raw-table-count-set!
                              _%tab92932%_
                              (##fx+ (&raw-table-count _%tab92932%_) '1))))))
                    (if (eq? _%k92964%_ (macro-deleted-obj))
                        (_%loop92954%_
                         (let ((_%next-probe92971%_
                                (fx+ _%start92950%_
                                     _%i92959%_
                                     (fx* _%i92959%_ _%i92959%_))))
                           (##fxmodulo _%next-probe92971%_ _%size92944%_))
                         (##fx+ _%i92959%_ '1)
                         (let ((_%$e92974%_ _%deleted92961%_))
                           (if _%$e92974%_ _%$e92974%_ _%probe92957%_)))
                        (if (##string=? _%key92933%_ _%k92964%_)
                            (let ()
                              (vector-set!
                               _%table92938%_
                               _%probe92957%_
                               _%key92933%_)
                              (vector-set!
                               _%table92938%_
                               (##fx+ _%probe92957%_ '1)
                               (_%string-table-update!92934%_
                                (vector-ref
                                 _%table92938%_
                                 (##fx+ _%probe92957%_ '1)))))
                            (_%loop92954%_
                             (let ((_%next-probe92979%_
                                    (fx+ _%start92950%_
                                         _%i92959%_
                                         (fx* _%i92959%_ _%i92959%_))))
                               (##fxmodulo _%next-probe92979%_ _%size92944%_))
                             (##fx+ _%i92959%_ '1)
                             _%deleted92961%_))))))))))
    (define string-table-delete!
      (lambda (_%tab92887%_ _%key92889%_)
        (let ((_%table92892%_ (&raw-table-table _%tab92887%_))
              (_%seed92894%_ (&raw-table-seed _%tab92887%_)))
          (let* ((_%h92897%_
                  (fxxor (##string=?-hash _%key92889%_) _%seed92894%_))
                 (_%size92900%_ (vector-length _%table92892%_))
                 (_%entries92903%_ (##fxquotient _%size92900%_ '2))
                 (_%start92906%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92897%_ _%entries92903%_)
                   '1)))
            (let _%loop92910%_ ((_%probe92913%_ _%start92906%_)
                                (_%i92915%_ '1))
              (let ((_%k92918%_ (vector-ref _%table92892%_ _%probe92913%_)))
                (if (eq? _%k92918%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92918%_ (macro-deleted-obj))
                        (_%loop92910%_
                         (let ((_%next-probe92923%_
                                (fx+ _%start92906%_
                                     _%i92915%_
                                     (fx* _%i92915%_ _%i92915%_))))
                           (##fxmodulo _%next-probe92923%_ _%size92900%_))
                         (##fx+ _%i92915%_ '1))
                        (if (##string=? _%key92889%_ _%k92918%_)
                            (let ()
                              (vector-set!
                               _%table92892%_
                               _%probe92913%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92892%_
                               (##fx+ _%probe92913%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92887%_
                                  (##fx- (&raw-table-count _%tab92887%_)
                                         '1)))))
                            (_%loop92910%_
                             (let ((_%next-probe92929%_
                                    (fx+ _%start92906%_
                                         _%i92915%_
                                         (fx* _%i92915%_ _%i92915%_))))
                               (##fxmodulo _%next-probe92929%_ _%size92900%_))
                             (##fx+ _%i92915%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint92868%_ _%seed92870%_)
        (make-raw-table__%
         _%size-hint92868%_
         immediate-hash
         eq?
         _%seed92870%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint92876%_ '#f) (_%seed92878%_ '0))
          (make-immediate-table__% _%size-hint92876%_ _%seed92878%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint92880%_)
        (let ((_%seed92882%_ '0))
          (make-immediate-table__% _%size-hint92880%_ _%seed92882%_))))
    (define make-immediate-table
      (lambda _g94108_
        (let ((_g94107_ (##length _g94108_)))
          (cond ((##fx= _g94107_ 0) (apply make-immediate-table__0 _g94108_))
                ((##fx= _g94107_ 1) (apply make-immediate-table__1 _g94108_))
                ((##fx= _g94107_ 2) (apply make-immediate-table__% _g94108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g94108_))))))
    (define immediate-table-ref
      (lambda (_%tab92821%_ _%key92822%_ _%default92823%_)
        (let ((_%table92825%_ (&raw-table-table _%tab92821%_))
              (_%seed92826%_ (&raw-table-seed _%tab92821%_)))
          (let* ((_%h92828%_
                  (fxxor (immediate-hash _%key92822%_) _%seed92826%_))
                 (_%size92831%_ (vector-length _%table92825%_))
                 (_%entries92834%_ (##fxquotient _%size92831%_ '2))
                 (_%start92837%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92828%_ _%entries92834%_)
                   '1)))
            (let _%loop92841%_ ((_%probe92844%_ _%start92837%_)
                                (_%i92846%_ '1)
                                (_%deleted92848%_ '#f))
              (let ((_%k92851%_ (vector-ref _%table92825%_ _%probe92844%_)))
                (if (eq? _%k92851%_ (macro-unused-obj))
                    _%default92823%_
                    (if (eq? _%k92851%_ (macro-deleted-obj))
                        (_%loop92841%_
                         (let ((_%next-probe92856%_
                                (fx+ _%start92837%_
                                     _%i92846%_
                                     (fx* _%i92846%_ _%i92846%_))))
                           (##fxmodulo _%next-probe92856%_ _%size92831%_))
                         (##fx+ _%i92846%_ '1)
                         (let ((_%$e92859%_ _%deleted92848%_))
                           (if _%$e92859%_ _%$e92859%_ _%probe92844%_)))
                        (if (eq? _%key92822%_ _%k92851%_)
                            (vector-ref
                             _%table92825%_
                             (##fx+ _%probe92844%_ '1))
                            (_%loop92841%_
                             (let ((_%next-probe92864%_
                                    (fx+ _%start92837%_
                                         _%i92846%_
                                         (fx* _%i92846%_ _%i92846%_))))
                               (##fxmodulo _%next-probe92864%_ _%size92831%_))
                             (##fx+ _%i92846%_ '1)
                             _%deleted92848%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab92817%_ _%key92818%_ _%value92819%_)
        (if (##fx< (&raw-table-free _%tab92817%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92817%_))
                    '4))
            (__raw-table-rehash! _%tab92817%_)
            '#!void)
        (__immediate-table-set! _%tab92817%_ _%key92818%_ _%value92819%_)))
    (define __immediate-table-set!
      (lambda (_%tab92768%_ _%key92769%_ _%value92770%_)
        (let ((_%table92773%_ (&raw-table-table _%tab92768%_))
              (_%seed92774%_ (&raw-table-seed _%tab92768%_)))
          (let* ((_%h92776%_
                  (fxxor (immediate-hash _%key92769%_) _%seed92774%_))
                 (_%size92779%_ (vector-length _%table92773%_))
                 (_%entries92782%_ (##fxquotient _%size92779%_ '2))
                 (_%start92785%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92776%_ _%entries92782%_)
                   '1)))
            (let _%loop92789%_ ((_%probe92792%_ _%start92785%_)
                                (_%i92794%_ '1)
                                (_%deleted92796%_ '#f))
              (let ((_%k92799%_ (vector-ref _%table92773%_ _%probe92792%_)))
                (if (eq? _%k92799%_ (macro-unused-obj))
                    (if _%deleted92796%_
                        (begin
                          (vector-set!
                           _%table92773%_
                           _%deleted92796%_
                           _%key92769%_)
                          (vector-set!
                           _%table92773%_
                           (##fx+ _%deleted92796%_ '1)
                           _%value92770%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92768%_
                              (##fx+ (&raw-table-count _%tab92768%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92773%_
                           _%probe92792%_
                           _%key92769%_)
                          (vector-set!
                           _%table92773%_
                           (##fx+ _%probe92792%_ '1)
                           _%value92770%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92768%_
                              (##fx- (&raw-table-free _%tab92768%_) '1))
                             (&raw-table-count-set!
                              _%tab92768%_
                              (##fx+ (&raw-table-count _%tab92768%_) '1))))))
                    (if (eq? _%k92799%_ (macro-deleted-obj))
                        (_%loop92789%_
                         (let ((_%next-probe92806%_
                                (fx+ _%start92785%_
                                     _%i92794%_
                                     (fx* _%i92794%_ _%i92794%_))))
                           (##fxmodulo _%next-probe92806%_ _%size92779%_))
                         (##fx+ _%i92794%_ '1)
                         (let ((_%$e92809%_ _%deleted92796%_))
                           (if _%$e92809%_ _%$e92809%_ _%probe92792%_)))
                        (if (eq? _%key92769%_ _%k92799%_)
                            (let ()
                              (vector-set!
                               _%table92773%_
                               _%probe92792%_
                               _%key92769%_)
                              (vector-set!
                               _%table92773%_
                               (##fx+ _%probe92792%_ '1)
                               _%value92770%_))
                            (_%loop92789%_
                             (let ((_%next-probe92814%_
                                    (fx+ _%start92785%_
                                         _%i92794%_
                                         (fx* _%i92794%_ _%i92794%_))))
                               (##fxmodulo _%next-probe92814%_ _%size92779%_))
                             (##fx+ _%i92794%_ '1)
                             _%deleted92796%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab92763%_
               _%key92764%_
               _%immediate-table-update!92765%_
               _%default92766%_)
        (if (##fx< (&raw-table-free _%tab92763%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92763%_))
                    '4))
            (__raw-table-rehash! _%tab92763%_)
            '#!void)
        (__immediate-table-update!
         _%tab92763%_
         _%key92764%_
         _%immediate-table-update!92765%_
         _%default92766%_)))
    (define __immediate-table-update!
      (lambda (_%tab92713%_
               _%key92714%_
               _%immediate-table-update!92715%_
               _%default92716%_)
        (let ((_%table92719%_ (&raw-table-table _%tab92713%_))
              (_%seed92720%_ (&raw-table-seed _%tab92713%_)))
          (let* ((_%h92722%_
                  (fxxor (immediate-hash _%key92714%_) _%seed92720%_))
                 (_%size92725%_ (vector-length _%table92719%_))
                 (_%entries92728%_ (##fxquotient _%size92725%_ '2))
                 (_%start92731%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92722%_ _%entries92728%_)
                   '1)))
            (let _%loop92735%_ ((_%probe92738%_ _%start92731%_)
                                (_%i92740%_ '1)
                                (_%deleted92742%_ '#f))
              (let ((_%k92745%_ (vector-ref _%table92719%_ _%probe92738%_)))
                (if (eq? _%k92745%_ (macro-unused-obj))
                    (if _%deleted92742%_
                        (begin
                          (vector-set!
                           _%table92719%_
                           _%deleted92742%_
                           _%key92714%_)
                          (vector-set!
                           _%table92719%_
                           (##fx+ _%deleted92742%_ '1)
                           (_%immediate-table-update!92715%_ _%default92716%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92713%_
                              (##fx+ (&raw-table-count _%tab92713%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92719%_
                           _%probe92738%_
                           _%key92714%_)
                          (vector-set!
                           _%table92719%_
                           (##fx+ _%probe92738%_ '1)
                           (_%immediate-table-update!92715%_ _%default92716%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92713%_
                              (##fx- (&raw-table-free _%tab92713%_) '1))
                             (&raw-table-count-set!
                              _%tab92713%_
                              (##fx+ (&raw-table-count _%tab92713%_) '1))))))
                    (if (eq? _%k92745%_ (macro-deleted-obj))
                        (_%loop92735%_
                         (let ((_%next-probe92752%_
                                (fx+ _%start92731%_
                                     _%i92740%_
                                     (fx* _%i92740%_ _%i92740%_))))
                           (##fxmodulo _%next-probe92752%_ _%size92725%_))
                         (##fx+ _%i92740%_ '1)
                         (let ((_%$e92755%_ _%deleted92742%_))
                           (if _%$e92755%_ _%$e92755%_ _%probe92738%_)))
                        (if (eq? _%key92714%_ _%k92745%_)
                            (let ()
                              (vector-set!
                               _%table92719%_
                               _%probe92738%_
                               _%key92714%_)
                              (vector-set!
                               _%table92719%_
                               (##fx+ _%probe92738%_ '1)
                               (_%immediate-table-update!92715%_
                                (vector-ref
                                 _%table92719%_
                                 (##fx+ _%probe92738%_ '1)))))
                            (_%loop92735%_
                             (let ((_%next-probe92760%_
                                    (fx+ _%start92731%_
                                         _%i92740%_
                                         (fx* _%i92740%_ _%i92740%_))))
                               (##fxmodulo _%next-probe92760%_ _%size92725%_))
                             (##fx+ _%i92740%_ '1)
                             _%deleted92742%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab92668%_ _%key92670%_)
        (let ((_%table92673%_ (&raw-table-table _%tab92668%_))
              (_%seed92675%_ (&raw-table-seed _%tab92668%_)))
          (let* ((_%h92678%_
                  (fxxor (immediate-hash _%key92670%_) _%seed92675%_))
                 (_%size92681%_ (vector-length _%table92673%_))
                 (_%entries92684%_ (##fxquotient _%size92681%_ '2))
                 (_%start92687%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92678%_ _%entries92684%_)
                   '1)))
            (let _%loop92691%_ ((_%probe92694%_ _%start92687%_)
                                (_%i92696%_ '1))
              (let ((_%k92699%_ (vector-ref _%table92673%_ _%probe92694%_)))
                (if (eq? _%k92699%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92699%_ (macro-deleted-obj))
                        (_%loop92691%_
                         (let ((_%next-probe92704%_
                                (fx+ _%start92687%_
                                     _%i92696%_
                                     (fx* _%i92696%_ _%i92696%_))))
                           (##fxmodulo _%next-probe92704%_ _%size92681%_))
                         (##fx+ _%i92696%_ '1))
                        (if (eq? _%key92670%_ _%k92699%_)
                            (let ()
                              (vector-set!
                               _%table92673%_
                               _%probe92694%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92673%_
                               (##fx+ _%probe92694%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92668%_
                                  (##fx- (&raw-table-count _%tab92668%_)
                                         '1)))))
                            (_%loop92691%_
                             (let ((_%next-probe92710%_
                                    (fx+ _%start92687%_
                                         _%i92696%_
                                         (fx* _%i92696%_ _%i92696%_))))
                               (##fxmodulo _%next-probe92710%_ _%size92681%_))
                             (##fx+ _%i92696%_ '1)))))))))))
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
      (lambda (_%tab92666%_)
        (##unchecked-structure-ref
         _%tab92666%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab92664%_)
        (##unchecked-structure-ref
         _%tab92664%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab92661%_ _%val92662%_)
        (##unchecked-structure-set!
         _%tab92661%_
         _%val92662%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab92658%_ _%val92659%_)
        (##unchecked-structure-set!
         _%tab92658%_
         _%val92659%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint92634%_ _%klass92635%_ _%flags92636%_)
        (let ((_%gcht92638%_
               (__gc-table-new
                (if (fixnum? _%size-hint92634%_) _%size-hint92634%_ '16)
                _%flags92636%_)))
          (##structure _%klass92635%_ _%gcht92638%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint92643%_)
        (let* ((_%klass92645%_ __gc-table::t) (_%flags92647%_ '0))
          (make-gc-table__%
           _%size-hint92643%_
           _%klass92645%_
           _%flags92647%_))))
    (define make-gc-table__1
      (lambda (_%size-hint92649%_ _%klass92650%_)
        (let ((_%flags92652%_ '0))
          (make-gc-table__%
           _%size-hint92649%_
           _%klass92650%_
           _%flags92652%_))))
    (define make-gc-table
      (lambda _g94110_
        (let ((_g94109_ (##length _g94110_)))
          (cond ((##fx= _g94109_ 1) (apply make-gc-table__0 _g94110_))
                ((##fx= _g94109_ 2) (apply make-gc-table__1 _g94110_))
                ((##fx= _g94109_ 3) (apply make-gc-table__% _g94110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g94110_))))))
    (define __gc-table-immediate
      (lambda (_%tab92625%_)
        (let ((_%$e92627%_ (&gc-table-immediate _%tab92625%_)))
          (if _%$e92627%_
              _%$e92627%_
              (let ((_%immediate92631%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab92625%_ _%immediate92631%_)
                _%immediate92631%_)))))
    (define __gc-table-new
      (lambda (_%size92615%_ _%flags92616%_)
        (let* ((_%flags92618%_
                (##fxand _%flags92616%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags92620%_
                (fxior _%flags92618%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht92622%_
                (##gc-hash-table-allocate
                 _%size92615%_
                 _%flags92620%_
                 __gc-table-loads)))
          _%gcht92622%_)))
    (define __gc-table-e
      (lambda (_%tab92610%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht92613%_ (&gc-table-gcht _%tab92610%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht92613%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht92613%_
              (begin
                (__gc-table-rehash! _%tab92610%_)
                (&gc-table-gcht _%tab92610%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab92601%_)
        (let* ((_%old-table92603%_ (&gc-table-gcht _%tab92601%_))
               (_%new-table92605%_
                (##gc-hash-table-resize! _%old-table92603%_ __gc-table-loads))
               (_%gcht92607%_
                (##gc-hash-table-rehash!
                 _%old-table92603%_
                 _%new-table92605%_)))
          (&gc-table-gcht-set! _%tab92601%_ _%gcht92607%_))))
    (define gc-table-ref
      (lambda (_%tab92585%_ _%key92586%_ _%default92587%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key92586%_)
            (let* ((_%gcht92591%_ (__gc-table-e _%tab92585%_))
                   (_%value92593%_
                    (##gc-hash-table-ref _%gcht92591%_ _%key92586%_)))
              (if (eq? _%value92593%_ (macro-unused-obj))
                  _%default92587%_
                  _%value92593%_))
            (let ((_%$e92595%_ (&gc-table-immediate _%tab92585%_)))
              (if _%$e92595%_
                  ((lambda (_%immediate92598%_)
                     (immediate-table-ref
                      _%immediate92598%_
                      _%key92586%_
                      _%default92587%_))
                   _%$e92595%_)
                  _%default92587%_)))))
    (define gc-table-set!
      (lambda (_%tab92578%_ _%key92579%_ _%value92580%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key92579%_)
            (let ((_%gcht92583%_ (__gc-table-e _%tab92578%_)))
              (if (##gc-hash-table-set!
                   _%gcht92583%_
                   _%key92579%_
                   _%value92580%_)
                  (begin
                    (__gc-table-rehash! _%tab92578%_)
                    (gc-table-set! _%tab92578%_ _%key92579%_ _%value92580%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab92578%_)
             _%key92579%_
             _%value92580%_))))
    (define gc-table-update!
      (lambda (_%tab92571%_ _%key92572%_ _%update92573%_ _%default92574%_)
        (if (##mem-allocated? _%key92572%_)
            (let ((_%value92576%_
                   (gc-table-ref _%tab92571%_ _%key92572%_ _%default92574%_)))
              (gc-table-set!
               _%tab92571%_
               _%key92572%_
               (_%update92573%_ _%value92576%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab92571%_)
             _%key92572%_
             _%update92573%_
             _%default92574%_))))
    (define gc-table-delete!
      (lambda (_%tab92559%_ _%key92560%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key92560%_)
            (let ((_%gcht92564%_ (__gc-table-e _%tab92559%_)))
              (if (##gc-hash-table-set!
                   _%gcht92564%_
                   _%key92560%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab92559%_)
                    (gc-table-delete! _%tab92559%_ _%key92560%_))
                  '#!void))
            (let ((_%$e92566%_ (&gc-table-immediate _%tab92559%_)))
              (if _%$e92566%_
                  ((lambda (_%immediate92569%_)
                     (immediate-table-delete! _%immediate92569%_ _%key92560%_))
                   _%$e92566%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab92540%_ _%proc92541%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht92544%_ (__gc-table-e _%tab92540%_)))
            (let _%loop92546%_ ((_%i92548%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i92548%_ (##vector-length _%gcht92544%_))
                  (let ((_%key92550%_ (##vector-ref _%gcht92544%_ _%i92548%_)))
                    (if (if (eq? _%key92550%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92550%_ (macro-deleted-obj))))
                        (_%proc92541%_
                         _%key92550%_
                         (##vector-ref _%gcht92544%_ (##fx+ _%i92548%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop92546%_ (##fx+ _%i92548%_ '2))))
                  '#!void)))
          (let ((_%$e92554%_ (&gc-table-immediate _%tab92540%_)))
            (if _%$e92554%_
                ((lambda (_%immediate92557%_)
                   (raw-table-for-each _%immediate92557%_ _%proc92541%_))
                 _%$e92554%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab92528%_)
        (let* ((_%gcht92530%_ (__gc-table-e _%tab92528%_))
               (_%new-table92532%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht92530%_)
                 (macro-gc-hash-table-flags _%gcht92530%_)))
               (_%result92534%_
                (##structure
                 (##structure-type _%tab92528%_)
                 _%new-table92532%_
                 '#f)))
          (gc-table-for-each
           _%tab92528%_
           (lambda (_%k92537%_ _%v92538%_)
             (gc-table-set! _%result92534%_ _%k92537%_ _%v92538%_)))
          _%result92534%_)))
    (define gc-table-clear!
      (lambda (_%tab92521%_)
        (let* ((_%gcht92523%_ (__gc-table-e _%tab92521%_))
               (_%new-table92525%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht92523%_))))
          (&gc-table-gcht-set! _%tab92521%_ _%new-table92525%_)
          (&gc-table-immediate-set! _%tab92521%_ '#f))))
    (define gc-table-length
      (lambda (_%tab92513%_)
        (let ((_%gcht92515%_ (__gc-table-e _%tab92513%_)))
          (fx+ (macro-gc-hash-table-count _%gcht92515%_)
               (let ((_%$e92517%_ (&gc-table-immediate _%tab92513%_)))
                 (if _%$e92517%_ (&raw-table-count _%$e92517%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj92498%_)
        (declare (not interrupts-enabled))
        (let ((_%val92501%_ (gc-table-ref __object-eq-hash _%obj92498%_ '#f)))
          (if _%val92501%_
              _%val92501%_
              (let* ((_%mix92503%_ __object-eq-hash-next)
                     (_%ptr92505%_ (##type-cast _%obj92498%_ '0))
                     (_%h92507%_
                      (fxand (fxxor _%mix92503%_ _%ptr92505%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e92510%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e92510%_ _%$e92510%_ '0)))
                (gc-table-set! __object-eq-hash _%obj92498%_ _%h92507%_)
                _%h92507%_)))))))
