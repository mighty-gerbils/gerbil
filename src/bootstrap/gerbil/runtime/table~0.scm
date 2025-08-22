(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1755903074)
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
      (lambda (_%tab98339%_)
        (##unchecked-structure-ref
         _%tab98339%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab98337%_)
        (##unchecked-structure-ref
         _%tab98337%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab98335%_)
        (##unchecked-structure-ref
         _%tab98335%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab98333%_)
        (##unchecked-structure-ref
         _%tab98333%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab98331%_)
        (##unchecked-structure-ref
         _%tab98331%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab98329%_)
        (##unchecked-structure-ref
         _%tab98329%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab98326%_ _%val98327%_)
        (##unchecked-structure-set!
         _%tab98326%_
         _%val98327%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab98323%_ _%val98324%_)
        (##unchecked-structure-set!
         _%tab98323%_
         _%val98324%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab98320%_ _%val98321%_)
        (##unchecked-structure-set!
         _%tab98320%_
         _%val98321%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab98317%_ _%val98318%_)
        (##unchecked-structure-set!
         _%tab98317%_
         _%val98318%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab98314%_ _%val98315%_)
        (##unchecked-structure-set!
         _%tab98314%_
         _%val98315%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab98311%_ _%val98312%_)
        (##unchecked-structure-set!
         _%tab98311%_
         _%val98312%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint98309%_)
        (if (and (fixnum? _%size-hint98309%_) (##fx> _%size-hint98309%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint98309%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint98285%_ _%hash98286%_ _%test98287%_ _%seed98288%_)
        (let* ((_%size98290%_ (raw-table-size-hint->size _%size-hint98285%_))
               (_%table98292%_
                (##make-vector _%size98290%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table98292%_
           '0
           (##fxquotient _%size98290%_ '2)
           _%hash98286%_
           _%test98287%_
           _%seed98288%_))))
    (define make-raw-table__0
      (lambda (_%size-hint98298%_ _%hash98299%_ _%test98300%_)
        (let ((_%seed98302%_ '0))
          (make-raw-table__%
           _%size-hint98298%_
           _%hash98299%_
           _%test98300%_
           _%seed98302%_))))
    (define make-raw-table
      (lambda _g98340_
        (let ((_g98341_ (##length _g98340_)))
          (cond ((##fx= _g98341_ 3) (apply make-raw-table__0 _g98340_))
                ((##fx= _g98341_ 4) (apply make-raw-table__% _g98340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g98340_))))))
    (define raw-table-ref
      (lambda (_%tab98236%_ _%key98237%_ _%default98238%_)
        (let ((_%table98240%_ (&raw-table-table _%tab98236%_))
              (_%seed98241%_ (&raw-table-seed _%tab98236%_))
              (_%hash98242%_ (&raw-table-hash _%tab98236%_))
              (_%test98243%_ (&raw-table-test _%tab98236%_)))
          (let* ((_%h98245%_
                  (fxxor (_%hash98242%_ _%key98237%_) _%seed98241%_))
                 (_%size98248%_ (vector-length _%table98240%_))
                 (_%entries98251%_ (##fxquotient _%size98248%_ '2))
                 (_%start98254%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h98245%_ _%entries98251%_)
                   '1)))
            (let _%loop98258%_ ((_%probe98261%_ _%start98254%_)
                                (_%i98263%_ '1)
                                (_%deleted98265%_ '#f))
              (let ((_%k98268%_ (vector-ref _%table98240%_ _%probe98261%_)))
                (if (eq? _%k98268%_ (macro-unused-obj))
                    _%default98238%_
                    (if (eq? _%k98268%_ (macro-deleted-obj))
                        (_%loop98258%_
                         (let ((_%next-probe98273%_
                                (fx+ _%start98254%_
                                     _%i98263%_
                                     (fx* _%i98263%_ _%i98263%_))))
                           (##fxmodulo _%next-probe98273%_ _%size98248%_))
                         (##fx+ _%i98263%_ '1)
                         (let ((_%$e98276%_ _%deleted98265%_))
                           (if _%$e98276%_ _%$e98276%_ _%probe98261%_)))
                        (if (_%test98243%_ _%key98237%_ _%k98268%_)
                            (vector-ref
                             _%table98240%_
                             (##fx+ _%probe98261%_ '1))
                            (_%loop98258%_
                             (let ((_%next-probe98281%_
                                    (fx+ _%start98254%_
                                         _%i98263%_
                                         (fx* _%i98263%_ _%i98263%_))))
                               (##fxmodulo _%next-probe98281%_ _%size98248%_))
                             (##fx+ _%i98263%_ '1)
                             _%deleted98265%_))))))))))
    (define raw-table-set!
      (lambda (_%tab98232%_ _%key98233%_ _%value98234%_)
        (if (##fx< (&raw-table-free _%tab98232%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab98232%_))
                    '4))
            (__raw-table-rehash! _%tab98232%_)
            '#!void)
        (__raw-table-set! _%tab98232%_ _%key98233%_ _%value98234%_)))
    (define raw-table-update!
      (lambda (_%tab98227%_ _%key98228%_ _%update98229%_ _%default98230%_)
        (if (##fx< (&raw-table-free _%tab98227%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab98227%_))
                    '4))
            (__raw-table-rehash! _%tab98227%_)
            '#!void)
        (__raw-table-update!
         _%tab98227%_
         _%key98228%_
         _%update98229%_
         _%default98230%_)))
    (define raw-table-delete!
      (lambda (_%tab98184%_ _%key98185%_)
        (let ((_%table98187%_ (&raw-table-table _%tab98184%_))
              (_%seed98188%_ (&raw-table-seed _%tab98184%_))
              (_%hash98189%_ (&raw-table-hash _%tab98184%_))
              (_%test98190%_ (&raw-table-test _%tab98184%_)))
          (let* ((_%h98192%_
                  (fxxor (_%hash98189%_ _%key98185%_) _%seed98188%_))
                 (_%size98195%_ (vector-length _%table98187%_))
                 (_%entries98198%_ (##fxquotient _%size98195%_ '2))
                 (_%start98201%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h98192%_ _%entries98198%_)
                   '1)))
            (let _%loop98205%_ ((_%probe98208%_ _%start98201%_)
                                (_%i98210%_ '1))
              (let ((_%k98213%_ (vector-ref _%table98187%_ _%probe98208%_)))
                (if (eq? _%k98213%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k98213%_ (macro-deleted-obj))
                        (_%loop98205%_
                         (let ((_%next-probe98218%_
                                (fx+ _%start98201%_
                                     _%i98210%_
                                     (fx* _%i98210%_ _%i98210%_))))
                           (##fxmodulo _%next-probe98218%_ _%size98195%_))
                         (##fx+ _%i98210%_ '1))
                        (if (_%test98190%_ _%key98185%_ _%k98213%_)
                            (let ()
                              (vector-set!
                               _%table98187%_
                               _%probe98208%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table98187%_
                               (##fx+ _%probe98208%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab98184%_
                                  (##fx- (&raw-table-count _%tab98184%_)
                                         '1)))))
                            (_%loop98205%_
                             (let ((_%next-probe98224%_
                                    (fx+ _%start98201%_
                                         _%i98210%_
                                         (fx* _%i98210%_ _%i98210%_))))
                               (##fxmodulo _%next-probe98224%_ _%size98195%_))
                             (##fx+ _%i98210%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab98168%_ _%proc98169%_)
        (let* ((_%table98171%_ (&raw-table-table _%tab98168%_))
               (_%size98173%_ (vector-length _%table98171%_)))
          (let _%loop98176%_ ((_%i98178%_ '0))
            (if (##fx< _%i98178%_ _%size98173%_)
                (begin
                  (let ((_%key98180%_ (vector-ref _%table98171%_ _%i98178%_)))
                    (if (if (eq? _%key98180%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key98180%_ (macro-deleted-obj))))
                        (let ((_%value98182%_
                               (vector-ref
                                _%table98171%_
                                (##fx+ _%i98178%_ '1))))
                          (_%proc98169%_ _%key98180%_ _%value98182%_))
                        '#!void))
                  (_%loop98176%_ (##fx+ _%i98178%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab98164%_)
        (let ((_%new-tab98166%_ (##structure-copy _%tab98164%_)))
          (&raw-table-table-set!
           _%new-tab98166%_
           (vector-copy (&raw-table-table _%tab98164%_)))
          _%new-tab98166%_)))
    (define raw-table-clear!
      (lambda (_%tab98162%_)
        (vector-fill! (&raw-table-table _%tab98162%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab98162%_ '0)
        (&raw-table-free-set!
         _%tab98162%_
         (##fxquotient (vector-length (&raw-table-table _%tab98162%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab98112%_ _%key98113%_ _%value98114%_)
        (let ((_%table98116%_ (&raw-table-table _%tab98112%_))
              (_%seed98117%_ (&raw-table-seed _%tab98112%_))
              (_%hash98118%_ (&raw-table-hash _%tab98112%_))
              (_%test98119%_ (&raw-table-test _%tab98112%_)))
          (let* ((_%h98121%_
                  (fxxor (_%hash98118%_ _%key98113%_) _%seed98117%_))
                 (_%size98124%_ (vector-length _%table98116%_))
                 (_%entries98127%_ (##fxquotient _%size98124%_ '2))
                 (_%start98130%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h98121%_ _%entries98127%_)
                   '1)))
            (let _%loop98134%_ ((_%probe98137%_ _%start98130%_)
                                (_%i98139%_ '1)
                                (_%deleted98141%_ '#f))
              (let ((_%k98144%_ (vector-ref _%table98116%_ _%probe98137%_)))
                (if (eq? _%k98144%_ (macro-unused-obj))
                    (if _%deleted98141%_
                        (begin
                          (vector-set!
                           _%table98116%_
                           _%deleted98141%_
                           _%key98113%_)
                          (vector-set!
                           _%table98116%_
                           (##fx+ _%deleted98141%_ '1)
                           _%value98114%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab98112%_
                              (##fx+ (&raw-table-count _%tab98112%_) '1)))))
                        (begin
                          (vector-set!
                           _%table98116%_
                           _%probe98137%_
                           _%key98113%_)
                          (vector-set!
                           _%table98116%_
                           (##fx+ _%probe98137%_ '1)
                           _%value98114%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab98112%_
                              (##fx- (&raw-table-free _%tab98112%_) '1))
                             (&raw-table-count-set!
                              _%tab98112%_
                              (##fx+ (&raw-table-count _%tab98112%_) '1))))))
                    (if (eq? _%k98144%_ (macro-deleted-obj))
                        (_%loop98134%_
                         (let ((_%next-probe98151%_
                                (fx+ _%start98130%_
                                     _%i98139%_
                                     (fx* _%i98139%_ _%i98139%_))))
                           (##fxmodulo _%next-probe98151%_ _%size98124%_))
                         (##fx+ _%i98139%_ '1)
                         (let ((_%$e98154%_ _%deleted98141%_))
                           (if _%$e98154%_ _%$e98154%_ _%probe98137%_)))
                        (if (_%test98119%_ _%key98113%_ _%k98144%_)
                            (let ()
                              (vector-set!
                               _%table98116%_
                               _%probe98137%_
                               _%key98113%_)
                              (vector-set!
                               _%table98116%_
                               (##fx+ _%probe98137%_ '1)
                               _%value98114%_))
                            (_%loop98134%_
                             (let ((_%next-probe98159%_
                                    (fx+ _%start98130%_
                                         _%i98139%_
                                         (fx* _%i98139%_ _%i98139%_))))
                               (##fxmodulo _%next-probe98159%_ _%size98124%_))
                             (##fx+ _%i98139%_ '1)
                             _%deleted98141%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab98061%_ _%key98062%_ _%update98063%_ _%default98064%_)
        (let ((_%table98066%_ (&raw-table-table _%tab98061%_))
              (_%seed98067%_ (&raw-table-seed _%tab98061%_))
              (_%hash98068%_ (&raw-table-hash _%tab98061%_))
              (_%test98069%_ (&raw-table-test _%tab98061%_)))
          (let* ((_%h98071%_
                  (fxxor (_%hash98068%_ _%key98062%_) _%seed98067%_))
                 (_%size98074%_ (vector-length _%table98066%_))
                 (_%entries98077%_ (##fxquotient _%size98074%_ '2))
                 (_%start98080%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h98071%_ _%entries98077%_)
                   '1)))
            (let _%loop98084%_ ((_%probe98087%_ _%start98080%_)
                                (_%i98089%_ '1)
                                (_%deleted98091%_ '#f))
              (let ((_%k98094%_ (vector-ref _%table98066%_ _%probe98087%_)))
                (if (eq? _%k98094%_ (macro-unused-obj))
                    (if _%deleted98091%_
                        (begin
                          (vector-set!
                           _%table98066%_
                           _%deleted98091%_
                           _%key98062%_)
                          (vector-set!
                           _%table98066%_
                           (##fx+ _%deleted98091%_ '1)
                           (_%update98063%_ _%default98064%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab98061%_
                              (##fx+ (&raw-table-count _%tab98061%_) '1)))))
                        (begin
                          (vector-set!
                           _%table98066%_
                           _%probe98087%_
                           _%key98062%_)
                          (vector-set!
                           _%table98066%_
                           (##fx+ _%probe98087%_ '1)
                           (_%update98063%_ _%default98064%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab98061%_
                              (##fx- (&raw-table-free _%tab98061%_) '1))
                             (&raw-table-count-set!
                              _%tab98061%_
                              (##fx+ (&raw-table-count _%tab98061%_) '1))))))
                    (if (eq? _%k98094%_ (macro-deleted-obj))
                        (_%loop98084%_
                         (let ((_%next-probe98101%_
                                (fx+ _%start98080%_
                                     _%i98089%_
                                     (fx* _%i98089%_ _%i98089%_))))
                           (##fxmodulo _%next-probe98101%_ _%size98074%_))
                         (##fx+ _%i98089%_ '1)
                         (let ((_%$e98104%_ _%deleted98091%_))
                           (if _%$e98104%_ _%$e98104%_ _%probe98087%_)))
                        (if (_%test98069%_ _%key98062%_ _%k98094%_)
                            (let ()
                              (vector-set!
                               _%table98066%_
                               _%probe98087%_
                               _%key98062%_)
                              (vector-set!
                               _%table98066%_
                               (##fx+ _%probe98087%_ '1)
                               (_%update98063%_
                                (vector-ref
                                 _%table98066%_
                                 (##fx+ _%probe98087%_ '1)))))
                            (_%loop98084%_
                             (let ((_%next-probe98109%_
                                    (fx+ _%start98080%_
                                         _%i98089%_
                                         (fx* _%i98089%_ _%i98089%_))))
                               (##fxmodulo _%next-probe98109%_ _%size98074%_))
                             (##fx+ _%i98089%_ '1)
                             _%deleted98091%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab98042%_)
        (let* ((_%old-table98044%_ (&raw-table-table _%tab98042%_))
               (_%old-size98046%_ (vector-length _%old-table98044%_))
               (_%new-size98048%_
                (if (##fx< (&raw-table-count _%tab98042%_)
                           (##fxquotient _%old-size98046%_ '4))
                    (vector-length _%old-table98044%_)
                    (##fx* '2 (vector-length _%old-table98044%_))))
               (_%new-table98050%_
                (##make-vector _%new-size98048%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab98042%_ _%new-table98050%_)
          (&raw-table-count-set! _%tab98042%_ '0)
          (&raw-table-free-set!
           _%tab98042%_
           (##fxquotient _%new-size98048%_ '2))
          (let _%lp98053%_ ((_%i98055%_ '0))
            (if (##fx< _%i98055%_ _%old-size98046%_)
                (begin
                  (let ((_%key98057%_
                         (vector-ref _%old-table98044%_ _%i98055%_)))
                    (if (if (eq? _%key98057%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key98057%_ (macro-deleted-obj))))
                        (let ((_%value98059%_
                               (vector-ref
                                _%old-table98044%_
                                (##fx+ _%i98055%_ '1))))
                          (__raw-table-set!
                           _%tab98042%_
                           _%key98057%_
                           _%value98059%_))
                        '#!void))
                  (_%lp98053%_ (##fx+ _%i98055%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj98034%_)
        (let ((_%t98036%_ (##type _%obj98034%_)))
          (if (##fx= (##fxand _%t98036%_ '1) '0)
              (fxand (##type-cast _%obj98034%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj98034%_)
                  (##symbol-hash _%obj98034%_)
                  (if (procedure? _%obj98034%_)
                      (procedure-hash _%obj98034%_)
                      (fxand (__eq-hash _%obj98034%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj98030%_)
        (let ((_%h98032%_
               (if (##closure? _%obj98030%_)
                   (__eq-hash _%obj98030%_)
                   (##type-cast _%obj98030%_ '0))))
          (fxand _%h98032%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj98027%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj98027%_)))
    (define eqv-hash
      (lambda (_%obj98017%_)
        (letrec ((_%combine98019%_
                  (lambda (_%a98024%_ _%b98025%_)
                    (fxand (##fx* (##fx+ _%a98024%_
                                         (fxarithmetic-shift-left
                                          _%b98025%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash98020%_
                  (lambda (_%obj98022%_)
                    (macro-number-dispatch
                     _%obj98022%_
                     (eq-hash _%obj98022%_)
                     (fxand _%obj98022%_ (macro-max-fixnum32))
                     (modulo _%obj98022%_ '331804481)
                     (_%combine98019%_
                      (_%hash98020%_ (macro-ratnum-numerator _%obj98022%_))
                      (_%hash98020%_ (macro-ratnum-denominator _%obj98022%_)))
                     (_%combine98019%_
                      (##u16vector-ref _%obj98022%_ '0)
                      (_%combine98019%_
                       (##u16vector-ref _%obj98022%_ '1)
                       (_%combine98019%_
                        (##u16vector-ref _%obj98022%_ '2)
                        (##u16vector-ref _%obj98022%_ '3))))
                     (_%combine98019%_
                      (_%hash98020%_ (macro-cpxnum-real _%obj98022%_))
                      (_%hash98020%_ (macro-cpxnum-imag _%obj98022%_)))))))
          (_%hash98020%_ _%obj98017%_))))
    (define symbolic?
      (lambda (_%obj98012%_)
        (let ((_%$e98014%_ (symbol? _%obj98012%_)))
          (if _%$e98014%_ _%$e98014%_ (keyword? _%obj98012%_)))))
    (define symbolic-hash (lambda (_%obj98010%_) (##symbol-hash _%obj98010%_)))
    (define string-hash (lambda (_%obj98008%_) (##string=?-hash _%obj98008%_)))
    (define immediate-hash
      (lambda (_%obj98006%_) (##type-cast _%obj98006%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint97987%_ _%seed97989%_)
        (make-raw-table__% _%size-hint97987%_ eq-hash eq? _%seed97989%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint97995%_ '#f) (_%seed97997%_ '0))
          (make-eq-table__% _%size-hint97995%_ _%seed97997%_))))
    (define make-eq-table__1
      (lambda (_%size-hint97999%_)
        (let ((_%seed98001%_ '0))
          (make-eq-table__% _%size-hint97999%_ _%seed98001%_))))
    (define make-eq-table
      (lambda _g98342_
        (let ((_g98343_ (##length _g98342_)))
          (cond ((##fx= _g98343_ 0) (apply make-eq-table__0 _g98342_))
                ((##fx= _g98343_ 1) (apply make-eq-table__1 _g98342_))
                ((##fx= _g98343_ 2) (apply make-eq-table__% _g98342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g98342_))))))
    (define eq-table-ref
      (lambda (_%tab97940%_ _%key97941%_ _%default97942%_)
        (let ((_%table97944%_ (&raw-table-table _%tab97940%_))
              (_%seed97945%_ (&raw-table-seed _%tab97940%_)))
          (let* ((_%h97947%_ (fxxor (eq-hash _%key97941%_) _%seed97945%_))
                 (_%size97950%_ (vector-length _%table97944%_))
                 (_%entries97953%_ (##fxquotient _%size97950%_ '2))
                 (_%start97956%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97947%_ _%entries97953%_)
                   '1)))
            (let _%loop97960%_ ((_%probe97963%_ _%start97956%_)
                                (_%i97965%_ '1)
                                (_%deleted97967%_ '#f))
              (let ((_%k97970%_ (vector-ref _%table97944%_ _%probe97963%_)))
                (if (eq? _%k97970%_ (macro-unused-obj))
                    _%default97942%_
                    (if (eq? _%k97970%_ (macro-deleted-obj))
                        (_%loop97960%_
                         (let ((_%next-probe97975%_
                                (fx+ _%start97956%_
                                     _%i97965%_
                                     (fx* _%i97965%_ _%i97965%_))))
                           (##fxmodulo _%next-probe97975%_ _%size97950%_))
                         (##fx+ _%i97965%_ '1)
                         (let ((_%$e97978%_ _%deleted97967%_))
                           (if _%$e97978%_ _%$e97978%_ _%probe97963%_)))
                        (if (eq? _%key97941%_ _%k97970%_)
                            (vector-ref
                             _%table97944%_
                             (##fx+ _%probe97963%_ '1))
                            (_%loop97960%_
                             (let ((_%next-probe97983%_
                                    (fx+ _%start97956%_
                                         _%i97965%_
                                         (fx* _%i97965%_ _%i97965%_))))
                               (##fxmodulo _%next-probe97983%_ _%size97950%_))
                             (##fx+ _%i97965%_ '1)
                             _%deleted97967%_))))))))))
    (define eq-table-set!
      (lambda (_%tab97936%_ _%key97937%_ _%value97938%_)
        (if (##fx< (&raw-table-free _%tab97936%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab97936%_))
                    '4))
            (__raw-table-rehash! _%tab97936%_)
            '#!void)
        (__eq-table-set! _%tab97936%_ _%key97937%_ _%value97938%_)))
    (define __eq-table-set!
      (lambda (_%tab97887%_ _%key97888%_ _%value97889%_)
        (let ((_%table97892%_ (&raw-table-table _%tab97887%_))
              (_%seed97893%_ (&raw-table-seed _%tab97887%_)))
          (let* ((_%h97895%_ (fxxor (eq-hash _%key97888%_) _%seed97893%_))
                 (_%size97898%_ (vector-length _%table97892%_))
                 (_%entries97901%_ (##fxquotient _%size97898%_ '2))
                 (_%start97904%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97895%_ _%entries97901%_)
                   '1)))
            (let _%loop97908%_ ((_%probe97911%_ _%start97904%_)
                                (_%i97913%_ '1)
                                (_%deleted97915%_ '#f))
              (let ((_%k97918%_ (vector-ref _%table97892%_ _%probe97911%_)))
                (if (eq? _%k97918%_ (macro-unused-obj))
                    (if _%deleted97915%_
                        (begin
                          (vector-set!
                           _%table97892%_
                           _%deleted97915%_
                           _%key97888%_)
                          (vector-set!
                           _%table97892%_
                           (##fx+ _%deleted97915%_ '1)
                           _%value97889%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab97887%_
                              (##fx+ (&raw-table-count _%tab97887%_) '1)))))
                        (begin
                          (vector-set!
                           _%table97892%_
                           _%probe97911%_
                           _%key97888%_)
                          (vector-set!
                           _%table97892%_
                           (##fx+ _%probe97911%_ '1)
                           _%value97889%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab97887%_
                              (##fx- (&raw-table-free _%tab97887%_) '1))
                             (&raw-table-count-set!
                              _%tab97887%_
                              (##fx+ (&raw-table-count _%tab97887%_) '1))))))
                    (if (eq? _%k97918%_ (macro-deleted-obj))
                        (_%loop97908%_
                         (let ((_%next-probe97925%_
                                (fx+ _%start97904%_
                                     _%i97913%_
                                     (fx* _%i97913%_ _%i97913%_))))
                           (##fxmodulo _%next-probe97925%_ _%size97898%_))
                         (##fx+ _%i97913%_ '1)
                         (let ((_%$e97928%_ _%deleted97915%_))
                           (if _%$e97928%_ _%$e97928%_ _%probe97911%_)))
                        (if (eq? _%key97888%_ _%k97918%_)
                            (let ()
                              (vector-set!
                               _%table97892%_
                               _%probe97911%_
                               _%key97888%_)
                              (vector-set!
                               _%table97892%_
                               (##fx+ _%probe97911%_ '1)
                               _%value97889%_))
                            (_%loop97908%_
                             (let ((_%next-probe97933%_
                                    (fx+ _%start97904%_
                                         _%i97913%_
                                         (fx* _%i97913%_ _%i97913%_))))
                               (##fxmodulo _%next-probe97933%_ _%size97898%_))
                             (##fx+ _%i97913%_ '1)
                             _%deleted97915%_))))))))))
    (define eq-table-update!
      (lambda (_%tab97882%_
               _%key97883%_
               _%eq-table-update!97884%_
               _%default97885%_)
        (if (##fx< (&raw-table-free _%tab97882%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab97882%_))
                    '4))
            (__raw-table-rehash! _%tab97882%_)
            '#!void)
        (__eq-table-update!
         _%tab97882%_
         _%key97883%_
         _%eq-table-update!97884%_
         _%default97885%_)))
    (define __eq-table-update!
      (lambda (_%tab97832%_
               _%key97833%_
               _%eq-table-update!97834%_
               _%default97835%_)
        (let ((_%table97838%_ (&raw-table-table _%tab97832%_))
              (_%seed97839%_ (&raw-table-seed _%tab97832%_)))
          (let* ((_%h97841%_ (fxxor (eq-hash _%key97833%_) _%seed97839%_))
                 (_%size97844%_ (vector-length _%table97838%_))
                 (_%entries97847%_ (##fxquotient _%size97844%_ '2))
                 (_%start97850%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97841%_ _%entries97847%_)
                   '1)))
            (let _%loop97854%_ ((_%probe97857%_ _%start97850%_)
                                (_%i97859%_ '1)
                                (_%deleted97861%_ '#f))
              (let ((_%k97864%_ (vector-ref _%table97838%_ _%probe97857%_)))
                (if (eq? _%k97864%_ (macro-unused-obj))
                    (if _%deleted97861%_
                        (begin
                          (vector-set!
                           _%table97838%_
                           _%deleted97861%_
                           _%key97833%_)
                          (vector-set!
                           _%table97838%_
                           (##fx+ _%deleted97861%_ '1)
                           (_%eq-table-update!97834%_ _%default97835%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab97832%_
                              (##fx+ (&raw-table-count _%tab97832%_) '1)))))
                        (begin
                          (vector-set!
                           _%table97838%_
                           _%probe97857%_
                           _%key97833%_)
                          (vector-set!
                           _%table97838%_
                           (##fx+ _%probe97857%_ '1)
                           (_%eq-table-update!97834%_ _%default97835%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab97832%_
                              (##fx- (&raw-table-free _%tab97832%_) '1))
                             (&raw-table-count-set!
                              _%tab97832%_
                              (##fx+ (&raw-table-count _%tab97832%_) '1))))))
                    (if (eq? _%k97864%_ (macro-deleted-obj))
                        (_%loop97854%_
                         (let ((_%next-probe97871%_
                                (fx+ _%start97850%_
                                     _%i97859%_
                                     (fx* _%i97859%_ _%i97859%_))))
                           (##fxmodulo _%next-probe97871%_ _%size97844%_))
                         (##fx+ _%i97859%_ '1)
                         (let ((_%$e97874%_ _%deleted97861%_))
                           (if _%$e97874%_ _%$e97874%_ _%probe97857%_)))
                        (if (eq? _%key97833%_ _%k97864%_)
                            (let ()
                              (vector-set!
                               _%table97838%_
                               _%probe97857%_
                               _%key97833%_)
                              (vector-set!
                               _%table97838%_
                               (##fx+ _%probe97857%_ '1)
                               (_%eq-table-update!97834%_
                                (vector-ref
                                 _%table97838%_
                                 (##fx+ _%probe97857%_ '1)))))
                            (_%loop97854%_
                             (let ((_%next-probe97879%_
                                    (fx+ _%start97850%_
                                         _%i97859%_
                                         (fx* _%i97859%_ _%i97859%_))))
                               (##fxmodulo _%next-probe97879%_ _%size97844%_))
                             (##fx+ _%i97859%_ '1)
                             _%deleted97861%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab97787%_ _%key97789%_)
        (let ((_%table97792%_ (&raw-table-table _%tab97787%_))
              (_%seed97794%_ (&raw-table-seed _%tab97787%_)))
          (let* ((_%h97797%_ (fxxor (eq-hash _%key97789%_) _%seed97794%_))
                 (_%size97800%_ (vector-length _%table97792%_))
                 (_%entries97803%_ (##fxquotient _%size97800%_ '2))
                 (_%start97806%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97797%_ _%entries97803%_)
                   '1)))
            (let _%loop97810%_ ((_%probe97813%_ _%start97806%_)
                                (_%i97815%_ '1))
              (let ((_%k97818%_ (vector-ref _%table97792%_ _%probe97813%_)))
                (if (eq? _%k97818%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97818%_ (macro-deleted-obj))
                        (_%loop97810%_
                         (let ((_%next-probe97823%_
                                (fx+ _%start97806%_
                                     _%i97815%_
                                     (fx* _%i97815%_ _%i97815%_))))
                           (##fxmodulo _%next-probe97823%_ _%size97800%_))
                         (##fx+ _%i97815%_ '1))
                        (if (eq? _%key97789%_ _%k97818%_)
                            (let ()
                              (vector-set!
                               _%table97792%_
                               _%probe97813%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97792%_
                               (##fx+ _%probe97813%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab97787%_
                                  (##fx- (&raw-table-count _%tab97787%_)
                                         '1)))))
                            (_%loop97810%_
                             (let ((_%next-probe97829%_
                                    (fx+ _%start97806%_
                                         _%i97815%_
                                         (fx* _%i97815%_ _%i97815%_))))
                               (##fxmodulo _%next-probe97829%_ _%size97800%_))
                             (##fx+ _%i97815%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint97768%_ _%seed97770%_)
        (make-raw-table__% _%size-hint97768%_ eqv-hash eqv? _%seed97770%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint97776%_ '#f) (_%seed97778%_ '0))
          (make-eqv-table__% _%size-hint97776%_ _%seed97778%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint97780%_)
        (let ((_%seed97782%_ '0))
          (make-eqv-table__% _%size-hint97780%_ _%seed97782%_))))
    (define make-eqv-table
      (lambda _g98344_
        (let ((_g98345_ (##length _g98344_)))
          (cond ((##fx= _g98345_ 0) (apply make-eqv-table__0 _g98344_))
                ((##fx= _g98345_ 1) (apply make-eqv-table__1 _g98344_))
                ((##fx= _g98345_ 2) (apply make-eqv-table__% _g98344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g98344_))))))
    (define eqv-table-ref
      (lambda (_%tab97721%_ _%key97722%_ _%default97723%_)
        (let ((_%table97725%_ (&raw-table-table _%tab97721%_))
              (_%seed97726%_ (&raw-table-seed _%tab97721%_)))
          (let* ((_%h97728%_ (fxxor (eqv-hash _%key97722%_) _%seed97726%_))
                 (_%size97731%_ (vector-length _%table97725%_))
                 (_%entries97734%_ (##fxquotient _%size97731%_ '2))
                 (_%start97737%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97728%_ _%entries97734%_)
                   '1)))
            (let _%loop97741%_ ((_%probe97744%_ _%start97737%_)
                                (_%i97746%_ '1)
                                (_%deleted97748%_ '#f))
              (let ((_%k97751%_ (vector-ref _%table97725%_ _%probe97744%_)))
                (if (eq? _%k97751%_ (macro-unused-obj))
                    _%default97723%_
                    (if (eq? _%k97751%_ (macro-deleted-obj))
                        (_%loop97741%_
                         (let ((_%next-probe97756%_
                                (fx+ _%start97737%_
                                     _%i97746%_
                                     (fx* _%i97746%_ _%i97746%_))))
                           (##fxmodulo _%next-probe97756%_ _%size97731%_))
                         (##fx+ _%i97746%_ '1)
                         (let ((_%$e97759%_ _%deleted97748%_))
                           (if _%$e97759%_ _%$e97759%_ _%probe97744%_)))
                        (if (eqv? _%key97722%_ _%k97751%_)
                            (vector-ref
                             _%table97725%_
                             (##fx+ _%probe97744%_ '1))
                            (_%loop97741%_
                             (let ((_%next-probe97764%_
                                    (fx+ _%start97737%_
                                         _%i97746%_
                                         (fx* _%i97746%_ _%i97746%_))))
                               (##fxmodulo _%next-probe97764%_ _%size97731%_))
                             (##fx+ _%i97746%_ '1)
                             _%deleted97748%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab97717%_ _%key97718%_ _%value97719%_)
        (if (##fx< (&raw-table-free _%tab97717%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab97717%_))
                    '4))
            (__raw-table-rehash! _%tab97717%_)
            '#!void)
        (__eqv-table-set! _%tab97717%_ _%key97718%_ _%value97719%_)))
    (define __eqv-table-set!
      (lambda (_%tab97668%_ _%key97669%_ _%value97670%_)
        (let ((_%table97673%_ (&raw-table-table _%tab97668%_))
              (_%seed97674%_ (&raw-table-seed _%tab97668%_)))
          (let* ((_%h97676%_ (fxxor (eqv-hash _%key97669%_) _%seed97674%_))
                 (_%size97679%_ (vector-length _%table97673%_))
                 (_%entries97682%_ (##fxquotient _%size97679%_ '2))
                 (_%start97685%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97676%_ _%entries97682%_)
                   '1)))
            (let _%loop97689%_ ((_%probe97692%_ _%start97685%_)
                                (_%i97694%_ '1)
                                (_%deleted97696%_ '#f))
              (let ((_%k97699%_ (vector-ref _%table97673%_ _%probe97692%_)))
                (if (eq? _%k97699%_ (macro-unused-obj))
                    (if _%deleted97696%_
                        (begin
                          (vector-set!
                           _%table97673%_
                           _%deleted97696%_
                           _%key97669%_)
                          (vector-set!
                           _%table97673%_
                           (##fx+ _%deleted97696%_ '1)
                           _%value97670%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab97668%_
                              (##fx+ (&raw-table-count _%tab97668%_) '1)))))
                        (begin
                          (vector-set!
                           _%table97673%_
                           _%probe97692%_
                           _%key97669%_)
                          (vector-set!
                           _%table97673%_
                           (##fx+ _%probe97692%_ '1)
                           _%value97670%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab97668%_
                              (##fx- (&raw-table-free _%tab97668%_) '1))
                             (&raw-table-count-set!
                              _%tab97668%_
                              (##fx+ (&raw-table-count _%tab97668%_) '1))))))
                    (if (eq? _%k97699%_ (macro-deleted-obj))
                        (_%loop97689%_
                         (let ((_%next-probe97706%_
                                (fx+ _%start97685%_
                                     _%i97694%_
                                     (fx* _%i97694%_ _%i97694%_))))
                           (##fxmodulo _%next-probe97706%_ _%size97679%_))
                         (##fx+ _%i97694%_ '1)
                         (let ((_%$e97709%_ _%deleted97696%_))
                           (if _%$e97709%_ _%$e97709%_ _%probe97692%_)))
                        (if (eqv? _%key97669%_ _%k97699%_)
                            (let ()
                              (vector-set!
                               _%table97673%_
                               _%probe97692%_
                               _%key97669%_)
                              (vector-set!
                               _%table97673%_
                               (##fx+ _%probe97692%_ '1)
                               _%value97670%_))
                            (_%loop97689%_
                             (let ((_%next-probe97714%_
                                    (fx+ _%start97685%_
                                         _%i97694%_
                                         (fx* _%i97694%_ _%i97694%_))))
                               (##fxmodulo _%next-probe97714%_ _%size97679%_))
                             (##fx+ _%i97694%_ '1)
                             _%deleted97696%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab97663%_
               _%key97664%_
               _%eqv-table-update!97665%_
               _%default97666%_)
        (if (##fx< (&raw-table-free _%tab97663%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab97663%_))
                    '4))
            (__raw-table-rehash! _%tab97663%_)
            '#!void)
        (__eqv-table-update!
         _%tab97663%_
         _%key97664%_
         _%eqv-table-update!97665%_
         _%default97666%_)))
    (define __eqv-table-update!
      (lambda (_%tab97613%_
               _%key97614%_
               _%eqv-table-update!97615%_
               _%default97616%_)
        (let ((_%table97619%_ (&raw-table-table _%tab97613%_))
              (_%seed97620%_ (&raw-table-seed _%tab97613%_)))
          (let* ((_%h97622%_ (fxxor (eqv-hash _%key97614%_) _%seed97620%_))
                 (_%size97625%_ (vector-length _%table97619%_))
                 (_%entries97628%_ (##fxquotient _%size97625%_ '2))
                 (_%start97631%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97622%_ _%entries97628%_)
                   '1)))
            (let _%loop97635%_ ((_%probe97638%_ _%start97631%_)
                                (_%i97640%_ '1)
                                (_%deleted97642%_ '#f))
              (let ((_%k97645%_ (vector-ref _%table97619%_ _%probe97638%_)))
                (if (eq? _%k97645%_ (macro-unused-obj))
                    (if _%deleted97642%_
                        (begin
                          (vector-set!
                           _%table97619%_
                           _%deleted97642%_
                           _%key97614%_)
                          (vector-set!
                           _%table97619%_
                           (##fx+ _%deleted97642%_ '1)
                           (_%eqv-table-update!97615%_ _%default97616%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab97613%_
                              (##fx+ (&raw-table-count _%tab97613%_) '1)))))
                        (begin
                          (vector-set!
                           _%table97619%_
                           _%probe97638%_
                           _%key97614%_)
                          (vector-set!
                           _%table97619%_
                           (##fx+ _%probe97638%_ '1)
                           (_%eqv-table-update!97615%_ _%default97616%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab97613%_
                              (##fx- (&raw-table-free _%tab97613%_) '1))
                             (&raw-table-count-set!
                              _%tab97613%_
                              (##fx+ (&raw-table-count _%tab97613%_) '1))))))
                    (if (eq? _%k97645%_ (macro-deleted-obj))
                        (_%loop97635%_
                         (let ((_%next-probe97652%_
                                (fx+ _%start97631%_
                                     _%i97640%_
                                     (fx* _%i97640%_ _%i97640%_))))
                           (##fxmodulo _%next-probe97652%_ _%size97625%_))
                         (##fx+ _%i97640%_ '1)
                         (let ((_%$e97655%_ _%deleted97642%_))
                           (if _%$e97655%_ _%$e97655%_ _%probe97638%_)))
                        (if (eqv? _%key97614%_ _%k97645%_)
                            (let ()
                              (vector-set!
                               _%table97619%_
                               _%probe97638%_
                               _%key97614%_)
                              (vector-set!
                               _%table97619%_
                               (##fx+ _%probe97638%_ '1)
                               (_%eqv-table-update!97615%_
                                (vector-ref
                                 _%table97619%_
                                 (##fx+ _%probe97638%_ '1)))))
                            (_%loop97635%_
                             (let ((_%next-probe97660%_
                                    (fx+ _%start97631%_
                                         _%i97640%_
                                         (fx* _%i97640%_ _%i97640%_))))
                               (##fxmodulo _%next-probe97660%_ _%size97625%_))
                             (##fx+ _%i97640%_ '1)
                             _%deleted97642%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab97568%_ _%key97570%_)
        (let ((_%table97573%_ (&raw-table-table _%tab97568%_))
              (_%seed97575%_ (&raw-table-seed _%tab97568%_)))
          (let* ((_%h97578%_ (fxxor (eqv-hash _%key97570%_) _%seed97575%_))
                 (_%size97581%_ (vector-length _%table97573%_))
                 (_%entries97584%_ (##fxquotient _%size97581%_ '2))
                 (_%start97587%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97578%_ _%entries97584%_)
                   '1)))
            (let _%loop97591%_ ((_%probe97594%_ _%start97587%_)
                                (_%i97596%_ '1))
              (let ((_%k97599%_ (vector-ref _%table97573%_ _%probe97594%_)))
                (if (eq? _%k97599%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97599%_ (macro-deleted-obj))
                        (_%loop97591%_
                         (let ((_%next-probe97604%_
                                (fx+ _%start97587%_
                                     _%i97596%_
                                     (fx* _%i97596%_ _%i97596%_))))
                           (##fxmodulo _%next-probe97604%_ _%size97581%_))
                         (##fx+ _%i97596%_ '1))
                        (if (eqv? _%key97570%_ _%k97599%_)
                            (let ()
                              (vector-set!
                               _%table97573%_
                               _%probe97594%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97573%_
                               (##fx+ _%probe97594%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab97568%_
                                  (##fx- (&raw-table-count _%tab97568%_)
                                         '1)))))
                            (_%loop97591%_
                             (let ((_%next-probe97610%_
                                    (fx+ _%start97587%_
                                         _%i97596%_
                                         (fx* _%i97596%_ _%i97596%_))))
                               (##fxmodulo _%next-probe97610%_ _%size97581%_))
                             (##fx+ _%i97596%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint97549%_ _%seed97551%_)
        (make-raw-table__%
         _%size-hint97549%_
         symbolic-hash
         eq?
         _%seed97551%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint97557%_ '#f) (_%seed97559%_ '0))
          (make-symbolic-table__% _%size-hint97557%_ _%seed97559%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint97561%_)
        (let ((_%seed97563%_ '0))
          (make-symbolic-table__% _%size-hint97561%_ _%seed97563%_))))
    (define make-symbolic-table
      (lambda _g98346_
        (let ((_g98347_ (##length _g98346_)))
          (cond ((##fx= _g98347_ 0) (apply make-symbolic-table__0 _g98346_))
                ((##fx= _g98347_ 1) (apply make-symbolic-table__1 _g98346_))
                ((##fx= _g98347_ 2) (apply make-symbolic-table__% _g98346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g98346_))))))
    (define symbolic-table-ref
      (lambda (_%tab97502%_ _%key97503%_ _%default97504%_)
        (let ((_%table97506%_ (&raw-table-table _%tab97502%_))
              (_%seed97507%_ (&raw-table-seed _%tab97502%_)))
          (let* ((_%h97509%_
                  (fxxor (##symbol-hash _%key97503%_) _%seed97507%_))
                 (_%size97512%_ (vector-length _%table97506%_))
                 (_%entries97515%_ (##fxquotient _%size97512%_ '2))
                 (_%start97518%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97509%_ _%entries97515%_)
                   '1)))
            (let _%loop97522%_ ((_%probe97525%_ _%start97518%_)
                                (_%i97527%_ '1)
                                (_%deleted97529%_ '#f))
              (let ((_%k97532%_ (vector-ref _%table97506%_ _%probe97525%_)))
                (if (eq? _%k97532%_ (macro-unused-obj))
                    _%default97504%_
                    (if (eq? _%k97532%_ (macro-deleted-obj))
                        (_%loop97522%_
                         (let ((_%next-probe97537%_
                                (fx+ _%start97518%_
                                     _%i97527%_
                                     (fx* _%i97527%_ _%i97527%_))))
                           (##fxmodulo _%next-probe97537%_ _%size97512%_))
                         (##fx+ _%i97527%_ '1)
                         (let ((_%$e97540%_ _%deleted97529%_))
                           (if _%$e97540%_ _%$e97540%_ _%probe97525%_)))
                        (if (eq? _%key97503%_ _%k97532%_)
                            (vector-ref
                             _%table97506%_
                             (##fx+ _%probe97525%_ '1))
                            (_%loop97522%_
                             (let ((_%next-probe97545%_
                                    (fx+ _%start97518%_
                                         _%i97527%_
                                         (fx* _%i97527%_ _%i97527%_))))
                               (##fxmodulo _%next-probe97545%_ _%size97512%_))
                             (##fx+ _%i97527%_ '1)
                             _%deleted97529%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab97498%_ _%key97499%_ _%value97500%_)
        (if (##fx< (&raw-table-free _%tab97498%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab97498%_))
                    '4))
            (__raw-table-rehash! _%tab97498%_)
            '#!void)
        (__symbolic-table-set! _%tab97498%_ _%key97499%_ _%value97500%_)))
    (define __symbolic-table-set!
      (lambda (_%tab97449%_ _%key97450%_ _%value97451%_)
        (let ((_%table97454%_ (&raw-table-table _%tab97449%_))
              (_%seed97455%_ (&raw-table-seed _%tab97449%_)))
          (let* ((_%h97457%_
                  (fxxor (##symbol-hash _%key97450%_) _%seed97455%_))
                 (_%size97460%_ (vector-length _%table97454%_))
                 (_%entries97463%_ (##fxquotient _%size97460%_ '2))
                 (_%start97466%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97457%_ _%entries97463%_)
                   '1)))
            (let _%loop97470%_ ((_%probe97473%_ _%start97466%_)
                                (_%i97475%_ '1)
                                (_%deleted97477%_ '#f))
              (let ((_%k97480%_ (vector-ref _%table97454%_ _%probe97473%_)))
                (if (eq? _%k97480%_ (macro-unused-obj))
                    (if _%deleted97477%_
                        (begin
                          (vector-set!
                           _%table97454%_
                           _%deleted97477%_
                           _%key97450%_)
                          (vector-set!
                           _%table97454%_
                           (##fx+ _%deleted97477%_ '1)
                           _%value97451%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab97449%_
                              (##fx+ (&raw-table-count _%tab97449%_) '1)))))
                        (begin
                          (vector-set!
                           _%table97454%_
                           _%probe97473%_
                           _%key97450%_)
                          (vector-set!
                           _%table97454%_
                           (##fx+ _%probe97473%_ '1)
                           _%value97451%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab97449%_
                              (##fx- (&raw-table-free _%tab97449%_) '1))
                             (&raw-table-count-set!
                              _%tab97449%_
                              (##fx+ (&raw-table-count _%tab97449%_) '1))))))
                    (if (eq? _%k97480%_ (macro-deleted-obj))
                        (_%loop97470%_
                         (let ((_%next-probe97487%_
                                (fx+ _%start97466%_
                                     _%i97475%_
                                     (fx* _%i97475%_ _%i97475%_))))
                           (##fxmodulo _%next-probe97487%_ _%size97460%_))
                         (##fx+ _%i97475%_ '1)
                         (let ((_%$e97490%_ _%deleted97477%_))
                           (if _%$e97490%_ _%$e97490%_ _%probe97473%_)))
                        (if (eq? _%key97450%_ _%k97480%_)
                            (let ()
                              (vector-set!
                               _%table97454%_
                               _%probe97473%_
                               _%key97450%_)
                              (vector-set!
                               _%table97454%_
                               (##fx+ _%probe97473%_ '1)
                               _%value97451%_))
                            (_%loop97470%_
                             (let ((_%next-probe97495%_
                                    (fx+ _%start97466%_
                                         _%i97475%_
                                         (fx* _%i97475%_ _%i97475%_))))
                               (##fxmodulo _%next-probe97495%_ _%size97460%_))
                             (##fx+ _%i97475%_ '1)
                             _%deleted97477%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab97444%_
               _%key97445%_
               _%symbolic-table-update!97446%_
               _%default97447%_)
        (if (##fx< (&raw-table-free _%tab97444%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab97444%_))
                    '4))
            (__raw-table-rehash! _%tab97444%_)
            '#!void)
        (__symbolic-table-update!
         _%tab97444%_
         _%key97445%_
         _%symbolic-table-update!97446%_
         _%default97447%_)))
    (define __symbolic-table-update!
      (lambda (_%tab97394%_
               _%key97395%_
               _%symbolic-table-update!97396%_
               _%default97397%_)
        (let ((_%table97400%_ (&raw-table-table _%tab97394%_))
              (_%seed97401%_ (&raw-table-seed _%tab97394%_)))
          (let* ((_%h97403%_
                  (fxxor (##symbol-hash _%key97395%_) _%seed97401%_))
                 (_%size97406%_ (vector-length _%table97400%_))
                 (_%entries97409%_ (##fxquotient _%size97406%_ '2))
                 (_%start97412%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97403%_ _%entries97409%_)
                   '1)))
            (let _%loop97416%_ ((_%probe97419%_ _%start97412%_)
                                (_%i97421%_ '1)
                                (_%deleted97423%_ '#f))
              (let ((_%k97426%_ (vector-ref _%table97400%_ _%probe97419%_)))
                (if (eq? _%k97426%_ (macro-unused-obj))
                    (if _%deleted97423%_
                        (begin
                          (vector-set!
                           _%table97400%_
                           _%deleted97423%_
                           _%key97395%_)
                          (vector-set!
                           _%table97400%_
                           (##fx+ _%deleted97423%_ '1)
                           (_%symbolic-table-update!97396%_ _%default97397%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab97394%_
                              (##fx+ (&raw-table-count _%tab97394%_) '1)))))
                        (begin
                          (vector-set!
                           _%table97400%_
                           _%probe97419%_
                           _%key97395%_)
                          (vector-set!
                           _%table97400%_
                           (##fx+ _%probe97419%_ '1)
                           (_%symbolic-table-update!97396%_ _%default97397%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab97394%_
                              (##fx- (&raw-table-free _%tab97394%_) '1))
                             (&raw-table-count-set!
                              _%tab97394%_
                              (##fx+ (&raw-table-count _%tab97394%_) '1))))))
                    (if (eq? _%k97426%_ (macro-deleted-obj))
                        (_%loop97416%_
                         (let ((_%next-probe97433%_
                                (fx+ _%start97412%_
                                     _%i97421%_
                                     (fx* _%i97421%_ _%i97421%_))))
                           (##fxmodulo _%next-probe97433%_ _%size97406%_))
                         (##fx+ _%i97421%_ '1)
                         (let ((_%$e97436%_ _%deleted97423%_))
                           (if _%$e97436%_ _%$e97436%_ _%probe97419%_)))
                        (if (eq? _%key97395%_ _%k97426%_)
                            (let ()
                              (vector-set!
                               _%table97400%_
                               _%probe97419%_
                               _%key97395%_)
                              (vector-set!
                               _%table97400%_
                               (##fx+ _%probe97419%_ '1)
                               (_%symbolic-table-update!97396%_
                                (vector-ref
                                 _%table97400%_
                                 (##fx+ _%probe97419%_ '1)))))
                            (_%loop97416%_
                             (let ((_%next-probe97441%_
                                    (fx+ _%start97412%_
                                         _%i97421%_
                                         (fx* _%i97421%_ _%i97421%_))))
                               (##fxmodulo _%next-probe97441%_ _%size97406%_))
                             (##fx+ _%i97421%_ '1)
                             _%deleted97423%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab97349%_ _%key97351%_)
        (let ((_%table97354%_ (&raw-table-table _%tab97349%_))
              (_%seed97356%_ (&raw-table-seed _%tab97349%_)))
          (let* ((_%h97359%_
                  (fxxor (##symbol-hash _%key97351%_) _%seed97356%_))
                 (_%size97362%_ (vector-length _%table97354%_))
                 (_%entries97365%_ (##fxquotient _%size97362%_ '2))
                 (_%start97368%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97359%_ _%entries97365%_)
                   '1)))
            (let _%loop97372%_ ((_%probe97375%_ _%start97368%_)
                                (_%i97377%_ '1))
              (let ((_%k97380%_ (vector-ref _%table97354%_ _%probe97375%_)))
                (if (eq? _%k97380%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97380%_ (macro-deleted-obj))
                        (_%loop97372%_
                         (let ((_%next-probe97385%_
                                (fx+ _%start97368%_
                                     _%i97377%_
                                     (fx* _%i97377%_ _%i97377%_))))
                           (##fxmodulo _%next-probe97385%_ _%size97362%_))
                         (##fx+ _%i97377%_ '1))
                        (if (eq? _%key97351%_ _%k97380%_)
                            (let ()
                              (vector-set!
                               _%table97354%_
                               _%probe97375%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97354%_
                               (##fx+ _%probe97375%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab97349%_
                                  (##fx- (&raw-table-count _%tab97349%_)
                                         '1)))))
                            (_%loop97372%_
                             (let ((_%next-probe97391%_
                                    (fx+ _%start97368%_
                                         _%i97377%_
                                         (fx* _%i97377%_ _%i97377%_))))
                               (##fxmodulo _%next-probe97391%_ _%size97362%_))
                             (##fx+ _%i97377%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint97330%_ _%seed97332%_)
        (make-raw-table__%
         _%size-hint97330%_
         string-hash
         ##string=?
         _%seed97332%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint97338%_ '#f) (_%seed97340%_ '0))
          (make-string-table__% _%size-hint97338%_ _%seed97340%_))))
    (define make-string-table__1
      (lambda (_%size-hint97342%_)
        (let ((_%seed97344%_ '0))
          (make-string-table__% _%size-hint97342%_ _%seed97344%_))))
    (define make-string-table
      (lambda _g98348_
        (let ((_g98349_ (##length _g98348_)))
          (cond ((##fx= _g98349_ 0) (apply make-string-table__0 _g98348_))
                ((##fx= _g98349_ 1) (apply make-string-table__1 _g98348_))
                ((##fx= _g98349_ 2) (apply make-string-table__% _g98348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g98348_))))))
    (define string-table-ref
      (lambda (_%tab97283%_ _%key97284%_ _%default97285%_)
        (let ((_%table97287%_ (&raw-table-table _%tab97283%_))
              (_%seed97288%_ (&raw-table-seed _%tab97283%_)))
          (let* ((_%h97290%_
                  (fxxor (##string=?-hash _%key97284%_) _%seed97288%_))
                 (_%size97293%_ (vector-length _%table97287%_))
                 (_%entries97296%_ (##fxquotient _%size97293%_ '2))
                 (_%start97299%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97290%_ _%entries97296%_)
                   '1)))
            (let _%loop97303%_ ((_%probe97306%_ _%start97299%_)
                                (_%i97308%_ '1)
                                (_%deleted97310%_ '#f))
              (let ((_%k97313%_ (vector-ref _%table97287%_ _%probe97306%_)))
                (if (eq? _%k97313%_ (macro-unused-obj))
                    _%default97285%_
                    (if (eq? _%k97313%_ (macro-deleted-obj))
                        (_%loop97303%_
                         (let ((_%next-probe97318%_
                                (fx+ _%start97299%_
                                     _%i97308%_
                                     (fx* _%i97308%_ _%i97308%_))))
                           (##fxmodulo _%next-probe97318%_ _%size97293%_))
                         (##fx+ _%i97308%_ '1)
                         (let ((_%$e97321%_ _%deleted97310%_))
                           (if _%$e97321%_ _%$e97321%_ _%probe97306%_)))
                        (if (##string=? _%key97284%_ _%k97313%_)
                            (vector-ref
                             _%table97287%_
                             (##fx+ _%probe97306%_ '1))
                            (_%loop97303%_
                             (let ((_%next-probe97326%_
                                    (fx+ _%start97299%_
                                         _%i97308%_
                                         (fx* _%i97308%_ _%i97308%_))))
                               (##fxmodulo _%next-probe97326%_ _%size97293%_))
                             (##fx+ _%i97308%_ '1)
                             _%deleted97310%_))))))))))
    (define string-table-set!
      (lambda (_%tab97279%_ _%key97280%_ _%value97281%_)
        (if (##fx< (&raw-table-free _%tab97279%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab97279%_))
                    '4))
            (__raw-table-rehash! _%tab97279%_)
            '#!void)
        (__string-table-set! _%tab97279%_ _%key97280%_ _%value97281%_)))
    (define __string-table-set!
      (lambda (_%tab97230%_ _%key97231%_ _%value97232%_)
        (let ((_%table97235%_ (&raw-table-table _%tab97230%_))
              (_%seed97236%_ (&raw-table-seed _%tab97230%_)))
          (let* ((_%h97238%_
                  (fxxor (##string=?-hash _%key97231%_) _%seed97236%_))
                 (_%size97241%_ (vector-length _%table97235%_))
                 (_%entries97244%_ (##fxquotient _%size97241%_ '2))
                 (_%start97247%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97238%_ _%entries97244%_)
                   '1)))
            (let _%loop97251%_ ((_%probe97254%_ _%start97247%_)
                                (_%i97256%_ '1)
                                (_%deleted97258%_ '#f))
              (let ((_%k97261%_ (vector-ref _%table97235%_ _%probe97254%_)))
                (if (eq? _%k97261%_ (macro-unused-obj))
                    (if _%deleted97258%_
                        (begin
                          (vector-set!
                           _%table97235%_
                           _%deleted97258%_
                           _%key97231%_)
                          (vector-set!
                           _%table97235%_
                           (##fx+ _%deleted97258%_ '1)
                           _%value97232%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab97230%_
                              (##fx+ (&raw-table-count _%tab97230%_) '1)))))
                        (begin
                          (vector-set!
                           _%table97235%_
                           _%probe97254%_
                           _%key97231%_)
                          (vector-set!
                           _%table97235%_
                           (##fx+ _%probe97254%_ '1)
                           _%value97232%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab97230%_
                              (##fx- (&raw-table-free _%tab97230%_) '1))
                             (&raw-table-count-set!
                              _%tab97230%_
                              (##fx+ (&raw-table-count _%tab97230%_) '1))))))
                    (if (eq? _%k97261%_ (macro-deleted-obj))
                        (_%loop97251%_
                         (let ((_%next-probe97268%_
                                (fx+ _%start97247%_
                                     _%i97256%_
                                     (fx* _%i97256%_ _%i97256%_))))
                           (##fxmodulo _%next-probe97268%_ _%size97241%_))
                         (##fx+ _%i97256%_ '1)
                         (let ((_%$e97271%_ _%deleted97258%_))
                           (if _%$e97271%_ _%$e97271%_ _%probe97254%_)))
                        (if (##string=? _%key97231%_ _%k97261%_)
                            (let ()
                              (vector-set!
                               _%table97235%_
                               _%probe97254%_
                               _%key97231%_)
                              (vector-set!
                               _%table97235%_
                               (##fx+ _%probe97254%_ '1)
                               _%value97232%_))
                            (_%loop97251%_
                             (let ((_%next-probe97276%_
                                    (fx+ _%start97247%_
                                         _%i97256%_
                                         (fx* _%i97256%_ _%i97256%_))))
                               (##fxmodulo _%next-probe97276%_ _%size97241%_))
                             (##fx+ _%i97256%_ '1)
                             _%deleted97258%_))))))))))
    (define string-table-update!
      (lambda (_%tab97225%_
               _%key97226%_
               _%string-table-update!97227%_
               _%default97228%_)
        (if (##fx< (&raw-table-free _%tab97225%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab97225%_))
                    '4))
            (__raw-table-rehash! _%tab97225%_)
            '#!void)
        (__string-table-update!
         _%tab97225%_
         _%key97226%_
         _%string-table-update!97227%_
         _%default97228%_)))
    (define __string-table-update!
      (lambda (_%tab97175%_
               _%key97176%_
               _%string-table-update!97177%_
               _%default97178%_)
        (let ((_%table97181%_ (&raw-table-table _%tab97175%_))
              (_%seed97182%_ (&raw-table-seed _%tab97175%_)))
          (let* ((_%h97184%_
                  (fxxor (##string=?-hash _%key97176%_) _%seed97182%_))
                 (_%size97187%_ (vector-length _%table97181%_))
                 (_%entries97190%_ (##fxquotient _%size97187%_ '2))
                 (_%start97193%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97184%_ _%entries97190%_)
                   '1)))
            (let _%loop97197%_ ((_%probe97200%_ _%start97193%_)
                                (_%i97202%_ '1)
                                (_%deleted97204%_ '#f))
              (let ((_%k97207%_ (vector-ref _%table97181%_ _%probe97200%_)))
                (if (eq? _%k97207%_ (macro-unused-obj))
                    (if _%deleted97204%_
                        (begin
                          (vector-set!
                           _%table97181%_
                           _%deleted97204%_
                           _%key97176%_)
                          (vector-set!
                           _%table97181%_
                           (##fx+ _%deleted97204%_ '1)
                           (_%string-table-update!97177%_ _%default97178%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab97175%_
                              (##fx+ (&raw-table-count _%tab97175%_) '1)))))
                        (begin
                          (vector-set!
                           _%table97181%_
                           _%probe97200%_
                           _%key97176%_)
                          (vector-set!
                           _%table97181%_
                           (##fx+ _%probe97200%_ '1)
                           (_%string-table-update!97177%_ _%default97178%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab97175%_
                              (##fx- (&raw-table-free _%tab97175%_) '1))
                             (&raw-table-count-set!
                              _%tab97175%_
                              (##fx+ (&raw-table-count _%tab97175%_) '1))))))
                    (if (eq? _%k97207%_ (macro-deleted-obj))
                        (_%loop97197%_
                         (let ((_%next-probe97214%_
                                (fx+ _%start97193%_
                                     _%i97202%_
                                     (fx* _%i97202%_ _%i97202%_))))
                           (##fxmodulo _%next-probe97214%_ _%size97187%_))
                         (##fx+ _%i97202%_ '1)
                         (let ((_%$e97217%_ _%deleted97204%_))
                           (if _%$e97217%_ _%$e97217%_ _%probe97200%_)))
                        (if (##string=? _%key97176%_ _%k97207%_)
                            (let ()
                              (vector-set!
                               _%table97181%_
                               _%probe97200%_
                               _%key97176%_)
                              (vector-set!
                               _%table97181%_
                               (##fx+ _%probe97200%_ '1)
                               (_%string-table-update!97177%_
                                (vector-ref
                                 _%table97181%_
                                 (##fx+ _%probe97200%_ '1)))))
                            (_%loop97197%_
                             (let ((_%next-probe97222%_
                                    (fx+ _%start97193%_
                                         _%i97202%_
                                         (fx* _%i97202%_ _%i97202%_))))
                               (##fxmodulo _%next-probe97222%_ _%size97187%_))
                             (##fx+ _%i97202%_ '1)
                             _%deleted97204%_))))))))))
    (define string-table-delete!
      (lambda (_%tab97130%_ _%key97132%_)
        (let ((_%table97135%_ (&raw-table-table _%tab97130%_))
              (_%seed97137%_ (&raw-table-seed _%tab97130%_)))
          (let* ((_%h97140%_
                  (fxxor (##string=?-hash _%key97132%_) _%seed97137%_))
                 (_%size97143%_ (vector-length _%table97135%_))
                 (_%entries97146%_ (##fxquotient _%size97143%_ '2))
                 (_%start97149%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97140%_ _%entries97146%_)
                   '1)))
            (let _%loop97153%_ ((_%probe97156%_ _%start97149%_)
                                (_%i97158%_ '1))
              (let ((_%k97161%_ (vector-ref _%table97135%_ _%probe97156%_)))
                (if (eq? _%k97161%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97161%_ (macro-deleted-obj))
                        (_%loop97153%_
                         (let ((_%next-probe97166%_
                                (fx+ _%start97149%_
                                     _%i97158%_
                                     (fx* _%i97158%_ _%i97158%_))))
                           (##fxmodulo _%next-probe97166%_ _%size97143%_))
                         (##fx+ _%i97158%_ '1))
                        (if (##string=? _%key97132%_ _%k97161%_)
                            (let ()
                              (vector-set!
                               _%table97135%_
                               _%probe97156%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97135%_
                               (##fx+ _%probe97156%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab97130%_
                                  (##fx- (&raw-table-count _%tab97130%_)
                                         '1)))))
                            (_%loop97153%_
                             (let ((_%next-probe97172%_
                                    (fx+ _%start97149%_
                                         _%i97158%_
                                         (fx* _%i97158%_ _%i97158%_))))
                               (##fxmodulo _%next-probe97172%_ _%size97143%_))
                             (##fx+ _%i97158%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint97111%_ _%seed97113%_)
        (make-raw-table__%
         _%size-hint97111%_
         immediate-hash
         eq?
         _%seed97113%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint97119%_ '#f) (_%seed97121%_ '0))
          (make-immediate-table__% _%size-hint97119%_ _%seed97121%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint97123%_)
        (let ((_%seed97125%_ '0))
          (make-immediate-table__% _%size-hint97123%_ _%seed97125%_))))
    (define make-immediate-table
      (lambda _g98350_
        (let ((_g98351_ (##length _g98350_)))
          (cond ((##fx= _g98351_ 0) (apply make-immediate-table__0 _g98350_))
                ((##fx= _g98351_ 1) (apply make-immediate-table__1 _g98350_))
                ((##fx= _g98351_ 2) (apply make-immediate-table__% _g98350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g98350_))))))
    (define immediate-table-ref
      (lambda (_%tab97064%_ _%key97065%_ _%default97066%_)
        (let ((_%table97068%_ (&raw-table-table _%tab97064%_))
              (_%seed97069%_ (&raw-table-seed _%tab97064%_)))
          (let* ((_%h97071%_
                  (fxxor (immediate-hash _%key97065%_) _%seed97069%_))
                 (_%size97074%_ (vector-length _%table97068%_))
                 (_%entries97077%_ (##fxquotient _%size97074%_ '2))
                 (_%start97080%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97071%_ _%entries97077%_)
                   '1)))
            (let _%loop97084%_ ((_%probe97087%_ _%start97080%_)
                                (_%i97089%_ '1)
                                (_%deleted97091%_ '#f))
              (let ((_%k97094%_ (vector-ref _%table97068%_ _%probe97087%_)))
                (if (eq? _%k97094%_ (macro-unused-obj))
                    _%default97066%_
                    (if (eq? _%k97094%_ (macro-deleted-obj))
                        (_%loop97084%_
                         (let ((_%next-probe97099%_
                                (fx+ _%start97080%_
                                     _%i97089%_
                                     (fx* _%i97089%_ _%i97089%_))))
                           (##fxmodulo _%next-probe97099%_ _%size97074%_))
                         (##fx+ _%i97089%_ '1)
                         (let ((_%$e97102%_ _%deleted97091%_))
                           (if _%$e97102%_ _%$e97102%_ _%probe97087%_)))
                        (if (eq? _%key97065%_ _%k97094%_)
                            (vector-ref
                             _%table97068%_
                             (##fx+ _%probe97087%_ '1))
                            (_%loop97084%_
                             (let ((_%next-probe97107%_
                                    (fx+ _%start97080%_
                                         _%i97089%_
                                         (fx* _%i97089%_ _%i97089%_))))
                               (##fxmodulo _%next-probe97107%_ _%size97074%_))
                             (##fx+ _%i97089%_ '1)
                             _%deleted97091%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab97060%_ _%key97061%_ _%value97062%_)
        (if (##fx< (&raw-table-free _%tab97060%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab97060%_))
                    '4))
            (__raw-table-rehash! _%tab97060%_)
            '#!void)
        (__immediate-table-set! _%tab97060%_ _%key97061%_ _%value97062%_)))
    (define __immediate-table-set!
      (lambda (_%tab97011%_ _%key97012%_ _%value97013%_)
        (let ((_%table97016%_ (&raw-table-table _%tab97011%_))
              (_%seed97017%_ (&raw-table-seed _%tab97011%_)))
          (let* ((_%h97019%_
                  (fxxor (immediate-hash _%key97012%_) _%seed97017%_))
                 (_%size97022%_ (vector-length _%table97016%_))
                 (_%entries97025%_ (##fxquotient _%size97022%_ '2))
                 (_%start97028%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h97019%_ _%entries97025%_)
                   '1)))
            (let _%loop97032%_ ((_%probe97035%_ _%start97028%_)
                                (_%i97037%_ '1)
                                (_%deleted97039%_ '#f))
              (let ((_%k97042%_ (vector-ref _%table97016%_ _%probe97035%_)))
                (if (eq? _%k97042%_ (macro-unused-obj))
                    (if _%deleted97039%_
                        (begin
                          (vector-set!
                           _%table97016%_
                           _%deleted97039%_
                           _%key97012%_)
                          (vector-set!
                           _%table97016%_
                           (##fx+ _%deleted97039%_ '1)
                           _%value97013%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab97011%_
                              (##fx+ (&raw-table-count _%tab97011%_) '1)))))
                        (begin
                          (vector-set!
                           _%table97016%_
                           _%probe97035%_
                           _%key97012%_)
                          (vector-set!
                           _%table97016%_
                           (##fx+ _%probe97035%_ '1)
                           _%value97013%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab97011%_
                              (##fx- (&raw-table-free _%tab97011%_) '1))
                             (&raw-table-count-set!
                              _%tab97011%_
                              (##fx+ (&raw-table-count _%tab97011%_) '1))))))
                    (if (eq? _%k97042%_ (macro-deleted-obj))
                        (_%loop97032%_
                         (let ((_%next-probe97049%_
                                (fx+ _%start97028%_
                                     _%i97037%_
                                     (fx* _%i97037%_ _%i97037%_))))
                           (##fxmodulo _%next-probe97049%_ _%size97022%_))
                         (##fx+ _%i97037%_ '1)
                         (let ((_%$e97052%_ _%deleted97039%_))
                           (if _%$e97052%_ _%$e97052%_ _%probe97035%_)))
                        (if (eq? _%key97012%_ _%k97042%_)
                            (let ()
                              (vector-set!
                               _%table97016%_
                               _%probe97035%_
                               _%key97012%_)
                              (vector-set!
                               _%table97016%_
                               (##fx+ _%probe97035%_ '1)
                               _%value97013%_))
                            (_%loop97032%_
                             (let ((_%next-probe97057%_
                                    (fx+ _%start97028%_
                                         _%i97037%_
                                         (fx* _%i97037%_ _%i97037%_))))
                               (##fxmodulo _%next-probe97057%_ _%size97022%_))
                             (##fx+ _%i97037%_ '1)
                             _%deleted97039%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab97006%_
               _%key97007%_
               _%immediate-table-update!97008%_
               _%default97009%_)
        (if (##fx< (&raw-table-free _%tab97006%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab97006%_))
                    '4))
            (__raw-table-rehash! _%tab97006%_)
            '#!void)
        (__immediate-table-update!
         _%tab97006%_
         _%key97007%_
         _%immediate-table-update!97008%_
         _%default97009%_)))
    (define __immediate-table-update!
      (lambda (_%tab96956%_
               _%key96957%_
               _%immediate-table-update!96958%_
               _%default96959%_)
        (let ((_%table96962%_ (&raw-table-table _%tab96956%_))
              (_%seed96963%_ (&raw-table-seed _%tab96956%_)))
          (let* ((_%h96965%_
                  (fxxor (immediate-hash _%key96957%_) _%seed96963%_))
                 (_%size96968%_ (vector-length _%table96962%_))
                 (_%entries96971%_ (##fxquotient _%size96968%_ '2))
                 (_%start96974%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h96965%_ _%entries96971%_)
                   '1)))
            (let _%loop96978%_ ((_%probe96981%_ _%start96974%_)
                                (_%i96983%_ '1)
                                (_%deleted96985%_ '#f))
              (let ((_%k96988%_ (vector-ref _%table96962%_ _%probe96981%_)))
                (if (eq? _%k96988%_ (macro-unused-obj))
                    (if _%deleted96985%_
                        (begin
                          (vector-set!
                           _%table96962%_
                           _%deleted96985%_
                           _%key96957%_)
                          (vector-set!
                           _%table96962%_
                           (##fx+ _%deleted96985%_ '1)
                           (_%immediate-table-update!96958%_ _%default96959%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab96956%_
                              (##fx+ (&raw-table-count _%tab96956%_) '1)))))
                        (begin
                          (vector-set!
                           _%table96962%_
                           _%probe96981%_
                           _%key96957%_)
                          (vector-set!
                           _%table96962%_
                           (##fx+ _%probe96981%_ '1)
                           (_%immediate-table-update!96958%_ _%default96959%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab96956%_
                              (##fx- (&raw-table-free _%tab96956%_) '1))
                             (&raw-table-count-set!
                              _%tab96956%_
                              (##fx+ (&raw-table-count _%tab96956%_) '1))))))
                    (if (eq? _%k96988%_ (macro-deleted-obj))
                        (_%loop96978%_
                         (let ((_%next-probe96995%_
                                (fx+ _%start96974%_
                                     _%i96983%_
                                     (fx* _%i96983%_ _%i96983%_))))
                           (##fxmodulo _%next-probe96995%_ _%size96968%_))
                         (##fx+ _%i96983%_ '1)
                         (let ((_%$e96998%_ _%deleted96985%_))
                           (if _%$e96998%_ _%$e96998%_ _%probe96981%_)))
                        (if (eq? _%key96957%_ _%k96988%_)
                            (let ()
                              (vector-set!
                               _%table96962%_
                               _%probe96981%_
                               _%key96957%_)
                              (vector-set!
                               _%table96962%_
                               (##fx+ _%probe96981%_ '1)
                               (_%immediate-table-update!96958%_
                                (vector-ref
                                 _%table96962%_
                                 (##fx+ _%probe96981%_ '1)))))
                            (_%loop96978%_
                             (let ((_%next-probe97003%_
                                    (fx+ _%start96974%_
                                         _%i96983%_
                                         (fx* _%i96983%_ _%i96983%_))))
                               (##fxmodulo _%next-probe97003%_ _%size96968%_))
                             (##fx+ _%i96983%_ '1)
                             _%deleted96985%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab96911%_ _%key96913%_)
        (let ((_%table96916%_ (&raw-table-table _%tab96911%_))
              (_%seed96918%_ (&raw-table-seed _%tab96911%_)))
          (let* ((_%h96921%_
                  (fxxor (immediate-hash _%key96913%_) _%seed96918%_))
                 (_%size96924%_ (vector-length _%table96916%_))
                 (_%entries96927%_ (##fxquotient _%size96924%_ '2))
                 (_%start96930%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h96921%_ _%entries96927%_)
                   '1)))
            (let _%loop96934%_ ((_%probe96937%_ _%start96930%_)
                                (_%i96939%_ '1))
              (let ((_%k96942%_ (vector-ref _%table96916%_ _%probe96937%_)))
                (if (eq? _%k96942%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k96942%_ (macro-deleted-obj))
                        (_%loop96934%_
                         (let ((_%next-probe96947%_
                                (fx+ _%start96930%_
                                     _%i96939%_
                                     (fx* _%i96939%_ _%i96939%_))))
                           (##fxmodulo _%next-probe96947%_ _%size96924%_))
                         (##fx+ _%i96939%_ '1))
                        (if (eq? _%key96913%_ _%k96942%_)
                            (let ()
                              (vector-set!
                               _%table96916%_
                               _%probe96937%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table96916%_
                               (##fx+ _%probe96937%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab96911%_
                                  (##fx- (&raw-table-count _%tab96911%_)
                                         '1)))))
                            (_%loop96934%_
                             (let ((_%next-probe96953%_
                                    (fx+ _%start96930%_
                                         _%i96939%_
                                         (fx* _%i96939%_ _%i96939%_))))
                               (##fxmodulo _%next-probe96953%_ _%size96924%_))
                             (##fx+ _%i96939%_ '1)))))))))))
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
      (lambda (_%tab96909%_)
        (##unchecked-structure-ref
         _%tab96909%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab96907%_)
        (##unchecked-structure-ref
         _%tab96907%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab96904%_ _%val96905%_)
        (##unchecked-structure-set!
         _%tab96904%_
         _%val96905%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab96901%_ _%val96902%_)
        (##unchecked-structure-set!
         _%tab96901%_
         _%val96902%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint96877%_ _%klass96878%_ _%flags96879%_)
        (let ((_%gcht96881%_
               (__gc-table-new
                (if (fixnum? _%size-hint96877%_) _%size-hint96877%_ '16)
                _%flags96879%_)))
          (##structure _%klass96878%_ _%gcht96881%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint96886%_)
        (let* ((_%klass96888%_ __gc-table::t) (_%flags96890%_ '0))
          (make-gc-table__%
           _%size-hint96886%_
           _%klass96888%_
           _%flags96890%_))))
    (define make-gc-table__1
      (lambda (_%size-hint96892%_ _%klass96893%_)
        (let ((_%flags96895%_ '0))
          (make-gc-table__%
           _%size-hint96892%_
           _%klass96893%_
           _%flags96895%_))))
    (define make-gc-table
      (lambda _g98352_
        (let ((_g98353_ (##length _g98352_)))
          (cond ((##fx= _g98353_ 1) (apply make-gc-table__0 _g98352_))
                ((##fx= _g98353_ 2) (apply make-gc-table__1 _g98352_))
                ((##fx= _g98353_ 3) (apply make-gc-table__% _g98352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g98352_))))))
    (define __gc-table-immediate
      (lambda (_%tab96868%_)
        (let ((_%$e96870%_ (&gc-table-immediate _%tab96868%_)))
          (if _%$e96870%_
              _%$e96870%_
              (let ((_%immediate96874%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab96868%_ _%immediate96874%_)
                _%immediate96874%_)))))
    (define __gc-table-new
      (lambda (_%size96858%_ _%flags96859%_)
        (let* ((_%flags96861%_
                (##fxand _%flags96859%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags96863%_
                (fxior _%flags96861%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht96865%_
                (##gc-hash-table-allocate
                 _%size96858%_
                 _%flags96863%_
                 __gc-table-loads)))
          _%gcht96865%_)))
    (define __gc-table-e
      (lambda (_%tab96853%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht96856%_ (&gc-table-gcht _%tab96853%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht96856%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht96856%_
              (begin
                (__gc-table-rehash! _%tab96853%_)
                (&gc-table-gcht _%tab96853%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab96844%_)
        (let* ((_%old-table96846%_ (&gc-table-gcht _%tab96844%_))
               (_%new-table96848%_
                (##gc-hash-table-resize! _%old-table96846%_ __gc-table-loads))
               (_%gcht96850%_
                (##gc-hash-table-rehash!
                 _%old-table96846%_
                 _%new-table96848%_)))
          (&gc-table-gcht-set! _%tab96844%_ _%gcht96850%_))))
    (define gc-table-ref
      (lambda (_%tab96828%_ _%key96829%_ _%default96830%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key96829%_)
            (let* ((_%gcht96834%_ (__gc-table-e _%tab96828%_))
                   (_%value96836%_
                    (##gc-hash-table-ref _%gcht96834%_ _%key96829%_)))
              (if (eq? _%value96836%_ (macro-unused-obj))
                  _%default96830%_
                  _%value96836%_))
            (let ((_%$e96838%_ (&gc-table-immediate _%tab96828%_)))
              (if _%$e96838%_
                  ((lambda (_%immediate96841%_)
                     (immediate-table-ref
                      _%immediate96841%_
                      _%key96829%_
                      _%default96830%_))
                   _%$e96838%_)
                  _%default96830%_)))))
    (define gc-table-set!
      (lambda (_%tab96821%_ _%key96822%_ _%value96823%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key96822%_)
            (let ((_%gcht96826%_ (__gc-table-e _%tab96821%_)))
              (if (##gc-hash-table-set!
                   _%gcht96826%_
                   _%key96822%_
                   _%value96823%_)
                  (begin
                    (__gc-table-rehash! _%tab96821%_)
                    (gc-table-set! _%tab96821%_ _%key96822%_ _%value96823%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab96821%_)
             _%key96822%_
             _%value96823%_))))
    (define gc-table-update!
      (lambda (_%tab96814%_ _%key96815%_ _%update96816%_ _%default96817%_)
        (if (##mem-allocated? _%key96815%_)
            (let ((_%value96819%_
                   (gc-table-ref _%tab96814%_ _%key96815%_ _%default96817%_)))
              (gc-table-set!
               _%tab96814%_
               _%key96815%_
               (_%update96816%_ _%value96819%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab96814%_)
             _%key96815%_
             _%update96816%_
             _%default96817%_))))
    (define gc-table-delete!
      (lambda (_%tab96802%_ _%key96803%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key96803%_)
            (let ((_%gcht96807%_ (__gc-table-e _%tab96802%_)))
              (if (##gc-hash-table-set!
                   _%gcht96807%_
                   _%key96803%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab96802%_)
                    (gc-table-delete! _%tab96802%_ _%key96803%_))
                  '#!void))
            (let ((_%$e96809%_ (&gc-table-immediate _%tab96802%_)))
              (if _%$e96809%_
                  ((lambda (_%immediate96812%_)
                     (immediate-table-delete! _%immediate96812%_ _%key96803%_))
                   _%$e96809%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab96791%_ _%proc96792%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht96795%_ (__gc-table-e _%tab96791%_)))
            (##gc-hash-table-for-each _%proc96792%_ _%gcht96795%_))
          (let ((_%$e96797%_ (&gc-table-immediate _%tab96791%_)))
            (if _%$e96797%_
                ((lambda (_%immediate96800%_)
                   (raw-table-for-each _%immediate96800%_ _%proc96792%_))
                 _%$e96797%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab96779%_)
        (let* ((_%gcht96781%_ (__gc-table-e _%tab96779%_))
               (_%new-table96783%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht96781%_)
                 (macro-gc-hash-table-flags _%gcht96781%_)))
               (_%result96785%_
                (##structure
                 (##structure-type _%tab96779%_)
                 _%new-table96783%_
                 '#f)))
          (gc-table-for-each
           _%tab96779%_
           (lambda (_%k96788%_ _%v96789%_)
             (gc-table-set! _%result96785%_ _%k96788%_ _%v96789%_)))
          _%result96785%_)))
    (define gc-table-clear!
      (lambda (_%tab96772%_)
        (let* ((_%gcht96774%_ (__gc-table-e _%tab96772%_))
               (_%new-table96776%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht96774%_))))
          (&gc-table-gcht-set! _%tab96772%_ _%new-table96776%_)
          (&gc-table-immediate-set! _%tab96772%_ '#f))))
    (define gc-table-length
      (lambda (_%tab96764%_)
        (let ((_%gcht96766%_ (__gc-table-e _%tab96764%_)))
          (fx+ (macro-gc-hash-table-count _%gcht96766%_)
               (let ((_%$e96768%_ (&gc-table-immediate _%tab96764%_)))
                 (if _%$e96768%_ (&raw-table-count _%$e96768%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj96749%_)
        (declare (not interrupts-enabled))
        (let ((_%val96752%_ (gc-table-ref __object-eq-hash _%obj96749%_ '#f)))
          (if _%val96752%_
              _%val96752%_
              (let* ((_%mix96754%_ __object-eq-hash-next)
                     (_%ptr96756%_ (##type-cast _%obj96749%_ '0))
                     (_%h96758%_
                      (fxand (fxxor _%mix96754%_ _%ptr96756%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e96761%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e96761%_ _%$e96761%_ '0)))
                (gc-table-set! __object-eq-hash _%obj96749%_ _%h96758%_)
                _%h96758%_)))))))
