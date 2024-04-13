(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1713000275)
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
      (lambda (_%tab92473%_)
        (##unchecked-structure-ref
         _%tab92473%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab92471%_)
        (##unchecked-structure-ref
         _%tab92471%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab92469%_)
        (##unchecked-structure-ref
         _%tab92469%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab92467%_)
        (##unchecked-structure-ref
         _%tab92467%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab92465%_)
        (##unchecked-structure-ref
         _%tab92465%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab92463%_)
        (##unchecked-structure-ref
         _%tab92463%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab92460%_ _%val92461%_)
        (##unchecked-structure-set!
         _%tab92460%_
         _%val92461%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab92457%_ _%val92458%_)
        (##unchecked-structure-set!
         _%tab92457%_
         _%val92458%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab92454%_ _%val92455%_)
        (##unchecked-structure-set!
         _%tab92454%_
         _%val92455%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab92451%_ _%val92452%_)
        (##unchecked-structure-set!
         _%tab92451%_
         _%val92452%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab92448%_ _%val92449%_)
        (##unchecked-structure-set!
         _%tab92448%_
         _%val92449%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab92445%_ _%val92446%_)
        (##unchecked-structure-set!
         _%tab92445%_
         _%val92446%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint92443%_)
        (if (and (fixnum? _%size-hint92443%_) (##fx> _%size-hint92443%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint92443%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint92419%_ _%hash92420%_ _%test92421%_ _%seed92422%_)
        (let* ((_%size92424%_ (raw-table-size-hint->size _%size-hint92419%_))
               (_%table92426%_
                (##make-vector _%size92424%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table92426%_
           '0
           (##fxquotient _%size92424%_ '2)
           _%hash92420%_
           _%test92421%_
           _%seed92422%_))))
    (define make-raw-table__0
      (lambda (_%size-hint92432%_ _%hash92433%_ _%test92434%_)
        (let ((_%seed92436%_ '0))
          (make-raw-table__%
           _%size-hint92432%_
           _%hash92433%_
           _%test92434%_
           _%seed92436%_))))
    (define make-raw-table
      (lambda _g92475_
        (let ((_g92474_ (##length _g92475_)))
          (cond ((##fx= _g92474_ 3) (apply make-raw-table__0 _g92475_))
                ((##fx= _g92474_ 4) (apply make-raw-table__% _g92475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g92475_))))))
    (define raw-table-ref
      (lambda (_%tab92370%_ _%key92371%_ _%default92372%_)
        (let ((_%table92374%_ (&raw-table-table _%tab92370%_))
              (_%seed92375%_ (&raw-table-seed _%tab92370%_))
              (_%hash92376%_ (&raw-table-hash _%tab92370%_))
              (_%test92377%_ (&raw-table-test _%tab92370%_)))
          (let* ((_%h92379%_
                  (fxxor (_%hash92376%_ _%key92371%_) _%seed92375%_))
                 (_%size92382%_ (vector-length _%table92374%_))
                 (_%entries92385%_ (##fxquotient _%size92382%_ '2))
                 (_%start92388%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92379%_ _%entries92385%_)
                   '1)))
            (let _%loop92392%_ ((_%probe92395%_ _%start92388%_)
                                (_%i92397%_ '1)
                                (_%deleted92399%_ '#f))
              (let ((_%k92402%_ (vector-ref _%table92374%_ _%probe92395%_)))
                (if (eq? _%k92402%_ (macro-unused-obj))
                    _%default92372%_
                    (if (eq? _%k92402%_ (macro-deleted-obj))
                        (_%loop92392%_
                         (let ((_%next-probe92407%_
                                (fx+ _%start92388%_
                                     _%i92397%_
                                     (fx* _%i92397%_ _%i92397%_))))
                           (##fxmodulo _%next-probe92407%_ _%size92382%_))
                         (##fx+ _%i92397%_ '1)
                         (let ((_%$e92410%_ _%deleted92399%_))
                           (if _%$e92410%_ _%$e92410%_ _%probe92395%_)))
                        (if (_%test92377%_ _%key92371%_ _%k92402%_)
                            (vector-ref
                             _%table92374%_
                             (##fx+ _%probe92395%_ '1))
                            (_%loop92392%_
                             (let ((_%next-probe92415%_
                                    (fx+ _%start92388%_
                                         _%i92397%_
                                         (fx* _%i92397%_ _%i92397%_))))
                               (##fxmodulo _%next-probe92415%_ _%size92382%_))
                             (##fx+ _%i92397%_ '1)
                             _%deleted92399%_))))))))))
    (define raw-table-set!
      (lambda (_%tab92366%_ _%key92367%_ _%value92368%_)
        (if (##fx< (&raw-table-free _%tab92366%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92366%_))
                    '4))
            (__raw-table-rehash! _%tab92366%_)
            '#!void)
        (__raw-table-set! _%tab92366%_ _%key92367%_ _%value92368%_)))
    (define raw-table-update!
      (lambda (_%tab92361%_ _%key92362%_ _%update92363%_ _%default92364%_)
        (if (##fx< (&raw-table-free _%tab92361%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92361%_))
                    '4))
            (__raw-table-rehash! _%tab92361%_)
            '#!void)
        (__raw-table-update!
         _%tab92361%_
         _%key92362%_
         _%update92363%_
         _%default92364%_)))
    (define raw-table-delete!
      (lambda (_%tab92318%_ _%key92319%_)
        (let ((_%table92321%_ (&raw-table-table _%tab92318%_))
              (_%seed92322%_ (&raw-table-seed _%tab92318%_))
              (_%hash92323%_ (&raw-table-hash _%tab92318%_))
              (_%test92324%_ (&raw-table-test _%tab92318%_)))
          (let* ((_%h92326%_
                  (fxxor (_%hash92323%_ _%key92319%_) _%seed92322%_))
                 (_%size92329%_ (vector-length _%table92321%_))
                 (_%entries92332%_ (##fxquotient _%size92329%_ '2))
                 (_%start92335%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92326%_ _%entries92332%_)
                   '1)))
            (let _%loop92339%_ ((_%probe92342%_ _%start92335%_)
                                (_%i92344%_ '1))
              (let ((_%k92347%_ (vector-ref _%table92321%_ _%probe92342%_)))
                (if (eq? _%k92347%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92347%_ (macro-deleted-obj))
                        (_%loop92339%_
                         (let ((_%next-probe92352%_
                                (fx+ _%start92335%_
                                     _%i92344%_
                                     (fx* _%i92344%_ _%i92344%_))))
                           (##fxmodulo _%next-probe92352%_ _%size92329%_))
                         (##fx+ _%i92344%_ '1))
                        (if (_%test92324%_ _%key92319%_ _%k92347%_)
                            (let ()
                              (vector-set!
                               _%table92321%_
                               _%probe92342%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92321%_
                               (##fx+ _%probe92342%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92318%_
                                  (##fx- (&raw-table-count _%tab92318%_)
                                         '1)))))
                            (_%loop92339%_
                             (let ((_%next-probe92358%_
                                    (fx+ _%start92335%_
                                         _%i92344%_
                                         (fx* _%i92344%_ _%i92344%_))))
                               (##fxmodulo _%next-probe92358%_ _%size92329%_))
                             (##fx+ _%i92344%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab92302%_ _%proc92303%_)
        (let* ((_%table92305%_ (&raw-table-table _%tab92302%_))
               (_%size92307%_ (vector-length _%table92305%_)))
          (let _%loop92310%_ ((_%i92312%_ '0))
            (if (##fx< _%i92312%_ _%size92307%_)
                (begin
                  (let ((_%key92314%_ (vector-ref _%table92305%_ _%i92312%_)))
                    (if (if (eq? _%key92314%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92314%_ (macro-deleted-obj))))
                        (let ((_%value92316%_
                               (vector-ref
                                _%table92305%_
                                (##fx+ _%i92312%_ '1))))
                          (_%proc92303%_ _%key92314%_ _%value92316%_))
                        '#!void))
                  (_%loop92310%_ (##fx+ _%i92312%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab92298%_)
        (let ((_%new-tab92300%_ (##structure-copy _%tab92298%_)))
          (&raw-table-table-set!
           _%new-tab92300%_
           (vector-copy (&raw-table-table _%tab92298%_)))
          _%new-tab92300%_)))
    (define raw-table-clear!
      (lambda (_%tab92296%_)
        (vector-fill! (&raw-table-table _%tab92296%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab92296%_ '0)
        (&raw-table-free-set!
         _%tab92296%_
         (##fxquotient (vector-length (&raw-table-table _%tab92296%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab92246%_ _%key92247%_ _%value92248%_)
        (let ((_%table92250%_ (&raw-table-table _%tab92246%_))
              (_%seed92251%_ (&raw-table-seed _%tab92246%_))
              (_%hash92252%_ (&raw-table-hash _%tab92246%_))
              (_%test92253%_ (&raw-table-test _%tab92246%_)))
          (let* ((_%h92255%_
                  (fxxor (_%hash92252%_ _%key92247%_) _%seed92251%_))
                 (_%size92258%_ (vector-length _%table92250%_))
                 (_%entries92261%_ (##fxquotient _%size92258%_ '2))
                 (_%start92264%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92255%_ _%entries92261%_)
                   '1)))
            (let _%loop92268%_ ((_%probe92271%_ _%start92264%_)
                                (_%i92273%_ '1)
                                (_%deleted92275%_ '#f))
              (let ((_%k92278%_ (vector-ref _%table92250%_ _%probe92271%_)))
                (if (eq? _%k92278%_ (macro-unused-obj))
                    (if _%deleted92275%_
                        (begin
                          (vector-set!
                           _%table92250%_
                           _%deleted92275%_
                           _%key92247%_)
                          (vector-set!
                           _%table92250%_
                           (##fx+ _%deleted92275%_ '1)
                           _%value92248%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92246%_
                              (##fx+ (&raw-table-count _%tab92246%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92250%_
                           _%probe92271%_
                           _%key92247%_)
                          (vector-set!
                           _%table92250%_
                           (##fx+ _%probe92271%_ '1)
                           _%value92248%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92246%_
                              (##fx- (&raw-table-free _%tab92246%_) '1))
                             (&raw-table-count-set!
                              _%tab92246%_
                              (##fx+ (&raw-table-count _%tab92246%_) '1))))))
                    (if (eq? _%k92278%_ (macro-deleted-obj))
                        (_%loop92268%_
                         (let ((_%next-probe92285%_
                                (fx+ _%start92264%_
                                     _%i92273%_
                                     (fx* _%i92273%_ _%i92273%_))))
                           (##fxmodulo _%next-probe92285%_ _%size92258%_))
                         (##fx+ _%i92273%_ '1)
                         (let ((_%$e92288%_ _%deleted92275%_))
                           (if _%$e92288%_ _%$e92288%_ _%probe92271%_)))
                        (if (_%test92253%_ _%key92247%_ _%k92278%_)
                            (let ()
                              (vector-set!
                               _%table92250%_
                               _%probe92271%_
                               _%key92247%_)
                              (vector-set!
                               _%table92250%_
                               (##fx+ _%probe92271%_ '1)
                               _%value92248%_))
                            (_%loop92268%_
                             (let ((_%next-probe92293%_
                                    (fx+ _%start92264%_
                                         _%i92273%_
                                         (fx* _%i92273%_ _%i92273%_))))
                               (##fxmodulo _%next-probe92293%_ _%size92258%_))
                             (##fx+ _%i92273%_ '1)
                             _%deleted92275%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab92195%_ _%key92196%_ _%update92197%_ _%default92198%_)
        (let ((_%table92200%_ (&raw-table-table _%tab92195%_))
              (_%seed92201%_ (&raw-table-seed _%tab92195%_))
              (_%hash92202%_ (&raw-table-hash _%tab92195%_))
              (_%test92203%_ (&raw-table-test _%tab92195%_)))
          (let* ((_%h92205%_
                  (fxxor (_%hash92202%_ _%key92196%_) _%seed92201%_))
                 (_%size92208%_ (vector-length _%table92200%_))
                 (_%entries92211%_ (##fxquotient _%size92208%_ '2))
                 (_%start92214%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92205%_ _%entries92211%_)
                   '1)))
            (let _%loop92218%_ ((_%probe92221%_ _%start92214%_)
                                (_%i92223%_ '1)
                                (_%deleted92225%_ '#f))
              (let ((_%k92228%_ (vector-ref _%table92200%_ _%probe92221%_)))
                (if (eq? _%k92228%_ (macro-unused-obj))
                    (if _%deleted92225%_
                        (begin
                          (vector-set!
                           _%table92200%_
                           _%deleted92225%_
                           _%key92196%_)
                          (vector-set!
                           _%table92200%_
                           (##fx+ _%deleted92225%_ '1)
                           (_%update92197%_ _%default92198%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92195%_
                              (##fx+ (&raw-table-count _%tab92195%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92200%_
                           _%probe92221%_
                           _%key92196%_)
                          (vector-set!
                           _%table92200%_
                           (##fx+ _%probe92221%_ '1)
                           (_%update92197%_ _%default92198%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92195%_
                              (##fx- (&raw-table-free _%tab92195%_) '1))
                             (&raw-table-count-set!
                              _%tab92195%_
                              (##fx+ (&raw-table-count _%tab92195%_) '1))))))
                    (if (eq? _%k92228%_ (macro-deleted-obj))
                        (_%loop92218%_
                         (let ((_%next-probe92235%_
                                (fx+ _%start92214%_
                                     _%i92223%_
                                     (fx* _%i92223%_ _%i92223%_))))
                           (##fxmodulo _%next-probe92235%_ _%size92208%_))
                         (##fx+ _%i92223%_ '1)
                         (let ((_%$e92238%_ _%deleted92225%_))
                           (if _%$e92238%_ _%$e92238%_ _%probe92221%_)))
                        (if (_%test92203%_ _%key92196%_ _%k92228%_)
                            (let ()
                              (vector-set!
                               _%table92200%_
                               _%probe92221%_
                               _%key92196%_)
                              (vector-set!
                               _%table92200%_
                               (##fx+ _%probe92221%_ '1)
                               (_%update92197%_
                                (vector-ref
                                 _%table92200%_
                                 (##fx+ _%probe92221%_ '1)))))
                            (_%loop92218%_
                             (let ((_%next-probe92243%_
                                    (fx+ _%start92214%_
                                         _%i92223%_
                                         (fx* _%i92223%_ _%i92223%_))))
                               (##fxmodulo _%next-probe92243%_ _%size92208%_))
                             (##fx+ _%i92223%_ '1)
                             _%deleted92225%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab92176%_)
        (let* ((_%old-table92178%_ (&raw-table-table _%tab92176%_))
               (_%old-size92180%_ (vector-length _%old-table92178%_))
               (_%new-size92182%_
                (if (##fx< (&raw-table-count _%tab92176%_)
                           (##fxquotient _%old-size92180%_ '4))
                    (vector-length _%old-table92178%_)
                    (##fx* '2 (vector-length _%old-table92178%_))))
               (_%new-table92184%_
                (##make-vector _%new-size92182%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab92176%_ _%new-table92184%_)
          (&raw-table-count-set! _%tab92176%_ '0)
          (&raw-table-free-set!
           _%tab92176%_
           (##fxquotient _%new-size92182%_ '2))
          (let _%lp92187%_ ((_%i92189%_ '0))
            (if (##fx< _%i92189%_ _%old-size92180%_)
                (begin
                  (let ((_%key92191%_
                         (vector-ref _%old-table92178%_ _%i92189%_)))
                    (if (if (eq? _%key92191%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92191%_ (macro-deleted-obj))))
                        (let ((_%value92193%_
                               (vector-ref
                                _%old-table92178%_
                                (##fx+ _%i92189%_ '1))))
                          (__raw-table-set!
                           _%tab92176%_
                           _%key92191%_
                           _%value92193%_))
                        '#!void))
                  (_%lp92187%_ (##fx+ _%i92189%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj92168%_)
        (let ((_%t92170%_ (##type _%obj92168%_)))
          (if (##fx= (##fxand _%t92170%_ '1) '0)
              (fxand (##type-cast _%obj92168%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj92168%_)
                  (symbolic-hash _%obj92168%_)
                  (if (procedure? _%obj92168%_)
                      (procedure-hash _%obj92168%_)
                      (fxand (__eq-hash _%obj92168%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj92164%_)
        (let ((_%h92166%_
               (if (##closure? _%obj92164%_)
                   (__eq-hash _%obj92164%_)
                   (##type-cast _%obj92164%_ '0))))
          (fxand _%h92166%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj92161%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj92161%_)))
    (define eqv-hash
      (lambda (_%obj92151%_)
        (letrec ((_%combine92153%_
                  (lambda (_%a92158%_ _%b92159%_)
                    (fxand (##fx* (##fx+ _%a92158%_
                                         (fxarithmetic-shift-left
                                          _%b92159%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash92154%_
                  (lambda (_%obj92156%_)
                    (macro-number-dispatch
                     _%obj92156%_
                     (eq-hash _%obj92156%_)
                     (fxand _%obj92156%_ (macro-max-fixnum32))
                     (modulo _%obj92156%_ '331804481)
                     (_%combine92153%_
                      (_%hash92154%_ (macro-ratnum-numerator _%obj92156%_))
                      (_%hash92154%_ (macro-ratnum-denominator _%obj92156%_)))
                     (_%combine92153%_
                      (##u16vector-ref _%obj92156%_ '0)
                      (_%combine92153%_
                       (##u16vector-ref _%obj92156%_ '1)
                       (_%combine92153%_
                        (##u16vector-ref _%obj92156%_ '2)
                        (##u16vector-ref _%obj92156%_ '3))))
                     (_%combine92153%_
                      (_%hash92154%_ (macro-cpxnum-real _%obj92156%_))
                      (_%hash92154%_ (macro-cpxnum-imag _%obj92156%_)))))))
          (_%hash92154%_ _%obj92151%_))))
    (define symbolic?
      (lambda (_%obj92146%_)
        (let ((_%$e92148%_ (symbol? _%obj92146%_)))
          (if _%$e92148%_ _%$e92148%_ (keyword? _%obj92146%_)))))
    (define symbolic-hash (lambda (_%obj92144%_) (macro-slot '1 _%obj92144%_)))
    (define string-hash (lambda (_%obj92142%_) (##string=?-hash _%obj92142%_)))
    (define immediate-hash
      (lambda (_%obj92140%_) (##type-cast _%obj92140%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint92121%_ _%seed92123%_)
        (make-raw-table__% _%size-hint92121%_ eq-hash eq? _%seed92123%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint92129%_ '#f) (_%seed92131%_ '0))
          (make-eq-table__% _%size-hint92129%_ _%seed92131%_))))
    (define make-eq-table__1
      (lambda (_%size-hint92133%_)
        (let ((_%seed92135%_ '0))
          (make-eq-table__% _%size-hint92133%_ _%seed92135%_))))
    (define make-eq-table
      (lambda _g92477_
        (let ((_g92476_ (##length _g92477_)))
          (cond ((##fx= _g92476_ 0) (apply make-eq-table__0 _g92477_))
                ((##fx= _g92476_ 1) (apply make-eq-table__1 _g92477_))
                ((##fx= _g92476_ 2) (apply make-eq-table__% _g92477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g92477_))))))
    (define eq-table-ref
      (lambda (_%tab92074%_ _%key92075%_ _%default92076%_)
        (let ((_%table92078%_ (&raw-table-table _%tab92074%_))
              (_%seed92079%_ (&raw-table-seed _%tab92074%_)))
          (let* ((_%h92081%_ (fxxor (eq-hash _%key92075%_) _%seed92079%_))
                 (_%size92084%_ (vector-length _%table92078%_))
                 (_%entries92087%_ (##fxquotient _%size92084%_ '2))
                 (_%start92090%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92081%_ _%entries92087%_)
                   '1)))
            (let _%loop92094%_ ((_%probe92097%_ _%start92090%_)
                                (_%i92099%_ '1)
                                (_%deleted92101%_ '#f))
              (let ((_%k92104%_ (vector-ref _%table92078%_ _%probe92097%_)))
                (if (eq? _%k92104%_ (macro-unused-obj))
                    _%default92076%_
                    (if (eq? _%k92104%_ (macro-deleted-obj))
                        (_%loop92094%_
                         (let ((_%next-probe92109%_
                                (fx+ _%start92090%_
                                     _%i92099%_
                                     (fx* _%i92099%_ _%i92099%_))))
                           (##fxmodulo _%next-probe92109%_ _%size92084%_))
                         (##fx+ _%i92099%_ '1)
                         (let ((_%$e92112%_ _%deleted92101%_))
                           (if _%$e92112%_ _%$e92112%_ _%probe92097%_)))
                        (if (eq? _%key92075%_ _%k92104%_)
                            (vector-ref
                             _%table92078%_
                             (##fx+ _%probe92097%_ '1))
                            (_%loop92094%_
                             (let ((_%next-probe92117%_
                                    (fx+ _%start92090%_
                                         _%i92099%_
                                         (fx* _%i92099%_ _%i92099%_))))
                               (##fxmodulo _%next-probe92117%_ _%size92084%_))
                             (##fx+ _%i92099%_ '1)
                             _%deleted92101%_))))))))))
    (define eq-table-set!
      (lambda (_%tab92070%_ _%key92071%_ _%value92072%_)
        (if (##fx< (&raw-table-free _%tab92070%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92070%_))
                    '4))
            (__raw-table-rehash! _%tab92070%_)
            '#!void)
        (__eq-table-set! _%tab92070%_ _%key92071%_ _%value92072%_)))
    (define __eq-table-set!
      (lambda (_%tab92021%_ _%key92022%_ _%value92023%_)
        (let ((_%table92026%_ (&raw-table-table _%tab92021%_))
              (_%seed92027%_ (&raw-table-seed _%tab92021%_)))
          (let* ((_%h92029%_ (fxxor (eq-hash _%key92022%_) _%seed92027%_))
                 (_%size92032%_ (vector-length _%table92026%_))
                 (_%entries92035%_ (##fxquotient _%size92032%_ '2))
                 (_%start92038%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92029%_ _%entries92035%_)
                   '1)))
            (let _%loop92042%_ ((_%probe92045%_ _%start92038%_)
                                (_%i92047%_ '1)
                                (_%deleted92049%_ '#f))
              (let ((_%k92052%_ (vector-ref _%table92026%_ _%probe92045%_)))
                (if (eq? _%k92052%_ (macro-unused-obj))
                    (if _%deleted92049%_
                        (begin
                          (vector-set!
                           _%table92026%_
                           _%deleted92049%_
                           _%key92022%_)
                          (vector-set!
                           _%table92026%_
                           (##fx+ _%deleted92049%_ '1)
                           _%value92023%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92021%_
                              (##fx+ (&raw-table-count _%tab92021%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92026%_
                           _%probe92045%_
                           _%key92022%_)
                          (vector-set!
                           _%table92026%_
                           (##fx+ _%probe92045%_ '1)
                           _%value92023%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92021%_
                              (##fx- (&raw-table-free _%tab92021%_) '1))
                             (&raw-table-count-set!
                              _%tab92021%_
                              (##fx+ (&raw-table-count _%tab92021%_) '1))))))
                    (if (eq? _%k92052%_ (macro-deleted-obj))
                        (_%loop92042%_
                         (let ((_%next-probe92059%_
                                (fx+ _%start92038%_
                                     _%i92047%_
                                     (fx* _%i92047%_ _%i92047%_))))
                           (##fxmodulo _%next-probe92059%_ _%size92032%_))
                         (##fx+ _%i92047%_ '1)
                         (let ((_%$e92062%_ _%deleted92049%_))
                           (if _%$e92062%_ _%$e92062%_ _%probe92045%_)))
                        (if (eq? _%key92022%_ _%k92052%_)
                            (let ()
                              (vector-set!
                               _%table92026%_
                               _%probe92045%_
                               _%key92022%_)
                              (vector-set!
                               _%table92026%_
                               (##fx+ _%probe92045%_ '1)
                               _%value92023%_))
                            (_%loop92042%_
                             (let ((_%next-probe92067%_
                                    (fx+ _%start92038%_
                                         _%i92047%_
                                         (fx* _%i92047%_ _%i92047%_))))
                               (##fxmodulo _%next-probe92067%_ _%size92032%_))
                             (##fx+ _%i92047%_ '1)
                             _%deleted92049%_))))))))))
    (define eq-table-update!
      (lambda (_%tab92016%_
               _%key92017%_
               _%eq-table-update!92018%_
               _%default92019%_)
        (if (##fx< (&raw-table-free _%tab92016%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92016%_))
                    '4))
            (__raw-table-rehash! _%tab92016%_)
            '#!void)
        (__eq-table-update!
         _%tab92016%_
         _%key92017%_
         _%eq-table-update!92018%_
         _%default92019%_)))
    (define __eq-table-update!
      (lambda (_%tab91966%_
               _%key91967%_
               _%eq-table-update!91968%_
               _%default91969%_)
        (let ((_%table91972%_ (&raw-table-table _%tab91966%_))
              (_%seed91973%_ (&raw-table-seed _%tab91966%_)))
          (let* ((_%h91975%_ (fxxor (eq-hash _%key91967%_) _%seed91973%_))
                 (_%size91978%_ (vector-length _%table91972%_))
                 (_%entries91981%_ (##fxquotient _%size91978%_ '2))
                 (_%start91984%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91975%_ _%entries91981%_)
                   '1)))
            (let _%loop91988%_ ((_%probe91991%_ _%start91984%_)
                                (_%i91993%_ '1)
                                (_%deleted91995%_ '#f))
              (let ((_%k91998%_ (vector-ref _%table91972%_ _%probe91991%_)))
                (if (eq? _%k91998%_ (macro-unused-obj))
                    (if _%deleted91995%_
                        (begin
                          (vector-set!
                           _%table91972%_
                           _%deleted91995%_
                           _%key91967%_)
                          (vector-set!
                           _%table91972%_
                           (##fx+ _%deleted91995%_ '1)
                           (_%eq-table-update!91968%_ _%default91969%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91966%_
                              (##fx+ (&raw-table-count _%tab91966%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91972%_
                           _%probe91991%_
                           _%key91967%_)
                          (vector-set!
                           _%table91972%_
                           (##fx+ _%probe91991%_ '1)
                           (_%eq-table-update!91968%_ _%default91969%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91966%_
                              (##fx- (&raw-table-free _%tab91966%_) '1))
                             (&raw-table-count-set!
                              _%tab91966%_
                              (##fx+ (&raw-table-count _%tab91966%_) '1))))))
                    (if (eq? _%k91998%_ (macro-deleted-obj))
                        (_%loop91988%_
                         (let ((_%next-probe92005%_
                                (fx+ _%start91984%_
                                     _%i91993%_
                                     (fx* _%i91993%_ _%i91993%_))))
                           (##fxmodulo _%next-probe92005%_ _%size91978%_))
                         (##fx+ _%i91993%_ '1)
                         (let ((_%$e92008%_ _%deleted91995%_))
                           (if _%$e92008%_ _%$e92008%_ _%probe91991%_)))
                        (if (eq? _%key91967%_ _%k91998%_)
                            (let ()
                              (vector-set!
                               _%table91972%_
                               _%probe91991%_
                               _%key91967%_)
                              (vector-set!
                               _%table91972%_
                               (##fx+ _%probe91991%_ '1)
                               (_%eq-table-update!91968%_
                                (vector-ref
                                 _%table91972%_
                                 (##fx+ _%probe91991%_ '1)))))
                            (_%loop91988%_
                             (let ((_%next-probe92013%_
                                    (fx+ _%start91984%_
                                         _%i91993%_
                                         (fx* _%i91993%_ _%i91993%_))))
                               (##fxmodulo _%next-probe92013%_ _%size91978%_))
                             (##fx+ _%i91993%_ '1)
                             _%deleted91995%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab91921%_ _%key91923%_)
        (let ((_%table91926%_ (&raw-table-table _%tab91921%_))
              (_%seed91928%_ (&raw-table-seed _%tab91921%_)))
          (let* ((_%h91931%_ (fxxor (eq-hash _%key91923%_) _%seed91928%_))
                 (_%size91934%_ (vector-length _%table91926%_))
                 (_%entries91937%_ (##fxquotient _%size91934%_ '2))
                 (_%start91940%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91931%_ _%entries91937%_)
                   '1)))
            (let _%loop91944%_ ((_%probe91947%_ _%start91940%_)
                                (_%i91949%_ '1))
              (let ((_%k91952%_ (vector-ref _%table91926%_ _%probe91947%_)))
                (if (eq? _%k91952%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91952%_ (macro-deleted-obj))
                        (_%loop91944%_
                         (let ((_%next-probe91957%_
                                (fx+ _%start91940%_
                                     _%i91949%_
                                     (fx* _%i91949%_ _%i91949%_))))
                           (##fxmodulo _%next-probe91957%_ _%size91934%_))
                         (##fx+ _%i91949%_ '1))
                        (if (eq? _%key91923%_ _%k91952%_)
                            (let ()
                              (vector-set!
                               _%table91926%_
                               _%probe91947%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91926%_
                               (##fx+ _%probe91947%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91921%_
                                  (##fx- (&raw-table-count _%tab91921%_)
                                         '1)))))
                            (_%loop91944%_
                             (let ((_%next-probe91963%_
                                    (fx+ _%start91940%_
                                         _%i91949%_
                                         (fx* _%i91949%_ _%i91949%_))))
                               (##fxmodulo _%next-probe91963%_ _%size91934%_))
                             (##fx+ _%i91949%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint91902%_ _%seed91904%_)
        (make-raw-table__% _%size-hint91902%_ eqv-hash eqv? _%seed91904%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint91910%_ '#f) (_%seed91912%_ '0))
          (make-eqv-table__% _%size-hint91910%_ _%seed91912%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint91914%_)
        (let ((_%seed91916%_ '0))
          (make-eqv-table__% _%size-hint91914%_ _%seed91916%_))))
    (define make-eqv-table
      (lambda _g92479_
        (let ((_g92478_ (##length _g92479_)))
          (cond ((##fx= _g92478_ 0) (apply make-eqv-table__0 _g92479_))
                ((##fx= _g92478_ 1) (apply make-eqv-table__1 _g92479_))
                ((##fx= _g92478_ 2) (apply make-eqv-table__% _g92479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g92479_))))))
    (define eqv-table-ref
      (lambda (_%tab91855%_ _%key91856%_ _%default91857%_)
        (let ((_%table91859%_ (&raw-table-table _%tab91855%_))
              (_%seed91860%_ (&raw-table-seed _%tab91855%_)))
          (let* ((_%h91862%_ (fxxor (eqv-hash _%key91856%_) _%seed91860%_))
                 (_%size91865%_ (vector-length _%table91859%_))
                 (_%entries91868%_ (##fxquotient _%size91865%_ '2))
                 (_%start91871%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91862%_ _%entries91868%_)
                   '1)))
            (let _%loop91875%_ ((_%probe91878%_ _%start91871%_)
                                (_%i91880%_ '1)
                                (_%deleted91882%_ '#f))
              (let ((_%k91885%_ (vector-ref _%table91859%_ _%probe91878%_)))
                (if (eq? _%k91885%_ (macro-unused-obj))
                    _%default91857%_
                    (if (eq? _%k91885%_ (macro-deleted-obj))
                        (_%loop91875%_
                         (let ((_%next-probe91890%_
                                (fx+ _%start91871%_
                                     _%i91880%_
                                     (fx* _%i91880%_ _%i91880%_))))
                           (##fxmodulo _%next-probe91890%_ _%size91865%_))
                         (##fx+ _%i91880%_ '1)
                         (let ((_%$e91893%_ _%deleted91882%_))
                           (if _%$e91893%_ _%$e91893%_ _%probe91878%_)))
                        (if (eqv? _%key91856%_ _%k91885%_)
                            (vector-ref
                             _%table91859%_
                             (##fx+ _%probe91878%_ '1))
                            (_%loop91875%_
                             (let ((_%next-probe91898%_
                                    (fx+ _%start91871%_
                                         _%i91880%_
                                         (fx* _%i91880%_ _%i91880%_))))
                               (##fxmodulo _%next-probe91898%_ _%size91865%_))
                             (##fx+ _%i91880%_ '1)
                             _%deleted91882%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab91851%_ _%key91852%_ _%value91853%_)
        (if (##fx< (&raw-table-free _%tab91851%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91851%_))
                    '4))
            (__raw-table-rehash! _%tab91851%_)
            '#!void)
        (__eqv-table-set! _%tab91851%_ _%key91852%_ _%value91853%_)))
    (define __eqv-table-set!
      (lambda (_%tab91802%_ _%key91803%_ _%value91804%_)
        (let ((_%table91807%_ (&raw-table-table _%tab91802%_))
              (_%seed91808%_ (&raw-table-seed _%tab91802%_)))
          (let* ((_%h91810%_ (fxxor (eqv-hash _%key91803%_) _%seed91808%_))
                 (_%size91813%_ (vector-length _%table91807%_))
                 (_%entries91816%_ (##fxquotient _%size91813%_ '2))
                 (_%start91819%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91810%_ _%entries91816%_)
                   '1)))
            (let _%loop91823%_ ((_%probe91826%_ _%start91819%_)
                                (_%i91828%_ '1)
                                (_%deleted91830%_ '#f))
              (let ((_%k91833%_ (vector-ref _%table91807%_ _%probe91826%_)))
                (if (eq? _%k91833%_ (macro-unused-obj))
                    (if _%deleted91830%_
                        (begin
                          (vector-set!
                           _%table91807%_
                           _%deleted91830%_
                           _%key91803%_)
                          (vector-set!
                           _%table91807%_
                           (##fx+ _%deleted91830%_ '1)
                           _%value91804%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91802%_
                              (##fx+ (&raw-table-count _%tab91802%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91807%_
                           _%probe91826%_
                           _%key91803%_)
                          (vector-set!
                           _%table91807%_
                           (##fx+ _%probe91826%_ '1)
                           _%value91804%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91802%_
                              (##fx- (&raw-table-free _%tab91802%_) '1))
                             (&raw-table-count-set!
                              _%tab91802%_
                              (##fx+ (&raw-table-count _%tab91802%_) '1))))))
                    (if (eq? _%k91833%_ (macro-deleted-obj))
                        (_%loop91823%_
                         (let ((_%next-probe91840%_
                                (fx+ _%start91819%_
                                     _%i91828%_
                                     (fx* _%i91828%_ _%i91828%_))))
                           (##fxmodulo _%next-probe91840%_ _%size91813%_))
                         (##fx+ _%i91828%_ '1)
                         (let ((_%$e91843%_ _%deleted91830%_))
                           (if _%$e91843%_ _%$e91843%_ _%probe91826%_)))
                        (if (eqv? _%key91803%_ _%k91833%_)
                            (let ()
                              (vector-set!
                               _%table91807%_
                               _%probe91826%_
                               _%key91803%_)
                              (vector-set!
                               _%table91807%_
                               (##fx+ _%probe91826%_ '1)
                               _%value91804%_))
                            (_%loop91823%_
                             (let ((_%next-probe91848%_
                                    (fx+ _%start91819%_
                                         _%i91828%_
                                         (fx* _%i91828%_ _%i91828%_))))
                               (##fxmodulo _%next-probe91848%_ _%size91813%_))
                             (##fx+ _%i91828%_ '1)
                             _%deleted91830%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab91797%_
               _%key91798%_
               _%eqv-table-update!91799%_
               _%default91800%_)
        (if (##fx< (&raw-table-free _%tab91797%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91797%_))
                    '4))
            (__raw-table-rehash! _%tab91797%_)
            '#!void)
        (__eqv-table-update!
         _%tab91797%_
         _%key91798%_
         _%eqv-table-update!91799%_
         _%default91800%_)))
    (define __eqv-table-update!
      (lambda (_%tab91747%_
               _%key91748%_
               _%eqv-table-update!91749%_
               _%default91750%_)
        (let ((_%table91753%_ (&raw-table-table _%tab91747%_))
              (_%seed91754%_ (&raw-table-seed _%tab91747%_)))
          (let* ((_%h91756%_ (fxxor (eqv-hash _%key91748%_) _%seed91754%_))
                 (_%size91759%_ (vector-length _%table91753%_))
                 (_%entries91762%_ (##fxquotient _%size91759%_ '2))
                 (_%start91765%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91756%_ _%entries91762%_)
                   '1)))
            (let _%loop91769%_ ((_%probe91772%_ _%start91765%_)
                                (_%i91774%_ '1)
                                (_%deleted91776%_ '#f))
              (let ((_%k91779%_ (vector-ref _%table91753%_ _%probe91772%_)))
                (if (eq? _%k91779%_ (macro-unused-obj))
                    (if _%deleted91776%_
                        (begin
                          (vector-set!
                           _%table91753%_
                           _%deleted91776%_
                           _%key91748%_)
                          (vector-set!
                           _%table91753%_
                           (##fx+ _%deleted91776%_ '1)
                           (_%eqv-table-update!91749%_ _%default91750%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91747%_
                              (##fx+ (&raw-table-count _%tab91747%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91753%_
                           _%probe91772%_
                           _%key91748%_)
                          (vector-set!
                           _%table91753%_
                           (##fx+ _%probe91772%_ '1)
                           (_%eqv-table-update!91749%_ _%default91750%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91747%_
                              (##fx- (&raw-table-free _%tab91747%_) '1))
                             (&raw-table-count-set!
                              _%tab91747%_
                              (##fx+ (&raw-table-count _%tab91747%_) '1))))))
                    (if (eq? _%k91779%_ (macro-deleted-obj))
                        (_%loop91769%_
                         (let ((_%next-probe91786%_
                                (fx+ _%start91765%_
                                     _%i91774%_
                                     (fx* _%i91774%_ _%i91774%_))))
                           (##fxmodulo _%next-probe91786%_ _%size91759%_))
                         (##fx+ _%i91774%_ '1)
                         (let ((_%$e91789%_ _%deleted91776%_))
                           (if _%$e91789%_ _%$e91789%_ _%probe91772%_)))
                        (if (eqv? _%key91748%_ _%k91779%_)
                            (let ()
                              (vector-set!
                               _%table91753%_
                               _%probe91772%_
                               _%key91748%_)
                              (vector-set!
                               _%table91753%_
                               (##fx+ _%probe91772%_ '1)
                               (_%eqv-table-update!91749%_
                                (vector-ref
                                 _%table91753%_
                                 (##fx+ _%probe91772%_ '1)))))
                            (_%loop91769%_
                             (let ((_%next-probe91794%_
                                    (fx+ _%start91765%_
                                         _%i91774%_
                                         (fx* _%i91774%_ _%i91774%_))))
                               (##fxmodulo _%next-probe91794%_ _%size91759%_))
                             (##fx+ _%i91774%_ '1)
                             _%deleted91776%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab91702%_ _%key91704%_)
        (let ((_%table91707%_ (&raw-table-table _%tab91702%_))
              (_%seed91709%_ (&raw-table-seed _%tab91702%_)))
          (let* ((_%h91712%_ (fxxor (eqv-hash _%key91704%_) _%seed91709%_))
                 (_%size91715%_ (vector-length _%table91707%_))
                 (_%entries91718%_ (##fxquotient _%size91715%_ '2))
                 (_%start91721%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91712%_ _%entries91718%_)
                   '1)))
            (let _%loop91725%_ ((_%probe91728%_ _%start91721%_)
                                (_%i91730%_ '1))
              (let ((_%k91733%_ (vector-ref _%table91707%_ _%probe91728%_)))
                (if (eq? _%k91733%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91733%_ (macro-deleted-obj))
                        (_%loop91725%_
                         (let ((_%next-probe91738%_
                                (fx+ _%start91721%_
                                     _%i91730%_
                                     (fx* _%i91730%_ _%i91730%_))))
                           (##fxmodulo _%next-probe91738%_ _%size91715%_))
                         (##fx+ _%i91730%_ '1))
                        (if (eqv? _%key91704%_ _%k91733%_)
                            (let ()
                              (vector-set!
                               _%table91707%_
                               _%probe91728%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91707%_
                               (##fx+ _%probe91728%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91702%_
                                  (##fx- (&raw-table-count _%tab91702%_)
                                         '1)))))
                            (_%loop91725%_
                             (let ((_%next-probe91744%_
                                    (fx+ _%start91721%_
                                         _%i91730%_
                                         (fx* _%i91730%_ _%i91730%_))))
                               (##fxmodulo _%next-probe91744%_ _%size91715%_))
                             (##fx+ _%i91730%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint91683%_ _%seed91685%_)
        (make-raw-table__%
         _%size-hint91683%_
         symbolic-hash
         eq?
         _%seed91685%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint91691%_ '#f) (_%seed91693%_ '0))
          (make-symbolic-table__% _%size-hint91691%_ _%seed91693%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint91695%_)
        (let ((_%seed91697%_ '0))
          (make-symbolic-table__% _%size-hint91695%_ _%seed91697%_))))
    (define make-symbolic-table
      (lambda _g92481_
        (let ((_g92480_ (##length _g92481_)))
          (cond ((##fx= _g92480_ 0) (apply make-symbolic-table__0 _g92481_))
                ((##fx= _g92480_ 1) (apply make-symbolic-table__1 _g92481_))
                ((##fx= _g92480_ 2) (apply make-symbolic-table__% _g92481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g92481_))))))
    (define symbolic-table-ref
      (lambda (_%tab91636%_ _%key91637%_ _%default91638%_)
        (let ((_%table91640%_ (&raw-table-table _%tab91636%_))
              (_%seed91641%_ (&raw-table-seed _%tab91636%_)))
          (let* ((_%h91643%_
                  (fxxor (symbolic-hash _%key91637%_) _%seed91641%_))
                 (_%size91646%_ (vector-length _%table91640%_))
                 (_%entries91649%_ (##fxquotient _%size91646%_ '2))
                 (_%start91652%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91643%_ _%entries91649%_)
                   '1)))
            (let _%loop91656%_ ((_%probe91659%_ _%start91652%_)
                                (_%i91661%_ '1)
                                (_%deleted91663%_ '#f))
              (let ((_%k91666%_ (vector-ref _%table91640%_ _%probe91659%_)))
                (if (eq? _%k91666%_ (macro-unused-obj))
                    _%default91638%_
                    (if (eq? _%k91666%_ (macro-deleted-obj))
                        (_%loop91656%_
                         (let ((_%next-probe91671%_
                                (fx+ _%start91652%_
                                     _%i91661%_
                                     (fx* _%i91661%_ _%i91661%_))))
                           (##fxmodulo _%next-probe91671%_ _%size91646%_))
                         (##fx+ _%i91661%_ '1)
                         (let ((_%$e91674%_ _%deleted91663%_))
                           (if _%$e91674%_ _%$e91674%_ _%probe91659%_)))
                        (if (eq? _%key91637%_ _%k91666%_)
                            (vector-ref
                             _%table91640%_
                             (##fx+ _%probe91659%_ '1))
                            (_%loop91656%_
                             (let ((_%next-probe91679%_
                                    (fx+ _%start91652%_
                                         _%i91661%_
                                         (fx* _%i91661%_ _%i91661%_))))
                               (##fxmodulo _%next-probe91679%_ _%size91646%_))
                             (##fx+ _%i91661%_ '1)
                             _%deleted91663%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab91632%_ _%key91633%_ _%value91634%_)
        (if (##fx< (&raw-table-free _%tab91632%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91632%_))
                    '4))
            (__raw-table-rehash! _%tab91632%_)
            '#!void)
        (__symbolic-table-set! _%tab91632%_ _%key91633%_ _%value91634%_)))
    (define __symbolic-table-set!
      (lambda (_%tab91583%_ _%key91584%_ _%value91585%_)
        (let ((_%table91588%_ (&raw-table-table _%tab91583%_))
              (_%seed91589%_ (&raw-table-seed _%tab91583%_)))
          (let* ((_%h91591%_
                  (fxxor (symbolic-hash _%key91584%_) _%seed91589%_))
                 (_%size91594%_ (vector-length _%table91588%_))
                 (_%entries91597%_ (##fxquotient _%size91594%_ '2))
                 (_%start91600%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91591%_ _%entries91597%_)
                   '1)))
            (let _%loop91604%_ ((_%probe91607%_ _%start91600%_)
                                (_%i91609%_ '1)
                                (_%deleted91611%_ '#f))
              (let ((_%k91614%_ (vector-ref _%table91588%_ _%probe91607%_)))
                (if (eq? _%k91614%_ (macro-unused-obj))
                    (if _%deleted91611%_
                        (begin
                          (vector-set!
                           _%table91588%_
                           _%deleted91611%_
                           _%key91584%_)
                          (vector-set!
                           _%table91588%_
                           (##fx+ _%deleted91611%_ '1)
                           _%value91585%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91583%_
                              (##fx+ (&raw-table-count _%tab91583%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91588%_
                           _%probe91607%_
                           _%key91584%_)
                          (vector-set!
                           _%table91588%_
                           (##fx+ _%probe91607%_ '1)
                           _%value91585%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91583%_
                              (##fx- (&raw-table-free _%tab91583%_) '1))
                             (&raw-table-count-set!
                              _%tab91583%_
                              (##fx+ (&raw-table-count _%tab91583%_) '1))))))
                    (if (eq? _%k91614%_ (macro-deleted-obj))
                        (_%loop91604%_
                         (let ((_%next-probe91621%_
                                (fx+ _%start91600%_
                                     _%i91609%_
                                     (fx* _%i91609%_ _%i91609%_))))
                           (##fxmodulo _%next-probe91621%_ _%size91594%_))
                         (##fx+ _%i91609%_ '1)
                         (let ((_%$e91624%_ _%deleted91611%_))
                           (if _%$e91624%_ _%$e91624%_ _%probe91607%_)))
                        (if (eq? _%key91584%_ _%k91614%_)
                            (let ()
                              (vector-set!
                               _%table91588%_
                               _%probe91607%_
                               _%key91584%_)
                              (vector-set!
                               _%table91588%_
                               (##fx+ _%probe91607%_ '1)
                               _%value91585%_))
                            (_%loop91604%_
                             (let ((_%next-probe91629%_
                                    (fx+ _%start91600%_
                                         _%i91609%_
                                         (fx* _%i91609%_ _%i91609%_))))
                               (##fxmodulo _%next-probe91629%_ _%size91594%_))
                             (##fx+ _%i91609%_ '1)
                             _%deleted91611%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab91578%_
               _%key91579%_
               _%symbolic-table-update!91580%_
               _%default91581%_)
        (if (##fx< (&raw-table-free _%tab91578%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91578%_))
                    '4))
            (__raw-table-rehash! _%tab91578%_)
            '#!void)
        (__symbolic-table-update!
         _%tab91578%_
         _%key91579%_
         _%symbolic-table-update!91580%_
         _%default91581%_)))
    (define __symbolic-table-update!
      (lambda (_%tab91528%_
               _%key91529%_
               _%symbolic-table-update!91530%_
               _%default91531%_)
        (let ((_%table91534%_ (&raw-table-table _%tab91528%_))
              (_%seed91535%_ (&raw-table-seed _%tab91528%_)))
          (let* ((_%h91537%_
                  (fxxor (symbolic-hash _%key91529%_) _%seed91535%_))
                 (_%size91540%_ (vector-length _%table91534%_))
                 (_%entries91543%_ (##fxquotient _%size91540%_ '2))
                 (_%start91546%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91537%_ _%entries91543%_)
                   '1)))
            (let _%loop91550%_ ((_%probe91553%_ _%start91546%_)
                                (_%i91555%_ '1)
                                (_%deleted91557%_ '#f))
              (let ((_%k91560%_ (vector-ref _%table91534%_ _%probe91553%_)))
                (if (eq? _%k91560%_ (macro-unused-obj))
                    (if _%deleted91557%_
                        (begin
                          (vector-set!
                           _%table91534%_
                           _%deleted91557%_
                           _%key91529%_)
                          (vector-set!
                           _%table91534%_
                           (##fx+ _%deleted91557%_ '1)
                           (_%symbolic-table-update!91530%_ _%default91531%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91528%_
                              (##fx+ (&raw-table-count _%tab91528%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91534%_
                           _%probe91553%_
                           _%key91529%_)
                          (vector-set!
                           _%table91534%_
                           (##fx+ _%probe91553%_ '1)
                           (_%symbolic-table-update!91530%_ _%default91531%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91528%_
                              (##fx- (&raw-table-free _%tab91528%_) '1))
                             (&raw-table-count-set!
                              _%tab91528%_
                              (##fx+ (&raw-table-count _%tab91528%_) '1))))))
                    (if (eq? _%k91560%_ (macro-deleted-obj))
                        (_%loop91550%_
                         (let ((_%next-probe91567%_
                                (fx+ _%start91546%_
                                     _%i91555%_
                                     (fx* _%i91555%_ _%i91555%_))))
                           (##fxmodulo _%next-probe91567%_ _%size91540%_))
                         (##fx+ _%i91555%_ '1)
                         (let ((_%$e91570%_ _%deleted91557%_))
                           (if _%$e91570%_ _%$e91570%_ _%probe91553%_)))
                        (if (eq? _%key91529%_ _%k91560%_)
                            (let ()
                              (vector-set!
                               _%table91534%_
                               _%probe91553%_
                               _%key91529%_)
                              (vector-set!
                               _%table91534%_
                               (##fx+ _%probe91553%_ '1)
                               (_%symbolic-table-update!91530%_
                                (vector-ref
                                 _%table91534%_
                                 (##fx+ _%probe91553%_ '1)))))
                            (_%loop91550%_
                             (let ((_%next-probe91575%_
                                    (fx+ _%start91546%_
                                         _%i91555%_
                                         (fx* _%i91555%_ _%i91555%_))))
                               (##fxmodulo _%next-probe91575%_ _%size91540%_))
                             (##fx+ _%i91555%_ '1)
                             _%deleted91557%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab91483%_ _%key91485%_)
        (let ((_%table91488%_ (&raw-table-table _%tab91483%_))
              (_%seed91490%_ (&raw-table-seed _%tab91483%_)))
          (let* ((_%h91493%_
                  (fxxor (symbolic-hash _%key91485%_) _%seed91490%_))
                 (_%size91496%_ (vector-length _%table91488%_))
                 (_%entries91499%_ (##fxquotient _%size91496%_ '2))
                 (_%start91502%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91493%_ _%entries91499%_)
                   '1)))
            (let _%loop91506%_ ((_%probe91509%_ _%start91502%_)
                                (_%i91511%_ '1))
              (let ((_%k91514%_ (vector-ref _%table91488%_ _%probe91509%_)))
                (if (eq? _%k91514%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91514%_ (macro-deleted-obj))
                        (_%loop91506%_
                         (let ((_%next-probe91519%_
                                (fx+ _%start91502%_
                                     _%i91511%_
                                     (fx* _%i91511%_ _%i91511%_))))
                           (##fxmodulo _%next-probe91519%_ _%size91496%_))
                         (##fx+ _%i91511%_ '1))
                        (if (eq? _%key91485%_ _%k91514%_)
                            (let ()
                              (vector-set!
                               _%table91488%_
                               _%probe91509%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91488%_
                               (##fx+ _%probe91509%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91483%_
                                  (##fx- (&raw-table-count _%tab91483%_)
                                         '1)))))
                            (_%loop91506%_
                             (let ((_%next-probe91525%_
                                    (fx+ _%start91502%_
                                         _%i91511%_
                                         (fx* _%i91511%_ _%i91511%_))))
                               (##fxmodulo _%next-probe91525%_ _%size91496%_))
                             (##fx+ _%i91511%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint91464%_ _%seed91466%_)
        (make-raw-table__%
         _%size-hint91464%_
         string-hash
         ##string=?
         _%seed91466%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint91472%_ '#f) (_%seed91474%_ '0))
          (make-string-table__% _%size-hint91472%_ _%seed91474%_))))
    (define make-string-table__1
      (lambda (_%size-hint91476%_)
        (let ((_%seed91478%_ '0))
          (make-string-table__% _%size-hint91476%_ _%seed91478%_))))
    (define make-string-table
      (lambda _g92483_
        (let ((_g92482_ (##length _g92483_)))
          (cond ((##fx= _g92482_ 0) (apply make-string-table__0 _g92483_))
                ((##fx= _g92482_ 1) (apply make-string-table__1 _g92483_))
                ((##fx= _g92482_ 2) (apply make-string-table__% _g92483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g92483_))))))
    (define string-table-ref
      (lambda (_%tab91417%_ _%key91418%_ _%default91419%_)
        (let ((_%table91421%_ (&raw-table-table _%tab91417%_))
              (_%seed91422%_ (&raw-table-seed _%tab91417%_)))
          (let* ((_%h91424%_
                  (fxxor (##string=?-hash _%key91418%_) _%seed91422%_))
                 (_%size91427%_ (vector-length _%table91421%_))
                 (_%entries91430%_ (##fxquotient _%size91427%_ '2))
                 (_%start91433%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91424%_ _%entries91430%_)
                   '1)))
            (let _%loop91437%_ ((_%probe91440%_ _%start91433%_)
                                (_%i91442%_ '1)
                                (_%deleted91444%_ '#f))
              (let ((_%k91447%_ (vector-ref _%table91421%_ _%probe91440%_)))
                (if (eq? _%k91447%_ (macro-unused-obj))
                    _%default91419%_
                    (if (eq? _%k91447%_ (macro-deleted-obj))
                        (_%loop91437%_
                         (let ((_%next-probe91452%_
                                (fx+ _%start91433%_
                                     _%i91442%_
                                     (fx* _%i91442%_ _%i91442%_))))
                           (##fxmodulo _%next-probe91452%_ _%size91427%_))
                         (##fx+ _%i91442%_ '1)
                         (let ((_%$e91455%_ _%deleted91444%_))
                           (if _%$e91455%_ _%$e91455%_ _%probe91440%_)))
                        (if (##string=? _%key91418%_ _%k91447%_)
                            (vector-ref
                             _%table91421%_
                             (##fx+ _%probe91440%_ '1))
                            (_%loop91437%_
                             (let ((_%next-probe91460%_
                                    (fx+ _%start91433%_
                                         _%i91442%_
                                         (fx* _%i91442%_ _%i91442%_))))
                               (##fxmodulo _%next-probe91460%_ _%size91427%_))
                             (##fx+ _%i91442%_ '1)
                             _%deleted91444%_))))))))))
    (define string-table-set!
      (lambda (_%tab91413%_ _%key91414%_ _%value91415%_)
        (if (##fx< (&raw-table-free _%tab91413%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91413%_))
                    '4))
            (__raw-table-rehash! _%tab91413%_)
            '#!void)
        (__string-table-set! _%tab91413%_ _%key91414%_ _%value91415%_)))
    (define __string-table-set!
      (lambda (_%tab91364%_ _%key91365%_ _%value91366%_)
        (let ((_%table91369%_ (&raw-table-table _%tab91364%_))
              (_%seed91370%_ (&raw-table-seed _%tab91364%_)))
          (let* ((_%h91372%_
                  (fxxor (##string=?-hash _%key91365%_) _%seed91370%_))
                 (_%size91375%_ (vector-length _%table91369%_))
                 (_%entries91378%_ (##fxquotient _%size91375%_ '2))
                 (_%start91381%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91372%_ _%entries91378%_)
                   '1)))
            (let _%loop91385%_ ((_%probe91388%_ _%start91381%_)
                                (_%i91390%_ '1)
                                (_%deleted91392%_ '#f))
              (let ((_%k91395%_ (vector-ref _%table91369%_ _%probe91388%_)))
                (if (eq? _%k91395%_ (macro-unused-obj))
                    (if _%deleted91392%_
                        (begin
                          (vector-set!
                           _%table91369%_
                           _%deleted91392%_
                           _%key91365%_)
                          (vector-set!
                           _%table91369%_
                           (##fx+ _%deleted91392%_ '1)
                           _%value91366%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91364%_
                              (##fx+ (&raw-table-count _%tab91364%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91369%_
                           _%probe91388%_
                           _%key91365%_)
                          (vector-set!
                           _%table91369%_
                           (##fx+ _%probe91388%_ '1)
                           _%value91366%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91364%_
                              (##fx- (&raw-table-free _%tab91364%_) '1))
                             (&raw-table-count-set!
                              _%tab91364%_
                              (##fx+ (&raw-table-count _%tab91364%_) '1))))))
                    (if (eq? _%k91395%_ (macro-deleted-obj))
                        (_%loop91385%_
                         (let ((_%next-probe91402%_
                                (fx+ _%start91381%_
                                     _%i91390%_
                                     (fx* _%i91390%_ _%i91390%_))))
                           (##fxmodulo _%next-probe91402%_ _%size91375%_))
                         (##fx+ _%i91390%_ '1)
                         (let ((_%$e91405%_ _%deleted91392%_))
                           (if _%$e91405%_ _%$e91405%_ _%probe91388%_)))
                        (if (##string=? _%key91365%_ _%k91395%_)
                            (let ()
                              (vector-set!
                               _%table91369%_
                               _%probe91388%_
                               _%key91365%_)
                              (vector-set!
                               _%table91369%_
                               (##fx+ _%probe91388%_ '1)
                               _%value91366%_))
                            (_%loop91385%_
                             (let ((_%next-probe91410%_
                                    (fx+ _%start91381%_
                                         _%i91390%_
                                         (fx* _%i91390%_ _%i91390%_))))
                               (##fxmodulo _%next-probe91410%_ _%size91375%_))
                             (##fx+ _%i91390%_ '1)
                             _%deleted91392%_))))))))))
    (define string-table-update!
      (lambda (_%tab91359%_
               _%key91360%_
               _%string-table-update!91361%_
               _%default91362%_)
        (if (##fx< (&raw-table-free _%tab91359%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91359%_))
                    '4))
            (__raw-table-rehash! _%tab91359%_)
            '#!void)
        (__string-table-update!
         _%tab91359%_
         _%key91360%_
         _%string-table-update!91361%_
         _%default91362%_)))
    (define __string-table-update!
      (lambda (_%tab91309%_
               _%key91310%_
               _%string-table-update!91311%_
               _%default91312%_)
        (let ((_%table91315%_ (&raw-table-table _%tab91309%_))
              (_%seed91316%_ (&raw-table-seed _%tab91309%_)))
          (let* ((_%h91318%_
                  (fxxor (##string=?-hash _%key91310%_) _%seed91316%_))
                 (_%size91321%_ (vector-length _%table91315%_))
                 (_%entries91324%_ (##fxquotient _%size91321%_ '2))
                 (_%start91327%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91318%_ _%entries91324%_)
                   '1)))
            (let _%loop91331%_ ((_%probe91334%_ _%start91327%_)
                                (_%i91336%_ '1)
                                (_%deleted91338%_ '#f))
              (let ((_%k91341%_ (vector-ref _%table91315%_ _%probe91334%_)))
                (if (eq? _%k91341%_ (macro-unused-obj))
                    (if _%deleted91338%_
                        (begin
                          (vector-set!
                           _%table91315%_
                           _%deleted91338%_
                           _%key91310%_)
                          (vector-set!
                           _%table91315%_
                           (##fx+ _%deleted91338%_ '1)
                           (_%string-table-update!91311%_ _%default91312%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91309%_
                              (##fx+ (&raw-table-count _%tab91309%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91315%_
                           _%probe91334%_
                           _%key91310%_)
                          (vector-set!
                           _%table91315%_
                           (##fx+ _%probe91334%_ '1)
                           (_%string-table-update!91311%_ _%default91312%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91309%_
                              (##fx- (&raw-table-free _%tab91309%_) '1))
                             (&raw-table-count-set!
                              _%tab91309%_
                              (##fx+ (&raw-table-count _%tab91309%_) '1))))))
                    (if (eq? _%k91341%_ (macro-deleted-obj))
                        (_%loop91331%_
                         (let ((_%next-probe91348%_
                                (fx+ _%start91327%_
                                     _%i91336%_
                                     (fx* _%i91336%_ _%i91336%_))))
                           (##fxmodulo _%next-probe91348%_ _%size91321%_))
                         (##fx+ _%i91336%_ '1)
                         (let ((_%$e91351%_ _%deleted91338%_))
                           (if _%$e91351%_ _%$e91351%_ _%probe91334%_)))
                        (if (##string=? _%key91310%_ _%k91341%_)
                            (let ()
                              (vector-set!
                               _%table91315%_
                               _%probe91334%_
                               _%key91310%_)
                              (vector-set!
                               _%table91315%_
                               (##fx+ _%probe91334%_ '1)
                               (_%string-table-update!91311%_
                                (vector-ref
                                 _%table91315%_
                                 (##fx+ _%probe91334%_ '1)))))
                            (_%loop91331%_
                             (let ((_%next-probe91356%_
                                    (fx+ _%start91327%_
                                         _%i91336%_
                                         (fx* _%i91336%_ _%i91336%_))))
                               (##fxmodulo _%next-probe91356%_ _%size91321%_))
                             (##fx+ _%i91336%_ '1)
                             _%deleted91338%_))))))))))
    (define string-table-delete!
      (lambda (_%tab91264%_ _%key91266%_)
        (let ((_%table91269%_ (&raw-table-table _%tab91264%_))
              (_%seed91271%_ (&raw-table-seed _%tab91264%_)))
          (let* ((_%h91274%_
                  (fxxor (##string=?-hash _%key91266%_) _%seed91271%_))
                 (_%size91277%_ (vector-length _%table91269%_))
                 (_%entries91280%_ (##fxquotient _%size91277%_ '2))
                 (_%start91283%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91274%_ _%entries91280%_)
                   '1)))
            (let _%loop91287%_ ((_%probe91290%_ _%start91283%_)
                                (_%i91292%_ '1))
              (let ((_%k91295%_ (vector-ref _%table91269%_ _%probe91290%_)))
                (if (eq? _%k91295%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91295%_ (macro-deleted-obj))
                        (_%loop91287%_
                         (let ((_%next-probe91300%_
                                (fx+ _%start91283%_
                                     _%i91292%_
                                     (fx* _%i91292%_ _%i91292%_))))
                           (##fxmodulo _%next-probe91300%_ _%size91277%_))
                         (##fx+ _%i91292%_ '1))
                        (if (##string=? _%key91266%_ _%k91295%_)
                            (let ()
                              (vector-set!
                               _%table91269%_
                               _%probe91290%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91269%_
                               (##fx+ _%probe91290%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91264%_
                                  (##fx- (&raw-table-count _%tab91264%_)
                                         '1)))))
                            (_%loop91287%_
                             (let ((_%next-probe91306%_
                                    (fx+ _%start91283%_
                                         _%i91292%_
                                         (fx* _%i91292%_ _%i91292%_))))
                               (##fxmodulo _%next-probe91306%_ _%size91277%_))
                             (##fx+ _%i91292%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint91245%_ _%seed91247%_)
        (make-raw-table__%
         _%size-hint91245%_
         immediate-hash
         eq?
         _%seed91247%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint91253%_ '#f) (_%seed91255%_ '0))
          (make-immediate-table__% _%size-hint91253%_ _%seed91255%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint91257%_)
        (let ((_%seed91259%_ '0))
          (make-immediate-table__% _%size-hint91257%_ _%seed91259%_))))
    (define make-immediate-table
      (lambda _g92485_
        (let ((_g92484_ (##length _g92485_)))
          (cond ((##fx= _g92484_ 0) (apply make-immediate-table__0 _g92485_))
                ((##fx= _g92484_ 1) (apply make-immediate-table__1 _g92485_))
                ((##fx= _g92484_ 2) (apply make-immediate-table__% _g92485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g92485_))))))
    (define immediate-table-ref
      (lambda (_%tab91198%_ _%key91199%_ _%default91200%_)
        (let ((_%table91202%_ (&raw-table-table _%tab91198%_))
              (_%seed91203%_ (&raw-table-seed _%tab91198%_)))
          (let* ((_%h91205%_
                  (fxxor (immediate-hash _%key91199%_) _%seed91203%_))
                 (_%size91208%_ (vector-length _%table91202%_))
                 (_%entries91211%_ (##fxquotient _%size91208%_ '2))
                 (_%start91214%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91205%_ _%entries91211%_)
                   '1)))
            (let _%loop91218%_ ((_%probe91221%_ _%start91214%_)
                                (_%i91223%_ '1)
                                (_%deleted91225%_ '#f))
              (let ((_%k91228%_ (vector-ref _%table91202%_ _%probe91221%_)))
                (if (eq? _%k91228%_ (macro-unused-obj))
                    _%default91200%_
                    (if (eq? _%k91228%_ (macro-deleted-obj))
                        (_%loop91218%_
                         (let ((_%next-probe91233%_
                                (fx+ _%start91214%_
                                     _%i91223%_
                                     (fx* _%i91223%_ _%i91223%_))))
                           (##fxmodulo _%next-probe91233%_ _%size91208%_))
                         (##fx+ _%i91223%_ '1)
                         (let ((_%$e91236%_ _%deleted91225%_))
                           (if _%$e91236%_ _%$e91236%_ _%probe91221%_)))
                        (if (eq? _%key91199%_ _%k91228%_)
                            (vector-ref
                             _%table91202%_
                             (##fx+ _%probe91221%_ '1))
                            (_%loop91218%_
                             (let ((_%next-probe91241%_
                                    (fx+ _%start91214%_
                                         _%i91223%_
                                         (fx* _%i91223%_ _%i91223%_))))
                               (##fxmodulo _%next-probe91241%_ _%size91208%_))
                             (##fx+ _%i91223%_ '1)
                             _%deleted91225%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab91194%_ _%key91195%_ _%value91196%_)
        (if (##fx< (&raw-table-free _%tab91194%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91194%_))
                    '4))
            (__raw-table-rehash! _%tab91194%_)
            '#!void)
        (__immediate-table-set! _%tab91194%_ _%key91195%_ _%value91196%_)))
    (define __immediate-table-set!
      (lambda (_%tab91145%_ _%key91146%_ _%value91147%_)
        (let ((_%table91150%_ (&raw-table-table _%tab91145%_))
              (_%seed91151%_ (&raw-table-seed _%tab91145%_)))
          (let* ((_%h91153%_
                  (fxxor (immediate-hash _%key91146%_) _%seed91151%_))
                 (_%size91156%_ (vector-length _%table91150%_))
                 (_%entries91159%_ (##fxquotient _%size91156%_ '2))
                 (_%start91162%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91153%_ _%entries91159%_)
                   '1)))
            (let _%loop91166%_ ((_%probe91169%_ _%start91162%_)
                                (_%i91171%_ '1)
                                (_%deleted91173%_ '#f))
              (let ((_%k91176%_ (vector-ref _%table91150%_ _%probe91169%_)))
                (if (eq? _%k91176%_ (macro-unused-obj))
                    (if _%deleted91173%_
                        (begin
                          (vector-set!
                           _%table91150%_
                           _%deleted91173%_
                           _%key91146%_)
                          (vector-set!
                           _%table91150%_
                           (##fx+ _%deleted91173%_ '1)
                           _%value91147%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91145%_
                              (##fx+ (&raw-table-count _%tab91145%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91150%_
                           _%probe91169%_
                           _%key91146%_)
                          (vector-set!
                           _%table91150%_
                           (##fx+ _%probe91169%_ '1)
                           _%value91147%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91145%_
                              (##fx- (&raw-table-free _%tab91145%_) '1))
                             (&raw-table-count-set!
                              _%tab91145%_
                              (##fx+ (&raw-table-count _%tab91145%_) '1))))))
                    (if (eq? _%k91176%_ (macro-deleted-obj))
                        (_%loop91166%_
                         (let ((_%next-probe91183%_
                                (fx+ _%start91162%_
                                     _%i91171%_
                                     (fx* _%i91171%_ _%i91171%_))))
                           (##fxmodulo _%next-probe91183%_ _%size91156%_))
                         (##fx+ _%i91171%_ '1)
                         (let ((_%$e91186%_ _%deleted91173%_))
                           (if _%$e91186%_ _%$e91186%_ _%probe91169%_)))
                        (if (eq? _%key91146%_ _%k91176%_)
                            (let ()
                              (vector-set!
                               _%table91150%_
                               _%probe91169%_
                               _%key91146%_)
                              (vector-set!
                               _%table91150%_
                               (##fx+ _%probe91169%_ '1)
                               _%value91147%_))
                            (_%loop91166%_
                             (let ((_%next-probe91191%_
                                    (fx+ _%start91162%_
                                         _%i91171%_
                                         (fx* _%i91171%_ _%i91171%_))))
                               (##fxmodulo _%next-probe91191%_ _%size91156%_))
                             (##fx+ _%i91171%_ '1)
                             _%deleted91173%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab91140%_
               _%key91141%_
               _%immediate-table-update!91142%_
               _%default91143%_)
        (if (##fx< (&raw-table-free _%tab91140%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91140%_))
                    '4))
            (__raw-table-rehash! _%tab91140%_)
            '#!void)
        (__immediate-table-update!
         _%tab91140%_
         _%key91141%_
         _%immediate-table-update!91142%_
         _%default91143%_)))
    (define __immediate-table-update!
      (lambda (_%tab91090%_
               _%key91091%_
               _%immediate-table-update!91092%_
               _%default91093%_)
        (let ((_%table91096%_ (&raw-table-table _%tab91090%_))
              (_%seed91097%_ (&raw-table-seed _%tab91090%_)))
          (let* ((_%h91099%_
                  (fxxor (immediate-hash _%key91091%_) _%seed91097%_))
                 (_%size91102%_ (vector-length _%table91096%_))
                 (_%entries91105%_ (##fxquotient _%size91102%_ '2))
                 (_%start91108%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91099%_ _%entries91105%_)
                   '1)))
            (let _%loop91112%_ ((_%probe91115%_ _%start91108%_)
                                (_%i91117%_ '1)
                                (_%deleted91119%_ '#f))
              (let ((_%k91122%_ (vector-ref _%table91096%_ _%probe91115%_)))
                (if (eq? _%k91122%_ (macro-unused-obj))
                    (if _%deleted91119%_
                        (begin
                          (vector-set!
                           _%table91096%_
                           _%deleted91119%_
                           _%key91091%_)
                          (vector-set!
                           _%table91096%_
                           (##fx+ _%deleted91119%_ '1)
                           (_%immediate-table-update!91092%_ _%default91093%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91090%_
                              (##fx+ (&raw-table-count _%tab91090%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91096%_
                           _%probe91115%_
                           _%key91091%_)
                          (vector-set!
                           _%table91096%_
                           (##fx+ _%probe91115%_ '1)
                           (_%immediate-table-update!91092%_ _%default91093%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91090%_
                              (##fx- (&raw-table-free _%tab91090%_) '1))
                             (&raw-table-count-set!
                              _%tab91090%_
                              (##fx+ (&raw-table-count _%tab91090%_) '1))))))
                    (if (eq? _%k91122%_ (macro-deleted-obj))
                        (_%loop91112%_
                         (let ((_%next-probe91129%_
                                (fx+ _%start91108%_
                                     _%i91117%_
                                     (fx* _%i91117%_ _%i91117%_))))
                           (##fxmodulo _%next-probe91129%_ _%size91102%_))
                         (##fx+ _%i91117%_ '1)
                         (let ((_%$e91132%_ _%deleted91119%_))
                           (if _%$e91132%_ _%$e91132%_ _%probe91115%_)))
                        (if (eq? _%key91091%_ _%k91122%_)
                            (let ()
                              (vector-set!
                               _%table91096%_
                               _%probe91115%_
                               _%key91091%_)
                              (vector-set!
                               _%table91096%_
                               (##fx+ _%probe91115%_ '1)
                               (_%immediate-table-update!91092%_
                                (vector-ref
                                 _%table91096%_
                                 (##fx+ _%probe91115%_ '1)))))
                            (_%loop91112%_
                             (let ((_%next-probe91137%_
                                    (fx+ _%start91108%_
                                         _%i91117%_
                                         (fx* _%i91117%_ _%i91117%_))))
                               (##fxmodulo _%next-probe91137%_ _%size91102%_))
                             (##fx+ _%i91117%_ '1)
                             _%deleted91119%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab91045%_ _%key91047%_)
        (let ((_%table91050%_ (&raw-table-table _%tab91045%_))
              (_%seed91052%_ (&raw-table-seed _%tab91045%_)))
          (let* ((_%h91055%_
                  (fxxor (immediate-hash _%key91047%_) _%seed91052%_))
                 (_%size91058%_ (vector-length _%table91050%_))
                 (_%entries91061%_ (##fxquotient _%size91058%_ '2))
                 (_%start91064%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91055%_ _%entries91061%_)
                   '1)))
            (let _%loop91068%_ ((_%probe91071%_ _%start91064%_)
                                (_%i91073%_ '1))
              (let ((_%k91076%_ (vector-ref _%table91050%_ _%probe91071%_)))
                (if (eq? _%k91076%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91076%_ (macro-deleted-obj))
                        (_%loop91068%_
                         (let ((_%next-probe91081%_
                                (fx+ _%start91064%_
                                     _%i91073%_
                                     (fx* _%i91073%_ _%i91073%_))))
                           (##fxmodulo _%next-probe91081%_ _%size91058%_))
                         (##fx+ _%i91073%_ '1))
                        (if (eq? _%key91047%_ _%k91076%_)
                            (let ()
                              (vector-set!
                               _%table91050%_
                               _%probe91071%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91050%_
                               (##fx+ _%probe91071%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91045%_
                                  (##fx- (&raw-table-count _%tab91045%_)
                                         '1)))))
                            (_%loop91068%_
                             (let ((_%next-probe91087%_
                                    (fx+ _%start91064%_
                                         _%i91073%_
                                         (fx* _%i91073%_ _%i91073%_))))
                               (##fxmodulo _%next-probe91087%_ _%size91058%_))
                             (##fx+ _%i91073%_ '1)))))))))))
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
      (lambda (_%tab91043%_)
        (##unchecked-structure-ref
         _%tab91043%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab91041%_)
        (##unchecked-structure-ref
         _%tab91041%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab91038%_ _%val91039%_)
        (##unchecked-structure-set!
         _%tab91038%_
         _%val91039%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab91035%_ _%val91036%_)
        (##unchecked-structure-set!
         _%tab91035%_
         _%val91036%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint91011%_ _%klass91012%_ _%flags91013%_)
        (let ((_%gcht91015%_
               (__gc-table-new
                (if (fixnum? _%size-hint91011%_) _%size-hint91011%_ '16)
                _%flags91013%_)))
          (##structure _%klass91012%_ _%gcht91015%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint91020%_)
        (let* ((_%klass91022%_ __gc-table::t) (_%flags91024%_ '0))
          (make-gc-table__%
           _%size-hint91020%_
           _%klass91022%_
           _%flags91024%_))))
    (define make-gc-table__1
      (lambda (_%size-hint91026%_ _%klass91027%_)
        (let ((_%flags91029%_ '0))
          (make-gc-table__%
           _%size-hint91026%_
           _%klass91027%_
           _%flags91029%_))))
    (define make-gc-table
      (lambda _g92487_
        (let ((_g92486_ (##length _g92487_)))
          (cond ((##fx= _g92486_ 1) (apply make-gc-table__0 _g92487_))
                ((##fx= _g92486_ 2) (apply make-gc-table__1 _g92487_))
                ((##fx= _g92486_ 3) (apply make-gc-table__% _g92487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g92487_))))))
    (define __gc-table-immediate
      (lambda (_%tab91002%_)
        (let ((_%$e91004%_ (&gc-table-immediate _%tab91002%_)))
          (if _%$e91004%_
              _%$e91004%_
              (let ((_%immediate91008%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab91002%_ _%immediate91008%_)
                _%immediate91008%_)))))
    (define __gc-table-new
      (lambda (_%size90992%_ _%flags90993%_)
        (let* ((_%flags90995%_
                (##fxand _%flags90993%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags90997%_
                (fxior _%flags90995%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht90999%_
                (##gc-hash-table-allocate
                 _%size90992%_
                 _%flags90997%_
                 __gc-table-loads)))
          _%gcht90999%_)))
    (define __gc-table-e
      (lambda (_%tab90987%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht90990%_ (&gc-table-gcht _%tab90987%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht90990%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht90990%_
              (begin
                (__gc-table-rehash! _%tab90987%_)
                (&gc-table-gcht _%tab90987%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab90978%_)
        (let* ((_%old-table90980%_ (&gc-table-gcht _%tab90978%_))
               (_%new-table90982%_
                (##gc-hash-table-resize! _%old-table90980%_ __gc-table-loads))
               (_%gcht90984%_
                (##gc-hash-table-rehash!
                 _%old-table90980%_
                 _%new-table90982%_)))
          (&gc-table-gcht-set! _%tab90978%_ _%gcht90984%_))))
    (define gc-table-ref
      (lambda (_%tab90962%_ _%key90963%_ _%default90964%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90963%_)
            (let* ((_%gcht90968%_ (__gc-table-e _%tab90962%_))
                   (_%value90970%_
                    (##gc-hash-table-ref _%gcht90968%_ _%key90963%_)))
              (if (eq? _%value90970%_ (macro-unused-obj))
                  _%default90964%_
                  _%value90970%_))
            (let ((_%$e90972%_ (&gc-table-immediate _%tab90962%_)))
              (if _%$e90972%_
                  ((lambda (_%immediate90975%_)
                     (immediate-table-ref
                      _%immediate90975%_
                      _%key90963%_
                      _%default90964%_))
                   _%$e90972%_)
                  _%default90964%_)))))
    (define gc-table-set!
      (lambda (_%tab90955%_ _%key90956%_ _%value90957%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90956%_)
            (let ((_%gcht90960%_ (__gc-table-e _%tab90955%_)))
              (if (##gc-hash-table-set!
                   _%gcht90960%_
                   _%key90956%_
                   _%value90957%_)
                  (begin
                    (__gc-table-rehash! _%tab90955%_)
                    (gc-table-set! _%tab90955%_ _%key90956%_ _%value90957%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab90955%_)
             _%key90956%_
             _%value90957%_))))
    (define gc-table-update!
      (lambda (_%tab90948%_ _%key90949%_ _%update90950%_ _%default90951%_)
        (if (##mem-allocated? _%key90949%_)
            (let ((_%value90953%_
                   (gc-table-ref _%tab90948%_ _%key90949%_ _%default90951%_)))
              (gc-table-set!
               _%tab90948%_
               _%key90949%_
               (_%update90950%_ _%value90953%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab90948%_)
             _%key90949%_
             _%update90950%_
             _%default90951%_))))
    (define gc-table-delete!
      (lambda (_%tab90936%_ _%key90937%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90937%_)
            (let ((_%gcht90941%_ (__gc-table-e _%tab90936%_)))
              (if (##gc-hash-table-set!
                   _%gcht90941%_
                   _%key90937%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab90936%_)
                    (gc-table-delete! _%tab90936%_ _%key90937%_))
                  '#!void))
            (let ((_%$e90943%_ (&gc-table-immediate _%tab90936%_)))
              (if _%$e90943%_
                  ((lambda (_%immediate90946%_)
                     (immediate-table-delete! _%immediate90946%_ _%key90937%_))
                   _%$e90943%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab90917%_ _%proc90918%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht90921%_ (__gc-table-e _%tab90917%_)))
            (let _%loop90923%_ ((_%i90925%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i90925%_ (##vector-length _%gcht90921%_))
                  (let ((_%key90927%_ (##vector-ref _%gcht90921%_ _%i90925%_)))
                    (if (if (eq? _%key90927%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key90927%_ (macro-deleted-obj))))
                        (_%proc90918%_
                         _%key90927%_
                         (##vector-ref _%gcht90921%_ (##fx+ _%i90925%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop90923%_ (##fx+ _%i90925%_ '2))))
                  '#!void)))
          (let ((_%$e90931%_ (&gc-table-immediate _%tab90917%_)))
            (if _%$e90931%_
                ((lambda (_%immediate90934%_)
                   (raw-table-for-each _%immediate90934%_ _%proc90918%_))
                 _%$e90931%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab90905%_)
        (let* ((_%gcht90907%_ (__gc-table-e _%tab90905%_))
               (_%new-table90909%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht90907%_)
                 (macro-gc-hash-table-flags _%gcht90907%_)))
               (_%result90911%_
                (##structure
                 (##structure-type _%tab90905%_)
                 _%new-table90909%_
                 '#f)))
          (gc-table-for-each
           _%tab90905%_
           (lambda (_%k90914%_ _%v90915%_)
             (gc-table-set! _%result90911%_ _%k90914%_ _%v90915%_)))
          _%result90911%_)))
    (define gc-table-clear!
      (lambda (_%tab90898%_)
        (let* ((_%gcht90900%_ (__gc-table-e _%tab90898%_))
               (_%new-table90902%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht90900%_))))
          (&gc-table-gcht-set! _%tab90898%_ _%new-table90902%_)
          (&gc-table-immediate-set! _%tab90898%_ '#f))))
    (define gc-table-length
      (lambda (_%tab90890%_)
        (let ((_%gcht90892%_ (__gc-table-e _%tab90890%_)))
          (fx+ (macro-gc-hash-table-count _%gcht90892%_)
               (let ((_%$e90894%_ (&gc-table-immediate _%tab90890%_)))
                 (if _%$e90894%_ (&raw-table-count _%$e90894%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj90875%_)
        (declare (not interrupts-enabled))
        (let ((_%val90878%_ (gc-table-ref __object-eq-hash _%obj90875%_ '#f)))
          (if _%val90878%_
              _%val90878%_
              (let* ((_%mix90880%_ __object-eq-hash-next)
                     (_%ptr90882%_ (##type-cast _%obj90875%_ '0))
                     (_%h90884%_
                      (fxand (fxxor _%mix90880%_ _%ptr90882%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e90887%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e90887%_ _%$e90887%_ '0)))
                (gc-table-set! __object-eq-hash _%obj90875%_ _%h90884%_)
                _%h90884%_)))))))
