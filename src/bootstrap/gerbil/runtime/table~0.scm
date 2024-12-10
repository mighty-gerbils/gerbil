(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1733870072)
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
      (lambda (_%tab94033%_)
        (##unchecked-structure-ref
         _%tab94033%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab94031%_)
        (##unchecked-structure-ref
         _%tab94031%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab94029%_)
        (##unchecked-structure-ref
         _%tab94029%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab94027%_)
        (##unchecked-structure-ref
         _%tab94027%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab94025%_)
        (##unchecked-structure-ref
         _%tab94025%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab94023%_)
        (##unchecked-structure-ref
         _%tab94023%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab94020%_ _%val94021%_)
        (##unchecked-structure-set!
         _%tab94020%_
         _%val94021%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab94017%_ _%val94018%_)
        (##unchecked-structure-set!
         _%tab94017%_
         _%val94018%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab94014%_ _%val94015%_)
        (##unchecked-structure-set!
         _%tab94014%_
         _%val94015%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab94011%_ _%val94012%_)
        (##unchecked-structure-set!
         _%tab94011%_
         _%val94012%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab94008%_ _%val94009%_)
        (##unchecked-structure-set!
         _%tab94008%_
         _%val94009%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab94005%_ _%val94006%_)
        (##unchecked-structure-set!
         _%tab94005%_
         _%val94006%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint94003%_)
        (if (and (fixnum? _%size-hint94003%_) (##fx> _%size-hint94003%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint94003%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint93979%_ _%hash93980%_ _%test93981%_ _%seed93982%_)
        (let* ((_%size93984%_ (raw-table-size-hint->size _%size-hint93979%_))
               (_%table93986%_
                (##make-vector _%size93984%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table93986%_
           '0
           (##fxquotient _%size93984%_ '2)
           _%hash93980%_
           _%test93981%_
           _%seed93982%_))))
    (define make-raw-table__0
      (lambda (_%size-hint93992%_ _%hash93993%_ _%test93994%_)
        (let ((_%seed93996%_ '0))
          (make-raw-table__%
           _%size-hint93992%_
           _%hash93993%_
           _%test93994%_
           _%seed93996%_))))
    (define make-raw-table
      (lambda _g94035_
        (let ((_g94034_ (##length _g94035_)))
          (cond ((##fx= _g94034_ 3) (apply make-raw-table__0 _g94035_))
                ((##fx= _g94034_ 4) (apply make-raw-table__% _g94035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g94035_))))))
    (define raw-table-ref
      (lambda (_%tab93930%_ _%key93931%_ _%default93932%_)
        (let ((_%table93934%_ (&raw-table-table _%tab93930%_))
              (_%seed93935%_ (&raw-table-seed _%tab93930%_))
              (_%hash93936%_ (&raw-table-hash _%tab93930%_))
              (_%test93937%_ (&raw-table-test _%tab93930%_)))
          (let* ((_%h93939%_
                  (fxxor (_%hash93936%_ _%key93931%_) _%seed93935%_))
                 (_%size93942%_ (vector-length _%table93934%_))
                 (_%entries93945%_ (##fxquotient _%size93942%_ '2))
                 (_%start93948%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93939%_ _%entries93945%_)
                   '1)))
            (let _%loop93952%_ ((_%probe93955%_ _%start93948%_)
                                (_%i93957%_ '1)
                                (_%deleted93959%_ '#f))
              (let ((_%k93962%_ (vector-ref _%table93934%_ _%probe93955%_)))
                (if (eq? _%k93962%_ (macro-unused-obj))
                    _%default93932%_
                    (if (eq? _%k93962%_ (macro-deleted-obj))
                        (_%loop93952%_
                         (let ((_%next-probe93967%_
                                (fx+ _%start93948%_
                                     _%i93957%_
                                     (fx* _%i93957%_ _%i93957%_))))
                           (##fxmodulo _%next-probe93967%_ _%size93942%_))
                         (##fx+ _%i93957%_ '1)
                         (let ((_%$e93970%_ _%deleted93959%_))
                           (if _%$e93970%_ _%$e93970%_ _%probe93955%_)))
                        (if (_%test93937%_ _%key93931%_ _%k93962%_)
                            (vector-ref
                             _%table93934%_
                             (##fx+ _%probe93955%_ '1))
                            (_%loop93952%_
                             (let ((_%next-probe93975%_
                                    (fx+ _%start93948%_
                                         _%i93957%_
                                         (fx* _%i93957%_ _%i93957%_))))
                               (##fxmodulo _%next-probe93975%_ _%size93942%_))
                             (##fx+ _%i93957%_ '1)
                             _%deleted93959%_))))))))))
    (define raw-table-set!
      (lambda (_%tab93926%_ _%key93927%_ _%value93928%_)
        (if (##fx< (&raw-table-free _%tab93926%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93926%_))
                    '4))
            (__raw-table-rehash! _%tab93926%_)
            '#!void)
        (__raw-table-set! _%tab93926%_ _%key93927%_ _%value93928%_)))
    (define raw-table-update!
      (lambda (_%tab93921%_ _%key93922%_ _%update93923%_ _%default93924%_)
        (if (##fx< (&raw-table-free _%tab93921%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93921%_))
                    '4))
            (__raw-table-rehash! _%tab93921%_)
            '#!void)
        (__raw-table-update!
         _%tab93921%_
         _%key93922%_
         _%update93923%_
         _%default93924%_)))
    (define raw-table-delete!
      (lambda (_%tab93878%_ _%key93879%_)
        (let ((_%table93881%_ (&raw-table-table _%tab93878%_))
              (_%seed93882%_ (&raw-table-seed _%tab93878%_))
              (_%hash93883%_ (&raw-table-hash _%tab93878%_))
              (_%test93884%_ (&raw-table-test _%tab93878%_)))
          (let* ((_%h93886%_
                  (fxxor (_%hash93883%_ _%key93879%_) _%seed93882%_))
                 (_%size93889%_ (vector-length _%table93881%_))
                 (_%entries93892%_ (##fxquotient _%size93889%_ '2))
                 (_%start93895%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93886%_ _%entries93892%_)
                   '1)))
            (let _%loop93899%_ ((_%probe93902%_ _%start93895%_)
                                (_%i93904%_ '1))
              (let ((_%k93907%_ (vector-ref _%table93881%_ _%probe93902%_)))
                (if (eq? _%k93907%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93907%_ (macro-deleted-obj))
                        (_%loop93899%_
                         (let ((_%next-probe93912%_
                                (fx+ _%start93895%_
                                     _%i93904%_
                                     (fx* _%i93904%_ _%i93904%_))))
                           (##fxmodulo _%next-probe93912%_ _%size93889%_))
                         (##fx+ _%i93904%_ '1))
                        (if (_%test93884%_ _%key93879%_ _%k93907%_)
                            (let ()
                              (vector-set!
                               _%table93881%_
                               _%probe93902%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93881%_
                               (##fx+ _%probe93902%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93878%_
                                  (##fx- (&raw-table-count _%tab93878%_)
                                         '1)))))
                            (_%loop93899%_
                             (let ((_%next-probe93918%_
                                    (fx+ _%start93895%_
                                         _%i93904%_
                                         (fx* _%i93904%_ _%i93904%_))))
                               (##fxmodulo _%next-probe93918%_ _%size93889%_))
                             (##fx+ _%i93904%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab93862%_ _%proc93863%_)
        (let* ((_%table93865%_ (&raw-table-table _%tab93862%_))
               (_%size93867%_ (vector-length _%table93865%_)))
          (let _%loop93870%_ ((_%i93872%_ '0))
            (if (##fx< _%i93872%_ _%size93867%_)
                (begin
                  (let ((_%key93874%_ (vector-ref _%table93865%_ _%i93872%_)))
                    (if (if (eq? _%key93874%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key93874%_ (macro-deleted-obj))))
                        (let ((_%value93876%_
                               (vector-ref
                                _%table93865%_
                                (##fx+ _%i93872%_ '1))))
                          (_%proc93863%_ _%key93874%_ _%value93876%_))
                        '#!void))
                  (_%loop93870%_ (##fx+ _%i93872%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab93858%_)
        (let ((_%new-tab93860%_ (##structure-copy _%tab93858%_)))
          (&raw-table-table-set!
           _%new-tab93860%_
           (vector-copy (&raw-table-table _%tab93858%_)))
          _%new-tab93860%_)))
    (define raw-table-clear!
      (lambda (_%tab93856%_)
        (vector-fill! (&raw-table-table _%tab93856%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab93856%_ '0)
        (&raw-table-free-set!
         _%tab93856%_
         (##fxquotient (vector-length (&raw-table-table _%tab93856%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab93806%_ _%key93807%_ _%value93808%_)
        (let ((_%table93810%_ (&raw-table-table _%tab93806%_))
              (_%seed93811%_ (&raw-table-seed _%tab93806%_))
              (_%hash93812%_ (&raw-table-hash _%tab93806%_))
              (_%test93813%_ (&raw-table-test _%tab93806%_)))
          (let* ((_%h93815%_
                  (fxxor (_%hash93812%_ _%key93807%_) _%seed93811%_))
                 (_%size93818%_ (vector-length _%table93810%_))
                 (_%entries93821%_ (##fxquotient _%size93818%_ '2))
                 (_%start93824%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93815%_ _%entries93821%_)
                   '1)))
            (let _%loop93828%_ ((_%probe93831%_ _%start93824%_)
                                (_%i93833%_ '1)
                                (_%deleted93835%_ '#f))
              (let ((_%k93838%_ (vector-ref _%table93810%_ _%probe93831%_)))
                (if (eq? _%k93838%_ (macro-unused-obj))
                    (if _%deleted93835%_
                        (begin
                          (vector-set!
                           _%table93810%_
                           _%deleted93835%_
                           _%key93807%_)
                          (vector-set!
                           _%table93810%_
                           (##fx+ _%deleted93835%_ '1)
                           _%value93808%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93806%_
                              (##fx+ (&raw-table-count _%tab93806%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93810%_
                           _%probe93831%_
                           _%key93807%_)
                          (vector-set!
                           _%table93810%_
                           (##fx+ _%probe93831%_ '1)
                           _%value93808%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93806%_
                              (##fx- (&raw-table-free _%tab93806%_) '1))
                             (&raw-table-count-set!
                              _%tab93806%_
                              (##fx+ (&raw-table-count _%tab93806%_) '1))))))
                    (if (eq? _%k93838%_ (macro-deleted-obj))
                        (_%loop93828%_
                         (let ((_%next-probe93845%_
                                (fx+ _%start93824%_
                                     _%i93833%_
                                     (fx* _%i93833%_ _%i93833%_))))
                           (##fxmodulo _%next-probe93845%_ _%size93818%_))
                         (##fx+ _%i93833%_ '1)
                         (let ((_%$e93848%_ _%deleted93835%_))
                           (if _%$e93848%_ _%$e93848%_ _%probe93831%_)))
                        (if (_%test93813%_ _%key93807%_ _%k93838%_)
                            (let ()
                              (vector-set!
                               _%table93810%_
                               _%probe93831%_
                               _%key93807%_)
                              (vector-set!
                               _%table93810%_
                               (##fx+ _%probe93831%_ '1)
                               _%value93808%_))
                            (_%loop93828%_
                             (let ((_%next-probe93853%_
                                    (fx+ _%start93824%_
                                         _%i93833%_
                                         (fx* _%i93833%_ _%i93833%_))))
                               (##fxmodulo _%next-probe93853%_ _%size93818%_))
                             (##fx+ _%i93833%_ '1)
                             _%deleted93835%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab93755%_ _%key93756%_ _%update93757%_ _%default93758%_)
        (let ((_%table93760%_ (&raw-table-table _%tab93755%_))
              (_%seed93761%_ (&raw-table-seed _%tab93755%_))
              (_%hash93762%_ (&raw-table-hash _%tab93755%_))
              (_%test93763%_ (&raw-table-test _%tab93755%_)))
          (let* ((_%h93765%_
                  (fxxor (_%hash93762%_ _%key93756%_) _%seed93761%_))
                 (_%size93768%_ (vector-length _%table93760%_))
                 (_%entries93771%_ (##fxquotient _%size93768%_ '2))
                 (_%start93774%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93765%_ _%entries93771%_)
                   '1)))
            (let _%loop93778%_ ((_%probe93781%_ _%start93774%_)
                                (_%i93783%_ '1)
                                (_%deleted93785%_ '#f))
              (let ((_%k93788%_ (vector-ref _%table93760%_ _%probe93781%_)))
                (if (eq? _%k93788%_ (macro-unused-obj))
                    (if _%deleted93785%_
                        (begin
                          (vector-set!
                           _%table93760%_
                           _%deleted93785%_
                           _%key93756%_)
                          (vector-set!
                           _%table93760%_
                           (##fx+ _%deleted93785%_ '1)
                           (_%update93757%_ _%default93758%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93755%_
                              (##fx+ (&raw-table-count _%tab93755%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93760%_
                           _%probe93781%_
                           _%key93756%_)
                          (vector-set!
                           _%table93760%_
                           (##fx+ _%probe93781%_ '1)
                           (_%update93757%_ _%default93758%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93755%_
                              (##fx- (&raw-table-free _%tab93755%_) '1))
                             (&raw-table-count-set!
                              _%tab93755%_
                              (##fx+ (&raw-table-count _%tab93755%_) '1))))))
                    (if (eq? _%k93788%_ (macro-deleted-obj))
                        (_%loop93778%_
                         (let ((_%next-probe93795%_
                                (fx+ _%start93774%_
                                     _%i93783%_
                                     (fx* _%i93783%_ _%i93783%_))))
                           (##fxmodulo _%next-probe93795%_ _%size93768%_))
                         (##fx+ _%i93783%_ '1)
                         (let ((_%$e93798%_ _%deleted93785%_))
                           (if _%$e93798%_ _%$e93798%_ _%probe93781%_)))
                        (if (_%test93763%_ _%key93756%_ _%k93788%_)
                            (let ()
                              (vector-set!
                               _%table93760%_
                               _%probe93781%_
                               _%key93756%_)
                              (vector-set!
                               _%table93760%_
                               (##fx+ _%probe93781%_ '1)
                               (_%update93757%_
                                (vector-ref
                                 _%table93760%_
                                 (##fx+ _%probe93781%_ '1)))))
                            (_%loop93778%_
                             (let ((_%next-probe93803%_
                                    (fx+ _%start93774%_
                                         _%i93783%_
                                         (fx* _%i93783%_ _%i93783%_))))
                               (##fxmodulo _%next-probe93803%_ _%size93768%_))
                             (##fx+ _%i93783%_ '1)
                             _%deleted93785%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab93736%_)
        (let* ((_%old-table93738%_ (&raw-table-table _%tab93736%_))
               (_%old-size93740%_ (vector-length _%old-table93738%_))
               (_%new-size93742%_
                (if (##fx< (&raw-table-count _%tab93736%_)
                           (##fxquotient _%old-size93740%_ '4))
                    (vector-length _%old-table93738%_)
                    (##fx* '2 (vector-length _%old-table93738%_))))
               (_%new-table93744%_
                (##make-vector _%new-size93742%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab93736%_ _%new-table93744%_)
          (&raw-table-count-set! _%tab93736%_ '0)
          (&raw-table-free-set!
           _%tab93736%_
           (##fxquotient _%new-size93742%_ '2))
          (let _%lp93747%_ ((_%i93749%_ '0))
            (if (##fx< _%i93749%_ _%old-size93740%_)
                (begin
                  (let ((_%key93751%_
                         (vector-ref _%old-table93738%_ _%i93749%_)))
                    (if (if (eq? _%key93751%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key93751%_ (macro-deleted-obj))))
                        (let ((_%value93753%_
                               (vector-ref
                                _%old-table93738%_
                                (##fx+ _%i93749%_ '1))))
                          (__raw-table-set!
                           _%tab93736%_
                           _%key93751%_
                           _%value93753%_))
                        '#!void))
                  (_%lp93747%_ (##fx+ _%i93749%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj93728%_)
        (let ((_%t93730%_ (##type _%obj93728%_)))
          (if (##fx= (##fxand _%t93730%_ '1) '0)
              (fxand (##type-cast _%obj93728%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj93728%_)
                  (symbolic-hash _%obj93728%_)
                  (if (procedure? _%obj93728%_)
                      (procedure-hash _%obj93728%_)
                      (fxand (__eq-hash _%obj93728%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj93724%_)
        (let ((_%h93726%_
               (if (##closure? _%obj93724%_)
                   (__eq-hash _%obj93724%_)
                   (##type-cast _%obj93724%_ '0))))
          (fxand _%h93726%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj93721%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj93721%_)))
    (define eqv-hash
      (lambda (_%obj93711%_)
        (letrec ((_%combine93713%_
                  (lambda (_%a93718%_ _%b93719%_)
                    (fxand (##fx* (##fx+ _%a93718%_
                                         (fxarithmetic-shift-left
                                          _%b93719%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash93714%_
                  (lambda (_%obj93716%_)
                    (macro-number-dispatch
                     _%obj93716%_
                     (eq-hash _%obj93716%_)
                     (fxand _%obj93716%_ (macro-max-fixnum32))
                     (modulo _%obj93716%_ '331804481)
                     (_%combine93713%_
                      (_%hash93714%_ (macro-ratnum-numerator _%obj93716%_))
                      (_%hash93714%_ (macro-ratnum-denominator _%obj93716%_)))
                     (_%combine93713%_
                      (##u16vector-ref _%obj93716%_ '0)
                      (_%combine93713%_
                       (##u16vector-ref _%obj93716%_ '1)
                       (_%combine93713%_
                        (##u16vector-ref _%obj93716%_ '2)
                        (##u16vector-ref _%obj93716%_ '3))))
                     (_%combine93713%_
                      (_%hash93714%_ (macro-cpxnum-real _%obj93716%_))
                      (_%hash93714%_ (macro-cpxnum-imag _%obj93716%_)))))))
          (_%hash93714%_ _%obj93711%_))))
    (define symbolic?
      (lambda (_%obj93706%_)
        (let ((_%$e93708%_ (symbol? _%obj93706%_)))
          (if _%$e93708%_ _%$e93708%_ (keyword? _%obj93706%_)))))
    (define symbolic-hash (lambda (_%obj93704%_) (macro-slot '1 _%obj93704%_)))
    (define string-hash (lambda (_%obj93702%_) (##string=?-hash _%obj93702%_)))
    (define immediate-hash
      (lambda (_%obj93700%_) (##type-cast _%obj93700%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint93681%_ _%seed93683%_)
        (make-raw-table__% _%size-hint93681%_ eq-hash eq? _%seed93683%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint93689%_ '#f) (_%seed93691%_ '0))
          (make-eq-table__% _%size-hint93689%_ _%seed93691%_))))
    (define make-eq-table__1
      (lambda (_%size-hint93693%_)
        (let ((_%seed93695%_ '0))
          (make-eq-table__% _%size-hint93693%_ _%seed93695%_))))
    (define make-eq-table
      (lambda _g94037_
        (let ((_g94036_ (##length _g94037_)))
          (cond ((##fx= _g94036_ 0) (apply make-eq-table__0 _g94037_))
                ((##fx= _g94036_ 1) (apply make-eq-table__1 _g94037_))
                ((##fx= _g94036_ 2) (apply make-eq-table__% _g94037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g94037_))))))
    (define eq-table-ref
      (lambda (_%tab93634%_ _%key93635%_ _%default93636%_)
        (let ((_%table93638%_ (&raw-table-table _%tab93634%_))
              (_%seed93639%_ (&raw-table-seed _%tab93634%_)))
          (let* ((_%h93641%_ (fxxor (eq-hash _%key93635%_) _%seed93639%_))
                 (_%size93644%_ (vector-length _%table93638%_))
                 (_%entries93647%_ (##fxquotient _%size93644%_ '2))
                 (_%start93650%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93641%_ _%entries93647%_)
                   '1)))
            (let _%loop93654%_ ((_%probe93657%_ _%start93650%_)
                                (_%i93659%_ '1)
                                (_%deleted93661%_ '#f))
              (let ((_%k93664%_ (vector-ref _%table93638%_ _%probe93657%_)))
                (if (eq? _%k93664%_ (macro-unused-obj))
                    _%default93636%_
                    (if (eq? _%k93664%_ (macro-deleted-obj))
                        (_%loop93654%_
                         (let ((_%next-probe93669%_
                                (fx+ _%start93650%_
                                     _%i93659%_
                                     (fx* _%i93659%_ _%i93659%_))))
                           (##fxmodulo _%next-probe93669%_ _%size93644%_))
                         (##fx+ _%i93659%_ '1)
                         (let ((_%$e93672%_ _%deleted93661%_))
                           (if _%$e93672%_ _%$e93672%_ _%probe93657%_)))
                        (if (eq? _%key93635%_ _%k93664%_)
                            (vector-ref
                             _%table93638%_
                             (##fx+ _%probe93657%_ '1))
                            (_%loop93654%_
                             (let ((_%next-probe93677%_
                                    (fx+ _%start93650%_
                                         _%i93659%_
                                         (fx* _%i93659%_ _%i93659%_))))
                               (##fxmodulo _%next-probe93677%_ _%size93644%_))
                             (##fx+ _%i93659%_ '1)
                             _%deleted93661%_))))))))))
    (define eq-table-set!
      (lambda (_%tab93630%_ _%key93631%_ _%value93632%_)
        (if (##fx< (&raw-table-free _%tab93630%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93630%_))
                    '4))
            (__raw-table-rehash! _%tab93630%_)
            '#!void)
        (__eq-table-set! _%tab93630%_ _%key93631%_ _%value93632%_)))
    (define __eq-table-set!
      (lambda (_%tab93581%_ _%key93582%_ _%value93583%_)
        (let ((_%table93586%_ (&raw-table-table _%tab93581%_))
              (_%seed93587%_ (&raw-table-seed _%tab93581%_)))
          (let* ((_%h93589%_ (fxxor (eq-hash _%key93582%_) _%seed93587%_))
                 (_%size93592%_ (vector-length _%table93586%_))
                 (_%entries93595%_ (##fxquotient _%size93592%_ '2))
                 (_%start93598%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93589%_ _%entries93595%_)
                   '1)))
            (let _%loop93602%_ ((_%probe93605%_ _%start93598%_)
                                (_%i93607%_ '1)
                                (_%deleted93609%_ '#f))
              (let ((_%k93612%_ (vector-ref _%table93586%_ _%probe93605%_)))
                (if (eq? _%k93612%_ (macro-unused-obj))
                    (if _%deleted93609%_
                        (begin
                          (vector-set!
                           _%table93586%_
                           _%deleted93609%_
                           _%key93582%_)
                          (vector-set!
                           _%table93586%_
                           (##fx+ _%deleted93609%_ '1)
                           _%value93583%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93581%_
                              (##fx+ (&raw-table-count _%tab93581%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93586%_
                           _%probe93605%_
                           _%key93582%_)
                          (vector-set!
                           _%table93586%_
                           (##fx+ _%probe93605%_ '1)
                           _%value93583%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93581%_
                              (##fx- (&raw-table-free _%tab93581%_) '1))
                             (&raw-table-count-set!
                              _%tab93581%_
                              (##fx+ (&raw-table-count _%tab93581%_) '1))))))
                    (if (eq? _%k93612%_ (macro-deleted-obj))
                        (_%loop93602%_
                         (let ((_%next-probe93619%_
                                (fx+ _%start93598%_
                                     _%i93607%_
                                     (fx* _%i93607%_ _%i93607%_))))
                           (##fxmodulo _%next-probe93619%_ _%size93592%_))
                         (##fx+ _%i93607%_ '1)
                         (let ((_%$e93622%_ _%deleted93609%_))
                           (if _%$e93622%_ _%$e93622%_ _%probe93605%_)))
                        (if (eq? _%key93582%_ _%k93612%_)
                            (let ()
                              (vector-set!
                               _%table93586%_
                               _%probe93605%_
                               _%key93582%_)
                              (vector-set!
                               _%table93586%_
                               (##fx+ _%probe93605%_ '1)
                               _%value93583%_))
                            (_%loop93602%_
                             (let ((_%next-probe93627%_
                                    (fx+ _%start93598%_
                                         _%i93607%_
                                         (fx* _%i93607%_ _%i93607%_))))
                               (##fxmodulo _%next-probe93627%_ _%size93592%_))
                             (##fx+ _%i93607%_ '1)
                             _%deleted93609%_))))))))))
    (define eq-table-update!
      (lambda (_%tab93576%_
               _%key93577%_
               _%eq-table-update!93578%_
               _%default93579%_)
        (if (##fx< (&raw-table-free _%tab93576%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93576%_))
                    '4))
            (__raw-table-rehash! _%tab93576%_)
            '#!void)
        (__eq-table-update!
         _%tab93576%_
         _%key93577%_
         _%eq-table-update!93578%_
         _%default93579%_)))
    (define __eq-table-update!
      (lambda (_%tab93526%_
               _%key93527%_
               _%eq-table-update!93528%_
               _%default93529%_)
        (let ((_%table93532%_ (&raw-table-table _%tab93526%_))
              (_%seed93533%_ (&raw-table-seed _%tab93526%_)))
          (let* ((_%h93535%_ (fxxor (eq-hash _%key93527%_) _%seed93533%_))
                 (_%size93538%_ (vector-length _%table93532%_))
                 (_%entries93541%_ (##fxquotient _%size93538%_ '2))
                 (_%start93544%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93535%_ _%entries93541%_)
                   '1)))
            (let _%loop93548%_ ((_%probe93551%_ _%start93544%_)
                                (_%i93553%_ '1)
                                (_%deleted93555%_ '#f))
              (let ((_%k93558%_ (vector-ref _%table93532%_ _%probe93551%_)))
                (if (eq? _%k93558%_ (macro-unused-obj))
                    (if _%deleted93555%_
                        (begin
                          (vector-set!
                           _%table93532%_
                           _%deleted93555%_
                           _%key93527%_)
                          (vector-set!
                           _%table93532%_
                           (##fx+ _%deleted93555%_ '1)
                           (_%eq-table-update!93528%_ _%default93529%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93526%_
                              (##fx+ (&raw-table-count _%tab93526%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93532%_
                           _%probe93551%_
                           _%key93527%_)
                          (vector-set!
                           _%table93532%_
                           (##fx+ _%probe93551%_ '1)
                           (_%eq-table-update!93528%_ _%default93529%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93526%_
                              (##fx- (&raw-table-free _%tab93526%_) '1))
                             (&raw-table-count-set!
                              _%tab93526%_
                              (##fx+ (&raw-table-count _%tab93526%_) '1))))))
                    (if (eq? _%k93558%_ (macro-deleted-obj))
                        (_%loop93548%_
                         (let ((_%next-probe93565%_
                                (fx+ _%start93544%_
                                     _%i93553%_
                                     (fx* _%i93553%_ _%i93553%_))))
                           (##fxmodulo _%next-probe93565%_ _%size93538%_))
                         (##fx+ _%i93553%_ '1)
                         (let ((_%$e93568%_ _%deleted93555%_))
                           (if _%$e93568%_ _%$e93568%_ _%probe93551%_)))
                        (if (eq? _%key93527%_ _%k93558%_)
                            (let ()
                              (vector-set!
                               _%table93532%_
                               _%probe93551%_
                               _%key93527%_)
                              (vector-set!
                               _%table93532%_
                               (##fx+ _%probe93551%_ '1)
                               (_%eq-table-update!93528%_
                                (vector-ref
                                 _%table93532%_
                                 (##fx+ _%probe93551%_ '1)))))
                            (_%loop93548%_
                             (let ((_%next-probe93573%_
                                    (fx+ _%start93544%_
                                         _%i93553%_
                                         (fx* _%i93553%_ _%i93553%_))))
                               (##fxmodulo _%next-probe93573%_ _%size93538%_))
                             (##fx+ _%i93553%_ '1)
                             _%deleted93555%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab93481%_ _%key93483%_)
        (let ((_%table93486%_ (&raw-table-table _%tab93481%_))
              (_%seed93488%_ (&raw-table-seed _%tab93481%_)))
          (let* ((_%h93491%_ (fxxor (eq-hash _%key93483%_) _%seed93488%_))
                 (_%size93494%_ (vector-length _%table93486%_))
                 (_%entries93497%_ (##fxquotient _%size93494%_ '2))
                 (_%start93500%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93491%_ _%entries93497%_)
                   '1)))
            (let _%loop93504%_ ((_%probe93507%_ _%start93500%_)
                                (_%i93509%_ '1))
              (let ((_%k93512%_ (vector-ref _%table93486%_ _%probe93507%_)))
                (if (eq? _%k93512%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93512%_ (macro-deleted-obj))
                        (_%loop93504%_
                         (let ((_%next-probe93517%_
                                (fx+ _%start93500%_
                                     _%i93509%_
                                     (fx* _%i93509%_ _%i93509%_))))
                           (##fxmodulo _%next-probe93517%_ _%size93494%_))
                         (##fx+ _%i93509%_ '1))
                        (if (eq? _%key93483%_ _%k93512%_)
                            (let ()
                              (vector-set!
                               _%table93486%_
                               _%probe93507%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93486%_
                               (##fx+ _%probe93507%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93481%_
                                  (##fx- (&raw-table-count _%tab93481%_)
                                         '1)))))
                            (_%loop93504%_
                             (let ((_%next-probe93523%_
                                    (fx+ _%start93500%_
                                         _%i93509%_
                                         (fx* _%i93509%_ _%i93509%_))))
                               (##fxmodulo _%next-probe93523%_ _%size93494%_))
                             (##fx+ _%i93509%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint93462%_ _%seed93464%_)
        (make-raw-table__% _%size-hint93462%_ eqv-hash eqv? _%seed93464%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint93470%_ '#f) (_%seed93472%_ '0))
          (make-eqv-table__% _%size-hint93470%_ _%seed93472%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint93474%_)
        (let ((_%seed93476%_ '0))
          (make-eqv-table__% _%size-hint93474%_ _%seed93476%_))))
    (define make-eqv-table
      (lambda _g94039_
        (let ((_g94038_ (##length _g94039_)))
          (cond ((##fx= _g94038_ 0) (apply make-eqv-table__0 _g94039_))
                ((##fx= _g94038_ 1) (apply make-eqv-table__1 _g94039_))
                ((##fx= _g94038_ 2) (apply make-eqv-table__% _g94039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g94039_))))))
    (define eqv-table-ref
      (lambda (_%tab93415%_ _%key93416%_ _%default93417%_)
        (let ((_%table93419%_ (&raw-table-table _%tab93415%_))
              (_%seed93420%_ (&raw-table-seed _%tab93415%_)))
          (let* ((_%h93422%_ (fxxor (eqv-hash _%key93416%_) _%seed93420%_))
                 (_%size93425%_ (vector-length _%table93419%_))
                 (_%entries93428%_ (##fxquotient _%size93425%_ '2))
                 (_%start93431%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93422%_ _%entries93428%_)
                   '1)))
            (let _%loop93435%_ ((_%probe93438%_ _%start93431%_)
                                (_%i93440%_ '1)
                                (_%deleted93442%_ '#f))
              (let ((_%k93445%_ (vector-ref _%table93419%_ _%probe93438%_)))
                (if (eq? _%k93445%_ (macro-unused-obj))
                    _%default93417%_
                    (if (eq? _%k93445%_ (macro-deleted-obj))
                        (_%loop93435%_
                         (let ((_%next-probe93450%_
                                (fx+ _%start93431%_
                                     _%i93440%_
                                     (fx* _%i93440%_ _%i93440%_))))
                           (##fxmodulo _%next-probe93450%_ _%size93425%_))
                         (##fx+ _%i93440%_ '1)
                         (let ((_%$e93453%_ _%deleted93442%_))
                           (if _%$e93453%_ _%$e93453%_ _%probe93438%_)))
                        (if (eqv? _%key93416%_ _%k93445%_)
                            (vector-ref
                             _%table93419%_
                             (##fx+ _%probe93438%_ '1))
                            (_%loop93435%_
                             (let ((_%next-probe93458%_
                                    (fx+ _%start93431%_
                                         _%i93440%_
                                         (fx* _%i93440%_ _%i93440%_))))
                               (##fxmodulo _%next-probe93458%_ _%size93425%_))
                             (##fx+ _%i93440%_ '1)
                             _%deleted93442%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab93411%_ _%key93412%_ _%value93413%_)
        (if (##fx< (&raw-table-free _%tab93411%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93411%_))
                    '4))
            (__raw-table-rehash! _%tab93411%_)
            '#!void)
        (__eqv-table-set! _%tab93411%_ _%key93412%_ _%value93413%_)))
    (define __eqv-table-set!
      (lambda (_%tab93362%_ _%key93363%_ _%value93364%_)
        (let ((_%table93367%_ (&raw-table-table _%tab93362%_))
              (_%seed93368%_ (&raw-table-seed _%tab93362%_)))
          (let* ((_%h93370%_ (fxxor (eqv-hash _%key93363%_) _%seed93368%_))
                 (_%size93373%_ (vector-length _%table93367%_))
                 (_%entries93376%_ (##fxquotient _%size93373%_ '2))
                 (_%start93379%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93370%_ _%entries93376%_)
                   '1)))
            (let _%loop93383%_ ((_%probe93386%_ _%start93379%_)
                                (_%i93388%_ '1)
                                (_%deleted93390%_ '#f))
              (let ((_%k93393%_ (vector-ref _%table93367%_ _%probe93386%_)))
                (if (eq? _%k93393%_ (macro-unused-obj))
                    (if _%deleted93390%_
                        (begin
                          (vector-set!
                           _%table93367%_
                           _%deleted93390%_
                           _%key93363%_)
                          (vector-set!
                           _%table93367%_
                           (##fx+ _%deleted93390%_ '1)
                           _%value93364%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93362%_
                              (##fx+ (&raw-table-count _%tab93362%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93367%_
                           _%probe93386%_
                           _%key93363%_)
                          (vector-set!
                           _%table93367%_
                           (##fx+ _%probe93386%_ '1)
                           _%value93364%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93362%_
                              (##fx- (&raw-table-free _%tab93362%_) '1))
                             (&raw-table-count-set!
                              _%tab93362%_
                              (##fx+ (&raw-table-count _%tab93362%_) '1))))))
                    (if (eq? _%k93393%_ (macro-deleted-obj))
                        (_%loop93383%_
                         (let ((_%next-probe93400%_
                                (fx+ _%start93379%_
                                     _%i93388%_
                                     (fx* _%i93388%_ _%i93388%_))))
                           (##fxmodulo _%next-probe93400%_ _%size93373%_))
                         (##fx+ _%i93388%_ '1)
                         (let ((_%$e93403%_ _%deleted93390%_))
                           (if _%$e93403%_ _%$e93403%_ _%probe93386%_)))
                        (if (eqv? _%key93363%_ _%k93393%_)
                            (let ()
                              (vector-set!
                               _%table93367%_
                               _%probe93386%_
                               _%key93363%_)
                              (vector-set!
                               _%table93367%_
                               (##fx+ _%probe93386%_ '1)
                               _%value93364%_))
                            (_%loop93383%_
                             (let ((_%next-probe93408%_
                                    (fx+ _%start93379%_
                                         _%i93388%_
                                         (fx* _%i93388%_ _%i93388%_))))
                               (##fxmodulo _%next-probe93408%_ _%size93373%_))
                             (##fx+ _%i93388%_ '1)
                             _%deleted93390%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab93357%_
               _%key93358%_
               _%eqv-table-update!93359%_
               _%default93360%_)
        (if (##fx< (&raw-table-free _%tab93357%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93357%_))
                    '4))
            (__raw-table-rehash! _%tab93357%_)
            '#!void)
        (__eqv-table-update!
         _%tab93357%_
         _%key93358%_
         _%eqv-table-update!93359%_
         _%default93360%_)))
    (define __eqv-table-update!
      (lambda (_%tab93307%_
               _%key93308%_
               _%eqv-table-update!93309%_
               _%default93310%_)
        (let ((_%table93313%_ (&raw-table-table _%tab93307%_))
              (_%seed93314%_ (&raw-table-seed _%tab93307%_)))
          (let* ((_%h93316%_ (fxxor (eqv-hash _%key93308%_) _%seed93314%_))
                 (_%size93319%_ (vector-length _%table93313%_))
                 (_%entries93322%_ (##fxquotient _%size93319%_ '2))
                 (_%start93325%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93316%_ _%entries93322%_)
                   '1)))
            (let _%loop93329%_ ((_%probe93332%_ _%start93325%_)
                                (_%i93334%_ '1)
                                (_%deleted93336%_ '#f))
              (let ((_%k93339%_ (vector-ref _%table93313%_ _%probe93332%_)))
                (if (eq? _%k93339%_ (macro-unused-obj))
                    (if _%deleted93336%_
                        (begin
                          (vector-set!
                           _%table93313%_
                           _%deleted93336%_
                           _%key93308%_)
                          (vector-set!
                           _%table93313%_
                           (##fx+ _%deleted93336%_ '1)
                           (_%eqv-table-update!93309%_ _%default93310%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93307%_
                              (##fx+ (&raw-table-count _%tab93307%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93313%_
                           _%probe93332%_
                           _%key93308%_)
                          (vector-set!
                           _%table93313%_
                           (##fx+ _%probe93332%_ '1)
                           (_%eqv-table-update!93309%_ _%default93310%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93307%_
                              (##fx- (&raw-table-free _%tab93307%_) '1))
                             (&raw-table-count-set!
                              _%tab93307%_
                              (##fx+ (&raw-table-count _%tab93307%_) '1))))))
                    (if (eq? _%k93339%_ (macro-deleted-obj))
                        (_%loop93329%_
                         (let ((_%next-probe93346%_
                                (fx+ _%start93325%_
                                     _%i93334%_
                                     (fx* _%i93334%_ _%i93334%_))))
                           (##fxmodulo _%next-probe93346%_ _%size93319%_))
                         (##fx+ _%i93334%_ '1)
                         (let ((_%$e93349%_ _%deleted93336%_))
                           (if _%$e93349%_ _%$e93349%_ _%probe93332%_)))
                        (if (eqv? _%key93308%_ _%k93339%_)
                            (let ()
                              (vector-set!
                               _%table93313%_
                               _%probe93332%_
                               _%key93308%_)
                              (vector-set!
                               _%table93313%_
                               (##fx+ _%probe93332%_ '1)
                               (_%eqv-table-update!93309%_
                                (vector-ref
                                 _%table93313%_
                                 (##fx+ _%probe93332%_ '1)))))
                            (_%loop93329%_
                             (let ((_%next-probe93354%_
                                    (fx+ _%start93325%_
                                         _%i93334%_
                                         (fx* _%i93334%_ _%i93334%_))))
                               (##fxmodulo _%next-probe93354%_ _%size93319%_))
                             (##fx+ _%i93334%_ '1)
                             _%deleted93336%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab93262%_ _%key93264%_)
        (let ((_%table93267%_ (&raw-table-table _%tab93262%_))
              (_%seed93269%_ (&raw-table-seed _%tab93262%_)))
          (let* ((_%h93272%_ (fxxor (eqv-hash _%key93264%_) _%seed93269%_))
                 (_%size93275%_ (vector-length _%table93267%_))
                 (_%entries93278%_ (##fxquotient _%size93275%_ '2))
                 (_%start93281%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93272%_ _%entries93278%_)
                   '1)))
            (let _%loop93285%_ ((_%probe93288%_ _%start93281%_)
                                (_%i93290%_ '1))
              (let ((_%k93293%_ (vector-ref _%table93267%_ _%probe93288%_)))
                (if (eq? _%k93293%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93293%_ (macro-deleted-obj))
                        (_%loop93285%_
                         (let ((_%next-probe93298%_
                                (fx+ _%start93281%_
                                     _%i93290%_
                                     (fx* _%i93290%_ _%i93290%_))))
                           (##fxmodulo _%next-probe93298%_ _%size93275%_))
                         (##fx+ _%i93290%_ '1))
                        (if (eqv? _%key93264%_ _%k93293%_)
                            (let ()
                              (vector-set!
                               _%table93267%_
                               _%probe93288%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93267%_
                               (##fx+ _%probe93288%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93262%_
                                  (##fx- (&raw-table-count _%tab93262%_)
                                         '1)))))
                            (_%loop93285%_
                             (let ((_%next-probe93304%_
                                    (fx+ _%start93281%_
                                         _%i93290%_
                                         (fx* _%i93290%_ _%i93290%_))))
                               (##fxmodulo _%next-probe93304%_ _%size93275%_))
                             (##fx+ _%i93290%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint93243%_ _%seed93245%_)
        (make-raw-table__%
         _%size-hint93243%_
         symbolic-hash
         eq?
         _%seed93245%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint93251%_ '#f) (_%seed93253%_ '0))
          (make-symbolic-table__% _%size-hint93251%_ _%seed93253%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint93255%_)
        (let ((_%seed93257%_ '0))
          (make-symbolic-table__% _%size-hint93255%_ _%seed93257%_))))
    (define make-symbolic-table
      (lambda _g94041_
        (let ((_g94040_ (##length _g94041_)))
          (cond ((##fx= _g94040_ 0) (apply make-symbolic-table__0 _g94041_))
                ((##fx= _g94040_ 1) (apply make-symbolic-table__1 _g94041_))
                ((##fx= _g94040_ 2) (apply make-symbolic-table__% _g94041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g94041_))))))
    (define symbolic-table-ref
      (lambda (_%tab93196%_ _%key93197%_ _%default93198%_)
        (let ((_%table93200%_ (&raw-table-table _%tab93196%_))
              (_%seed93201%_ (&raw-table-seed _%tab93196%_)))
          (let* ((_%h93203%_
                  (fxxor (symbolic-hash _%key93197%_) _%seed93201%_))
                 (_%size93206%_ (vector-length _%table93200%_))
                 (_%entries93209%_ (##fxquotient _%size93206%_ '2))
                 (_%start93212%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93203%_ _%entries93209%_)
                   '1)))
            (let _%loop93216%_ ((_%probe93219%_ _%start93212%_)
                                (_%i93221%_ '1)
                                (_%deleted93223%_ '#f))
              (let ((_%k93226%_ (vector-ref _%table93200%_ _%probe93219%_)))
                (if (eq? _%k93226%_ (macro-unused-obj))
                    _%default93198%_
                    (if (eq? _%k93226%_ (macro-deleted-obj))
                        (_%loop93216%_
                         (let ((_%next-probe93231%_
                                (fx+ _%start93212%_
                                     _%i93221%_
                                     (fx* _%i93221%_ _%i93221%_))))
                           (##fxmodulo _%next-probe93231%_ _%size93206%_))
                         (##fx+ _%i93221%_ '1)
                         (let ((_%$e93234%_ _%deleted93223%_))
                           (if _%$e93234%_ _%$e93234%_ _%probe93219%_)))
                        (if (eq? _%key93197%_ _%k93226%_)
                            (vector-ref
                             _%table93200%_
                             (##fx+ _%probe93219%_ '1))
                            (_%loop93216%_
                             (let ((_%next-probe93239%_
                                    (fx+ _%start93212%_
                                         _%i93221%_
                                         (fx* _%i93221%_ _%i93221%_))))
                               (##fxmodulo _%next-probe93239%_ _%size93206%_))
                             (##fx+ _%i93221%_ '1)
                             _%deleted93223%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab93192%_ _%key93193%_ _%value93194%_)
        (if (##fx< (&raw-table-free _%tab93192%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93192%_))
                    '4))
            (__raw-table-rehash! _%tab93192%_)
            '#!void)
        (__symbolic-table-set! _%tab93192%_ _%key93193%_ _%value93194%_)))
    (define __symbolic-table-set!
      (lambda (_%tab93143%_ _%key93144%_ _%value93145%_)
        (let ((_%table93148%_ (&raw-table-table _%tab93143%_))
              (_%seed93149%_ (&raw-table-seed _%tab93143%_)))
          (let* ((_%h93151%_
                  (fxxor (symbolic-hash _%key93144%_) _%seed93149%_))
                 (_%size93154%_ (vector-length _%table93148%_))
                 (_%entries93157%_ (##fxquotient _%size93154%_ '2))
                 (_%start93160%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93151%_ _%entries93157%_)
                   '1)))
            (let _%loop93164%_ ((_%probe93167%_ _%start93160%_)
                                (_%i93169%_ '1)
                                (_%deleted93171%_ '#f))
              (let ((_%k93174%_ (vector-ref _%table93148%_ _%probe93167%_)))
                (if (eq? _%k93174%_ (macro-unused-obj))
                    (if _%deleted93171%_
                        (begin
                          (vector-set!
                           _%table93148%_
                           _%deleted93171%_
                           _%key93144%_)
                          (vector-set!
                           _%table93148%_
                           (##fx+ _%deleted93171%_ '1)
                           _%value93145%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93143%_
                              (##fx+ (&raw-table-count _%tab93143%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93148%_
                           _%probe93167%_
                           _%key93144%_)
                          (vector-set!
                           _%table93148%_
                           (##fx+ _%probe93167%_ '1)
                           _%value93145%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93143%_
                              (##fx- (&raw-table-free _%tab93143%_) '1))
                             (&raw-table-count-set!
                              _%tab93143%_
                              (##fx+ (&raw-table-count _%tab93143%_) '1))))))
                    (if (eq? _%k93174%_ (macro-deleted-obj))
                        (_%loop93164%_
                         (let ((_%next-probe93181%_
                                (fx+ _%start93160%_
                                     _%i93169%_
                                     (fx* _%i93169%_ _%i93169%_))))
                           (##fxmodulo _%next-probe93181%_ _%size93154%_))
                         (##fx+ _%i93169%_ '1)
                         (let ((_%$e93184%_ _%deleted93171%_))
                           (if _%$e93184%_ _%$e93184%_ _%probe93167%_)))
                        (if (eq? _%key93144%_ _%k93174%_)
                            (let ()
                              (vector-set!
                               _%table93148%_
                               _%probe93167%_
                               _%key93144%_)
                              (vector-set!
                               _%table93148%_
                               (##fx+ _%probe93167%_ '1)
                               _%value93145%_))
                            (_%loop93164%_
                             (let ((_%next-probe93189%_
                                    (fx+ _%start93160%_
                                         _%i93169%_
                                         (fx* _%i93169%_ _%i93169%_))))
                               (##fxmodulo _%next-probe93189%_ _%size93154%_))
                             (##fx+ _%i93169%_ '1)
                             _%deleted93171%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab93138%_
               _%key93139%_
               _%symbolic-table-update!93140%_
               _%default93141%_)
        (if (##fx< (&raw-table-free _%tab93138%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93138%_))
                    '4))
            (__raw-table-rehash! _%tab93138%_)
            '#!void)
        (__symbolic-table-update!
         _%tab93138%_
         _%key93139%_
         _%symbolic-table-update!93140%_
         _%default93141%_)))
    (define __symbolic-table-update!
      (lambda (_%tab93088%_
               _%key93089%_
               _%symbolic-table-update!93090%_
               _%default93091%_)
        (let ((_%table93094%_ (&raw-table-table _%tab93088%_))
              (_%seed93095%_ (&raw-table-seed _%tab93088%_)))
          (let* ((_%h93097%_
                  (fxxor (symbolic-hash _%key93089%_) _%seed93095%_))
                 (_%size93100%_ (vector-length _%table93094%_))
                 (_%entries93103%_ (##fxquotient _%size93100%_ '2))
                 (_%start93106%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93097%_ _%entries93103%_)
                   '1)))
            (let _%loop93110%_ ((_%probe93113%_ _%start93106%_)
                                (_%i93115%_ '1)
                                (_%deleted93117%_ '#f))
              (let ((_%k93120%_ (vector-ref _%table93094%_ _%probe93113%_)))
                (if (eq? _%k93120%_ (macro-unused-obj))
                    (if _%deleted93117%_
                        (begin
                          (vector-set!
                           _%table93094%_
                           _%deleted93117%_
                           _%key93089%_)
                          (vector-set!
                           _%table93094%_
                           (##fx+ _%deleted93117%_ '1)
                           (_%symbolic-table-update!93090%_ _%default93091%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93088%_
                              (##fx+ (&raw-table-count _%tab93088%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93094%_
                           _%probe93113%_
                           _%key93089%_)
                          (vector-set!
                           _%table93094%_
                           (##fx+ _%probe93113%_ '1)
                           (_%symbolic-table-update!93090%_ _%default93091%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93088%_
                              (##fx- (&raw-table-free _%tab93088%_) '1))
                             (&raw-table-count-set!
                              _%tab93088%_
                              (##fx+ (&raw-table-count _%tab93088%_) '1))))))
                    (if (eq? _%k93120%_ (macro-deleted-obj))
                        (_%loop93110%_
                         (let ((_%next-probe93127%_
                                (fx+ _%start93106%_
                                     _%i93115%_
                                     (fx* _%i93115%_ _%i93115%_))))
                           (##fxmodulo _%next-probe93127%_ _%size93100%_))
                         (##fx+ _%i93115%_ '1)
                         (let ((_%$e93130%_ _%deleted93117%_))
                           (if _%$e93130%_ _%$e93130%_ _%probe93113%_)))
                        (if (eq? _%key93089%_ _%k93120%_)
                            (let ()
                              (vector-set!
                               _%table93094%_
                               _%probe93113%_
                               _%key93089%_)
                              (vector-set!
                               _%table93094%_
                               (##fx+ _%probe93113%_ '1)
                               (_%symbolic-table-update!93090%_
                                (vector-ref
                                 _%table93094%_
                                 (##fx+ _%probe93113%_ '1)))))
                            (_%loop93110%_
                             (let ((_%next-probe93135%_
                                    (fx+ _%start93106%_
                                         _%i93115%_
                                         (fx* _%i93115%_ _%i93115%_))))
                               (##fxmodulo _%next-probe93135%_ _%size93100%_))
                             (##fx+ _%i93115%_ '1)
                             _%deleted93117%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab93043%_ _%key93045%_)
        (let ((_%table93048%_ (&raw-table-table _%tab93043%_))
              (_%seed93050%_ (&raw-table-seed _%tab93043%_)))
          (let* ((_%h93053%_
                  (fxxor (symbolic-hash _%key93045%_) _%seed93050%_))
                 (_%size93056%_ (vector-length _%table93048%_))
                 (_%entries93059%_ (##fxquotient _%size93056%_ '2))
                 (_%start93062%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93053%_ _%entries93059%_)
                   '1)))
            (let _%loop93066%_ ((_%probe93069%_ _%start93062%_)
                                (_%i93071%_ '1))
              (let ((_%k93074%_ (vector-ref _%table93048%_ _%probe93069%_)))
                (if (eq? _%k93074%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93074%_ (macro-deleted-obj))
                        (_%loop93066%_
                         (let ((_%next-probe93079%_
                                (fx+ _%start93062%_
                                     _%i93071%_
                                     (fx* _%i93071%_ _%i93071%_))))
                           (##fxmodulo _%next-probe93079%_ _%size93056%_))
                         (##fx+ _%i93071%_ '1))
                        (if (eq? _%key93045%_ _%k93074%_)
                            (let ()
                              (vector-set!
                               _%table93048%_
                               _%probe93069%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93048%_
                               (##fx+ _%probe93069%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93043%_
                                  (##fx- (&raw-table-count _%tab93043%_)
                                         '1)))))
                            (_%loop93066%_
                             (let ((_%next-probe93085%_
                                    (fx+ _%start93062%_
                                         _%i93071%_
                                         (fx* _%i93071%_ _%i93071%_))))
                               (##fxmodulo _%next-probe93085%_ _%size93056%_))
                             (##fx+ _%i93071%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint93024%_ _%seed93026%_)
        (make-raw-table__%
         _%size-hint93024%_
         string-hash
         ##string=?
         _%seed93026%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint93032%_ '#f) (_%seed93034%_ '0))
          (make-string-table__% _%size-hint93032%_ _%seed93034%_))))
    (define make-string-table__1
      (lambda (_%size-hint93036%_)
        (let ((_%seed93038%_ '0))
          (make-string-table__% _%size-hint93036%_ _%seed93038%_))))
    (define make-string-table
      (lambda _g94043_
        (let ((_g94042_ (##length _g94043_)))
          (cond ((##fx= _g94042_ 0) (apply make-string-table__0 _g94043_))
                ((##fx= _g94042_ 1) (apply make-string-table__1 _g94043_))
                ((##fx= _g94042_ 2) (apply make-string-table__% _g94043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g94043_))))))
    (define string-table-ref
      (lambda (_%tab92977%_ _%key92978%_ _%default92979%_)
        (let ((_%table92981%_ (&raw-table-table _%tab92977%_))
              (_%seed92982%_ (&raw-table-seed _%tab92977%_)))
          (let* ((_%h92984%_
                  (fxxor (##string=?-hash _%key92978%_) _%seed92982%_))
                 (_%size92987%_ (vector-length _%table92981%_))
                 (_%entries92990%_ (##fxquotient _%size92987%_ '2))
                 (_%start92993%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92984%_ _%entries92990%_)
                   '1)))
            (let _%loop92997%_ ((_%probe93000%_ _%start92993%_)
                                (_%i93002%_ '1)
                                (_%deleted93004%_ '#f))
              (let ((_%k93007%_ (vector-ref _%table92981%_ _%probe93000%_)))
                (if (eq? _%k93007%_ (macro-unused-obj))
                    _%default92979%_
                    (if (eq? _%k93007%_ (macro-deleted-obj))
                        (_%loop92997%_
                         (let ((_%next-probe93012%_
                                (fx+ _%start92993%_
                                     _%i93002%_
                                     (fx* _%i93002%_ _%i93002%_))))
                           (##fxmodulo _%next-probe93012%_ _%size92987%_))
                         (##fx+ _%i93002%_ '1)
                         (let ((_%$e93015%_ _%deleted93004%_))
                           (if _%$e93015%_ _%$e93015%_ _%probe93000%_)))
                        (if (##string=? _%key92978%_ _%k93007%_)
                            (vector-ref
                             _%table92981%_
                             (##fx+ _%probe93000%_ '1))
                            (_%loop92997%_
                             (let ((_%next-probe93020%_
                                    (fx+ _%start92993%_
                                         _%i93002%_
                                         (fx* _%i93002%_ _%i93002%_))))
                               (##fxmodulo _%next-probe93020%_ _%size92987%_))
                             (##fx+ _%i93002%_ '1)
                             _%deleted93004%_))))))))))
    (define string-table-set!
      (lambda (_%tab92973%_ _%key92974%_ _%value92975%_)
        (if (##fx< (&raw-table-free _%tab92973%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92973%_))
                    '4))
            (__raw-table-rehash! _%tab92973%_)
            '#!void)
        (__string-table-set! _%tab92973%_ _%key92974%_ _%value92975%_)))
    (define __string-table-set!
      (lambda (_%tab92924%_ _%key92925%_ _%value92926%_)
        (let ((_%table92929%_ (&raw-table-table _%tab92924%_))
              (_%seed92930%_ (&raw-table-seed _%tab92924%_)))
          (let* ((_%h92932%_
                  (fxxor (##string=?-hash _%key92925%_) _%seed92930%_))
                 (_%size92935%_ (vector-length _%table92929%_))
                 (_%entries92938%_ (##fxquotient _%size92935%_ '2))
                 (_%start92941%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92932%_ _%entries92938%_)
                   '1)))
            (let _%loop92945%_ ((_%probe92948%_ _%start92941%_)
                                (_%i92950%_ '1)
                                (_%deleted92952%_ '#f))
              (let ((_%k92955%_ (vector-ref _%table92929%_ _%probe92948%_)))
                (if (eq? _%k92955%_ (macro-unused-obj))
                    (if _%deleted92952%_
                        (begin
                          (vector-set!
                           _%table92929%_
                           _%deleted92952%_
                           _%key92925%_)
                          (vector-set!
                           _%table92929%_
                           (##fx+ _%deleted92952%_ '1)
                           _%value92926%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92924%_
                              (##fx+ (&raw-table-count _%tab92924%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92929%_
                           _%probe92948%_
                           _%key92925%_)
                          (vector-set!
                           _%table92929%_
                           (##fx+ _%probe92948%_ '1)
                           _%value92926%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92924%_
                              (##fx- (&raw-table-free _%tab92924%_) '1))
                             (&raw-table-count-set!
                              _%tab92924%_
                              (##fx+ (&raw-table-count _%tab92924%_) '1))))))
                    (if (eq? _%k92955%_ (macro-deleted-obj))
                        (_%loop92945%_
                         (let ((_%next-probe92962%_
                                (fx+ _%start92941%_
                                     _%i92950%_
                                     (fx* _%i92950%_ _%i92950%_))))
                           (##fxmodulo _%next-probe92962%_ _%size92935%_))
                         (##fx+ _%i92950%_ '1)
                         (let ((_%$e92965%_ _%deleted92952%_))
                           (if _%$e92965%_ _%$e92965%_ _%probe92948%_)))
                        (if (##string=? _%key92925%_ _%k92955%_)
                            (let ()
                              (vector-set!
                               _%table92929%_
                               _%probe92948%_
                               _%key92925%_)
                              (vector-set!
                               _%table92929%_
                               (##fx+ _%probe92948%_ '1)
                               _%value92926%_))
                            (_%loop92945%_
                             (let ((_%next-probe92970%_
                                    (fx+ _%start92941%_
                                         _%i92950%_
                                         (fx* _%i92950%_ _%i92950%_))))
                               (##fxmodulo _%next-probe92970%_ _%size92935%_))
                             (##fx+ _%i92950%_ '1)
                             _%deleted92952%_))))))))))
    (define string-table-update!
      (lambda (_%tab92919%_
               _%key92920%_
               _%string-table-update!92921%_
               _%default92922%_)
        (if (##fx< (&raw-table-free _%tab92919%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92919%_))
                    '4))
            (__raw-table-rehash! _%tab92919%_)
            '#!void)
        (__string-table-update!
         _%tab92919%_
         _%key92920%_
         _%string-table-update!92921%_
         _%default92922%_)))
    (define __string-table-update!
      (lambda (_%tab92869%_
               _%key92870%_
               _%string-table-update!92871%_
               _%default92872%_)
        (let ((_%table92875%_ (&raw-table-table _%tab92869%_))
              (_%seed92876%_ (&raw-table-seed _%tab92869%_)))
          (let* ((_%h92878%_
                  (fxxor (##string=?-hash _%key92870%_) _%seed92876%_))
                 (_%size92881%_ (vector-length _%table92875%_))
                 (_%entries92884%_ (##fxquotient _%size92881%_ '2))
                 (_%start92887%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92878%_ _%entries92884%_)
                   '1)))
            (let _%loop92891%_ ((_%probe92894%_ _%start92887%_)
                                (_%i92896%_ '1)
                                (_%deleted92898%_ '#f))
              (let ((_%k92901%_ (vector-ref _%table92875%_ _%probe92894%_)))
                (if (eq? _%k92901%_ (macro-unused-obj))
                    (if _%deleted92898%_
                        (begin
                          (vector-set!
                           _%table92875%_
                           _%deleted92898%_
                           _%key92870%_)
                          (vector-set!
                           _%table92875%_
                           (##fx+ _%deleted92898%_ '1)
                           (_%string-table-update!92871%_ _%default92872%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92869%_
                              (##fx+ (&raw-table-count _%tab92869%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92875%_
                           _%probe92894%_
                           _%key92870%_)
                          (vector-set!
                           _%table92875%_
                           (##fx+ _%probe92894%_ '1)
                           (_%string-table-update!92871%_ _%default92872%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92869%_
                              (##fx- (&raw-table-free _%tab92869%_) '1))
                             (&raw-table-count-set!
                              _%tab92869%_
                              (##fx+ (&raw-table-count _%tab92869%_) '1))))))
                    (if (eq? _%k92901%_ (macro-deleted-obj))
                        (_%loop92891%_
                         (let ((_%next-probe92908%_
                                (fx+ _%start92887%_
                                     _%i92896%_
                                     (fx* _%i92896%_ _%i92896%_))))
                           (##fxmodulo _%next-probe92908%_ _%size92881%_))
                         (##fx+ _%i92896%_ '1)
                         (let ((_%$e92911%_ _%deleted92898%_))
                           (if _%$e92911%_ _%$e92911%_ _%probe92894%_)))
                        (if (##string=? _%key92870%_ _%k92901%_)
                            (let ()
                              (vector-set!
                               _%table92875%_
                               _%probe92894%_
                               _%key92870%_)
                              (vector-set!
                               _%table92875%_
                               (##fx+ _%probe92894%_ '1)
                               (_%string-table-update!92871%_
                                (vector-ref
                                 _%table92875%_
                                 (##fx+ _%probe92894%_ '1)))))
                            (_%loop92891%_
                             (let ((_%next-probe92916%_
                                    (fx+ _%start92887%_
                                         _%i92896%_
                                         (fx* _%i92896%_ _%i92896%_))))
                               (##fxmodulo _%next-probe92916%_ _%size92881%_))
                             (##fx+ _%i92896%_ '1)
                             _%deleted92898%_))))))))))
    (define string-table-delete!
      (lambda (_%tab92824%_ _%key92826%_)
        (let ((_%table92829%_ (&raw-table-table _%tab92824%_))
              (_%seed92831%_ (&raw-table-seed _%tab92824%_)))
          (let* ((_%h92834%_
                  (fxxor (##string=?-hash _%key92826%_) _%seed92831%_))
                 (_%size92837%_ (vector-length _%table92829%_))
                 (_%entries92840%_ (##fxquotient _%size92837%_ '2))
                 (_%start92843%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92834%_ _%entries92840%_)
                   '1)))
            (let _%loop92847%_ ((_%probe92850%_ _%start92843%_)
                                (_%i92852%_ '1))
              (let ((_%k92855%_ (vector-ref _%table92829%_ _%probe92850%_)))
                (if (eq? _%k92855%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92855%_ (macro-deleted-obj))
                        (_%loop92847%_
                         (let ((_%next-probe92860%_
                                (fx+ _%start92843%_
                                     _%i92852%_
                                     (fx* _%i92852%_ _%i92852%_))))
                           (##fxmodulo _%next-probe92860%_ _%size92837%_))
                         (##fx+ _%i92852%_ '1))
                        (if (##string=? _%key92826%_ _%k92855%_)
                            (let ()
                              (vector-set!
                               _%table92829%_
                               _%probe92850%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92829%_
                               (##fx+ _%probe92850%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92824%_
                                  (##fx- (&raw-table-count _%tab92824%_)
                                         '1)))))
                            (_%loop92847%_
                             (let ((_%next-probe92866%_
                                    (fx+ _%start92843%_
                                         _%i92852%_
                                         (fx* _%i92852%_ _%i92852%_))))
                               (##fxmodulo _%next-probe92866%_ _%size92837%_))
                             (##fx+ _%i92852%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint92805%_ _%seed92807%_)
        (make-raw-table__%
         _%size-hint92805%_
         immediate-hash
         eq?
         _%seed92807%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint92813%_ '#f) (_%seed92815%_ '0))
          (make-immediate-table__% _%size-hint92813%_ _%seed92815%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint92817%_)
        (let ((_%seed92819%_ '0))
          (make-immediate-table__% _%size-hint92817%_ _%seed92819%_))))
    (define make-immediate-table
      (lambda _g94045_
        (let ((_g94044_ (##length _g94045_)))
          (cond ((##fx= _g94044_ 0) (apply make-immediate-table__0 _g94045_))
                ((##fx= _g94044_ 1) (apply make-immediate-table__1 _g94045_))
                ((##fx= _g94044_ 2) (apply make-immediate-table__% _g94045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g94045_))))))
    (define immediate-table-ref
      (lambda (_%tab92758%_ _%key92759%_ _%default92760%_)
        (let ((_%table92762%_ (&raw-table-table _%tab92758%_))
              (_%seed92763%_ (&raw-table-seed _%tab92758%_)))
          (let* ((_%h92765%_
                  (fxxor (immediate-hash _%key92759%_) _%seed92763%_))
                 (_%size92768%_ (vector-length _%table92762%_))
                 (_%entries92771%_ (##fxquotient _%size92768%_ '2))
                 (_%start92774%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92765%_ _%entries92771%_)
                   '1)))
            (let _%loop92778%_ ((_%probe92781%_ _%start92774%_)
                                (_%i92783%_ '1)
                                (_%deleted92785%_ '#f))
              (let ((_%k92788%_ (vector-ref _%table92762%_ _%probe92781%_)))
                (if (eq? _%k92788%_ (macro-unused-obj))
                    _%default92760%_
                    (if (eq? _%k92788%_ (macro-deleted-obj))
                        (_%loop92778%_
                         (let ((_%next-probe92793%_
                                (fx+ _%start92774%_
                                     _%i92783%_
                                     (fx* _%i92783%_ _%i92783%_))))
                           (##fxmodulo _%next-probe92793%_ _%size92768%_))
                         (##fx+ _%i92783%_ '1)
                         (let ((_%$e92796%_ _%deleted92785%_))
                           (if _%$e92796%_ _%$e92796%_ _%probe92781%_)))
                        (if (eq? _%key92759%_ _%k92788%_)
                            (vector-ref
                             _%table92762%_
                             (##fx+ _%probe92781%_ '1))
                            (_%loop92778%_
                             (let ((_%next-probe92801%_
                                    (fx+ _%start92774%_
                                         _%i92783%_
                                         (fx* _%i92783%_ _%i92783%_))))
                               (##fxmodulo _%next-probe92801%_ _%size92768%_))
                             (##fx+ _%i92783%_ '1)
                             _%deleted92785%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab92754%_ _%key92755%_ _%value92756%_)
        (if (##fx< (&raw-table-free _%tab92754%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92754%_))
                    '4))
            (__raw-table-rehash! _%tab92754%_)
            '#!void)
        (__immediate-table-set! _%tab92754%_ _%key92755%_ _%value92756%_)))
    (define __immediate-table-set!
      (lambda (_%tab92705%_ _%key92706%_ _%value92707%_)
        (let ((_%table92710%_ (&raw-table-table _%tab92705%_))
              (_%seed92711%_ (&raw-table-seed _%tab92705%_)))
          (let* ((_%h92713%_
                  (fxxor (immediate-hash _%key92706%_) _%seed92711%_))
                 (_%size92716%_ (vector-length _%table92710%_))
                 (_%entries92719%_ (##fxquotient _%size92716%_ '2))
                 (_%start92722%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92713%_ _%entries92719%_)
                   '1)))
            (let _%loop92726%_ ((_%probe92729%_ _%start92722%_)
                                (_%i92731%_ '1)
                                (_%deleted92733%_ '#f))
              (let ((_%k92736%_ (vector-ref _%table92710%_ _%probe92729%_)))
                (if (eq? _%k92736%_ (macro-unused-obj))
                    (if _%deleted92733%_
                        (begin
                          (vector-set!
                           _%table92710%_
                           _%deleted92733%_
                           _%key92706%_)
                          (vector-set!
                           _%table92710%_
                           (##fx+ _%deleted92733%_ '1)
                           _%value92707%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92705%_
                              (##fx+ (&raw-table-count _%tab92705%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92710%_
                           _%probe92729%_
                           _%key92706%_)
                          (vector-set!
                           _%table92710%_
                           (##fx+ _%probe92729%_ '1)
                           _%value92707%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92705%_
                              (##fx- (&raw-table-free _%tab92705%_) '1))
                             (&raw-table-count-set!
                              _%tab92705%_
                              (##fx+ (&raw-table-count _%tab92705%_) '1))))))
                    (if (eq? _%k92736%_ (macro-deleted-obj))
                        (_%loop92726%_
                         (let ((_%next-probe92743%_
                                (fx+ _%start92722%_
                                     _%i92731%_
                                     (fx* _%i92731%_ _%i92731%_))))
                           (##fxmodulo _%next-probe92743%_ _%size92716%_))
                         (##fx+ _%i92731%_ '1)
                         (let ((_%$e92746%_ _%deleted92733%_))
                           (if _%$e92746%_ _%$e92746%_ _%probe92729%_)))
                        (if (eq? _%key92706%_ _%k92736%_)
                            (let ()
                              (vector-set!
                               _%table92710%_
                               _%probe92729%_
                               _%key92706%_)
                              (vector-set!
                               _%table92710%_
                               (##fx+ _%probe92729%_ '1)
                               _%value92707%_))
                            (_%loop92726%_
                             (let ((_%next-probe92751%_
                                    (fx+ _%start92722%_
                                         _%i92731%_
                                         (fx* _%i92731%_ _%i92731%_))))
                               (##fxmodulo _%next-probe92751%_ _%size92716%_))
                             (##fx+ _%i92731%_ '1)
                             _%deleted92733%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab92700%_
               _%key92701%_
               _%immediate-table-update!92702%_
               _%default92703%_)
        (if (##fx< (&raw-table-free _%tab92700%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92700%_))
                    '4))
            (__raw-table-rehash! _%tab92700%_)
            '#!void)
        (__immediate-table-update!
         _%tab92700%_
         _%key92701%_
         _%immediate-table-update!92702%_
         _%default92703%_)))
    (define __immediate-table-update!
      (lambda (_%tab92650%_
               _%key92651%_
               _%immediate-table-update!92652%_
               _%default92653%_)
        (let ((_%table92656%_ (&raw-table-table _%tab92650%_))
              (_%seed92657%_ (&raw-table-seed _%tab92650%_)))
          (let* ((_%h92659%_
                  (fxxor (immediate-hash _%key92651%_) _%seed92657%_))
                 (_%size92662%_ (vector-length _%table92656%_))
                 (_%entries92665%_ (##fxquotient _%size92662%_ '2))
                 (_%start92668%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92659%_ _%entries92665%_)
                   '1)))
            (let _%loop92672%_ ((_%probe92675%_ _%start92668%_)
                                (_%i92677%_ '1)
                                (_%deleted92679%_ '#f))
              (let ((_%k92682%_ (vector-ref _%table92656%_ _%probe92675%_)))
                (if (eq? _%k92682%_ (macro-unused-obj))
                    (if _%deleted92679%_
                        (begin
                          (vector-set!
                           _%table92656%_
                           _%deleted92679%_
                           _%key92651%_)
                          (vector-set!
                           _%table92656%_
                           (##fx+ _%deleted92679%_ '1)
                           (_%immediate-table-update!92652%_ _%default92653%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92650%_
                              (##fx+ (&raw-table-count _%tab92650%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92656%_
                           _%probe92675%_
                           _%key92651%_)
                          (vector-set!
                           _%table92656%_
                           (##fx+ _%probe92675%_ '1)
                           (_%immediate-table-update!92652%_ _%default92653%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92650%_
                              (##fx- (&raw-table-free _%tab92650%_) '1))
                             (&raw-table-count-set!
                              _%tab92650%_
                              (##fx+ (&raw-table-count _%tab92650%_) '1))))))
                    (if (eq? _%k92682%_ (macro-deleted-obj))
                        (_%loop92672%_
                         (let ((_%next-probe92689%_
                                (fx+ _%start92668%_
                                     _%i92677%_
                                     (fx* _%i92677%_ _%i92677%_))))
                           (##fxmodulo _%next-probe92689%_ _%size92662%_))
                         (##fx+ _%i92677%_ '1)
                         (let ((_%$e92692%_ _%deleted92679%_))
                           (if _%$e92692%_ _%$e92692%_ _%probe92675%_)))
                        (if (eq? _%key92651%_ _%k92682%_)
                            (let ()
                              (vector-set!
                               _%table92656%_
                               _%probe92675%_
                               _%key92651%_)
                              (vector-set!
                               _%table92656%_
                               (##fx+ _%probe92675%_ '1)
                               (_%immediate-table-update!92652%_
                                (vector-ref
                                 _%table92656%_
                                 (##fx+ _%probe92675%_ '1)))))
                            (_%loop92672%_
                             (let ((_%next-probe92697%_
                                    (fx+ _%start92668%_
                                         _%i92677%_
                                         (fx* _%i92677%_ _%i92677%_))))
                               (##fxmodulo _%next-probe92697%_ _%size92662%_))
                             (##fx+ _%i92677%_ '1)
                             _%deleted92679%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab92605%_ _%key92607%_)
        (let ((_%table92610%_ (&raw-table-table _%tab92605%_))
              (_%seed92612%_ (&raw-table-seed _%tab92605%_)))
          (let* ((_%h92615%_
                  (fxxor (immediate-hash _%key92607%_) _%seed92612%_))
                 (_%size92618%_ (vector-length _%table92610%_))
                 (_%entries92621%_ (##fxquotient _%size92618%_ '2))
                 (_%start92624%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92615%_ _%entries92621%_)
                   '1)))
            (let _%loop92628%_ ((_%probe92631%_ _%start92624%_)
                                (_%i92633%_ '1))
              (let ((_%k92636%_ (vector-ref _%table92610%_ _%probe92631%_)))
                (if (eq? _%k92636%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92636%_ (macro-deleted-obj))
                        (_%loop92628%_
                         (let ((_%next-probe92641%_
                                (fx+ _%start92624%_
                                     _%i92633%_
                                     (fx* _%i92633%_ _%i92633%_))))
                           (##fxmodulo _%next-probe92641%_ _%size92618%_))
                         (##fx+ _%i92633%_ '1))
                        (if (eq? _%key92607%_ _%k92636%_)
                            (let ()
                              (vector-set!
                               _%table92610%_
                               _%probe92631%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92610%_
                               (##fx+ _%probe92631%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92605%_
                                  (##fx- (&raw-table-count _%tab92605%_)
                                         '1)))))
                            (_%loop92628%_
                             (let ((_%next-probe92647%_
                                    (fx+ _%start92624%_
                                         _%i92633%_
                                         (fx* _%i92633%_ _%i92633%_))))
                               (##fxmodulo _%next-probe92647%_ _%size92618%_))
                             (##fx+ _%i92633%_ '1)))))))))))
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
      (lambda (_%tab92603%_)
        (##unchecked-structure-ref
         _%tab92603%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab92601%_)
        (##unchecked-structure-ref
         _%tab92601%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab92598%_ _%val92599%_)
        (##unchecked-structure-set!
         _%tab92598%_
         _%val92599%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab92595%_ _%val92596%_)
        (##unchecked-structure-set!
         _%tab92595%_
         _%val92596%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint92571%_ _%klass92572%_ _%flags92573%_)
        (let ((_%gcht92575%_
               (__gc-table-new
                (if (fixnum? _%size-hint92571%_) _%size-hint92571%_ '16)
                _%flags92573%_)))
          (##structure _%klass92572%_ _%gcht92575%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint92580%_)
        (let* ((_%klass92582%_ __gc-table::t) (_%flags92584%_ '0))
          (make-gc-table__%
           _%size-hint92580%_
           _%klass92582%_
           _%flags92584%_))))
    (define make-gc-table__1
      (lambda (_%size-hint92586%_ _%klass92587%_)
        (let ((_%flags92589%_ '0))
          (make-gc-table__%
           _%size-hint92586%_
           _%klass92587%_
           _%flags92589%_))))
    (define make-gc-table
      (lambda _g94047_
        (let ((_g94046_ (##length _g94047_)))
          (cond ((##fx= _g94046_ 1) (apply make-gc-table__0 _g94047_))
                ((##fx= _g94046_ 2) (apply make-gc-table__1 _g94047_))
                ((##fx= _g94046_ 3) (apply make-gc-table__% _g94047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g94047_))))))
    (define __gc-table-immediate
      (lambda (_%tab92562%_)
        (let ((_%$e92564%_ (&gc-table-immediate _%tab92562%_)))
          (if _%$e92564%_
              _%$e92564%_
              (let ((_%immediate92568%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab92562%_ _%immediate92568%_)
                _%immediate92568%_)))))
    (define __gc-table-new
      (lambda (_%size92552%_ _%flags92553%_)
        (let* ((_%flags92555%_
                (##fxand _%flags92553%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags92557%_
                (fxior _%flags92555%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht92559%_
                (##gc-hash-table-allocate
                 _%size92552%_
                 _%flags92557%_
                 __gc-table-loads)))
          _%gcht92559%_)))
    (define __gc-table-e
      (lambda (_%tab92547%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht92550%_ (&gc-table-gcht _%tab92547%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht92550%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht92550%_
              (begin
                (__gc-table-rehash! _%tab92547%_)
                (&gc-table-gcht _%tab92547%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab92538%_)
        (let* ((_%old-table92540%_ (&gc-table-gcht _%tab92538%_))
               (_%new-table92542%_
                (##gc-hash-table-resize! _%old-table92540%_ __gc-table-loads))
               (_%gcht92544%_
                (##gc-hash-table-rehash!
                 _%old-table92540%_
                 _%new-table92542%_)))
          (&gc-table-gcht-set! _%tab92538%_ _%gcht92544%_))))
    (define gc-table-ref
      (lambda (_%tab92522%_ _%key92523%_ _%default92524%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key92523%_)
            (let* ((_%gcht92528%_ (__gc-table-e _%tab92522%_))
                   (_%value92530%_
                    (##gc-hash-table-ref _%gcht92528%_ _%key92523%_)))
              (if (eq? _%value92530%_ (macro-unused-obj))
                  _%default92524%_
                  _%value92530%_))
            (let ((_%$e92532%_ (&gc-table-immediate _%tab92522%_)))
              (if _%$e92532%_
                  ((lambda (_%immediate92535%_)
                     (immediate-table-ref
                      _%immediate92535%_
                      _%key92523%_
                      _%default92524%_))
                   _%$e92532%_)
                  _%default92524%_)))))
    (define gc-table-set!
      (lambda (_%tab92515%_ _%key92516%_ _%value92517%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key92516%_)
            (let ((_%gcht92520%_ (__gc-table-e _%tab92515%_)))
              (if (##gc-hash-table-set!
                   _%gcht92520%_
                   _%key92516%_
                   _%value92517%_)
                  (begin
                    (__gc-table-rehash! _%tab92515%_)
                    (gc-table-set! _%tab92515%_ _%key92516%_ _%value92517%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab92515%_)
             _%key92516%_
             _%value92517%_))))
    (define gc-table-update!
      (lambda (_%tab92508%_ _%key92509%_ _%update92510%_ _%default92511%_)
        (if (##mem-allocated? _%key92509%_)
            (let ((_%value92513%_
                   (gc-table-ref _%tab92508%_ _%key92509%_ _%default92511%_)))
              (gc-table-set!
               _%tab92508%_
               _%key92509%_
               (_%update92510%_ _%value92513%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab92508%_)
             _%key92509%_
             _%update92510%_
             _%default92511%_))))
    (define gc-table-delete!
      (lambda (_%tab92496%_ _%key92497%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key92497%_)
            (let ((_%gcht92501%_ (__gc-table-e _%tab92496%_)))
              (if (##gc-hash-table-set!
                   _%gcht92501%_
                   _%key92497%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab92496%_)
                    (gc-table-delete! _%tab92496%_ _%key92497%_))
                  '#!void))
            (let ((_%$e92503%_ (&gc-table-immediate _%tab92496%_)))
              (if _%$e92503%_
                  ((lambda (_%immediate92506%_)
                     (immediate-table-delete! _%immediate92506%_ _%key92497%_))
                   _%$e92503%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab92477%_ _%proc92478%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht92481%_ (__gc-table-e _%tab92477%_)))
            (let _%loop92483%_ ((_%i92485%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i92485%_ (##vector-length _%gcht92481%_))
                  (let ((_%key92487%_ (##vector-ref _%gcht92481%_ _%i92485%_)))
                    (if (if (eq? _%key92487%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92487%_ (macro-deleted-obj))))
                        (_%proc92478%_
                         _%key92487%_
                         (##vector-ref _%gcht92481%_ (##fx+ _%i92485%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop92483%_ (##fx+ _%i92485%_ '2))))
                  '#!void)))
          (let ((_%$e92491%_ (&gc-table-immediate _%tab92477%_)))
            (if _%$e92491%_
                ((lambda (_%immediate92494%_)
                   (raw-table-for-each _%immediate92494%_ _%proc92478%_))
                 _%$e92491%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab92465%_)
        (let* ((_%gcht92467%_ (__gc-table-e _%tab92465%_))
               (_%new-table92469%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht92467%_)
                 (macro-gc-hash-table-flags _%gcht92467%_)))
               (_%result92471%_
                (##structure
                 (##structure-type _%tab92465%_)
                 _%new-table92469%_
                 '#f)))
          (gc-table-for-each
           _%tab92465%_
           (lambda (_%k92474%_ _%v92475%_)
             (gc-table-set! _%result92471%_ _%k92474%_ _%v92475%_)))
          _%result92471%_)))
    (define gc-table-clear!
      (lambda (_%tab92458%_)
        (let* ((_%gcht92460%_ (__gc-table-e _%tab92458%_))
               (_%new-table92462%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht92460%_))))
          (&gc-table-gcht-set! _%tab92458%_ _%new-table92462%_)
          (&gc-table-immediate-set! _%tab92458%_ '#f))))
    (define gc-table-length
      (lambda (_%tab92450%_)
        (let ((_%gcht92452%_ (__gc-table-e _%tab92450%_)))
          (fx+ (macro-gc-hash-table-count _%gcht92452%_)
               (let ((_%$e92454%_ (&gc-table-immediate _%tab92450%_)))
                 (if _%$e92454%_ (&raw-table-count _%$e92454%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj92435%_)
        (declare (not interrupts-enabled))
        (let ((_%val92438%_ (gc-table-ref __object-eq-hash _%obj92435%_ '#f)))
          (if _%val92438%_
              _%val92438%_
              (let* ((_%mix92440%_ __object-eq-hash-next)
                     (_%ptr92442%_ (##type-cast _%obj92435%_ '0))
                     (_%h92444%_
                      (fxand (fxxor _%mix92440%_ _%ptr92442%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e92447%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e92447%_ _%$e92447%_ '0)))
                (gc-table-set! __object-eq-hash _%obj92435%_ _%h92444%_)
                _%h92444%_)))))))
