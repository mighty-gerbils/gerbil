(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712786277)
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
      (lambda (_%tab92239%_)
        (##unchecked-structure-ref
         _%tab92239%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab92237%_)
        (##unchecked-structure-ref
         _%tab92237%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab92235%_)
        (##unchecked-structure-ref
         _%tab92235%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab92233%_)
        (##unchecked-structure-ref
         _%tab92233%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab92231%_)
        (##unchecked-structure-ref
         _%tab92231%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab92229%_)
        (##unchecked-structure-ref
         _%tab92229%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab92226%_ _%val92227%_)
        (##unchecked-structure-set!
         _%tab92226%_
         _%val92227%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab92223%_ _%val92224%_)
        (##unchecked-structure-set!
         _%tab92223%_
         _%val92224%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab92220%_ _%val92221%_)
        (##unchecked-structure-set!
         _%tab92220%_
         _%val92221%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab92217%_ _%val92218%_)
        (##unchecked-structure-set!
         _%tab92217%_
         _%val92218%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab92214%_ _%val92215%_)
        (##unchecked-structure-set!
         _%tab92214%_
         _%val92215%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab92211%_ _%val92212%_)
        (##unchecked-structure-set!
         _%tab92211%_
         _%val92212%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint92209%_)
        (if (and (fixnum? _%size-hint92209%_) (##fx> _%size-hint92209%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint92209%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint92185%_ _%hash92186%_ _%test92187%_ _%seed92188%_)
        (let* ((_%size92190%_ (raw-table-size-hint->size _%size-hint92185%_))
               (_%table92192%_
                (##make-vector _%size92190%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table92192%_
           '0
           (##fxquotient _%size92190%_ '2)
           _%hash92186%_
           _%test92187%_
           _%seed92188%_))))
    (define make-raw-table__0
      (lambda (_%size-hint92198%_ _%hash92199%_ _%test92200%_)
        (let ((_%seed92202%_ '0))
          (make-raw-table__%
           _%size-hint92198%_
           _%hash92199%_
           _%test92200%_
           _%seed92202%_))))
    (define make-raw-table
      (lambda _g92241_
        (let ((_g92240_ (##length _g92241_)))
          (cond ((##fx= _g92240_ 3) (apply make-raw-table__0 _g92241_))
                ((##fx= _g92240_ 4) (apply make-raw-table__% _g92241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g92241_))))))
    (define raw-table-ref
      (lambda (_%tab92136%_ _%key92137%_ _%default92138%_)
        (let ((_%table92140%_ (&raw-table-table _%tab92136%_))
              (_%seed92141%_ (&raw-table-seed _%tab92136%_))
              (_%hash92142%_ (&raw-table-hash _%tab92136%_))
              (_%test92143%_ (&raw-table-test _%tab92136%_)))
          (let* ((_%h92145%_
                  (fxxor (_%hash92142%_ _%key92137%_) _%seed92141%_))
                 (_%size92148%_ (vector-length _%table92140%_))
                 (_%entries92151%_ (##fxquotient _%size92148%_ '2))
                 (_%start92154%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92145%_ _%entries92151%_)
                   '1)))
            (let _%loop92158%_ ((_%probe92161%_ _%start92154%_)
                                (_%i92163%_ '1)
                                (_%deleted92165%_ '#f))
              (let ((_%k92168%_ (vector-ref _%table92140%_ _%probe92161%_)))
                (if (eq? _%k92168%_ (macro-unused-obj))
                    _%default92138%_
                    (if (eq? _%k92168%_ (macro-deleted-obj))
                        (_%loop92158%_
                         (let ((_%next-probe92173%_
                                (fx+ _%start92154%_
                                     _%i92163%_
                                     (fx* _%i92163%_ _%i92163%_))))
                           (##fxmodulo _%next-probe92173%_ _%size92148%_))
                         (##fx+ _%i92163%_ '1)
                         (let ((_%$e92176%_ _%deleted92165%_))
                           (if _%$e92176%_ _%$e92176%_ _%probe92161%_)))
                        (if (_%test92143%_ _%key92137%_ _%k92168%_)
                            (vector-ref
                             _%table92140%_
                             (##fx+ _%probe92161%_ '1))
                            (_%loop92158%_
                             (let ((_%next-probe92181%_
                                    (fx+ _%start92154%_
                                         _%i92163%_
                                         (fx* _%i92163%_ _%i92163%_))))
                               (##fxmodulo _%next-probe92181%_ _%size92148%_))
                             (##fx+ _%i92163%_ '1)
                             _%deleted92165%_))))))))))
    (define raw-table-set!
      (lambda (_%tab92132%_ _%key92133%_ _%value92134%_)
        (if (##fx< (&raw-table-free _%tab92132%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92132%_))
                    '4))
            (__raw-table-rehash! _%tab92132%_)
            '#!void)
        (__raw-table-set! _%tab92132%_ _%key92133%_ _%value92134%_)))
    (define raw-table-update!
      (lambda (_%tab92127%_ _%key92128%_ _%update92129%_ _%default92130%_)
        (if (##fx< (&raw-table-free _%tab92127%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92127%_))
                    '4))
            (__raw-table-rehash! _%tab92127%_)
            '#!void)
        (__raw-table-update!
         _%tab92127%_
         _%key92128%_
         _%update92129%_
         _%default92130%_)))
    (define raw-table-delete!
      (lambda (_%tab92084%_ _%key92085%_)
        (let ((_%table92087%_ (&raw-table-table _%tab92084%_))
              (_%seed92088%_ (&raw-table-seed _%tab92084%_))
              (_%hash92089%_ (&raw-table-hash _%tab92084%_))
              (_%test92090%_ (&raw-table-test _%tab92084%_)))
          (let* ((_%h92092%_
                  (fxxor (_%hash92089%_ _%key92085%_) _%seed92088%_))
                 (_%size92095%_ (vector-length _%table92087%_))
                 (_%entries92098%_ (##fxquotient _%size92095%_ '2))
                 (_%start92101%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92092%_ _%entries92098%_)
                   '1)))
            (let _%loop92105%_ ((_%probe92108%_ _%start92101%_)
                                (_%i92110%_ '1))
              (let ((_%k92113%_ (vector-ref _%table92087%_ _%probe92108%_)))
                (if (eq? _%k92113%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92113%_ (macro-deleted-obj))
                        (_%loop92105%_
                         (let ((_%next-probe92118%_
                                (fx+ _%start92101%_
                                     _%i92110%_
                                     (fx* _%i92110%_ _%i92110%_))))
                           (##fxmodulo _%next-probe92118%_ _%size92095%_))
                         (##fx+ _%i92110%_ '1))
                        (if (_%test92090%_ _%key92085%_ _%k92113%_)
                            (let ()
                              (vector-set!
                               _%table92087%_
                               _%probe92108%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92087%_
                               (##fx+ _%probe92108%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92084%_
                                  (##fx- (&raw-table-count _%tab92084%_)
                                         '1)))))
                            (_%loop92105%_
                             (let ((_%next-probe92124%_
                                    (fx+ _%start92101%_
                                         _%i92110%_
                                         (fx* _%i92110%_ _%i92110%_))))
                               (##fxmodulo _%next-probe92124%_ _%size92095%_))
                             (##fx+ _%i92110%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab92068%_ _%proc92069%_)
        (let* ((_%table92071%_ (&raw-table-table _%tab92068%_))
               (_%size92073%_ (vector-length _%table92071%_)))
          (let _%loop92076%_ ((_%i92078%_ '0))
            (if (##fx< _%i92078%_ _%size92073%_)
                (begin
                  (let ((_%key92080%_ (vector-ref _%table92071%_ _%i92078%_)))
                    (if (and (not (eq? _%key92080%_ (macro-unused-obj)))
                             (not (eq? _%key92080%_ (macro-deleted-obj))))
                        (let ((_%value92082%_
                               (vector-ref
                                _%table92071%_
                                (##fx+ _%i92078%_ '1))))
                          (_%proc92069%_ _%key92080%_ _%value92082%_))
                        '#!void))
                  (_%loop92076%_ (##fx+ _%i92078%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab92064%_)
        (let ((_%new-tab92066%_ (##structure-copy _%tab92064%_)))
          (&raw-table-table-set!
           _%new-tab92066%_
           (vector-copy (&raw-table-table _%tab92064%_)))
          _%new-tab92066%_)))
    (define raw-table-clear!
      (lambda (_%tab92062%_)
        (vector-fill! (&raw-table-table _%tab92062%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab92062%_ '0)
        (&raw-table-free-set!
         _%tab92062%_
         (##fxquotient (vector-length (&raw-table-table _%tab92062%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab92012%_ _%key92013%_ _%value92014%_)
        (let ((_%table92016%_ (&raw-table-table _%tab92012%_))
              (_%seed92017%_ (&raw-table-seed _%tab92012%_))
              (_%hash92018%_ (&raw-table-hash _%tab92012%_))
              (_%test92019%_ (&raw-table-test _%tab92012%_)))
          (let* ((_%h92021%_
                  (fxxor (_%hash92018%_ _%key92013%_) _%seed92017%_))
                 (_%size92024%_ (vector-length _%table92016%_))
                 (_%entries92027%_ (##fxquotient _%size92024%_ '2))
                 (_%start92030%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92021%_ _%entries92027%_)
                   '1)))
            (let _%loop92034%_ ((_%probe92037%_ _%start92030%_)
                                (_%i92039%_ '1)
                                (_%deleted92041%_ '#f))
              (let ((_%k92044%_ (vector-ref _%table92016%_ _%probe92037%_)))
                (if (eq? _%k92044%_ (macro-unused-obj))
                    (if _%deleted92041%_
                        (begin
                          (vector-set!
                           _%table92016%_
                           _%deleted92041%_
                           _%key92013%_)
                          (vector-set!
                           _%table92016%_
                           (##fx+ _%deleted92041%_ '1)
                           _%value92014%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92012%_
                              (##fx+ (&raw-table-count _%tab92012%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92016%_
                           _%probe92037%_
                           _%key92013%_)
                          (vector-set!
                           _%table92016%_
                           (##fx+ _%probe92037%_ '1)
                           _%value92014%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92012%_
                              (##fx- (&raw-table-free _%tab92012%_) '1))
                             (&raw-table-count-set!
                              _%tab92012%_
                              (##fx+ (&raw-table-count _%tab92012%_) '1))))))
                    (if (eq? _%k92044%_ (macro-deleted-obj))
                        (_%loop92034%_
                         (let ((_%next-probe92051%_
                                (fx+ _%start92030%_
                                     _%i92039%_
                                     (fx* _%i92039%_ _%i92039%_))))
                           (##fxmodulo _%next-probe92051%_ _%size92024%_))
                         (##fx+ _%i92039%_ '1)
                         (let ((_%$e92054%_ _%deleted92041%_))
                           (if _%$e92054%_ _%$e92054%_ _%probe92037%_)))
                        (if (_%test92019%_ _%key92013%_ _%k92044%_)
                            (let ()
                              (vector-set!
                               _%table92016%_
                               _%probe92037%_
                               _%key92013%_)
                              (vector-set!
                               _%table92016%_
                               (##fx+ _%probe92037%_ '1)
                               _%value92014%_))
                            (_%loop92034%_
                             (let ((_%next-probe92059%_
                                    (fx+ _%start92030%_
                                         _%i92039%_
                                         (fx* _%i92039%_ _%i92039%_))))
                               (##fxmodulo _%next-probe92059%_ _%size92024%_))
                             (##fx+ _%i92039%_ '1)
                             _%deleted92041%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab91961%_ _%key91962%_ _%update91963%_ _%default91964%_)
        (let ((_%table91966%_ (&raw-table-table _%tab91961%_))
              (_%seed91967%_ (&raw-table-seed _%tab91961%_))
              (_%hash91968%_ (&raw-table-hash _%tab91961%_))
              (_%test91969%_ (&raw-table-test _%tab91961%_)))
          (let* ((_%h91971%_
                  (fxxor (_%hash91968%_ _%key91962%_) _%seed91967%_))
                 (_%size91974%_ (vector-length _%table91966%_))
                 (_%entries91977%_ (##fxquotient _%size91974%_ '2))
                 (_%start91980%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91971%_ _%entries91977%_)
                   '1)))
            (let _%loop91984%_ ((_%probe91987%_ _%start91980%_)
                                (_%i91989%_ '1)
                                (_%deleted91991%_ '#f))
              (let ((_%k91994%_ (vector-ref _%table91966%_ _%probe91987%_)))
                (if (eq? _%k91994%_ (macro-unused-obj))
                    (if _%deleted91991%_
                        (begin
                          (vector-set!
                           _%table91966%_
                           _%deleted91991%_
                           _%key91962%_)
                          (vector-set!
                           _%table91966%_
                           (##fx+ _%deleted91991%_ '1)
                           (_%update91963%_ _%default91964%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91961%_
                              (##fx+ (&raw-table-count _%tab91961%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91966%_
                           _%probe91987%_
                           _%key91962%_)
                          (vector-set!
                           _%table91966%_
                           (##fx+ _%probe91987%_ '1)
                           (_%update91963%_ _%default91964%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91961%_
                              (##fx- (&raw-table-free _%tab91961%_) '1))
                             (&raw-table-count-set!
                              _%tab91961%_
                              (##fx+ (&raw-table-count _%tab91961%_) '1))))))
                    (if (eq? _%k91994%_ (macro-deleted-obj))
                        (_%loop91984%_
                         (let ((_%next-probe92001%_
                                (fx+ _%start91980%_
                                     _%i91989%_
                                     (fx* _%i91989%_ _%i91989%_))))
                           (##fxmodulo _%next-probe92001%_ _%size91974%_))
                         (##fx+ _%i91989%_ '1)
                         (let ((_%$e92004%_ _%deleted91991%_))
                           (if _%$e92004%_ _%$e92004%_ _%probe91987%_)))
                        (if (_%test91969%_ _%key91962%_ _%k91994%_)
                            (let ()
                              (vector-set!
                               _%table91966%_
                               _%probe91987%_
                               _%key91962%_)
                              (vector-set!
                               _%table91966%_
                               (##fx+ _%probe91987%_ '1)
                               (_%update91963%_
                                (vector-ref
                                 _%table91966%_
                                 (##fx+ _%probe91987%_ '1)))))
                            (_%loop91984%_
                             (let ((_%next-probe92009%_
                                    (fx+ _%start91980%_
                                         _%i91989%_
                                         (fx* _%i91989%_ _%i91989%_))))
                               (##fxmodulo _%next-probe92009%_ _%size91974%_))
                             (##fx+ _%i91989%_ '1)
                             _%deleted91991%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab91942%_)
        (let* ((_%old-table91944%_ (&raw-table-table _%tab91942%_))
               (_%old-size91946%_ (vector-length _%old-table91944%_))
               (_%new-size91948%_
                (if (##fx< (&raw-table-count _%tab91942%_)
                           (##fxquotient _%old-size91946%_ '4))
                    (vector-length _%old-table91944%_)
                    (##fx* '2 (vector-length _%old-table91944%_))))
               (_%new-table91950%_
                (##make-vector _%new-size91948%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab91942%_ _%new-table91950%_)
          (&raw-table-count-set! _%tab91942%_ '0)
          (&raw-table-free-set!
           _%tab91942%_
           (##fxquotient _%new-size91948%_ '2))
          (let _%lp91953%_ ((_%i91955%_ '0))
            (if (##fx< _%i91955%_ _%old-size91946%_)
                (begin
                  (let ((_%key91957%_
                         (vector-ref _%old-table91944%_ _%i91955%_)))
                    (if (and (not (eq? _%key91957%_ (macro-unused-obj)))
                             (not (eq? _%key91957%_ (macro-deleted-obj))))
                        (let ((_%value91959%_
                               (vector-ref
                                _%old-table91944%_
                                (##fx+ _%i91955%_ '1))))
                          (__raw-table-set!
                           _%tab91942%_
                           _%key91957%_
                           _%value91959%_))
                        '#!void))
                  (_%lp91953%_ (##fx+ _%i91955%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj91934%_)
        (let ((_%t91936%_ (##type _%obj91934%_)))
          (if (##fx= (##fxand _%t91936%_ '1) '0)
              (fxand (##type-cast _%obj91934%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj91934%_)
                  (symbolic-hash _%obj91934%_)
                  (if (procedure? _%obj91934%_)
                      (procedure-hash _%obj91934%_)
                      (fxand (__eq-hash _%obj91934%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj91930%_)
        (let ((_%h91932%_
               (if (##closure? _%obj91930%_)
                   (__eq-hash _%obj91930%_)
                   (##type-cast _%obj91930%_ '0))))
          (fxand _%h91932%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj91927%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj91927%_)))
    (define eqv-hash
      (lambda (_%obj91917%_)
        (letrec ((_%combine91919%_
                  (lambda (_%a91924%_ _%b91925%_)
                    (fxand (##fx* (##fx+ _%a91924%_
                                         (fxarithmetic-shift-left
                                          _%b91925%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash91920%_
                  (lambda (_%obj91922%_)
                    (macro-number-dispatch
                     _%obj91922%_
                     (eq-hash _%obj91922%_)
                     (fxand _%obj91922%_ (macro-max-fixnum32))
                     (modulo _%obj91922%_ '331804481)
                     (_%combine91919%_
                      (_%hash91920%_ (macro-ratnum-numerator _%obj91922%_))
                      (_%hash91920%_ (macro-ratnum-denominator _%obj91922%_)))
                     (_%combine91919%_
                      (##u16vector-ref _%obj91922%_ '0)
                      (_%combine91919%_
                       (##u16vector-ref _%obj91922%_ '1)
                       (_%combine91919%_
                        (##u16vector-ref _%obj91922%_ '2)
                        (##u16vector-ref _%obj91922%_ '3))))
                     (_%combine91919%_
                      (_%hash91920%_ (macro-cpxnum-real _%obj91922%_))
                      (_%hash91920%_ (macro-cpxnum-imag _%obj91922%_)))))))
          (_%hash91920%_ _%obj91917%_))))
    (define symbolic?
      (lambda (_%obj91912%_)
        (let ((_%$e91914%_ (symbol? _%obj91912%_)))
          (if _%$e91914%_ _%$e91914%_ (keyword? _%obj91912%_)))))
    (define symbolic-hash (lambda (_%obj91910%_) (macro-slot '1 _%obj91910%_)))
    (define string-hash (lambda (_%obj91908%_) (##string=?-hash _%obj91908%_)))
    (define immediate-hash
      (lambda (_%obj91906%_) (##type-cast _%obj91906%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint91887%_ _%seed91889%_)
        (make-raw-table__% _%size-hint91887%_ eq-hash eq? _%seed91889%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint91895%_ '#f) (_%seed91897%_ '0))
          (make-eq-table__% _%size-hint91895%_ _%seed91897%_))))
    (define make-eq-table__1
      (lambda (_%size-hint91899%_)
        (let ((_%seed91901%_ '0))
          (make-eq-table__% _%size-hint91899%_ _%seed91901%_))))
    (define make-eq-table
      (lambda _g92243_
        (let ((_g92242_ (##length _g92243_)))
          (cond ((##fx= _g92242_ 0) (apply make-eq-table__0 _g92243_))
                ((##fx= _g92242_ 1) (apply make-eq-table__1 _g92243_))
                ((##fx= _g92242_ 2) (apply make-eq-table__% _g92243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g92243_))))))
    (define eq-table-ref
      (lambda (_%tab91840%_ _%key91841%_ _%default91842%_)
        (let ((_%table91844%_ (&raw-table-table _%tab91840%_))
              (_%seed91845%_ (&raw-table-seed _%tab91840%_)))
          (let* ((_%h91847%_ (fxxor (eq-hash _%key91841%_) _%seed91845%_))
                 (_%size91850%_ (vector-length _%table91844%_))
                 (_%entries91853%_ (##fxquotient _%size91850%_ '2))
                 (_%start91856%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91847%_ _%entries91853%_)
                   '1)))
            (let _%loop91860%_ ((_%probe91863%_ _%start91856%_)
                                (_%i91865%_ '1)
                                (_%deleted91867%_ '#f))
              (let ((_%k91870%_ (vector-ref _%table91844%_ _%probe91863%_)))
                (if (eq? _%k91870%_ (macro-unused-obj))
                    _%default91842%_
                    (if (eq? _%k91870%_ (macro-deleted-obj))
                        (_%loop91860%_
                         (let ((_%next-probe91875%_
                                (fx+ _%start91856%_
                                     _%i91865%_
                                     (fx* _%i91865%_ _%i91865%_))))
                           (##fxmodulo _%next-probe91875%_ _%size91850%_))
                         (##fx+ _%i91865%_ '1)
                         (let ((_%$e91878%_ _%deleted91867%_))
                           (if _%$e91878%_ _%$e91878%_ _%probe91863%_)))
                        (if (eq? _%key91841%_ _%k91870%_)
                            (vector-ref
                             _%table91844%_
                             (##fx+ _%probe91863%_ '1))
                            (_%loop91860%_
                             (let ((_%next-probe91883%_
                                    (fx+ _%start91856%_
                                         _%i91865%_
                                         (fx* _%i91865%_ _%i91865%_))))
                               (##fxmodulo _%next-probe91883%_ _%size91850%_))
                             (##fx+ _%i91865%_ '1)
                             _%deleted91867%_))))))))))
    (define eq-table-set!
      (lambda (_%tab91836%_ _%key91837%_ _%value91838%_)
        (if (##fx< (&raw-table-free _%tab91836%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91836%_))
                    '4))
            (__raw-table-rehash! _%tab91836%_)
            '#!void)
        (__eq-table-set! _%tab91836%_ _%key91837%_ _%value91838%_)))
    (define __eq-table-set!
      (lambda (_%tab91787%_ _%key91788%_ _%value91789%_)
        (let ((_%table91792%_ (&raw-table-table _%tab91787%_))
              (_%seed91793%_ (&raw-table-seed _%tab91787%_)))
          (let* ((_%h91795%_ (fxxor (eq-hash _%key91788%_) _%seed91793%_))
                 (_%size91798%_ (vector-length _%table91792%_))
                 (_%entries91801%_ (##fxquotient _%size91798%_ '2))
                 (_%start91804%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91795%_ _%entries91801%_)
                   '1)))
            (let _%loop91808%_ ((_%probe91811%_ _%start91804%_)
                                (_%i91813%_ '1)
                                (_%deleted91815%_ '#f))
              (let ((_%k91818%_ (vector-ref _%table91792%_ _%probe91811%_)))
                (if (eq? _%k91818%_ (macro-unused-obj))
                    (if _%deleted91815%_
                        (begin
                          (vector-set!
                           _%table91792%_
                           _%deleted91815%_
                           _%key91788%_)
                          (vector-set!
                           _%table91792%_
                           (##fx+ _%deleted91815%_ '1)
                           _%value91789%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91787%_
                              (##fx+ (&raw-table-count _%tab91787%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91792%_
                           _%probe91811%_
                           _%key91788%_)
                          (vector-set!
                           _%table91792%_
                           (##fx+ _%probe91811%_ '1)
                           _%value91789%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91787%_
                              (##fx- (&raw-table-free _%tab91787%_) '1))
                             (&raw-table-count-set!
                              _%tab91787%_
                              (##fx+ (&raw-table-count _%tab91787%_) '1))))))
                    (if (eq? _%k91818%_ (macro-deleted-obj))
                        (_%loop91808%_
                         (let ((_%next-probe91825%_
                                (fx+ _%start91804%_
                                     _%i91813%_
                                     (fx* _%i91813%_ _%i91813%_))))
                           (##fxmodulo _%next-probe91825%_ _%size91798%_))
                         (##fx+ _%i91813%_ '1)
                         (let ((_%$e91828%_ _%deleted91815%_))
                           (if _%$e91828%_ _%$e91828%_ _%probe91811%_)))
                        (if (eq? _%key91788%_ _%k91818%_)
                            (let ()
                              (vector-set!
                               _%table91792%_
                               _%probe91811%_
                               _%key91788%_)
                              (vector-set!
                               _%table91792%_
                               (##fx+ _%probe91811%_ '1)
                               _%value91789%_))
                            (_%loop91808%_
                             (let ((_%next-probe91833%_
                                    (fx+ _%start91804%_
                                         _%i91813%_
                                         (fx* _%i91813%_ _%i91813%_))))
                               (##fxmodulo _%next-probe91833%_ _%size91798%_))
                             (##fx+ _%i91813%_ '1)
                             _%deleted91815%_))))))))))
    (define eq-table-update!
      (lambda (_%tab91782%_
               _%key91783%_
               _%eq-table-update!91784%_
               _%default91785%_)
        (if (##fx< (&raw-table-free _%tab91782%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91782%_))
                    '4))
            (__raw-table-rehash! _%tab91782%_)
            '#!void)
        (__eq-table-update!
         _%tab91782%_
         _%key91783%_
         _%eq-table-update!91784%_
         _%default91785%_)))
    (define __eq-table-update!
      (lambda (_%tab91732%_
               _%key91733%_
               _%eq-table-update!91734%_
               _%default91735%_)
        (let ((_%table91738%_ (&raw-table-table _%tab91732%_))
              (_%seed91739%_ (&raw-table-seed _%tab91732%_)))
          (let* ((_%h91741%_ (fxxor (eq-hash _%key91733%_) _%seed91739%_))
                 (_%size91744%_ (vector-length _%table91738%_))
                 (_%entries91747%_ (##fxquotient _%size91744%_ '2))
                 (_%start91750%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91741%_ _%entries91747%_)
                   '1)))
            (let _%loop91754%_ ((_%probe91757%_ _%start91750%_)
                                (_%i91759%_ '1)
                                (_%deleted91761%_ '#f))
              (let ((_%k91764%_ (vector-ref _%table91738%_ _%probe91757%_)))
                (if (eq? _%k91764%_ (macro-unused-obj))
                    (if _%deleted91761%_
                        (begin
                          (vector-set!
                           _%table91738%_
                           _%deleted91761%_
                           _%key91733%_)
                          (vector-set!
                           _%table91738%_
                           (##fx+ _%deleted91761%_ '1)
                           (_%eq-table-update!91734%_ _%default91735%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91732%_
                              (##fx+ (&raw-table-count _%tab91732%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91738%_
                           _%probe91757%_
                           _%key91733%_)
                          (vector-set!
                           _%table91738%_
                           (##fx+ _%probe91757%_ '1)
                           (_%eq-table-update!91734%_ _%default91735%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91732%_
                              (##fx- (&raw-table-free _%tab91732%_) '1))
                             (&raw-table-count-set!
                              _%tab91732%_
                              (##fx+ (&raw-table-count _%tab91732%_) '1))))))
                    (if (eq? _%k91764%_ (macro-deleted-obj))
                        (_%loop91754%_
                         (let ((_%next-probe91771%_
                                (fx+ _%start91750%_
                                     _%i91759%_
                                     (fx* _%i91759%_ _%i91759%_))))
                           (##fxmodulo _%next-probe91771%_ _%size91744%_))
                         (##fx+ _%i91759%_ '1)
                         (let ((_%$e91774%_ _%deleted91761%_))
                           (if _%$e91774%_ _%$e91774%_ _%probe91757%_)))
                        (if (eq? _%key91733%_ _%k91764%_)
                            (let ()
                              (vector-set!
                               _%table91738%_
                               _%probe91757%_
                               _%key91733%_)
                              (vector-set!
                               _%table91738%_
                               (##fx+ _%probe91757%_ '1)
                               (_%eq-table-update!91734%_
                                (vector-ref
                                 _%table91738%_
                                 (##fx+ _%probe91757%_ '1)))))
                            (_%loop91754%_
                             (let ((_%next-probe91779%_
                                    (fx+ _%start91750%_
                                         _%i91759%_
                                         (fx* _%i91759%_ _%i91759%_))))
                               (##fxmodulo _%next-probe91779%_ _%size91744%_))
                             (##fx+ _%i91759%_ '1)
                             _%deleted91761%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab91687%_ _%key91689%_)
        (let ((_%table91692%_ (&raw-table-table _%tab91687%_))
              (_%seed91694%_ (&raw-table-seed _%tab91687%_)))
          (let* ((_%h91697%_ (fxxor (eq-hash _%key91689%_) _%seed91694%_))
                 (_%size91700%_ (vector-length _%table91692%_))
                 (_%entries91703%_ (##fxquotient _%size91700%_ '2))
                 (_%start91706%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91697%_ _%entries91703%_)
                   '1)))
            (let _%loop91710%_ ((_%probe91713%_ _%start91706%_)
                                (_%i91715%_ '1))
              (let ((_%k91718%_ (vector-ref _%table91692%_ _%probe91713%_)))
                (if (eq? _%k91718%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91718%_ (macro-deleted-obj))
                        (_%loop91710%_
                         (let ((_%next-probe91723%_
                                (fx+ _%start91706%_
                                     _%i91715%_
                                     (fx* _%i91715%_ _%i91715%_))))
                           (##fxmodulo _%next-probe91723%_ _%size91700%_))
                         (##fx+ _%i91715%_ '1))
                        (if (eq? _%key91689%_ _%k91718%_)
                            (let ()
                              (vector-set!
                               _%table91692%_
                               _%probe91713%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91692%_
                               (##fx+ _%probe91713%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91687%_
                                  (##fx- (&raw-table-count _%tab91687%_)
                                         '1)))))
                            (_%loop91710%_
                             (let ((_%next-probe91729%_
                                    (fx+ _%start91706%_
                                         _%i91715%_
                                         (fx* _%i91715%_ _%i91715%_))))
                               (##fxmodulo _%next-probe91729%_ _%size91700%_))
                             (##fx+ _%i91715%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint91668%_ _%seed91670%_)
        (make-raw-table__% _%size-hint91668%_ eqv-hash eqv? _%seed91670%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint91676%_ '#f) (_%seed91678%_ '0))
          (make-eqv-table__% _%size-hint91676%_ _%seed91678%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint91680%_)
        (let ((_%seed91682%_ '0))
          (make-eqv-table__% _%size-hint91680%_ _%seed91682%_))))
    (define make-eqv-table
      (lambda _g92245_
        (let ((_g92244_ (##length _g92245_)))
          (cond ((##fx= _g92244_ 0) (apply make-eqv-table__0 _g92245_))
                ((##fx= _g92244_ 1) (apply make-eqv-table__1 _g92245_))
                ((##fx= _g92244_ 2) (apply make-eqv-table__% _g92245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g92245_))))))
    (define eqv-table-ref
      (lambda (_%tab91621%_ _%key91622%_ _%default91623%_)
        (let ((_%table91625%_ (&raw-table-table _%tab91621%_))
              (_%seed91626%_ (&raw-table-seed _%tab91621%_)))
          (let* ((_%h91628%_ (fxxor (eqv-hash _%key91622%_) _%seed91626%_))
                 (_%size91631%_ (vector-length _%table91625%_))
                 (_%entries91634%_ (##fxquotient _%size91631%_ '2))
                 (_%start91637%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91628%_ _%entries91634%_)
                   '1)))
            (let _%loop91641%_ ((_%probe91644%_ _%start91637%_)
                                (_%i91646%_ '1)
                                (_%deleted91648%_ '#f))
              (let ((_%k91651%_ (vector-ref _%table91625%_ _%probe91644%_)))
                (if (eq? _%k91651%_ (macro-unused-obj))
                    _%default91623%_
                    (if (eq? _%k91651%_ (macro-deleted-obj))
                        (_%loop91641%_
                         (let ((_%next-probe91656%_
                                (fx+ _%start91637%_
                                     _%i91646%_
                                     (fx* _%i91646%_ _%i91646%_))))
                           (##fxmodulo _%next-probe91656%_ _%size91631%_))
                         (##fx+ _%i91646%_ '1)
                         (let ((_%$e91659%_ _%deleted91648%_))
                           (if _%$e91659%_ _%$e91659%_ _%probe91644%_)))
                        (if (eqv? _%key91622%_ _%k91651%_)
                            (vector-ref
                             _%table91625%_
                             (##fx+ _%probe91644%_ '1))
                            (_%loop91641%_
                             (let ((_%next-probe91664%_
                                    (fx+ _%start91637%_
                                         _%i91646%_
                                         (fx* _%i91646%_ _%i91646%_))))
                               (##fxmodulo _%next-probe91664%_ _%size91631%_))
                             (##fx+ _%i91646%_ '1)
                             _%deleted91648%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab91617%_ _%key91618%_ _%value91619%_)
        (if (##fx< (&raw-table-free _%tab91617%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91617%_))
                    '4))
            (__raw-table-rehash! _%tab91617%_)
            '#!void)
        (__eqv-table-set! _%tab91617%_ _%key91618%_ _%value91619%_)))
    (define __eqv-table-set!
      (lambda (_%tab91568%_ _%key91569%_ _%value91570%_)
        (let ((_%table91573%_ (&raw-table-table _%tab91568%_))
              (_%seed91574%_ (&raw-table-seed _%tab91568%_)))
          (let* ((_%h91576%_ (fxxor (eqv-hash _%key91569%_) _%seed91574%_))
                 (_%size91579%_ (vector-length _%table91573%_))
                 (_%entries91582%_ (##fxquotient _%size91579%_ '2))
                 (_%start91585%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91576%_ _%entries91582%_)
                   '1)))
            (let _%loop91589%_ ((_%probe91592%_ _%start91585%_)
                                (_%i91594%_ '1)
                                (_%deleted91596%_ '#f))
              (let ((_%k91599%_ (vector-ref _%table91573%_ _%probe91592%_)))
                (if (eq? _%k91599%_ (macro-unused-obj))
                    (if _%deleted91596%_
                        (begin
                          (vector-set!
                           _%table91573%_
                           _%deleted91596%_
                           _%key91569%_)
                          (vector-set!
                           _%table91573%_
                           (##fx+ _%deleted91596%_ '1)
                           _%value91570%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91568%_
                              (##fx+ (&raw-table-count _%tab91568%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91573%_
                           _%probe91592%_
                           _%key91569%_)
                          (vector-set!
                           _%table91573%_
                           (##fx+ _%probe91592%_ '1)
                           _%value91570%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91568%_
                              (##fx- (&raw-table-free _%tab91568%_) '1))
                             (&raw-table-count-set!
                              _%tab91568%_
                              (##fx+ (&raw-table-count _%tab91568%_) '1))))))
                    (if (eq? _%k91599%_ (macro-deleted-obj))
                        (_%loop91589%_
                         (let ((_%next-probe91606%_
                                (fx+ _%start91585%_
                                     _%i91594%_
                                     (fx* _%i91594%_ _%i91594%_))))
                           (##fxmodulo _%next-probe91606%_ _%size91579%_))
                         (##fx+ _%i91594%_ '1)
                         (let ((_%$e91609%_ _%deleted91596%_))
                           (if _%$e91609%_ _%$e91609%_ _%probe91592%_)))
                        (if (eqv? _%key91569%_ _%k91599%_)
                            (let ()
                              (vector-set!
                               _%table91573%_
                               _%probe91592%_
                               _%key91569%_)
                              (vector-set!
                               _%table91573%_
                               (##fx+ _%probe91592%_ '1)
                               _%value91570%_))
                            (_%loop91589%_
                             (let ((_%next-probe91614%_
                                    (fx+ _%start91585%_
                                         _%i91594%_
                                         (fx* _%i91594%_ _%i91594%_))))
                               (##fxmodulo _%next-probe91614%_ _%size91579%_))
                             (##fx+ _%i91594%_ '1)
                             _%deleted91596%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab91563%_
               _%key91564%_
               _%eqv-table-update!91565%_
               _%default91566%_)
        (if (##fx< (&raw-table-free _%tab91563%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91563%_))
                    '4))
            (__raw-table-rehash! _%tab91563%_)
            '#!void)
        (__eqv-table-update!
         _%tab91563%_
         _%key91564%_
         _%eqv-table-update!91565%_
         _%default91566%_)))
    (define __eqv-table-update!
      (lambda (_%tab91513%_
               _%key91514%_
               _%eqv-table-update!91515%_
               _%default91516%_)
        (let ((_%table91519%_ (&raw-table-table _%tab91513%_))
              (_%seed91520%_ (&raw-table-seed _%tab91513%_)))
          (let* ((_%h91522%_ (fxxor (eqv-hash _%key91514%_) _%seed91520%_))
                 (_%size91525%_ (vector-length _%table91519%_))
                 (_%entries91528%_ (##fxquotient _%size91525%_ '2))
                 (_%start91531%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91522%_ _%entries91528%_)
                   '1)))
            (let _%loop91535%_ ((_%probe91538%_ _%start91531%_)
                                (_%i91540%_ '1)
                                (_%deleted91542%_ '#f))
              (let ((_%k91545%_ (vector-ref _%table91519%_ _%probe91538%_)))
                (if (eq? _%k91545%_ (macro-unused-obj))
                    (if _%deleted91542%_
                        (begin
                          (vector-set!
                           _%table91519%_
                           _%deleted91542%_
                           _%key91514%_)
                          (vector-set!
                           _%table91519%_
                           (##fx+ _%deleted91542%_ '1)
                           (_%eqv-table-update!91515%_ _%default91516%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91513%_
                              (##fx+ (&raw-table-count _%tab91513%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91519%_
                           _%probe91538%_
                           _%key91514%_)
                          (vector-set!
                           _%table91519%_
                           (##fx+ _%probe91538%_ '1)
                           (_%eqv-table-update!91515%_ _%default91516%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91513%_
                              (##fx- (&raw-table-free _%tab91513%_) '1))
                             (&raw-table-count-set!
                              _%tab91513%_
                              (##fx+ (&raw-table-count _%tab91513%_) '1))))))
                    (if (eq? _%k91545%_ (macro-deleted-obj))
                        (_%loop91535%_
                         (let ((_%next-probe91552%_
                                (fx+ _%start91531%_
                                     _%i91540%_
                                     (fx* _%i91540%_ _%i91540%_))))
                           (##fxmodulo _%next-probe91552%_ _%size91525%_))
                         (##fx+ _%i91540%_ '1)
                         (let ((_%$e91555%_ _%deleted91542%_))
                           (if _%$e91555%_ _%$e91555%_ _%probe91538%_)))
                        (if (eqv? _%key91514%_ _%k91545%_)
                            (let ()
                              (vector-set!
                               _%table91519%_
                               _%probe91538%_
                               _%key91514%_)
                              (vector-set!
                               _%table91519%_
                               (##fx+ _%probe91538%_ '1)
                               (_%eqv-table-update!91515%_
                                (vector-ref
                                 _%table91519%_
                                 (##fx+ _%probe91538%_ '1)))))
                            (_%loop91535%_
                             (let ((_%next-probe91560%_
                                    (fx+ _%start91531%_
                                         _%i91540%_
                                         (fx* _%i91540%_ _%i91540%_))))
                               (##fxmodulo _%next-probe91560%_ _%size91525%_))
                             (##fx+ _%i91540%_ '1)
                             _%deleted91542%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab91468%_ _%key91470%_)
        (let ((_%table91473%_ (&raw-table-table _%tab91468%_))
              (_%seed91475%_ (&raw-table-seed _%tab91468%_)))
          (let* ((_%h91478%_ (fxxor (eqv-hash _%key91470%_) _%seed91475%_))
                 (_%size91481%_ (vector-length _%table91473%_))
                 (_%entries91484%_ (##fxquotient _%size91481%_ '2))
                 (_%start91487%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91478%_ _%entries91484%_)
                   '1)))
            (let _%loop91491%_ ((_%probe91494%_ _%start91487%_)
                                (_%i91496%_ '1))
              (let ((_%k91499%_ (vector-ref _%table91473%_ _%probe91494%_)))
                (if (eq? _%k91499%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91499%_ (macro-deleted-obj))
                        (_%loop91491%_
                         (let ((_%next-probe91504%_
                                (fx+ _%start91487%_
                                     _%i91496%_
                                     (fx* _%i91496%_ _%i91496%_))))
                           (##fxmodulo _%next-probe91504%_ _%size91481%_))
                         (##fx+ _%i91496%_ '1))
                        (if (eqv? _%key91470%_ _%k91499%_)
                            (let ()
                              (vector-set!
                               _%table91473%_
                               _%probe91494%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91473%_
                               (##fx+ _%probe91494%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91468%_
                                  (##fx- (&raw-table-count _%tab91468%_)
                                         '1)))))
                            (_%loop91491%_
                             (let ((_%next-probe91510%_
                                    (fx+ _%start91487%_
                                         _%i91496%_
                                         (fx* _%i91496%_ _%i91496%_))))
                               (##fxmodulo _%next-probe91510%_ _%size91481%_))
                             (##fx+ _%i91496%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint91449%_ _%seed91451%_)
        (make-raw-table__%
         _%size-hint91449%_
         symbolic-hash
         eq?
         _%seed91451%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint91457%_ '#f) (_%seed91459%_ '0))
          (make-symbolic-table__% _%size-hint91457%_ _%seed91459%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint91461%_)
        (let ((_%seed91463%_ '0))
          (make-symbolic-table__% _%size-hint91461%_ _%seed91463%_))))
    (define make-symbolic-table
      (lambda _g92247_
        (let ((_g92246_ (##length _g92247_)))
          (cond ((##fx= _g92246_ 0) (apply make-symbolic-table__0 _g92247_))
                ((##fx= _g92246_ 1) (apply make-symbolic-table__1 _g92247_))
                ((##fx= _g92246_ 2) (apply make-symbolic-table__% _g92247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g92247_))))))
    (define symbolic-table-ref
      (lambda (_%tab91402%_ _%key91403%_ _%default91404%_)
        (let ((_%table91406%_ (&raw-table-table _%tab91402%_))
              (_%seed91407%_ (&raw-table-seed _%tab91402%_)))
          (let* ((_%h91409%_
                  (fxxor (symbolic-hash _%key91403%_) _%seed91407%_))
                 (_%size91412%_ (vector-length _%table91406%_))
                 (_%entries91415%_ (##fxquotient _%size91412%_ '2))
                 (_%start91418%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91409%_ _%entries91415%_)
                   '1)))
            (let _%loop91422%_ ((_%probe91425%_ _%start91418%_)
                                (_%i91427%_ '1)
                                (_%deleted91429%_ '#f))
              (let ((_%k91432%_ (vector-ref _%table91406%_ _%probe91425%_)))
                (if (eq? _%k91432%_ (macro-unused-obj))
                    _%default91404%_
                    (if (eq? _%k91432%_ (macro-deleted-obj))
                        (_%loop91422%_
                         (let ((_%next-probe91437%_
                                (fx+ _%start91418%_
                                     _%i91427%_
                                     (fx* _%i91427%_ _%i91427%_))))
                           (##fxmodulo _%next-probe91437%_ _%size91412%_))
                         (##fx+ _%i91427%_ '1)
                         (let ((_%$e91440%_ _%deleted91429%_))
                           (if _%$e91440%_ _%$e91440%_ _%probe91425%_)))
                        (if (eq? _%key91403%_ _%k91432%_)
                            (vector-ref
                             _%table91406%_
                             (##fx+ _%probe91425%_ '1))
                            (_%loop91422%_
                             (let ((_%next-probe91445%_
                                    (fx+ _%start91418%_
                                         _%i91427%_
                                         (fx* _%i91427%_ _%i91427%_))))
                               (##fxmodulo _%next-probe91445%_ _%size91412%_))
                             (##fx+ _%i91427%_ '1)
                             _%deleted91429%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab91398%_ _%key91399%_ _%value91400%_)
        (if (##fx< (&raw-table-free _%tab91398%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91398%_))
                    '4))
            (__raw-table-rehash! _%tab91398%_)
            '#!void)
        (__symbolic-table-set! _%tab91398%_ _%key91399%_ _%value91400%_)))
    (define __symbolic-table-set!
      (lambda (_%tab91349%_ _%key91350%_ _%value91351%_)
        (let ((_%table91354%_ (&raw-table-table _%tab91349%_))
              (_%seed91355%_ (&raw-table-seed _%tab91349%_)))
          (let* ((_%h91357%_
                  (fxxor (symbolic-hash _%key91350%_) _%seed91355%_))
                 (_%size91360%_ (vector-length _%table91354%_))
                 (_%entries91363%_ (##fxquotient _%size91360%_ '2))
                 (_%start91366%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91357%_ _%entries91363%_)
                   '1)))
            (let _%loop91370%_ ((_%probe91373%_ _%start91366%_)
                                (_%i91375%_ '1)
                                (_%deleted91377%_ '#f))
              (let ((_%k91380%_ (vector-ref _%table91354%_ _%probe91373%_)))
                (if (eq? _%k91380%_ (macro-unused-obj))
                    (if _%deleted91377%_
                        (begin
                          (vector-set!
                           _%table91354%_
                           _%deleted91377%_
                           _%key91350%_)
                          (vector-set!
                           _%table91354%_
                           (##fx+ _%deleted91377%_ '1)
                           _%value91351%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91349%_
                              (##fx+ (&raw-table-count _%tab91349%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91354%_
                           _%probe91373%_
                           _%key91350%_)
                          (vector-set!
                           _%table91354%_
                           (##fx+ _%probe91373%_ '1)
                           _%value91351%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91349%_
                              (##fx- (&raw-table-free _%tab91349%_) '1))
                             (&raw-table-count-set!
                              _%tab91349%_
                              (##fx+ (&raw-table-count _%tab91349%_) '1))))))
                    (if (eq? _%k91380%_ (macro-deleted-obj))
                        (_%loop91370%_
                         (let ((_%next-probe91387%_
                                (fx+ _%start91366%_
                                     _%i91375%_
                                     (fx* _%i91375%_ _%i91375%_))))
                           (##fxmodulo _%next-probe91387%_ _%size91360%_))
                         (##fx+ _%i91375%_ '1)
                         (let ((_%$e91390%_ _%deleted91377%_))
                           (if _%$e91390%_ _%$e91390%_ _%probe91373%_)))
                        (if (eq? _%key91350%_ _%k91380%_)
                            (let ()
                              (vector-set!
                               _%table91354%_
                               _%probe91373%_
                               _%key91350%_)
                              (vector-set!
                               _%table91354%_
                               (##fx+ _%probe91373%_ '1)
                               _%value91351%_))
                            (_%loop91370%_
                             (let ((_%next-probe91395%_
                                    (fx+ _%start91366%_
                                         _%i91375%_
                                         (fx* _%i91375%_ _%i91375%_))))
                               (##fxmodulo _%next-probe91395%_ _%size91360%_))
                             (##fx+ _%i91375%_ '1)
                             _%deleted91377%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab91344%_
               _%key91345%_
               _%symbolic-table-update!91346%_
               _%default91347%_)
        (if (##fx< (&raw-table-free _%tab91344%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91344%_))
                    '4))
            (__raw-table-rehash! _%tab91344%_)
            '#!void)
        (__symbolic-table-update!
         _%tab91344%_
         _%key91345%_
         _%symbolic-table-update!91346%_
         _%default91347%_)))
    (define __symbolic-table-update!
      (lambda (_%tab91294%_
               _%key91295%_
               _%symbolic-table-update!91296%_
               _%default91297%_)
        (let ((_%table91300%_ (&raw-table-table _%tab91294%_))
              (_%seed91301%_ (&raw-table-seed _%tab91294%_)))
          (let* ((_%h91303%_
                  (fxxor (symbolic-hash _%key91295%_) _%seed91301%_))
                 (_%size91306%_ (vector-length _%table91300%_))
                 (_%entries91309%_ (##fxquotient _%size91306%_ '2))
                 (_%start91312%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91303%_ _%entries91309%_)
                   '1)))
            (let _%loop91316%_ ((_%probe91319%_ _%start91312%_)
                                (_%i91321%_ '1)
                                (_%deleted91323%_ '#f))
              (let ((_%k91326%_ (vector-ref _%table91300%_ _%probe91319%_)))
                (if (eq? _%k91326%_ (macro-unused-obj))
                    (if _%deleted91323%_
                        (begin
                          (vector-set!
                           _%table91300%_
                           _%deleted91323%_
                           _%key91295%_)
                          (vector-set!
                           _%table91300%_
                           (##fx+ _%deleted91323%_ '1)
                           (_%symbolic-table-update!91296%_ _%default91297%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91294%_
                              (##fx+ (&raw-table-count _%tab91294%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91300%_
                           _%probe91319%_
                           _%key91295%_)
                          (vector-set!
                           _%table91300%_
                           (##fx+ _%probe91319%_ '1)
                           (_%symbolic-table-update!91296%_ _%default91297%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91294%_
                              (##fx- (&raw-table-free _%tab91294%_) '1))
                             (&raw-table-count-set!
                              _%tab91294%_
                              (##fx+ (&raw-table-count _%tab91294%_) '1))))))
                    (if (eq? _%k91326%_ (macro-deleted-obj))
                        (_%loop91316%_
                         (let ((_%next-probe91333%_
                                (fx+ _%start91312%_
                                     _%i91321%_
                                     (fx* _%i91321%_ _%i91321%_))))
                           (##fxmodulo _%next-probe91333%_ _%size91306%_))
                         (##fx+ _%i91321%_ '1)
                         (let ((_%$e91336%_ _%deleted91323%_))
                           (if _%$e91336%_ _%$e91336%_ _%probe91319%_)))
                        (if (eq? _%key91295%_ _%k91326%_)
                            (let ()
                              (vector-set!
                               _%table91300%_
                               _%probe91319%_
                               _%key91295%_)
                              (vector-set!
                               _%table91300%_
                               (##fx+ _%probe91319%_ '1)
                               (_%symbolic-table-update!91296%_
                                (vector-ref
                                 _%table91300%_
                                 (##fx+ _%probe91319%_ '1)))))
                            (_%loop91316%_
                             (let ((_%next-probe91341%_
                                    (fx+ _%start91312%_
                                         _%i91321%_
                                         (fx* _%i91321%_ _%i91321%_))))
                               (##fxmodulo _%next-probe91341%_ _%size91306%_))
                             (##fx+ _%i91321%_ '1)
                             _%deleted91323%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab91249%_ _%key91251%_)
        (let ((_%table91254%_ (&raw-table-table _%tab91249%_))
              (_%seed91256%_ (&raw-table-seed _%tab91249%_)))
          (let* ((_%h91259%_
                  (fxxor (symbolic-hash _%key91251%_) _%seed91256%_))
                 (_%size91262%_ (vector-length _%table91254%_))
                 (_%entries91265%_ (##fxquotient _%size91262%_ '2))
                 (_%start91268%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91259%_ _%entries91265%_)
                   '1)))
            (let _%loop91272%_ ((_%probe91275%_ _%start91268%_)
                                (_%i91277%_ '1))
              (let ((_%k91280%_ (vector-ref _%table91254%_ _%probe91275%_)))
                (if (eq? _%k91280%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91280%_ (macro-deleted-obj))
                        (_%loop91272%_
                         (let ((_%next-probe91285%_
                                (fx+ _%start91268%_
                                     _%i91277%_
                                     (fx* _%i91277%_ _%i91277%_))))
                           (##fxmodulo _%next-probe91285%_ _%size91262%_))
                         (##fx+ _%i91277%_ '1))
                        (if (eq? _%key91251%_ _%k91280%_)
                            (let ()
                              (vector-set!
                               _%table91254%_
                               _%probe91275%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91254%_
                               (##fx+ _%probe91275%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91249%_
                                  (##fx- (&raw-table-count _%tab91249%_)
                                         '1)))))
                            (_%loop91272%_
                             (let ((_%next-probe91291%_
                                    (fx+ _%start91268%_
                                         _%i91277%_
                                         (fx* _%i91277%_ _%i91277%_))))
                               (##fxmodulo _%next-probe91291%_ _%size91262%_))
                             (##fx+ _%i91277%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint91230%_ _%seed91232%_)
        (make-raw-table__%
         _%size-hint91230%_
         string-hash
         ##string=?
         _%seed91232%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint91238%_ '#f) (_%seed91240%_ '0))
          (make-string-table__% _%size-hint91238%_ _%seed91240%_))))
    (define make-string-table__1
      (lambda (_%size-hint91242%_)
        (let ((_%seed91244%_ '0))
          (make-string-table__% _%size-hint91242%_ _%seed91244%_))))
    (define make-string-table
      (lambda _g92249_
        (let ((_g92248_ (##length _g92249_)))
          (cond ((##fx= _g92248_ 0) (apply make-string-table__0 _g92249_))
                ((##fx= _g92248_ 1) (apply make-string-table__1 _g92249_))
                ((##fx= _g92248_ 2) (apply make-string-table__% _g92249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g92249_))))))
    (define string-table-ref
      (lambda (_%tab91183%_ _%key91184%_ _%default91185%_)
        (let ((_%table91187%_ (&raw-table-table _%tab91183%_))
              (_%seed91188%_ (&raw-table-seed _%tab91183%_)))
          (let* ((_%h91190%_
                  (fxxor (##string=?-hash _%key91184%_) _%seed91188%_))
                 (_%size91193%_ (vector-length _%table91187%_))
                 (_%entries91196%_ (##fxquotient _%size91193%_ '2))
                 (_%start91199%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91190%_ _%entries91196%_)
                   '1)))
            (let _%loop91203%_ ((_%probe91206%_ _%start91199%_)
                                (_%i91208%_ '1)
                                (_%deleted91210%_ '#f))
              (let ((_%k91213%_ (vector-ref _%table91187%_ _%probe91206%_)))
                (if (eq? _%k91213%_ (macro-unused-obj))
                    _%default91185%_
                    (if (eq? _%k91213%_ (macro-deleted-obj))
                        (_%loop91203%_
                         (let ((_%next-probe91218%_
                                (fx+ _%start91199%_
                                     _%i91208%_
                                     (fx* _%i91208%_ _%i91208%_))))
                           (##fxmodulo _%next-probe91218%_ _%size91193%_))
                         (##fx+ _%i91208%_ '1)
                         (let ((_%$e91221%_ _%deleted91210%_))
                           (if _%$e91221%_ _%$e91221%_ _%probe91206%_)))
                        (if (##string=? _%key91184%_ _%k91213%_)
                            (vector-ref
                             _%table91187%_
                             (##fx+ _%probe91206%_ '1))
                            (_%loop91203%_
                             (let ((_%next-probe91226%_
                                    (fx+ _%start91199%_
                                         _%i91208%_
                                         (fx* _%i91208%_ _%i91208%_))))
                               (##fxmodulo _%next-probe91226%_ _%size91193%_))
                             (##fx+ _%i91208%_ '1)
                             _%deleted91210%_))))))))))
    (define string-table-set!
      (lambda (_%tab91179%_ _%key91180%_ _%value91181%_)
        (if (##fx< (&raw-table-free _%tab91179%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91179%_))
                    '4))
            (__raw-table-rehash! _%tab91179%_)
            '#!void)
        (__string-table-set! _%tab91179%_ _%key91180%_ _%value91181%_)))
    (define __string-table-set!
      (lambda (_%tab91130%_ _%key91131%_ _%value91132%_)
        (let ((_%table91135%_ (&raw-table-table _%tab91130%_))
              (_%seed91136%_ (&raw-table-seed _%tab91130%_)))
          (let* ((_%h91138%_
                  (fxxor (##string=?-hash _%key91131%_) _%seed91136%_))
                 (_%size91141%_ (vector-length _%table91135%_))
                 (_%entries91144%_ (##fxquotient _%size91141%_ '2))
                 (_%start91147%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91138%_ _%entries91144%_)
                   '1)))
            (let _%loop91151%_ ((_%probe91154%_ _%start91147%_)
                                (_%i91156%_ '1)
                                (_%deleted91158%_ '#f))
              (let ((_%k91161%_ (vector-ref _%table91135%_ _%probe91154%_)))
                (if (eq? _%k91161%_ (macro-unused-obj))
                    (if _%deleted91158%_
                        (begin
                          (vector-set!
                           _%table91135%_
                           _%deleted91158%_
                           _%key91131%_)
                          (vector-set!
                           _%table91135%_
                           (##fx+ _%deleted91158%_ '1)
                           _%value91132%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91130%_
                              (##fx+ (&raw-table-count _%tab91130%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91135%_
                           _%probe91154%_
                           _%key91131%_)
                          (vector-set!
                           _%table91135%_
                           (##fx+ _%probe91154%_ '1)
                           _%value91132%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91130%_
                              (##fx- (&raw-table-free _%tab91130%_) '1))
                             (&raw-table-count-set!
                              _%tab91130%_
                              (##fx+ (&raw-table-count _%tab91130%_) '1))))))
                    (if (eq? _%k91161%_ (macro-deleted-obj))
                        (_%loop91151%_
                         (let ((_%next-probe91168%_
                                (fx+ _%start91147%_
                                     _%i91156%_
                                     (fx* _%i91156%_ _%i91156%_))))
                           (##fxmodulo _%next-probe91168%_ _%size91141%_))
                         (##fx+ _%i91156%_ '1)
                         (let ((_%$e91171%_ _%deleted91158%_))
                           (if _%$e91171%_ _%$e91171%_ _%probe91154%_)))
                        (if (##string=? _%key91131%_ _%k91161%_)
                            (let ()
                              (vector-set!
                               _%table91135%_
                               _%probe91154%_
                               _%key91131%_)
                              (vector-set!
                               _%table91135%_
                               (##fx+ _%probe91154%_ '1)
                               _%value91132%_))
                            (_%loop91151%_
                             (let ((_%next-probe91176%_
                                    (fx+ _%start91147%_
                                         _%i91156%_
                                         (fx* _%i91156%_ _%i91156%_))))
                               (##fxmodulo _%next-probe91176%_ _%size91141%_))
                             (##fx+ _%i91156%_ '1)
                             _%deleted91158%_))))))))))
    (define string-table-update!
      (lambda (_%tab91125%_
               _%key91126%_
               _%string-table-update!91127%_
               _%default91128%_)
        (if (##fx< (&raw-table-free _%tab91125%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91125%_))
                    '4))
            (__raw-table-rehash! _%tab91125%_)
            '#!void)
        (__string-table-update!
         _%tab91125%_
         _%key91126%_
         _%string-table-update!91127%_
         _%default91128%_)))
    (define __string-table-update!
      (lambda (_%tab91075%_
               _%key91076%_
               _%string-table-update!91077%_
               _%default91078%_)
        (let ((_%table91081%_ (&raw-table-table _%tab91075%_))
              (_%seed91082%_ (&raw-table-seed _%tab91075%_)))
          (let* ((_%h91084%_
                  (fxxor (##string=?-hash _%key91076%_) _%seed91082%_))
                 (_%size91087%_ (vector-length _%table91081%_))
                 (_%entries91090%_ (##fxquotient _%size91087%_ '2))
                 (_%start91093%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91084%_ _%entries91090%_)
                   '1)))
            (let _%loop91097%_ ((_%probe91100%_ _%start91093%_)
                                (_%i91102%_ '1)
                                (_%deleted91104%_ '#f))
              (let ((_%k91107%_ (vector-ref _%table91081%_ _%probe91100%_)))
                (if (eq? _%k91107%_ (macro-unused-obj))
                    (if _%deleted91104%_
                        (begin
                          (vector-set!
                           _%table91081%_
                           _%deleted91104%_
                           _%key91076%_)
                          (vector-set!
                           _%table91081%_
                           (##fx+ _%deleted91104%_ '1)
                           (_%string-table-update!91077%_ _%default91078%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91075%_
                              (##fx+ (&raw-table-count _%tab91075%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91081%_
                           _%probe91100%_
                           _%key91076%_)
                          (vector-set!
                           _%table91081%_
                           (##fx+ _%probe91100%_ '1)
                           (_%string-table-update!91077%_ _%default91078%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91075%_
                              (##fx- (&raw-table-free _%tab91075%_) '1))
                             (&raw-table-count-set!
                              _%tab91075%_
                              (##fx+ (&raw-table-count _%tab91075%_) '1))))))
                    (if (eq? _%k91107%_ (macro-deleted-obj))
                        (_%loop91097%_
                         (let ((_%next-probe91114%_
                                (fx+ _%start91093%_
                                     _%i91102%_
                                     (fx* _%i91102%_ _%i91102%_))))
                           (##fxmodulo _%next-probe91114%_ _%size91087%_))
                         (##fx+ _%i91102%_ '1)
                         (let ((_%$e91117%_ _%deleted91104%_))
                           (if _%$e91117%_ _%$e91117%_ _%probe91100%_)))
                        (if (##string=? _%key91076%_ _%k91107%_)
                            (let ()
                              (vector-set!
                               _%table91081%_
                               _%probe91100%_
                               _%key91076%_)
                              (vector-set!
                               _%table91081%_
                               (##fx+ _%probe91100%_ '1)
                               (_%string-table-update!91077%_
                                (vector-ref
                                 _%table91081%_
                                 (##fx+ _%probe91100%_ '1)))))
                            (_%loop91097%_
                             (let ((_%next-probe91122%_
                                    (fx+ _%start91093%_
                                         _%i91102%_
                                         (fx* _%i91102%_ _%i91102%_))))
                               (##fxmodulo _%next-probe91122%_ _%size91087%_))
                             (##fx+ _%i91102%_ '1)
                             _%deleted91104%_))))))))))
    (define string-table-delete!
      (lambda (_%tab91030%_ _%key91032%_)
        (let ((_%table91035%_ (&raw-table-table _%tab91030%_))
              (_%seed91037%_ (&raw-table-seed _%tab91030%_)))
          (let* ((_%h91040%_
                  (fxxor (##string=?-hash _%key91032%_) _%seed91037%_))
                 (_%size91043%_ (vector-length _%table91035%_))
                 (_%entries91046%_ (##fxquotient _%size91043%_ '2))
                 (_%start91049%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91040%_ _%entries91046%_)
                   '1)))
            (let _%loop91053%_ ((_%probe91056%_ _%start91049%_)
                                (_%i91058%_ '1))
              (let ((_%k91061%_ (vector-ref _%table91035%_ _%probe91056%_)))
                (if (eq? _%k91061%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91061%_ (macro-deleted-obj))
                        (_%loop91053%_
                         (let ((_%next-probe91066%_
                                (fx+ _%start91049%_
                                     _%i91058%_
                                     (fx* _%i91058%_ _%i91058%_))))
                           (##fxmodulo _%next-probe91066%_ _%size91043%_))
                         (##fx+ _%i91058%_ '1))
                        (if (##string=? _%key91032%_ _%k91061%_)
                            (let ()
                              (vector-set!
                               _%table91035%_
                               _%probe91056%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91035%_
                               (##fx+ _%probe91056%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91030%_
                                  (##fx- (&raw-table-count _%tab91030%_)
                                         '1)))))
                            (_%loop91053%_
                             (let ((_%next-probe91072%_
                                    (fx+ _%start91049%_
                                         _%i91058%_
                                         (fx* _%i91058%_ _%i91058%_))))
                               (##fxmodulo _%next-probe91072%_ _%size91043%_))
                             (##fx+ _%i91058%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint91011%_ _%seed91013%_)
        (make-raw-table__%
         _%size-hint91011%_
         immediate-hash
         eq?
         _%seed91013%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint91019%_ '#f) (_%seed91021%_ '0))
          (make-immediate-table__% _%size-hint91019%_ _%seed91021%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint91023%_)
        (let ((_%seed91025%_ '0))
          (make-immediate-table__% _%size-hint91023%_ _%seed91025%_))))
    (define make-immediate-table
      (lambda _g92251_
        (let ((_g92250_ (##length _g92251_)))
          (cond ((##fx= _g92250_ 0) (apply make-immediate-table__0 _g92251_))
                ((##fx= _g92250_ 1) (apply make-immediate-table__1 _g92251_))
                ((##fx= _g92250_ 2) (apply make-immediate-table__% _g92251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g92251_))))))
    (define immediate-table-ref
      (lambda (_%tab90964%_ _%key90965%_ _%default90966%_)
        (let ((_%table90968%_ (&raw-table-table _%tab90964%_))
              (_%seed90969%_ (&raw-table-seed _%tab90964%_)))
          (let* ((_%h90971%_
                  (fxxor (immediate-hash _%key90965%_) _%seed90969%_))
                 (_%size90974%_ (vector-length _%table90968%_))
                 (_%entries90977%_ (##fxquotient _%size90974%_ '2))
                 (_%start90980%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90971%_ _%entries90977%_)
                   '1)))
            (let _%loop90984%_ ((_%probe90987%_ _%start90980%_)
                                (_%i90989%_ '1)
                                (_%deleted90991%_ '#f))
              (let ((_%k90994%_ (vector-ref _%table90968%_ _%probe90987%_)))
                (if (eq? _%k90994%_ (macro-unused-obj))
                    _%default90966%_
                    (if (eq? _%k90994%_ (macro-deleted-obj))
                        (_%loop90984%_
                         (let ((_%next-probe90999%_
                                (fx+ _%start90980%_
                                     _%i90989%_
                                     (fx* _%i90989%_ _%i90989%_))))
                           (##fxmodulo _%next-probe90999%_ _%size90974%_))
                         (##fx+ _%i90989%_ '1)
                         (let ((_%$e91002%_ _%deleted90991%_))
                           (if _%$e91002%_ _%$e91002%_ _%probe90987%_)))
                        (if (eq? _%key90965%_ _%k90994%_)
                            (vector-ref
                             _%table90968%_
                             (##fx+ _%probe90987%_ '1))
                            (_%loop90984%_
                             (let ((_%next-probe91007%_
                                    (fx+ _%start90980%_
                                         _%i90989%_
                                         (fx* _%i90989%_ _%i90989%_))))
                               (##fxmodulo _%next-probe91007%_ _%size90974%_))
                             (##fx+ _%i90989%_ '1)
                             _%deleted90991%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab90960%_ _%key90961%_ _%value90962%_)
        (if (##fx< (&raw-table-free _%tab90960%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90960%_))
                    '4))
            (__raw-table-rehash! _%tab90960%_)
            '#!void)
        (__immediate-table-set! _%tab90960%_ _%key90961%_ _%value90962%_)))
    (define __immediate-table-set!
      (lambda (_%tab90911%_ _%key90912%_ _%value90913%_)
        (let ((_%table90916%_ (&raw-table-table _%tab90911%_))
              (_%seed90917%_ (&raw-table-seed _%tab90911%_)))
          (let* ((_%h90919%_
                  (fxxor (immediate-hash _%key90912%_) _%seed90917%_))
                 (_%size90922%_ (vector-length _%table90916%_))
                 (_%entries90925%_ (##fxquotient _%size90922%_ '2))
                 (_%start90928%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90919%_ _%entries90925%_)
                   '1)))
            (let _%loop90932%_ ((_%probe90935%_ _%start90928%_)
                                (_%i90937%_ '1)
                                (_%deleted90939%_ '#f))
              (let ((_%k90942%_ (vector-ref _%table90916%_ _%probe90935%_)))
                (if (eq? _%k90942%_ (macro-unused-obj))
                    (if _%deleted90939%_
                        (begin
                          (vector-set!
                           _%table90916%_
                           _%deleted90939%_
                           _%key90912%_)
                          (vector-set!
                           _%table90916%_
                           (##fx+ _%deleted90939%_ '1)
                           _%value90913%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90911%_
                              (##fx+ (&raw-table-count _%tab90911%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90916%_
                           _%probe90935%_
                           _%key90912%_)
                          (vector-set!
                           _%table90916%_
                           (##fx+ _%probe90935%_ '1)
                           _%value90913%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90911%_
                              (##fx- (&raw-table-free _%tab90911%_) '1))
                             (&raw-table-count-set!
                              _%tab90911%_
                              (##fx+ (&raw-table-count _%tab90911%_) '1))))))
                    (if (eq? _%k90942%_ (macro-deleted-obj))
                        (_%loop90932%_
                         (let ((_%next-probe90949%_
                                (fx+ _%start90928%_
                                     _%i90937%_
                                     (fx* _%i90937%_ _%i90937%_))))
                           (##fxmodulo _%next-probe90949%_ _%size90922%_))
                         (##fx+ _%i90937%_ '1)
                         (let ((_%$e90952%_ _%deleted90939%_))
                           (if _%$e90952%_ _%$e90952%_ _%probe90935%_)))
                        (if (eq? _%key90912%_ _%k90942%_)
                            (let ()
                              (vector-set!
                               _%table90916%_
                               _%probe90935%_
                               _%key90912%_)
                              (vector-set!
                               _%table90916%_
                               (##fx+ _%probe90935%_ '1)
                               _%value90913%_))
                            (_%loop90932%_
                             (let ((_%next-probe90957%_
                                    (fx+ _%start90928%_
                                         _%i90937%_
                                         (fx* _%i90937%_ _%i90937%_))))
                               (##fxmodulo _%next-probe90957%_ _%size90922%_))
                             (##fx+ _%i90937%_ '1)
                             _%deleted90939%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab90906%_
               _%key90907%_
               _%immediate-table-update!90908%_
               _%default90909%_)
        (if (##fx< (&raw-table-free _%tab90906%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90906%_))
                    '4))
            (__raw-table-rehash! _%tab90906%_)
            '#!void)
        (__immediate-table-update!
         _%tab90906%_
         _%key90907%_
         _%immediate-table-update!90908%_
         _%default90909%_)))
    (define __immediate-table-update!
      (lambda (_%tab90856%_
               _%key90857%_
               _%immediate-table-update!90858%_
               _%default90859%_)
        (let ((_%table90862%_ (&raw-table-table _%tab90856%_))
              (_%seed90863%_ (&raw-table-seed _%tab90856%_)))
          (let* ((_%h90865%_
                  (fxxor (immediate-hash _%key90857%_) _%seed90863%_))
                 (_%size90868%_ (vector-length _%table90862%_))
                 (_%entries90871%_ (##fxquotient _%size90868%_ '2))
                 (_%start90874%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90865%_ _%entries90871%_)
                   '1)))
            (let _%loop90878%_ ((_%probe90881%_ _%start90874%_)
                                (_%i90883%_ '1)
                                (_%deleted90885%_ '#f))
              (let ((_%k90888%_ (vector-ref _%table90862%_ _%probe90881%_)))
                (if (eq? _%k90888%_ (macro-unused-obj))
                    (if _%deleted90885%_
                        (begin
                          (vector-set!
                           _%table90862%_
                           _%deleted90885%_
                           _%key90857%_)
                          (vector-set!
                           _%table90862%_
                           (##fx+ _%deleted90885%_ '1)
                           (_%immediate-table-update!90858%_ _%default90859%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90856%_
                              (##fx+ (&raw-table-count _%tab90856%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90862%_
                           _%probe90881%_
                           _%key90857%_)
                          (vector-set!
                           _%table90862%_
                           (##fx+ _%probe90881%_ '1)
                           (_%immediate-table-update!90858%_ _%default90859%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90856%_
                              (##fx- (&raw-table-free _%tab90856%_) '1))
                             (&raw-table-count-set!
                              _%tab90856%_
                              (##fx+ (&raw-table-count _%tab90856%_) '1))))))
                    (if (eq? _%k90888%_ (macro-deleted-obj))
                        (_%loop90878%_
                         (let ((_%next-probe90895%_
                                (fx+ _%start90874%_
                                     _%i90883%_
                                     (fx* _%i90883%_ _%i90883%_))))
                           (##fxmodulo _%next-probe90895%_ _%size90868%_))
                         (##fx+ _%i90883%_ '1)
                         (let ((_%$e90898%_ _%deleted90885%_))
                           (if _%$e90898%_ _%$e90898%_ _%probe90881%_)))
                        (if (eq? _%key90857%_ _%k90888%_)
                            (let ()
                              (vector-set!
                               _%table90862%_
                               _%probe90881%_
                               _%key90857%_)
                              (vector-set!
                               _%table90862%_
                               (##fx+ _%probe90881%_ '1)
                               (_%immediate-table-update!90858%_
                                (vector-ref
                                 _%table90862%_
                                 (##fx+ _%probe90881%_ '1)))))
                            (_%loop90878%_
                             (let ((_%next-probe90903%_
                                    (fx+ _%start90874%_
                                         _%i90883%_
                                         (fx* _%i90883%_ _%i90883%_))))
                               (##fxmodulo _%next-probe90903%_ _%size90868%_))
                             (##fx+ _%i90883%_ '1)
                             _%deleted90885%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab90811%_ _%key90813%_)
        (let ((_%table90816%_ (&raw-table-table _%tab90811%_))
              (_%seed90818%_ (&raw-table-seed _%tab90811%_)))
          (let* ((_%h90821%_
                  (fxxor (immediate-hash _%key90813%_) _%seed90818%_))
                 (_%size90824%_ (vector-length _%table90816%_))
                 (_%entries90827%_ (##fxquotient _%size90824%_ '2))
                 (_%start90830%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90821%_ _%entries90827%_)
                   '1)))
            (let _%loop90834%_ ((_%probe90837%_ _%start90830%_)
                                (_%i90839%_ '1))
              (let ((_%k90842%_ (vector-ref _%table90816%_ _%probe90837%_)))
                (if (eq? _%k90842%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90842%_ (macro-deleted-obj))
                        (_%loop90834%_
                         (let ((_%next-probe90847%_
                                (fx+ _%start90830%_
                                     _%i90839%_
                                     (fx* _%i90839%_ _%i90839%_))))
                           (##fxmodulo _%next-probe90847%_ _%size90824%_))
                         (##fx+ _%i90839%_ '1))
                        (if (eq? _%key90813%_ _%k90842%_)
                            (let ()
                              (vector-set!
                               _%table90816%_
                               _%probe90837%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90816%_
                               (##fx+ _%probe90837%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90811%_
                                  (##fx- (&raw-table-count _%tab90811%_)
                                         '1)))))
                            (_%loop90834%_
                             (let ((_%next-probe90853%_
                                    (fx+ _%start90830%_
                                         _%i90839%_
                                         (fx* _%i90839%_ _%i90839%_))))
                               (##fxmodulo _%next-probe90853%_ _%size90824%_))
                             (##fx+ _%i90839%_ '1)))))))))))
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
      (lambda (_%tab90809%_)
        (##unchecked-structure-ref
         _%tab90809%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab90807%_)
        (##unchecked-structure-ref
         _%tab90807%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab90804%_ _%val90805%_)
        (##unchecked-structure-set!
         _%tab90804%_
         _%val90805%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab90801%_ _%val90802%_)
        (##unchecked-structure-set!
         _%tab90801%_
         _%val90802%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint90777%_ _%klass90778%_ _%flags90779%_)
        (let ((_%gcht90781%_
               (__gc-table-new
                (if (fixnum? _%size-hint90777%_) _%size-hint90777%_ '16)
                _%flags90779%_)))
          (##structure _%klass90778%_ _%gcht90781%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint90786%_)
        (let* ((_%klass90788%_ __gc-table::t) (_%flags90790%_ '0))
          (make-gc-table__%
           _%size-hint90786%_
           _%klass90788%_
           _%flags90790%_))))
    (define make-gc-table__1
      (lambda (_%size-hint90792%_ _%klass90793%_)
        (let ((_%flags90795%_ '0))
          (make-gc-table__%
           _%size-hint90792%_
           _%klass90793%_
           _%flags90795%_))))
    (define make-gc-table
      (lambda _g92253_
        (let ((_g92252_ (##length _g92253_)))
          (cond ((##fx= _g92252_ 1) (apply make-gc-table__0 _g92253_))
                ((##fx= _g92252_ 2) (apply make-gc-table__1 _g92253_))
                ((##fx= _g92252_ 3) (apply make-gc-table__% _g92253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g92253_))))))
    (define __gc-table-immediate
      (lambda (_%tab90768%_)
        (let ((_%$e90770%_ (&gc-table-immediate _%tab90768%_)))
          (if _%$e90770%_
              _%$e90770%_
              (let ((_%immediate90774%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab90768%_ _%immediate90774%_)
                _%immediate90774%_)))))
    (define __gc-table-new
      (lambda (_%size90758%_ _%flags90759%_)
        (let* ((_%flags90761%_
                (##fxand _%flags90759%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags90763%_
                (fxior _%flags90761%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht90765%_
                (##gc-hash-table-allocate
                 _%size90758%_
                 _%flags90763%_
                 __gc-table-loads)))
          _%gcht90765%_)))
    (define __gc-table-e
      (lambda (_%tab90753%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht90756%_ (&gc-table-gcht _%tab90753%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht90756%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht90756%_
              (begin
                (__gc-table-rehash! _%tab90753%_)
                (&gc-table-gcht _%tab90753%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab90744%_)
        (let* ((_%old-table90746%_ (&gc-table-gcht _%tab90744%_))
               (_%new-table90748%_
                (##gc-hash-table-resize! _%old-table90746%_ __gc-table-loads))
               (_%gcht90750%_
                (##gc-hash-table-rehash!
                 _%old-table90746%_
                 _%new-table90748%_)))
          (&gc-table-gcht-set! _%tab90744%_ _%gcht90750%_))))
    (define gc-table-ref
      (lambda (_%tab90728%_ _%key90729%_ _%default90730%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90729%_)
            (let* ((_%gcht90734%_ (__gc-table-e _%tab90728%_))
                   (_%value90736%_
                    (##gc-hash-table-ref _%gcht90734%_ _%key90729%_)))
              (if (eq? _%value90736%_ (macro-unused-obj))
                  _%default90730%_
                  _%value90736%_))
            (let ((_%$e90738%_ (&gc-table-immediate _%tab90728%_)))
              (if _%$e90738%_
                  ((lambda (_%immediate90741%_)
                     (immediate-table-ref
                      _%immediate90741%_
                      _%key90729%_
                      _%default90730%_))
                   _%$e90738%_)
                  _%default90730%_)))))
    (define gc-table-set!
      (lambda (_%tab90721%_ _%key90722%_ _%value90723%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90722%_)
            (let ((_%gcht90726%_ (__gc-table-e _%tab90721%_)))
              (if (##gc-hash-table-set!
                   _%gcht90726%_
                   _%key90722%_
                   _%value90723%_)
                  (begin
                    (__gc-table-rehash! _%tab90721%_)
                    (gc-table-set! _%tab90721%_ _%key90722%_ _%value90723%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab90721%_)
             _%key90722%_
             _%value90723%_))))
    (define gc-table-update!
      (lambda (_%tab90714%_ _%key90715%_ _%update90716%_ _%default90717%_)
        (if (##mem-allocated? _%key90715%_)
            (let ((_%value90719%_
                   (gc-table-ref _%tab90714%_ _%key90715%_ _%default90717%_)))
              (gc-table-set!
               _%tab90714%_
               _%key90715%_
               (_%update90716%_ _%value90719%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab90714%_)
             _%key90715%_
             _%update90716%_
             _%default90717%_))))
    (define gc-table-delete!
      (lambda (_%tab90702%_ _%key90703%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90703%_)
            (let ((_%gcht90707%_ (__gc-table-e _%tab90702%_)))
              (if (##gc-hash-table-set!
                   _%gcht90707%_
                   _%key90703%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab90702%_)
                    (gc-table-delete! _%tab90702%_ _%key90703%_))
                  '#!void))
            (let ((_%$e90709%_ (&gc-table-immediate _%tab90702%_)))
              (if _%$e90709%_
                  ((lambda (_%immediate90712%_)
                     (immediate-table-delete! _%immediate90712%_ _%key90703%_))
                   _%$e90709%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab90683%_ _%proc90684%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht90687%_ (__gc-table-e _%tab90683%_)))
            (let _%loop90689%_ ((_%i90691%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i90691%_ (##vector-length _%gcht90687%_))
                  (let ((_%key90693%_ (##vector-ref _%gcht90687%_ _%i90691%_)))
                    (if (and (not (eq? _%key90693%_ (macro-unused-obj)))
                             (not (eq? _%key90693%_ (macro-deleted-obj))))
                        (_%proc90684%_
                         _%key90693%_
                         (##vector-ref _%gcht90687%_ (##fx+ _%i90691%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop90689%_ (##fx+ _%i90691%_ '2))))
                  '#!void)))
          (let ((_%$e90697%_ (&gc-table-immediate _%tab90683%_)))
            (if _%$e90697%_
                ((lambda (_%immediate90700%_)
                   (raw-table-for-each _%immediate90700%_ _%proc90684%_))
                 _%$e90697%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab90671%_)
        (let* ((_%gcht90673%_ (__gc-table-e _%tab90671%_))
               (_%new-table90675%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht90673%_)
                 (macro-gc-hash-table-flags _%gcht90673%_)))
               (_%result90677%_
                (##structure
                 (##structure-type _%tab90671%_)
                 _%new-table90675%_
                 '#f)))
          (gc-table-for-each
           _%tab90671%_
           (lambda (_%k90680%_ _%v90681%_)
             (gc-table-set! _%result90677%_ _%k90680%_ _%v90681%_)))
          _%result90677%_)))
    (define gc-table-clear!
      (lambda (_%tab90664%_)
        (let* ((_%gcht90666%_ (__gc-table-e _%tab90664%_))
               (_%new-table90668%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht90666%_))))
          (&gc-table-gcht-set! _%tab90664%_ _%new-table90668%_)
          (&gc-table-immediate-set! _%tab90664%_ '#f))))
    (define gc-table-length
      (lambda (_%tab90656%_)
        (let ((_%gcht90658%_ (__gc-table-e _%tab90656%_)))
          (fx+ (macro-gc-hash-table-count _%gcht90658%_)
               (let ((_%$e90660%_ (&gc-table-immediate _%tab90656%_)))
                 (if _%$e90660%_ (&raw-table-count _%$e90660%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj90641%_)
        (declare (not interrupts-enabled))
        (let ((_%val90644%_ (gc-table-ref __object-eq-hash _%obj90641%_ '#f)))
          (if _%val90644%_
              _%val90644%_
              (let* ((_%mix90646%_ __object-eq-hash-next)
                     (_%ptr90648%_ (##type-cast _%obj90641%_ '0))
                     (_%h90650%_
                      (fxand (fxxor _%mix90646%_ _%ptr90648%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e90653%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e90653%_ _%$e90653%_ '0)))
                (gc-table-set! __object-eq-hash _%obj90641%_ _%h90650%_)
                _%h90650%_)))))))
