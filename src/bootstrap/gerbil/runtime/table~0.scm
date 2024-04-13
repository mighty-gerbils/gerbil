(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1713001405)
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
      (lambda (_%tab92465%_)
        (##unchecked-structure-ref
         _%tab92465%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab92463%_)
        (##unchecked-structure-ref
         _%tab92463%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab92461%_)
        (##unchecked-structure-ref
         _%tab92461%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab92459%_)
        (##unchecked-structure-ref
         _%tab92459%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab92457%_)
        (##unchecked-structure-ref
         _%tab92457%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab92455%_)
        (##unchecked-structure-ref
         _%tab92455%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab92452%_ _%val92453%_)
        (##unchecked-structure-set!
         _%tab92452%_
         _%val92453%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab92449%_ _%val92450%_)
        (##unchecked-structure-set!
         _%tab92449%_
         _%val92450%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab92446%_ _%val92447%_)
        (##unchecked-structure-set!
         _%tab92446%_
         _%val92447%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab92443%_ _%val92444%_)
        (##unchecked-structure-set!
         _%tab92443%_
         _%val92444%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab92440%_ _%val92441%_)
        (##unchecked-structure-set!
         _%tab92440%_
         _%val92441%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab92437%_ _%val92438%_)
        (##unchecked-structure-set!
         _%tab92437%_
         _%val92438%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint92435%_)
        (if (and (fixnum? _%size-hint92435%_) (##fx> _%size-hint92435%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint92435%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint92411%_ _%hash92412%_ _%test92413%_ _%seed92414%_)
        (let* ((_%size92416%_ (raw-table-size-hint->size _%size-hint92411%_))
               (_%table92418%_
                (##make-vector _%size92416%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table92418%_
           '0
           (##fxquotient _%size92416%_ '2)
           _%hash92412%_
           _%test92413%_
           _%seed92414%_))))
    (define make-raw-table__0
      (lambda (_%size-hint92424%_ _%hash92425%_ _%test92426%_)
        (let ((_%seed92428%_ '0))
          (make-raw-table__%
           _%size-hint92424%_
           _%hash92425%_
           _%test92426%_
           _%seed92428%_))))
    (define make-raw-table
      (lambda _g92467_
        (let ((_g92466_ (##length _g92467_)))
          (cond ((##fx= _g92466_ 3) (apply make-raw-table__0 _g92467_))
                ((##fx= _g92466_ 4) (apply make-raw-table__% _g92467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g92467_))))))
    (define raw-table-ref
      (lambda (_%tab92362%_ _%key92363%_ _%default92364%_)
        (let ((_%table92366%_ (&raw-table-table _%tab92362%_))
              (_%seed92367%_ (&raw-table-seed _%tab92362%_))
              (_%hash92368%_ (&raw-table-hash _%tab92362%_))
              (_%test92369%_ (&raw-table-test _%tab92362%_)))
          (let* ((_%h92371%_
                  (fxxor (_%hash92368%_ _%key92363%_) _%seed92367%_))
                 (_%size92374%_ (vector-length _%table92366%_))
                 (_%entries92377%_ (##fxquotient _%size92374%_ '2))
                 (_%start92380%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92371%_ _%entries92377%_)
                   '1)))
            (let _%loop92384%_ ((_%probe92387%_ _%start92380%_)
                                (_%i92389%_ '1)
                                (_%deleted92391%_ '#f))
              (let ((_%k92394%_ (vector-ref _%table92366%_ _%probe92387%_)))
                (if (eq? _%k92394%_ (macro-unused-obj))
                    _%default92364%_
                    (if (eq? _%k92394%_ (macro-deleted-obj))
                        (_%loop92384%_
                         (let ((_%next-probe92399%_
                                (fx+ _%start92380%_
                                     _%i92389%_
                                     (fx* _%i92389%_ _%i92389%_))))
                           (##fxmodulo _%next-probe92399%_ _%size92374%_))
                         (##fx+ _%i92389%_ '1)
                         (let ((_%$e92402%_ _%deleted92391%_))
                           (if _%$e92402%_ _%$e92402%_ _%probe92387%_)))
                        (if (_%test92369%_ _%key92363%_ _%k92394%_)
                            (vector-ref
                             _%table92366%_
                             (##fx+ _%probe92387%_ '1))
                            (_%loop92384%_
                             (let ((_%next-probe92407%_
                                    (fx+ _%start92380%_
                                         _%i92389%_
                                         (fx* _%i92389%_ _%i92389%_))))
                               (##fxmodulo _%next-probe92407%_ _%size92374%_))
                             (##fx+ _%i92389%_ '1)
                             _%deleted92391%_))))))))))
    (define raw-table-set!
      (lambda (_%tab92358%_ _%key92359%_ _%value92360%_)
        (if (##fx< (&raw-table-free _%tab92358%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92358%_))
                    '4))
            (__raw-table-rehash! _%tab92358%_)
            '#!void)
        (__raw-table-set! _%tab92358%_ _%key92359%_ _%value92360%_)))
    (define raw-table-update!
      (lambda (_%tab92353%_ _%key92354%_ _%update92355%_ _%default92356%_)
        (if (##fx< (&raw-table-free _%tab92353%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92353%_))
                    '4))
            (__raw-table-rehash! _%tab92353%_)
            '#!void)
        (__raw-table-update!
         _%tab92353%_
         _%key92354%_
         _%update92355%_
         _%default92356%_)))
    (define raw-table-delete!
      (lambda (_%tab92310%_ _%key92311%_)
        (let ((_%table92313%_ (&raw-table-table _%tab92310%_))
              (_%seed92314%_ (&raw-table-seed _%tab92310%_))
              (_%hash92315%_ (&raw-table-hash _%tab92310%_))
              (_%test92316%_ (&raw-table-test _%tab92310%_)))
          (let* ((_%h92318%_
                  (fxxor (_%hash92315%_ _%key92311%_) _%seed92314%_))
                 (_%size92321%_ (vector-length _%table92313%_))
                 (_%entries92324%_ (##fxquotient _%size92321%_ '2))
                 (_%start92327%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92318%_ _%entries92324%_)
                   '1)))
            (let _%loop92331%_ ((_%probe92334%_ _%start92327%_)
                                (_%i92336%_ '1))
              (let ((_%k92339%_ (vector-ref _%table92313%_ _%probe92334%_)))
                (if (eq? _%k92339%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92339%_ (macro-deleted-obj))
                        (_%loop92331%_
                         (let ((_%next-probe92344%_
                                (fx+ _%start92327%_
                                     _%i92336%_
                                     (fx* _%i92336%_ _%i92336%_))))
                           (##fxmodulo _%next-probe92344%_ _%size92321%_))
                         (##fx+ _%i92336%_ '1))
                        (if (_%test92316%_ _%key92311%_ _%k92339%_)
                            (let ()
                              (vector-set!
                               _%table92313%_
                               _%probe92334%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92313%_
                               (##fx+ _%probe92334%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92310%_
                                  (##fx- (&raw-table-count _%tab92310%_)
                                         '1)))))
                            (_%loop92331%_
                             (let ((_%next-probe92350%_
                                    (fx+ _%start92327%_
                                         _%i92336%_
                                         (fx* _%i92336%_ _%i92336%_))))
                               (##fxmodulo _%next-probe92350%_ _%size92321%_))
                             (##fx+ _%i92336%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab92294%_ _%proc92295%_)
        (let* ((_%table92297%_ (&raw-table-table _%tab92294%_))
               (_%size92299%_ (vector-length _%table92297%_)))
          (let _%loop92302%_ ((_%i92304%_ '0))
            (if (##fx< _%i92304%_ _%size92299%_)
                (begin
                  (let ((_%key92306%_ (vector-ref _%table92297%_ _%i92304%_)))
                    (if (if (eq? _%key92306%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92306%_ (macro-deleted-obj))))
                        (let ((_%value92308%_
                               (vector-ref
                                _%table92297%_
                                (##fx+ _%i92304%_ '1))))
                          (_%proc92295%_ _%key92306%_ _%value92308%_))
                        '#!void))
                  (_%loop92302%_ (##fx+ _%i92304%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab92290%_)
        (let ((_%new-tab92292%_ (##structure-copy _%tab92290%_)))
          (&raw-table-table-set!
           _%new-tab92292%_
           (vector-copy (&raw-table-table _%tab92290%_)))
          _%new-tab92292%_)))
    (define raw-table-clear!
      (lambda (_%tab92288%_)
        (vector-fill! (&raw-table-table _%tab92288%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab92288%_ '0)
        (&raw-table-free-set!
         _%tab92288%_
         (##fxquotient (vector-length (&raw-table-table _%tab92288%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab92238%_ _%key92239%_ _%value92240%_)
        (let ((_%table92242%_ (&raw-table-table _%tab92238%_))
              (_%seed92243%_ (&raw-table-seed _%tab92238%_))
              (_%hash92244%_ (&raw-table-hash _%tab92238%_))
              (_%test92245%_ (&raw-table-test _%tab92238%_)))
          (let* ((_%h92247%_
                  (fxxor (_%hash92244%_ _%key92239%_) _%seed92243%_))
                 (_%size92250%_ (vector-length _%table92242%_))
                 (_%entries92253%_ (##fxquotient _%size92250%_ '2))
                 (_%start92256%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92247%_ _%entries92253%_)
                   '1)))
            (let _%loop92260%_ ((_%probe92263%_ _%start92256%_)
                                (_%i92265%_ '1)
                                (_%deleted92267%_ '#f))
              (let ((_%k92270%_ (vector-ref _%table92242%_ _%probe92263%_)))
                (if (eq? _%k92270%_ (macro-unused-obj))
                    (if _%deleted92267%_
                        (begin
                          (vector-set!
                           _%table92242%_
                           _%deleted92267%_
                           _%key92239%_)
                          (vector-set!
                           _%table92242%_
                           (##fx+ _%deleted92267%_ '1)
                           _%value92240%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92238%_
                              (##fx+ (&raw-table-count _%tab92238%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92242%_
                           _%probe92263%_
                           _%key92239%_)
                          (vector-set!
                           _%table92242%_
                           (##fx+ _%probe92263%_ '1)
                           _%value92240%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92238%_
                              (##fx- (&raw-table-free _%tab92238%_) '1))
                             (&raw-table-count-set!
                              _%tab92238%_
                              (##fx+ (&raw-table-count _%tab92238%_) '1))))))
                    (if (eq? _%k92270%_ (macro-deleted-obj))
                        (_%loop92260%_
                         (let ((_%next-probe92277%_
                                (fx+ _%start92256%_
                                     _%i92265%_
                                     (fx* _%i92265%_ _%i92265%_))))
                           (##fxmodulo _%next-probe92277%_ _%size92250%_))
                         (##fx+ _%i92265%_ '1)
                         (let ((_%$e92280%_ _%deleted92267%_))
                           (if _%$e92280%_ _%$e92280%_ _%probe92263%_)))
                        (if (_%test92245%_ _%key92239%_ _%k92270%_)
                            (let ()
                              (vector-set!
                               _%table92242%_
                               _%probe92263%_
                               _%key92239%_)
                              (vector-set!
                               _%table92242%_
                               (##fx+ _%probe92263%_ '1)
                               _%value92240%_))
                            (_%loop92260%_
                             (let ((_%next-probe92285%_
                                    (fx+ _%start92256%_
                                         _%i92265%_
                                         (fx* _%i92265%_ _%i92265%_))))
                               (##fxmodulo _%next-probe92285%_ _%size92250%_))
                             (##fx+ _%i92265%_ '1)
                             _%deleted92267%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab92187%_ _%key92188%_ _%update92189%_ _%default92190%_)
        (let ((_%table92192%_ (&raw-table-table _%tab92187%_))
              (_%seed92193%_ (&raw-table-seed _%tab92187%_))
              (_%hash92194%_ (&raw-table-hash _%tab92187%_))
              (_%test92195%_ (&raw-table-test _%tab92187%_)))
          (let* ((_%h92197%_
                  (fxxor (_%hash92194%_ _%key92188%_) _%seed92193%_))
                 (_%size92200%_ (vector-length _%table92192%_))
                 (_%entries92203%_ (##fxquotient _%size92200%_ '2))
                 (_%start92206%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92197%_ _%entries92203%_)
                   '1)))
            (let _%loop92210%_ ((_%probe92213%_ _%start92206%_)
                                (_%i92215%_ '1)
                                (_%deleted92217%_ '#f))
              (let ((_%k92220%_ (vector-ref _%table92192%_ _%probe92213%_)))
                (if (eq? _%k92220%_ (macro-unused-obj))
                    (if _%deleted92217%_
                        (begin
                          (vector-set!
                           _%table92192%_
                           _%deleted92217%_
                           _%key92188%_)
                          (vector-set!
                           _%table92192%_
                           (##fx+ _%deleted92217%_ '1)
                           (_%update92189%_ _%default92190%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92187%_
                              (##fx+ (&raw-table-count _%tab92187%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92192%_
                           _%probe92213%_
                           _%key92188%_)
                          (vector-set!
                           _%table92192%_
                           (##fx+ _%probe92213%_ '1)
                           (_%update92189%_ _%default92190%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92187%_
                              (##fx- (&raw-table-free _%tab92187%_) '1))
                             (&raw-table-count-set!
                              _%tab92187%_
                              (##fx+ (&raw-table-count _%tab92187%_) '1))))))
                    (if (eq? _%k92220%_ (macro-deleted-obj))
                        (_%loop92210%_
                         (let ((_%next-probe92227%_
                                (fx+ _%start92206%_
                                     _%i92215%_
                                     (fx* _%i92215%_ _%i92215%_))))
                           (##fxmodulo _%next-probe92227%_ _%size92200%_))
                         (##fx+ _%i92215%_ '1)
                         (let ((_%$e92230%_ _%deleted92217%_))
                           (if _%$e92230%_ _%$e92230%_ _%probe92213%_)))
                        (if (_%test92195%_ _%key92188%_ _%k92220%_)
                            (let ()
                              (vector-set!
                               _%table92192%_
                               _%probe92213%_
                               _%key92188%_)
                              (vector-set!
                               _%table92192%_
                               (##fx+ _%probe92213%_ '1)
                               (_%update92189%_
                                (vector-ref
                                 _%table92192%_
                                 (##fx+ _%probe92213%_ '1)))))
                            (_%loop92210%_
                             (let ((_%next-probe92235%_
                                    (fx+ _%start92206%_
                                         _%i92215%_
                                         (fx* _%i92215%_ _%i92215%_))))
                               (##fxmodulo _%next-probe92235%_ _%size92200%_))
                             (##fx+ _%i92215%_ '1)
                             _%deleted92217%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab92168%_)
        (let* ((_%old-table92170%_ (&raw-table-table _%tab92168%_))
               (_%old-size92172%_ (vector-length _%old-table92170%_))
               (_%new-size92174%_
                (if (##fx< (&raw-table-count _%tab92168%_)
                           (##fxquotient _%old-size92172%_ '4))
                    (vector-length _%old-table92170%_)
                    (##fx* '2 (vector-length _%old-table92170%_))))
               (_%new-table92176%_
                (##make-vector _%new-size92174%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab92168%_ _%new-table92176%_)
          (&raw-table-count-set! _%tab92168%_ '0)
          (&raw-table-free-set!
           _%tab92168%_
           (##fxquotient _%new-size92174%_ '2))
          (let _%lp92179%_ ((_%i92181%_ '0))
            (if (##fx< _%i92181%_ _%old-size92172%_)
                (begin
                  (let ((_%key92183%_
                         (vector-ref _%old-table92170%_ _%i92181%_)))
                    (if (if (eq? _%key92183%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92183%_ (macro-deleted-obj))))
                        (let ((_%value92185%_
                               (vector-ref
                                _%old-table92170%_
                                (##fx+ _%i92181%_ '1))))
                          (__raw-table-set!
                           _%tab92168%_
                           _%key92183%_
                           _%value92185%_))
                        '#!void))
                  (_%lp92179%_ (##fx+ _%i92181%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj92160%_)
        (let ((_%t92162%_ (##type _%obj92160%_)))
          (if (##fx= (##fxand _%t92162%_ '1) '0)
              (fxand (##type-cast _%obj92160%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj92160%_)
                  (symbolic-hash _%obj92160%_)
                  (if (procedure? _%obj92160%_)
                      (procedure-hash _%obj92160%_)
                      (fxand (__eq-hash _%obj92160%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj92156%_)
        (let ((_%h92158%_
               (if (##closure? _%obj92156%_)
                   (__eq-hash _%obj92156%_)
                   (##type-cast _%obj92156%_ '0))))
          (fxand _%h92158%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj92153%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj92153%_)))
    (define eqv-hash
      (lambda (_%obj92143%_)
        (letrec ((_%combine92145%_
                  (lambda (_%a92150%_ _%b92151%_)
                    (fxand (##fx* (##fx+ _%a92150%_
                                         (fxarithmetic-shift-left
                                          _%b92151%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash92146%_
                  (lambda (_%obj92148%_)
                    (macro-number-dispatch
                     _%obj92148%_
                     (eq-hash _%obj92148%_)
                     (fxand _%obj92148%_ (macro-max-fixnum32))
                     (modulo _%obj92148%_ '331804481)
                     (_%combine92145%_
                      (_%hash92146%_ (macro-ratnum-numerator _%obj92148%_))
                      (_%hash92146%_ (macro-ratnum-denominator _%obj92148%_)))
                     (_%combine92145%_
                      (##u16vector-ref _%obj92148%_ '0)
                      (_%combine92145%_
                       (##u16vector-ref _%obj92148%_ '1)
                       (_%combine92145%_
                        (##u16vector-ref _%obj92148%_ '2)
                        (##u16vector-ref _%obj92148%_ '3))))
                     (_%combine92145%_
                      (_%hash92146%_ (macro-cpxnum-real _%obj92148%_))
                      (_%hash92146%_ (macro-cpxnum-imag _%obj92148%_)))))))
          (_%hash92146%_ _%obj92143%_))))
    (define symbolic?
      (lambda (_%obj92138%_)
        (let ((_%$e92140%_ (symbol? _%obj92138%_)))
          (if _%$e92140%_ _%$e92140%_ (keyword? _%obj92138%_)))))
    (define symbolic-hash (lambda (_%obj92136%_) (macro-slot '1 _%obj92136%_)))
    (define string-hash (lambda (_%obj92134%_) (##string=?-hash _%obj92134%_)))
    (define immediate-hash
      (lambda (_%obj92132%_) (##type-cast _%obj92132%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint92113%_ _%seed92115%_)
        (make-raw-table__% _%size-hint92113%_ eq-hash eq? _%seed92115%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint92121%_ '#f) (_%seed92123%_ '0))
          (make-eq-table__% _%size-hint92121%_ _%seed92123%_))))
    (define make-eq-table__1
      (lambda (_%size-hint92125%_)
        (let ((_%seed92127%_ '0))
          (make-eq-table__% _%size-hint92125%_ _%seed92127%_))))
    (define make-eq-table
      (lambda _g92469_
        (let ((_g92468_ (##length _g92469_)))
          (cond ((##fx= _g92468_ 0) (apply make-eq-table__0 _g92469_))
                ((##fx= _g92468_ 1) (apply make-eq-table__1 _g92469_))
                ((##fx= _g92468_ 2) (apply make-eq-table__% _g92469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g92469_))))))
    (define eq-table-ref
      (lambda (_%tab92066%_ _%key92067%_ _%default92068%_)
        (let ((_%table92070%_ (&raw-table-table _%tab92066%_))
              (_%seed92071%_ (&raw-table-seed _%tab92066%_)))
          (let* ((_%h92073%_ (fxxor (eq-hash _%key92067%_) _%seed92071%_))
                 (_%size92076%_ (vector-length _%table92070%_))
                 (_%entries92079%_ (##fxquotient _%size92076%_ '2))
                 (_%start92082%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92073%_ _%entries92079%_)
                   '1)))
            (let _%loop92086%_ ((_%probe92089%_ _%start92082%_)
                                (_%i92091%_ '1)
                                (_%deleted92093%_ '#f))
              (let ((_%k92096%_ (vector-ref _%table92070%_ _%probe92089%_)))
                (if (eq? _%k92096%_ (macro-unused-obj))
                    _%default92068%_
                    (if (eq? _%k92096%_ (macro-deleted-obj))
                        (_%loop92086%_
                         (let ((_%next-probe92101%_
                                (fx+ _%start92082%_
                                     _%i92091%_
                                     (fx* _%i92091%_ _%i92091%_))))
                           (##fxmodulo _%next-probe92101%_ _%size92076%_))
                         (##fx+ _%i92091%_ '1)
                         (let ((_%$e92104%_ _%deleted92093%_))
                           (if _%$e92104%_ _%$e92104%_ _%probe92089%_)))
                        (if (eq? _%key92067%_ _%k92096%_)
                            (vector-ref
                             _%table92070%_
                             (##fx+ _%probe92089%_ '1))
                            (_%loop92086%_
                             (let ((_%next-probe92109%_
                                    (fx+ _%start92082%_
                                         _%i92091%_
                                         (fx* _%i92091%_ _%i92091%_))))
                               (##fxmodulo _%next-probe92109%_ _%size92076%_))
                             (##fx+ _%i92091%_ '1)
                             _%deleted92093%_))))))))))
    (define eq-table-set!
      (lambda (_%tab92062%_ _%key92063%_ _%value92064%_)
        (if (##fx< (&raw-table-free _%tab92062%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92062%_))
                    '4))
            (__raw-table-rehash! _%tab92062%_)
            '#!void)
        (__eq-table-set! _%tab92062%_ _%key92063%_ _%value92064%_)))
    (define __eq-table-set!
      (lambda (_%tab92013%_ _%key92014%_ _%value92015%_)
        (let ((_%table92018%_ (&raw-table-table _%tab92013%_))
              (_%seed92019%_ (&raw-table-seed _%tab92013%_)))
          (let* ((_%h92021%_ (fxxor (eq-hash _%key92014%_) _%seed92019%_))
                 (_%size92024%_ (vector-length _%table92018%_))
                 (_%entries92027%_ (##fxquotient _%size92024%_ '2))
                 (_%start92030%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92021%_ _%entries92027%_)
                   '1)))
            (let _%loop92034%_ ((_%probe92037%_ _%start92030%_)
                                (_%i92039%_ '1)
                                (_%deleted92041%_ '#f))
              (let ((_%k92044%_ (vector-ref _%table92018%_ _%probe92037%_)))
                (if (eq? _%k92044%_ (macro-unused-obj))
                    (if _%deleted92041%_
                        (begin
                          (vector-set!
                           _%table92018%_
                           _%deleted92041%_
                           _%key92014%_)
                          (vector-set!
                           _%table92018%_
                           (##fx+ _%deleted92041%_ '1)
                           _%value92015%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92013%_
                              (##fx+ (&raw-table-count _%tab92013%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92018%_
                           _%probe92037%_
                           _%key92014%_)
                          (vector-set!
                           _%table92018%_
                           (##fx+ _%probe92037%_ '1)
                           _%value92015%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92013%_
                              (##fx- (&raw-table-free _%tab92013%_) '1))
                             (&raw-table-count-set!
                              _%tab92013%_
                              (##fx+ (&raw-table-count _%tab92013%_) '1))))))
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
                        (if (eq? _%key92014%_ _%k92044%_)
                            (let ()
                              (vector-set!
                               _%table92018%_
                               _%probe92037%_
                               _%key92014%_)
                              (vector-set!
                               _%table92018%_
                               (##fx+ _%probe92037%_ '1)
                               _%value92015%_))
                            (_%loop92034%_
                             (let ((_%next-probe92059%_
                                    (fx+ _%start92030%_
                                         _%i92039%_
                                         (fx* _%i92039%_ _%i92039%_))))
                               (##fxmodulo _%next-probe92059%_ _%size92024%_))
                             (##fx+ _%i92039%_ '1)
                             _%deleted92041%_))))))))))
    (define eq-table-update!
      (lambda (_%tab92008%_
               _%key92009%_
               _%eq-table-update!92010%_
               _%default92011%_)
        (if (##fx< (&raw-table-free _%tab92008%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92008%_))
                    '4))
            (__raw-table-rehash! _%tab92008%_)
            '#!void)
        (__eq-table-update!
         _%tab92008%_
         _%key92009%_
         _%eq-table-update!92010%_
         _%default92011%_)))
    (define __eq-table-update!
      (lambda (_%tab91958%_
               _%key91959%_
               _%eq-table-update!91960%_
               _%default91961%_)
        (let ((_%table91964%_ (&raw-table-table _%tab91958%_))
              (_%seed91965%_ (&raw-table-seed _%tab91958%_)))
          (let* ((_%h91967%_ (fxxor (eq-hash _%key91959%_) _%seed91965%_))
                 (_%size91970%_ (vector-length _%table91964%_))
                 (_%entries91973%_ (##fxquotient _%size91970%_ '2))
                 (_%start91976%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91967%_ _%entries91973%_)
                   '1)))
            (let _%loop91980%_ ((_%probe91983%_ _%start91976%_)
                                (_%i91985%_ '1)
                                (_%deleted91987%_ '#f))
              (let ((_%k91990%_ (vector-ref _%table91964%_ _%probe91983%_)))
                (if (eq? _%k91990%_ (macro-unused-obj))
                    (if _%deleted91987%_
                        (begin
                          (vector-set!
                           _%table91964%_
                           _%deleted91987%_
                           _%key91959%_)
                          (vector-set!
                           _%table91964%_
                           (##fx+ _%deleted91987%_ '1)
                           (_%eq-table-update!91960%_ _%default91961%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91958%_
                              (##fx+ (&raw-table-count _%tab91958%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91964%_
                           _%probe91983%_
                           _%key91959%_)
                          (vector-set!
                           _%table91964%_
                           (##fx+ _%probe91983%_ '1)
                           (_%eq-table-update!91960%_ _%default91961%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91958%_
                              (##fx- (&raw-table-free _%tab91958%_) '1))
                             (&raw-table-count-set!
                              _%tab91958%_
                              (##fx+ (&raw-table-count _%tab91958%_) '1))))))
                    (if (eq? _%k91990%_ (macro-deleted-obj))
                        (_%loop91980%_
                         (let ((_%next-probe91997%_
                                (fx+ _%start91976%_
                                     _%i91985%_
                                     (fx* _%i91985%_ _%i91985%_))))
                           (##fxmodulo _%next-probe91997%_ _%size91970%_))
                         (##fx+ _%i91985%_ '1)
                         (let ((_%$e92000%_ _%deleted91987%_))
                           (if _%$e92000%_ _%$e92000%_ _%probe91983%_)))
                        (if (eq? _%key91959%_ _%k91990%_)
                            (let ()
                              (vector-set!
                               _%table91964%_
                               _%probe91983%_
                               _%key91959%_)
                              (vector-set!
                               _%table91964%_
                               (##fx+ _%probe91983%_ '1)
                               (_%eq-table-update!91960%_
                                (vector-ref
                                 _%table91964%_
                                 (##fx+ _%probe91983%_ '1)))))
                            (_%loop91980%_
                             (let ((_%next-probe92005%_
                                    (fx+ _%start91976%_
                                         _%i91985%_
                                         (fx* _%i91985%_ _%i91985%_))))
                               (##fxmodulo _%next-probe92005%_ _%size91970%_))
                             (##fx+ _%i91985%_ '1)
                             _%deleted91987%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab91913%_ _%key91915%_)
        (let ((_%table91918%_ (&raw-table-table _%tab91913%_))
              (_%seed91920%_ (&raw-table-seed _%tab91913%_)))
          (let* ((_%h91923%_ (fxxor (eq-hash _%key91915%_) _%seed91920%_))
                 (_%size91926%_ (vector-length _%table91918%_))
                 (_%entries91929%_ (##fxquotient _%size91926%_ '2))
                 (_%start91932%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91923%_ _%entries91929%_)
                   '1)))
            (let _%loop91936%_ ((_%probe91939%_ _%start91932%_)
                                (_%i91941%_ '1))
              (let ((_%k91944%_ (vector-ref _%table91918%_ _%probe91939%_)))
                (if (eq? _%k91944%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91944%_ (macro-deleted-obj))
                        (_%loop91936%_
                         (let ((_%next-probe91949%_
                                (fx+ _%start91932%_
                                     _%i91941%_
                                     (fx* _%i91941%_ _%i91941%_))))
                           (##fxmodulo _%next-probe91949%_ _%size91926%_))
                         (##fx+ _%i91941%_ '1))
                        (if (eq? _%key91915%_ _%k91944%_)
                            (let ()
                              (vector-set!
                               _%table91918%_
                               _%probe91939%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91918%_
                               (##fx+ _%probe91939%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91913%_
                                  (##fx- (&raw-table-count _%tab91913%_)
                                         '1)))))
                            (_%loop91936%_
                             (let ((_%next-probe91955%_
                                    (fx+ _%start91932%_
                                         _%i91941%_
                                         (fx* _%i91941%_ _%i91941%_))))
                               (##fxmodulo _%next-probe91955%_ _%size91926%_))
                             (##fx+ _%i91941%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint91894%_ _%seed91896%_)
        (make-raw-table__% _%size-hint91894%_ eqv-hash eqv? _%seed91896%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint91902%_ '#f) (_%seed91904%_ '0))
          (make-eqv-table__% _%size-hint91902%_ _%seed91904%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint91906%_)
        (let ((_%seed91908%_ '0))
          (make-eqv-table__% _%size-hint91906%_ _%seed91908%_))))
    (define make-eqv-table
      (lambda _g92471_
        (let ((_g92470_ (##length _g92471_)))
          (cond ((##fx= _g92470_ 0) (apply make-eqv-table__0 _g92471_))
                ((##fx= _g92470_ 1) (apply make-eqv-table__1 _g92471_))
                ((##fx= _g92470_ 2) (apply make-eqv-table__% _g92471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g92471_))))))
    (define eqv-table-ref
      (lambda (_%tab91847%_ _%key91848%_ _%default91849%_)
        (let ((_%table91851%_ (&raw-table-table _%tab91847%_))
              (_%seed91852%_ (&raw-table-seed _%tab91847%_)))
          (let* ((_%h91854%_ (fxxor (eqv-hash _%key91848%_) _%seed91852%_))
                 (_%size91857%_ (vector-length _%table91851%_))
                 (_%entries91860%_ (##fxquotient _%size91857%_ '2))
                 (_%start91863%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91854%_ _%entries91860%_)
                   '1)))
            (let _%loop91867%_ ((_%probe91870%_ _%start91863%_)
                                (_%i91872%_ '1)
                                (_%deleted91874%_ '#f))
              (let ((_%k91877%_ (vector-ref _%table91851%_ _%probe91870%_)))
                (if (eq? _%k91877%_ (macro-unused-obj))
                    _%default91849%_
                    (if (eq? _%k91877%_ (macro-deleted-obj))
                        (_%loop91867%_
                         (let ((_%next-probe91882%_
                                (fx+ _%start91863%_
                                     _%i91872%_
                                     (fx* _%i91872%_ _%i91872%_))))
                           (##fxmodulo _%next-probe91882%_ _%size91857%_))
                         (##fx+ _%i91872%_ '1)
                         (let ((_%$e91885%_ _%deleted91874%_))
                           (if _%$e91885%_ _%$e91885%_ _%probe91870%_)))
                        (if (eqv? _%key91848%_ _%k91877%_)
                            (vector-ref
                             _%table91851%_
                             (##fx+ _%probe91870%_ '1))
                            (_%loop91867%_
                             (let ((_%next-probe91890%_
                                    (fx+ _%start91863%_
                                         _%i91872%_
                                         (fx* _%i91872%_ _%i91872%_))))
                               (##fxmodulo _%next-probe91890%_ _%size91857%_))
                             (##fx+ _%i91872%_ '1)
                             _%deleted91874%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab91843%_ _%key91844%_ _%value91845%_)
        (if (##fx< (&raw-table-free _%tab91843%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91843%_))
                    '4))
            (__raw-table-rehash! _%tab91843%_)
            '#!void)
        (__eqv-table-set! _%tab91843%_ _%key91844%_ _%value91845%_)))
    (define __eqv-table-set!
      (lambda (_%tab91794%_ _%key91795%_ _%value91796%_)
        (let ((_%table91799%_ (&raw-table-table _%tab91794%_))
              (_%seed91800%_ (&raw-table-seed _%tab91794%_)))
          (let* ((_%h91802%_ (fxxor (eqv-hash _%key91795%_) _%seed91800%_))
                 (_%size91805%_ (vector-length _%table91799%_))
                 (_%entries91808%_ (##fxquotient _%size91805%_ '2))
                 (_%start91811%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91802%_ _%entries91808%_)
                   '1)))
            (let _%loop91815%_ ((_%probe91818%_ _%start91811%_)
                                (_%i91820%_ '1)
                                (_%deleted91822%_ '#f))
              (let ((_%k91825%_ (vector-ref _%table91799%_ _%probe91818%_)))
                (if (eq? _%k91825%_ (macro-unused-obj))
                    (if _%deleted91822%_
                        (begin
                          (vector-set!
                           _%table91799%_
                           _%deleted91822%_
                           _%key91795%_)
                          (vector-set!
                           _%table91799%_
                           (##fx+ _%deleted91822%_ '1)
                           _%value91796%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91794%_
                              (##fx+ (&raw-table-count _%tab91794%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91799%_
                           _%probe91818%_
                           _%key91795%_)
                          (vector-set!
                           _%table91799%_
                           (##fx+ _%probe91818%_ '1)
                           _%value91796%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91794%_
                              (##fx- (&raw-table-free _%tab91794%_) '1))
                             (&raw-table-count-set!
                              _%tab91794%_
                              (##fx+ (&raw-table-count _%tab91794%_) '1))))))
                    (if (eq? _%k91825%_ (macro-deleted-obj))
                        (_%loop91815%_
                         (let ((_%next-probe91832%_
                                (fx+ _%start91811%_
                                     _%i91820%_
                                     (fx* _%i91820%_ _%i91820%_))))
                           (##fxmodulo _%next-probe91832%_ _%size91805%_))
                         (##fx+ _%i91820%_ '1)
                         (let ((_%$e91835%_ _%deleted91822%_))
                           (if _%$e91835%_ _%$e91835%_ _%probe91818%_)))
                        (if (eqv? _%key91795%_ _%k91825%_)
                            (let ()
                              (vector-set!
                               _%table91799%_
                               _%probe91818%_
                               _%key91795%_)
                              (vector-set!
                               _%table91799%_
                               (##fx+ _%probe91818%_ '1)
                               _%value91796%_))
                            (_%loop91815%_
                             (let ((_%next-probe91840%_
                                    (fx+ _%start91811%_
                                         _%i91820%_
                                         (fx* _%i91820%_ _%i91820%_))))
                               (##fxmodulo _%next-probe91840%_ _%size91805%_))
                             (##fx+ _%i91820%_ '1)
                             _%deleted91822%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab91789%_
               _%key91790%_
               _%eqv-table-update!91791%_
               _%default91792%_)
        (if (##fx< (&raw-table-free _%tab91789%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91789%_))
                    '4))
            (__raw-table-rehash! _%tab91789%_)
            '#!void)
        (__eqv-table-update!
         _%tab91789%_
         _%key91790%_
         _%eqv-table-update!91791%_
         _%default91792%_)))
    (define __eqv-table-update!
      (lambda (_%tab91739%_
               _%key91740%_
               _%eqv-table-update!91741%_
               _%default91742%_)
        (let ((_%table91745%_ (&raw-table-table _%tab91739%_))
              (_%seed91746%_ (&raw-table-seed _%tab91739%_)))
          (let* ((_%h91748%_ (fxxor (eqv-hash _%key91740%_) _%seed91746%_))
                 (_%size91751%_ (vector-length _%table91745%_))
                 (_%entries91754%_ (##fxquotient _%size91751%_ '2))
                 (_%start91757%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91748%_ _%entries91754%_)
                   '1)))
            (let _%loop91761%_ ((_%probe91764%_ _%start91757%_)
                                (_%i91766%_ '1)
                                (_%deleted91768%_ '#f))
              (let ((_%k91771%_ (vector-ref _%table91745%_ _%probe91764%_)))
                (if (eq? _%k91771%_ (macro-unused-obj))
                    (if _%deleted91768%_
                        (begin
                          (vector-set!
                           _%table91745%_
                           _%deleted91768%_
                           _%key91740%_)
                          (vector-set!
                           _%table91745%_
                           (##fx+ _%deleted91768%_ '1)
                           (_%eqv-table-update!91741%_ _%default91742%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91739%_
                              (##fx+ (&raw-table-count _%tab91739%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91745%_
                           _%probe91764%_
                           _%key91740%_)
                          (vector-set!
                           _%table91745%_
                           (##fx+ _%probe91764%_ '1)
                           (_%eqv-table-update!91741%_ _%default91742%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91739%_
                              (##fx- (&raw-table-free _%tab91739%_) '1))
                             (&raw-table-count-set!
                              _%tab91739%_
                              (##fx+ (&raw-table-count _%tab91739%_) '1))))))
                    (if (eq? _%k91771%_ (macro-deleted-obj))
                        (_%loop91761%_
                         (let ((_%next-probe91778%_
                                (fx+ _%start91757%_
                                     _%i91766%_
                                     (fx* _%i91766%_ _%i91766%_))))
                           (##fxmodulo _%next-probe91778%_ _%size91751%_))
                         (##fx+ _%i91766%_ '1)
                         (let ((_%$e91781%_ _%deleted91768%_))
                           (if _%$e91781%_ _%$e91781%_ _%probe91764%_)))
                        (if (eqv? _%key91740%_ _%k91771%_)
                            (let ()
                              (vector-set!
                               _%table91745%_
                               _%probe91764%_
                               _%key91740%_)
                              (vector-set!
                               _%table91745%_
                               (##fx+ _%probe91764%_ '1)
                               (_%eqv-table-update!91741%_
                                (vector-ref
                                 _%table91745%_
                                 (##fx+ _%probe91764%_ '1)))))
                            (_%loop91761%_
                             (let ((_%next-probe91786%_
                                    (fx+ _%start91757%_
                                         _%i91766%_
                                         (fx* _%i91766%_ _%i91766%_))))
                               (##fxmodulo _%next-probe91786%_ _%size91751%_))
                             (##fx+ _%i91766%_ '1)
                             _%deleted91768%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab91694%_ _%key91696%_)
        (let ((_%table91699%_ (&raw-table-table _%tab91694%_))
              (_%seed91701%_ (&raw-table-seed _%tab91694%_)))
          (let* ((_%h91704%_ (fxxor (eqv-hash _%key91696%_) _%seed91701%_))
                 (_%size91707%_ (vector-length _%table91699%_))
                 (_%entries91710%_ (##fxquotient _%size91707%_ '2))
                 (_%start91713%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91704%_ _%entries91710%_)
                   '1)))
            (let _%loop91717%_ ((_%probe91720%_ _%start91713%_)
                                (_%i91722%_ '1))
              (let ((_%k91725%_ (vector-ref _%table91699%_ _%probe91720%_)))
                (if (eq? _%k91725%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91725%_ (macro-deleted-obj))
                        (_%loop91717%_
                         (let ((_%next-probe91730%_
                                (fx+ _%start91713%_
                                     _%i91722%_
                                     (fx* _%i91722%_ _%i91722%_))))
                           (##fxmodulo _%next-probe91730%_ _%size91707%_))
                         (##fx+ _%i91722%_ '1))
                        (if (eqv? _%key91696%_ _%k91725%_)
                            (let ()
                              (vector-set!
                               _%table91699%_
                               _%probe91720%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91699%_
                               (##fx+ _%probe91720%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91694%_
                                  (##fx- (&raw-table-count _%tab91694%_)
                                         '1)))))
                            (_%loop91717%_
                             (let ((_%next-probe91736%_
                                    (fx+ _%start91713%_
                                         _%i91722%_
                                         (fx* _%i91722%_ _%i91722%_))))
                               (##fxmodulo _%next-probe91736%_ _%size91707%_))
                             (##fx+ _%i91722%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint91675%_ _%seed91677%_)
        (make-raw-table__%
         _%size-hint91675%_
         symbolic-hash
         eq?
         _%seed91677%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint91683%_ '#f) (_%seed91685%_ '0))
          (make-symbolic-table__% _%size-hint91683%_ _%seed91685%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint91687%_)
        (let ((_%seed91689%_ '0))
          (make-symbolic-table__% _%size-hint91687%_ _%seed91689%_))))
    (define make-symbolic-table
      (lambda _g92473_
        (let ((_g92472_ (##length _g92473_)))
          (cond ((##fx= _g92472_ 0) (apply make-symbolic-table__0 _g92473_))
                ((##fx= _g92472_ 1) (apply make-symbolic-table__1 _g92473_))
                ((##fx= _g92472_ 2) (apply make-symbolic-table__% _g92473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g92473_))))))
    (define symbolic-table-ref
      (lambda (_%tab91628%_ _%key91629%_ _%default91630%_)
        (let ((_%table91632%_ (&raw-table-table _%tab91628%_))
              (_%seed91633%_ (&raw-table-seed _%tab91628%_)))
          (let* ((_%h91635%_
                  (fxxor (symbolic-hash _%key91629%_) _%seed91633%_))
                 (_%size91638%_ (vector-length _%table91632%_))
                 (_%entries91641%_ (##fxquotient _%size91638%_ '2))
                 (_%start91644%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91635%_ _%entries91641%_)
                   '1)))
            (let _%loop91648%_ ((_%probe91651%_ _%start91644%_)
                                (_%i91653%_ '1)
                                (_%deleted91655%_ '#f))
              (let ((_%k91658%_ (vector-ref _%table91632%_ _%probe91651%_)))
                (if (eq? _%k91658%_ (macro-unused-obj))
                    _%default91630%_
                    (if (eq? _%k91658%_ (macro-deleted-obj))
                        (_%loop91648%_
                         (let ((_%next-probe91663%_
                                (fx+ _%start91644%_
                                     _%i91653%_
                                     (fx* _%i91653%_ _%i91653%_))))
                           (##fxmodulo _%next-probe91663%_ _%size91638%_))
                         (##fx+ _%i91653%_ '1)
                         (let ((_%$e91666%_ _%deleted91655%_))
                           (if _%$e91666%_ _%$e91666%_ _%probe91651%_)))
                        (if (eq? _%key91629%_ _%k91658%_)
                            (vector-ref
                             _%table91632%_
                             (##fx+ _%probe91651%_ '1))
                            (_%loop91648%_
                             (let ((_%next-probe91671%_
                                    (fx+ _%start91644%_
                                         _%i91653%_
                                         (fx* _%i91653%_ _%i91653%_))))
                               (##fxmodulo _%next-probe91671%_ _%size91638%_))
                             (##fx+ _%i91653%_ '1)
                             _%deleted91655%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab91624%_ _%key91625%_ _%value91626%_)
        (if (##fx< (&raw-table-free _%tab91624%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91624%_))
                    '4))
            (__raw-table-rehash! _%tab91624%_)
            '#!void)
        (__symbolic-table-set! _%tab91624%_ _%key91625%_ _%value91626%_)))
    (define __symbolic-table-set!
      (lambda (_%tab91575%_ _%key91576%_ _%value91577%_)
        (let ((_%table91580%_ (&raw-table-table _%tab91575%_))
              (_%seed91581%_ (&raw-table-seed _%tab91575%_)))
          (let* ((_%h91583%_
                  (fxxor (symbolic-hash _%key91576%_) _%seed91581%_))
                 (_%size91586%_ (vector-length _%table91580%_))
                 (_%entries91589%_ (##fxquotient _%size91586%_ '2))
                 (_%start91592%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91583%_ _%entries91589%_)
                   '1)))
            (let _%loop91596%_ ((_%probe91599%_ _%start91592%_)
                                (_%i91601%_ '1)
                                (_%deleted91603%_ '#f))
              (let ((_%k91606%_ (vector-ref _%table91580%_ _%probe91599%_)))
                (if (eq? _%k91606%_ (macro-unused-obj))
                    (if _%deleted91603%_
                        (begin
                          (vector-set!
                           _%table91580%_
                           _%deleted91603%_
                           _%key91576%_)
                          (vector-set!
                           _%table91580%_
                           (##fx+ _%deleted91603%_ '1)
                           _%value91577%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91575%_
                              (##fx+ (&raw-table-count _%tab91575%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91580%_
                           _%probe91599%_
                           _%key91576%_)
                          (vector-set!
                           _%table91580%_
                           (##fx+ _%probe91599%_ '1)
                           _%value91577%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91575%_
                              (##fx- (&raw-table-free _%tab91575%_) '1))
                             (&raw-table-count-set!
                              _%tab91575%_
                              (##fx+ (&raw-table-count _%tab91575%_) '1))))))
                    (if (eq? _%k91606%_ (macro-deleted-obj))
                        (_%loop91596%_
                         (let ((_%next-probe91613%_
                                (fx+ _%start91592%_
                                     _%i91601%_
                                     (fx* _%i91601%_ _%i91601%_))))
                           (##fxmodulo _%next-probe91613%_ _%size91586%_))
                         (##fx+ _%i91601%_ '1)
                         (let ((_%$e91616%_ _%deleted91603%_))
                           (if _%$e91616%_ _%$e91616%_ _%probe91599%_)))
                        (if (eq? _%key91576%_ _%k91606%_)
                            (let ()
                              (vector-set!
                               _%table91580%_
                               _%probe91599%_
                               _%key91576%_)
                              (vector-set!
                               _%table91580%_
                               (##fx+ _%probe91599%_ '1)
                               _%value91577%_))
                            (_%loop91596%_
                             (let ((_%next-probe91621%_
                                    (fx+ _%start91592%_
                                         _%i91601%_
                                         (fx* _%i91601%_ _%i91601%_))))
                               (##fxmodulo _%next-probe91621%_ _%size91586%_))
                             (##fx+ _%i91601%_ '1)
                             _%deleted91603%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab91570%_
               _%key91571%_
               _%symbolic-table-update!91572%_
               _%default91573%_)
        (if (##fx< (&raw-table-free _%tab91570%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91570%_))
                    '4))
            (__raw-table-rehash! _%tab91570%_)
            '#!void)
        (__symbolic-table-update!
         _%tab91570%_
         _%key91571%_
         _%symbolic-table-update!91572%_
         _%default91573%_)))
    (define __symbolic-table-update!
      (lambda (_%tab91520%_
               _%key91521%_
               _%symbolic-table-update!91522%_
               _%default91523%_)
        (let ((_%table91526%_ (&raw-table-table _%tab91520%_))
              (_%seed91527%_ (&raw-table-seed _%tab91520%_)))
          (let* ((_%h91529%_
                  (fxxor (symbolic-hash _%key91521%_) _%seed91527%_))
                 (_%size91532%_ (vector-length _%table91526%_))
                 (_%entries91535%_ (##fxquotient _%size91532%_ '2))
                 (_%start91538%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91529%_ _%entries91535%_)
                   '1)))
            (let _%loop91542%_ ((_%probe91545%_ _%start91538%_)
                                (_%i91547%_ '1)
                                (_%deleted91549%_ '#f))
              (let ((_%k91552%_ (vector-ref _%table91526%_ _%probe91545%_)))
                (if (eq? _%k91552%_ (macro-unused-obj))
                    (if _%deleted91549%_
                        (begin
                          (vector-set!
                           _%table91526%_
                           _%deleted91549%_
                           _%key91521%_)
                          (vector-set!
                           _%table91526%_
                           (##fx+ _%deleted91549%_ '1)
                           (_%symbolic-table-update!91522%_ _%default91523%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91520%_
                              (##fx+ (&raw-table-count _%tab91520%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91526%_
                           _%probe91545%_
                           _%key91521%_)
                          (vector-set!
                           _%table91526%_
                           (##fx+ _%probe91545%_ '1)
                           (_%symbolic-table-update!91522%_ _%default91523%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91520%_
                              (##fx- (&raw-table-free _%tab91520%_) '1))
                             (&raw-table-count-set!
                              _%tab91520%_
                              (##fx+ (&raw-table-count _%tab91520%_) '1))))))
                    (if (eq? _%k91552%_ (macro-deleted-obj))
                        (_%loop91542%_
                         (let ((_%next-probe91559%_
                                (fx+ _%start91538%_
                                     _%i91547%_
                                     (fx* _%i91547%_ _%i91547%_))))
                           (##fxmodulo _%next-probe91559%_ _%size91532%_))
                         (##fx+ _%i91547%_ '1)
                         (let ((_%$e91562%_ _%deleted91549%_))
                           (if _%$e91562%_ _%$e91562%_ _%probe91545%_)))
                        (if (eq? _%key91521%_ _%k91552%_)
                            (let ()
                              (vector-set!
                               _%table91526%_
                               _%probe91545%_
                               _%key91521%_)
                              (vector-set!
                               _%table91526%_
                               (##fx+ _%probe91545%_ '1)
                               (_%symbolic-table-update!91522%_
                                (vector-ref
                                 _%table91526%_
                                 (##fx+ _%probe91545%_ '1)))))
                            (_%loop91542%_
                             (let ((_%next-probe91567%_
                                    (fx+ _%start91538%_
                                         _%i91547%_
                                         (fx* _%i91547%_ _%i91547%_))))
                               (##fxmodulo _%next-probe91567%_ _%size91532%_))
                             (##fx+ _%i91547%_ '1)
                             _%deleted91549%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab91475%_ _%key91477%_)
        (let ((_%table91480%_ (&raw-table-table _%tab91475%_))
              (_%seed91482%_ (&raw-table-seed _%tab91475%_)))
          (let* ((_%h91485%_
                  (fxxor (symbolic-hash _%key91477%_) _%seed91482%_))
                 (_%size91488%_ (vector-length _%table91480%_))
                 (_%entries91491%_ (##fxquotient _%size91488%_ '2))
                 (_%start91494%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91485%_ _%entries91491%_)
                   '1)))
            (let _%loop91498%_ ((_%probe91501%_ _%start91494%_)
                                (_%i91503%_ '1))
              (let ((_%k91506%_ (vector-ref _%table91480%_ _%probe91501%_)))
                (if (eq? _%k91506%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91506%_ (macro-deleted-obj))
                        (_%loop91498%_
                         (let ((_%next-probe91511%_
                                (fx+ _%start91494%_
                                     _%i91503%_
                                     (fx* _%i91503%_ _%i91503%_))))
                           (##fxmodulo _%next-probe91511%_ _%size91488%_))
                         (##fx+ _%i91503%_ '1))
                        (if (eq? _%key91477%_ _%k91506%_)
                            (let ()
                              (vector-set!
                               _%table91480%_
                               _%probe91501%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91480%_
                               (##fx+ _%probe91501%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91475%_
                                  (##fx- (&raw-table-count _%tab91475%_)
                                         '1)))))
                            (_%loop91498%_
                             (let ((_%next-probe91517%_
                                    (fx+ _%start91494%_
                                         _%i91503%_
                                         (fx* _%i91503%_ _%i91503%_))))
                               (##fxmodulo _%next-probe91517%_ _%size91488%_))
                             (##fx+ _%i91503%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint91456%_ _%seed91458%_)
        (make-raw-table__%
         _%size-hint91456%_
         string-hash
         ##string=?
         _%seed91458%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint91464%_ '#f) (_%seed91466%_ '0))
          (make-string-table__% _%size-hint91464%_ _%seed91466%_))))
    (define make-string-table__1
      (lambda (_%size-hint91468%_)
        (let ((_%seed91470%_ '0))
          (make-string-table__% _%size-hint91468%_ _%seed91470%_))))
    (define make-string-table
      (lambda _g92475_
        (let ((_g92474_ (##length _g92475_)))
          (cond ((##fx= _g92474_ 0) (apply make-string-table__0 _g92475_))
                ((##fx= _g92474_ 1) (apply make-string-table__1 _g92475_))
                ((##fx= _g92474_ 2) (apply make-string-table__% _g92475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g92475_))))))
    (define string-table-ref
      (lambda (_%tab91409%_ _%key91410%_ _%default91411%_)
        (let ((_%table91413%_ (&raw-table-table _%tab91409%_))
              (_%seed91414%_ (&raw-table-seed _%tab91409%_)))
          (let* ((_%h91416%_
                  (fxxor (##string=?-hash _%key91410%_) _%seed91414%_))
                 (_%size91419%_ (vector-length _%table91413%_))
                 (_%entries91422%_ (##fxquotient _%size91419%_ '2))
                 (_%start91425%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91416%_ _%entries91422%_)
                   '1)))
            (let _%loop91429%_ ((_%probe91432%_ _%start91425%_)
                                (_%i91434%_ '1)
                                (_%deleted91436%_ '#f))
              (let ((_%k91439%_ (vector-ref _%table91413%_ _%probe91432%_)))
                (if (eq? _%k91439%_ (macro-unused-obj))
                    _%default91411%_
                    (if (eq? _%k91439%_ (macro-deleted-obj))
                        (_%loop91429%_
                         (let ((_%next-probe91444%_
                                (fx+ _%start91425%_
                                     _%i91434%_
                                     (fx* _%i91434%_ _%i91434%_))))
                           (##fxmodulo _%next-probe91444%_ _%size91419%_))
                         (##fx+ _%i91434%_ '1)
                         (let ((_%$e91447%_ _%deleted91436%_))
                           (if _%$e91447%_ _%$e91447%_ _%probe91432%_)))
                        (if (##string=? _%key91410%_ _%k91439%_)
                            (vector-ref
                             _%table91413%_
                             (##fx+ _%probe91432%_ '1))
                            (_%loop91429%_
                             (let ((_%next-probe91452%_
                                    (fx+ _%start91425%_
                                         _%i91434%_
                                         (fx* _%i91434%_ _%i91434%_))))
                               (##fxmodulo _%next-probe91452%_ _%size91419%_))
                             (##fx+ _%i91434%_ '1)
                             _%deleted91436%_))))))))))
    (define string-table-set!
      (lambda (_%tab91405%_ _%key91406%_ _%value91407%_)
        (if (##fx< (&raw-table-free _%tab91405%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91405%_))
                    '4))
            (__raw-table-rehash! _%tab91405%_)
            '#!void)
        (__string-table-set! _%tab91405%_ _%key91406%_ _%value91407%_)))
    (define __string-table-set!
      (lambda (_%tab91356%_ _%key91357%_ _%value91358%_)
        (let ((_%table91361%_ (&raw-table-table _%tab91356%_))
              (_%seed91362%_ (&raw-table-seed _%tab91356%_)))
          (let* ((_%h91364%_
                  (fxxor (##string=?-hash _%key91357%_) _%seed91362%_))
                 (_%size91367%_ (vector-length _%table91361%_))
                 (_%entries91370%_ (##fxquotient _%size91367%_ '2))
                 (_%start91373%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91364%_ _%entries91370%_)
                   '1)))
            (let _%loop91377%_ ((_%probe91380%_ _%start91373%_)
                                (_%i91382%_ '1)
                                (_%deleted91384%_ '#f))
              (let ((_%k91387%_ (vector-ref _%table91361%_ _%probe91380%_)))
                (if (eq? _%k91387%_ (macro-unused-obj))
                    (if _%deleted91384%_
                        (begin
                          (vector-set!
                           _%table91361%_
                           _%deleted91384%_
                           _%key91357%_)
                          (vector-set!
                           _%table91361%_
                           (##fx+ _%deleted91384%_ '1)
                           _%value91358%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91356%_
                              (##fx+ (&raw-table-count _%tab91356%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91361%_
                           _%probe91380%_
                           _%key91357%_)
                          (vector-set!
                           _%table91361%_
                           (##fx+ _%probe91380%_ '1)
                           _%value91358%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91356%_
                              (##fx- (&raw-table-free _%tab91356%_) '1))
                             (&raw-table-count-set!
                              _%tab91356%_
                              (##fx+ (&raw-table-count _%tab91356%_) '1))))))
                    (if (eq? _%k91387%_ (macro-deleted-obj))
                        (_%loop91377%_
                         (let ((_%next-probe91394%_
                                (fx+ _%start91373%_
                                     _%i91382%_
                                     (fx* _%i91382%_ _%i91382%_))))
                           (##fxmodulo _%next-probe91394%_ _%size91367%_))
                         (##fx+ _%i91382%_ '1)
                         (let ((_%$e91397%_ _%deleted91384%_))
                           (if _%$e91397%_ _%$e91397%_ _%probe91380%_)))
                        (if (##string=? _%key91357%_ _%k91387%_)
                            (let ()
                              (vector-set!
                               _%table91361%_
                               _%probe91380%_
                               _%key91357%_)
                              (vector-set!
                               _%table91361%_
                               (##fx+ _%probe91380%_ '1)
                               _%value91358%_))
                            (_%loop91377%_
                             (let ((_%next-probe91402%_
                                    (fx+ _%start91373%_
                                         _%i91382%_
                                         (fx* _%i91382%_ _%i91382%_))))
                               (##fxmodulo _%next-probe91402%_ _%size91367%_))
                             (##fx+ _%i91382%_ '1)
                             _%deleted91384%_))))))))))
    (define string-table-update!
      (lambda (_%tab91351%_
               _%key91352%_
               _%string-table-update!91353%_
               _%default91354%_)
        (if (##fx< (&raw-table-free _%tab91351%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91351%_))
                    '4))
            (__raw-table-rehash! _%tab91351%_)
            '#!void)
        (__string-table-update!
         _%tab91351%_
         _%key91352%_
         _%string-table-update!91353%_
         _%default91354%_)))
    (define __string-table-update!
      (lambda (_%tab91301%_
               _%key91302%_
               _%string-table-update!91303%_
               _%default91304%_)
        (let ((_%table91307%_ (&raw-table-table _%tab91301%_))
              (_%seed91308%_ (&raw-table-seed _%tab91301%_)))
          (let* ((_%h91310%_
                  (fxxor (##string=?-hash _%key91302%_) _%seed91308%_))
                 (_%size91313%_ (vector-length _%table91307%_))
                 (_%entries91316%_ (##fxquotient _%size91313%_ '2))
                 (_%start91319%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91310%_ _%entries91316%_)
                   '1)))
            (let _%loop91323%_ ((_%probe91326%_ _%start91319%_)
                                (_%i91328%_ '1)
                                (_%deleted91330%_ '#f))
              (let ((_%k91333%_ (vector-ref _%table91307%_ _%probe91326%_)))
                (if (eq? _%k91333%_ (macro-unused-obj))
                    (if _%deleted91330%_
                        (begin
                          (vector-set!
                           _%table91307%_
                           _%deleted91330%_
                           _%key91302%_)
                          (vector-set!
                           _%table91307%_
                           (##fx+ _%deleted91330%_ '1)
                           (_%string-table-update!91303%_ _%default91304%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91301%_
                              (##fx+ (&raw-table-count _%tab91301%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91307%_
                           _%probe91326%_
                           _%key91302%_)
                          (vector-set!
                           _%table91307%_
                           (##fx+ _%probe91326%_ '1)
                           (_%string-table-update!91303%_ _%default91304%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91301%_
                              (##fx- (&raw-table-free _%tab91301%_) '1))
                             (&raw-table-count-set!
                              _%tab91301%_
                              (##fx+ (&raw-table-count _%tab91301%_) '1))))))
                    (if (eq? _%k91333%_ (macro-deleted-obj))
                        (_%loop91323%_
                         (let ((_%next-probe91340%_
                                (fx+ _%start91319%_
                                     _%i91328%_
                                     (fx* _%i91328%_ _%i91328%_))))
                           (##fxmodulo _%next-probe91340%_ _%size91313%_))
                         (##fx+ _%i91328%_ '1)
                         (let ((_%$e91343%_ _%deleted91330%_))
                           (if _%$e91343%_ _%$e91343%_ _%probe91326%_)))
                        (if (##string=? _%key91302%_ _%k91333%_)
                            (let ()
                              (vector-set!
                               _%table91307%_
                               _%probe91326%_
                               _%key91302%_)
                              (vector-set!
                               _%table91307%_
                               (##fx+ _%probe91326%_ '1)
                               (_%string-table-update!91303%_
                                (vector-ref
                                 _%table91307%_
                                 (##fx+ _%probe91326%_ '1)))))
                            (_%loop91323%_
                             (let ((_%next-probe91348%_
                                    (fx+ _%start91319%_
                                         _%i91328%_
                                         (fx* _%i91328%_ _%i91328%_))))
                               (##fxmodulo _%next-probe91348%_ _%size91313%_))
                             (##fx+ _%i91328%_ '1)
                             _%deleted91330%_))))))))))
    (define string-table-delete!
      (lambda (_%tab91256%_ _%key91258%_)
        (let ((_%table91261%_ (&raw-table-table _%tab91256%_))
              (_%seed91263%_ (&raw-table-seed _%tab91256%_)))
          (let* ((_%h91266%_
                  (fxxor (##string=?-hash _%key91258%_) _%seed91263%_))
                 (_%size91269%_ (vector-length _%table91261%_))
                 (_%entries91272%_ (##fxquotient _%size91269%_ '2))
                 (_%start91275%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91266%_ _%entries91272%_)
                   '1)))
            (let _%loop91279%_ ((_%probe91282%_ _%start91275%_)
                                (_%i91284%_ '1))
              (let ((_%k91287%_ (vector-ref _%table91261%_ _%probe91282%_)))
                (if (eq? _%k91287%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91287%_ (macro-deleted-obj))
                        (_%loop91279%_
                         (let ((_%next-probe91292%_
                                (fx+ _%start91275%_
                                     _%i91284%_
                                     (fx* _%i91284%_ _%i91284%_))))
                           (##fxmodulo _%next-probe91292%_ _%size91269%_))
                         (##fx+ _%i91284%_ '1))
                        (if (##string=? _%key91258%_ _%k91287%_)
                            (let ()
                              (vector-set!
                               _%table91261%_
                               _%probe91282%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91261%_
                               (##fx+ _%probe91282%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91256%_
                                  (##fx- (&raw-table-count _%tab91256%_)
                                         '1)))))
                            (_%loop91279%_
                             (let ((_%next-probe91298%_
                                    (fx+ _%start91275%_
                                         _%i91284%_
                                         (fx* _%i91284%_ _%i91284%_))))
                               (##fxmodulo _%next-probe91298%_ _%size91269%_))
                             (##fx+ _%i91284%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint91237%_ _%seed91239%_)
        (make-raw-table__%
         _%size-hint91237%_
         immediate-hash
         eq?
         _%seed91239%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint91245%_ '#f) (_%seed91247%_ '0))
          (make-immediate-table__% _%size-hint91245%_ _%seed91247%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint91249%_)
        (let ((_%seed91251%_ '0))
          (make-immediate-table__% _%size-hint91249%_ _%seed91251%_))))
    (define make-immediate-table
      (lambda _g92477_
        (let ((_g92476_ (##length _g92477_)))
          (cond ((##fx= _g92476_ 0) (apply make-immediate-table__0 _g92477_))
                ((##fx= _g92476_ 1) (apply make-immediate-table__1 _g92477_))
                ((##fx= _g92476_ 2) (apply make-immediate-table__% _g92477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g92477_))))))
    (define immediate-table-ref
      (lambda (_%tab91190%_ _%key91191%_ _%default91192%_)
        (let ((_%table91194%_ (&raw-table-table _%tab91190%_))
              (_%seed91195%_ (&raw-table-seed _%tab91190%_)))
          (let* ((_%h91197%_
                  (fxxor (immediate-hash _%key91191%_) _%seed91195%_))
                 (_%size91200%_ (vector-length _%table91194%_))
                 (_%entries91203%_ (##fxquotient _%size91200%_ '2))
                 (_%start91206%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91197%_ _%entries91203%_)
                   '1)))
            (let _%loop91210%_ ((_%probe91213%_ _%start91206%_)
                                (_%i91215%_ '1)
                                (_%deleted91217%_ '#f))
              (let ((_%k91220%_ (vector-ref _%table91194%_ _%probe91213%_)))
                (if (eq? _%k91220%_ (macro-unused-obj))
                    _%default91192%_
                    (if (eq? _%k91220%_ (macro-deleted-obj))
                        (_%loop91210%_
                         (let ((_%next-probe91225%_
                                (fx+ _%start91206%_
                                     _%i91215%_
                                     (fx* _%i91215%_ _%i91215%_))))
                           (##fxmodulo _%next-probe91225%_ _%size91200%_))
                         (##fx+ _%i91215%_ '1)
                         (let ((_%$e91228%_ _%deleted91217%_))
                           (if _%$e91228%_ _%$e91228%_ _%probe91213%_)))
                        (if (eq? _%key91191%_ _%k91220%_)
                            (vector-ref
                             _%table91194%_
                             (##fx+ _%probe91213%_ '1))
                            (_%loop91210%_
                             (let ((_%next-probe91233%_
                                    (fx+ _%start91206%_
                                         _%i91215%_
                                         (fx* _%i91215%_ _%i91215%_))))
                               (##fxmodulo _%next-probe91233%_ _%size91200%_))
                             (##fx+ _%i91215%_ '1)
                             _%deleted91217%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab91186%_ _%key91187%_ _%value91188%_)
        (if (##fx< (&raw-table-free _%tab91186%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91186%_))
                    '4))
            (__raw-table-rehash! _%tab91186%_)
            '#!void)
        (__immediate-table-set! _%tab91186%_ _%key91187%_ _%value91188%_)))
    (define __immediate-table-set!
      (lambda (_%tab91137%_ _%key91138%_ _%value91139%_)
        (let ((_%table91142%_ (&raw-table-table _%tab91137%_))
              (_%seed91143%_ (&raw-table-seed _%tab91137%_)))
          (let* ((_%h91145%_
                  (fxxor (immediate-hash _%key91138%_) _%seed91143%_))
                 (_%size91148%_ (vector-length _%table91142%_))
                 (_%entries91151%_ (##fxquotient _%size91148%_ '2))
                 (_%start91154%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91145%_ _%entries91151%_)
                   '1)))
            (let _%loop91158%_ ((_%probe91161%_ _%start91154%_)
                                (_%i91163%_ '1)
                                (_%deleted91165%_ '#f))
              (let ((_%k91168%_ (vector-ref _%table91142%_ _%probe91161%_)))
                (if (eq? _%k91168%_ (macro-unused-obj))
                    (if _%deleted91165%_
                        (begin
                          (vector-set!
                           _%table91142%_
                           _%deleted91165%_
                           _%key91138%_)
                          (vector-set!
                           _%table91142%_
                           (##fx+ _%deleted91165%_ '1)
                           _%value91139%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91137%_
                              (##fx+ (&raw-table-count _%tab91137%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91142%_
                           _%probe91161%_
                           _%key91138%_)
                          (vector-set!
                           _%table91142%_
                           (##fx+ _%probe91161%_ '1)
                           _%value91139%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91137%_
                              (##fx- (&raw-table-free _%tab91137%_) '1))
                             (&raw-table-count-set!
                              _%tab91137%_
                              (##fx+ (&raw-table-count _%tab91137%_) '1))))))
                    (if (eq? _%k91168%_ (macro-deleted-obj))
                        (_%loop91158%_
                         (let ((_%next-probe91175%_
                                (fx+ _%start91154%_
                                     _%i91163%_
                                     (fx* _%i91163%_ _%i91163%_))))
                           (##fxmodulo _%next-probe91175%_ _%size91148%_))
                         (##fx+ _%i91163%_ '1)
                         (let ((_%$e91178%_ _%deleted91165%_))
                           (if _%$e91178%_ _%$e91178%_ _%probe91161%_)))
                        (if (eq? _%key91138%_ _%k91168%_)
                            (let ()
                              (vector-set!
                               _%table91142%_
                               _%probe91161%_
                               _%key91138%_)
                              (vector-set!
                               _%table91142%_
                               (##fx+ _%probe91161%_ '1)
                               _%value91139%_))
                            (_%loop91158%_
                             (let ((_%next-probe91183%_
                                    (fx+ _%start91154%_
                                         _%i91163%_
                                         (fx* _%i91163%_ _%i91163%_))))
                               (##fxmodulo _%next-probe91183%_ _%size91148%_))
                             (##fx+ _%i91163%_ '1)
                             _%deleted91165%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab91132%_
               _%key91133%_
               _%immediate-table-update!91134%_
               _%default91135%_)
        (if (##fx< (&raw-table-free _%tab91132%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91132%_))
                    '4))
            (__raw-table-rehash! _%tab91132%_)
            '#!void)
        (__immediate-table-update!
         _%tab91132%_
         _%key91133%_
         _%immediate-table-update!91134%_
         _%default91135%_)))
    (define __immediate-table-update!
      (lambda (_%tab91082%_
               _%key91083%_
               _%immediate-table-update!91084%_
               _%default91085%_)
        (let ((_%table91088%_ (&raw-table-table _%tab91082%_))
              (_%seed91089%_ (&raw-table-seed _%tab91082%_)))
          (let* ((_%h91091%_
                  (fxxor (immediate-hash _%key91083%_) _%seed91089%_))
                 (_%size91094%_ (vector-length _%table91088%_))
                 (_%entries91097%_ (##fxquotient _%size91094%_ '2))
                 (_%start91100%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91091%_ _%entries91097%_)
                   '1)))
            (let _%loop91104%_ ((_%probe91107%_ _%start91100%_)
                                (_%i91109%_ '1)
                                (_%deleted91111%_ '#f))
              (let ((_%k91114%_ (vector-ref _%table91088%_ _%probe91107%_)))
                (if (eq? _%k91114%_ (macro-unused-obj))
                    (if _%deleted91111%_
                        (begin
                          (vector-set!
                           _%table91088%_
                           _%deleted91111%_
                           _%key91083%_)
                          (vector-set!
                           _%table91088%_
                           (##fx+ _%deleted91111%_ '1)
                           (_%immediate-table-update!91084%_ _%default91085%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91082%_
                              (##fx+ (&raw-table-count _%tab91082%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91088%_
                           _%probe91107%_
                           _%key91083%_)
                          (vector-set!
                           _%table91088%_
                           (##fx+ _%probe91107%_ '1)
                           (_%immediate-table-update!91084%_ _%default91085%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91082%_
                              (##fx- (&raw-table-free _%tab91082%_) '1))
                             (&raw-table-count-set!
                              _%tab91082%_
                              (##fx+ (&raw-table-count _%tab91082%_) '1))))))
                    (if (eq? _%k91114%_ (macro-deleted-obj))
                        (_%loop91104%_
                         (let ((_%next-probe91121%_
                                (fx+ _%start91100%_
                                     _%i91109%_
                                     (fx* _%i91109%_ _%i91109%_))))
                           (##fxmodulo _%next-probe91121%_ _%size91094%_))
                         (##fx+ _%i91109%_ '1)
                         (let ((_%$e91124%_ _%deleted91111%_))
                           (if _%$e91124%_ _%$e91124%_ _%probe91107%_)))
                        (if (eq? _%key91083%_ _%k91114%_)
                            (let ()
                              (vector-set!
                               _%table91088%_
                               _%probe91107%_
                               _%key91083%_)
                              (vector-set!
                               _%table91088%_
                               (##fx+ _%probe91107%_ '1)
                               (_%immediate-table-update!91084%_
                                (vector-ref
                                 _%table91088%_
                                 (##fx+ _%probe91107%_ '1)))))
                            (_%loop91104%_
                             (let ((_%next-probe91129%_
                                    (fx+ _%start91100%_
                                         _%i91109%_
                                         (fx* _%i91109%_ _%i91109%_))))
                               (##fxmodulo _%next-probe91129%_ _%size91094%_))
                             (##fx+ _%i91109%_ '1)
                             _%deleted91111%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab91037%_ _%key91039%_)
        (let ((_%table91042%_ (&raw-table-table _%tab91037%_))
              (_%seed91044%_ (&raw-table-seed _%tab91037%_)))
          (let* ((_%h91047%_
                  (fxxor (immediate-hash _%key91039%_) _%seed91044%_))
                 (_%size91050%_ (vector-length _%table91042%_))
                 (_%entries91053%_ (##fxquotient _%size91050%_ '2))
                 (_%start91056%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91047%_ _%entries91053%_)
                   '1)))
            (let _%loop91060%_ ((_%probe91063%_ _%start91056%_)
                                (_%i91065%_ '1))
              (let ((_%k91068%_ (vector-ref _%table91042%_ _%probe91063%_)))
                (if (eq? _%k91068%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91068%_ (macro-deleted-obj))
                        (_%loop91060%_
                         (let ((_%next-probe91073%_
                                (fx+ _%start91056%_
                                     _%i91065%_
                                     (fx* _%i91065%_ _%i91065%_))))
                           (##fxmodulo _%next-probe91073%_ _%size91050%_))
                         (##fx+ _%i91065%_ '1))
                        (if (eq? _%key91039%_ _%k91068%_)
                            (let ()
                              (vector-set!
                               _%table91042%_
                               _%probe91063%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91042%_
                               (##fx+ _%probe91063%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91037%_
                                  (##fx- (&raw-table-count _%tab91037%_)
                                         '1)))))
                            (_%loop91060%_
                             (let ((_%next-probe91079%_
                                    (fx+ _%start91056%_
                                         _%i91065%_
                                         (fx* _%i91065%_ _%i91065%_))))
                               (##fxmodulo _%next-probe91079%_ _%size91050%_))
                             (##fx+ _%i91065%_ '1)))))))))))
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
      (lambda (_%tab91035%_)
        (##unchecked-structure-ref
         _%tab91035%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab91033%_)
        (##unchecked-structure-ref
         _%tab91033%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab91030%_ _%val91031%_)
        (##unchecked-structure-set!
         _%tab91030%_
         _%val91031%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab91027%_ _%val91028%_)
        (##unchecked-structure-set!
         _%tab91027%_
         _%val91028%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint91003%_ _%klass91004%_ _%flags91005%_)
        (let ((_%gcht91007%_
               (__gc-table-new
                (if (fixnum? _%size-hint91003%_) _%size-hint91003%_ '16)
                _%flags91005%_)))
          (##structure _%klass91004%_ _%gcht91007%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint91012%_)
        (let* ((_%klass91014%_ __gc-table::t) (_%flags91016%_ '0))
          (make-gc-table__%
           _%size-hint91012%_
           _%klass91014%_
           _%flags91016%_))))
    (define make-gc-table__1
      (lambda (_%size-hint91018%_ _%klass91019%_)
        (let ((_%flags91021%_ '0))
          (make-gc-table__%
           _%size-hint91018%_
           _%klass91019%_
           _%flags91021%_))))
    (define make-gc-table
      (lambda _g92479_
        (let ((_g92478_ (##length _g92479_)))
          (cond ((##fx= _g92478_ 1) (apply make-gc-table__0 _g92479_))
                ((##fx= _g92478_ 2) (apply make-gc-table__1 _g92479_))
                ((##fx= _g92478_ 3) (apply make-gc-table__% _g92479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g92479_))))))
    (define __gc-table-immediate
      (lambda (_%tab90994%_)
        (let ((_%$e90996%_ (&gc-table-immediate _%tab90994%_)))
          (if _%$e90996%_
              _%$e90996%_
              (let ((_%immediate91000%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab90994%_ _%immediate91000%_)
                _%immediate91000%_)))))
    (define __gc-table-new
      (lambda (_%size90984%_ _%flags90985%_)
        (let* ((_%flags90987%_
                (##fxand _%flags90985%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags90989%_
                (fxior _%flags90987%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht90991%_
                (##gc-hash-table-allocate
                 _%size90984%_
                 _%flags90989%_
                 __gc-table-loads)))
          _%gcht90991%_)))
    (define __gc-table-e
      (lambda (_%tab90979%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht90982%_ (&gc-table-gcht _%tab90979%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht90982%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht90982%_
              (begin
                (__gc-table-rehash! _%tab90979%_)
                (&gc-table-gcht _%tab90979%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab90970%_)
        (let* ((_%old-table90972%_ (&gc-table-gcht _%tab90970%_))
               (_%new-table90974%_
                (##gc-hash-table-resize! _%old-table90972%_ __gc-table-loads))
               (_%gcht90976%_
                (##gc-hash-table-rehash!
                 _%old-table90972%_
                 _%new-table90974%_)))
          (&gc-table-gcht-set! _%tab90970%_ _%gcht90976%_))))
    (define gc-table-ref
      (lambda (_%tab90954%_ _%key90955%_ _%default90956%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90955%_)
            (let* ((_%gcht90960%_ (__gc-table-e _%tab90954%_))
                   (_%value90962%_
                    (##gc-hash-table-ref _%gcht90960%_ _%key90955%_)))
              (if (eq? _%value90962%_ (macro-unused-obj))
                  _%default90956%_
                  _%value90962%_))
            (let ((_%$e90964%_ (&gc-table-immediate _%tab90954%_)))
              (if _%$e90964%_
                  ((lambda (_%immediate90967%_)
                     (immediate-table-ref
                      _%immediate90967%_
                      _%key90955%_
                      _%default90956%_))
                   _%$e90964%_)
                  _%default90956%_)))))
    (define gc-table-set!
      (lambda (_%tab90947%_ _%key90948%_ _%value90949%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90948%_)
            (let ((_%gcht90952%_ (__gc-table-e _%tab90947%_)))
              (if (##gc-hash-table-set!
                   _%gcht90952%_
                   _%key90948%_
                   _%value90949%_)
                  (begin
                    (__gc-table-rehash! _%tab90947%_)
                    (gc-table-set! _%tab90947%_ _%key90948%_ _%value90949%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab90947%_)
             _%key90948%_
             _%value90949%_))))
    (define gc-table-update!
      (lambda (_%tab90940%_ _%key90941%_ _%update90942%_ _%default90943%_)
        (if (##mem-allocated? _%key90941%_)
            (let ((_%value90945%_
                   (gc-table-ref _%tab90940%_ _%key90941%_ _%default90943%_)))
              (gc-table-set!
               _%tab90940%_
               _%key90941%_
               (_%update90942%_ _%value90945%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab90940%_)
             _%key90941%_
             _%update90942%_
             _%default90943%_))))
    (define gc-table-delete!
      (lambda (_%tab90928%_ _%key90929%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90929%_)
            (let ((_%gcht90933%_ (__gc-table-e _%tab90928%_)))
              (if (##gc-hash-table-set!
                   _%gcht90933%_
                   _%key90929%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab90928%_)
                    (gc-table-delete! _%tab90928%_ _%key90929%_))
                  '#!void))
            (let ((_%$e90935%_ (&gc-table-immediate _%tab90928%_)))
              (if _%$e90935%_
                  ((lambda (_%immediate90938%_)
                     (immediate-table-delete! _%immediate90938%_ _%key90929%_))
                   _%$e90935%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab90909%_ _%proc90910%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht90913%_ (__gc-table-e _%tab90909%_)))
            (let _%loop90915%_ ((_%i90917%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i90917%_ (##vector-length _%gcht90913%_))
                  (let ((_%key90919%_ (##vector-ref _%gcht90913%_ _%i90917%_)))
                    (if (if (eq? _%key90919%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key90919%_ (macro-deleted-obj))))
                        (_%proc90910%_
                         _%key90919%_
                         (##vector-ref _%gcht90913%_ (##fx+ _%i90917%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop90915%_ (##fx+ _%i90917%_ '2))))
                  '#!void)))
          (let ((_%$e90923%_ (&gc-table-immediate _%tab90909%_)))
            (if _%$e90923%_
                ((lambda (_%immediate90926%_)
                   (raw-table-for-each _%immediate90926%_ _%proc90910%_))
                 _%$e90923%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab90897%_)
        (let* ((_%gcht90899%_ (__gc-table-e _%tab90897%_))
               (_%new-table90901%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht90899%_)
                 (macro-gc-hash-table-flags _%gcht90899%_)))
               (_%result90903%_
                (##structure
                 (##structure-type _%tab90897%_)
                 _%new-table90901%_
                 '#f)))
          (gc-table-for-each
           _%tab90897%_
           (lambda (_%k90906%_ _%v90907%_)
             (gc-table-set! _%result90903%_ _%k90906%_ _%v90907%_)))
          _%result90903%_)))
    (define gc-table-clear!
      (lambda (_%tab90890%_)
        (let* ((_%gcht90892%_ (__gc-table-e _%tab90890%_))
               (_%new-table90894%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht90892%_))))
          (&gc-table-gcht-set! _%tab90890%_ _%new-table90894%_)
          (&gc-table-immediate-set! _%tab90890%_ '#f))))
    (define gc-table-length
      (lambda (_%tab90882%_)
        (let ((_%gcht90884%_ (__gc-table-e _%tab90882%_)))
          (fx+ (macro-gc-hash-table-count _%gcht90884%_)
               (let ((_%$e90886%_ (&gc-table-immediate _%tab90882%_)))
                 (if _%$e90886%_ (&raw-table-count _%$e90886%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj90867%_)
        (declare (not interrupts-enabled))
        (let ((_%val90870%_ (gc-table-ref __object-eq-hash _%obj90867%_ '#f)))
          (if _%val90870%_
              _%val90870%_
              (let* ((_%mix90872%_ __object-eq-hash-next)
                     (_%ptr90874%_ (##type-cast _%obj90867%_ '0))
                     (_%h90876%_
                      (fxand (fxxor _%mix90872%_ _%ptr90874%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e90879%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e90879%_ _%$e90879%_ '0)))
                (gc-table-set! __object-eq-hash _%obj90867%_ _%h90876%_)
                _%h90876%_)))))))
