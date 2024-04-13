(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712993614)
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
      (lambda (_%tab92240%_)
        (##unchecked-structure-ref
         _%tab92240%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab92238%_)
        (##unchecked-structure-ref
         _%tab92238%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab92236%_)
        (##unchecked-structure-ref
         _%tab92236%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab92234%_)
        (##unchecked-structure-ref
         _%tab92234%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab92232%_)
        (##unchecked-structure-ref
         _%tab92232%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab92230%_)
        (##unchecked-structure-ref
         _%tab92230%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab92227%_ _%val92228%_)
        (##unchecked-structure-set!
         _%tab92227%_
         _%val92228%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab92224%_ _%val92225%_)
        (##unchecked-structure-set!
         _%tab92224%_
         _%val92225%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab92221%_ _%val92222%_)
        (##unchecked-structure-set!
         _%tab92221%_
         _%val92222%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab92218%_ _%val92219%_)
        (##unchecked-structure-set!
         _%tab92218%_
         _%val92219%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab92215%_ _%val92216%_)
        (##unchecked-structure-set!
         _%tab92215%_
         _%val92216%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab92212%_ _%val92213%_)
        (##unchecked-structure-set!
         _%tab92212%_
         _%val92213%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint92210%_)
        (if (and (fixnum? _%size-hint92210%_) (##fx> _%size-hint92210%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint92210%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint92186%_ _%hash92187%_ _%test92188%_ _%seed92189%_)
        (let* ((_%size92191%_ (raw-table-size-hint->size _%size-hint92186%_))
               (_%table92193%_
                (##make-vector _%size92191%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table92193%_
           '0
           (##fxquotient _%size92191%_ '2)
           _%hash92187%_
           _%test92188%_
           _%seed92189%_))))
    (define make-raw-table__0
      (lambda (_%size-hint92199%_ _%hash92200%_ _%test92201%_)
        (let ((_%seed92203%_ '0))
          (make-raw-table__%
           _%size-hint92199%_
           _%hash92200%_
           _%test92201%_
           _%seed92203%_))))
    (define make-raw-table
      (lambda _g92242_
        (let ((_g92241_ (##length _g92242_)))
          (cond ((##fx= _g92241_ 3) (apply make-raw-table__0 _g92242_))
                ((##fx= _g92241_ 4) (apply make-raw-table__% _g92242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g92242_))))))
    (define raw-table-ref
      (lambda (_%tab92137%_ _%key92138%_ _%default92139%_)
        (let ((_%table92141%_ (&raw-table-table _%tab92137%_))
              (_%seed92142%_ (&raw-table-seed _%tab92137%_))
              (_%hash92143%_ (&raw-table-hash _%tab92137%_))
              (_%test92144%_ (&raw-table-test _%tab92137%_)))
          (let* ((_%h92146%_
                  (fxxor (_%hash92143%_ _%key92138%_) _%seed92142%_))
                 (_%size92149%_ (vector-length _%table92141%_))
                 (_%entries92152%_ (##fxquotient _%size92149%_ '2))
                 (_%start92155%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92146%_ _%entries92152%_)
                   '1)))
            (let _%loop92159%_ ((_%probe92162%_ _%start92155%_)
                                (_%i92164%_ '1)
                                (_%deleted92166%_ '#f))
              (let ((_%k92169%_ (vector-ref _%table92141%_ _%probe92162%_)))
                (if (eq? _%k92169%_ (macro-unused-obj))
                    _%default92139%_
                    (if (eq? _%k92169%_ (macro-deleted-obj))
                        (_%loop92159%_
                         (let ((_%next-probe92174%_
                                (fx+ _%start92155%_
                                     _%i92164%_
                                     (fx* _%i92164%_ _%i92164%_))))
                           (##fxmodulo _%next-probe92174%_ _%size92149%_))
                         (##fx+ _%i92164%_ '1)
                         (let ((_%$e92177%_ _%deleted92166%_))
                           (if _%$e92177%_ _%$e92177%_ _%probe92162%_)))
                        (if (_%test92144%_ _%key92138%_ _%k92169%_)
                            (vector-ref
                             _%table92141%_
                             (##fx+ _%probe92162%_ '1))
                            (_%loop92159%_
                             (let ((_%next-probe92182%_
                                    (fx+ _%start92155%_
                                         _%i92164%_
                                         (fx* _%i92164%_ _%i92164%_))))
                               (##fxmodulo _%next-probe92182%_ _%size92149%_))
                             (##fx+ _%i92164%_ '1)
                             _%deleted92166%_))))))))))
    (define raw-table-set!
      (lambda (_%tab92133%_ _%key92134%_ _%value92135%_)
        (if (##fx< (&raw-table-free _%tab92133%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92133%_))
                    '4))
            (__raw-table-rehash! _%tab92133%_)
            '#!void)
        (__raw-table-set! _%tab92133%_ _%key92134%_ _%value92135%_)))
    (define raw-table-update!
      (lambda (_%tab92128%_ _%key92129%_ _%update92130%_ _%default92131%_)
        (if (##fx< (&raw-table-free _%tab92128%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92128%_))
                    '4))
            (__raw-table-rehash! _%tab92128%_)
            '#!void)
        (__raw-table-update!
         _%tab92128%_
         _%key92129%_
         _%update92130%_
         _%default92131%_)))
    (define raw-table-delete!
      (lambda (_%tab92085%_ _%key92086%_)
        (let ((_%table92088%_ (&raw-table-table _%tab92085%_))
              (_%seed92089%_ (&raw-table-seed _%tab92085%_))
              (_%hash92090%_ (&raw-table-hash _%tab92085%_))
              (_%test92091%_ (&raw-table-test _%tab92085%_)))
          (let* ((_%h92093%_
                  (fxxor (_%hash92090%_ _%key92086%_) _%seed92089%_))
                 (_%size92096%_ (vector-length _%table92088%_))
                 (_%entries92099%_ (##fxquotient _%size92096%_ '2))
                 (_%start92102%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92093%_ _%entries92099%_)
                   '1)))
            (let _%loop92106%_ ((_%probe92109%_ _%start92102%_)
                                (_%i92111%_ '1))
              (let ((_%k92114%_ (vector-ref _%table92088%_ _%probe92109%_)))
                (if (eq? _%k92114%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92114%_ (macro-deleted-obj))
                        (_%loop92106%_
                         (let ((_%next-probe92119%_
                                (fx+ _%start92102%_
                                     _%i92111%_
                                     (fx* _%i92111%_ _%i92111%_))))
                           (##fxmodulo _%next-probe92119%_ _%size92096%_))
                         (##fx+ _%i92111%_ '1))
                        (if (_%test92091%_ _%key92086%_ _%k92114%_)
                            (let ()
                              (vector-set!
                               _%table92088%_
                               _%probe92109%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92088%_
                               (##fx+ _%probe92109%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92085%_
                                  (##fx- (&raw-table-count _%tab92085%_)
                                         '1)))))
                            (_%loop92106%_
                             (let ((_%next-probe92125%_
                                    (fx+ _%start92102%_
                                         _%i92111%_
                                         (fx* _%i92111%_ _%i92111%_))))
                               (##fxmodulo _%next-probe92125%_ _%size92096%_))
                             (##fx+ _%i92111%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab92069%_ _%proc92070%_)
        (let* ((_%table92072%_ (&raw-table-table _%tab92069%_))
               (_%size92074%_ (vector-length _%table92072%_)))
          (let _%loop92077%_ ((_%i92079%_ '0))
            (if (##fx< _%i92079%_ _%size92074%_)
                (begin
                  (let ((_%key92081%_ (vector-ref _%table92072%_ _%i92079%_)))
                    (if (if (eq? _%key92081%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92081%_ (macro-deleted-obj))))
                        (let ((_%value92083%_
                               (vector-ref
                                _%table92072%_
                                (##fx+ _%i92079%_ '1))))
                          (_%proc92070%_ _%key92081%_ _%value92083%_))
                        '#!void))
                  (_%loop92077%_ (##fx+ _%i92079%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab92065%_)
        (let ((_%new-tab92067%_ (##structure-copy _%tab92065%_)))
          (&raw-table-table-set!
           _%new-tab92067%_
           (vector-copy (&raw-table-table _%tab92065%_)))
          _%new-tab92067%_)))
    (define raw-table-clear!
      (lambda (_%tab92063%_)
        (vector-fill! (&raw-table-table _%tab92063%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab92063%_ '0)
        (&raw-table-free-set!
         _%tab92063%_
         (##fxquotient (vector-length (&raw-table-table _%tab92063%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab92013%_ _%key92014%_ _%value92015%_)
        (let ((_%table92017%_ (&raw-table-table _%tab92013%_))
              (_%seed92018%_ (&raw-table-seed _%tab92013%_))
              (_%hash92019%_ (&raw-table-hash _%tab92013%_))
              (_%test92020%_ (&raw-table-test _%tab92013%_)))
          (let* ((_%h92022%_
                  (fxxor (_%hash92019%_ _%key92014%_) _%seed92018%_))
                 (_%size92025%_ (vector-length _%table92017%_))
                 (_%entries92028%_ (##fxquotient _%size92025%_ '2))
                 (_%start92031%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92022%_ _%entries92028%_)
                   '1)))
            (let _%loop92035%_ ((_%probe92038%_ _%start92031%_)
                                (_%i92040%_ '1)
                                (_%deleted92042%_ '#f))
              (let ((_%k92045%_ (vector-ref _%table92017%_ _%probe92038%_)))
                (if (eq? _%k92045%_ (macro-unused-obj))
                    (if _%deleted92042%_
                        (begin
                          (vector-set!
                           _%table92017%_
                           _%deleted92042%_
                           _%key92014%_)
                          (vector-set!
                           _%table92017%_
                           (##fx+ _%deleted92042%_ '1)
                           _%value92015%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92013%_
                              (##fx+ (&raw-table-count _%tab92013%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92017%_
                           _%probe92038%_
                           _%key92014%_)
                          (vector-set!
                           _%table92017%_
                           (##fx+ _%probe92038%_ '1)
                           _%value92015%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92013%_
                              (##fx- (&raw-table-free _%tab92013%_) '1))
                             (&raw-table-count-set!
                              _%tab92013%_
                              (##fx+ (&raw-table-count _%tab92013%_) '1))))))
                    (if (eq? _%k92045%_ (macro-deleted-obj))
                        (_%loop92035%_
                         (let ((_%next-probe92052%_
                                (fx+ _%start92031%_
                                     _%i92040%_
                                     (fx* _%i92040%_ _%i92040%_))))
                           (##fxmodulo _%next-probe92052%_ _%size92025%_))
                         (##fx+ _%i92040%_ '1)
                         (let ((_%$e92055%_ _%deleted92042%_))
                           (if _%$e92055%_ _%$e92055%_ _%probe92038%_)))
                        (if (_%test92020%_ _%key92014%_ _%k92045%_)
                            (let ()
                              (vector-set!
                               _%table92017%_
                               _%probe92038%_
                               _%key92014%_)
                              (vector-set!
                               _%table92017%_
                               (##fx+ _%probe92038%_ '1)
                               _%value92015%_))
                            (_%loop92035%_
                             (let ((_%next-probe92060%_
                                    (fx+ _%start92031%_
                                         _%i92040%_
                                         (fx* _%i92040%_ _%i92040%_))))
                               (##fxmodulo _%next-probe92060%_ _%size92025%_))
                             (##fx+ _%i92040%_ '1)
                             _%deleted92042%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab91962%_ _%key91963%_ _%update91964%_ _%default91965%_)
        (let ((_%table91967%_ (&raw-table-table _%tab91962%_))
              (_%seed91968%_ (&raw-table-seed _%tab91962%_))
              (_%hash91969%_ (&raw-table-hash _%tab91962%_))
              (_%test91970%_ (&raw-table-test _%tab91962%_)))
          (let* ((_%h91972%_
                  (fxxor (_%hash91969%_ _%key91963%_) _%seed91968%_))
                 (_%size91975%_ (vector-length _%table91967%_))
                 (_%entries91978%_ (##fxquotient _%size91975%_ '2))
                 (_%start91981%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91972%_ _%entries91978%_)
                   '1)))
            (let _%loop91985%_ ((_%probe91988%_ _%start91981%_)
                                (_%i91990%_ '1)
                                (_%deleted91992%_ '#f))
              (let ((_%k91995%_ (vector-ref _%table91967%_ _%probe91988%_)))
                (if (eq? _%k91995%_ (macro-unused-obj))
                    (if _%deleted91992%_
                        (begin
                          (vector-set!
                           _%table91967%_
                           _%deleted91992%_
                           _%key91963%_)
                          (vector-set!
                           _%table91967%_
                           (##fx+ _%deleted91992%_ '1)
                           (_%update91964%_ _%default91965%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91962%_
                              (##fx+ (&raw-table-count _%tab91962%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91967%_
                           _%probe91988%_
                           _%key91963%_)
                          (vector-set!
                           _%table91967%_
                           (##fx+ _%probe91988%_ '1)
                           (_%update91964%_ _%default91965%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91962%_
                              (##fx- (&raw-table-free _%tab91962%_) '1))
                             (&raw-table-count-set!
                              _%tab91962%_
                              (##fx+ (&raw-table-count _%tab91962%_) '1))))))
                    (if (eq? _%k91995%_ (macro-deleted-obj))
                        (_%loop91985%_
                         (let ((_%next-probe92002%_
                                (fx+ _%start91981%_
                                     _%i91990%_
                                     (fx* _%i91990%_ _%i91990%_))))
                           (##fxmodulo _%next-probe92002%_ _%size91975%_))
                         (##fx+ _%i91990%_ '1)
                         (let ((_%$e92005%_ _%deleted91992%_))
                           (if _%$e92005%_ _%$e92005%_ _%probe91988%_)))
                        (if (_%test91970%_ _%key91963%_ _%k91995%_)
                            (let ()
                              (vector-set!
                               _%table91967%_
                               _%probe91988%_
                               _%key91963%_)
                              (vector-set!
                               _%table91967%_
                               (##fx+ _%probe91988%_ '1)
                               (_%update91964%_
                                (vector-ref
                                 _%table91967%_
                                 (##fx+ _%probe91988%_ '1)))))
                            (_%loop91985%_
                             (let ((_%next-probe92010%_
                                    (fx+ _%start91981%_
                                         _%i91990%_
                                         (fx* _%i91990%_ _%i91990%_))))
                               (##fxmodulo _%next-probe92010%_ _%size91975%_))
                             (##fx+ _%i91990%_ '1)
                             _%deleted91992%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab91943%_)
        (let* ((_%old-table91945%_ (&raw-table-table _%tab91943%_))
               (_%old-size91947%_ (vector-length _%old-table91945%_))
               (_%new-size91949%_
                (if (##fx< (&raw-table-count _%tab91943%_)
                           (##fxquotient _%old-size91947%_ '4))
                    (vector-length _%old-table91945%_)
                    (##fx* '2 (vector-length _%old-table91945%_))))
               (_%new-table91951%_
                (##make-vector _%new-size91949%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab91943%_ _%new-table91951%_)
          (&raw-table-count-set! _%tab91943%_ '0)
          (&raw-table-free-set!
           _%tab91943%_
           (##fxquotient _%new-size91949%_ '2))
          (let _%lp91954%_ ((_%i91956%_ '0))
            (if (##fx< _%i91956%_ _%old-size91947%_)
                (begin
                  (let ((_%key91958%_
                         (vector-ref _%old-table91945%_ _%i91956%_)))
                    (if (if (eq? _%key91958%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key91958%_ (macro-deleted-obj))))
                        (let ((_%value91960%_
                               (vector-ref
                                _%old-table91945%_
                                (##fx+ _%i91956%_ '1))))
                          (__raw-table-set!
                           _%tab91943%_
                           _%key91958%_
                           _%value91960%_))
                        '#!void))
                  (_%lp91954%_ (##fx+ _%i91956%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj91935%_)
        (let ((_%t91937%_ (##type _%obj91935%_)))
          (if (##fx= (##fxand _%t91937%_ '1) '0)
              (fxand (##type-cast _%obj91935%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj91935%_)
                  (symbolic-hash _%obj91935%_)
                  (if (procedure? _%obj91935%_)
                      (procedure-hash _%obj91935%_)
                      (fxand (__eq-hash _%obj91935%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj91931%_)
        (let ((_%h91933%_
               (if (##closure? _%obj91931%_)
                   (__eq-hash _%obj91931%_)
                   (##type-cast _%obj91931%_ '0))))
          (fxand _%h91933%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj91928%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj91928%_)))
    (define eqv-hash
      (lambda (_%obj91918%_)
        (letrec ((_%combine91920%_
                  (lambda (_%a91925%_ _%b91926%_)
                    (fxand (##fx* (##fx+ _%a91925%_
                                         (fxarithmetic-shift-left
                                          _%b91926%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash91921%_
                  (lambda (_%obj91923%_)
                    (macro-number-dispatch
                     _%obj91923%_
                     (eq-hash _%obj91923%_)
                     (fxand _%obj91923%_ (macro-max-fixnum32))
                     (modulo _%obj91923%_ '331804481)
                     (_%combine91920%_
                      (_%hash91921%_ (macro-ratnum-numerator _%obj91923%_))
                      (_%hash91921%_ (macro-ratnum-denominator _%obj91923%_)))
                     (_%combine91920%_
                      (##u16vector-ref _%obj91923%_ '0)
                      (_%combine91920%_
                       (##u16vector-ref _%obj91923%_ '1)
                       (_%combine91920%_
                        (##u16vector-ref _%obj91923%_ '2)
                        (##u16vector-ref _%obj91923%_ '3))))
                     (_%combine91920%_
                      (_%hash91921%_ (macro-cpxnum-real _%obj91923%_))
                      (_%hash91921%_ (macro-cpxnum-imag _%obj91923%_)))))))
          (_%hash91921%_ _%obj91918%_))))
    (define symbolic?
      (lambda (_%obj91913%_)
        (let ((_%$e91915%_ (symbol? _%obj91913%_)))
          (if _%$e91915%_ _%$e91915%_ (keyword? _%obj91913%_)))))
    (define symbolic-hash (lambda (_%obj91911%_) (macro-slot '1 _%obj91911%_)))
    (define string-hash (lambda (_%obj91909%_) (##string=?-hash _%obj91909%_)))
    (define immediate-hash
      (lambda (_%obj91907%_) (##type-cast _%obj91907%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint91888%_ _%seed91890%_)
        (make-raw-table__% _%size-hint91888%_ eq-hash eq? _%seed91890%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint91896%_ '#f) (_%seed91898%_ '0))
          (make-eq-table__% _%size-hint91896%_ _%seed91898%_))))
    (define make-eq-table__1
      (lambda (_%size-hint91900%_)
        (let ((_%seed91902%_ '0))
          (make-eq-table__% _%size-hint91900%_ _%seed91902%_))))
    (define make-eq-table
      (lambda _g92244_
        (let ((_g92243_ (##length _g92244_)))
          (cond ((##fx= _g92243_ 0) (apply make-eq-table__0 _g92244_))
                ((##fx= _g92243_ 1) (apply make-eq-table__1 _g92244_))
                ((##fx= _g92243_ 2) (apply make-eq-table__% _g92244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g92244_))))))
    (define eq-table-ref
      (lambda (_%tab91841%_ _%key91842%_ _%default91843%_)
        (let ((_%table91845%_ (&raw-table-table _%tab91841%_))
              (_%seed91846%_ (&raw-table-seed _%tab91841%_)))
          (let* ((_%h91848%_ (fxxor (eq-hash _%key91842%_) _%seed91846%_))
                 (_%size91851%_ (vector-length _%table91845%_))
                 (_%entries91854%_ (##fxquotient _%size91851%_ '2))
                 (_%start91857%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91848%_ _%entries91854%_)
                   '1)))
            (let _%loop91861%_ ((_%probe91864%_ _%start91857%_)
                                (_%i91866%_ '1)
                                (_%deleted91868%_ '#f))
              (let ((_%k91871%_ (vector-ref _%table91845%_ _%probe91864%_)))
                (if (eq? _%k91871%_ (macro-unused-obj))
                    _%default91843%_
                    (if (eq? _%k91871%_ (macro-deleted-obj))
                        (_%loop91861%_
                         (let ((_%next-probe91876%_
                                (fx+ _%start91857%_
                                     _%i91866%_
                                     (fx* _%i91866%_ _%i91866%_))))
                           (##fxmodulo _%next-probe91876%_ _%size91851%_))
                         (##fx+ _%i91866%_ '1)
                         (let ((_%$e91879%_ _%deleted91868%_))
                           (if _%$e91879%_ _%$e91879%_ _%probe91864%_)))
                        (if (eq? _%key91842%_ _%k91871%_)
                            (vector-ref
                             _%table91845%_
                             (##fx+ _%probe91864%_ '1))
                            (_%loop91861%_
                             (let ((_%next-probe91884%_
                                    (fx+ _%start91857%_
                                         _%i91866%_
                                         (fx* _%i91866%_ _%i91866%_))))
                               (##fxmodulo _%next-probe91884%_ _%size91851%_))
                             (##fx+ _%i91866%_ '1)
                             _%deleted91868%_))))))))))
    (define eq-table-set!
      (lambda (_%tab91837%_ _%key91838%_ _%value91839%_)
        (if (##fx< (&raw-table-free _%tab91837%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91837%_))
                    '4))
            (__raw-table-rehash! _%tab91837%_)
            '#!void)
        (__eq-table-set! _%tab91837%_ _%key91838%_ _%value91839%_)))
    (define __eq-table-set!
      (lambda (_%tab91788%_ _%key91789%_ _%value91790%_)
        (let ((_%table91793%_ (&raw-table-table _%tab91788%_))
              (_%seed91794%_ (&raw-table-seed _%tab91788%_)))
          (let* ((_%h91796%_ (fxxor (eq-hash _%key91789%_) _%seed91794%_))
                 (_%size91799%_ (vector-length _%table91793%_))
                 (_%entries91802%_ (##fxquotient _%size91799%_ '2))
                 (_%start91805%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91796%_ _%entries91802%_)
                   '1)))
            (let _%loop91809%_ ((_%probe91812%_ _%start91805%_)
                                (_%i91814%_ '1)
                                (_%deleted91816%_ '#f))
              (let ((_%k91819%_ (vector-ref _%table91793%_ _%probe91812%_)))
                (if (eq? _%k91819%_ (macro-unused-obj))
                    (if _%deleted91816%_
                        (begin
                          (vector-set!
                           _%table91793%_
                           _%deleted91816%_
                           _%key91789%_)
                          (vector-set!
                           _%table91793%_
                           (##fx+ _%deleted91816%_ '1)
                           _%value91790%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91788%_
                              (##fx+ (&raw-table-count _%tab91788%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91793%_
                           _%probe91812%_
                           _%key91789%_)
                          (vector-set!
                           _%table91793%_
                           (##fx+ _%probe91812%_ '1)
                           _%value91790%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91788%_
                              (##fx- (&raw-table-free _%tab91788%_) '1))
                             (&raw-table-count-set!
                              _%tab91788%_
                              (##fx+ (&raw-table-count _%tab91788%_) '1))))))
                    (if (eq? _%k91819%_ (macro-deleted-obj))
                        (_%loop91809%_
                         (let ((_%next-probe91826%_
                                (fx+ _%start91805%_
                                     _%i91814%_
                                     (fx* _%i91814%_ _%i91814%_))))
                           (##fxmodulo _%next-probe91826%_ _%size91799%_))
                         (##fx+ _%i91814%_ '1)
                         (let ((_%$e91829%_ _%deleted91816%_))
                           (if _%$e91829%_ _%$e91829%_ _%probe91812%_)))
                        (if (eq? _%key91789%_ _%k91819%_)
                            (let ()
                              (vector-set!
                               _%table91793%_
                               _%probe91812%_
                               _%key91789%_)
                              (vector-set!
                               _%table91793%_
                               (##fx+ _%probe91812%_ '1)
                               _%value91790%_))
                            (_%loop91809%_
                             (let ((_%next-probe91834%_
                                    (fx+ _%start91805%_
                                         _%i91814%_
                                         (fx* _%i91814%_ _%i91814%_))))
                               (##fxmodulo _%next-probe91834%_ _%size91799%_))
                             (##fx+ _%i91814%_ '1)
                             _%deleted91816%_))))))))))
    (define eq-table-update!
      (lambda (_%tab91783%_
               _%key91784%_
               _%eq-table-update!91785%_
               _%default91786%_)
        (if (##fx< (&raw-table-free _%tab91783%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91783%_))
                    '4))
            (__raw-table-rehash! _%tab91783%_)
            '#!void)
        (__eq-table-update!
         _%tab91783%_
         _%key91784%_
         _%eq-table-update!91785%_
         _%default91786%_)))
    (define __eq-table-update!
      (lambda (_%tab91733%_
               _%key91734%_
               _%eq-table-update!91735%_
               _%default91736%_)
        (let ((_%table91739%_ (&raw-table-table _%tab91733%_))
              (_%seed91740%_ (&raw-table-seed _%tab91733%_)))
          (let* ((_%h91742%_ (fxxor (eq-hash _%key91734%_) _%seed91740%_))
                 (_%size91745%_ (vector-length _%table91739%_))
                 (_%entries91748%_ (##fxquotient _%size91745%_ '2))
                 (_%start91751%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91742%_ _%entries91748%_)
                   '1)))
            (let _%loop91755%_ ((_%probe91758%_ _%start91751%_)
                                (_%i91760%_ '1)
                                (_%deleted91762%_ '#f))
              (let ((_%k91765%_ (vector-ref _%table91739%_ _%probe91758%_)))
                (if (eq? _%k91765%_ (macro-unused-obj))
                    (if _%deleted91762%_
                        (begin
                          (vector-set!
                           _%table91739%_
                           _%deleted91762%_
                           _%key91734%_)
                          (vector-set!
                           _%table91739%_
                           (##fx+ _%deleted91762%_ '1)
                           (_%eq-table-update!91735%_ _%default91736%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91733%_
                              (##fx+ (&raw-table-count _%tab91733%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91739%_
                           _%probe91758%_
                           _%key91734%_)
                          (vector-set!
                           _%table91739%_
                           (##fx+ _%probe91758%_ '1)
                           (_%eq-table-update!91735%_ _%default91736%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91733%_
                              (##fx- (&raw-table-free _%tab91733%_) '1))
                             (&raw-table-count-set!
                              _%tab91733%_
                              (##fx+ (&raw-table-count _%tab91733%_) '1))))))
                    (if (eq? _%k91765%_ (macro-deleted-obj))
                        (_%loop91755%_
                         (let ((_%next-probe91772%_
                                (fx+ _%start91751%_
                                     _%i91760%_
                                     (fx* _%i91760%_ _%i91760%_))))
                           (##fxmodulo _%next-probe91772%_ _%size91745%_))
                         (##fx+ _%i91760%_ '1)
                         (let ((_%$e91775%_ _%deleted91762%_))
                           (if _%$e91775%_ _%$e91775%_ _%probe91758%_)))
                        (if (eq? _%key91734%_ _%k91765%_)
                            (let ()
                              (vector-set!
                               _%table91739%_
                               _%probe91758%_
                               _%key91734%_)
                              (vector-set!
                               _%table91739%_
                               (##fx+ _%probe91758%_ '1)
                               (_%eq-table-update!91735%_
                                (vector-ref
                                 _%table91739%_
                                 (##fx+ _%probe91758%_ '1)))))
                            (_%loop91755%_
                             (let ((_%next-probe91780%_
                                    (fx+ _%start91751%_
                                         _%i91760%_
                                         (fx* _%i91760%_ _%i91760%_))))
                               (##fxmodulo _%next-probe91780%_ _%size91745%_))
                             (##fx+ _%i91760%_ '1)
                             _%deleted91762%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab91688%_ _%key91690%_)
        (let ((_%table91693%_ (&raw-table-table _%tab91688%_))
              (_%seed91695%_ (&raw-table-seed _%tab91688%_)))
          (let* ((_%h91698%_ (fxxor (eq-hash _%key91690%_) _%seed91695%_))
                 (_%size91701%_ (vector-length _%table91693%_))
                 (_%entries91704%_ (##fxquotient _%size91701%_ '2))
                 (_%start91707%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91698%_ _%entries91704%_)
                   '1)))
            (let _%loop91711%_ ((_%probe91714%_ _%start91707%_)
                                (_%i91716%_ '1))
              (let ((_%k91719%_ (vector-ref _%table91693%_ _%probe91714%_)))
                (if (eq? _%k91719%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91719%_ (macro-deleted-obj))
                        (_%loop91711%_
                         (let ((_%next-probe91724%_
                                (fx+ _%start91707%_
                                     _%i91716%_
                                     (fx* _%i91716%_ _%i91716%_))))
                           (##fxmodulo _%next-probe91724%_ _%size91701%_))
                         (##fx+ _%i91716%_ '1))
                        (if (eq? _%key91690%_ _%k91719%_)
                            (let ()
                              (vector-set!
                               _%table91693%_
                               _%probe91714%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91693%_
                               (##fx+ _%probe91714%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91688%_
                                  (##fx- (&raw-table-count _%tab91688%_)
                                         '1)))))
                            (_%loop91711%_
                             (let ((_%next-probe91730%_
                                    (fx+ _%start91707%_
                                         _%i91716%_
                                         (fx* _%i91716%_ _%i91716%_))))
                               (##fxmodulo _%next-probe91730%_ _%size91701%_))
                             (##fx+ _%i91716%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint91669%_ _%seed91671%_)
        (make-raw-table__% _%size-hint91669%_ eqv-hash eqv? _%seed91671%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint91677%_ '#f) (_%seed91679%_ '0))
          (make-eqv-table__% _%size-hint91677%_ _%seed91679%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint91681%_)
        (let ((_%seed91683%_ '0))
          (make-eqv-table__% _%size-hint91681%_ _%seed91683%_))))
    (define make-eqv-table
      (lambda _g92246_
        (let ((_g92245_ (##length _g92246_)))
          (cond ((##fx= _g92245_ 0) (apply make-eqv-table__0 _g92246_))
                ((##fx= _g92245_ 1) (apply make-eqv-table__1 _g92246_))
                ((##fx= _g92245_ 2) (apply make-eqv-table__% _g92246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g92246_))))))
    (define eqv-table-ref
      (lambda (_%tab91622%_ _%key91623%_ _%default91624%_)
        (let ((_%table91626%_ (&raw-table-table _%tab91622%_))
              (_%seed91627%_ (&raw-table-seed _%tab91622%_)))
          (let* ((_%h91629%_ (fxxor (eqv-hash _%key91623%_) _%seed91627%_))
                 (_%size91632%_ (vector-length _%table91626%_))
                 (_%entries91635%_ (##fxquotient _%size91632%_ '2))
                 (_%start91638%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91629%_ _%entries91635%_)
                   '1)))
            (let _%loop91642%_ ((_%probe91645%_ _%start91638%_)
                                (_%i91647%_ '1)
                                (_%deleted91649%_ '#f))
              (let ((_%k91652%_ (vector-ref _%table91626%_ _%probe91645%_)))
                (if (eq? _%k91652%_ (macro-unused-obj))
                    _%default91624%_
                    (if (eq? _%k91652%_ (macro-deleted-obj))
                        (_%loop91642%_
                         (let ((_%next-probe91657%_
                                (fx+ _%start91638%_
                                     _%i91647%_
                                     (fx* _%i91647%_ _%i91647%_))))
                           (##fxmodulo _%next-probe91657%_ _%size91632%_))
                         (##fx+ _%i91647%_ '1)
                         (let ((_%$e91660%_ _%deleted91649%_))
                           (if _%$e91660%_ _%$e91660%_ _%probe91645%_)))
                        (if (eqv? _%key91623%_ _%k91652%_)
                            (vector-ref
                             _%table91626%_
                             (##fx+ _%probe91645%_ '1))
                            (_%loop91642%_
                             (let ((_%next-probe91665%_
                                    (fx+ _%start91638%_
                                         _%i91647%_
                                         (fx* _%i91647%_ _%i91647%_))))
                               (##fxmodulo _%next-probe91665%_ _%size91632%_))
                             (##fx+ _%i91647%_ '1)
                             _%deleted91649%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab91618%_ _%key91619%_ _%value91620%_)
        (if (##fx< (&raw-table-free _%tab91618%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91618%_))
                    '4))
            (__raw-table-rehash! _%tab91618%_)
            '#!void)
        (__eqv-table-set! _%tab91618%_ _%key91619%_ _%value91620%_)))
    (define __eqv-table-set!
      (lambda (_%tab91569%_ _%key91570%_ _%value91571%_)
        (let ((_%table91574%_ (&raw-table-table _%tab91569%_))
              (_%seed91575%_ (&raw-table-seed _%tab91569%_)))
          (let* ((_%h91577%_ (fxxor (eqv-hash _%key91570%_) _%seed91575%_))
                 (_%size91580%_ (vector-length _%table91574%_))
                 (_%entries91583%_ (##fxquotient _%size91580%_ '2))
                 (_%start91586%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91577%_ _%entries91583%_)
                   '1)))
            (let _%loop91590%_ ((_%probe91593%_ _%start91586%_)
                                (_%i91595%_ '1)
                                (_%deleted91597%_ '#f))
              (let ((_%k91600%_ (vector-ref _%table91574%_ _%probe91593%_)))
                (if (eq? _%k91600%_ (macro-unused-obj))
                    (if _%deleted91597%_
                        (begin
                          (vector-set!
                           _%table91574%_
                           _%deleted91597%_
                           _%key91570%_)
                          (vector-set!
                           _%table91574%_
                           (##fx+ _%deleted91597%_ '1)
                           _%value91571%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91569%_
                              (##fx+ (&raw-table-count _%tab91569%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91574%_
                           _%probe91593%_
                           _%key91570%_)
                          (vector-set!
                           _%table91574%_
                           (##fx+ _%probe91593%_ '1)
                           _%value91571%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91569%_
                              (##fx- (&raw-table-free _%tab91569%_) '1))
                             (&raw-table-count-set!
                              _%tab91569%_
                              (##fx+ (&raw-table-count _%tab91569%_) '1))))))
                    (if (eq? _%k91600%_ (macro-deleted-obj))
                        (_%loop91590%_
                         (let ((_%next-probe91607%_
                                (fx+ _%start91586%_
                                     _%i91595%_
                                     (fx* _%i91595%_ _%i91595%_))))
                           (##fxmodulo _%next-probe91607%_ _%size91580%_))
                         (##fx+ _%i91595%_ '1)
                         (let ((_%$e91610%_ _%deleted91597%_))
                           (if _%$e91610%_ _%$e91610%_ _%probe91593%_)))
                        (if (eqv? _%key91570%_ _%k91600%_)
                            (let ()
                              (vector-set!
                               _%table91574%_
                               _%probe91593%_
                               _%key91570%_)
                              (vector-set!
                               _%table91574%_
                               (##fx+ _%probe91593%_ '1)
                               _%value91571%_))
                            (_%loop91590%_
                             (let ((_%next-probe91615%_
                                    (fx+ _%start91586%_
                                         _%i91595%_
                                         (fx* _%i91595%_ _%i91595%_))))
                               (##fxmodulo _%next-probe91615%_ _%size91580%_))
                             (##fx+ _%i91595%_ '1)
                             _%deleted91597%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab91564%_
               _%key91565%_
               _%eqv-table-update!91566%_
               _%default91567%_)
        (if (##fx< (&raw-table-free _%tab91564%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91564%_))
                    '4))
            (__raw-table-rehash! _%tab91564%_)
            '#!void)
        (__eqv-table-update!
         _%tab91564%_
         _%key91565%_
         _%eqv-table-update!91566%_
         _%default91567%_)))
    (define __eqv-table-update!
      (lambda (_%tab91514%_
               _%key91515%_
               _%eqv-table-update!91516%_
               _%default91517%_)
        (let ((_%table91520%_ (&raw-table-table _%tab91514%_))
              (_%seed91521%_ (&raw-table-seed _%tab91514%_)))
          (let* ((_%h91523%_ (fxxor (eqv-hash _%key91515%_) _%seed91521%_))
                 (_%size91526%_ (vector-length _%table91520%_))
                 (_%entries91529%_ (##fxquotient _%size91526%_ '2))
                 (_%start91532%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91523%_ _%entries91529%_)
                   '1)))
            (let _%loop91536%_ ((_%probe91539%_ _%start91532%_)
                                (_%i91541%_ '1)
                                (_%deleted91543%_ '#f))
              (let ((_%k91546%_ (vector-ref _%table91520%_ _%probe91539%_)))
                (if (eq? _%k91546%_ (macro-unused-obj))
                    (if _%deleted91543%_
                        (begin
                          (vector-set!
                           _%table91520%_
                           _%deleted91543%_
                           _%key91515%_)
                          (vector-set!
                           _%table91520%_
                           (##fx+ _%deleted91543%_ '1)
                           (_%eqv-table-update!91516%_ _%default91517%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91514%_
                              (##fx+ (&raw-table-count _%tab91514%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91520%_
                           _%probe91539%_
                           _%key91515%_)
                          (vector-set!
                           _%table91520%_
                           (##fx+ _%probe91539%_ '1)
                           (_%eqv-table-update!91516%_ _%default91517%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91514%_
                              (##fx- (&raw-table-free _%tab91514%_) '1))
                             (&raw-table-count-set!
                              _%tab91514%_
                              (##fx+ (&raw-table-count _%tab91514%_) '1))))))
                    (if (eq? _%k91546%_ (macro-deleted-obj))
                        (_%loop91536%_
                         (let ((_%next-probe91553%_
                                (fx+ _%start91532%_
                                     _%i91541%_
                                     (fx* _%i91541%_ _%i91541%_))))
                           (##fxmodulo _%next-probe91553%_ _%size91526%_))
                         (##fx+ _%i91541%_ '1)
                         (let ((_%$e91556%_ _%deleted91543%_))
                           (if _%$e91556%_ _%$e91556%_ _%probe91539%_)))
                        (if (eqv? _%key91515%_ _%k91546%_)
                            (let ()
                              (vector-set!
                               _%table91520%_
                               _%probe91539%_
                               _%key91515%_)
                              (vector-set!
                               _%table91520%_
                               (##fx+ _%probe91539%_ '1)
                               (_%eqv-table-update!91516%_
                                (vector-ref
                                 _%table91520%_
                                 (##fx+ _%probe91539%_ '1)))))
                            (_%loop91536%_
                             (let ((_%next-probe91561%_
                                    (fx+ _%start91532%_
                                         _%i91541%_
                                         (fx* _%i91541%_ _%i91541%_))))
                               (##fxmodulo _%next-probe91561%_ _%size91526%_))
                             (##fx+ _%i91541%_ '1)
                             _%deleted91543%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab91469%_ _%key91471%_)
        (let ((_%table91474%_ (&raw-table-table _%tab91469%_))
              (_%seed91476%_ (&raw-table-seed _%tab91469%_)))
          (let* ((_%h91479%_ (fxxor (eqv-hash _%key91471%_) _%seed91476%_))
                 (_%size91482%_ (vector-length _%table91474%_))
                 (_%entries91485%_ (##fxquotient _%size91482%_ '2))
                 (_%start91488%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91479%_ _%entries91485%_)
                   '1)))
            (let _%loop91492%_ ((_%probe91495%_ _%start91488%_)
                                (_%i91497%_ '1))
              (let ((_%k91500%_ (vector-ref _%table91474%_ _%probe91495%_)))
                (if (eq? _%k91500%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91500%_ (macro-deleted-obj))
                        (_%loop91492%_
                         (let ((_%next-probe91505%_
                                (fx+ _%start91488%_
                                     _%i91497%_
                                     (fx* _%i91497%_ _%i91497%_))))
                           (##fxmodulo _%next-probe91505%_ _%size91482%_))
                         (##fx+ _%i91497%_ '1))
                        (if (eqv? _%key91471%_ _%k91500%_)
                            (let ()
                              (vector-set!
                               _%table91474%_
                               _%probe91495%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91474%_
                               (##fx+ _%probe91495%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91469%_
                                  (##fx- (&raw-table-count _%tab91469%_)
                                         '1)))))
                            (_%loop91492%_
                             (let ((_%next-probe91511%_
                                    (fx+ _%start91488%_
                                         _%i91497%_
                                         (fx* _%i91497%_ _%i91497%_))))
                               (##fxmodulo _%next-probe91511%_ _%size91482%_))
                             (##fx+ _%i91497%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint91450%_ _%seed91452%_)
        (make-raw-table__%
         _%size-hint91450%_
         symbolic-hash
         eq?
         _%seed91452%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint91458%_ '#f) (_%seed91460%_ '0))
          (make-symbolic-table__% _%size-hint91458%_ _%seed91460%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint91462%_)
        (let ((_%seed91464%_ '0))
          (make-symbolic-table__% _%size-hint91462%_ _%seed91464%_))))
    (define make-symbolic-table
      (lambda _g92248_
        (let ((_g92247_ (##length _g92248_)))
          (cond ((##fx= _g92247_ 0) (apply make-symbolic-table__0 _g92248_))
                ((##fx= _g92247_ 1) (apply make-symbolic-table__1 _g92248_))
                ((##fx= _g92247_ 2) (apply make-symbolic-table__% _g92248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g92248_))))))
    (define symbolic-table-ref
      (lambda (_%tab91403%_ _%key91404%_ _%default91405%_)
        (let ((_%table91407%_ (&raw-table-table _%tab91403%_))
              (_%seed91408%_ (&raw-table-seed _%tab91403%_)))
          (let* ((_%h91410%_
                  (fxxor (symbolic-hash _%key91404%_) _%seed91408%_))
                 (_%size91413%_ (vector-length _%table91407%_))
                 (_%entries91416%_ (##fxquotient _%size91413%_ '2))
                 (_%start91419%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91410%_ _%entries91416%_)
                   '1)))
            (let _%loop91423%_ ((_%probe91426%_ _%start91419%_)
                                (_%i91428%_ '1)
                                (_%deleted91430%_ '#f))
              (let ((_%k91433%_ (vector-ref _%table91407%_ _%probe91426%_)))
                (if (eq? _%k91433%_ (macro-unused-obj))
                    _%default91405%_
                    (if (eq? _%k91433%_ (macro-deleted-obj))
                        (_%loop91423%_
                         (let ((_%next-probe91438%_
                                (fx+ _%start91419%_
                                     _%i91428%_
                                     (fx* _%i91428%_ _%i91428%_))))
                           (##fxmodulo _%next-probe91438%_ _%size91413%_))
                         (##fx+ _%i91428%_ '1)
                         (let ((_%$e91441%_ _%deleted91430%_))
                           (if _%$e91441%_ _%$e91441%_ _%probe91426%_)))
                        (if (eq? _%key91404%_ _%k91433%_)
                            (vector-ref
                             _%table91407%_
                             (##fx+ _%probe91426%_ '1))
                            (_%loop91423%_
                             (let ((_%next-probe91446%_
                                    (fx+ _%start91419%_
                                         _%i91428%_
                                         (fx* _%i91428%_ _%i91428%_))))
                               (##fxmodulo _%next-probe91446%_ _%size91413%_))
                             (##fx+ _%i91428%_ '1)
                             _%deleted91430%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab91399%_ _%key91400%_ _%value91401%_)
        (if (##fx< (&raw-table-free _%tab91399%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91399%_))
                    '4))
            (__raw-table-rehash! _%tab91399%_)
            '#!void)
        (__symbolic-table-set! _%tab91399%_ _%key91400%_ _%value91401%_)))
    (define __symbolic-table-set!
      (lambda (_%tab91350%_ _%key91351%_ _%value91352%_)
        (let ((_%table91355%_ (&raw-table-table _%tab91350%_))
              (_%seed91356%_ (&raw-table-seed _%tab91350%_)))
          (let* ((_%h91358%_
                  (fxxor (symbolic-hash _%key91351%_) _%seed91356%_))
                 (_%size91361%_ (vector-length _%table91355%_))
                 (_%entries91364%_ (##fxquotient _%size91361%_ '2))
                 (_%start91367%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91358%_ _%entries91364%_)
                   '1)))
            (let _%loop91371%_ ((_%probe91374%_ _%start91367%_)
                                (_%i91376%_ '1)
                                (_%deleted91378%_ '#f))
              (let ((_%k91381%_ (vector-ref _%table91355%_ _%probe91374%_)))
                (if (eq? _%k91381%_ (macro-unused-obj))
                    (if _%deleted91378%_
                        (begin
                          (vector-set!
                           _%table91355%_
                           _%deleted91378%_
                           _%key91351%_)
                          (vector-set!
                           _%table91355%_
                           (##fx+ _%deleted91378%_ '1)
                           _%value91352%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91350%_
                              (##fx+ (&raw-table-count _%tab91350%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91355%_
                           _%probe91374%_
                           _%key91351%_)
                          (vector-set!
                           _%table91355%_
                           (##fx+ _%probe91374%_ '1)
                           _%value91352%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91350%_
                              (##fx- (&raw-table-free _%tab91350%_) '1))
                             (&raw-table-count-set!
                              _%tab91350%_
                              (##fx+ (&raw-table-count _%tab91350%_) '1))))))
                    (if (eq? _%k91381%_ (macro-deleted-obj))
                        (_%loop91371%_
                         (let ((_%next-probe91388%_
                                (fx+ _%start91367%_
                                     _%i91376%_
                                     (fx* _%i91376%_ _%i91376%_))))
                           (##fxmodulo _%next-probe91388%_ _%size91361%_))
                         (##fx+ _%i91376%_ '1)
                         (let ((_%$e91391%_ _%deleted91378%_))
                           (if _%$e91391%_ _%$e91391%_ _%probe91374%_)))
                        (if (eq? _%key91351%_ _%k91381%_)
                            (let ()
                              (vector-set!
                               _%table91355%_
                               _%probe91374%_
                               _%key91351%_)
                              (vector-set!
                               _%table91355%_
                               (##fx+ _%probe91374%_ '1)
                               _%value91352%_))
                            (_%loop91371%_
                             (let ((_%next-probe91396%_
                                    (fx+ _%start91367%_
                                         _%i91376%_
                                         (fx* _%i91376%_ _%i91376%_))))
                               (##fxmodulo _%next-probe91396%_ _%size91361%_))
                             (##fx+ _%i91376%_ '1)
                             _%deleted91378%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab91345%_
               _%key91346%_
               _%symbolic-table-update!91347%_
               _%default91348%_)
        (if (##fx< (&raw-table-free _%tab91345%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91345%_))
                    '4))
            (__raw-table-rehash! _%tab91345%_)
            '#!void)
        (__symbolic-table-update!
         _%tab91345%_
         _%key91346%_
         _%symbolic-table-update!91347%_
         _%default91348%_)))
    (define __symbolic-table-update!
      (lambda (_%tab91295%_
               _%key91296%_
               _%symbolic-table-update!91297%_
               _%default91298%_)
        (let ((_%table91301%_ (&raw-table-table _%tab91295%_))
              (_%seed91302%_ (&raw-table-seed _%tab91295%_)))
          (let* ((_%h91304%_
                  (fxxor (symbolic-hash _%key91296%_) _%seed91302%_))
                 (_%size91307%_ (vector-length _%table91301%_))
                 (_%entries91310%_ (##fxquotient _%size91307%_ '2))
                 (_%start91313%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91304%_ _%entries91310%_)
                   '1)))
            (let _%loop91317%_ ((_%probe91320%_ _%start91313%_)
                                (_%i91322%_ '1)
                                (_%deleted91324%_ '#f))
              (let ((_%k91327%_ (vector-ref _%table91301%_ _%probe91320%_)))
                (if (eq? _%k91327%_ (macro-unused-obj))
                    (if _%deleted91324%_
                        (begin
                          (vector-set!
                           _%table91301%_
                           _%deleted91324%_
                           _%key91296%_)
                          (vector-set!
                           _%table91301%_
                           (##fx+ _%deleted91324%_ '1)
                           (_%symbolic-table-update!91297%_ _%default91298%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91295%_
                              (##fx+ (&raw-table-count _%tab91295%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91301%_
                           _%probe91320%_
                           _%key91296%_)
                          (vector-set!
                           _%table91301%_
                           (##fx+ _%probe91320%_ '1)
                           (_%symbolic-table-update!91297%_ _%default91298%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91295%_
                              (##fx- (&raw-table-free _%tab91295%_) '1))
                             (&raw-table-count-set!
                              _%tab91295%_
                              (##fx+ (&raw-table-count _%tab91295%_) '1))))))
                    (if (eq? _%k91327%_ (macro-deleted-obj))
                        (_%loop91317%_
                         (let ((_%next-probe91334%_
                                (fx+ _%start91313%_
                                     _%i91322%_
                                     (fx* _%i91322%_ _%i91322%_))))
                           (##fxmodulo _%next-probe91334%_ _%size91307%_))
                         (##fx+ _%i91322%_ '1)
                         (let ((_%$e91337%_ _%deleted91324%_))
                           (if _%$e91337%_ _%$e91337%_ _%probe91320%_)))
                        (if (eq? _%key91296%_ _%k91327%_)
                            (let ()
                              (vector-set!
                               _%table91301%_
                               _%probe91320%_
                               _%key91296%_)
                              (vector-set!
                               _%table91301%_
                               (##fx+ _%probe91320%_ '1)
                               (_%symbolic-table-update!91297%_
                                (vector-ref
                                 _%table91301%_
                                 (##fx+ _%probe91320%_ '1)))))
                            (_%loop91317%_
                             (let ((_%next-probe91342%_
                                    (fx+ _%start91313%_
                                         _%i91322%_
                                         (fx* _%i91322%_ _%i91322%_))))
                               (##fxmodulo _%next-probe91342%_ _%size91307%_))
                             (##fx+ _%i91322%_ '1)
                             _%deleted91324%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab91250%_ _%key91252%_)
        (let ((_%table91255%_ (&raw-table-table _%tab91250%_))
              (_%seed91257%_ (&raw-table-seed _%tab91250%_)))
          (let* ((_%h91260%_
                  (fxxor (symbolic-hash _%key91252%_) _%seed91257%_))
                 (_%size91263%_ (vector-length _%table91255%_))
                 (_%entries91266%_ (##fxquotient _%size91263%_ '2))
                 (_%start91269%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91260%_ _%entries91266%_)
                   '1)))
            (let _%loop91273%_ ((_%probe91276%_ _%start91269%_)
                                (_%i91278%_ '1))
              (let ((_%k91281%_ (vector-ref _%table91255%_ _%probe91276%_)))
                (if (eq? _%k91281%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91281%_ (macro-deleted-obj))
                        (_%loop91273%_
                         (let ((_%next-probe91286%_
                                (fx+ _%start91269%_
                                     _%i91278%_
                                     (fx* _%i91278%_ _%i91278%_))))
                           (##fxmodulo _%next-probe91286%_ _%size91263%_))
                         (##fx+ _%i91278%_ '1))
                        (if (eq? _%key91252%_ _%k91281%_)
                            (let ()
                              (vector-set!
                               _%table91255%_
                               _%probe91276%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91255%_
                               (##fx+ _%probe91276%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91250%_
                                  (##fx- (&raw-table-count _%tab91250%_)
                                         '1)))))
                            (_%loop91273%_
                             (let ((_%next-probe91292%_
                                    (fx+ _%start91269%_
                                         _%i91278%_
                                         (fx* _%i91278%_ _%i91278%_))))
                               (##fxmodulo _%next-probe91292%_ _%size91263%_))
                             (##fx+ _%i91278%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint91231%_ _%seed91233%_)
        (make-raw-table__%
         _%size-hint91231%_
         string-hash
         ##string=?
         _%seed91233%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint91239%_ '#f) (_%seed91241%_ '0))
          (make-string-table__% _%size-hint91239%_ _%seed91241%_))))
    (define make-string-table__1
      (lambda (_%size-hint91243%_)
        (let ((_%seed91245%_ '0))
          (make-string-table__% _%size-hint91243%_ _%seed91245%_))))
    (define make-string-table
      (lambda _g92250_
        (let ((_g92249_ (##length _g92250_)))
          (cond ((##fx= _g92249_ 0) (apply make-string-table__0 _g92250_))
                ((##fx= _g92249_ 1) (apply make-string-table__1 _g92250_))
                ((##fx= _g92249_ 2) (apply make-string-table__% _g92250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g92250_))))))
    (define string-table-ref
      (lambda (_%tab91184%_ _%key91185%_ _%default91186%_)
        (let ((_%table91188%_ (&raw-table-table _%tab91184%_))
              (_%seed91189%_ (&raw-table-seed _%tab91184%_)))
          (let* ((_%h91191%_
                  (fxxor (##string=?-hash _%key91185%_) _%seed91189%_))
                 (_%size91194%_ (vector-length _%table91188%_))
                 (_%entries91197%_ (##fxquotient _%size91194%_ '2))
                 (_%start91200%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91191%_ _%entries91197%_)
                   '1)))
            (let _%loop91204%_ ((_%probe91207%_ _%start91200%_)
                                (_%i91209%_ '1)
                                (_%deleted91211%_ '#f))
              (let ((_%k91214%_ (vector-ref _%table91188%_ _%probe91207%_)))
                (if (eq? _%k91214%_ (macro-unused-obj))
                    _%default91186%_
                    (if (eq? _%k91214%_ (macro-deleted-obj))
                        (_%loop91204%_
                         (let ((_%next-probe91219%_
                                (fx+ _%start91200%_
                                     _%i91209%_
                                     (fx* _%i91209%_ _%i91209%_))))
                           (##fxmodulo _%next-probe91219%_ _%size91194%_))
                         (##fx+ _%i91209%_ '1)
                         (let ((_%$e91222%_ _%deleted91211%_))
                           (if _%$e91222%_ _%$e91222%_ _%probe91207%_)))
                        (if (##string=? _%key91185%_ _%k91214%_)
                            (vector-ref
                             _%table91188%_
                             (##fx+ _%probe91207%_ '1))
                            (_%loop91204%_
                             (let ((_%next-probe91227%_
                                    (fx+ _%start91200%_
                                         _%i91209%_
                                         (fx* _%i91209%_ _%i91209%_))))
                               (##fxmodulo _%next-probe91227%_ _%size91194%_))
                             (##fx+ _%i91209%_ '1)
                             _%deleted91211%_))))))))))
    (define string-table-set!
      (lambda (_%tab91180%_ _%key91181%_ _%value91182%_)
        (if (##fx< (&raw-table-free _%tab91180%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91180%_))
                    '4))
            (__raw-table-rehash! _%tab91180%_)
            '#!void)
        (__string-table-set! _%tab91180%_ _%key91181%_ _%value91182%_)))
    (define __string-table-set!
      (lambda (_%tab91131%_ _%key91132%_ _%value91133%_)
        (let ((_%table91136%_ (&raw-table-table _%tab91131%_))
              (_%seed91137%_ (&raw-table-seed _%tab91131%_)))
          (let* ((_%h91139%_
                  (fxxor (##string=?-hash _%key91132%_) _%seed91137%_))
                 (_%size91142%_ (vector-length _%table91136%_))
                 (_%entries91145%_ (##fxquotient _%size91142%_ '2))
                 (_%start91148%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91139%_ _%entries91145%_)
                   '1)))
            (let _%loop91152%_ ((_%probe91155%_ _%start91148%_)
                                (_%i91157%_ '1)
                                (_%deleted91159%_ '#f))
              (let ((_%k91162%_ (vector-ref _%table91136%_ _%probe91155%_)))
                (if (eq? _%k91162%_ (macro-unused-obj))
                    (if _%deleted91159%_
                        (begin
                          (vector-set!
                           _%table91136%_
                           _%deleted91159%_
                           _%key91132%_)
                          (vector-set!
                           _%table91136%_
                           (##fx+ _%deleted91159%_ '1)
                           _%value91133%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91131%_
                              (##fx+ (&raw-table-count _%tab91131%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91136%_
                           _%probe91155%_
                           _%key91132%_)
                          (vector-set!
                           _%table91136%_
                           (##fx+ _%probe91155%_ '1)
                           _%value91133%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91131%_
                              (##fx- (&raw-table-free _%tab91131%_) '1))
                             (&raw-table-count-set!
                              _%tab91131%_
                              (##fx+ (&raw-table-count _%tab91131%_) '1))))))
                    (if (eq? _%k91162%_ (macro-deleted-obj))
                        (_%loop91152%_
                         (let ((_%next-probe91169%_
                                (fx+ _%start91148%_
                                     _%i91157%_
                                     (fx* _%i91157%_ _%i91157%_))))
                           (##fxmodulo _%next-probe91169%_ _%size91142%_))
                         (##fx+ _%i91157%_ '1)
                         (let ((_%$e91172%_ _%deleted91159%_))
                           (if _%$e91172%_ _%$e91172%_ _%probe91155%_)))
                        (if (##string=? _%key91132%_ _%k91162%_)
                            (let ()
                              (vector-set!
                               _%table91136%_
                               _%probe91155%_
                               _%key91132%_)
                              (vector-set!
                               _%table91136%_
                               (##fx+ _%probe91155%_ '1)
                               _%value91133%_))
                            (_%loop91152%_
                             (let ((_%next-probe91177%_
                                    (fx+ _%start91148%_
                                         _%i91157%_
                                         (fx* _%i91157%_ _%i91157%_))))
                               (##fxmodulo _%next-probe91177%_ _%size91142%_))
                             (##fx+ _%i91157%_ '1)
                             _%deleted91159%_))))))))))
    (define string-table-update!
      (lambda (_%tab91126%_
               _%key91127%_
               _%string-table-update!91128%_
               _%default91129%_)
        (if (##fx< (&raw-table-free _%tab91126%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91126%_))
                    '4))
            (__raw-table-rehash! _%tab91126%_)
            '#!void)
        (__string-table-update!
         _%tab91126%_
         _%key91127%_
         _%string-table-update!91128%_
         _%default91129%_)))
    (define __string-table-update!
      (lambda (_%tab91076%_
               _%key91077%_
               _%string-table-update!91078%_
               _%default91079%_)
        (let ((_%table91082%_ (&raw-table-table _%tab91076%_))
              (_%seed91083%_ (&raw-table-seed _%tab91076%_)))
          (let* ((_%h91085%_
                  (fxxor (##string=?-hash _%key91077%_) _%seed91083%_))
                 (_%size91088%_ (vector-length _%table91082%_))
                 (_%entries91091%_ (##fxquotient _%size91088%_ '2))
                 (_%start91094%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91085%_ _%entries91091%_)
                   '1)))
            (let _%loop91098%_ ((_%probe91101%_ _%start91094%_)
                                (_%i91103%_ '1)
                                (_%deleted91105%_ '#f))
              (let ((_%k91108%_ (vector-ref _%table91082%_ _%probe91101%_)))
                (if (eq? _%k91108%_ (macro-unused-obj))
                    (if _%deleted91105%_
                        (begin
                          (vector-set!
                           _%table91082%_
                           _%deleted91105%_
                           _%key91077%_)
                          (vector-set!
                           _%table91082%_
                           (##fx+ _%deleted91105%_ '1)
                           (_%string-table-update!91078%_ _%default91079%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91076%_
                              (##fx+ (&raw-table-count _%tab91076%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91082%_
                           _%probe91101%_
                           _%key91077%_)
                          (vector-set!
                           _%table91082%_
                           (##fx+ _%probe91101%_ '1)
                           (_%string-table-update!91078%_ _%default91079%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91076%_
                              (##fx- (&raw-table-free _%tab91076%_) '1))
                             (&raw-table-count-set!
                              _%tab91076%_
                              (##fx+ (&raw-table-count _%tab91076%_) '1))))))
                    (if (eq? _%k91108%_ (macro-deleted-obj))
                        (_%loop91098%_
                         (let ((_%next-probe91115%_
                                (fx+ _%start91094%_
                                     _%i91103%_
                                     (fx* _%i91103%_ _%i91103%_))))
                           (##fxmodulo _%next-probe91115%_ _%size91088%_))
                         (##fx+ _%i91103%_ '1)
                         (let ((_%$e91118%_ _%deleted91105%_))
                           (if _%$e91118%_ _%$e91118%_ _%probe91101%_)))
                        (if (##string=? _%key91077%_ _%k91108%_)
                            (let ()
                              (vector-set!
                               _%table91082%_
                               _%probe91101%_
                               _%key91077%_)
                              (vector-set!
                               _%table91082%_
                               (##fx+ _%probe91101%_ '1)
                               (_%string-table-update!91078%_
                                (vector-ref
                                 _%table91082%_
                                 (##fx+ _%probe91101%_ '1)))))
                            (_%loop91098%_
                             (let ((_%next-probe91123%_
                                    (fx+ _%start91094%_
                                         _%i91103%_
                                         (fx* _%i91103%_ _%i91103%_))))
                               (##fxmodulo _%next-probe91123%_ _%size91088%_))
                             (##fx+ _%i91103%_ '1)
                             _%deleted91105%_))))))))))
    (define string-table-delete!
      (lambda (_%tab91031%_ _%key91033%_)
        (let ((_%table91036%_ (&raw-table-table _%tab91031%_))
              (_%seed91038%_ (&raw-table-seed _%tab91031%_)))
          (let* ((_%h91041%_
                  (fxxor (##string=?-hash _%key91033%_) _%seed91038%_))
                 (_%size91044%_ (vector-length _%table91036%_))
                 (_%entries91047%_ (##fxquotient _%size91044%_ '2))
                 (_%start91050%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91041%_ _%entries91047%_)
                   '1)))
            (let _%loop91054%_ ((_%probe91057%_ _%start91050%_)
                                (_%i91059%_ '1))
              (let ((_%k91062%_ (vector-ref _%table91036%_ _%probe91057%_)))
                (if (eq? _%k91062%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91062%_ (macro-deleted-obj))
                        (_%loop91054%_
                         (let ((_%next-probe91067%_
                                (fx+ _%start91050%_
                                     _%i91059%_
                                     (fx* _%i91059%_ _%i91059%_))))
                           (##fxmodulo _%next-probe91067%_ _%size91044%_))
                         (##fx+ _%i91059%_ '1))
                        (if (##string=? _%key91033%_ _%k91062%_)
                            (let ()
                              (vector-set!
                               _%table91036%_
                               _%probe91057%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91036%_
                               (##fx+ _%probe91057%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91031%_
                                  (##fx- (&raw-table-count _%tab91031%_)
                                         '1)))))
                            (_%loop91054%_
                             (let ((_%next-probe91073%_
                                    (fx+ _%start91050%_
                                         _%i91059%_
                                         (fx* _%i91059%_ _%i91059%_))))
                               (##fxmodulo _%next-probe91073%_ _%size91044%_))
                             (##fx+ _%i91059%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint91012%_ _%seed91014%_)
        (make-raw-table__%
         _%size-hint91012%_
         immediate-hash
         eq?
         _%seed91014%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint91020%_ '#f) (_%seed91022%_ '0))
          (make-immediate-table__% _%size-hint91020%_ _%seed91022%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint91024%_)
        (let ((_%seed91026%_ '0))
          (make-immediate-table__% _%size-hint91024%_ _%seed91026%_))))
    (define make-immediate-table
      (lambda _g92252_
        (let ((_g92251_ (##length _g92252_)))
          (cond ((##fx= _g92251_ 0) (apply make-immediate-table__0 _g92252_))
                ((##fx= _g92251_ 1) (apply make-immediate-table__1 _g92252_))
                ((##fx= _g92251_ 2) (apply make-immediate-table__% _g92252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g92252_))))))
    (define immediate-table-ref
      (lambda (_%tab90965%_ _%key90966%_ _%default90967%_)
        (let ((_%table90969%_ (&raw-table-table _%tab90965%_))
              (_%seed90970%_ (&raw-table-seed _%tab90965%_)))
          (let* ((_%h90972%_
                  (fxxor (immediate-hash _%key90966%_) _%seed90970%_))
                 (_%size90975%_ (vector-length _%table90969%_))
                 (_%entries90978%_ (##fxquotient _%size90975%_ '2))
                 (_%start90981%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90972%_ _%entries90978%_)
                   '1)))
            (let _%loop90985%_ ((_%probe90988%_ _%start90981%_)
                                (_%i90990%_ '1)
                                (_%deleted90992%_ '#f))
              (let ((_%k90995%_ (vector-ref _%table90969%_ _%probe90988%_)))
                (if (eq? _%k90995%_ (macro-unused-obj))
                    _%default90967%_
                    (if (eq? _%k90995%_ (macro-deleted-obj))
                        (_%loop90985%_
                         (let ((_%next-probe91000%_
                                (fx+ _%start90981%_
                                     _%i90990%_
                                     (fx* _%i90990%_ _%i90990%_))))
                           (##fxmodulo _%next-probe91000%_ _%size90975%_))
                         (##fx+ _%i90990%_ '1)
                         (let ((_%$e91003%_ _%deleted90992%_))
                           (if _%$e91003%_ _%$e91003%_ _%probe90988%_)))
                        (if (eq? _%key90966%_ _%k90995%_)
                            (vector-ref
                             _%table90969%_
                             (##fx+ _%probe90988%_ '1))
                            (_%loop90985%_
                             (let ((_%next-probe91008%_
                                    (fx+ _%start90981%_
                                         _%i90990%_
                                         (fx* _%i90990%_ _%i90990%_))))
                               (##fxmodulo _%next-probe91008%_ _%size90975%_))
                             (##fx+ _%i90990%_ '1)
                             _%deleted90992%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab90961%_ _%key90962%_ _%value90963%_)
        (if (##fx< (&raw-table-free _%tab90961%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90961%_))
                    '4))
            (__raw-table-rehash! _%tab90961%_)
            '#!void)
        (__immediate-table-set! _%tab90961%_ _%key90962%_ _%value90963%_)))
    (define __immediate-table-set!
      (lambda (_%tab90912%_ _%key90913%_ _%value90914%_)
        (let ((_%table90917%_ (&raw-table-table _%tab90912%_))
              (_%seed90918%_ (&raw-table-seed _%tab90912%_)))
          (let* ((_%h90920%_
                  (fxxor (immediate-hash _%key90913%_) _%seed90918%_))
                 (_%size90923%_ (vector-length _%table90917%_))
                 (_%entries90926%_ (##fxquotient _%size90923%_ '2))
                 (_%start90929%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90920%_ _%entries90926%_)
                   '1)))
            (let _%loop90933%_ ((_%probe90936%_ _%start90929%_)
                                (_%i90938%_ '1)
                                (_%deleted90940%_ '#f))
              (let ((_%k90943%_ (vector-ref _%table90917%_ _%probe90936%_)))
                (if (eq? _%k90943%_ (macro-unused-obj))
                    (if _%deleted90940%_
                        (begin
                          (vector-set!
                           _%table90917%_
                           _%deleted90940%_
                           _%key90913%_)
                          (vector-set!
                           _%table90917%_
                           (##fx+ _%deleted90940%_ '1)
                           _%value90914%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90912%_
                              (##fx+ (&raw-table-count _%tab90912%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90917%_
                           _%probe90936%_
                           _%key90913%_)
                          (vector-set!
                           _%table90917%_
                           (##fx+ _%probe90936%_ '1)
                           _%value90914%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90912%_
                              (##fx- (&raw-table-free _%tab90912%_) '1))
                             (&raw-table-count-set!
                              _%tab90912%_
                              (##fx+ (&raw-table-count _%tab90912%_) '1))))))
                    (if (eq? _%k90943%_ (macro-deleted-obj))
                        (_%loop90933%_
                         (let ((_%next-probe90950%_
                                (fx+ _%start90929%_
                                     _%i90938%_
                                     (fx* _%i90938%_ _%i90938%_))))
                           (##fxmodulo _%next-probe90950%_ _%size90923%_))
                         (##fx+ _%i90938%_ '1)
                         (let ((_%$e90953%_ _%deleted90940%_))
                           (if _%$e90953%_ _%$e90953%_ _%probe90936%_)))
                        (if (eq? _%key90913%_ _%k90943%_)
                            (let ()
                              (vector-set!
                               _%table90917%_
                               _%probe90936%_
                               _%key90913%_)
                              (vector-set!
                               _%table90917%_
                               (##fx+ _%probe90936%_ '1)
                               _%value90914%_))
                            (_%loop90933%_
                             (let ((_%next-probe90958%_
                                    (fx+ _%start90929%_
                                         _%i90938%_
                                         (fx* _%i90938%_ _%i90938%_))))
                               (##fxmodulo _%next-probe90958%_ _%size90923%_))
                             (##fx+ _%i90938%_ '1)
                             _%deleted90940%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab90907%_
               _%key90908%_
               _%immediate-table-update!90909%_
               _%default90910%_)
        (if (##fx< (&raw-table-free _%tab90907%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90907%_))
                    '4))
            (__raw-table-rehash! _%tab90907%_)
            '#!void)
        (__immediate-table-update!
         _%tab90907%_
         _%key90908%_
         _%immediate-table-update!90909%_
         _%default90910%_)))
    (define __immediate-table-update!
      (lambda (_%tab90857%_
               _%key90858%_
               _%immediate-table-update!90859%_
               _%default90860%_)
        (let ((_%table90863%_ (&raw-table-table _%tab90857%_))
              (_%seed90864%_ (&raw-table-seed _%tab90857%_)))
          (let* ((_%h90866%_
                  (fxxor (immediate-hash _%key90858%_) _%seed90864%_))
                 (_%size90869%_ (vector-length _%table90863%_))
                 (_%entries90872%_ (##fxquotient _%size90869%_ '2))
                 (_%start90875%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90866%_ _%entries90872%_)
                   '1)))
            (let _%loop90879%_ ((_%probe90882%_ _%start90875%_)
                                (_%i90884%_ '1)
                                (_%deleted90886%_ '#f))
              (let ((_%k90889%_ (vector-ref _%table90863%_ _%probe90882%_)))
                (if (eq? _%k90889%_ (macro-unused-obj))
                    (if _%deleted90886%_
                        (begin
                          (vector-set!
                           _%table90863%_
                           _%deleted90886%_
                           _%key90858%_)
                          (vector-set!
                           _%table90863%_
                           (##fx+ _%deleted90886%_ '1)
                           (_%immediate-table-update!90859%_ _%default90860%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90857%_
                              (##fx+ (&raw-table-count _%tab90857%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90863%_
                           _%probe90882%_
                           _%key90858%_)
                          (vector-set!
                           _%table90863%_
                           (##fx+ _%probe90882%_ '1)
                           (_%immediate-table-update!90859%_ _%default90860%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90857%_
                              (##fx- (&raw-table-free _%tab90857%_) '1))
                             (&raw-table-count-set!
                              _%tab90857%_
                              (##fx+ (&raw-table-count _%tab90857%_) '1))))))
                    (if (eq? _%k90889%_ (macro-deleted-obj))
                        (_%loop90879%_
                         (let ((_%next-probe90896%_
                                (fx+ _%start90875%_
                                     _%i90884%_
                                     (fx* _%i90884%_ _%i90884%_))))
                           (##fxmodulo _%next-probe90896%_ _%size90869%_))
                         (##fx+ _%i90884%_ '1)
                         (let ((_%$e90899%_ _%deleted90886%_))
                           (if _%$e90899%_ _%$e90899%_ _%probe90882%_)))
                        (if (eq? _%key90858%_ _%k90889%_)
                            (let ()
                              (vector-set!
                               _%table90863%_
                               _%probe90882%_
                               _%key90858%_)
                              (vector-set!
                               _%table90863%_
                               (##fx+ _%probe90882%_ '1)
                               (_%immediate-table-update!90859%_
                                (vector-ref
                                 _%table90863%_
                                 (##fx+ _%probe90882%_ '1)))))
                            (_%loop90879%_
                             (let ((_%next-probe90904%_
                                    (fx+ _%start90875%_
                                         _%i90884%_
                                         (fx* _%i90884%_ _%i90884%_))))
                               (##fxmodulo _%next-probe90904%_ _%size90869%_))
                             (##fx+ _%i90884%_ '1)
                             _%deleted90886%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab90812%_ _%key90814%_)
        (let ((_%table90817%_ (&raw-table-table _%tab90812%_))
              (_%seed90819%_ (&raw-table-seed _%tab90812%_)))
          (let* ((_%h90822%_
                  (fxxor (immediate-hash _%key90814%_) _%seed90819%_))
                 (_%size90825%_ (vector-length _%table90817%_))
                 (_%entries90828%_ (##fxquotient _%size90825%_ '2))
                 (_%start90831%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90822%_ _%entries90828%_)
                   '1)))
            (let _%loop90835%_ ((_%probe90838%_ _%start90831%_)
                                (_%i90840%_ '1))
              (let ((_%k90843%_ (vector-ref _%table90817%_ _%probe90838%_)))
                (if (eq? _%k90843%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90843%_ (macro-deleted-obj))
                        (_%loop90835%_
                         (let ((_%next-probe90848%_
                                (fx+ _%start90831%_
                                     _%i90840%_
                                     (fx* _%i90840%_ _%i90840%_))))
                           (##fxmodulo _%next-probe90848%_ _%size90825%_))
                         (##fx+ _%i90840%_ '1))
                        (if (eq? _%key90814%_ _%k90843%_)
                            (let ()
                              (vector-set!
                               _%table90817%_
                               _%probe90838%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90817%_
                               (##fx+ _%probe90838%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90812%_
                                  (##fx- (&raw-table-count _%tab90812%_)
                                         '1)))))
                            (_%loop90835%_
                             (let ((_%next-probe90854%_
                                    (fx+ _%start90831%_
                                         _%i90840%_
                                         (fx* _%i90840%_ _%i90840%_))))
                               (##fxmodulo _%next-probe90854%_ _%size90825%_))
                             (##fx+ _%i90840%_ '1)))))))))))
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
      (lambda (_%tab90810%_)
        (##unchecked-structure-ref
         _%tab90810%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab90808%_)
        (##unchecked-structure-ref
         _%tab90808%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab90805%_ _%val90806%_)
        (##unchecked-structure-set!
         _%tab90805%_
         _%val90806%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab90802%_ _%val90803%_)
        (##unchecked-structure-set!
         _%tab90802%_
         _%val90803%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint90778%_ _%klass90779%_ _%flags90780%_)
        (let ((_%gcht90782%_
               (__gc-table-new
                (if (fixnum? _%size-hint90778%_) _%size-hint90778%_ '16)
                _%flags90780%_)))
          (##structure _%klass90779%_ _%gcht90782%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint90787%_)
        (let* ((_%klass90789%_ __gc-table::t) (_%flags90791%_ '0))
          (make-gc-table__%
           _%size-hint90787%_
           _%klass90789%_
           _%flags90791%_))))
    (define make-gc-table__1
      (lambda (_%size-hint90793%_ _%klass90794%_)
        (let ((_%flags90796%_ '0))
          (make-gc-table__%
           _%size-hint90793%_
           _%klass90794%_
           _%flags90796%_))))
    (define make-gc-table
      (lambda _g92254_
        (let ((_g92253_ (##length _g92254_)))
          (cond ((##fx= _g92253_ 1) (apply make-gc-table__0 _g92254_))
                ((##fx= _g92253_ 2) (apply make-gc-table__1 _g92254_))
                ((##fx= _g92253_ 3) (apply make-gc-table__% _g92254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g92254_))))))
    (define __gc-table-immediate
      (lambda (_%tab90769%_)
        (let ((_%$e90771%_ (&gc-table-immediate _%tab90769%_)))
          (if _%$e90771%_
              _%$e90771%_
              (let ((_%immediate90775%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab90769%_ _%immediate90775%_)
                _%immediate90775%_)))))
    (define __gc-table-new
      (lambda (_%size90759%_ _%flags90760%_)
        (let* ((_%flags90762%_
                (##fxand _%flags90760%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags90764%_
                (fxior _%flags90762%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht90766%_
                (##gc-hash-table-allocate
                 _%size90759%_
                 _%flags90764%_
                 __gc-table-loads)))
          _%gcht90766%_)))
    (define __gc-table-e
      (lambda (_%tab90754%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht90757%_ (&gc-table-gcht _%tab90754%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht90757%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht90757%_
              (begin
                (__gc-table-rehash! _%tab90754%_)
                (&gc-table-gcht _%tab90754%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab90745%_)
        (let* ((_%old-table90747%_ (&gc-table-gcht _%tab90745%_))
               (_%new-table90749%_
                (##gc-hash-table-resize! _%old-table90747%_ __gc-table-loads))
               (_%gcht90751%_
                (##gc-hash-table-rehash!
                 _%old-table90747%_
                 _%new-table90749%_)))
          (&gc-table-gcht-set! _%tab90745%_ _%gcht90751%_))))
    (define gc-table-ref
      (lambda (_%tab90729%_ _%key90730%_ _%default90731%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90730%_)
            (let* ((_%gcht90735%_ (__gc-table-e _%tab90729%_))
                   (_%value90737%_
                    (##gc-hash-table-ref _%gcht90735%_ _%key90730%_)))
              (if (eq? _%value90737%_ (macro-unused-obj))
                  _%default90731%_
                  _%value90737%_))
            (let ((_%$e90739%_ (&gc-table-immediate _%tab90729%_)))
              (if _%$e90739%_
                  ((lambda (_%immediate90742%_)
                     (immediate-table-ref
                      _%immediate90742%_
                      _%key90730%_
                      _%default90731%_))
                   _%$e90739%_)
                  _%default90731%_)))))
    (define gc-table-set!
      (lambda (_%tab90722%_ _%key90723%_ _%value90724%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90723%_)
            (let ((_%gcht90727%_ (__gc-table-e _%tab90722%_)))
              (if (##gc-hash-table-set!
                   _%gcht90727%_
                   _%key90723%_
                   _%value90724%_)
                  (begin
                    (__gc-table-rehash! _%tab90722%_)
                    (gc-table-set! _%tab90722%_ _%key90723%_ _%value90724%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab90722%_)
             _%key90723%_
             _%value90724%_))))
    (define gc-table-update!
      (lambda (_%tab90715%_ _%key90716%_ _%update90717%_ _%default90718%_)
        (if (##mem-allocated? _%key90716%_)
            (let ((_%value90720%_
                   (gc-table-ref _%tab90715%_ _%key90716%_ _%default90718%_)))
              (gc-table-set!
               _%tab90715%_
               _%key90716%_
               (_%update90717%_ _%value90720%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab90715%_)
             _%key90716%_
             _%update90717%_
             _%default90718%_))))
    (define gc-table-delete!
      (lambda (_%tab90703%_ _%key90704%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90704%_)
            (let ((_%gcht90708%_ (__gc-table-e _%tab90703%_)))
              (if (##gc-hash-table-set!
                   _%gcht90708%_
                   _%key90704%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab90703%_)
                    (gc-table-delete! _%tab90703%_ _%key90704%_))
                  '#!void))
            (let ((_%$e90710%_ (&gc-table-immediate _%tab90703%_)))
              (if _%$e90710%_
                  ((lambda (_%immediate90713%_)
                     (immediate-table-delete! _%immediate90713%_ _%key90704%_))
                   _%$e90710%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab90684%_ _%proc90685%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht90688%_ (__gc-table-e _%tab90684%_)))
            (let _%loop90690%_ ((_%i90692%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i90692%_ (##vector-length _%gcht90688%_))
                  (let ((_%key90694%_ (##vector-ref _%gcht90688%_ _%i90692%_)))
                    (if (if (eq? _%key90694%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key90694%_ (macro-deleted-obj))))
                        (_%proc90685%_
                         _%key90694%_
                         (##vector-ref _%gcht90688%_ (##fx+ _%i90692%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop90690%_ (##fx+ _%i90692%_ '2))))
                  '#!void)))
          (let ((_%$e90698%_ (&gc-table-immediate _%tab90684%_)))
            (if _%$e90698%_
                ((lambda (_%immediate90701%_)
                   (raw-table-for-each _%immediate90701%_ _%proc90685%_))
                 _%$e90698%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab90672%_)
        (let* ((_%gcht90674%_ (__gc-table-e _%tab90672%_))
               (_%new-table90676%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht90674%_)
                 (macro-gc-hash-table-flags _%gcht90674%_)))
               (_%result90678%_
                (##structure
                 (##structure-type _%tab90672%_)
                 _%new-table90676%_
                 '#f)))
          (gc-table-for-each
           _%tab90672%_
           (lambda (_%k90681%_ _%v90682%_)
             (gc-table-set! _%result90678%_ _%k90681%_ _%v90682%_)))
          _%result90678%_)))
    (define gc-table-clear!
      (lambda (_%tab90665%_)
        (let* ((_%gcht90667%_ (__gc-table-e _%tab90665%_))
               (_%new-table90669%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht90667%_))))
          (&gc-table-gcht-set! _%tab90665%_ _%new-table90669%_)
          (&gc-table-immediate-set! _%tab90665%_ '#f))))
    (define gc-table-length
      (lambda (_%tab90657%_)
        (let ((_%gcht90659%_ (__gc-table-e _%tab90657%_)))
          (fx+ (macro-gc-hash-table-count _%gcht90659%_)
               (let ((_%$e90661%_ (&gc-table-immediate _%tab90657%_)))
                 (if _%$e90661%_ (&raw-table-count _%$e90661%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj90642%_)
        (declare (not interrupts-enabled))
        (let ((_%val90645%_ (gc-table-ref __object-eq-hash _%obj90642%_ '#f)))
          (if _%val90645%_
              _%val90645%_
              (let* ((_%mix90647%_ __object-eq-hash-next)
                     (_%ptr90649%_ (##type-cast _%obj90642%_ '0))
                     (_%h90651%_
                      (fxand (fxxor _%mix90647%_ _%ptr90649%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e90654%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e90654%_ _%$e90654%_ '0)))
                (gc-table-set! __object-eq-hash _%obj90642%_ _%h90651%_)
                _%h90651%_)))))))
