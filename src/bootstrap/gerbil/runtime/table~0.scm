(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1713004409)
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
      (lambda (_%tab92475%_)
        (##unchecked-structure-ref
         _%tab92475%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab92473%_)
        (##unchecked-structure-ref
         _%tab92473%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab92471%_)
        (##unchecked-structure-ref
         _%tab92471%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab92469%_)
        (##unchecked-structure-ref
         _%tab92469%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab92467%_)
        (##unchecked-structure-ref
         _%tab92467%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab92465%_)
        (##unchecked-structure-ref
         _%tab92465%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab92462%_ _%val92463%_)
        (##unchecked-structure-set!
         _%tab92462%_
         _%val92463%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab92459%_ _%val92460%_)
        (##unchecked-structure-set!
         _%tab92459%_
         _%val92460%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab92456%_ _%val92457%_)
        (##unchecked-structure-set!
         _%tab92456%_
         _%val92457%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab92453%_ _%val92454%_)
        (##unchecked-structure-set!
         _%tab92453%_
         _%val92454%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab92450%_ _%val92451%_)
        (##unchecked-structure-set!
         _%tab92450%_
         _%val92451%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab92447%_ _%val92448%_)
        (##unchecked-structure-set!
         _%tab92447%_
         _%val92448%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint92445%_)
        (if (and (fixnum? _%size-hint92445%_) (##fx> _%size-hint92445%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint92445%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint92421%_ _%hash92422%_ _%test92423%_ _%seed92424%_)
        (let* ((_%size92426%_ (raw-table-size-hint->size _%size-hint92421%_))
               (_%table92428%_
                (##make-vector _%size92426%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table92428%_
           '0
           (##fxquotient _%size92426%_ '2)
           _%hash92422%_
           _%test92423%_
           _%seed92424%_))))
    (define make-raw-table__0
      (lambda (_%size-hint92434%_ _%hash92435%_ _%test92436%_)
        (let ((_%seed92438%_ '0))
          (make-raw-table__%
           _%size-hint92434%_
           _%hash92435%_
           _%test92436%_
           _%seed92438%_))))
    (define make-raw-table
      (lambda _g92477_
        (let ((_g92476_ (##length _g92477_)))
          (cond ((##fx= _g92476_ 3) (apply make-raw-table__0 _g92477_))
                ((##fx= _g92476_ 4) (apply make-raw-table__% _g92477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g92477_))))))
    (define raw-table-ref
      (lambda (_%tab92372%_ _%key92373%_ _%default92374%_)
        (let ((_%table92376%_ (&raw-table-table _%tab92372%_))
              (_%seed92377%_ (&raw-table-seed _%tab92372%_))
              (_%hash92378%_ (&raw-table-hash _%tab92372%_))
              (_%test92379%_ (&raw-table-test _%tab92372%_)))
          (let* ((_%h92381%_
                  (fxxor (_%hash92378%_ _%key92373%_) _%seed92377%_))
                 (_%size92384%_ (vector-length _%table92376%_))
                 (_%entries92387%_ (##fxquotient _%size92384%_ '2))
                 (_%start92390%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92381%_ _%entries92387%_)
                   '1)))
            (let _%loop92394%_ ((_%probe92397%_ _%start92390%_)
                                (_%i92399%_ '1)
                                (_%deleted92401%_ '#f))
              (let ((_%k92404%_ (vector-ref _%table92376%_ _%probe92397%_)))
                (if (eq? _%k92404%_ (macro-unused-obj))
                    _%default92374%_
                    (if (eq? _%k92404%_ (macro-deleted-obj))
                        (_%loop92394%_
                         (let ((_%next-probe92409%_
                                (fx+ _%start92390%_
                                     _%i92399%_
                                     (fx* _%i92399%_ _%i92399%_))))
                           (##fxmodulo _%next-probe92409%_ _%size92384%_))
                         (##fx+ _%i92399%_ '1)
                         (let ((_%$e92412%_ _%deleted92401%_))
                           (if _%$e92412%_ _%$e92412%_ _%probe92397%_)))
                        (if (_%test92379%_ _%key92373%_ _%k92404%_)
                            (vector-ref
                             _%table92376%_
                             (##fx+ _%probe92397%_ '1))
                            (_%loop92394%_
                             (let ((_%next-probe92417%_
                                    (fx+ _%start92390%_
                                         _%i92399%_
                                         (fx* _%i92399%_ _%i92399%_))))
                               (##fxmodulo _%next-probe92417%_ _%size92384%_))
                             (##fx+ _%i92399%_ '1)
                             _%deleted92401%_))))))))))
    (define raw-table-set!
      (lambda (_%tab92368%_ _%key92369%_ _%value92370%_)
        (if (##fx< (&raw-table-free _%tab92368%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92368%_))
                    '4))
            (__raw-table-rehash! _%tab92368%_)
            '#!void)
        (__raw-table-set! _%tab92368%_ _%key92369%_ _%value92370%_)))
    (define raw-table-update!
      (lambda (_%tab92363%_ _%key92364%_ _%update92365%_ _%default92366%_)
        (if (##fx< (&raw-table-free _%tab92363%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92363%_))
                    '4))
            (__raw-table-rehash! _%tab92363%_)
            '#!void)
        (__raw-table-update!
         _%tab92363%_
         _%key92364%_
         _%update92365%_
         _%default92366%_)))
    (define raw-table-delete!
      (lambda (_%tab92320%_ _%key92321%_)
        (let ((_%table92323%_ (&raw-table-table _%tab92320%_))
              (_%seed92324%_ (&raw-table-seed _%tab92320%_))
              (_%hash92325%_ (&raw-table-hash _%tab92320%_))
              (_%test92326%_ (&raw-table-test _%tab92320%_)))
          (let* ((_%h92328%_
                  (fxxor (_%hash92325%_ _%key92321%_) _%seed92324%_))
                 (_%size92331%_ (vector-length _%table92323%_))
                 (_%entries92334%_ (##fxquotient _%size92331%_ '2))
                 (_%start92337%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92328%_ _%entries92334%_)
                   '1)))
            (let _%loop92341%_ ((_%probe92344%_ _%start92337%_)
                                (_%i92346%_ '1))
              (let ((_%k92349%_ (vector-ref _%table92323%_ _%probe92344%_)))
                (if (eq? _%k92349%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92349%_ (macro-deleted-obj))
                        (_%loop92341%_
                         (let ((_%next-probe92354%_
                                (fx+ _%start92337%_
                                     _%i92346%_
                                     (fx* _%i92346%_ _%i92346%_))))
                           (##fxmodulo _%next-probe92354%_ _%size92331%_))
                         (##fx+ _%i92346%_ '1))
                        (if (_%test92326%_ _%key92321%_ _%k92349%_)
                            (let ()
                              (vector-set!
                               _%table92323%_
                               _%probe92344%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92323%_
                               (##fx+ _%probe92344%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92320%_
                                  (##fx- (&raw-table-count _%tab92320%_)
                                         '1)))))
                            (_%loop92341%_
                             (let ((_%next-probe92360%_
                                    (fx+ _%start92337%_
                                         _%i92346%_
                                         (fx* _%i92346%_ _%i92346%_))))
                               (##fxmodulo _%next-probe92360%_ _%size92331%_))
                             (##fx+ _%i92346%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab92304%_ _%proc92305%_)
        (let* ((_%table92307%_ (&raw-table-table _%tab92304%_))
               (_%size92309%_ (vector-length _%table92307%_)))
          (let _%loop92312%_ ((_%i92314%_ '0))
            (if (##fx< _%i92314%_ _%size92309%_)
                (begin
                  (let ((_%key92316%_ (vector-ref _%table92307%_ _%i92314%_)))
                    (if (if (eq? _%key92316%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92316%_ (macro-deleted-obj))))
                        (let ((_%value92318%_
                               (vector-ref
                                _%table92307%_
                                (##fx+ _%i92314%_ '1))))
                          (_%proc92305%_ _%key92316%_ _%value92318%_))
                        '#!void))
                  (_%loop92312%_ (##fx+ _%i92314%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab92300%_)
        (let ((_%new-tab92302%_ (##structure-copy _%tab92300%_)))
          (&raw-table-table-set!
           _%new-tab92302%_
           (vector-copy (&raw-table-table _%tab92300%_)))
          _%new-tab92302%_)))
    (define raw-table-clear!
      (lambda (_%tab92298%_)
        (vector-fill! (&raw-table-table _%tab92298%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab92298%_ '0)
        (&raw-table-free-set!
         _%tab92298%_
         (##fxquotient (vector-length (&raw-table-table _%tab92298%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab92248%_ _%key92249%_ _%value92250%_)
        (let ((_%table92252%_ (&raw-table-table _%tab92248%_))
              (_%seed92253%_ (&raw-table-seed _%tab92248%_))
              (_%hash92254%_ (&raw-table-hash _%tab92248%_))
              (_%test92255%_ (&raw-table-test _%tab92248%_)))
          (let* ((_%h92257%_
                  (fxxor (_%hash92254%_ _%key92249%_) _%seed92253%_))
                 (_%size92260%_ (vector-length _%table92252%_))
                 (_%entries92263%_ (##fxquotient _%size92260%_ '2))
                 (_%start92266%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92257%_ _%entries92263%_)
                   '1)))
            (let _%loop92270%_ ((_%probe92273%_ _%start92266%_)
                                (_%i92275%_ '1)
                                (_%deleted92277%_ '#f))
              (let ((_%k92280%_ (vector-ref _%table92252%_ _%probe92273%_)))
                (if (eq? _%k92280%_ (macro-unused-obj))
                    (if _%deleted92277%_
                        (begin
                          (vector-set!
                           _%table92252%_
                           _%deleted92277%_
                           _%key92249%_)
                          (vector-set!
                           _%table92252%_
                           (##fx+ _%deleted92277%_ '1)
                           _%value92250%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92248%_
                              (##fx+ (&raw-table-count _%tab92248%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92252%_
                           _%probe92273%_
                           _%key92249%_)
                          (vector-set!
                           _%table92252%_
                           (##fx+ _%probe92273%_ '1)
                           _%value92250%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92248%_
                              (##fx- (&raw-table-free _%tab92248%_) '1))
                             (&raw-table-count-set!
                              _%tab92248%_
                              (##fx+ (&raw-table-count _%tab92248%_) '1))))))
                    (if (eq? _%k92280%_ (macro-deleted-obj))
                        (_%loop92270%_
                         (let ((_%next-probe92287%_
                                (fx+ _%start92266%_
                                     _%i92275%_
                                     (fx* _%i92275%_ _%i92275%_))))
                           (##fxmodulo _%next-probe92287%_ _%size92260%_))
                         (##fx+ _%i92275%_ '1)
                         (let ((_%$e92290%_ _%deleted92277%_))
                           (if _%$e92290%_ _%$e92290%_ _%probe92273%_)))
                        (if (_%test92255%_ _%key92249%_ _%k92280%_)
                            (let ()
                              (vector-set!
                               _%table92252%_
                               _%probe92273%_
                               _%key92249%_)
                              (vector-set!
                               _%table92252%_
                               (##fx+ _%probe92273%_ '1)
                               _%value92250%_))
                            (_%loop92270%_
                             (let ((_%next-probe92295%_
                                    (fx+ _%start92266%_
                                         _%i92275%_
                                         (fx* _%i92275%_ _%i92275%_))))
                               (##fxmodulo _%next-probe92295%_ _%size92260%_))
                             (##fx+ _%i92275%_ '1)
                             _%deleted92277%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab92197%_ _%key92198%_ _%update92199%_ _%default92200%_)
        (let ((_%table92202%_ (&raw-table-table _%tab92197%_))
              (_%seed92203%_ (&raw-table-seed _%tab92197%_))
              (_%hash92204%_ (&raw-table-hash _%tab92197%_))
              (_%test92205%_ (&raw-table-test _%tab92197%_)))
          (let* ((_%h92207%_
                  (fxxor (_%hash92204%_ _%key92198%_) _%seed92203%_))
                 (_%size92210%_ (vector-length _%table92202%_))
                 (_%entries92213%_ (##fxquotient _%size92210%_ '2))
                 (_%start92216%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92207%_ _%entries92213%_)
                   '1)))
            (let _%loop92220%_ ((_%probe92223%_ _%start92216%_)
                                (_%i92225%_ '1)
                                (_%deleted92227%_ '#f))
              (let ((_%k92230%_ (vector-ref _%table92202%_ _%probe92223%_)))
                (if (eq? _%k92230%_ (macro-unused-obj))
                    (if _%deleted92227%_
                        (begin
                          (vector-set!
                           _%table92202%_
                           _%deleted92227%_
                           _%key92198%_)
                          (vector-set!
                           _%table92202%_
                           (##fx+ _%deleted92227%_ '1)
                           (_%update92199%_ _%default92200%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92197%_
                              (##fx+ (&raw-table-count _%tab92197%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92202%_
                           _%probe92223%_
                           _%key92198%_)
                          (vector-set!
                           _%table92202%_
                           (##fx+ _%probe92223%_ '1)
                           (_%update92199%_ _%default92200%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92197%_
                              (##fx- (&raw-table-free _%tab92197%_) '1))
                             (&raw-table-count-set!
                              _%tab92197%_
                              (##fx+ (&raw-table-count _%tab92197%_) '1))))))
                    (if (eq? _%k92230%_ (macro-deleted-obj))
                        (_%loop92220%_
                         (let ((_%next-probe92237%_
                                (fx+ _%start92216%_
                                     _%i92225%_
                                     (fx* _%i92225%_ _%i92225%_))))
                           (##fxmodulo _%next-probe92237%_ _%size92210%_))
                         (##fx+ _%i92225%_ '1)
                         (let ((_%$e92240%_ _%deleted92227%_))
                           (if _%$e92240%_ _%$e92240%_ _%probe92223%_)))
                        (if (_%test92205%_ _%key92198%_ _%k92230%_)
                            (let ()
                              (vector-set!
                               _%table92202%_
                               _%probe92223%_
                               _%key92198%_)
                              (vector-set!
                               _%table92202%_
                               (##fx+ _%probe92223%_ '1)
                               (_%update92199%_
                                (vector-ref
                                 _%table92202%_
                                 (##fx+ _%probe92223%_ '1)))))
                            (_%loop92220%_
                             (let ((_%next-probe92245%_
                                    (fx+ _%start92216%_
                                         _%i92225%_
                                         (fx* _%i92225%_ _%i92225%_))))
                               (##fxmodulo _%next-probe92245%_ _%size92210%_))
                             (##fx+ _%i92225%_ '1)
                             _%deleted92227%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab92178%_)
        (let* ((_%old-table92180%_ (&raw-table-table _%tab92178%_))
               (_%old-size92182%_ (vector-length _%old-table92180%_))
               (_%new-size92184%_
                (if (##fx< (&raw-table-count _%tab92178%_)
                           (##fxquotient _%old-size92182%_ '4))
                    (vector-length _%old-table92180%_)
                    (##fx* '2 (vector-length _%old-table92180%_))))
               (_%new-table92186%_
                (##make-vector _%new-size92184%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab92178%_ _%new-table92186%_)
          (&raw-table-count-set! _%tab92178%_ '0)
          (&raw-table-free-set!
           _%tab92178%_
           (##fxquotient _%new-size92184%_ '2))
          (let _%lp92189%_ ((_%i92191%_ '0))
            (if (##fx< _%i92191%_ _%old-size92182%_)
                (begin
                  (let ((_%key92193%_
                         (vector-ref _%old-table92180%_ _%i92191%_)))
                    (if (if (eq? _%key92193%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92193%_ (macro-deleted-obj))))
                        (let ((_%value92195%_
                               (vector-ref
                                _%old-table92180%_
                                (##fx+ _%i92191%_ '1))))
                          (__raw-table-set!
                           _%tab92178%_
                           _%key92193%_
                           _%value92195%_))
                        '#!void))
                  (_%lp92189%_ (##fx+ _%i92191%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj92170%_)
        (let ((_%t92172%_ (##type _%obj92170%_)))
          (if (##fx= (##fxand _%t92172%_ '1) '0)
              (fxand (##type-cast _%obj92170%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj92170%_)
                  (symbolic-hash _%obj92170%_)
                  (if (procedure? _%obj92170%_)
                      (procedure-hash _%obj92170%_)
                      (fxand (__eq-hash _%obj92170%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj92166%_)
        (let ((_%h92168%_
               (if (##closure? _%obj92166%_)
                   (__eq-hash _%obj92166%_)
                   (##type-cast _%obj92166%_ '0))))
          (fxand _%h92168%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj92163%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj92163%_)))
    (define eqv-hash
      (lambda (_%obj92153%_)
        (letrec ((_%combine92155%_
                  (lambda (_%a92160%_ _%b92161%_)
                    (fxand (##fx* (##fx+ _%a92160%_
                                         (fxarithmetic-shift-left
                                          _%b92161%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash92156%_
                  (lambda (_%obj92158%_)
                    (macro-number-dispatch
                     _%obj92158%_
                     (eq-hash _%obj92158%_)
                     (fxand _%obj92158%_ (macro-max-fixnum32))
                     (modulo _%obj92158%_ '331804481)
                     (_%combine92155%_
                      (_%hash92156%_ (macro-ratnum-numerator _%obj92158%_))
                      (_%hash92156%_ (macro-ratnum-denominator _%obj92158%_)))
                     (_%combine92155%_
                      (##u16vector-ref _%obj92158%_ '0)
                      (_%combine92155%_
                       (##u16vector-ref _%obj92158%_ '1)
                       (_%combine92155%_
                        (##u16vector-ref _%obj92158%_ '2)
                        (##u16vector-ref _%obj92158%_ '3))))
                     (_%combine92155%_
                      (_%hash92156%_ (macro-cpxnum-real _%obj92158%_))
                      (_%hash92156%_ (macro-cpxnum-imag _%obj92158%_)))))))
          (_%hash92156%_ _%obj92153%_))))
    (define symbolic?
      (lambda (_%obj92148%_)
        (let ((_%$e92150%_ (symbol? _%obj92148%_)))
          (if _%$e92150%_ _%$e92150%_ (keyword? _%obj92148%_)))))
    (define symbolic-hash (lambda (_%obj92146%_) (macro-slot '1 _%obj92146%_)))
    (define string-hash (lambda (_%obj92144%_) (##string=?-hash _%obj92144%_)))
    (define immediate-hash
      (lambda (_%obj92142%_) (##type-cast _%obj92142%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint92123%_ _%seed92125%_)
        (make-raw-table__% _%size-hint92123%_ eq-hash eq? _%seed92125%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint92131%_ '#f) (_%seed92133%_ '0))
          (make-eq-table__% _%size-hint92131%_ _%seed92133%_))))
    (define make-eq-table__1
      (lambda (_%size-hint92135%_)
        (let ((_%seed92137%_ '0))
          (make-eq-table__% _%size-hint92135%_ _%seed92137%_))))
    (define make-eq-table
      (lambda _g92479_
        (let ((_g92478_ (##length _g92479_)))
          (cond ((##fx= _g92478_ 0) (apply make-eq-table__0 _g92479_))
                ((##fx= _g92478_ 1) (apply make-eq-table__1 _g92479_))
                ((##fx= _g92478_ 2) (apply make-eq-table__% _g92479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g92479_))))))
    (define eq-table-ref
      (lambda (_%tab92076%_ _%key92077%_ _%default92078%_)
        (let ((_%table92080%_ (&raw-table-table _%tab92076%_))
              (_%seed92081%_ (&raw-table-seed _%tab92076%_)))
          (let* ((_%h92083%_ (fxxor (eq-hash _%key92077%_) _%seed92081%_))
                 (_%size92086%_ (vector-length _%table92080%_))
                 (_%entries92089%_ (##fxquotient _%size92086%_ '2))
                 (_%start92092%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92083%_ _%entries92089%_)
                   '1)))
            (let _%loop92096%_ ((_%probe92099%_ _%start92092%_)
                                (_%i92101%_ '1)
                                (_%deleted92103%_ '#f))
              (let ((_%k92106%_ (vector-ref _%table92080%_ _%probe92099%_)))
                (if (eq? _%k92106%_ (macro-unused-obj))
                    _%default92078%_
                    (if (eq? _%k92106%_ (macro-deleted-obj))
                        (_%loop92096%_
                         (let ((_%next-probe92111%_
                                (fx+ _%start92092%_
                                     _%i92101%_
                                     (fx* _%i92101%_ _%i92101%_))))
                           (##fxmodulo _%next-probe92111%_ _%size92086%_))
                         (##fx+ _%i92101%_ '1)
                         (let ((_%$e92114%_ _%deleted92103%_))
                           (if _%$e92114%_ _%$e92114%_ _%probe92099%_)))
                        (if (eq? _%key92077%_ _%k92106%_)
                            (vector-ref
                             _%table92080%_
                             (##fx+ _%probe92099%_ '1))
                            (_%loop92096%_
                             (let ((_%next-probe92119%_
                                    (fx+ _%start92092%_
                                         _%i92101%_
                                         (fx* _%i92101%_ _%i92101%_))))
                               (##fxmodulo _%next-probe92119%_ _%size92086%_))
                             (##fx+ _%i92101%_ '1)
                             _%deleted92103%_))))))))))
    (define eq-table-set!
      (lambda (_%tab92072%_ _%key92073%_ _%value92074%_)
        (if (##fx< (&raw-table-free _%tab92072%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92072%_))
                    '4))
            (__raw-table-rehash! _%tab92072%_)
            '#!void)
        (__eq-table-set! _%tab92072%_ _%key92073%_ _%value92074%_)))
    (define __eq-table-set!
      (lambda (_%tab92023%_ _%key92024%_ _%value92025%_)
        (let ((_%table92028%_ (&raw-table-table _%tab92023%_))
              (_%seed92029%_ (&raw-table-seed _%tab92023%_)))
          (let* ((_%h92031%_ (fxxor (eq-hash _%key92024%_) _%seed92029%_))
                 (_%size92034%_ (vector-length _%table92028%_))
                 (_%entries92037%_ (##fxquotient _%size92034%_ '2))
                 (_%start92040%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92031%_ _%entries92037%_)
                   '1)))
            (let _%loop92044%_ ((_%probe92047%_ _%start92040%_)
                                (_%i92049%_ '1)
                                (_%deleted92051%_ '#f))
              (let ((_%k92054%_ (vector-ref _%table92028%_ _%probe92047%_)))
                (if (eq? _%k92054%_ (macro-unused-obj))
                    (if _%deleted92051%_
                        (begin
                          (vector-set!
                           _%table92028%_
                           _%deleted92051%_
                           _%key92024%_)
                          (vector-set!
                           _%table92028%_
                           (##fx+ _%deleted92051%_ '1)
                           _%value92025%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92023%_
                              (##fx+ (&raw-table-count _%tab92023%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92028%_
                           _%probe92047%_
                           _%key92024%_)
                          (vector-set!
                           _%table92028%_
                           (##fx+ _%probe92047%_ '1)
                           _%value92025%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92023%_
                              (##fx- (&raw-table-free _%tab92023%_) '1))
                             (&raw-table-count-set!
                              _%tab92023%_
                              (##fx+ (&raw-table-count _%tab92023%_) '1))))))
                    (if (eq? _%k92054%_ (macro-deleted-obj))
                        (_%loop92044%_
                         (let ((_%next-probe92061%_
                                (fx+ _%start92040%_
                                     _%i92049%_
                                     (fx* _%i92049%_ _%i92049%_))))
                           (##fxmodulo _%next-probe92061%_ _%size92034%_))
                         (##fx+ _%i92049%_ '1)
                         (let ((_%$e92064%_ _%deleted92051%_))
                           (if _%$e92064%_ _%$e92064%_ _%probe92047%_)))
                        (if (eq? _%key92024%_ _%k92054%_)
                            (let ()
                              (vector-set!
                               _%table92028%_
                               _%probe92047%_
                               _%key92024%_)
                              (vector-set!
                               _%table92028%_
                               (##fx+ _%probe92047%_ '1)
                               _%value92025%_))
                            (_%loop92044%_
                             (let ((_%next-probe92069%_
                                    (fx+ _%start92040%_
                                         _%i92049%_
                                         (fx* _%i92049%_ _%i92049%_))))
                               (##fxmodulo _%next-probe92069%_ _%size92034%_))
                             (##fx+ _%i92049%_ '1)
                             _%deleted92051%_))))))))))
    (define eq-table-update!
      (lambda (_%tab92018%_
               _%key92019%_
               _%eq-table-update!92020%_
               _%default92021%_)
        (if (##fx< (&raw-table-free _%tab92018%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92018%_))
                    '4))
            (__raw-table-rehash! _%tab92018%_)
            '#!void)
        (__eq-table-update!
         _%tab92018%_
         _%key92019%_
         _%eq-table-update!92020%_
         _%default92021%_)))
    (define __eq-table-update!
      (lambda (_%tab91968%_
               _%key91969%_
               _%eq-table-update!91970%_
               _%default91971%_)
        (let ((_%table91974%_ (&raw-table-table _%tab91968%_))
              (_%seed91975%_ (&raw-table-seed _%tab91968%_)))
          (let* ((_%h91977%_ (fxxor (eq-hash _%key91969%_) _%seed91975%_))
                 (_%size91980%_ (vector-length _%table91974%_))
                 (_%entries91983%_ (##fxquotient _%size91980%_ '2))
                 (_%start91986%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91977%_ _%entries91983%_)
                   '1)))
            (let _%loop91990%_ ((_%probe91993%_ _%start91986%_)
                                (_%i91995%_ '1)
                                (_%deleted91997%_ '#f))
              (let ((_%k92000%_ (vector-ref _%table91974%_ _%probe91993%_)))
                (if (eq? _%k92000%_ (macro-unused-obj))
                    (if _%deleted91997%_
                        (begin
                          (vector-set!
                           _%table91974%_
                           _%deleted91997%_
                           _%key91969%_)
                          (vector-set!
                           _%table91974%_
                           (##fx+ _%deleted91997%_ '1)
                           (_%eq-table-update!91970%_ _%default91971%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91968%_
                              (##fx+ (&raw-table-count _%tab91968%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91974%_
                           _%probe91993%_
                           _%key91969%_)
                          (vector-set!
                           _%table91974%_
                           (##fx+ _%probe91993%_ '1)
                           (_%eq-table-update!91970%_ _%default91971%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91968%_
                              (##fx- (&raw-table-free _%tab91968%_) '1))
                             (&raw-table-count-set!
                              _%tab91968%_
                              (##fx+ (&raw-table-count _%tab91968%_) '1))))))
                    (if (eq? _%k92000%_ (macro-deleted-obj))
                        (_%loop91990%_
                         (let ((_%next-probe92007%_
                                (fx+ _%start91986%_
                                     _%i91995%_
                                     (fx* _%i91995%_ _%i91995%_))))
                           (##fxmodulo _%next-probe92007%_ _%size91980%_))
                         (##fx+ _%i91995%_ '1)
                         (let ((_%$e92010%_ _%deleted91997%_))
                           (if _%$e92010%_ _%$e92010%_ _%probe91993%_)))
                        (if (eq? _%key91969%_ _%k92000%_)
                            (let ()
                              (vector-set!
                               _%table91974%_
                               _%probe91993%_
                               _%key91969%_)
                              (vector-set!
                               _%table91974%_
                               (##fx+ _%probe91993%_ '1)
                               (_%eq-table-update!91970%_
                                (vector-ref
                                 _%table91974%_
                                 (##fx+ _%probe91993%_ '1)))))
                            (_%loop91990%_
                             (let ((_%next-probe92015%_
                                    (fx+ _%start91986%_
                                         _%i91995%_
                                         (fx* _%i91995%_ _%i91995%_))))
                               (##fxmodulo _%next-probe92015%_ _%size91980%_))
                             (##fx+ _%i91995%_ '1)
                             _%deleted91997%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab91923%_ _%key91925%_)
        (let ((_%table91928%_ (&raw-table-table _%tab91923%_))
              (_%seed91930%_ (&raw-table-seed _%tab91923%_)))
          (let* ((_%h91933%_ (fxxor (eq-hash _%key91925%_) _%seed91930%_))
                 (_%size91936%_ (vector-length _%table91928%_))
                 (_%entries91939%_ (##fxquotient _%size91936%_ '2))
                 (_%start91942%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91933%_ _%entries91939%_)
                   '1)))
            (let _%loop91946%_ ((_%probe91949%_ _%start91942%_)
                                (_%i91951%_ '1))
              (let ((_%k91954%_ (vector-ref _%table91928%_ _%probe91949%_)))
                (if (eq? _%k91954%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91954%_ (macro-deleted-obj))
                        (_%loop91946%_
                         (let ((_%next-probe91959%_
                                (fx+ _%start91942%_
                                     _%i91951%_
                                     (fx* _%i91951%_ _%i91951%_))))
                           (##fxmodulo _%next-probe91959%_ _%size91936%_))
                         (##fx+ _%i91951%_ '1))
                        (if (eq? _%key91925%_ _%k91954%_)
                            (let ()
                              (vector-set!
                               _%table91928%_
                               _%probe91949%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91928%_
                               (##fx+ _%probe91949%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91923%_
                                  (##fx- (&raw-table-count _%tab91923%_)
                                         '1)))))
                            (_%loop91946%_
                             (let ((_%next-probe91965%_
                                    (fx+ _%start91942%_
                                         _%i91951%_
                                         (fx* _%i91951%_ _%i91951%_))))
                               (##fxmodulo _%next-probe91965%_ _%size91936%_))
                             (##fx+ _%i91951%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint91904%_ _%seed91906%_)
        (make-raw-table__% _%size-hint91904%_ eqv-hash eqv? _%seed91906%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint91912%_ '#f) (_%seed91914%_ '0))
          (make-eqv-table__% _%size-hint91912%_ _%seed91914%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint91916%_)
        (let ((_%seed91918%_ '0))
          (make-eqv-table__% _%size-hint91916%_ _%seed91918%_))))
    (define make-eqv-table
      (lambda _g92481_
        (let ((_g92480_ (##length _g92481_)))
          (cond ((##fx= _g92480_ 0) (apply make-eqv-table__0 _g92481_))
                ((##fx= _g92480_ 1) (apply make-eqv-table__1 _g92481_))
                ((##fx= _g92480_ 2) (apply make-eqv-table__% _g92481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g92481_))))))
    (define eqv-table-ref
      (lambda (_%tab91857%_ _%key91858%_ _%default91859%_)
        (let ((_%table91861%_ (&raw-table-table _%tab91857%_))
              (_%seed91862%_ (&raw-table-seed _%tab91857%_)))
          (let* ((_%h91864%_ (fxxor (eqv-hash _%key91858%_) _%seed91862%_))
                 (_%size91867%_ (vector-length _%table91861%_))
                 (_%entries91870%_ (##fxquotient _%size91867%_ '2))
                 (_%start91873%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91864%_ _%entries91870%_)
                   '1)))
            (let _%loop91877%_ ((_%probe91880%_ _%start91873%_)
                                (_%i91882%_ '1)
                                (_%deleted91884%_ '#f))
              (let ((_%k91887%_ (vector-ref _%table91861%_ _%probe91880%_)))
                (if (eq? _%k91887%_ (macro-unused-obj))
                    _%default91859%_
                    (if (eq? _%k91887%_ (macro-deleted-obj))
                        (_%loop91877%_
                         (let ((_%next-probe91892%_
                                (fx+ _%start91873%_
                                     _%i91882%_
                                     (fx* _%i91882%_ _%i91882%_))))
                           (##fxmodulo _%next-probe91892%_ _%size91867%_))
                         (##fx+ _%i91882%_ '1)
                         (let ((_%$e91895%_ _%deleted91884%_))
                           (if _%$e91895%_ _%$e91895%_ _%probe91880%_)))
                        (if (eqv? _%key91858%_ _%k91887%_)
                            (vector-ref
                             _%table91861%_
                             (##fx+ _%probe91880%_ '1))
                            (_%loop91877%_
                             (let ((_%next-probe91900%_
                                    (fx+ _%start91873%_
                                         _%i91882%_
                                         (fx* _%i91882%_ _%i91882%_))))
                               (##fxmodulo _%next-probe91900%_ _%size91867%_))
                             (##fx+ _%i91882%_ '1)
                             _%deleted91884%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab91853%_ _%key91854%_ _%value91855%_)
        (if (##fx< (&raw-table-free _%tab91853%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91853%_))
                    '4))
            (__raw-table-rehash! _%tab91853%_)
            '#!void)
        (__eqv-table-set! _%tab91853%_ _%key91854%_ _%value91855%_)))
    (define __eqv-table-set!
      (lambda (_%tab91804%_ _%key91805%_ _%value91806%_)
        (let ((_%table91809%_ (&raw-table-table _%tab91804%_))
              (_%seed91810%_ (&raw-table-seed _%tab91804%_)))
          (let* ((_%h91812%_ (fxxor (eqv-hash _%key91805%_) _%seed91810%_))
                 (_%size91815%_ (vector-length _%table91809%_))
                 (_%entries91818%_ (##fxquotient _%size91815%_ '2))
                 (_%start91821%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91812%_ _%entries91818%_)
                   '1)))
            (let _%loop91825%_ ((_%probe91828%_ _%start91821%_)
                                (_%i91830%_ '1)
                                (_%deleted91832%_ '#f))
              (let ((_%k91835%_ (vector-ref _%table91809%_ _%probe91828%_)))
                (if (eq? _%k91835%_ (macro-unused-obj))
                    (if _%deleted91832%_
                        (begin
                          (vector-set!
                           _%table91809%_
                           _%deleted91832%_
                           _%key91805%_)
                          (vector-set!
                           _%table91809%_
                           (##fx+ _%deleted91832%_ '1)
                           _%value91806%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91804%_
                              (##fx+ (&raw-table-count _%tab91804%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91809%_
                           _%probe91828%_
                           _%key91805%_)
                          (vector-set!
                           _%table91809%_
                           (##fx+ _%probe91828%_ '1)
                           _%value91806%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91804%_
                              (##fx- (&raw-table-free _%tab91804%_) '1))
                             (&raw-table-count-set!
                              _%tab91804%_
                              (##fx+ (&raw-table-count _%tab91804%_) '1))))))
                    (if (eq? _%k91835%_ (macro-deleted-obj))
                        (_%loop91825%_
                         (let ((_%next-probe91842%_
                                (fx+ _%start91821%_
                                     _%i91830%_
                                     (fx* _%i91830%_ _%i91830%_))))
                           (##fxmodulo _%next-probe91842%_ _%size91815%_))
                         (##fx+ _%i91830%_ '1)
                         (let ((_%$e91845%_ _%deleted91832%_))
                           (if _%$e91845%_ _%$e91845%_ _%probe91828%_)))
                        (if (eqv? _%key91805%_ _%k91835%_)
                            (let ()
                              (vector-set!
                               _%table91809%_
                               _%probe91828%_
                               _%key91805%_)
                              (vector-set!
                               _%table91809%_
                               (##fx+ _%probe91828%_ '1)
                               _%value91806%_))
                            (_%loop91825%_
                             (let ((_%next-probe91850%_
                                    (fx+ _%start91821%_
                                         _%i91830%_
                                         (fx* _%i91830%_ _%i91830%_))))
                               (##fxmodulo _%next-probe91850%_ _%size91815%_))
                             (##fx+ _%i91830%_ '1)
                             _%deleted91832%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab91799%_
               _%key91800%_
               _%eqv-table-update!91801%_
               _%default91802%_)
        (if (##fx< (&raw-table-free _%tab91799%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91799%_))
                    '4))
            (__raw-table-rehash! _%tab91799%_)
            '#!void)
        (__eqv-table-update!
         _%tab91799%_
         _%key91800%_
         _%eqv-table-update!91801%_
         _%default91802%_)))
    (define __eqv-table-update!
      (lambda (_%tab91749%_
               _%key91750%_
               _%eqv-table-update!91751%_
               _%default91752%_)
        (let ((_%table91755%_ (&raw-table-table _%tab91749%_))
              (_%seed91756%_ (&raw-table-seed _%tab91749%_)))
          (let* ((_%h91758%_ (fxxor (eqv-hash _%key91750%_) _%seed91756%_))
                 (_%size91761%_ (vector-length _%table91755%_))
                 (_%entries91764%_ (##fxquotient _%size91761%_ '2))
                 (_%start91767%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91758%_ _%entries91764%_)
                   '1)))
            (let _%loop91771%_ ((_%probe91774%_ _%start91767%_)
                                (_%i91776%_ '1)
                                (_%deleted91778%_ '#f))
              (let ((_%k91781%_ (vector-ref _%table91755%_ _%probe91774%_)))
                (if (eq? _%k91781%_ (macro-unused-obj))
                    (if _%deleted91778%_
                        (begin
                          (vector-set!
                           _%table91755%_
                           _%deleted91778%_
                           _%key91750%_)
                          (vector-set!
                           _%table91755%_
                           (##fx+ _%deleted91778%_ '1)
                           (_%eqv-table-update!91751%_ _%default91752%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91749%_
                              (##fx+ (&raw-table-count _%tab91749%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91755%_
                           _%probe91774%_
                           _%key91750%_)
                          (vector-set!
                           _%table91755%_
                           (##fx+ _%probe91774%_ '1)
                           (_%eqv-table-update!91751%_ _%default91752%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91749%_
                              (##fx- (&raw-table-free _%tab91749%_) '1))
                             (&raw-table-count-set!
                              _%tab91749%_
                              (##fx+ (&raw-table-count _%tab91749%_) '1))))))
                    (if (eq? _%k91781%_ (macro-deleted-obj))
                        (_%loop91771%_
                         (let ((_%next-probe91788%_
                                (fx+ _%start91767%_
                                     _%i91776%_
                                     (fx* _%i91776%_ _%i91776%_))))
                           (##fxmodulo _%next-probe91788%_ _%size91761%_))
                         (##fx+ _%i91776%_ '1)
                         (let ((_%$e91791%_ _%deleted91778%_))
                           (if _%$e91791%_ _%$e91791%_ _%probe91774%_)))
                        (if (eqv? _%key91750%_ _%k91781%_)
                            (let ()
                              (vector-set!
                               _%table91755%_
                               _%probe91774%_
                               _%key91750%_)
                              (vector-set!
                               _%table91755%_
                               (##fx+ _%probe91774%_ '1)
                               (_%eqv-table-update!91751%_
                                (vector-ref
                                 _%table91755%_
                                 (##fx+ _%probe91774%_ '1)))))
                            (_%loop91771%_
                             (let ((_%next-probe91796%_
                                    (fx+ _%start91767%_
                                         _%i91776%_
                                         (fx* _%i91776%_ _%i91776%_))))
                               (##fxmodulo _%next-probe91796%_ _%size91761%_))
                             (##fx+ _%i91776%_ '1)
                             _%deleted91778%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab91704%_ _%key91706%_)
        (let ((_%table91709%_ (&raw-table-table _%tab91704%_))
              (_%seed91711%_ (&raw-table-seed _%tab91704%_)))
          (let* ((_%h91714%_ (fxxor (eqv-hash _%key91706%_) _%seed91711%_))
                 (_%size91717%_ (vector-length _%table91709%_))
                 (_%entries91720%_ (##fxquotient _%size91717%_ '2))
                 (_%start91723%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91714%_ _%entries91720%_)
                   '1)))
            (let _%loop91727%_ ((_%probe91730%_ _%start91723%_)
                                (_%i91732%_ '1))
              (let ((_%k91735%_ (vector-ref _%table91709%_ _%probe91730%_)))
                (if (eq? _%k91735%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91735%_ (macro-deleted-obj))
                        (_%loop91727%_
                         (let ((_%next-probe91740%_
                                (fx+ _%start91723%_
                                     _%i91732%_
                                     (fx* _%i91732%_ _%i91732%_))))
                           (##fxmodulo _%next-probe91740%_ _%size91717%_))
                         (##fx+ _%i91732%_ '1))
                        (if (eqv? _%key91706%_ _%k91735%_)
                            (let ()
                              (vector-set!
                               _%table91709%_
                               _%probe91730%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91709%_
                               (##fx+ _%probe91730%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91704%_
                                  (##fx- (&raw-table-count _%tab91704%_)
                                         '1)))))
                            (_%loop91727%_
                             (let ((_%next-probe91746%_
                                    (fx+ _%start91723%_
                                         _%i91732%_
                                         (fx* _%i91732%_ _%i91732%_))))
                               (##fxmodulo _%next-probe91746%_ _%size91717%_))
                             (##fx+ _%i91732%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint91685%_ _%seed91687%_)
        (make-raw-table__%
         _%size-hint91685%_
         symbolic-hash
         eq?
         _%seed91687%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint91693%_ '#f) (_%seed91695%_ '0))
          (make-symbolic-table__% _%size-hint91693%_ _%seed91695%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint91697%_)
        (let ((_%seed91699%_ '0))
          (make-symbolic-table__% _%size-hint91697%_ _%seed91699%_))))
    (define make-symbolic-table
      (lambda _g92483_
        (let ((_g92482_ (##length _g92483_)))
          (cond ((##fx= _g92482_ 0) (apply make-symbolic-table__0 _g92483_))
                ((##fx= _g92482_ 1) (apply make-symbolic-table__1 _g92483_))
                ((##fx= _g92482_ 2) (apply make-symbolic-table__% _g92483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g92483_))))))
    (define symbolic-table-ref
      (lambda (_%tab91638%_ _%key91639%_ _%default91640%_)
        (let ((_%table91642%_ (&raw-table-table _%tab91638%_))
              (_%seed91643%_ (&raw-table-seed _%tab91638%_)))
          (let* ((_%h91645%_
                  (fxxor (symbolic-hash _%key91639%_) _%seed91643%_))
                 (_%size91648%_ (vector-length _%table91642%_))
                 (_%entries91651%_ (##fxquotient _%size91648%_ '2))
                 (_%start91654%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91645%_ _%entries91651%_)
                   '1)))
            (let _%loop91658%_ ((_%probe91661%_ _%start91654%_)
                                (_%i91663%_ '1)
                                (_%deleted91665%_ '#f))
              (let ((_%k91668%_ (vector-ref _%table91642%_ _%probe91661%_)))
                (if (eq? _%k91668%_ (macro-unused-obj))
                    _%default91640%_
                    (if (eq? _%k91668%_ (macro-deleted-obj))
                        (_%loop91658%_
                         (let ((_%next-probe91673%_
                                (fx+ _%start91654%_
                                     _%i91663%_
                                     (fx* _%i91663%_ _%i91663%_))))
                           (##fxmodulo _%next-probe91673%_ _%size91648%_))
                         (##fx+ _%i91663%_ '1)
                         (let ((_%$e91676%_ _%deleted91665%_))
                           (if _%$e91676%_ _%$e91676%_ _%probe91661%_)))
                        (if (eq? _%key91639%_ _%k91668%_)
                            (vector-ref
                             _%table91642%_
                             (##fx+ _%probe91661%_ '1))
                            (_%loop91658%_
                             (let ((_%next-probe91681%_
                                    (fx+ _%start91654%_
                                         _%i91663%_
                                         (fx* _%i91663%_ _%i91663%_))))
                               (##fxmodulo _%next-probe91681%_ _%size91648%_))
                             (##fx+ _%i91663%_ '1)
                             _%deleted91665%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab91634%_ _%key91635%_ _%value91636%_)
        (if (##fx< (&raw-table-free _%tab91634%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91634%_))
                    '4))
            (__raw-table-rehash! _%tab91634%_)
            '#!void)
        (__symbolic-table-set! _%tab91634%_ _%key91635%_ _%value91636%_)))
    (define __symbolic-table-set!
      (lambda (_%tab91585%_ _%key91586%_ _%value91587%_)
        (let ((_%table91590%_ (&raw-table-table _%tab91585%_))
              (_%seed91591%_ (&raw-table-seed _%tab91585%_)))
          (let* ((_%h91593%_
                  (fxxor (symbolic-hash _%key91586%_) _%seed91591%_))
                 (_%size91596%_ (vector-length _%table91590%_))
                 (_%entries91599%_ (##fxquotient _%size91596%_ '2))
                 (_%start91602%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91593%_ _%entries91599%_)
                   '1)))
            (let _%loop91606%_ ((_%probe91609%_ _%start91602%_)
                                (_%i91611%_ '1)
                                (_%deleted91613%_ '#f))
              (let ((_%k91616%_ (vector-ref _%table91590%_ _%probe91609%_)))
                (if (eq? _%k91616%_ (macro-unused-obj))
                    (if _%deleted91613%_
                        (begin
                          (vector-set!
                           _%table91590%_
                           _%deleted91613%_
                           _%key91586%_)
                          (vector-set!
                           _%table91590%_
                           (##fx+ _%deleted91613%_ '1)
                           _%value91587%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91585%_
                              (##fx+ (&raw-table-count _%tab91585%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91590%_
                           _%probe91609%_
                           _%key91586%_)
                          (vector-set!
                           _%table91590%_
                           (##fx+ _%probe91609%_ '1)
                           _%value91587%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91585%_
                              (##fx- (&raw-table-free _%tab91585%_) '1))
                             (&raw-table-count-set!
                              _%tab91585%_
                              (##fx+ (&raw-table-count _%tab91585%_) '1))))))
                    (if (eq? _%k91616%_ (macro-deleted-obj))
                        (_%loop91606%_
                         (let ((_%next-probe91623%_
                                (fx+ _%start91602%_
                                     _%i91611%_
                                     (fx* _%i91611%_ _%i91611%_))))
                           (##fxmodulo _%next-probe91623%_ _%size91596%_))
                         (##fx+ _%i91611%_ '1)
                         (let ((_%$e91626%_ _%deleted91613%_))
                           (if _%$e91626%_ _%$e91626%_ _%probe91609%_)))
                        (if (eq? _%key91586%_ _%k91616%_)
                            (let ()
                              (vector-set!
                               _%table91590%_
                               _%probe91609%_
                               _%key91586%_)
                              (vector-set!
                               _%table91590%_
                               (##fx+ _%probe91609%_ '1)
                               _%value91587%_))
                            (_%loop91606%_
                             (let ((_%next-probe91631%_
                                    (fx+ _%start91602%_
                                         _%i91611%_
                                         (fx* _%i91611%_ _%i91611%_))))
                               (##fxmodulo _%next-probe91631%_ _%size91596%_))
                             (##fx+ _%i91611%_ '1)
                             _%deleted91613%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab91580%_
               _%key91581%_
               _%symbolic-table-update!91582%_
               _%default91583%_)
        (if (##fx< (&raw-table-free _%tab91580%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91580%_))
                    '4))
            (__raw-table-rehash! _%tab91580%_)
            '#!void)
        (__symbolic-table-update!
         _%tab91580%_
         _%key91581%_
         _%symbolic-table-update!91582%_
         _%default91583%_)))
    (define __symbolic-table-update!
      (lambda (_%tab91530%_
               _%key91531%_
               _%symbolic-table-update!91532%_
               _%default91533%_)
        (let ((_%table91536%_ (&raw-table-table _%tab91530%_))
              (_%seed91537%_ (&raw-table-seed _%tab91530%_)))
          (let* ((_%h91539%_
                  (fxxor (symbolic-hash _%key91531%_) _%seed91537%_))
                 (_%size91542%_ (vector-length _%table91536%_))
                 (_%entries91545%_ (##fxquotient _%size91542%_ '2))
                 (_%start91548%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91539%_ _%entries91545%_)
                   '1)))
            (let _%loop91552%_ ((_%probe91555%_ _%start91548%_)
                                (_%i91557%_ '1)
                                (_%deleted91559%_ '#f))
              (let ((_%k91562%_ (vector-ref _%table91536%_ _%probe91555%_)))
                (if (eq? _%k91562%_ (macro-unused-obj))
                    (if _%deleted91559%_
                        (begin
                          (vector-set!
                           _%table91536%_
                           _%deleted91559%_
                           _%key91531%_)
                          (vector-set!
                           _%table91536%_
                           (##fx+ _%deleted91559%_ '1)
                           (_%symbolic-table-update!91532%_ _%default91533%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91530%_
                              (##fx+ (&raw-table-count _%tab91530%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91536%_
                           _%probe91555%_
                           _%key91531%_)
                          (vector-set!
                           _%table91536%_
                           (##fx+ _%probe91555%_ '1)
                           (_%symbolic-table-update!91532%_ _%default91533%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91530%_
                              (##fx- (&raw-table-free _%tab91530%_) '1))
                             (&raw-table-count-set!
                              _%tab91530%_
                              (##fx+ (&raw-table-count _%tab91530%_) '1))))))
                    (if (eq? _%k91562%_ (macro-deleted-obj))
                        (_%loop91552%_
                         (let ((_%next-probe91569%_
                                (fx+ _%start91548%_
                                     _%i91557%_
                                     (fx* _%i91557%_ _%i91557%_))))
                           (##fxmodulo _%next-probe91569%_ _%size91542%_))
                         (##fx+ _%i91557%_ '1)
                         (let ((_%$e91572%_ _%deleted91559%_))
                           (if _%$e91572%_ _%$e91572%_ _%probe91555%_)))
                        (if (eq? _%key91531%_ _%k91562%_)
                            (let ()
                              (vector-set!
                               _%table91536%_
                               _%probe91555%_
                               _%key91531%_)
                              (vector-set!
                               _%table91536%_
                               (##fx+ _%probe91555%_ '1)
                               (_%symbolic-table-update!91532%_
                                (vector-ref
                                 _%table91536%_
                                 (##fx+ _%probe91555%_ '1)))))
                            (_%loop91552%_
                             (let ((_%next-probe91577%_
                                    (fx+ _%start91548%_
                                         _%i91557%_
                                         (fx* _%i91557%_ _%i91557%_))))
                               (##fxmodulo _%next-probe91577%_ _%size91542%_))
                             (##fx+ _%i91557%_ '1)
                             _%deleted91559%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab91485%_ _%key91487%_)
        (let ((_%table91490%_ (&raw-table-table _%tab91485%_))
              (_%seed91492%_ (&raw-table-seed _%tab91485%_)))
          (let* ((_%h91495%_
                  (fxxor (symbolic-hash _%key91487%_) _%seed91492%_))
                 (_%size91498%_ (vector-length _%table91490%_))
                 (_%entries91501%_ (##fxquotient _%size91498%_ '2))
                 (_%start91504%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91495%_ _%entries91501%_)
                   '1)))
            (let _%loop91508%_ ((_%probe91511%_ _%start91504%_)
                                (_%i91513%_ '1))
              (let ((_%k91516%_ (vector-ref _%table91490%_ _%probe91511%_)))
                (if (eq? _%k91516%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91516%_ (macro-deleted-obj))
                        (_%loop91508%_
                         (let ((_%next-probe91521%_
                                (fx+ _%start91504%_
                                     _%i91513%_
                                     (fx* _%i91513%_ _%i91513%_))))
                           (##fxmodulo _%next-probe91521%_ _%size91498%_))
                         (##fx+ _%i91513%_ '1))
                        (if (eq? _%key91487%_ _%k91516%_)
                            (let ()
                              (vector-set!
                               _%table91490%_
                               _%probe91511%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91490%_
                               (##fx+ _%probe91511%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91485%_
                                  (##fx- (&raw-table-count _%tab91485%_)
                                         '1)))))
                            (_%loop91508%_
                             (let ((_%next-probe91527%_
                                    (fx+ _%start91504%_
                                         _%i91513%_
                                         (fx* _%i91513%_ _%i91513%_))))
                               (##fxmodulo _%next-probe91527%_ _%size91498%_))
                             (##fx+ _%i91513%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint91466%_ _%seed91468%_)
        (make-raw-table__%
         _%size-hint91466%_
         string-hash
         ##string=?
         _%seed91468%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint91474%_ '#f) (_%seed91476%_ '0))
          (make-string-table__% _%size-hint91474%_ _%seed91476%_))))
    (define make-string-table__1
      (lambda (_%size-hint91478%_)
        (let ((_%seed91480%_ '0))
          (make-string-table__% _%size-hint91478%_ _%seed91480%_))))
    (define make-string-table
      (lambda _g92485_
        (let ((_g92484_ (##length _g92485_)))
          (cond ((##fx= _g92484_ 0) (apply make-string-table__0 _g92485_))
                ((##fx= _g92484_ 1) (apply make-string-table__1 _g92485_))
                ((##fx= _g92484_ 2) (apply make-string-table__% _g92485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g92485_))))))
    (define string-table-ref
      (lambda (_%tab91419%_ _%key91420%_ _%default91421%_)
        (let ((_%table91423%_ (&raw-table-table _%tab91419%_))
              (_%seed91424%_ (&raw-table-seed _%tab91419%_)))
          (let* ((_%h91426%_
                  (fxxor (##string=?-hash _%key91420%_) _%seed91424%_))
                 (_%size91429%_ (vector-length _%table91423%_))
                 (_%entries91432%_ (##fxquotient _%size91429%_ '2))
                 (_%start91435%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91426%_ _%entries91432%_)
                   '1)))
            (let _%loop91439%_ ((_%probe91442%_ _%start91435%_)
                                (_%i91444%_ '1)
                                (_%deleted91446%_ '#f))
              (let ((_%k91449%_ (vector-ref _%table91423%_ _%probe91442%_)))
                (if (eq? _%k91449%_ (macro-unused-obj))
                    _%default91421%_
                    (if (eq? _%k91449%_ (macro-deleted-obj))
                        (_%loop91439%_
                         (let ((_%next-probe91454%_
                                (fx+ _%start91435%_
                                     _%i91444%_
                                     (fx* _%i91444%_ _%i91444%_))))
                           (##fxmodulo _%next-probe91454%_ _%size91429%_))
                         (##fx+ _%i91444%_ '1)
                         (let ((_%$e91457%_ _%deleted91446%_))
                           (if _%$e91457%_ _%$e91457%_ _%probe91442%_)))
                        (if (##string=? _%key91420%_ _%k91449%_)
                            (vector-ref
                             _%table91423%_
                             (##fx+ _%probe91442%_ '1))
                            (_%loop91439%_
                             (let ((_%next-probe91462%_
                                    (fx+ _%start91435%_
                                         _%i91444%_
                                         (fx* _%i91444%_ _%i91444%_))))
                               (##fxmodulo _%next-probe91462%_ _%size91429%_))
                             (##fx+ _%i91444%_ '1)
                             _%deleted91446%_))))))))))
    (define string-table-set!
      (lambda (_%tab91415%_ _%key91416%_ _%value91417%_)
        (if (##fx< (&raw-table-free _%tab91415%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91415%_))
                    '4))
            (__raw-table-rehash! _%tab91415%_)
            '#!void)
        (__string-table-set! _%tab91415%_ _%key91416%_ _%value91417%_)))
    (define __string-table-set!
      (lambda (_%tab91366%_ _%key91367%_ _%value91368%_)
        (let ((_%table91371%_ (&raw-table-table _%tab91366%_))
              (_%seed91372%_ (&raw-table-seed _%tab91366%_)))
          (let* ((_%h91374%_
                  (fxxor (##string=?-hash _%key91367%_) _%seed91372%_))
                 (_%size91377%_ (vector-length _%table91371%_))
                 (_%entries91380%_ (##fxquotient _%size91377%_ '2))
                 (_%start91383%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91374%_ _%entries91380%_)
                   '1)))
            (let _%loop91387%_ ((_%probe91390%_ _%start91383%_)
                                (_%i91392%_ '1)
                                (_%deleted91394%_ '#f))
              (let ((_%k91397%_ (vector-ref _%table91371%_ _%probe91390%_)))
                (if (eq? _%k91397%_ (macro-unused-obj))
                    (if _%deleted91394%_
                        (begin
                          (vector-set!
                           _%table91371%_
                           _%deleted91394%_
                           _%key91367%_)
                          (vector-set!
                           _%table91371%_
                           (##fx+ _%deleted91394%_ '1)
                           _%value91368%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91366%_
                              (##fx+ (&raw-table-count _%tab91366%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91371%_
                           _%probe91390%_
                           _%key91367%_)
                          (vector-set!
                           _%table91371%_
                           (##fx+ _%probe91390%_ '1)
                           _%value91368%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91366%_
                              (##fx- (&raw-table-free _%tab91366%_) '1))
                             (&raw-table-count-set!
                              _%tab91366%_
                              (##fx+ (&raw-table-count _%tab91366%_) '1))))))
                    (if (eq? _%k91397%_ (macro-deleted-obj))
                        (_%loop91387%_
                         (let ((_%next-probe91404%_
                                (fx+ _%start91383%_
                                     _%i91392%_
                                     (fx* _%i91392%_ _%i91392%_))))
                           (##fxmodulo _%next-probe91404%_ _%size91377%_))
                         (##fx+ _%i91392%_ '1)
                         (let ((_%$e91407%_ _%deleted91394%_))
                           (if _%$e91407%_ _%$e91407%_ _%probe91390%_)))
                        (if (##string=? _%key91367%_ _%k91397%_)
                            (let ()
                              (vector-set!
                               _%table91371%_
                               _%probe91390%_
                               _%key91367%_)
                              (vector-set!
                               _%table91371%_
                               (##fx+ _%probe91390%_ '1)
                               _%value91368%_))
                            (_%loop91387%_
                             (let ((_%next-probe91412%_
                                    (fx+ _%start91383%_
                                         _%i91392%_
                                         (fx* _%i91392%_ _%i91392%_))))
                               (##fxmodulo _%next-probe91412%_ _%size91377%_))
                             (##fx+ _%i91392%_ '1)
                             _%deleted91394%_))))))))))
    (define string-table-update!
      (lambda (_%tab91361%_
               _%key91362%_
               _%string-table-update!91363%_
               _%default91364%_)
        (if (##fx< (&raw-table-free _%tab91361%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91361%_))
                    '4))
            (__raw-table-rehash! _%tab91361%_)
            '#!void)
        (__string-table-update!
         _%tab91361%_
         _%key91362%_
         _%string-table-update!91363%_
         _%default91364%_)))
    (define __string-table-update!
      (lambda (_%tab91311%_
               _%key91312%_
               _%string-table-update!91313%_
               _%default91314%_)
        (let ((_%table91317%_ (&raw-table-table _%tab91311%_))
              (_%seed91318%_ (&raw-table-seed _%tab91311%_)))
          (let* ((_%h91320%_
                  (fxxor (##string=?-hash _%key91312%_) _%seed91318%_))
                 (_%size91323%_ (vector-length _%table91317%_))
                 (_%entries91326%_ (##fxquotient _%size91323%_ '2))
                 (_%start91329%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91320%_ _%entries91326%_)
                   '1)))
            (let _%loop91333%_ ((_%probe91336%_ _%start91329%_)
                                (_%i91338%_ '1)
                                (_%deleted91340%_ '#f))
              (let ((_%k91343%_ (vector-ref _%table91317%_ _%probe91336%_)))
                (if (eq? _%k91343%_ (macro-unused-obj))
                    (if _%deleted91340%_
                        (begin
                          (vector-set!
                           _%table91317%_
                           _%deleted91340%_
                           _%key91312%_)
                          (vector-set!
                           _%table91317%_
                           (##fx+ _%deleted91340%_ '1)
                           (_%string-table-update!91313%_ _%default91314%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91311%_
                              (##fx+ (&raw-table-count _%tab91311%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91317%_
                           _%probe91336%_
                           _%key91312%_)
                          (vector-set!
                           _%table91317%_
                           (##fx+ _%probe91336%_ '1)
                           (_%string-table-update!91313%_ _%default91314%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91311%_
                              (##fx- (&raw-table-free _%tab91311%_) '1))
                             (&raw-table-count-set!
                              _%tab91311%_
                              (##fx+ (&raw-table-count _%tab91311%_) '1))))))
                    (if (eq? _%k91343%_ (macro-deleted-obj))
                        (_%loop91333%_
                         (let ((_%next-probe91350%_
                                (fx+ _%start91329%_
                                     _%i91338%_
                                     (fx* _%i91338%_ _%i91338%_))))
                           (##fxmodulo _%next-probe91350%_ _%size91323%_))
                         (##fx+ _%i91338%_ '1)
                         (let ((_%$e91353%_ _%deleted91340%_))
                           (if _%$e91353%_ _%$e91353%_ _%probe91336%_)))
                        (if (##string=? _%key91312%_ _%k91343%_)
                            (let ()
                              (vector-set!
                               _%table91317%_
                               _%probe91336%_
                               _%key91312%_)
                              (vector-set!
                               _%table91317%_
                               (##fx+ _%probe91336%_ '1)
                               (_%string-table-update!91313%_
                                (vector-ref
                                 _%table91317%_
                                 (##fx+ _%probe91336%_ '1)))))
                            (_%loop91333%_
                             (let ((_%next-probe91358%_
                                    (fx+ _%start91329%_
                                         _%i91338%_
                                         (fx* _%i91338%_ _%i91338%_))))
                               (##fxmodulo _%next-probe91358%_ _%size91323%_))
                             (##fx+ _%i91338%_ '1)
                             _%deleted91340%_))))))))))
    (define string-table-delete!
      (lambda (_%tab91266%_ _%key91268%_)
        (let ((_%table91271%_ (&raw-table-table _%tab91266%_))
              (_%seed91273%_ (&raw-table-seed _%tab91266%_)))
          (let* ((_%h91276%_
                  (fxxor (##string=?-hash _%key91268%_) _%seed91273%_))
                 (_%size91279%_ (vector-length _%table91271%_))
                 (_%entries91282%_ (##fxquotient _%size91279%_ '2))
                 (_%start91285%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91276%_ _%entries91282%_)
                   '1)))
            (let _%loop91289%_ ((_%probe91292%_ _%start91285%_)
                                (_%i91294%_ '1))
              (let ((_%k91297%_ (vector-ref _%table91271%_ _%probe91292%_)))
                (if (eq? _%k91297%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91297%_ (macro-deleted-obj))
                        (_%loop91289%_
                         (let ((_%next-probe91302%_
                                (fx+ _%start91285%_
                                     _%i91294%_
                                     (fx* _%i91294%_ _%i91294%_))))
                           (##fxmodulo _%next-probe91302%_ _%size91279%_))
                         (##fx+ _%i91294%_ '1))
                        (if (##string=? _%key91268%_ _%k91297%_)
                            (let ()
                              (vector-set!
                               _%table91271%_
                               _%probe91292%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91271%_
                               (##fx+ _%probe91292%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91266%_
                                  (##fx- (&raw-table-count _%tab91266%_)
                                         '1)))))
                            (_%loop91289%_
                             (let ((_%next-probe91308%_
                                    (fx+ _%start91285%_
                                         _%i91294%_
                                         (fx* _%i91294%_ _%i91294%_))))
                               (##fxmodulo _%next-probe91308%_ _%size91279%_))
                             (##fx+ _%i91294%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint91247%_ _%seed91249%_)
        (make-raw-table__%
         _%size-hint91247%_
         immediate-hash
         eq?
         _%seed91249%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint91255%_ '#f) (_%seed91257%_ '0))
          (make-immediate-table__% _%size-hint91255%_ _%seed91257%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint91259%_)
        (let ((_%seed91261%_ '0))
          (make-immediate-table__% _%size-hint91259%_ _%seed91261%_))))
    (define make-immediate-table
      (lambda _g92487_
        (let ((_g92486_ (##length _g92487_)))
          (cond ((##fx= _g92486_ 0) (apply make-immediate-table__0 _g92487_))
                ((##fx= _g92486_ 1) (apply make-immediate-table__1 _g92487_))
                ((##fx= _g92486_ 2) (apply make-immediate-table__% _g92487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g92487_))))))
    (define immediate-table-ref
      (lambda (_%tab91200%_ _%key91201%_ _%default91202%_)
        (let ((_%table91204%_ (&raw-table-table _%tab91200%_))
              (_%seed91205%_ (&raw-table-seed _%tab91200%_)))
          (let* ((_%h91207%_
                  (fxxor (immediate-hash _%key91201%_) _%seed91205%_))
                 (_%size91210%_ (vector-length _%table91204%_))
                 (_%entries91213%_ (##fxquotient _%size91210%_ '2))
                 (_%start91216%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91207%_ _%entries91213%_)
                   '1)))
            (let _%loop91220%_ ((_%probe91223%_ _%start91216%_)
                                (_%i91225%_ '1)
                                (_%deleted91227%_ '#f))
              (let ((_%k91230%_ (vector-ref _%table91204%_ _%probe91223%_)))
                (if (eq? _%k91230%_ (macro-unused-obj))
                    _%default91202%_
                    (if (eq? _%k91230%_ (macro-deleted-obj))
                        (_%loop91220%_
                         (let ((_%next-probe91235%_
                                (fx+ _%start91216%_
                                     _%i91225%_
                                     (fx* _%i91225%_ _%i91225%_))))
                           (##fxmodulo _%next-probe91235%_ _%size91210%_))
                         (##fx+ _%i91225%_ '1)
                         (let ((_%$e91238%_ _%deleted91227%_))
                           (if _%$e91238%_ _%$e91238%_ _%probe91223%_)))
                        (if (eq? _%key91201%_ _%k91230%_)
                            (vector-ref
                             _%table91204%_
                             (##fx+ _%probe91223%_ '1))
                            (_%loop91220%_
                             (let ((_%next-probe91243%_
                                    (fx+ _%start91216%_
                                         _%i91225%_
                                         (fx* _%i91225%_ _%i91225%_))))
                               (##fxmodulo _%next-probe91243%_ _%size91210%_))
                             (##fx+ _%i91225%_ '1)
                             _%deleted91227%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab91196%_ _%key91197%_ _%value91198%_)
        (if (##fx< (&raw-table-free _%tab91196%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91196%_))
                    '4))
            (__raw-table-rehash! _%tab91196%_)
            '#!void)
        (__immediate-table-set! _%tab91196%_ _%key91197%_ _%value91198%_)))
    (define __immediate-table-set!
      (lambda (_%tab91147%_ _%key91148%_ _%value91149%_)
        (let ((_%table91152%_ (&raw-table-table _%tab91147%_))
              (_%seed91153%_ (&raw-table-seed _%tab91147%_)))
          (let* ((_%h91155%_
                  (fxxor (immediate-hash _%key91148%_) _%seed91153%_))
                 (_%size91158%_ (vector-length _%table91152%_))
                 (_%entries91161%_ (##fxquotient _%size91158%_ '2))
                 (_%start91164%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91155%_ _%entries91161%_)
                   '1)))
            (let _%loop91168%_ ((_%probe91171%_ _%start91164%_)
                                (_%i91173%_ '1)
                                (_%deleted91175%_ '#f))
              (let ((_%k91178%_ (vector-ref _%table91152%_ _%probe91171%_)))
                (if (eq? _%k91178%_ (macro-unused-obj))
                    (if _%deleted91175%_
                        (begin
                          (vector-set!
                           _%table91152%_
                           _%deleted91175%_
                           _%key91148%_)
                          (vector-set!
                           _%table91152%_
                           (##fx+ _%deleted91175%_ '1)
                           _%value91149%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91147%_
                              (##fx+ (&raw-table-count _%tab91147%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91152%_
                           _%probe91171%_
                           _%key91148%_)
                          (vector-set!
                           _%table91152%_
                           (##fx+ _%probe91171%_ '1)
                           _%value91149%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91147%_
                              (##fx- (&raw-table-free _%tab91147%_) '1))
                             (&raw-table-count-set!
                              _%tab91147%_
                              (##fx+ (&raw-table-count _%tab91147%_) '1))))))
                    (if (eq? _%k91178%_ (macro-deleted-obj))
                        (_%loop91168%_
                         (let ((_%next-probe91185%_
                                (fx+ _%start91164%_
                                     _%i91173%_
                                     (fx* _%i91173%_ _%i91173%_))))
                           (##fxmodulo _%next-probe91185%_ _%size91158%_))
                         (##fx+ _%i91173%_ '1)
                         (let ((_%$e91188%_ _%deleted91175%_))
                           (if _%$e91188%_ _%$e91188%_ _%probe91171%_)))
                        (if (eq? _%key91148%_ _%k91178%_)
                            (let ()
                              (vector-set!
                               _%table91152%_
                               _%probe91171%_
                               _%key91148%_)
                              (vector-set!
                               _%table91152%_
                               (##fx+ _%probe91171%_ '1)
                               _%value91149%_))
                            (_%loop91168%_
                             (let ((_%next-probe91193%_
                                    (fx+ _%start91164%_
                                         _%i91173%_
                                         (fx* _%i91173%_ _%i91173%_))))
                               (##fxmodulo _%next-probe91193%_ _%size91158%_))
                             (##fx+ _%i91173%_ '1)
                             _%deleted91175%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab91142%_
               _%key91143%_
               _%immediate-table-update!91144%_
               _%default91145%_)
        (if (##fx< (&raw-table-free _%tab91142%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91142%_))
                    '4))
            (__raw-table-rehash! _%tab91142%_)
            '#!void)
        (__immediate-table-update!
         _%tab91142%_
         _%key91143%_
         _%immediate-table-update!91144%_
         _%default91145%_)))
    (define __immediate-table-update!
      (lambda (_%tab91092%_
               _%key91093%_
               _%immediate-table-update!91094%_
               _%default91095%_)
        (let ((_%table91098%_ (&raw-table-table _%tab91092%_))
              (_%seed91099%_ (&raw-table-seed _%tab91092%_)))
          (let* ((_%h91101%_
                  (fxxor (immediate-hash _%key91093%_) _%seed91099%_))
                 (_%size91104%_ (vector-length _%table91098%_))
                 (_%entries91107%_ (##fxquotient _%size91104%_ '2))
                 (_%start91110%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91101%_ _%entries91107%_)
                   '1)))
            (let _%loop91114%_ ((_%probe91117%_ _%start91110%_)
                                (_%i91119%_ '1)
                                (_%deleted91121%_ '#f))
              (let ((_%k91124%_ (vector-ref _%table91098%_ _%probe91117%_)))
                (if (eq? _%k91124%_ (macro-unused-obj))
                    (if _%deleted91121%_
                        (begin
                          (vector-set!
                           _%table91098%_
                           _%deleted91121%_
                           _%key91093%_)
                          (vector-set!
                           _%table91098%_
                           (##fx+ _%deleted91121%_ '1)
                           (_%immediate-table-update!91094%_ _%default91095%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91092%_
                              (##fx+ (&raw-table-count _%tab91092%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91098%_
                           _%probe91117%_
                           _%key91093%_)
                          (vector-set!
                           _%table91098%_
                           (##fx+ _%probe91117%_ '1)
                           (_%immediate-table-update!91094%_ _%default91095%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91092%_
                              (##fx- (&raw-table-free _%tab91092%_) '1))
                             (&raw-table-count-set!
                              _%tab91092%_
                              (##fx+ (&raw-table-count _%tab91092%_) '1))))))
                    (if (eq? _%k91124%_ (macro-deleted-obj))
                        (_%loop91114%_
                         (let ((_%next-probe91131%_
                                (fx+ _%start91110%_
                                     _%i91119%_
                                     (fx* _%i91119%_ _%i91119%_))))
                           (##fxmodulo _%next-probe91131%_ _%size91104%_))
                         (##fx+ _%i91119%_ '1)
                         (let ((_%$e91134%_ _%deleted91121%_))
                           (if _%$e91134%_ _%$e91134%_ _%probe91117%_)))
                        (if (eq? _%key91093%_ _%k91124%_)
                            (let ()
                              (vector-set!
                               _%table91098%_
                               _%probe91117%_
                               _%key91093%_)
                              (vector-set!
                               _%table91098%_
                               (##fx+ _%probe91117%_ '1)
                               (_%immediate-table-update!91094%_
                                (vector-ref
                                 _%table91098%_
                                 (##fx+ _%probe91117%_ '1)))))
                            (_%loop91114%_
                             (let ((_%next-probe91139%_
                                    (fx+ _%start91110%_
                                         _%i91119%_
                                         (fx* _%i91119%_ _%i91119%_))))
                               (##fxmodulo _%next-probe91139%_ _%size91104%_))
                             (##fx+ _%i91119%_ '1)
                             _%deleted91121%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab91047%_ _%key91049%_)
        (let ((_%table91052%_ (&raw-table-table _%tab91047%_))
              (_%seed91054%_ (&raw-table-seed _%tab91047%_)))
          (let* ((_%h91057%_
                  (fxxor (immediate-hash _%key91049%_) _%seed91054%_))
                 (_%size91060%_ (vector-length _%table91052%_))
                 (_%entries91063%_ (##fxquotient _%size91060%_ '2))
                 (_%start91066%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91057%_ _%entries91063%_)
                   '1)))
            (let _%loop91070%_ ((_%probe91073%_ _%start91066%_)
                                (_%i91075%_ '1))
              (let ((_%k91078%_ (vector-ref _%table91052%_ _%probe91073%_)))
                (if (eq? _%k91078%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91078%_ (macro-deleted-obj))
                        (_%loop91070%_
                         (let ((_%next-probe91083%_
                                (fx+ _%start91066%_
                                     _%i91075%_
                                     (fx* _%i91075%_ _%i91075%_))))
                           (##fxmodulo _%next-probe91083%_ _%size91060%_))
                         (##fx+ _%i91075%_ '1))
                        (if (eq? _%key91049%_ _%k91078%_)
                            (let ()
                              (vector-set!
                               _%table91052%_
                               _%probe91073%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91052%_
                               (##fx+ _%probe91073%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91047%_
                                  (##fx- (&raw-table-count _%tab91047%_)
                                         '1)))))
                            (_%loop91070%_
                             (let ((_%next-probe91089%_
                                    (fx+ _%start91066%_
                                         _%i91075%_
                                         (fx* _%i91075%_ _%i91075%_))))
                               (##fxmodulo _%next-probe91089%_ _%size91060%_))
                             (##fx+ _%i91075%_ '1)))))))))))
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
      (lambda (_%tab91045%_)
        (##unchecked-structure-ref
         _%tab91045%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab91043%_)
        (##unchecked-structure-ref
         _%tab91043%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab91040%_ _%val91041%_)
        (##unchecked-structure-set!
         _%tab91040%_
         _%val91041%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab91037%_ _%val91038%_)
        (##unchecked-structure-set!
         _%tab91037%_
         _%val91038%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint91013%_ _%klass91014%_ _%flags91015%_)
        (let ((_%gcht91017%_
               (__gc-table-new
                (if (fixnum? _%size-hint91013%_) _%size-hint91013%_ '16)
                _%flags91015%_)))
          (##structure _%klass91014%_ _%gcht91017%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint91022%_)
        (let* ((_%klass91024%_ __gc-table::t) (_%flags91026%_ '0))
          (make-gc-table__%
           _%size-hint91022%_
           _%klass91024%_
           _%flags91026%_))))
    (define make-gc-table__1
      (lambda (_%size-hint91028%_ _%klass91029%_)
        (let ((_%flags91031%_ '0))
          (make-gc-table__%
           _%size-hint91028%_
           _%klass91029%_
           _%flags91031%_))))
    (define make-gc-table
      (lambda _g92489_
        (let ((_g92488_ (##length _g92489_)))
          (cond ((##fx= _g92488_ 1) (apply make-gc-table__0 _g92489_))
                ((##fx= _g92488_ 2) (apply make-gc-table__1 _g92489_))
                ((##fx= _g92488_ 3) (apply make-gc-table__% _g92489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g92489_))))))
    (define __gc-table-immediate
      (lambda (_%tab91004%_)
        (let ((_%$e91006%_ (&gc-table-immediate _%tab91004%_)))
          (if _%$e91006%_
              _%$e91006%_
              (let ((_%immediate91010%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab91004%_ _%immediate91010%_)
                _%immediate91010%_)))))
    (define __gc-table-new
      (lambda (_%size90994%_ _%flags90995%_)
        (let* ((_%flags90997%_
                (##fxand _%flags90995%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags90999%_
                (fxior _%flags90997%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht91001%_
                (##gc-hash-table-allocate
                 _%size90994%_
                 _%flags90999%_
                 __gc-table-loads)))
          _%gcht91001%_)))
    (define __gc-table-e
      (lambda (_%tab90989%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht90992%_ (&gc-table-gcht _%tab90989%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht90992%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht90992%_
              (begin
                (__gc-table-rehash! _%tab90989%_)
                (&gc-table-gcht _%tab90989%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab90980%_)
        (let* ((_%old-table90982%_ (&gc-table-gcht _%tab90980%_))
               (_%new-table90984%_
                (##gc-hash-table-resize! _%old-table90982%_ __gc-table-loads))
               (_%gcht90986%_
                (##gc-hash-table-rehash!
                 _%old-table90982%_
                 _%new-table90984%_)))
          (&gc-table-gcht-set! _%tab90980%_ _%gcht90986%_))))
    (define gc-table-ref
      (lambda (_%tab90964%_ _%key90965%_ _%default90966%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90965%_)
            (let* ((_%gcht90970%_ (__gc-table-e _%tab90964%_))
                   (_%value90972%_
                    (##gc-hash-table-ref _%gcht90970%_ _%key90965%_)))
              (if (eq? _%value90972%_ (macro-unused-obj))
                  _%default90966%_
                  _%value90972%_))
            (let ((_%$e90974%_ (&gc-table-immediate _%tab90964%_)))
              (if _%$e90974%_
                  ((lambda (_%immediate90977%_)
                     (immediate-table-ref
                      _%immediate90977%_
                      _%key90965%_
                      _%default90966%_))
                   _%$e90974%_)
                  _%default90966%_)))))
    (define gc-table-set!
      (lambda (_%tab90957%_ _%key90958%_ _%value90959%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90958%_)
            (let ((_%gcht90962%_ (__gc-table-e _%tab90957%_)))
              (if (##gc-hash-table-set!
                   _%gcht90962%_
                   _%key90958%_
                   _%value90959%_)
                  (begin
                    (__gc-table-rehash! _%tab90957%_)
                    (gc-table-set! _%tab90957%_ _%key90958%_ _%value90959%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab90957%_)
             _%key90958%_
             _%value90959%_))))
    (define gc-table-update!
      (lambda (_%tab90950%_ _%key90951%_ _%update90952%_ _%default90953%_)
        (if (##mem-allocated? _%key90951%_)
            (let ((_%value90955%_
                   (gc-table-ref _%tab90950%_ _%key90951%_ _%default90953%_)))
              (gc-table-set!
               _%tab90950%_
               _%key90951%_
               (_%update90952%_ _%value90955%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab90950%_)
             _%key90951%_
             _%update90952%_
             _%default90953%_))))
    (define gc-table-delete!
      (lambda (_%tab90938%_ _%key90939%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90939%_)
            (let ((_%gcht90943%_ (__gc-table-e _%tab90938%_)))
              (if (##gc-hash-table-set!
                   _%gcht90943%_
                   _%key90939%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab90938%_)
                    (gc-table-delete! _%tab90938%_ _%key90939%_))
                  '#!void))
            (let ((_%$e90945%_ (&gc-table-immediate _%tab90938%_)))
              (if _%$e90945%_
                  ((lambda (_%immediate90948%_)
                     (immediate-table-delete! _%immediate90948%_ _%key90939%_))
                   _%$e90945%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab90919%_ _%proc90920%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht90923%_ (__gc-table-e _%tab90919%_)))
            (let _%loop90925%_ ((_%i90927%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i90927%_ (##vector-length _%gcht90923%_))
                  (let ((_%key90929%_ (##vector-ref _%gcht90923%_ _%i90927%_)))
                    (if (if (eq? _%key90929%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key90929%_ (macro-deleted-obj))))
                        (_%proc90920%_
                         _%key90929%_
                         (##vector-ref _%gcht90923%_ (##fx+ _%i90927%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop90925%_ (##fx+ _%i90927%_ '2))))
                  '#!void)))
          (let ((_%$e90933%_ (&gc-table-immediate _%tab90919%_)))
            (if _%$e90933%_
                ((lambda (_%immediate90936%_)
                   (raw-table-for-each _%immediate90936%_ _%proc90920%_))
                 _%$e90933%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab90907%_)
        (let* ((_%gcht90909%_ (__gc-table-e _%tab90907%_))
               (_%new-table90911%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht90909%_)
                 (macro-gc-hash-table-flags _%gcht90909%_)))
               (_%result90913%_
                (##structure
                 (##structure-type _%tab90907%_)
                 _%new-table90911%_
                 '#f)))
          (gc-table-for-each
           _%tab90907%_
           (lambda (_%k90916%_ _%v90917%_)
             (gc-table-set! _%result90913%_ _%k90916%_ _%v90917%_)))
          _%result90913%_)))
    (define gc-table-clear!
      (lambda (_%tab90900%_)
        (let* ((_%gcht90902%_ (__gc-table-e _%tab90900%_))
               (_%new-table90904%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht90902%_))))
          (&gc-table-gcht-set! _%tab90900%_ _%new-table90904%_)
          (&gc-table-immediate-set! _%tab90900%_ '#f))))
    (define gc-table-length
      (lambda (_%tab90892%_)
        (let ((_%gcht90894%_ (__gc-table-e _%tab90892%_)))
          (fx+ (macro-gc-hash-table-count _%gcht90894%_)
               (let ((_%$e90896%_ (&gc-table-immediate _%tab90892%_)))
                 (if _%$e90896%_ (&raw-table-count _%$e90896%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj90877%_)
        (declare (not interrupts-enabled))
        (let ((_%val90880%_ (gc-table-ref __object-eq-hash _%obj90877%_ '#f)))
          (if _%val90880%_
              _%val90880%_
              (let* ((_%mix90882%_ __object-eq-hash-next)
                     (_%ptr90884%_ (##type-cast _%obj90877%_ '0))
                     (_%h90886%_
                      (fxand (fxxor _%mix90882%_ _%ptr90884%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e90889%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e90889%_ _%$e90889%_ '0)))
                (gc-table-set! __object-eq-hash _%obj90877%_ _%h90886%_)
                _%h90886%_)))))))
