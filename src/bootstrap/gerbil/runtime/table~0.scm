(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712823025)
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
      (lambda (_%tab92238%_)
        (##unchecked-structure-ref
         _%tab92238%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab92236%_)
        (##unchecked-structure-ref
         _%tab92236%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab92234%_)
        (##unchecked-structure-ref
         _%tab92234%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab92232%_)
        (##unchecked-structure-ref
         _%tab92232%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab92230%_)
        (##unchecked-structure-ref
         _%tab92230%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab92228%_)
        (##unchecked-structure-ref
         _%tab92228%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab92225%_ _%val92226%_)
        (##unchecked-structure-set!
         _%tab92225%_
         _%val92226%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab92222%_ _%val92223%_)
        (##unchecked-structure-set!
         _%tab92222%_
         _%val92223%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab92219%_ _%val92220%_)
        (##unchecked-structure-set!
         _%tab92219%_
         _%val92220%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab92216%_ _%val92217%_)
        (##unchecked-structure-set!
         _%tab92216%_
         _%val92217%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab92213%_ _%val92214%_)
        (##unchecked-structure-set!
         _%tab92213%_
         _%val92214%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab92210%_ _%val92211%_)
        (##unchecked-structure-set!
         _%tab92210%_
         _%val92211%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint92208%_)
        (if (and (fixnum? _%size-hint92208%_) (##fx> _%size-hint92208%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint92208%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint92184%_ _%hash92185%_ _%test92186%_ _%seed92187%_)
        (let* ((_%size92189%_ (raw-table-size-hint->size _%size-hint92184%_))
               (_%table92191%_
                (##make-vector _%size92189%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table92191%_
           '0
           (##fxquotient _%size92189%_ '2)
           _%hash92185%_
           _%test92186%_
           _%seed92187%_))))
    (define make-raw-table__0
      (lambda (_%size-hint92197%_ _%hash92198%_ _%test92199%_)
        (let ((_%seed92201%_ '0))
          (make-raw-table__%
           _%size-hint92197%_
           _%hash92198%_
           _%test92199%_
           _%seed92201%_))))
    (define make-raw-table
      (lambda _g92240_
        (let ((_g92239_ (##length _g92240_)))
          (cond ((##fx= _g92239_ 3) (apply make-raw-table__0 _g92240_))
                ((##fx= _g92239_ 4) (apply make-raw-table__% _g92240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g92240_))))))
    (define raw-table-ref
      (lambda (_%tab92135%_ _%key92136%_ _%default92137%_)
        (let ((_%table92139%_ (&raw-table-table _%tab92135%_))
              (_%seed92140%_ (&raw-table-seed _%tab92135%_))
              (_%hash92141%_ (&raw-table-hash _%tab92135%_))
              (_%test92142%_ (&raw-table-test _%tab92135%_)))
          (let* ((_%h92144%_
                  (fxxor (_%hash92141%_ _%key92136%_) _%seed92140%_))
                 (_%size92147%_ (vector-length _%table92139%_))
                 (_%entries92150%_ (##fxquotient _%size92147%_ '2))
                 (_%start92153%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92144%_ _%entries92150%_)
                   '1)))
            (let _%loop92157%_ ((_%probe92160%_ _%start92153%_)
                                (_%i92162%_ '1)
                                (_%deleted92164%_ '#f))
              (let ((_%k92167%_ (vector-ref _%table92139%_ _%probe92160%_)))
                (if (eq? _%k92167%_ (macro-unused-obj))
                    _%default92137%_
                    (if (eq? _%k92167%_ (macro-deleted-obj))
                        (_%loop92157%_
                         (let ((_%next-probe92172%_
                                (fx+ _%start92153%_
                                     _%i92162%_
                                     (fx* _%i92162%_ _%i92162%_))))
                           (##fxmodulo _%next-probe92172%_ _%size92147%_))
                         (##fx+ _%i92162%_ '1)
                         (let ((_%$e92175%_ _%deleted92164%_))
                           (if _%$e92175%_ _%$e92175%_ _%probe92160%_)))
                        (if (_%test92142%_ _%key92136%_ _%k92167%_)
                            (vector-ref
                             _%table92139%_
                             (##fx+ _%probe92160%_ '1))
                            (_%loop92157%_
                             (let ((_%next-probe92180%_
                                    (fx+ _%start92153%_
                                         _%i92162%_
                                         (fx* _%i92162%_ _%i92162%_))))
                               (##fxmodulo _%next-probe92180%_ _%size92147%_))
                             (##fx+ _%i92162%_ '1)
                             _%deleted92164%_))))))))))
    (define raw-table-set!
      (lambda (_%tab92131%_ _%key92132%_ _%value92133%_)
        (if (##fx< (&raw-table-free _%tab92131%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92131%_))
                    '4))
            (__raw-table-rehash! _%tab92131%_)
            '#!void)
        (__raw-table-set! _%tab92131%_ _%key92132%_ _%value92133%_)))
    (define raw-table-update!
      (lambda (_%tab92126%_ _%key92127%_ _%update92128%_ _%default92129%_)
        (if (##fx< (&raw-table-free _%tab92126%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92126%_))
                    '4))
            (__raw-table-rehash! _%tab92126%_)
            '#!void)
        (__raw-table-update!
         _%tab92126%_
         _%key92127%_
         _%update92128%_
         _%default92129%_)))
    (define raw-table-delete!
      (lambda (_%tab92083%_ _%key92084%_)
        (let ((_%table92086%_ (&raw-table-table _%tab92083%_))
              (_%seed92087%_ (&raw-table-seed _%tab92083%_))
              (_%hash92088%_ (&raw-table-hash _%tab92083%_))
              (_%test92089%_ (&raw-table-test _%tab92083%_)))
          (let* ((_%h92091%_
                  (fxxor (_%hash92088%_ _%key92084%_) _%seed92087%_))
                 (_%size92094%_ (vector-length _%table92086%_))
                 (_%entries92097%_ (##fxquotient _%size92094%_ '2))
                 (_%start92100%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92091%_ _%entries92097%_)
                   '1)))
            (let _%loop92104%_ ((_%probe92107%_ _%start92100%_)
                                (_%i92109%_ '1))
              (let ((_%k92112%_ (vector-ref _%table92086%_ _%probe92107%_)))
                (if (eq? _%k92112%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92112%_ (macro-deleted-obj))
                        (_%loop92104%_
                         (let ((_%next-probe92117%_
                                (fx+ _%start92100%_
                                     _%i92109%_
                                     (fx* _%i92109%_ _%i92109%_))))
                           (##fxmodulo _%next-probe92117%_ _%size92094%_))
                         (##fx+ _%i92109%_ '1))
                        (if (_%test92089%_ _%key92084%_ _%k92112%_)
                            (let ()
                              (vector-set!
                               _%table92086%_
                               _%probe92107%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92086%_
                               (##fx+ _%probe92107%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92083%_
                                  (##fx- (&raw-table-count _%tab92083%_)
                                         '1)))))
                            (_%loop92104%_
                             (let ((_%next-probe92123%_
                                    (fx+ _%start92100%_
                                         _%i92109%_
                                         (fx* _%i92109%_ _%i92109%_))))
                               (##fxmodulo _%next-probe92123%_ _%size92094%_))
                             (##fx+ _%i92109%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab92067%_ _%proc92068%_)
        (let* ((_%table92070%_ (&raw-table-table _%tab92067%_))
               (_%size92072%_ (vector-length _%table92070%_)))
          (let _%loop92075%_ ((_%i92077%_ '0))
            (if (##fx< _%i92077%_ _%size92072%_)
                (begin
                  (let ((_%key92079%_ (vector-ref _%table92070%_ _%i92077%_)))
                    (if (and (not (eq? _%key92079%_ (macro-unused-obj)))
                             (not (eq? _%key92079%_ (macro-deleted-obj))))
                        (let ((_%value92081%_
                               (vector-ref
                                _%table92070%_
                                (##fx+ _%i92077%_ '1))))
                          (_%proc92068%_ _%key92079%_ _%value92081%_))
                        '#!void))
                  (_%loop92075%_ (##fx+ _%i92077%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab92063%_)
        (let ((_%new-tab92065%_ (##structure-copy _%tab92063%_)))
          (&raw-table-table-set!
           _%new-tab92065%_
           (vector-copy (&raw-table-table _%tab92063%_)))
          _%new-tab92065%_)))
    (define raw-table-clear!
      (lambda (_%tab92061%_)
        (vector-fill! (&raw-table-table _%tab92061%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab92061%_ '0)
        (&raw-table-free-set!
         _%tab92061%_
         (##fxquotient (vector-length (&raw-table-table _%tab92061%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab92011%_ _%key92012%_ _%value92013%_)
        (let ((_%table92015%_ (&raw-table-table _%tab92011%_))
              (_%seed92016%_ (&raw-table-seed _%tab92011%_))
              (_%hash92017%_ (&raw-table-hash _%tab92011%_))
              (_%test92018%_ (&raw-table-test _%tab92011%_)))
          (let* ((_%h92020%_
                  (fxxor (_%hash92017%_ _%key92012%_) _%seed92016%_))
                 (_%size92023%_ (vector-length _%table92015%_))
                 (_%entries92026%_ (##fxquotient _%size92023%_ '2))
                 (_%start92029%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92020%_ _%entries92026%_)
                   '1)))
            (let _%loop92033%_ ((_%probe92036%_ _%start92029%_)
                                (_%i92038%_ '1)
                                (_%deleted92040%_ '#f))
              (let ((_%k92043%_ (vector-ref _%table92015%_ _%probe92036%_)))
                (if (eq? _%k92043%_ (macro-unused-obj))
                    (if _%deleted92040%_
                        (begin
                          (vector-set!
                           _%table92015%_
                           _%deleted92040%_
                           _%key92012%_)
                          (vector-set!
                           _%table92015%_
                           (##fx+ _%deleted92040%_ '1)
                           _%value92013%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92011%_
                              (##fx+ (&raw-table-count _%tab92011%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92015%_
                           _%probe92036%_
                           _%key92012%_)
                          (vector-set!
                           _%table92015%_
                           (##fx+ _%probe92036%_ '1)
                           _%value92013%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92011%_
                              (##fx- (&raw-table-free _%tab92011%_) '1))
                             (&raw-table-count-set!
                              _%tab92011%_
                              (##fx+ (&raw-table-count _%tab92011%_) '1))))))
                    (if (eq? _%k92043%_ (macro-deleted-obj))
                        (_%loop92033%_
                         (let ((_%next-probe92050%_
                                (fx+ _%start92029%_
                                     _%i92038%_
                                     (fx* _%i92038%_ _%i92038%_))))
                           (##fxmodulo _%next-probe92050%_ _%size92023%_))
                         (##fx+ _%i92038%_ '1)
                         (let ((_%$e92053%_ _%deleted92040%_))
                           (if _%$e92053%_ _%$e92053%_ _%probe92036%_)))
                        (if (_%test92018%_ _%key92012%_ _%k92043%_)
                            (let ()
                              (vector-set!
                               _%table92015%_
                               _%probe92036%_
                               _%key92012%_)
                              (vector-set!
                               _%table92015%_
                               (##fx+ _%probe92036%_ '1)
                               _%value92013%_))
                            (_%loop92033%_
                             (let ((_%next-probe92058%_
                                    (fx+ _%start92029%_
                                         _%i92038%_
                                         (fx* _%i92038%_ _%i92038%_))))
                               (##fxmodulo _%next-probe92058%_ _%size92023%_))
                             (##fx+ _%i92038%_ '1)
                             _%deleted92040%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab91960%_ _%key91961%_ _%update91962%_ _%default91963%_)
        (let ((_%table91965%_ (&raw-table-table _%tab91960%_))
              (_%seed91966%_ (&raw-table-seed _%tab91960%_))
              (_%hash91967%_ (&raw-table-hash _%tab91960%_))
              (_%test91968%_ (&raw-table-test _%tab91960%_)))
          (let* ((_%h91970%_
                  (fxxor (_%hash91967%_ _%key91961%_) _%seed91966%_))
                 (_%size91973%_ (vector-length _%table91965%_))
                 (_%entries91976%_ (##fxquotient _%size91973%_ '2))
                 (_%start91979%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91970%_ _%entries91976%_)
                   '1)))
            (let _%loop91983%_ ((_%probe91986%_ _%start91979%_)
                                (_%i91988%_ '1)
                                (_%deleted91990%_ '#f))
              (let ((_%k91993%_ (vector-ref _%table91965%_ _%probe91986%_)))
                (if (eq? _%k91993%_ (macro-unused-obj))
                    (if _%deleted91990%_
                        (begin
                          (vector-set!
                           _%table91965%_
                           _%deleted91990%_
                           _%key91961%_)
                          (vector-set!
                           _%table91965%_
                           (##fx+ _%deleted91990%_ '1)
                           (_%update91962%_ _%default91963%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91960%_
                              (##fx+ (&raw-table-count _%tab91960%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91965%_
                           _%probe91986%_
                           _%key91961%_)
                          (vector-set!
                           _%table91965%_
                           (##fx+ _%probe91986%_ '1)
                           (_%update91962%_ _%default91963%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91960%_
                              (##fx- (&raw-table-free _%tab91960%_) '1))
                             (&raw-table-count-set!
                              _%tab91960%_
                              (##fx+ (&raw-table-count _%tab91960%_) '1))))))
                    (if (eq? _%k91993%_ (macro-deleted-obj))
                        (_%loop91983%_
                         (let ((_%next-probe92000%_
                                (fx+ _%start91979%_
                                     _%i91988%_
                                     (fx* _%i91988%_ _%i91988%_))))
                           (##fxmodulo _%next-probe92000%_ _%size91973%_))
                         (##fx+ _%i91988%_ '1)
                         (let ((_%$e92003%_ _%deleted91990%_))
                           (if _%$e92003%_ _%$e92003%_ _%probe91986%_)))
                        (if (_%test91968%_ _%key91961%_ _%k91993%_)
                            (let ()
                              (vector-set!
                               _%table91965%_
                               _%probe91986%_
                               _%key91961%_)
                              (vector-set!
                               _%table91965%_
                               (##fx+ _%probe91986%_ '1)
                               (_%update91962%_
                                (vector-ref
                                 _%table91965%_
                                 (##fx+ _%probe91986%_ '1)))))
                            (_%loop91983%_
                             (let ((_%next-probe92008%_
                                    (fx+ _%start91979%_
                                         _%i91988%_
                                         (fx* _%i91988%_ _%i91988%_))))
                               (##fxmodulo _%next-probe92008%_ _%size91973%_))
                             (##fx+ _%i91988%_ '1)
                             _%deleted91990%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab91941%_)
        (let* ((_%old-table91943%_ (&raw-table-table _%tab91941%_))
               (_%old-size91945%_ (vector-length _%old-table91943%_))
               (_%new-size91947%_
                (if (##fx< (&raw-table-count _%tab91941%_)
                           (##fxquotient _%old-size91945%_ '4))
                    (vector-length _%old-table91943%_)
                    (##fx* '2 (vector-length _%old-table91943%_))))
               (_%new-table91949%_
                (##make-vector _%new-size91947%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab91941%_ _%new-table91949%_)
          (&raw-table-count-set! _%tab91941%_ '0)
          (&raw-table-free-set!
           _%tab91941%_
           (##fxquotient _%new-size91947%_ '2))
          (let _%lp91952%_ ((_%i91954%_ '0))
            (if (##fx< _%i91954%_ _%old-size91945%_)
                (begin
                  (let ((_%key91956%_
                         (vector-ref _%old-table91943%_ _%i91954%_)))
                    (if (and (not (eq? _%key91956%_ (macro-unused-obj)))
                             (not (eq? _%key91956%_ (macro-deleted-obj))))
                        (let ((_%value91958%_
                               (vector-ref
                                _%old-table91943%_
                                (##fx+ _%i91954%_ '1))))
                          (__raw-table-set!
                           _%tab91941%_
                           _%key91956%_
                           _%value91958%_))
                        '#!void))
                  (_%lp91952%_ (##fx+ _%i91954%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj91933%_)
        (let ((_%t91935%_ (##type _%obj91933%_)))
          (if (##fx= (##fxand _%t91935%_ '1) '0)
              (fxand (##type-cast _%obj91933%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj91933%_)
                  (symbolic-hash _%obj91933%_)
                  (if (procedure? _%obj91933%_)
                      (procedure-hash _%obj91933%_)
                      (fxand (__eq-hash _%obj91933%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj91929%_)
        (let ((_%h91931%_
               (if (##closure? _%obj91929%_)
                   (__eq-hash _%obj91929%_)
                   (##type-cast _%obj91929%_ '0))))
          (fxand _%h91931%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj91926%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj91926%_)))
    (define eqv-hash
      (lambda (_%obj91916%_)
        (letrec ((_%combine91918%_
                  (lambda (_%a91923%_ _%b91924%_)
                    (fxand (##fx* (##fx+ _%a91923%_
                                         (fxarithmetic-shift-left
                                          _%b91924%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash91919%_
                  (lambda (_%obj91921%_)
                    (macro-number-dispatch
                     _%obj91921%_
                     (eq-hash _%obj91921%_)
                     (fxand _%obj91921%_ (macro-max-fixnum32))
                     (modulo _%obj91921%_ '331804481)
                     (_%combine91918%_
                      (_%hash91919%_ (macro-ratnum-numerator _%obj91921%_))
                      (_%hash91919%_ (macro-ratnum-denominator _%obj91921%_)))
                     (_%combine91918%_
                      (##u16vector-ref _%obj91921%_ '0)
                      (_%combine91918%_
                       (##u16vector-ref _%obj91921%_ '1)
                       (_%combine91918%_
                        (##u16vector-ref _%obj91921%_ '2)
                        (##u16vector-ref _%obj91921%_ '3))))
                     (_%combine91918%_
                      (_%hash91919%_ (macro-cpxnum-real _%obj91921%_))
                      (_%hash91919%_ (macro-cpxnum-imag _%obj91921%_)))))))
          (_%hash91919%_ _%obj91916%_))))
    (define symbolic?
      (lambda (_%obj91911%_)
        (let ((_%$e91913%_ (symbol? _%obj91911%_)))
          (if _%$e91913%_ _%$e91913%_ (keyword? _%obj91911%_)))))
    (define symbolic-hash (lambda (_%obj91909%_) (macro-slot '1 _%obj91909%_)))
    (define string-hash (lambda (_%obj91907%_) (##string=?-hash _%obj91907%_)))
    (define immediate-hash
      (lambda (_%obj91905%_) (##type-cast _%obj91905%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint91886%_ _%seed91888%_)
        (make-raw-table__% _%size-hint91886%_ eq-hash eq? _%seed91888%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint91894%_ '#f) (_%seed91896%_ '0))
          (make-eq-table__% _%size-hint91894%_ _%seed91896%_))))
    (define make-eq-table__1
      (lambda (_%size-hint91898%_)
        (let ((_%seed91900%_ '0))
          (make-eq-table__% _%size-hint91898%_ _%seed91900%_))))
    (define make-eq-table
      (lambda _g92242_
        (let ((_g92241_ (##length _g92242_)))
          (cond ((##fx= _g92241_ 0) (apply make-eq-table__0 _g92242_))
                ((##fx= _g92241_ 1) (apply make-eq-table__1 _g92242_))
                ((##fx= _g92241_ 2) (apply make-eq-table__% _g92242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g92242_))))))
    (define eq-table-ref
      (lambda (_%tab91839%_ _%key91840%_ _%default91841%_)
        (let ((_%table91843%_ (&raw-table-table _%tab91839%_))
              (_%seed91844%_ (&raw-table-seed _%tab91839%_)))
          (let* ((_%h91846%_ (fxxor (eq-hash _%key91840%_) _%seed91844%_))
                 (_%size91849%_ (vector-length _%table91843%_))
                 (_%entries91852%_ (##fxquotient _%size91849%_ '2))
                 (_%start91855%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91846%_ _%entries91852%_)
                   '1)))
            (let _%loop91859%_ ((_%probe91862%_ _%start91855%_)
                                (_%i91864%_ '1)
                                (_%deleted91866%_ '#f))
              (let ((_%k91869%_ (vector-ref _%table91843%_ _%probe91862%_)))
                (if (eq? _%k91869%_ (macro-unused-obj))
                    _%default91841%_
                    (if (eq? _%k91869%_ (macro-deleted-obj))
                        (_%loop91859%_
                         (let ((_%next-probe91874%_
                                (fx+ _%start91855%_
                                     _%i91864%_
                                     (fx* _%i91864%_ _%i91864%_))))
                           (##fxmodulo _%next-probe91874%_ _%size91849%_))
                         (##fx+ _%i91864%_ '1)
                         (let ((_%$e91877%_ _%deleted91866%_))
                           (if _%$e91877%_ _%$e91877%_ _%probe91862%_)))
                        (if (eq? _%key91840%_ _%k91869%_)
                            (vector-ref
                             _%table91843%_
                             (##fx+ _%probe91862%_ '1))
                            (_%loop91859%_
                             (let ((_%next-probe91882%_
                                    (fx+ _%start91855%_
                                         _%i91864%_
                                         (fx* _%i91864%_ _%i91864%_))))
                               (##fxmodulo _%next-probe91882%_ _%size91849%_))
                             (##fx+ _%i91864%_ '1)
                             _%deleted91866%_))))))))))
    (define eq-table-set!
      (lambda (_%tab91835%_ _%key91836%_ _%value91837%_)
        (if (##fx< (&raw-table-free _%tab91835%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91835%_))
                    '4))
            (__raw-table-rehash! _%tab91835%_)
            '#!void)
        (__eq-table-set! _%tab91835%_ _%key91836%_ _%value91837%_)))
    (define __eq-table-set!
      (lambda (_%tab91786%_ _%key91787%_ _%value91788%_)
        (let ((_%table91791%_ (&raw-table-table _%tab91786%_))
              (_%seed91792%_ (&raw-table-seed _%tab91786%_)))
          (let* ((_%h91794%_ (fxxor (eq-hash _%key91787%_) _%seed91792%_))
                 (_%size91797%_ (vector-length _%table91791%_))
                 (_%entries91800%_ (##fxquotient _%size91797%_ '2))
                 (_%start91803%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91794%_ _%entries91800%_)
                   '1)))
            (let _%loop91807%_ ((_%probe91810%_ _%start91803%_)
                                (_%i91812%_ '1)
                                (_%deleted91814%_ '#f))
              (let ((_%k91817%_ (vector-ref _%table91791%_ _%probe91810%_)))
                (if (eq? _%k91817%_ (macro-unused-obj))
                    (if _%deleted91814%_
                        (begin
                          (vector-set!
                           _%table91791%_
                           _%deleted91814%_
                           _%key91787%_)
                          (vector-set!
                           _%table91791%_
                           (##fx+ _%deleted91814%_ '1)
                           _%value91788%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91786%_
                              (##fx+ (&raw-table-count _%tab91786%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91791%_
                           _%probe91810%_
                           _%key91787%_)
                          (vector-set!
                           _%table91791%_
                           (##fx+ _%probe91810%_ '1)
                           _%value91788%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91786%_
                              (##fx- (&raw-table-free _%tab91786%_) '1))
                             (&raw-table-count-set!
                              _%tab91786%_
                              (##fx+ (&raw-table-count _%tab91786%_) '1))))))
                    (if (eq? _%k91817%_ (macro-deleted-obj))
                        (_%loop91807%_
                         (let ((_%next-probe91824%_
                                (fx+ _%start91803%_
                                     _%i91812%_
                                     (fx* _%i91812%_ _%i91812%_))))
                           (##fxmodulo _%next-probe91824%_ _%size91797%_))
                         (##fx+ _%i91812%_ '1)
                         (let ((_%$e91827%_ _%deleted91814%_))
                           (if _%$e91827%_ _%$e91827%_ _%probe91810%_)))
                        (if (eq? _%key91787%_ _%k91817%_)
                            (let ()
                              (vector-set!
                               _%table91791%_
                               _%probe91810%_
                               _%key91787%_)
                              (vector-set!
                               _%table91791%_
                               (##fx+ _%probe91810%_ '1)
                               _%value91788%_))
                            (_%loop91807%_
                             (let ((_%next-probe91832%_
                                    (fx+ _%start91803%_
                                         _%i91812%_
                                         (fx* _%i91812%_ _%i91812%_))))
                               (##fxmodulo _%next-probe91832%_ _%size91797%_))
                             (##fx+ _%i91812%_ '1)
                             _%deleted91814%_))))))))))
    (define eq-table-update!
      (lambda (_%tab91781%_
               _%key91782%_
               _%eq-table-update!91783%_
               _%default91784%_)
        (if (##fx< (&raw-table-free _%tab91781%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91781%_))
                    '4))
            (__raw-table-rehash! _%tab91781%_)
            '#!void)
        (__eq-table-update!
         _%tab91781%_
         _%key91782%_
         _%eq-table-update!91783%_
         _%default91784%_)))
    (define __eq-table-update!
      (lambda (_%tab91731%_
               _%key91732%_
               _%eq-table-update!91733%_
               _%default91734%_)
        (let ((_%table91737%_ (&raw-table-table _%tab91731%_))
              (_%seed91738%_ (&raw-table-seed _%tab91731%_)))
          (let* ((_%h91740%_ (fxxor (eq-hash _%key91732%_) _%seed91738%_))
                 (_%size91743%_ (vector-length _%table91737%_))
                 (_%entries91746%_ (##fxquotient _%size91743%_ '2))
                 (_%start91749%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91740%_ _%entries91746%_)
                   '1)))
            (let _%loop91753%_ ((_%probe91756%_ _%start91749%_)
                                (_%i91758%_ '1)
                                (_%deleted91760%_ '#f))
              (let ((_%k91763%_ (vector-ref _%table91737%_ _%probe91756%_)))
                (if (eq? _%k91763%_ (macro-unused-obj))
                    (if _%deleted91760%_
                        (begin
                          (vector-set!
                           _%table91737%_
                           _%deleted91760%_
                           _%key91732%_)
                          (vector-set!
                           _%table91737%_
                           (##fx+ _%deleted91760%_ '1)
                           (_%eq-table-update!91733%_ _%default91734%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91731%_
                              (##fx+ (&raw-table-count _%tab91731%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91737%_
                           _%probe91756%_
                           _%key91732%_)
                          (vector-set!
                           _%table91737%_
                           (##fx+ _%probe91756%_ '1)
                           (_%eq-table-update!91733%_ _%default91734%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91731%_
                              (##fx- (&raw-table-free _%tab91731%_) '1))
                             (&raw-table-count-set!
                              _%tab91731%_
                              (##fx+ (&raw-table-count _%tab91731%_) '1))))))
                    (if (eq? _%k91763%_ (macro-deleted-obj))
                        (_%loop91753%_
                         (let ((_%next-probe91770%_
                                (fx+ _%start91749%_
                                     _%i91758%_
                                     (fx* _%i91758%_ _%i91758%_))))
                           (##fxmodulo _%next-probe91770%_ _%size91743%_))
                         (##fx+ _%i91758%_ '1)
                         (let ((_%$e91773%_ _%deleted91760%_))
                           (if _%$e91773%_ _%$e91773%_ _%probe91756%_)))
                        (if (eq? _%key91732%_ _%k91763%_)
                            (let ()
                              (vector-set!
                               _%table91737%_
                               _%probe91756%_
                               _%key91732%_)
                              (vector-set!
                               _%table91737%_
                               (##fx+ _%probe91756%_ '1)
                               (_%eq-table-update!91733%_
                                (vector-ref
                                 _%table91737%_
                                 (##fx+ _%probe91756%_ '1)))))
                            (_%loop91753%_
                             (let ((_%next-probe91778%_
                                    (fx+ _%start91749%_
                                         _%i91758%_
                                         (fx* _%i91758%_ _%i91758%_))))
                               (##fxmodulo _%next-probe91778%_ _%size91743%_))
                             (##fx+ _%i91758%_ '1)
                             _%deleted91760%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab91686%_ _%key91688%_)
        (let ((_%table91691%_ (&raw-table-table _%tab91686%_))
              (_%seed91693%_ (&raw-table-seed _%tab91686%_)))
          (let* ((_%h91696%_ (fxxor (eq-hash _%key91688%_) _%seed91693%_))
                 (_%size91699%_ (vector-length _%table91691%_))
                 (_%entries91702%_ (##fxquotient _%size91699%_ '2))
                 (_%start91705%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91696%_ _%entries91702%_)
                   '1)))
            (let _%loop91709%_ ((_%probe91712%_ _%start91705%_)
                                (_%i91714%_ '1))
              (let ((_%k91717%_ (vector-ref _%table91691%_ _%probe91712%_)))
                (if (eq? _%k91717%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91717%_ (macro-deleted-obj))
                        (_%loop91709%_
                         (let ((_%next-probe91722%_
                                (fx+ _%start91705%_
                                     _%i91714%_
                                     (fx* _%i91714%_ _%i91714%_))))
                           (##fxmodulo _%next-probe91722%_ _%size91699%_))
                         (##fx+ _%i91714%_ '1))
                        (if (eq? _%key91688%_ _%k91717%_)
                            (let ()
                              (vector-set!
                               _%table91691%_
                               _%probe91712%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91691%_
                               (##fx+ _%probe91712%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91686%_
                                  (##fx- (&raw-table-count _%tab91686%_)
                                         '1)))))
                            (_%loop91709%_
                             (let ((_%next-probe91728%_
                                    (fx+ _%start91705%_
                                         _%i91714%_
                                         (fx* _%i91714%_ _%i91714%_))))
                               (##fxmodulo _%next-probe91728%_ _%size91699%_))
                             (##fx+ _%i91714%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint91667%_ _%seed91669%_)
        (make-raw-table__% _%size-hint91667%_ eqv-hash eqv? _%seed91669%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint91675%_ '#f) (_%seed91677%_ '0))
          (make-eqv-table__% _%size-hint91675%_ _%seed91677%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint91679%_)
        (let ((_%seed91681%_ '0))
          (make-eqv-table__% _%size-hint91679%_ _%seed91681%_))))
    (define make-eqv-table
      (lambda _g92244_
        (let ((_g92243_ (##length _g92244_)))
          (cond ((##fx= _g92243_ 0) (apply make-eqv-table__0 _g92244_))
                ((##fx= _g92243_ 1) (apply make-eqv-table__1 _g92244_))
                ((##fx= _g92243_ 2) (apply make-eqv-table__% _g92244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g92244_))))))
    (define eqv-table-ref
      (lambda (_%tab91620%_ _%key91621%_ _%default91622%_)
        (let ((_%table91624%_ (&raw-table-table _%tab91620%_))
              (_%seed91625%_ (&raw-table-seed _%tab91620%_)))
          (let* ((_%h91627%_ (fxxor (eqv-hash _%key91621%_) _%seed91625%_))
                 (_%size91630%_ (vector-length _%table91624%_))
                 (_%entries91633%_ (##fxquotient _%size91630%_ '2))
                 (_%start91636%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91627%_ _%entries91633%_)
                   '1)))
            (let _%loop91640%_ ((_%probe91643%_ _%start91636%_)
                                (_%i91645%_ '1)
                                (_%deleted91647%_ '#f))
              (let ((_%k91650%_ (vector-ref _%table91624%_ _%probe91643%_)))
                (if (eq? _%k91650%_ (macro-unused-obj))
                    _%default91622%_
                    (if (eq? _%k91650%_ (macro-deleted-obj))
                        (_%loop91640%_
                         (let ((_%next-probe91655%_
                                (fx+ _%start91636%_
                                     _%i91645%_
                                     (fx* _%i91645%_ _%i91645%_))))
                           (##fxmodulo _%next-probe91655%_ _%size91630%_))
                         (##fx+ _%i91645%_ '1)
                         (let ((_%$e91658%_ _%deleted91647%_))
                           (if _%$e91658%_ _%$e91658%_ _%probe91643%_)))
                        (if (eqv? _%key91621%_ _%k91650%_)
                            (vector-ref
                             _%table91624%_
                             (##fx+ _%probe91643%_ '1))
                            (_%loop91640%_
                             (let ((_%next-probe91663%_
                                    (fx+ _%start91636%_
                                         _%i91645%_
                                         (fx* _%i91645%_ _%i91645%_))))
                               (##fxmodulo _%next-probe91663%_ _%size91630%_))
                             (##fx+ _%i91645%_ '1)
                             _%deleted91647%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab91616%_ _%key91617%_ _%value91618%_)
        (if (##fx< (&raw-table-free _%tab91616%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91616%_))
                    '4))
            (__raw-table-rehash! _%tab91616%_)
            '#!void)
        (__eqv-table-set! _%tab91616%_ _%key91617%_ _%value91618%_)))
    (define __eqv-table-set!
      (lambda (_%tab91567%_ _%key91568%_ _%value91569%_)
        (let ((_%table91572%_ (&raw-table-table _%tab91567%_))
              (_%seed91573%_ (&raw-table-seed _%tab91567%_)))
          (let* ((_%h91575%_ (fxxor (eqv-hash _%key91568%_) _%seed91573%_))
                 (_%size91578%_ (vector-length _%table91572%_))
                 (_%entries91581%_ (##fxquotient _%size91578%_ '2))
                 (_%start91584%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91575%_ _%entries91581%_)
                   '1)))
            (let _%loop91588%_ ((_%probe91591%_ _%start91584%_)
                                (_%i91593%_ '1)
                                (_%deleted91595%_ '#f))
              (let ((_%k91598%_ (vector-ref _%table91572%_ _%probe91591%_)))
                (if (eq? _%k91598%_ (macro-unused-obj))
                    (if _%deleted91595%_
                        (begin
                          (vector-set!
                           _%table91572%_
                           _%deleted91595%_
                           _%key91568%_)
                          (vector-set!
                           _%table91572%_
                           (##fx+ _%deleted91595%_ '1)
                           _%value91569%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91567%_
                              (##fx+ (&raw-table-count _%tab91567%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91572%_
                           _%probe91591%_
                           _%key91568%_)
                          (vector-set!
                           _%table91572%_
                           (##fx+ _%probe91591%_ '1)
                           _%value91569%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91567%_
                              (##fx- (&raw-table-free _%tab91567%_) '1))
                             (&raw-table-count-set!
                              _%tab91567%_
                              (##fx+ (&raw-table-count _%tab91567%_) '1))))))
                    (if (eq? _%k91598%_ (macro-deleted-obj))
                        (_%loop91588%_
                         (let ((_%next-probe91605%_
                                (fx+ _%start91584%_
                                     _%i91593%_
                                     (fx* _%i91593%_ _%i91593%_))))
                           (##fxmodulo _%next-probe91605%_ _%size91578%_))
                         (##fx+ _%i91593%_ '1)
                         (let ((_%$e91608%_ _%deleted91595%_))
                           (if _%$e91608%_ _%$e91608%_ _%probe91591%_)))
                        (if (eqv? _%key91568%_ _%k91598%_)
                            (let ()
                              (vector-set!
                               _%table91572%_
                               _%probe91591%_
                               _%key91568%_)
                              (vector-set!
                               _%table91572%_
                               (##fx+ _%probe91591%_ '1)
                               _%value91569%_))
                            (_%loop91588%_
                             (let ((_%next-probe91613%_
                                    (fx+ _%start91584%_
                                         _%i91593%_
                                         (fx* _%i91593%_ _%i91593%_))))
                               (##fxmodulo _%next-probe91613%_ _%size91578%_))
                             (##fx+ _%i91593%_ '1)
                             _%deleted91595%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab91562%_
               _%key91563%_
               _%eqv-table-update!91564%_
               _%default91565%_)
        (if (##fx< (&raw-table-free _%tab91562%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91562%_))
                    '4))
            (__raw-table-rehash! _%tab91562%_)
            '#!void)
        (__eqv-table-update!
         _%tab91562%_
         _%key91563%_
         _%eqv-table-update!91564%_
         _%default91565%_)))
    (define __eqv-table-update!
      (lambda (_%tab91512%_
               _%key91513%_
               _%eqv-table-update!91514%_
               _%default91515%_)
        (let ((_%table91518%_ (&raw-table-table _%tab91512%_))
              (_%seed91519%_ (&raw-table-seed _%tab91512%_)))
          (let* ((_%h91521%_ (fxxor (eqv-hash _%key91513%_) _%seed91519%_))
                 (_%size91524%_ (vector-length _%table91518%_))
                 (_%entries91527%_ (##fxquotient _%size91524%_ '2))
                 (_%start91530%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91521%_ _%entries91527%_)
                   '1)))
            (let _%loop91534%_ ((_%probe91537%_ _%start91530%_)
                                (_%i91539%_ '1)
                                (_%deleted91541%_ '#f))
              (let ((_%k91544%_ (vector-ref _%table91518%_ _%probe91537%_)))
                (if (eq? _%k91544%_ (macro-unused-obj))
                    (if _%deleted91541%_
                        (begin
                          (vector-set!
                           _%table91518%_
                           _%deleted91541%_
                           _%key91513%_)
                          (vector-set!
                           _%table91518%_
                           (##fx+ _%deleted91541%_ '1)
                           (_%eqv-table-update!91514%_ _%default91515%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91512%_
                              (##fx+ (&raw-table-count _%tab91512%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91518%_
                           _%probe91537%_
                           _%key91513%_)
                          (vector-set!
                           _%table91518%_
                           (##fx+ _%probe91537%_ '1)
                           (_%eqv-table-update!91514%_ _%default91515%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91512%_
                              (##fx- (&raw-table-free _%tab91512%_) '1))
                             (&raw-table-count-set!
                              _%tab91512%_
                              (##fx+ (&raw-table-count _%tab91512%_) '1))))))
                    (if (eq? _%k91544%_ (macro-deleted-obj))
                        (_%loop91534%_
                         (let ((_%next-probe91551%_
                                (fx+ _%start91530%_
                                     _%i91539%_
                                     (fx* _%i91539%_ _%i91539%_))))
                           (##fxmodulo _%next-probe91551%_ _%size91524%_))
                         (##fx+ _%i91539%_ '1)
                         (let ((_%$e91554%_ _%deleted91541%_))
                           (if _%$e91554%_ _%$e91554%_ _%probe91537%_)))
                        (if (eqv? _%key91513%_ _%k91544%_)
                            (let ()
                              (vector-set!
                               _%table91518%_
                               _%probe91537%_
                               _%key91513%_)
                              (vector-set!
                               _%table91518%_
                               (##fx+ _%probe91537%_ '1)
                               (_%eqv-table-update!91514%_
                                (vector-ref
                                 _%table91518%_
                                 (##fx+ _%probe91537%_ '1)))))
                            (_%loop91534%_
                             (let ((_%next-probe91559%_
                                    (fx+ _%start91530%_
                                         _%i91539%_
                                         (fx* _%i91539%_ _%i91539%_))))
                               (##fxmodulo _%next-probe91559%_ _%size91524%_))
                             (##fx+ _%i91539%_ '1)
                             _%deleted91541%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab91467%_ _%key91469%_)
        (let ((_%table91472%_ (&raw-table-table _%tab91467%_))
              (_%seed91474%_ (&raw-table-seed _%tab91467%_)))
          (let* ((_%h91477%_ (fxxor (eqv-hash _%key91469%_) _%seed91474%_))
                 (_%size91480%_ (vector-length _%table91472%_))
                 (_%entries91483%_ (##fxquotient _%size91480%_ '2))
                 (_%start91486%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91477%_ _%entries91483%_)
                   '1)))
            (let _%loop91490%_ ((_%probe91493%_ _%start91486%_)
                                (_%i91495%_ '1))
              (let ((_%k91498%_ (vector-ref _%table91472%_ _%probe91493%_)))
                (if (eq? _%k91498%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91498%_ (macro-deleted-obj))
                        (_%loop91490%_
                         (let ((_%next-probe91503%_
                                (fx+ _%start91486%_
                                     _%i91495%_
                                     (fx* _%i91495%_ _%i91495%_))))
                           (##fxmodulo _%next-probe91503%_ _%size91480%_))
                         (##fx+ _%i91495%_ '1))
                        (if (eqv? _%key91469%_ _%k91498%_)
                            (let ()
                              (vector-set!
                               _%table91472%_
                               _%probe91493%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91472%_
                               (##fx+ _%probe91493%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91467%_
                                  (##fx- (&raw-table-count _%tab91467%_)
                                         '1)))))
                            (_%loop91490%_
                             (let ((_%next-probe91509%_
                                    (fx+ _%start91486%_
                                         _%i91495%_
                                         (fx* _%i91495%_ _%i91495%_))))
                               (##fxmodulo _%next-probe91509%_ _%size91480%_))
                             (##fx+ _%i91495%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint91448%_ _%seed91450%_)
        (make-raw-table__%
         _%size-hint91448%_
         symbolic-hash
         eq?
         _%seed91450%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint91456%_ '#f) (_%seed91458%_ '0))
          (make-symbolic-table__% _%size-hint91456%_ _%seed91458%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint91460%_)
        (let ((_%seed91462%_ '0))
          (make-symbolic-table__% _%size-hint91460%_ _%seed91462%_))))
    (define make-symbolic-table
      (lambda _g92246_
        (let ((_g92245_ (##length _g92246_)))
          (cond ((##fx= _g92245_ 0) (apply make-symbolic-table__0 _g92246_))
                ((##fx= _g92245_ 1) (apply make-symbolic-table__1 _g92246_))
                ((##fx= _g92245_ 2) (apply make-symbolic-table__% _g92246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g92246_))))))
    (define symbolic-table-ref
      (lambda (_%tab91401%_ _%key91402%_ _%default91403%_)
        (let ((_%table91405%_ (&raw-table-table _%tab91401%_))
              (_%seed91406%_ (&raw-table-seed _%tab91401%_)))
          (let* ((_%h91408%_
                  (fxxor (symbolic-hash _%key91402%_) _%seed91406%_))
                 (_%size91411%_ (vector-length _%table91405%_))
                 (_%entries91414%_ (##fxquotient _%size91411%_ '2))
                 (_%start91417%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91408%_ _%entries91414%_)
                   '1)))
            (let _%loop91421%_ ((_%probe91424%_ _%start91417%_)
                                (_%i91426%_ '1)
                                (_%deleted91428%_ '#f))
              (let ((_%k91431%_ (vector-ref _%table91405%_ _%probe91424%_)))
                (if (eq? _%k91431%_ (macro-unused-obj))
                    _%default91403%_
                    (if (eq? _%k91431%_ (macro-deleted-obj))
                        (_%loop91421%_
                         (let ((_%next-probe91436%_
                                (fx+ _%start91417%_
                                     _%i91426%_
                                     (fx* _%i91426%_ _%i91426%_))))
                           (##fxmodulo _%next-probe91436%_ _%size91411%_))
                         (##fx+ _%i91426%_ '1)
                         (let ((_%$e91439%_ _%deleted91428%_))
                           (if _%$e91439%_ _%$e91439%_ _%probe91424%_)))
                        (if (eq? _%key91402%_ _%k91431%_)
                            (vector-ref
                             _%table91405%_
                             (##fx+ _%probe91424%_ '1))
                            (_%loop91421%_
                             (let ((_%next-probe91444%_
                                    (fx+ _%start91417%_
                                         _%i91426%_
                                         (fx* _%i91426%_ _%i91426%_))))
                               (##fxmodulo _%next-probe91444%_ _%size91411%_))
                             (##fx+ _%i91426%_ '1)
                             _%deleted91428%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab91397%_ _%key91398%_ _%value91399%_)
        (if (##fx< (&raw-table-free _%tab91397%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91397%_))
                    '4))
            (__raw-table-rehash! _%tab91397%_)
            '#!void)
        (__symbolic-table-set! _%tab91397%_ _%key91398%_ _%value91399%_)))
    (define __symbolic-table-set!
      (lambda (_%tab91348%_ _%key91349%_ _%value91350%_)
        (let ((_%table91353%_ (&raw-table-table _%tab91348%_))
              (_%seed91354%_ (&raw-table-seed _%tab91348%_)))
          (let* ((_%h91356%_
                  (fxxor (symbolic-hash _%key91349%_) _%seed91354%_))
                 (_%size91359%_ (vector-length _%table91353%_))
                 (_%entries91362%_ (##fxquotient _%size91359%_ '2))
                 (_%start91365%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91356%_ _%entries91362%_)
                   '1)))
            (let _%loop91369%_ ((_%probe91372%_ _%start91365%_)
                                (_%i91374%_ '1)
                                (_%deleted91376%_ '#f))
              (let ((_%k91379%_ (vector-ref _%table91353%_ _%probe91372%_)))
                (if (eq? _%k91379%_ (macro-unused-obj))
                    (if _%deleted91376%_
                        (begin
                          (vector-set!
                           _%table91353%_
                           _%deleted91376%_
                           _%key91349%_)
                          (vector-set!
                           _%table91353%_
                           (##fx+ _%deleted91376%_ '1)
                           _%value91350%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91348%_
                              (##fx+ (&raw-table-count _%tab91348%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91353%_
                           _%probe91372%_
                           _%key91349%_)
                          (vector-set!
                           _%table91353%_
                           (##fx+ _%probe91372%_ '1)
                           _%value91350%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91348%_
                              (##fx- (&raw-table-free _%tab91348%_) '1))
                             (&raw-table-count-set!
                              _%tab91348%_
                              (##fx+ (&raw-table-count _%tab91348%_) '1))))))
                    (if (eq? _%k91379%_ (macro-deleted-obj))
                        (_%loop91369%_
                         (let ((_%next-probe91386%_
                                (fx+ _%start91365%_
                                     _%i91374%_
                                     (fx* _%i91374%_ _%i91374%_))))
                           (##fxmodulo _%next-probe91386%_ _%size91359%_))
                         (##fx+ _%i91374%_ '1)
                         (let ((_%$e91389%_ _%deleted91376%_))
                           (if _%$e91389%_ _%$e91389%_ _%probe91372%_)))
                        (if (eq? _%key91349%_ _%k91379%_)
                            (let ()
                              (vector-set!
                               _%table91353%_
                               _%probe91372%_
                               _%key91349%_)
                              (vector-set!
                               _%table91353%_
                               (##fx+ _%probe91372%_ '1)
                               _%value91350%_))
                            (_%loop91369%_
                             (let ((_%next-probe91394%_
                                    (fx+ _%start91365%_
                                         _%i91374%_
                                         (fx* _%i91374%_ _%i91374%_))))
                               (##fxmodulo _%next-probe91394%_ _%size91359%_))
                             (##fx+ _%i91374%_ '1)
                             _%deleted91376%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab91343%_
               _%key91344%_
               _%symbolic-table-update!91345%_
               _%default91346%_)
        (if (##fx< (&raw-table-free _%tab91343%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91343%_))
                    '4))
            (__raw-table-rehash! _%tab91343%_)
            '#!void)
        (__symbolic-table-update!
         _%tab91343%_
         _%key91344%_
         _%symbolic-table-update!91345%_
         _%default91346%_)))
    (define __symbolic-table-update!
      (lambda (_%tab91293%_
               _%key91294%_
               _%symbolic-table-update!91295%_
               _%default91296%_)
        (let ((_%table91299%_ (&raw-table-table _%tab91293%_))
              (_%seed91300%_ (&raw-table-seed _%tab91293%_)))
          (let* ((_%h91302%_
                  (fxxor (symbolic-hash _%key91294%_) _%seed91300%_))
                 (_%size91305%_ (vector-length _%table91299%_))
                 (_%entries91308%_ (##fxquotient _%size91305%_ '2))
                 (_%start91311%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91302%_ _%entries91308%_)
                   '1)))
            (let _%loop91315%_ ((_%probe91318%_ _%start91311%_)
                                (_%i91320%_ '1)
                                (_%deleted91322%_ '#f))
              (let ((_%k91325%_ (vector-ref _%table91299%_ _%probe91318%_)))
                (if (eq? _%k91325%_ (macro-unused-obj))
                    (if _%deleted91322%_
                        (begin
                          (vector-set!
                           _%table91299%_
                           _%deleted91322%_
                           _%key91294%_)
                          (vector-set!
                           _%table91299%_
                           (##fx+ _%deleted91322%_ '1)
                           (_%symbolic-table-update!91295%_ _%default91296%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91293%_
                              (##fx+ (&raw-table-count _%tab91293%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91299%_
                           _%probe91318%_
                           _%key91294%_)
                          (vector-set!
                           _%table91299%_
                           (##fx+ _%probe91318%_ '1)
                           (_%symbolic-table-update!91295%_ _%default91296%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91293%_
                              (##fx- (&raw-table-free _%tab91293%_) '1))
                             (&raw-table-count-set!
                              _%tab91293%_
                              (##fx+ (&raw-table-count _%tab91293%_) '1))))))
                    (if (eq? _%k91325%_ (macro-deleted-obj))
                        (_%loop91315%_
                         (let ((_%next-probe91332%_
                                (fx+ _%start91311%_
                                     _%i91320%_
                                     (fx* _%i91320%_ _%i91320%_))))
                           (##fxmodulo _%next-probe91332%_ _%size91305%_))
                         (##fx+ _%i91320%_ '1)
                         (let ((_%$e91335%_ _%deleted91322%_))
                           (if _%$e91335%_ _%$e91335%_ _%probe91318%_)))
                        (if (eq? _%key91294%_ _%k91325%_)
                            (let ()
                              (vector-set!
                               _%table91299%_
                               _%probe91318%_
                               _%key91294%_)
                              (vector-set!
                               _%table91299%_
                               (##fx+ _%probe91318%_ '1)
                               (_%symbolic-table-update!91295%_
                                (vector-ref
                                 _%table91299%_
                                 (##fx+ _%probe91318%_ '1)))))
                            (_%loop91315%_
                             (let ((_%next-probe91340%_
                                    (fx+ _%start91311%_
                                         _%i91320%_
                                         (fx* _%i91320%_ _%i91320%_))))
                               (##fxmodulo _%next-probe91340%_ _%size91305%_))
                             (##fx+ _%i91320%_ '1)
                             _%deleted91322%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab91248%_ _%key91250%_)
        (let ((_%table91253%_ (&raw-table-table _%tab91248%_))
              (_%seed91255%_ (&raw-table-seed _%tab91248%_)))
          (let* ((_%h91258%_
                  (fxxor (symbolic-hash _%key91250%_) _%seed91255%_))
                 (_%size91261%_ (vector-length _%table91253%_))
                 (_%entries91264%_ (##fxquotient _%size91261%_ '2))
                 (_%start91267%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91258%_ _%entries91264%_)
                   '1)))
            (let _%loop91271%_ ((_%probe91274%_ _%start91267%_)
                                (_%i91276%_ '1))
              (let ((_%k91279%_ (vector-ref _%table91253%_ _%probe91274%_)))
                (if (eq? _%k91279%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91279%_ (macro-deleted-obj))
                        (_%loop91271%_
                         (let ((_%next-probe91284%_
                                (fx+ _%start91267%_
                                     _%i91276%_
                                     (fx* _%i91276%_ _%i91276%_))))
                           (##fxmodulo _%next-probe91284%_ _%size91261%_))
                         (##fx+ _%i91276%_ '1))
                        (if (eq? _%key91250%_ _%k91279%_)
                            (let ()
                              (vector-set!
                               _%table91253%_
                               _%probe91274%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91253%_
                               (##fx+ _%probe91274%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91248%_
                                  (##fx- (&raw-table-count _%tab91248%_)
                                         '1)))))
                            (_%loop91271%_
                             (let ((_%next-probe91290%_
                                    (fx+ _%start91267%_
                                         _%i91276%_
                                         (fx* _%i91276%_ _%i91276%_))))
                               (##fxmodulo _%next-probe91290%_ _%size91261%_))
                             (##fx+ _%i91276%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint91229%_ _%seed91231%_)
        (make-raw-table__%
         _%size-hint91229%_
         string-hash
         ##string=?
         _%seed91231%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint91237%_ '#f) (_%seed91239%_ '0))
          (make-string-table__% _%size-hint91237%_ _%seed91239%_))))
    (define make-string-table__1
      (lambda (_%size-hint91241%_)
        (let ((_%seed91243%_ '0))
          (make-string-table__% _%size-hint91241%_ _%seed91243%_))))
    (define make-string-table
      (lambda _g92248_
        (let ((_g92247_ (##length _g92248_)))
          (cond ((##fx= _g92247_ 0) (apply make-string-table__0 _g92248_))
                ((##fx= _g92247_ 1) (apply make-string-table__1 _g92248_))
                ((##fx= _g92247_ 2) (apply make-string-table__% _g92248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g92248_))))))
    (define string-table-ref
      (lambda (_%tab91182%_ _%key91183%_ _%default91184%_)
        (let ((_%table91186%_ (&raw-table-table _%tab91182%_))
              (_%seed91187%_ (&raw-table-seed _%tab91182%_)))
          (let* ((_%h91189%_
                  (fxxor (##string=?-hash _%key91183%_) _%seed91187%_))
                 (_%size91192%_ (vector-length _%table91186%_))
                 (_%entries91195%_ (##fxquotient _%size91192%_ '2))
                 (_%start91198%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91189%_ _%entries91195%_)
                   '1)))
            (let _%loop91202%_ ((_%probe91205%_ _%start91198%_)
                                (_%i91207%_ '1)
                                (_%deleted91209%_ '#f))
              (let ((_%k91212%_ (vector-ref _%table91186%_ _%probe91205%_)))
                (if (eq? _%k91212%_ (macro-unused-obj))
                    _%default91184%_
                    (if (eq? _%k91212%_ (macro-deleted-obj))
                        (_%loop91202%_
                         (let ((_%next-probe91217%_
                                (fx+ _%start91198%_
                                     _%i91207%_
                                     (fx* _%i91207%_ _%i91207%_))))
                           (##fxmodulo _%next-probe91217%_ _%size91192%_))
                         (##fx+ _%i91207%_ '1)
                         (let ((_%$e91220%_ _%deleted91209%_))
                           (if _%$e91220%_ _%$e91220%_ _%probe91205%_)))
                        (if (##string=? _%key91183%_ _%k91212%_)
                            (vector-ref
                             _%table91186%_
                             (##fx+ _%probe91205%_ '1))
                            (_%loop91202%_
                             (let ((_%next-probe91225%_
                                    (fx+ _%start91198%_
                                         _%i91207%_
                                         (fx* _%i91207%_ _%i91207%_))))
                               (##fxmodulo _%next-probe91225%_ _%size91192%_))
                             (##fx+ _%i91207%_ '1)
                             _%deleted91209%_))))))))))
    (define string-table-set!
      (lambda (_%tab91178%_ _%key91179%_ _%value91180%_)
        (if (##fx< (&raw-table-free _%tab91178%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91178%_))
                    '4))
            (__raw-table-rehash! _%tab91178%_)
            '#!void)
        (__string-table-set! _%tab91178%_ _%key91179%_ _%value91180%_)))
    (define __string-table-set!
      (lambda (_%tab91129%_ _%key91130%_ _%value91131%_)
        (let ((_%table91134%_ (&raw-table-table _%tab91129%_))
              (_%seed91135%_ (&raw-table-seed _%tab91129%_)))
          (let* ((_%h91137%_
                  (fxxor (##string=?-hash _%key91130%_) _%seed91135%_))
                 (_%size91140%_ (vector-length _%table91134%_))
                 (_%entries91143%_ (##fxquotient _%size91140%_ '2))
                 (_%start91146%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91137%_ _%entries91143%_)
                   '1)))
            (let _%loop91150%_ ((_%probe91153%_ _%start91146%_)
                                (_%i91155%_ '1)
                                (_%deleted91157%_ '#f))
              (let ((_%k91160%_ (vector-ref _%table91134%_ _%probe91153%_)))
                (if (eq? _%k91160%_ (macro-unused-obj))
                    (if _%deleted91157%_
                        (begin
                          (vector-set!
                           _%table91134%_
                           _%deleted91157%_
                           _%key91130%_)
                          (vector-set!
                           _%table91134%_
                           (##fx+ _%deleted91157%_ '1)
                           _%value91131%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91129%_
                              (##fx+ (&raw-table-count _%tab91129%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91134%_
                           _%probe91153%_
                           _%key91130%_)
                          (vector-set!
                           _%table91134%_
                           (##fx+ _%probe91153%_ '1)
                           _%value91131%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91129%_
                              (##fx- (&raw-table-free _%tab91129%_) '1))
                             (&raw-table-count-set!
                              _%tab91129%_
                              (##fx+ (&raw-table-count _%tab91129%_) '1))))))
                    (if (eq? _%k91160%_ (macro-deleted-obj))
                        (_%loop91150%_
                         (let ((_%next-probe91167%_
                                (fx+ _%start91146%_
                                     _%i91155%_
                                     (fx* _%i91155%_ _%i91155%_))))
                           (##fxmodulo _%next-probe91167%_ _%size91140%_))
                         (##fx+ _%i91155%_ '1)
                         (let ((_%$e91170%_ _%deleted91157%_))
                           (if _%$e91170%_ _%$e91170%_ _%probe91153%_)))
                        (if (##string=? _%key91130%_ _%k91160%_)
                            (let ()
                              (vector-set!
                               _%table91134%_
                               _%probe91153%_
                               _%key91130%_)
                              (vector-set!
                               _%table91134%_
                               (##fx+ _%probe91153%_ '1)
                               _%value91131%_))
                            (_%loop91150%_
                             (let ((_%next-probe91175%_
                                    (fx+ _%start91146%_
                                         _%i91155%_
                                         (fx* _%i91155%_ _%i91155%_))))
                               (##fxmodulo _%next-probe91175%_ _%size91140%_))
                             (##fx+ _%i91155%_ '1)
                             _%deleted91157%_))))))))))
    (define string-table-update!
      (lambda (_%tab91124%_
               _%key91125%_
               _%string-table-update!91126%_
               _%default91127%_)
        (if (##fx< (&raw-table-free _%tab91124%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91124%_))
                    '4))
            (__raw-table-rehash! _%tab91124%_)
            '#!void)
        (__string-table-update!
         _%tab91124%_
         _%key91125%_
         _%string-table-update!91126%_
         _%default91127%_)))
    (define __string-table-update!
      (lambda (_%tab91074%_
               _%key91075%_
               _%string-table-update!91076%_
               _%default91077%_)
        (let ((_%table91080%_ (&raw-table-table _%tab91074%_))
              (_%seed91081%_ (&raw-table-seed _%tab91074%_)))
          (let* ((_%h91083%_
                  (fxxor (##string=?-hash _%key91075%_) _%seed91081%_))
                 (_%size91086%_ (vector-length _%table91080%_))
                 (_%entries91089%_ (##fxquotient _%size91086%_ '2))
                 (_%start91092%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91083%_ _%entries91089%_)
                   '1)))
            (let _%loop91096%_ ((_%probe91099%_ _%start91092%_)
                                (_%i91101%_ '1)
                                (_%deleted91103%_ '#f))
              (let ((_%k91106%_ (vector-ref _%table91080%_ _%probe91099%_)))
                (if (eq? _%k91106%_ (macro-unused-obj))
                    (if _%deleted91103%_
                        (begin
                          (vector-set!
                           _%table91080%_
                           _%deleted91103%_
                           _%key91075%_)
                          (vector-set!
                           _%table91080%_
                           (##fx+ _%deleted91103%_ '1)
                           (_%string-table-update!91076%_ _%default91077%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91074%_
                              (##fx+ (&raw-table-count _%tab91074%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91080%_
                           _%probe91099%_
                           _%key91075%_)
                          (vector-set!
                           _%table91080%_
                           (##fx+ _%probe91099%_ '1)
                           (_%string-table-update!91076%_ _%default91077%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91074%_
                              (##fx- (&raw-table-free _%tab91074%_) '1))
                             (&raw-table-count-set!
                              _%tab91074%_
                              (##fx+ (&raw-table-count _%tab91074%_) '1))))))
                    (if (eq? _%k91106%_ (macro-deleted-obj))
                        (_%loop91096%_
                         (let ((_%next-probe91113%_
                                (fx+ _%start91092%_
                                     _%i91101%_
                                     (fx* _%i91101%_ _%i91101%_))))
                           (##fxmodulo _%next-probe91113%_ _%size91086%_))
                         (##fx+ _%i91101%_ '1)
                         (let ((_%$e91116%_ _%deleted91103%_))
                           (if _%$e91116%_ _%$e91116%_ _%probe91099%_)))
                        (if (##string=? _%key91075%_ _%k91106%_)
                            (let ()
                              (vector-set!
                               _%table91080%_
                               _%probe91099%_
                               _%key91075%_)
                              (vector-set!
                               _%table91080%_
                               (##fx+ _%probe91099%_ '1)
                               (_%string-table-update!91076%_
                                (vector-ref
                                 _%table91080%_
                                 (##fx+ _%probe91099%_ '1)))))
                            (_%loop91096%_
                             (let ((_%next-probe91121%_
                                    (fx+ _%start91092%_
                                         _%i91101%_
                                         (fx* _%i91101%_ _%i91101%_))))
                               (##fxmodulo _%next-probe91121%_ _%size91086%_))
                             (##fx+ _%i91101%_ '1)
                             _%deleted91103%_))))))))))
    (define string-table-delete!
      (lambda (_%tab91029%_ _%key91031%_)
        (let ((_%table91034%_ (&raw-table-table _%tab91029%_))
              (_%seed91036%_ (&raw-table-seed _%tab91029%_)))
          (let* ((_%h91039%_
                  (fxxor (##string=?-hash _%key91031%_) _%seed91036%_))
                 (_%size91042%_ (vector-length _%table91034%_))
                 (_%entries91045%_ (##fxquotient _%size91042%_ '2))
                 (_%start91048%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91039%_ _%entries91045%_)
                   '1)))
            (let _%loop91052%_ ((_%probe91055%_ _%start91048%_)
                                (_%i91057%_ '1))
              (let ((_%k91060%_ (vector-ref _%table91034%_ _%probe91055%_)))
                (if (eq? _%k91060%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91060%_ (macro-deleted-obj))
                        (_%loop91052%_
                         (let ((_%next-probe91065%_
                                (fx+ _%start91048%_
                                     _%i91057%_
                                     (fx* _%i91057%_ _%i91057%_))))
                           (##fxmodulo _%next-probe91065%_ _%size91042%_))
                         (##fx+ _%i91057%_ '1))
                        (if (##string=? _%key91031%_ _%k91060%_)
                            (let ()
                              (vector-set!
                               _%table91034%_
                               _%probe91055%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91034%_
                               (##fx+ _%probe91055%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91029%_
                                  (##fx- (&raw-table-count _%tab91029%_)
                                         '1)))))
                            (_%loop91052%_
                             (let ((_%next-probe91071%_
                                    (fx+ _%start91048%_
                                         _%i91057%_
                                         (fx* _%i91057%_ _%i91057%_))))
                               (##fxmodulo _%next-probe91071%_ _%size91042%_))
                             (##fx+ _%i91057%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint91010%_ _%seed91012%_)
        (make-raw-table__%
         _%size-hint91010%_
         immediate-hash
         eq?
         _%seed91012%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint91018%_ '#f) (_%seed91020%_ '0))
          (make-immediate-table__% _%size-hint91018%_ _%seed91020%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint91022%_)
        (let ((_%seed91024%_ '0))
          (make-immediate-table__% _%size-hint91022%_ _%seed91024%_))))
    (define make-immediate-table
      (lambda _g92250_
        (let ((_g92249_ (##length _g92250_)))
          (cond ((##fx= _g92249_ 0) (apply make-immediate-table__0 _g92250_))
                ((##fx= _g92249_ 1) (apply make-immediate-table__1 _g92250_))
                ((##fx= _g92249_ 2) (apply make-immediate-table__% _g92250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g92250_))))))
    (define immediate-table-ref
      (lambda (_%tab90963%_ _%key90964%_ _%default90965%_)
        (let ((_%table90967%_ (&raw-table-table _%tab90963%_))
              (_%seed90968%_ (&raw-table-seed _%tab90963%_)))
          (let* ((_%h90970%_
                  (fxxor (immediate-hash _%key90964%_) _%seed90968%_))
                 (_%size90973%_ (vector-length _%table90967%_))
                 (_%entries90976%_ (##fxquotient _%size90973%_ '2))
                 (_%start90979%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90970%_ _%entries90976%_)
                   '1)))
            (let _%loop90983%_ ((_%probe90986%_ _%start90979%_)
                                (_%i90988%_ '1)
                                (_%deleted90990%_ '#f))
              (let ((_%k90993%_ (vector-ref _%table90967%_ _%probe90986%_)))
                (if (eq? _%k90993%_ (macro-unused-obj))
                    _%default90965%_
                    (if (eq? _%k90993%_ (macro-deleted-obj))
                        (_%loop90983%_
                         (let ((_%next-probe90998%_
                                (fx+ _%start90979%_
                                     _%i90988%_
                                     (fx* _%i90988%_ _%i90988%_))))
                           (##fxmodulo _%next-probe90998%_ _%size90973%_))
                         (##fx+ _%i90988%_ '1)
                         (let ((_%$e91001%_ _%deleted90990%_))
                           (if _%$e91001%_ _%$e91001%_ _%probe90986%_)))
                        (if (eq? _%key90964%_ _%k90993%_)
                            (vector-ref
                             _%table90967%_
                             (##fx+ _%probe90986%_ '1))
                            (_%loop90983%_
                             (let ((_%next-probe91006%_
                                    (fx+ _%start90979%_
                                         _%i90988%_
                                         (fx* _%i90988%_ _%i90988%_))))
                               (##fxmodulo _%next-probe91006%_ _%size90973%_))
                             (##fx+ _%i90988%_ '1)
                             _%deleted90990%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab90959%_ _%key90960%_ _%value90961%_)
        (if (##fx< (&raw-table-free _%tab90959%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90959%_))
                    '4))
            (__raw-table-rehash! _%tab90959%_)
            '#!void)
        (__immediate-table-set! _%tab90959%_ _%key90960%_ _%value90961%_)))
    (define __immediate-table-set!
      (lambda (_%tab90910%_ _%key90911%_ _%value90912%_)
        (let ((_%table90915%_ (&raw-table-table _%tab90910%_))
              (_%seed90916%_ (&raw-table-seed _%tab90910%_)))
          (let* ((_%h90918%_
                  (fxxor (immediate-hash _%key90911%_) _%seed90916%_))
                 (_%size90921%_ (vector-length _%table90915%_))
                 (_%entries90924%_ (##fxquotient _%size90921%_ '2))
                 (_%start90927%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90918%_ _%entries90924%_)
                   '1)))
            (let _%loop90931%_ ((_%probe90934%_ _%start90927%_)
                                (_%i90936%_ '1)
                                (_%deleted90938%_ '#f))
              (let ((_%k90941%_ (vector-ref _%table90915%_ _%probe90934%_)))
                (if (eq? _%k90941%_ (macro-unused-obj))
                    (if _%deleted90938%_
                        (begin
                          (vector-set!
                           _%table90915%_
                           _%deleted90938%_
                           _%key90911%_)
                          (vector-set!
                           _%table90915%_
                           (##fx+ _%deleted90938%_ '1)
                           _%value90912%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90910%_
                              (##fx+ (&raw-table-count _%tab90910%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90915%_
                           _%probe90934%_
                           _%key90911%_)
                          (vector-set!
                           _%table90915%_
                           (##fx+ _%probe90934%_ '1)
                           _%value90912%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90910%_
                              (##fx- (&raw-table-free _%tab90910%_) '1))
                             (&raw-table-count-set!
                              _%tab90910%_
                              (##fx+ (&raw-table-count _%tab90910%_) '1))))))
                    (if (eq? _%k90941%_ (macro-deleted-obj))
                        (_%loop90931%_
                         (let ((_%next-probe90948%_
                                (fx+ _%start90927%_
                                     _%i90936%_
                                     (fx* _%i90936%_ _%i90936%_))))
                           (##fxmodulo _%next-probe90948%_ _%size90921%_))
                         (##fx+ _%i90936%_ '1)
                         (let ((_%$e90951%_ _%deleted90938%_))
                           (if _%$e90951%_ _%$e90951%_ _%probe90934%_)))
                        (if (eq? _%key90911%_ _%k90941%_)
                            (let ()
                              (vector-set!
                               _%table90915%_
                               _%probe90934%_
                               _%key90911%_)
                              (vector-set!
                               _%table90915%_
                               (##fx+ _%probe90934%_ '1)
                               _%value90912%_))
                            (_%loop90931%_
                             (let ((_%next-probe90956%_
                                    (fx+ _%start90927%_
                                         _%i90936%_
                                         (fx* _%i90936%_ _%i90936%_))))
                               (##fxmodulo _%next-probe90956%_ _%size90921%_))
                             (##fx+ _%i90936%_ '1)
                             _%deleted90938%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab90905%_
               _%key90906%_
               _%immediate-table-update!90907%_
               _%default90908%_)
        (if (##fx< (&raw-table-free _%tab90905%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90905%_))
                    '4))
            (__raw-table-rehash! _%tab90905%_)
            '#!void)
        (__immediate-table-update!
         _%tab90905%_
         _%key90906%_
         _%immediate-table-update!90907%_
         _%default90908%_)))
    (define __immediate-table-update!
      (lambda (_%tab90855%_
               _%key90856%_
               _%immediate-table-update!90857%_
               _%default90858%_)
        (let ((_%table90861%_ (&raw-table-table _%tab90855%_))
              (_%seed90862%_ (&raw-table-seed _%tab90855%_)))
          (let* ((_%h90864%_
                  (fxxor (immediate-hash _%key90856%_) _%seed90862%_))
                 (_%size90867%_ (vector-length _%table90861%_))
                 (_%entries90870%_ (##fxquotient _%size90867%_ '2))
                 (_%start90873%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90864%_ _%entries90870%_)
                   '1)))
            (let _%loop90877%_ ((_%probe90880%_ _%start90873%_)
                                (_%i90882%_ '1)
                                (_%deleted90884%_ '#f))
              (let ((_%k90887%_ (vector-ref _%table90861%_ _%probe90880%_)))
                (if (eq? _%k90887%_ (macro-unused-obj))
                    (if _%deleted90884%_
                        (begin
                          (vector-set!
                           _%table90861%_
                           _%deleted90884%_
                           _%key90856%_)
                          (vector-set!
                           _%table90861%_
                           (##fx+ _%deleted90884%_ '1)
                           (_%immediate-table-update!90857%_ _%default90858%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90855%_
                              (##fx+ (&raw-table-count _%tab90855%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90861%_
                           _%probe90880%_
                           _%key90856%_)
                          (vector-set!
                           _%table90861%_
                           (##fx+ _%probe90880%_ '1)
                           (_%immediate-table-update!90857%_ _%default90858%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90855%_
                              (##fx- (&raw-table-free _%tab90855%_) '1))
                             (&raw-table-count-set!
                              _%tab90855%_
                              (##fx+ (&raw-table-count _%tab90855%_) '1))))))
                    (if (eq? _%k90887%_ (macro-deleted-obj))
                        (_%loop90877%_
                         (let ((_%next-probe90894%_
                                (fx+ _%start90873%_
                                     _%i90882%_
                                     (fx* _%i90882%_ _%i90882%_))))
                           (##fxmodulo _%next-probe90894%_ _%size90867%_))
                         (##fx+ _%i90882%_ '1)
                         (let ((_%$e90897%_ _%deleted90884%_))
                           (if _%$e90897%_ _%$e90897%_ _%probe90880%_)))
                        (if (eq? _%key90856%_ _%k90887%_)
                            (let ()
                              (vector-set!
                               _%table90861%_
                               _%probe90880%_
                               _%key90856%_)
                              (vector-set!
                               _%table90861%_
                               (##fx+ _%probe90880%_ '1)
                               (_%immediate-table-update!90857%_
                                (vector-ref
                                 _%table90861%_
                                 (##fx+ _%probe90880%_ '1)))))
                            (_%loop90877%_
                             (let ((_%next-probe90902%_
                                    (fx+ _%start90873%_
                                         _%i90882%_
                                         (fx* _%i90882%_ _%i90882%_))))
                               (##fxmodulo _%next-probe90902%_ _%size90867%_))
                             (##fx+ _%i90882%_ '1)
                             _%deleted90884%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab90810%_ _%key90812%_)
        (let ((_%table90815%_ (&raw-table-table _%tab90810%_))
              (_%seed90817%_ (&raw-table-seed _%tab90810%_)))
          (let* ((_%h90820%_
                  (fxxor (immediate-hash _%key90812%_) _%seed90817%_))
                 (_%size90823%_ (vector-length _%table90815%_))
                 (_%entries90826%_ (##fxquotient _%size90823%_ '2))
                 (_%start90829%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90820%_ _%entries90826%_)
                   '1)))
            (let _%loop90833%_ ((_%probe90836%_ _%start90829%_)
                                (_%i90838%_ '1))
              (let ((_%k90841%_ (vector-ref _%table90815%_ _%probe90836%_)))
                (if (eq? _%k90841%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90841%_ (macro-deleted-obj))
                        (_%loop90833%_
                         (let ((_%next-probe90846%_
                                (fx+ _%start90829%_
                                     _%i90838%_
                                     (fx* _%i90838%_ _%i90838%_))))
                           (##fxmodulo _%next-probe90846%_ _%size90823%_))
                         (##fx+ _%i90838%_ '1))
                        (if (eq? _%key90812%_ _%k90841%_)
                            (let ()
                              (vector-set!
                               _%table90815%_
                               _%probe90836%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90815%_
                               (##fx+ _%probe90836%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90810%_
                                  (##fx- (&raw-table-count _%tab90810%_)
                                         '1)))))
                            (_%loop90833%_
                             (let ((_%next-probe90852%_
                                    (fx+ _%start90829%_
                                         _%i90838%_
                                         (fx* _%i90838%_ _%i90838%_))))
                               (##fxmodulo _%next-probe90852%_ _%size90823%_))
                             (##fx+ _%i90838%_ '1)))))))))))
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
      (lambda (_%tab90808%_)
        (##unchecked-structure-ref
         _%tab90808%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab90806%_)
        (##unchecked-structure-ref
         _%tab90806%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab90803%_ _%val90804%_)
        (##unchecked-structure-set!
         _%tab90803%_
         _%val90804%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab90800%_ _%val90801%_)
        (##unchecked-structure-set!
         _%tab90800%_
         _%val90801%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint90776%_ _%klass90777%_ _%flags90778%_)
        (let ((_%gcht90780%_
               (__gc-table-new
                (if (fixnum? _%size-hint90776%_) _%size-hint90776%_ '16)
                _%flags90778%_)))
          (##structure _%klass90777%_ _%gcht90780%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint90785%_)
        (let* ((_%klass90787%_ __gc-table::t) (_%flags90789%_ '0))
          (make-gc-table__%
           _%size-hint90785%_
           _%klass90787%_
           _%flags90789%_))))
    (define make-gc-table__1
      (lambda (_%size-hint90791%_ _%klass90792%_)
        (let ((_%flags90794%_ '0))
          (make-gc-table__%
           _%size-hint90791%_
           _%klass90792%_
           _%flags90794%_))))
    (define make-gc-table
      (lambda _g92252_
        (let ((_g92251_ (##length _g92252_)))
          (cond ((##fx= _g92251_ 1) (apply make-gc-table__0 _g92252_))
                ((##fx= _g92251_ 2) (apply make-gc-table__1 _g92252_))
                ((##fx= _g92251_ 3) (apply make-gc-table__% _g92252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g92252_))))))
    (define __gc-table-immediate
      (lambda (_%tab90767%_)
        (let ((_%$e90769%_ (&gc-table-immediate _%tab90767%_)))
          (if _%$e90769%_
              _%$e90769%_
              (let ((_%immediate90773%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab90767%_ _%immediate90773%_)
                _%immediate90773%_)))))
    (define __gc-table-new
      (lambda (_%size90757%_ _%flags90758%_)
        (let* ((_%flags90760%_
                (##fxand _%flags90758%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags90762%_
                (fxior _%flags90760%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht90764%_
                (##gc-hash-table-allocate
                 _%size90757%_
                 _%flags90762%_
                 __gc-table-loads)))
          _%gcht90764%_)))
    (define __gc-table-e
      (lambda (_%tab90752%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht90755%_ (&gc-table-gcht _%tab90752%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht90755%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht90755%_
              (begin
                (__gc-table-rehash! _%tab90752%_)
                (&gc-table-gcht _%tab90752%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab90743%_)
        (let* ((_%old-table90745%_ (&gc-table-gcht _%tab90743%_))
               (_%new-table90747%_
                (##gc-hash-table-resize! _%old-table90745%_ __gc-table-loads))
               (_%gcht90749%_
                (##gc-hash-table-rehash!
                 _%old-table90745%_
                 _%new-table90747%_)))
          (&gc-table-gcht-set! _%tab90743%_ _%gcht90749%_))))
    (define gc-table-ref
      (lambda (_%tab90727%_ _%key90728%_ _%default90729%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90728%_)
            (let* ((_%gcht90733%_ (__gc-table-e _%tab90727%_))
                   (_%value90735%_
                    (##gc-hash-table-ref _%gcht90733%_ _%key90728%_)))
              (if (eq? _%value90735%_ (macro-unused-obj))
                  _%default90729%_
                  _%value90735%_))
            (let ((_%$e90737%_ (&gc-table-immediate _%tab90727%_)))
              (if _%$e90737%_
                  ((lambda (_%immediate90740%_)
                     (immediate-table-ref
                      _%immediate90740%_
                      _%key90728%_
                      _%default90729%_))
                   _%$e90737%_)
                  _%default90729%_)))))
    (define gc-table-set!
      (lambda (_%tab90720%_ _%key90721%_ _%value90722%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90721%_)
            (let ((_%gcht90725%_ (__gc-table-e _%tab90720%_)))
              (if (##gc-hash-table-set!
                   _%gcht90725%_
                   _%key90721%_
                   _%value90722%_)
                  (begin
                    (__gc-table-rehash! _%tab90720%_)
                    (gc-table-set! _%tab90720%_ _%key90721%_ _%value90722%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab90720%_)
             _%key90721%_
             _%value90722%_))))
    (define gc-table-update!
      (lambda (_%tab90713%_ _%key90714%_ _%update90715%_ _%default90716%_)
        (if (##mem-allocated? _%key90714%_)
            (let ((_%value90718%_
                   (gc-table-ref _%tab90713%_ _%key90714%_ _%default90716%_)))
              (gc-table-set!
               _%tab90713%_
               _%key90714%_
               (_%update90715%_ _%value90718%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab90713%_)
             _%key90714%_
             _%update90715%_
             _%default90716%_))))
    (define gc-table-delete!
      (lambda (_%tab90701%_ _%key90702%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90702%_)
            (let ((_%gcht90706%_ (__gc-table-e _%tab90701%_)))
              (if (##gc-hash-table-set!
                   _%gcht90706%_
                   _%key90702%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab90701%_)
                    (gc-table-delete! _%tab90701%_ _%key90702%_))
                  '#!void))
            (let ((_%$e90708%_ (&gc-table-immediate _%tab90701%_)))
              (if _%$e90708%_
                  ((lambda (_%immediate90711%_)
                     (immediate-table-delete! _%immediate90711%_ _%key90702%_))
                   _%$e90708%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab90682%_ _%proc90683%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht90686%_ (__gc-table-e _%tab90682%_)))
            (let _%loop90688%_ ((_%i90690%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i90690%_ (##vector-length _%gcht90686%_))
                  (let ((_%key90692%_ (##vector-ref _%gcht90686%_ _%i90690%_)))
                    (if (and (not (eq? _%key90692%_ (macro-unused-obj)))
                             (not (eq? _%key90692%_ (macro-deleted-obj))))
                        (_%proc90683%_
                         _%key90692%_
                         (##vector-ref _%gcht90686%_ (##fx+ _%i90690%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop90688%_ (##fx+ _%i90690%_ '2))))
                  '#!void)))
          (let ((_%$e90696%_ (&gc-table-immediate _%tab90682%_)))
            (if _%$e90696%_
                ((lambda (_%immediate90699%_)
                   (raw-table-for-each _%immediate90699%_ _%proc90683%_))
                 _%$e90696%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab90670%_)
        (let* ((_%gcht90672%_ (__gc-table-e _%tab90670%_))
               (_%new-table90674%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht90672%_)
                 (macro-gc-hash-table-flags _%gcht90672%_)))
               (_%result90676%_
                (##structure
                 (##structure-type _%tab90670%_)
                 _%new-table90674%_
                 '#f)))
          (gc-table-for-each
           _%tab90670%_
           (lambda (_%k90679%_ _%v90680%_)
             (gc-table-set! _%result90676%_ _%k90679%_ _%v90680%_)))
          _%result90676%_)))
    (define gc-table-clear!
      (lambda (_%tab90663%_)
        (let* ((_%gcht90665%_ (__gc-table-e _%tab90663%_))
               (_%new-table90667%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht90665%_))))
          (&gc-table-gcht-set! _%tab90663%_ _%new-table90667%_)
          (&gc-table-immediate-set! _%tab90663%_ '#f))))
    (define gc-table-length
      (lambda (_%tab90655%_)
        (let ((_%gcht90657%_ (__gc-table-e _%tab90655%_)))
          (fx+ (macro-gc-hash-table-count _%gcht90657%_)
               (let ((_%$e90659%_ (&gc-table-immediate _%tab90655%_)))
                 (if _%$e90659%_ (&raw-table-count _%$e90659%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj90640%_)
        (declare (not interrupts-enabled))
        (let ((_%val90643%_ (gc-table-ref __object-eq-hash _%obj90640%_ '#f)))
          (if _%val90643%_
              _%val90643%_
              (let* ((_%mix90645%_ __object-eq-hash-next)
                     (_%ptr90647%_ (##type-cast _%obj90640%_ '0))
                     (_%h90649%_
                      (fxand (fxxor _%mix90645%_ _%ptr90647%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e90652%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e90652%_ _%$e90652%_ '0)))
                (gc-table-set! __object-eq-hash _%obj90640%_ _%h90649%_)
                _%h90649%_)))))))
