(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1713631264)
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
      (lambda (_%tab93881%_)
        (##unchecked-structure-ref
         _%tab93881%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab93879%_)
        (##unchecked-structure-ref
         _%tab93879%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab93877%_)
        (##unchecked-structure-ref
         _%tab93877%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab93875%_)
        (##unchecked-structure-ref
         _%tab93875%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab93873%_)
        (##unchecked-structure-ref
         _%tab93873%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab93871%_)
        (##unchecked-structure-ref
         _%tab93871%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab93868%_ _%val93869%_)
        (##unchecked-structure-set!
         _%tab93868%_
         _%val93869%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab93865%_ _%val93866%_)
        (##unchecked-structure-set!
         _%tab93865%_
         _%val93866%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab93862%_ _%val93863%_)
        (##unchecked-structure-set!
         _%tab93862%_
         _%val93863%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab93859%_ _%val93860%_)
        (##unchecked-structure-set!
         _%tab93859%_
         _%val93860%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab93856%_ _%val93857%_)
        (##unchecked-structure-set!
         _%tab93856%_
         _%val93857%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab93853%_ _%val93854%_)
        (##unchecked-structure-set!
         _%tab93853%_
         _%val93854%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint93851%_)
        (if (and (fixnum? _%size-hint93851%_) (##fx> _%size-hint93851%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint93851%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint93827%_ _%hash93828%_ _%test93829%_ _%seed93830%_)
        (let* ((_%size93832%_ (raw-table-size-hint->size _%size-hint93827%_))
               (_%table93834%_
                (##make-vector _%size93832%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table93834%_
           '0
           (##fxquotient _%size93832%_ '2)
           _%hash93828%_
           _%test93829%_
           _%seed93830%_))))
    (define make-raw-table__0
      (lambda (_%size-hint93840%_ _%hash93841%_ _%test93842%_)
        (let ((_%seed93844%_ '0))
          (make-raw-table__%
           _%size-hint93840%_
           _%hash93841%_
           _%test93842%_
           _%seed93844%_))))
    (define make-raw-table
      (lambda _g93883_
        (let ((_g93882_ (##length _g93883_)))
          (cond ((##fx= _g93882_ 3) (apply make-raw-table__0 _g93883_))
                ((##fx= _g93882_ 4) (apply make-raw-table__% _g93883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g93883_))))))
    (define raw-table-ref
      (lambda (_%tab93778%_ _%key93779%_ _%default93780%_)
        (let ((_%table93782%_ (&raw-table-table _%tab93778%_))
              (_%seed93783%_ (&raw-table-seed _%tab93778%_))
              (_%hash93784%_ (&raw-table-hash _%tab93778%_))
              (_%test93785%_ (&raw-table-test _%tab93778%_)))
          (let* ((_%h93787%_
                  (fxxor (_%hash93784%_ _%key93779%_) _%seed93783%_))
                 (_%size93790%_ (vector-length _%table93782%_))
                 (_%entries93793%_ (##fxquotient _%size93790%_ '2))
                 (_%start93796%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93787%_ _%entries93793%_)
                   '1)))
            (let _%loop93800%_ ((_%probe93803%_ _%start93796%_)
                                (_%i93805%_ '1)
                                (_%deleted93807%_ '#f))
              (let ((_%k93810%_ (vector-ref _%table93782%_ _%probe93803%_)))
                (if (eq? _%k93810%_ (macro-unused-obj))
                    _%default93780%_
                    (if (eq? _%k93810%_ (macro-deleted-obj))
                        (_%loop93800%_
                         (let ((_%next-probe93815%_
                                (fx+ _%start93796%_
                                     _%i93805%_
                                     (fx* _%i93805%_ _%i93805%_))))
                           (##fxmodulo _%next-probe93815%_ _%size93790%_))
                         (##fx+ _%i93805%_ '1)
                         (let ((_%$e93818%_ _%deleted93807%_))
                           (if _%$e93818%_ _%$e93818%_ _%probe93803%_)))
                        (if (_%test93785%_ _%key93779%_ _%k93810%_)
                            (vector-ref
                             _%table93782%_
                             (##fx+ _%probe93803%_ '1))
                            (_%loop93800%_
                             (let ((_%next-probe93823%_
                                    (fx+ _%start93796%_
                                         _%i93805%_
                                         (fx* _%i93805%_ _%i93805%_))))
                               (##fxmodulo _%next-probe93823%_ _%size93790%_))
                             (##fx+ _%i93805%_ '1)
                             _%deleted93807%_))))))))))
    (define raw-table-set!
      (lambda (_%tab93774%_ _%key93775%_ _%value93776%_)
        (if (##fx< (&raw-table-free _%tab93774%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93774%_))
                    '4))
            (__raw-table-rehash! _%tab93774%_)
            '#!void)
        (__raw-table-set! _%tab93774%_ _%key93775%_ _%value93776%_)))
    (define raw-table-update!
      (lambda (_%tab93769%_ _%key93770%_ _%update93771%_ _%default93772%_)
        (if (##fx< (&raw-table-free _%tab93769%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93769%_))
                    '4))
            (__raw-table-rehash! _%tab93769%_)
            '#!void)
        (__raw-table-update!
         _%tab93769%_
         _%key93770%_
         _%update93771%_
         _%default93772%_)))
    (define raw-table-delete!
      (lambda (_%tab93726%_ _%key93727%_)
        (let ((_%table93729%_ (&raw-table-table _%tab93726%_))
              (_%seed93730%_ (&raw-table-seed _%tab93726%_))
              (_%hash93731%_ (&raw-table-hash _%tab93726%_))
              (_%test93732%_ (&raw-table-test _%tab93726%_)))
          (let* ((_%h93734%_
                  (fxxor (_%hash93731%_ _%key93727%_) _%seed93730%_))
                 (_%size93737%_ (vector-length _%table93729%_))
                 (_%entries93740%_ (##fxquotient _%size93737%_ '2))
                 (_%start93743%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93734%_ _%entries93740%_)
                   '1)))
            (let _%loop93747%_ ((_%probe93750%_ _%start93743%_)
                                (_%i93752%_ '1))
              (let ((_%k93755%_ (vector-ref _%table93729%_ _%probe93750%_)))
                (if (eq? _%k93755%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93755%_ (macro-deleted-obj))
                        (_%loop93747%_
                         (let ((_%next-probe93760%_
                                (fx+ _%start93743%_
                                     _%i93752%_
                                     (fx* _%i93752%_ _%i93752%_))))
                           (##fxmodulo _%next-probe93760%_ _%size93737%_))
                         (##fx+ _%i93752%_ '1))
                        (if (_%test93732%_ _%key93727%_ _%k93755%_)
                            (let ()
                              (vector-set!
                               _%table93729%_
                               _%probe93750%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93729%_
                               (##fx+ _%probe93750%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93726%_
                                  (##fx- (&raw-table-count _%tab93726%_)
                                         '1)))))
                            (_%loop93747%_
                             (let ((_%next-probe93766%_
                                    (fx+ _%start93743%_
                                         _%i93752%_
                                         (fx* _%i93752%_ _%i93752%_))))
                               (##fxmodulo _%next-probe93766%_ _%size93737%_))
                             (##fx+ _%i93752%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab93710%_ _%proc93711%_)
        (let* ((_%table93713%_ (&raw-table-table _%tab93710%_))
               (_%size93715%_ (vector-length _%table93713%_)))
          (let _%loop93718%_ ((_%i93720%_ '0))
            (if (##fx< _%i93720%_ _%size93715%_)
                (begin
                  (let ((_%key93722%_ (vector-ref _%table93713%_ _%i93720%_)))
                    (if (if (eq? _%key93722%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key93722%_ (macro-deleted-obj))))
                        (let ((_%value93724%_
                               (vector-ref
                                _%table93713%_
                                (##fx+ _%i93720%_ '1))))
                          (_%proc93711%_ _%key93722%_ _%value93724%_))
                        '#!void))
                  (_%loop93718%_ (##fx+ _%i93720%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab93706%_)
        (let ((_%new-tab93708%_ (##structure-copy _%tab93706%_)))
          (&raw-table-table-set!
           _%new-tab93708%_
           (vector-copy (&raw-table-table _%tab93706%_)))
          _%new-tab93708%_)))
    (define raw-table-clear!
      (lambda (_%tab93704%_)
        (vector-fill! (&raw-table-table _%tab93704%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab93704%_ '0)
        (&raw-table-free-set!
         _%tab93704%_
         (##fxquotient (vector-length (&raw-table-table _%tab93704%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab93654%_ _%key93655%_ _%value93656%_)
        (let ((_%table93658%_ (&raw-table-table _%tab93654%_))
              (_%seed93659%_ (&raw-table-seed _%tab93654%_))
              (_%hash93660%_ (&raw-table-hash _%tab93654%_))
              (_%test93661%_ (&raw-table-test _%tab93654%_)))
          (let* ((_%h93663%_
                  (fxxor (_%hash93660%_ _%key93655%_) _%seed93659%_))
                 (_%size93666%_ (vector-length _%table93658%_))
                 (_%entries93669%_ (##fxquotient _%size93666%_ '2))
                 (_%start93672%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93663%_ _%entries93669%_)
                   '1)))
            (let _%loop93676%_ ((_%probe93679%_ _%start93672%_)
                                (_%i93681%_ '1)
                                (_%deleted93683%_ '#f))
              (let ((_%k93686%_ (vector-ref _%table93658%_ _%probe93679%_)))
                (if (eq? _%k93686%_ (macro-unused-obj))
                    (if _%deleted93683%_
                        (begin
                          (vector-set!
                           _%table93658%_
                           _%deleted93683%_
                           _%key93655%_)
                          (vector-set!
                           _%table93658%_
                           (##fx+ _%deleted93683%_ '1)
                           _%value93656%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93654%_
                              (##fx+ (&raw-table-count _%tab93654%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93658%_
                           _%probe93679%_
                           _%key93655%_)
                          (vector-set!
                           _%table93658%_
                           (##fx+ _%probe93679%_ '1)
                           _%value93656%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93654%_
                              (##fx- (&raw-table-free _%tab93654%_) '1))
                             (&raw-table-count-set!
                              _%tab93654%_
                              (##fx+ (&raw-table-count _%tab93654%_) '1))))))
                    (if (eq? _%k93686%_ (macro-deleted-obj))
                        (_%loop93676%_
                         (let ((_%next-probe93693%_
                                (fx+ _%start93672%_
                                     _%i93681%_
                                     (fx* _%i93681%_ _%i93681%_))))
                           (##fxmodulo _%next-probe93693%_ _%size93666%_))
                         (##fx+ _%i93681%_ '1)
                         (let ((_%$e93696%_ _%deleted93683%_))
                           (if _%$e93696%_ _%$e93696%_ _%probe93679%_)))
                        (if (_%test93661%_ _%key93655%_ _%k93686%_)
                            (let ()
                              (vector-set!
                               _%table93658%_
                               _%probe93679%_
                               _%key93655%_)
                              (vector-set!
                               _%table93658%_
                               (##fx+ _%probe93679%_ '1)
                               _%value93656%_))
                            (_%loop93676%_
                             (let ((_%next-probe93701%_
                                    (fx+ _%start93672%_
                                         _%i93681%_
                                         (fx* _%i93681%_ _%i93681%_))))
                               (##fxmodulo _%next-probe93701%_ _%size93666%_))
                             (##fx+ _%i93681%_ '1)
                             _%deleted93683%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab93603%_ _%key93604%_ _%update93605%_ _%default93606%_)
        (let ((_%table93608%_ (&raw-table-table _%tab93603%_))
              (_%seed93609%_ (&raw-table-seed _%tab93603%_))
              (_%hash93610%_ (&raw-table-hash _%tab93603%_))
              (_%test93611%_ (&raw-table-test _%tab93603%_)))
          (let* ((_%h93613%_
                  (fxxor (_%hash93610%_ _%key93604%_) _%seed93609%_))
                 (_%size93616%_ (vector-length _%table93608%_))
                 (_%entries93619%_ (##fxquotient _%size93616%_ '2))
                 (_%start93622%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93613%_ _%entries93619%_)
                   '1)))
            (let _%loop93626%_ ((_%probe93629%_ _%start93622%_)
                                (_%i93631%_ '1)
                                (_%deleted93633%_ '#f))
              (let ((_%k93636%_ (vector-ref _%table93608%_ _%probe93629%_)))
                (if (eq? _%k93636%_ (macro-unused-obj))
                    (if _%deleted93633%_
                        (begin
                          (vector-set!
                           _%table93608%_
                           _%deleted93633%_
                           _%key93604%_)
                          (vector-set!
                           _%table93608%_
                           (##fx+ _%deleted93633%_ '1)
                           (_%update93605%_ _%default93606%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93603%_
                              (##fx+ (&raw-table-count _%tab93603%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93608%_
                           _%probe93629%_
                           _%key93604%_)
                          (vector-set!
                           _%table93608%_
                           (##fx+ _%probe93629%_ '1)
                           (_%update93605%_ _%default93606%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93603%_
                              (##fx- (&raw-table-free _%tab93603%_) '1))
                             (&raw-table-count-set!
                              _%tab93603%_
                              (##fx+ (&raw-table-count _%tab93603%_) '1))))))
                    (if (eq? _%k93636%_ (macro-deleted-obj))
                        (_%loop93626%_
                         (let ((_%next-probe93643%_
                                (fx+ _%start93622%_
                                     _%i93631%_
                                     (fx* _%i93631%_ _%i93631%_))))
                           (##fxmodulo _%next-probe93643%_ _%size93616%_))
                         (##fx+ _%i93631%_ '1)
                         (let ((_%$e93646%_ _%deleted93633%_))
                           (if _%$e93646%_ _%$e93646%_ _%probe93629%_)))
                        (if (_%test93611%_ _%key93604%_ _%k93636%_)
                            (let ()
                              (vector-set!
                               _%table93608%_
                               _%probe93629%_
                               _%key93604%_)
                              (vector-set!
                               _%table93608%_
                               (##fx+ _%probe93629%_ '1)
                               (_%update93605%_
                                (vector-ref
                                 _%table93608%_
                                 (##fx+ _%probe93629%_ '1)))))
                            (_%loop93626%_
                             (let ((_%next-probe93651%_
                                    (fx+ _%start93622%_
                                         _%i93631%_
                                         (fx* _%i93631%_ _%i93631%_))))
                               (##fxmodulo _%next-probe93651%_ _%size93616%_))
                             (##fx+ _%i93631%_ '1)
                             _%deleted93633%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab93584%_)
        (let* ((_%old-table93586%_ (&raw-table-table _%tab93584%_))
               (_%old-size93588%_ (vector-length _%old-table93586%_))
               (_%new-size93590%_
                (if (##fx< (&raw-table-count _%tab93584%_)
                           (##fxquotient _%old-size93588%_ '4))
                    (vector-length _%old-table93586%_)
                    (##fx* '2 (vector-length _%old-table93586%_))))
               (_%new-table93592%_
                (##make-vector _%new-size93590%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab93584%_ _%new-table93592%_)
          (&raw-table-count-set! _%tab93584%_ '0)
          (&raw-table-free-set!
           _%tab93584%_
           (##fxquotient _%new-size93590%_ '2))
          (let _%lp93595%_ ((_%i93597%_ '0))
            (if (##fx< _%i93597%_ _%old-size93588%_)
                (begin
                  (let ((_%key93599%_
                         (vector-ref _%old-table93586%_ _%i93597%_)))
                    (if (if (eq? _%key93599%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key93599%_ (macro-deleted-obj))))
                        (let ((_%value93601%_
                               (vector-ref
                                _%old-table93586%_
                                (##fx+ _%i93597%_ '1))))
                          (__raw-table-set!
                           _%tab93584%_
                           _%key93599%_
                           _%value93601%_))
                        '#!void))
                  (_%lp93595%_ (##fx+ _%i93597%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj93576%_)
        (let ((_%t93578%_ (##type _%obj93576%_)))
          (if (##fx= (##fxand _%t93578%_ '1) '0)
              (fxand (##type-cast _%obj93576%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj93576%_)
                  (symbolic-hash _%obj93576%_)
                  (if (procedure? _%obj93576%_)
                      (procedure-hash _%obj93576%_)
                      (fxand (__eq-hash _%obj93576%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj93572%_)
        (let ((_%h93574%_
               (if (##closure? _%obj93572%_)
                   (__eq-hash _%obj93572%_)
                   (##type-cast _%obj93572%_ '0))))
          (fxand _%h93574%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj93569%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj93569%_)))
    (define eqv-hash
      (lambda (_%obj93559%_)
        (letrec ((_%combine93561%_
                  (lambda (_%a93566%_ _%b93567%_)
                    (fxand (##fx* (##fx+ _%a93566%_
                                         (fxarithmetic-shift-left
                                          _%b93567%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash93562%_
                  (lambda (_%obj93564%_)
                    (macro-number-dispatch
                     _%obj93564%_
                     (eq-hash _%obj93564%_)
                     (fxand _%obj93564%_ (macro-max-fixnum32))
                     (modulo _%obj93564%_ '331804481)
                     (_%combine93561%_
                      (_%hash93562%_ (macro-ratnum-numerator _%obj93564%_))
                      (_%hash93562%_ (macro-ratnum-denominator _%obj93564%_)))
                     (_%combine93561%_
                      (##u16vector-ref _%obj93564%_ '0)
                      (_%combine93561%_
                       (##u16vector-ref _%obj93564%_ '1)
                       (_%combine93561%_
                        (##u16vector-ref _%obj93564%_ '2)
                        (##u16vector-ref _%obj93564%_ '3))))
                     (_%combine93561%_
                      (_%hash93562%_ (macro-cpxnum-real _%obj93564%_))
                      (_%hash93562%_ (macro-cpxnum-imag _%obj93564%_)))))))
          (_%hash93562%_ _%obj93559%_))))
    (define symbolic?
      (lambda (_%obj93554%_)
        (let ((_%$e93556%_ (symbol? _%obj93554%_)))
          (if _%$e93556%_ _%$e93556%_ (keyword? _%obj93554%_)))))
    (define symbolic-hash (lambda (_%obj93552%_) (macro-slot '1 _%obj93552%_)))
    (define string-hash (lambda (_%obj93550%_) (##string=?-hash _%obj93550%_)))
    (define immediate-hash
      (lambda (_%obj93548%_) (##type-cast _%obj93548%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint93529%_ _%seed93531%_)
        (make-raw-table__% _%size-hint93529%_ eq-hash eq? _%seed93531%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint93537%_ '#f) (_%seed93539%_ '0))
          (make-eq-table__% _%size-hint93537%_ _%seed93539%_))))
    (define make-eq-table__1
      (lambda (_%size-hint93541%_)
        (let ((_%seed93543%_ '0))
          (make-eq-table__% _%size-hint93541%_ _%seed93543%_))))
    (define make-eq-table
      (lambda _g93885_
        (let ((_g93884_ (##length _g93885_)))
          (cond ((##fx= _g93884_ 0) (apply make-eq-table__0 _g93885_))
                ((##fx= _g93884_ 1) (apply make-eq-table__1 _g93885_))
                ((##fx= _g93884_ 2) (apply make-eq-table__% _g93885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g93885_))))))
    (define eq-table-ref
      (lambda (_%tab93482%_ _%key93483%_ _%default93484%_)
        (let ((_%table93486%_ (&raw-table-table _%tab93482%_))
              (_%seed93487%_ (&raw-table-seed _%tab93482%_)))
          (let* ((_%h93489%_ (fxxor (eq-hash _%key93483%_) _%seed93487%_))
                 (_%size93492%_ (vector-length _%table93486%_))
                 (_%entries93495%_ (##fxquotient _%size93492%_ '2))
                 (_%start93498%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93489%_ _%entries93495%_)
                   '1)))
            (let _%loop93502%_ ((_%probe93505%_ _%start93498%_)
                                (_%i93507%_ '1)
                                (_%deleted93509%_ '#f))
              (let ((_%k93512%_ (vector-ref _%table93486%_ _%probe93505%_)))
                (if (eq? _%k93512%_ (macro-unused-obj))
                    _%default93484%_
                    (if (eq? _%k93512%_ (macro-deleted-obj))
                        (_%loop93502%_
                         (let ((_%next-probe93517%_
                                (fx+ _%start93498%_
                                     _%i93507%_
                                     (fx* _%i93507%_ _%i93507%_))))
                           (##fxmodulo _%next-probe93517%_ _%size93492%_))
                         (##fx+ _%i93507%_ '1)
                         (let ((_%$e93520%_ _%deleted93509%_))
                           (if _%$e93520%_ _%$e93520%_ _%probe93505%_)))
                        (if (eq? _%key93483%_ _%k93512%_)
                            (vector-ref
                             _%table93486%_
                             (##fx+ _%probe93505%_ '1))
                            (_%loop93502%_
                             (let ((_%next-probe93525%_
                                    (fx+ _%start93498%_
                                         _%i93507%_
                                         (fx* _%i93507%_ _%i93507%_))))
                               (##fxmodulo _%next-probe93525%_ _%size93492%_))
                             (##fx+ _%i93507%_ '1)
                             _%deleted93509%_))))))))))
    (define eq-table-set!
      (lambda (_%tab93478%_ _%key93479%_ _%value93480%_)
        (if (##fx< (&raw-table-free _%tab93478%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93478%_))
                    '4))
            (__raw-table-rehash! _%tab93478%_)
            '#!void)
        (__eq-table-set! _%tab93478%_ _%key93479%_ _%value93480%_)))
    (define __eq-table-set!
      (lambda (_%tab93429%_ _%key93430%_ _%value93431%_)
        (let ((_%table93434%_ (&raw-table-table _%tab93429%_))
              (_%seed93435%_ (&raw-table-seed _%tab93429%_)))
          (let* ((_%h93437%_ (fxxor (eq-hash _%key93430%_) _%seed93435%_))
                 (_%size93440%_ (vector-length _%table93434%_))
                 (_%entries93443%_ (##fxquotient _%size93440%_ '2))
                 (_%start93446%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93437%_ _%entries93443%_)
                   '1)))
            (let _%loop93450%_ ((_%probe93453%_ _%start93446%_)
                                (_%i93455%_ '1)
                                (_%deleted93457%_ '#f))
              (let ((_%k93460%_ (vector-ref _%table93434%_ _%probe93453%_)))
                (if (eq? _%k93460%_ (macro-unused-obj))
                    (if _%deleted93457%_
                        (begin
                          (vector-set!
                           _%table93434%_
                           _%deleted93457%_
                           _%key93430%_)
                          (vector-set!
                           _%table93434%_
                           (##fx+ _%deleted93457%_ '1)
                           _%value93431%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93429%_
                              (##fx+ (&raw-table-count _%tab93429%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93434%_
                           _%probe93453%_
                           _%key93430%_)
                          (vector-set!
                           _%table93434%_
                           (##fx+ _%probe93453%_ '1)
                           _%value93431%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93429%_
                              (##fx- (&raw-table-free _%tab93429%_) '1))
                             (&raw-table-count-set!
                              _%tab93429%_
                              (##fx+ (&raw-table-count _%tab93429%_) '1))))))
                    (if (eq? _%k93460%_ (macro-deleted-obj))
                        (_%loop93450%_
                         (let ((_%next-probe93467%_
                                (fx+ _%start93446%_
                                     _%i93455%_
                                     (fx* _%i93455%_ _%i93455%_))))
                           (##fxmodulo _%next-probe93467%_ _%size93440%_))
                         (##fx+ _%i93455%_ '1)
                         (let ((_%$e93470%_ _%deleted93457%_))
                           (if _%$e93470%_ _%$e93470%_ _%probe93453%_)))
                        (if (eq? _%key93430%_ _%k93460%_)
                            (let ()
                              (vector-set!
                               _%table93434%_
                               _%probe93453%_
                               _%key93430%_)
                              (vector-set!
                               _%table93434%_
                               (##fx+ _%probe93453%_ '1)
                               _%value93431%_))
                            (_%loop93450%_
                             (let ((_%next-probe93475%_
                                    (fx+ _%start93446%_
                                         _%i93455%_
                                         (fx* _%i93455%_ _%i93455%_))))
                               (##fxmodulo _%next-probe93475%_ _%size93440%_))
                             (##fx+ _%i93455%_ '1)
                             _%deleted93457%_))))))))))
    (define eq-table-update!
      (lambda (_%tab93424%_
               _%key93425%_
               _%eq-table-update!93426%_
               _%default93427%_)
        (if (##fx< (&raw-table-free _%tab93424%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93424%_))
                    '4))
            (__raw-table-rehash! _%tab93424%_)
            '#!void)
        (__eq-table-update!
         _%tab93424%_
         _%key93425%_
         _%eq-table-update!93426%_
         _%default93427%_)))
    (define __eq-table-update!
      (lambda (_%tab93374%_
               _%key93375%_
               _%eq-table-update!93376%_
               _%default93377%_)
        (let ((_%table93380%_ (&raw-table-table _%tab93374%_))
              (_%seed93381%_ (&raw-table-seed _%tab93374%_)))
          (let* ((_%h93383%_ (fxxor (eq-hash _%key93375%_) _%seed93381%_))
                 (_%size93386%_ (vector-length _%table93380%_))
                 (_%entries93389%_ (##fxquotient _%size93386%_ '2))
                 (_%start93392%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93383%_ _%entries93389%_)
                   '1)))
            (let _%loop93396%_ ((_%probe93399%_ _%start93392%_)
                                (_%i93401%_ '1)
                                (_%deleted93403%_ '#f))
              (let ((_%k93406%_ (vector-ref _%table93380%_ _%probe93399%_)))
                (if (eq? _%k93406%_ (macro-unused-obj))
                    (if _%deleted93403%_
                        (begin
                          (vector-set!
                           _%table93380%_
                           _%deleted93403%_
                           _%key93375%_)
                          (vector-set!
                           _%table93380%_
                           (##fx+ _%deleted93403%_ '1)
                           (_%eq-table-update!93376%_ _%default93377%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93374%_
                              (##fx+ (&raw-table-count _%tab93374%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93380%_
                           _%probe93399%_
                           _%key93375%_)
                          (vector-set!
                           _%table93380%_
                           (##fx+ _%probe93399%_ '1)
                           (_%eq-table-update!93376%_ _%default93377%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93374%_
                              (##fx- (&raw-table-free _%tab93374%_) '1))
                             (&raw-table-count-set!
                              _%tab93374%_
                              (##fx+ (&raw-table-count _%tab93374%_) '1))))))
                    (if (eq? _%k93406%_ (macro-deleted-obj))
                        (_%loop93396%_
                         (let ((_%next-probe93413%_
                                (fx+ _%start93392%_
                                     _%i93401%_
                                     (fx* _%i93401%_ _%i93401%_))))
                           (##fxmodulo _%next-probe93413%_ _%size93386%_))
                         (##fx+ _%i93401%_ '1)
                         (let ((_%$e93416%_ _%deleted93403%_))
                           (if _%$e93416%_ _%$e93416%_ _%probe93399%_)))
                        (if (eq? _%key93375%_ _%k93406%_)
                            (let ()
                              (vector-set!
                               _%table93380%_
                               _%probe93399%_
                               _%key93375%_)
                              (vector-set!
                               _%table93380%_
                               (##fx+ _%probe93399%_ '1)
                               (_%eq-table-update!93376%_
                                (vector-ref
                                 _%table93380%_
                                 (##fx+ _%probe93399%_ '1)))))
                            (_%loop93396%_
                             (let ((_%next-probe93421%_
                                    (fx+ _%start93392%_
                                         _%i93401%_
                                         (fx* _%i93401%_ _%i93401%_))))
                               (##fxmodulo _%next-probe93421%_ _%size93386%_))
                             (##fx+ _%i93401%_ '1)
                             _%deleted93403%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab93329%_ _%key93331%_)
        (let ((_%table93334%_ (&raw-table-table _%tab93329%_))
              (_%seed93336%_ (&raw-table-seed _%tab93329%_)))
          (let* ((_%h93339%_ (fxxor (eq-hash _%key93331%_) _%seed93336%_))
                 (_%size93342%_ (vector-length _%table93334%_))
                 (_%entries93345%_ (##fxquotient _%size93342%_ '2))
                 (_%start93348%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93339%_ _%entries93345%_)
                   '1)))
            (let _%loop93352%_ ((_%probe93355%_ _%start93348%_)
                                (_%i93357%_ '1))
              (let ((_%k93360%_ (vector-ref _%table93334%_ _%probe93355%_)))
                (if (eq? _%k93360%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93360%_ (macro-deleted-obj))
                        (_%loop93352%_
                         (let ((_%next-probe93365%_
                                (fx+ _%start93348%_
                                     _%i93357%_
                                     (fx* _%i93357%_ _%i93357%_))))
                           (##fxmodulo _%next-probe93365%_ _%size93342%_))
                         (##fx+ _%i93357%_ '1))
                        (if (eq? _%key93331%_ _%k93360%_)
                            (let ()
                              (vector-set!
                               _%table93334%_
                               _%probe93355%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93334%_
                               (##fx+ _%probe93355%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93329%_
                                  (##fx- (&raw-table-count _%tab93329%_)
                                         '1)))))
                            (_%loop93352%_
                             (let ((_%next-probe93371%_
                                    (fx+ _%start93348%_
                                         _%i93357%_
                                         (fx* _%i93357%_ _%i93357%_))))
                               (##fxmodulo _%next-probe93371%_ _%size93342%_))
                             (##fx+ _%i93357%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint93310%_ _%seed93312%_)
        (make-raw-table__% _%size-hint93310%_ eqv-hash eqv? _%seed93312%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint93318%_ '#f) (_%seed93320%_ '0))
          (make-eqv-table__% _%size-hint93318%_ _%seed93320%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint93322%_)
        (let ((_%seed93324%_ '0))
          (make-eqv-table__% _%size-hint93322%_ _%seed93324%_))))
    (define make-eqv-table
      (lambda _g93887_
        (let ((_g93886_ (##length _g93887_)))
          (cond ((##fx= _g93886_ 0) (apply make-eqv-table__0 _g93887_))
                ((##fx= _g93886_ 1) (apply make-eqv-table__1 _g93887_))
                ((##fx= _g93886_ 2) (apply make-eqv-table__% _g93887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g93887_))))))
    (define eqv-table-ref
      (lambda (_%tab93263%_ _%key93264%_ _%default93265%_)
        (let ((_%table93267%_ (&raw-table-table _%tab93263%_))
              (_%seed93268%_ (&raw-table-seed _%tab93263%_)))
          (let* ((_%h93270%_ (fxxor (eqv-hash _%key93264%_) _%seed93268%_))
                 (_%size93273%_ (vector-length _%table93267%_))
                 (_%entries93276%_ (##fxquotient _%size93273%_ '2))
                 (_%start93279%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93270%_ _%entries93276%_)
                   '1)))
            (let _%loop93283%_ ((_%probe93286%_ _%start93279%_)
                                (_%i93288%_ '1)
                                (_%deleted93290%_ '#f))
              (let ((_%k93293%_ (vector-ref _%table93267%_ _%probe93286%_)))
                (if (eq? _%k93293%_ (macro-unused-obj))
                    _%default93265%_
                    (if (eq? _%k93293%_ (macro-deleted-obj))
                        (_%loop93283%_
                         (let ((_%next-probe93298%_
                                (fx+ _%start93279%_
                                     _%i93288%_
                                     (fx* _%i93288%_ _%i93288%_))))
                           (##fxmodulo _%next-probe93298%_ _%size93273%_))
                         (##fx+ _%i93288%_ '1)
                         (let ((_%$e93301%_ _%deleted93290%_))
                           (if _%$e93301%_ _%$e93301%_ _%probe93286%_)))
                        (if (eqv? _%key93264%_ _%k93293%_)
                            (vector-ref
                             _%table93267%_
                             (##fx+ _%probe93286%_ '1))
                            (_%loop93283%_
                             (let ((_%next-probe93306%_
                                    (fx+ _%start93279%_
                                         _%i93288%_
                                         (fx* _%i93288%_ _%i93288%_))))
                               (##fxmodulo _%next-probe93306%_ _%size93273%_))
                             (##fx+ _%i93288%_ '1)
                             _%deleted93290%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab93259%_ _%key93260%_ _%value93261%_)
        (if (##fx< (&raw-table-free _%tab93259%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93259%_))
                    '4))
            (__raw-table-rehash! _%tab93259%_)
            '#!void)
        (__eqv-table-set! _%tab93259%_ _%key93260%_ _%value93261%_)))
    (define __eqv-table-set!
      (lambda (_%tab93210%_ _%key93211%_ _%value93212%_)
        (let ((_%table93215%_ (&raw-table-table _%tab93210%_))
              (_%seed93216%_ (&raw-table-seed _%tab93210%_)))
          (let* ((_%h93218%_ (fxxor (eqv-hash _%key93211%_) _%seed93216%_))
                 (_%size93221%_ (vector-length _%table93215%_))
                 (_%entries93224%_ (##fxquotient _%size93221%_ '2))
                 (_%start93227%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93218%_ _%entries93224%_)
                   '1)))
            (let _%loop93231%_ ((_%probe93234%_ _%start93227%_)
                                (_%i93236%_ '1)
                                (_%deleted93238%_ '#f))
              (let ((_%k93241%_ (vector-ref _%table93215%_ _%probe93234%_)))
                (if (eq? _%k93241%_ (macro-unused-obj))
                    (if _%deleted93238%_
                        (begin
                          (vector-set!
                           _%table93215%_
                           _%deleted93238%_
                           _%key93211%_)
                          (vector-set!
                           _%table93215%_
                           (##fx+ _%deleted93238%_ '1)
                           _%value93212%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93210%_
                              (##fx+ (&raw-table-count _%tab93210%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93215%_
                           _%probe93234%_
                           _%key93211%_)
                          (vector-set!
                           _%table93215%_
                           (##fx+ _%probe93234%_ '1)
                           _%value93212%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93210%_
                              (##fx- (&raw-table-free _%tab93210%_) '1))
                             (&raw-table-count-set!
                              _%tab93210%_
                              (##fx+ (&raw-table-count _%tab93210%_) '1))))))
                    (if (eq? _%k93241%_ (macro-deleted-obj))
                        (_%loop93231%_
                         (let ((_%next-probe93248%_
                                (fx+ _%start93227%_
                                     _%i93236%_
                                     (fx* _%i93236%_ _%i93236%_))))
                           (##fxmodulo _%next-probe93248%_ _%size93221%_))
                         (##fx+ _%i93236%_ '1)
                         (let ((_%$e93251%_ _%deleted93238%_))
                           (if _%$e93251%_ _%$e93251%_ _%probe93234%_)))
                        (if (eqv? _%key93211%_ _%k93241%_)
                            (let ()
                              (vector-set!
                               _%table93215%_
                               _%probe93234%_
                               _%key93211%_)
                              (vector-set!
                               _%table93215%_
                               (##fx+ _%probe93234%_ '1)
                               _%value93212%_))
                            (_%loop93231%_
                             (let ((_%next-probe93256%_
                                    (fx+ _%start93227%_
                                         _%i93236%_
                                         (fx* _%i93236%_ _%i93236%_))))
                               (##fxmodulo _%next-probe93256%_ _%size93221%_))
                             (##fx+ _%i93236%_ '1)
                             _%deleted93238%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab93205%_
               _%key93206%_
               _%eqv-table-update!93207%_
               _%default93208%_)
        (if (##fx< (&raw-table-free _%tab93205%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93205%_))
                    '4))
            (__raw-table-rehash! _%tab93205%_)
            '#!void)
        (__eqv-table-update!
         _%tab93205%_
         _%key93206%_
         _%eqv-table-update!93207%_
         _%default93208%_)))
    (define __eqv-table-update!
      (lambda (_%tab93155%_
               _%key93156%_
               _%eqv-table-update!93157%_
               _%default93158%_)
        (let ((_%table93161%_ (&raw-table-table _%tab93155%_))
              (_%seed93162%_ (&raw-table-seed _%tab93155%_)))
          (let* ((_%h93164%_ (fxxor (eqv-hash _%key93156%_) _%seed93162%_))
                 (_%size93167%_ (vector-length _%table93161%_))
                 (_%entries93170%_ (##fxquotient _%size93167%_ '2))
                 (_%start93173%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93164%_ _%entries93170%_)
                   '1)))
            (let _%loop93177%_ ((_%probe93180%_ _%start93173%_)
                                (_%i93182%_ '1)
                                (_%deleted93184%_ '#f))
              (let ((_%k93187%_ (vector-ref _%table93161%_ _%probe93180%_)))
                (if (eq? _%k93187%_ (macro-unused-obj))
                    (if _%deleted93184%_
                        (begin
                          (vector-set!
                           _%table93161%_
                           _%deleted93184%_
                           _%key93156%_)
                          (vector-set!
                           _%table93161%_
                           (##fx+ _%deleted93184%_ '1)
                           (_%eqv-table-update!93157%_ _%default93158%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93155%_
                              (##fx+ (&raw-table-count _%tab93155%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93161%_
                           _%probe93180%_
                           _%key93156%_)
                          (vector-set!
                           _%table93161%_
                           (##fx+ _%probe93180%_ '1)
                           (_%eqv-table-update!93157%_ _%default93158%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93155%_
                              (##fx- (&raw-table-free _%tab93155%_) '1))
                             (&raw-table-count-set!
                              _%tab93155%_
                              (##fx+ (&raw-table-count _%tab93155%_) '1))))))
                    (if (eq? _%k93187%_ (macro-deleted-obj))
                        (_%loop93177%_
                         (let ((_%next-probe93194%_
                                (fx+ _%start93173%_
                                     _%i93182%_
                                     (fx* _%i93182%_ _%i93182%_))))
                           (##fxmodulo _%next-probe93194%_ _%size93167%_))
                         (##fx+ _%i93182%_ '1)
                         (let ((_%$e93197%_ _%deleted93184%_))
                           (if _%$e93197%_ _%$e93197%_ _%probe93180%_)))
                        (if (eqv? _%key93156%_ _%k93187%_)
                            (let ()
                              (vector-set!
                               _%table93161%_
                               _%probe93180%_
                               _%key93156%_)
                              (vector-set!
                               _%table93161%_
                               (##fx+ _%probe93180%_ '1)
                               (_%eqv-table-update!93157%_
                                (vector-ref
                                 _%table93161%_
                                 (##fx+ _%probe93180%_ '1)))))
                            (_%loop93177%_
                             (let ((_%next-probe93202%_
                                    (fx+ _%start93173%_
                                         _%i93182%_
                                         (fx* _%i93182%_ _%i93182%_))))
                               (##fxmodulo _%next-probe93202%_ _%size93167%_))
                             (##fx+ _%i93182%_ '1)
                             _%deleted93184%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab93110%_ _%key93112%_)
        (let ((_%table93115%_ (&raw-table-table _%tab93110%_))
              (_%seed93117%_ (&raw-table-seed _%tab93110%_)))
          (let* ((_%h93120%_ (fxxor (eqv-hash _%key93112%_) _%seed93117%_))
                 (_%size93123%_ (vector-length _%table93115%_))
                 (_%entries93126%_ (##fxquotient _%size93123%_ '2))
                 (_%start93129%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93120%_ _%entries93126%_)
                   '1)))
            (let _%loop93133%_ ((_%probe93136%_ _%start93129%_)
                                (_%i93138%_ '1))
              (let ((_%k93141%_ (vector-ref _%table93115%_ _%probe93136%_)))
                (if (eq? _%k93141%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93141%_ (macro-deleted-obj))
                        (_%loop93133%_
                         (let ((_%next-probe93146%_
                                (fx+ _%start93129%_
                                     _%i93138%_
                                     (fx* _%i93138%_ _%i93138%_))))
                           (##fxmodulo _%next-probe93146%_ _%size93123%_))
                         (##fx+ _%i93138%_ '1))
                        (if (eqv? _%key93112%_ _%k93141%_)
                            (let ()
                              (vector-set!
                               _%table93115%_
                               _%probe93136%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93115%_
                               (##fx+ _%probe93136%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93110%_
                                  (##fx- (&raw-table-count _%tab93110%_)
                                         '1)))))
                            (_%loop93133%_
                             (let ((_%next-probe93152%_
                                    (fx+ _%start93129%_
                                         _%i93138%_
                                         (fx* _%i93138%_ _%i93138%_))))
                               (##fxmodulo _%next-probe93152%_ _%size93123%_))
                             (##fx+ _%i93138%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint93091%_ _%seed93093%_)
        (make-raw-table__%
         _%size-hint93091%_
         symbolic-hash
         eq?
         _%seed93093%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint93099%_ '#f) (_%seed93101%_ '0))
          (make-symbolic-table__% _%size-hint93099%_ _%seed93101%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint93103%_)
        (let ((_%seed93105%_ '0))
          (make-symbolic-table__% _%size-hint93103%_ _%seed93105%_))))
    (define make-symbolic-table
      (lambda _g93889_
        (let ((_g93888_ (##length _g93889_)))
          (cond ((##fx= _g93888_ 0) (apply make-symbolic-table__0 _g93889_))
                ((##fx= _g93888_ 1) (apply make-symbolic-table__1 _g93889_))
                ((##fx= _g93888_ 2) (apply make-symbolic-table__% _g93889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g93889_))))))
    (define symbolic-table-ref
      (lambda (_%tab93044%_ _%key93045%_ _%default93046%_)
        (let ((_%table93048%_ (&raw-table-table _%tab93044%_))
              (_%seed93049%_ (&raw-table-seed _%tab93044%_)))
          (let* ((_%h93051%_
                  (fxxor (symbolic-hash _%key93045%_) _%seed93049%_))
                 (_%size93054%_ (vector-length _%table93048%_))
                 (_%entries93057%_ (##fxquotient _%size93054%_ '2))
                 (_%start93060%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93051%_ _%entries93057%_)
                   '1)))
            (let _%loop93064%_ ((_%probe93067%_ _%start93060%_)
                                (_%i93069%_ '1)
                                (_%deleted93071%_ '#f))
              (let ((_%k93074%_ (vector-ref _%table93048%_ _%probe93067%_)))
                (if (eq? _%k93074%_ (macro-unused-obj))
                    _%default93046%_
                    (if (eq? _%k93074%_ (macro-deleted-obj))
                        (_%loop93064%_
                         (let ((_%next-probe93079%_
                                (fx+ _%start93060%_
                                     _%i93069%_
                                     (fx* _%i93069%_ _%i93069%_))))
                           (##fxmodulo _%next-probe93079%_ _%size93054%_))
                         (##fx+ _%i93069%_ '1)
                         (let ((_%$e93082%_ _%deleted93071%_))
                           (if _%$e93082%_ _%$e93082%_ _%probe93067%_)))
                        (if (eq? _%key93045%_ _%k93074%_)
                            (vector-ref
                             _%table93048%_
                             (##fx+ _%probe93067%_ '1))
                            (_%loop93064%_
                             (let ((_%next-probe93087%_
                                    (fx+ _%start93060%_
                                         _%i93069%_
                                         (fx* _%i93069%_ _%i93069%_))))
                               (##fxmodulo _%next-probe93087%_ _%size93054%_))
                             (##fx+ _%i93069%_ '1)
                             _%deleted93071%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab93040%_ _%key93041%_ _%value93042%_)
        (if (##fx< (&raw-table-free _%tab93040%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93040%_))
                    '4))
            (__raw-table-rehash! _%tab93040%_)
            '#!void)
        (__symbolic-table-set! _%tab93040%_ _%key93041%_ _%value93042%_)))
    (define __symbolic-table-set!
      (lambda (_%tab92991%_ _%key92992%_ _%value92993%_)
        (let ((_%table92996%_ (&raw-table-table _%tab92991%_))
              (_%seed92997%_ (&raw-table-seed _%tab92991%_)))
          (let* ((_%h92999%_
                  (fxxor (symbolic-hash _%key92992%_) _%seed92997%_))
                 (_%size93002%_ (vector-length _%table92996%_))
                 (_%entries93005%_ (##fxquotient _%size93002%_ '2))
                 (_%start93008%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92999%_ _%entries93005%_)
                   '1)))
            (let _%loop93012%_ ((_%probe93015%_ _%start93008%_)
                                (_%i93017%_ '1)
                                (_%deleted93019%_ '#f))
              (let ((_%k93022%_ (vector-ref _%table92996%_ _%probe93015%_)))
                (if (eq? _%k93022%_ (macro-unused-obj))
                    (if _%deleted93019%_
                        (begin
                          (vector-set!
                           _%table92996%_
                           _%deleted93019%_
                           _%key92992%_)
                          (vector-set!
                           _%table92996%_
                           (##fx+ _%deleted93019%_ '1)
                           _%value92993%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92991%_
                              (##fx+ (&raw-table-count _%tab92991%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92996%_
                           _%probe93015%_
                           _%key92992%_)
                          (vector-set!
                           _%table92996%_
                           (##fx+ _%probe93015%_ '1)
                           _%value92993%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92991%_
                              (##fx- (&raw-table-free _%tab92991%_) '1))
                             (&raw-table-count-set!
                              _%tab92991%_
                              (##fx+ (&raw-table-count _%tab92991%_) '1))))))
                    (if (eq? _%k93022%_ (macro-deleted-obj))
                        (_%loop93012%_
                         (let ((_%next-probe93029%_
                                (fx+ _%start93008%_
                                     _%i93017%_
                                     (fx* _%i93017%_ _%i93017%_))))
                           (##fxmodulo _%next-probe93029%_ _%size93002%_))
                         (##fx+ _%i93017%_ '1)
                         (let ((_%$e93032%_ _%deleted93019%_))
                           (if _%$e93032%_ _%$e93032%_ _%probe93015%_)))
                        (if (eq? _%key92992%_ _%k93022%_)
                            (let ()
                              (vector-set!
                               _%table92996%_
                               _%probe93015%_
                               _%key92992%_)
                              (vector-set!
                               _%table92996%_
                               (##fx+ _%probe93015%_ '1)
                               _%value92993%_))
                            (_%loop93012%_
                             (let ((_%next-probe93037%_
                                    (fx+ _%start93008%_
                                         _%i93017%_
                                         (fx* _%i93017%_ _%i93017%_))))
                               (##fxmodulo _%next-probe93037%_ _%size93002%_))
                             (##fx+ _%i93017%_ '1)
                             _%deleted93019%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab92986%_
               _%key92987%_
               _%symbolic-table-update!92988%_
               _%default92989%_)
        (if (##fx< (&raw-table-free _%tab92986%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92986%_))
                    '4))
            (__raw-table-rehash! _%tab92986%_)
            '#!void)
        (__symbolic-table-update!
         _%tab92986%_
         _%key92987%_
         _%symbolic-table-update!92988%_
         _%default92989%_)))
    (define __symbolic-table-update!
      (lambda (_%tab92936%_
               _%key92937%_
               _%symbolic-table-update!92938%_
               _%default92939%_)
        (let ((_%table92942%_ (&raw-table-table _%tab92936%_))
              (_%seed92943%_ (&raw-table-seed _%tab92936%_)))
          (let* ((_%h92945%_
                  (fxxor (symbolic-hash _%key92937%_) _%seed92943%_))
                 (_%size92948%_ (vector-length _%table92942%_))
                 (_%entries92951%_ (##fxquotient _%size92948%_ '2))
                 (_%start92954%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92945%_ _%entries92951%_)
                   '1)))
            (let _%loop92958%_ ((_%probe92961%_ _%start92954%_)
                                (_%i92963%_ '1)
                                (_%deleted92965%_ '#f))
              (let ((_%k92968%_ (vector-ref _%table92942%_ _%probe92961%_)))
                (if (eq? _%k92968%_ (macro-unused-obj))
                    (if _%deleted92965%_
                        (begin
                          (vector-set!
                           _%table92942%_
                           _%deleted92965%_
                           _%key92937%_)
                          (vector-set!
                           _%table92942%_
                           (##fx+ _%deleted92965%_ '1)
                           (_%symbolic-table-update!92938%_ _%default92939%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92936%_
                              (##fx+ (&raw-table-count _%tab92936%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92942%_
                           _%probe92961%_
                           _%key92937%_)
                          (vector-set!
                           _%table92942%_
                           (##fx+ _%probe92961%_ '1)
                           (_%symbolic-table-update!92938%_ _%default92939%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92936%_
                              (##fx- (&raw-table-free _%tab92936%_) '1))
                             (&raw-table-count-set!
                              _%tab92936%_
                              (##fx+ (&raw-table-count _%tab92936%_) '1))))))
                    (if (eq? _%k92968%_ (macro-deleted-obj))
                        (_%loop92958%_
                         (let ((_%next-probe92975%_
                                (fx+ _%start92954%_
                                     _%i92963%_
                                     (fx* _%i92963%_ _%i92963%_))))
                           (##fxmodulo _%next-probe92975%_ _%size92948%_))
                         (##fx+ _%i92963%_ '1)
                         (let ((_%$e92978%_ _%deleted92965%_))
                           (if _%$e92978%_ _%$e92978%_ _%probe92961%_)))
                        (if (eq? _%key92937%_ _%k92968%_)
                            (let ()
                              (vector-set!
                               _%table92942%_
                               _%probe92961%_
                               _%key92937%_)
                              (vector-set!
                               _%table92942%_
                               (##fx+ _%probe92961%_ '1)
                               (_%symbolic-table-update!92938%_
                                (vector-ref
                                 _%table92942%_
                                 (##fx+ _%probe92961%_ '1)))))
                            (_%loop92958%_
                             (let ((_%next-probe92983%_
                                    (fx+ _%start92954%_
                                         _%i92963%_
                                         (fx* _%i92963%_ _%i92963%_))))
                               (##fxmodulo _%next-probe92983%_ _%size92948%_))
                             (##fx+ _%i92963%_ '1)
                             _%deleted92965%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab92891%_ _%key92893%_)
        (let ((_%table92896%_ (&raw-table-table _%tab92891%_))
              (_%seed92898%_ (&raw-table-seed _%tab92891%_)))
          (let* ((_%h92901%_
                  (fxxor (symbolic-hash _%key92893%_) _%seed92898%_))
                 (_%size92904%_ (vector-length _%table92896%_))
                 (_%entries92907%_ (##fxquotient _%size92904%_ '2))
                 (_%start92910%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92901%_ _%entries92907%_)
                   '1)))
            (let _%loop92914%_ ((_%probe92917%_ _%start92910%_)
                                (_%i92919%_ '1))
              (let ((_%k92922%_ (vector-ref _%table92896%_ _%probe92917%_)))
                (if (eq? _%k92922%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92922%_ (macro-deleted-obj))
                        (_%loop92914%_
                         (let ((_%next-probe92927%_
                                (fx+ _%start92910%_
                                     _%i92919%_
                                     (fx* _%i92919%_ _%i92919%_))))
                           (##fxmodulo _%next-probe92927%_ _%size92904%_))
                         (##fx+ _%i92919%_ '1))
                        (if (eq? _%key92893%_ _%k92922%_)
                            (let ()
                              (vector-set!
                               _%table92896%_
                               _%probe92917%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92896%_
                               (##fx+ _%probe92917%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92891%_
                                  (##fx- (&raw-table-count _%tab92891%_)
                                         '1)))))
                            (_%loop92914%_
                             (let ((_%next-probe92933%_
                                    (fx+ _%start92910%_
                                         _%i92919%_
                                         (fx* _%i92919%_ _%i92919%_))))
                               (##fxmodulo _%next-probe92933%_ _%size92904%_))
                             (##fx+ _%i92919%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint92872%_ _%seed92874%_)
        (make-raw-table__%
         _%size-hint92872%_
         string-hash
         ##string=?
         _%seed92874%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint92880%_ '#f) (_%seed92882%_ '0))
          (make-string-table__% _%size-hint92880%_ _%seed92882%_))))
    (define make-string-table__1
      (lambda (_%size-hint92884%_)
        (let ((_%seed92886%_ '0))
          (make-string-table__% _%size-hint92884%_ _%seed92886%_))))
    (define make-string-table
      (lambda _g93891_
        (let ((_g93890_ (##length _g93891_)))
          (cond ((##fx= _g93890_ 0) (apply make-string-table__0 _g93891_))
                ((##fx= _g93890_ 1) (apply make-string-table__1 _g93891_))
                ((##fx= _g93890_ 2) (apply make-string-table__% _g93891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g93891_))))))
    (define string-table-ref
      (lambda (_%tab92825%_ _%key92826%_ _%default92827%_)
        (let ((_%table92829%_ (&raw-table-table _%tab92825%_))
              (_%seed92830%_ (&raw-table-seed _%tab92825%_)))
          (let* ((_%h92832%_
                  (fxxor (##string=?-hash _%key92826%_) _%seed92830%_))
                 (_%size92835%_ (vector-length _%table92829%_))
                 (_%entries92838%_ (##fxquotient _%size92835%_ '2))
                 (_%start92841%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92832%_ _%entries92838%_)
                   '1)))
            (let _%loop92845%_ ((_%probe92848%_ _%start92841%_)
                                (_%i92850%_ '1)
                                (_%deleted92852%_ '#f))
              (let ((_%k92855%_ (vector-ref _%table92829%_ _%probe92848%_)))
                (if (eq? _%k92855%_ (macro-unused-obj))
                    _%default92827%_
                    (if (eq? _%k92855%_ (macro-deleted-obj))
                        (_%loop92845%_
                         (let ((_%next-probe92860%_
                                (fx+ _%start92841%_
                                     _%i92850%_
                                     (fx* _%i92850%_ _%i92850%_))))
                           (##fxmodulo _%next-probe92860%_ _%size92835%_))
                         (##fx+ _%i92850%_ '1)
                         (let ((_%$e92863%_ _%deleted92852%_))
                           (if _%$e92863%_ _%$e92863%_ _%probe92848%_)))
                        (if (##string=? _%key92826%_ _%k92855%_)
                            (vector-ref
                             _%table92829%_
                             (##fx+ _%probe92848%_ '1))
                            (_%loop92845%_
                             (let ((_%next-probe92868%_
                                    (fx+ _%start92841%_
                                         _%i92850%_
                                         (fx* _%i92850%_ _%i92850%_))))
                               (##fxmodulo _%next-probe92868%_ _%size92835%_))
                             (##fx+ _%i92850%_ '1)
                             _%deleted92852%_))))))))))
    (define string-table-set!
      (lambda (_%tab92821%_ _%key92822%_ _%value92823%_)
        (if (##fx< (&raw-table-free _%tab92821%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92821%_))
                    '4))
            (__raw-table-rehash! _%tab92821%_)
            '#!void)
        (__string-table-set! _%tab92821%_ _%key92822%_ _%value92823%_)))
    (define __string-table-set!
      (lambda (_%tab92772%_ _%key92773%_ _%value92774%_)
        (let ((_%table92777%_ (&raw-table-table _%tab92772%_))
              (_%seed92778%_ (&raw-table-seed _%tab92772%_)))
          (let* ((_%h92780%_
                  (fxxor (##string=?-hash _%key92773%_) _%seed92778%_))
                 (_%size92783%_ (vector-length _%table92777%_))
                 (_%entries92786%_ (##fxquotient _%size92783%_ '2))
                 (_%start92789%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92780%_ _%entries92786%_)
                   '1)))
            (let _%loop92793%_ ((_%probe92796%_ _%start92789%_)
                                (_%i92798%_ '1)
                                (_%deleted92800%_ '#f))
              (let ((_%k92803%_ (vector-ref _%table92777%_ _%probe92796%_)))
                (if (eq? _%k92803%_ (macro-unused-obj))
                    (if _%deleted92800%_
                        (begin
                          (vector-set!
                           _%table92777%_
                           _%deleted92800%_
                           _%key92773%_)
                          (vector-set!
                           _%table92777%_
                           (##fx+ _%deleted92800%_ '1)
                           _%value92774%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92772%_
                              (##fx+ (&raw-table-count _%tab92772%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92777%_
                           _%probe92796%_
                           _%key92773%_)
                          (vector-set!
                           _%table92777%_
                           (##fx+ _%probe92796%_ '1)
                           _%value92774%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92772%_
                              (##fx- (&raw-table-free _%tab92772%_) '1))
                             (&raw-table-count-set!
                              _%tab92772%_
                              (##fx+ (&raw-table-count _%tab92772%_) '1))))))
                    (if (eq? _%k92803%_ (macro-deleted-obj))
                        (_%loop92793%_
                         (let ((_%next-probe92810%_
                                (fx+ _%start92789%_
                                     _%i92798%_
                                     (fx* _%i92798%_ _%i92798%_))))
                           (##fxmodulo _%next-probe92810%_ _%size92783%_))
                         (##fx+ _%i92798%_ '1)
                         (let ((_%$e92813%_ _%deleted92800%_))
                           (if _%$e92813%_ _%$e92813%_ _%probe92796%_)))
                        (if (##string=? _%key92773%_ _%k92803%_)
                            (let ()
                              (vector-set!
                               _%table92777%_
                               _%probe92796%_
                               _%key92773%_)
                              (vector-set!
                               _%table92777%_
                               (##fx+ _%probe92796%_ '1)
                               _%value92774%_))
                            (_%loop92793%_
                             (let ((_%next-probe92818%_
                                    (fx+ _%start92789%_
                                         _%i92798%_
                                         (fx* _%i92798%_ _%i92798%_))))
                               (##fxmodulo _%next-probe92818%_ _%size92783%_))
                             (##fx+ _%i92798%_ '1)
                             _%deleted92800%_))))))))))
    (define string-table-update!
      (lambda (_%tab92767%_
               _%key92768%_
               _%string-table-update!92769%_
               _%default92770%_)
        (if (##fx< (&raw-table-free _%tab92767%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92767%_))
                    '4))
            (__raw-table-rehash! _%tab92767%_)
            '#!void)
        (__string-table-update!
         _%tab92767%_
         _%key92768%_
         _%string-table-update!92769%_
         _%default92770%_)))
    (define __string-table-update!
      (lambda (_%tab92717%_
               _%key92718%_
               _%string-table-update!92719%_
               _%default92720%_)
        (let ((_%table92723%_ (&raw-table-table _%tab92717%_))
              (_%seed92724%_ (&raw-table-seed _%tab92717%_)))
          (let* ((_%h92726%_
                  (fxxor (##string=?-hash _%key92718%_) _%seed92724%_))
                 (_%size92729%_ (vector-length _%table92723%_))
                 (_%entries92732%_ (##fxquotient _%size92729%_ '2))
                 (_%start92735%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92726%_ _%entries92732%_)
                   '1)))
            (let _%loop92739%_ ((_%probe92742%_ _%start92735%_)
                                (_%i92744%_ '1)
                                (_%deleted92746%_ '#f))
              (let ((_%k92749%_ (vector-ref _%table92723%_ _%probe92742%_)))
                (if (eq? _%k92749%_ (macro-unused-obj))
                    (if _%deleted92746%_
                        (begin
                          (vector-set!
                           _%table92723%_
                           _%deleted92746%_
                           _%key92718%_)
                          (vector-set!
                           _%table92723%_
                           (##fx+ _%deleted92746%_ '1)
                           (_%string-table-update!92719%_ _%default92720%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92717%_
                              (##fx+ (&raw-table-count _%tab92717%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92723%_
                           _%probe92742%_
                           _%key92718%_)
                          (vector-set!
                           _%table92723%_
                           (##fx+ _%probe92742%_ '1)
                           (_%string-table-update!92719%_ _%default92720%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92717%_
                              (##fx- (&raw-table-free _%tab92717%_) '1))
                             (&raw-table-count-set!
                              _%tab92717%_
                              (##fx+ (&raw-table-count _%tab92717%_) '1))))))
                    (if (eq? _%k92749%_ (macro-deleted-obj))
                        (_%loop92739%_
                         (let ((_%next-probe92756%_
                                (fx+ _%start92735%_
                                     _%i92744%_
                                     (fx* _%i92744%_ _%i92744%_))))
                           (##fxmodulo _%next-probe92756%_ _%size92729%_))
                         (##fx+ _%i92744%_ '1)
                         (let ((_%$e92759%_ _%deleted92746%_))
                           (if _%$e92759%_ _%$e92759%_ _%probe92742%_)))
                        (if (##string=? _%key92718%_ _%k92749%_)
                            (let ()
                              (vector-set!
                               _%table92723%_
                               _%probe92742%_
                               _%key92718%_)
                              (vector-set!
                               _%table92723%_
                               (##fx+ _%probe92742%_ '1)
                               (_%string-table-update!92719%_
                                (vector-ref
                                 _%table92723%_
                                 (##fx+ _%probe92742%_ '1)))))
                            (_%loop92739%_
                             (let ((_%next-probe92764%_
                                    (fx+ _%start92735%_
                                         _%i92744%_
                                         (fx* _%i92744%_ _%i92744%_))))
                               (##fxmodulo _%next-probe92764%_ _%size92729%_))
                             (##fx+ _%i92744%_ '1)
                             _%deleted92746%_))))))))))
    (define string-table-delete!
      (lambda (_%tab92672%_ _%key92674%_)
        (let ((_%table92677%_ (&raw-table-table _%tab92672%_))
              (_%seed92679%_ (&raw-table-seed _%tab92672%_)))
          (let* ((_%h92682%_
                  (fxxor (##string=?-hash _%key92674%_) _%seed92679%_))
                 (_%size92685%_ (vector-length _%table92677%_))
                 (_%entries92688%_ (##fxquotient _%size92685%_ '2))
                 (_%start92691%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92682%_ _%entries92688%_)
                   '1)))
            (let _%loop92695%_ ((_%probe92698%_ _%start92691%_)
                                (_%i92700%_ '1))
              (let ((_%k92703%_ (vector-ref _%table92677%_ _%probe92698%_)))
                (if (eq? _%k92703%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92703%_ (macro-deleted-obj))
                        (_%loop92695%_
                         (let ((_%next-probe92708%_
                                (fx+ _%start92691%_
                                     _%i92700%_
                                     (fx* _%i92700%_ _%i92700%_))))
                           (##fxmodulo _%next-probe92708%_ _%size92685%_))
                         (##fx+ _%i92700%_ '1))
                        (if (##string=? _%key92674%_ _%k92703%_)
                            (let ()
                              (vector-set!
                               _%table92677%_
                               _%probe92698%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92677%_
                               (##fx+ _%probe92698%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92672%_
                                  (##fx- (&raw-table-count _%tab92672%_)
                                         '1)))))
                            (_%loop92695%_
                             (let ((_%next-probe92714%_
                                    (fx+ _%start92691%_
                                         _%i92700%_
                                         (fx* _%i92700%_ _%i92700%_))))
                               (##fxmodulo _%next-probe92714%_ _%size92685%_))
                             (##fx+ _%i92700%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint92653%_ _%seed92655%_)
        (make-raw-table__%
         _%size-hint92653%_
         immediate-hash
         eq?
         _%seed92655%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint92661%_ '#f) (_%seed92663%_ '0))
          (make-immediate-table__% _%size-hint92661%_ _%seed92663%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint92665%_)
        (let ((_%seed92667%_ '0))
          (make-immediate-table__% _%size-hint92665%_ _%seed92667%_))))
    (define make-immediate-table
      (lambda _g93893_
        (let ((_g93892_ (##length _g93893_)))
          (cond ((##fx= _g93892_ 0) (apply make-immediate-table__0 _g93893_))
                ((##fx= _g93892_ 1) (apply make-immediate-table__1 _g93893_))
                ((##fx= _g93892_ 2) (apply make-immediate-table__% _g93893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g93893_))))))
    (define immediate-table-ref
      (lambda (_%tab92606%_ _%key92607%_ _%default92608%_)
        (let ((_%table92610%_ (&raw-table-table _%tab92606%_))
              (_%seed92611%_ (&raw-table-seed _%tab92606%_)))
          (let* ((_%h92613%_
                  (fxxor (immediate-hash _%key92607%_) _%seed92611%_))
                 (_%size92616%_ (vector-length _%table92610%_))
                 (_%entries92619%_ (##fxquotient _%size92616%_ '2))
                 (_%start92622%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92613%_ _%entries92619%_)
                   '1)))
            (let _%loop92626%_ ((_%probe92629%_ _%start92622%_)
                                (_%i92631%_ '1)
                                (_%deleted92633%_ '#f))
              (let ((_%k92636%_ (vector-ref _%table92610%_ _%probe92629%_)))
                (if (eq? _%k92636%_ (macro-unused-obj))
                    _%default92608%_
                    (if (eq? _%k92636%_ (macro-deleted-obj))
                        (_%loop92626%_
                         (let ((_%next-probe92641%_
                                (fx+ _%start92622%_
                                     _%i92631%_
                                     (fx* _%i92631%_ _%i92631%_))))
                           (##fxmodulo _%next-probe92641%_ _%size92616%_))
                         (##fx+ _%i92631%_ '1)
                         (let ((_%$e92644%_ _%deleted92633%_))
                           (if _%$e92644%_ _%$e92644%_ _%probe92629%_)))
                        (if (eq? _%key92607%_ _%k92636%_)
                            (vector-ref
                             _%table92610%_
                             (##fx+ _%probe92629%_ '1))
                            (_%loop92626%_
                             (let ((_%next-probe92649%_
                                    (fx+ _%start92622%_
                                         _%i92631%_
                                         (fx* _%i92631%_ _%i92631%_))))
                               (##fxmodulo _%next-probe92649%_ _%size92616%_))
                             (##fx+ _%i92631%_ '1)
                             _%deleted92633%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab92602%_ _%key92603%_ _%value92604%_)
        (if (##fx< (&raw-table-free _%tab92602%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92602%_))
                    '4))
            (__raw-table-rehash! _%tab92602%_)
            '#!void)
        (__immediate-table-set! _%tab92602%_ _%key92603%_ _%value92604%_)))
    (define __immediate-table-set!
      (lambda (_%tab92553%_ _%key92554%_ _%value92555%_)
        (let ((_%table92558%_ (&raw-table-table _%tab92553%_))
              (_%seed92559%_ (&raw-table-seed _%tab92553%_)))
          (let* ((_%h92561%_
                  (fxxor (immediate-hash _%key92554%_) _%seed92559%_))
                 (_%size92564%_ (vector-length _%table92558%_))
                 (_%entries92567%_ (##fxquotient _%size92564%_ '2))
                 (_%start92570%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92561%_ _%entries92567%_)
                   '1)))
            (let _%loop92574%_ ((_%probe92577%_ _%start92570%_)
                                (_%i92579%_ '1)
                                (_%deleted92581%_ '#f))
              (let ((_%k92584%_ (vector-ref _%table92558%_ _%probe92577%_)))
                (if (eq? _%k92584%_ (macro-unused-obj))
                    (if _%deleted92581%_
                        (begin
                          (vector-set!
                           _%table92558%_
                           _%deleted92581%_
                           _%key92554%_)
                          (vector-set!
                           _%table92558%_
                           (##fx+ _%deleted92581%_ '1)
                           _%value92555%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92553%_
                              (##fx+ (&raw-table-count _%tab92553%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92558%_
                           _%probe92577%_
                           _%key92554%_)
                          (vector-set!
                           _%table92558%_
                           (##fx+ _%probe92577%_ '1)
                           _%value92555%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92553%_
                              (##fx- (&raw-table-free _%tab92553%_) '1))
                             (&raw-table-count-set!
                              _%tab92553%_
                              (##fx+ (&raw-table-count _%tab92553%_) '1))))))
                    (if (eq? _%k92584%_ (macro-deleted-obj))
                        (_%loop92574%_
                         (let ((_%next-probe92591%_
                                (fx+ _%start92570%_
                                     _%i92579%_
                                     (fx* _%i92579%_ _%i92579%_))))
                           (##fxmodulo _%next-probe92591%_ _%size92564%_))
                         (##fx+ _%i92579%_ '1)
                         (let ((_%$e92594%_ _%deleted92581%_))
                           (if _%$e92594%_ _%$e92594%_ _%probe92577%_)))
                        (if (eq? _%key92554%_ _%k92584%_)
                            (let ()
                              (vector-set!
                               _%table92558%_
                               _%probe92577%_
                               _%key92554%_)
                              (vector-set!
                               _%table92558%_
                               (##fx+ _%probe92577%_ '1)
                               _%value92555%_))
                            (_%loop92574%_
                             (let ((_%next-probe92599%_
                                    (fx+ _%start92570%_
                                         _%i92579%_
                                         (fx* _%i92579%_ _%i92579%_))))
                               (##fxmodulo _%next-probe92599%_ _%size92564%_))
                             (##fx+ _%i92579%_ '1)
                             _%deleted92581%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab92548%_
               _%key92549%_
               _%immediate-table-update!92550%_
               _%default92551%_)
        (if (##fx< (&raw-table-free _%tab92548%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92548%_))
                    '4))
            (__raw-table-rehash! _%tab92548%_)
            '#!void)
        (__immediate-table-update!
         _%tab92548%_
         _%key92549%_
         _%immediate-table-update!92550%_
         _%default92551%_)))
    (define __immediate-table-update!
      (lambda (_%tab92498%_
               _%key92499%_
               _%immediate-table-update!92500%_
               _%default92501%_)
        (let ((_%table92504%_ (&raw-table-table _%tab92498%_))
              (_%seed92505%_ (&raw-table-seed _%tab92498%_)))
          (let* ((_%h92507%_
                  (fxxor (immediate-hash _%key92499%_) _%seed92505%_))
                 (_%size92510%_ (vector-length _%table92504%_))
                 (_%entries92513%_ (##fxquotient _%size92510%_ '2))
                 (_%start92516%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92507%_ _%entries92513%_)
                   '1)))
            (let _%loop92520%_ ((_%probe92523%_ _%start92516%_)
                                (_%i92525%_ '1)
                                (_%deleted92527%_ '#f))
              (let ((_%k92530%_ (vector-ref _%table92504%_ _%probe92523%_)))
                (if (eq? _%k92530%_ (macro-unused-obj))
                    (if _%deleted92527%_
                        (begin
                          (vector-set!
                           _%table92504%_
                           _%deleted92527%_
                           _%key92499%_)
                          (vector-set!
                           _%table92504%_
                           (##fx+ _%deleted92527%_ '1)
                           (_%immediate-table-update!92500%_ _%default92501%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92498%_
                              (##fx+ (&raw-table-count _%tab92498%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92504%_
                           _%probe92523%_
                           _%key92499%_)
                          (vector-set!
                           _%table92504%_
                           (##fx+ _%probe92523%_ '1)
                           (_%immediate-table-update!92500%_ _%default92501%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92498%_
                              (##fx- (&raw-table-free _%tab92498%_) '1))
                             (&raw-table-count-set!
                              _%tab92498%_
                              (##fx+ (&raw-table-count _%tab92498%_) '1))))))
                    (if (eq? _%k92530%_ (macro-deleted-obj))
                        (_%loop92520%_
                         (let ((_%next-probe92537%_
                                (fx+ _%start92516%_
                                     _%i92525%_
                                     (fx* _%i92525%_ _%i92525%_))))
                           (##fxmodulo _%next-probe92537%_ _%size92510%_))
                         (##fx+ _%i92525%_ '1)
                         (let ((_%$e92540%_ _%deleted92527%_))
                           (if _%$e92540%_ _%$e92540%_ _%probe92523%_)))
                        (if (eq? _%key92499%_ _%k92530%_)
                            (let ()
                              (vector-set!
                               _%table92504%_
                               _%probe92523%_
                               _%key92499%_)
                              (vector-set!
                               _%table92504%_
                               (##fx+ _%probe92523%_ '1)
                               (_%immediate-table-update!92500%_
                                (vector-ref
                                 _%table92504%_
                                 (##fx+ _%probe92523%_ '1)))))
                            (_%loop92520%_
                             (let ((_%next-probe92545%_
                                    (fx+ _%start92516%_
                                         _%i92525%_
                                         (fx* _%i92525%_ _%i92525%_))))
                               (##fxmodulo _%next-probe92545%_ _%size92510%_))
                             (##fx+ _%i92525%_ '1)
                             _%deleted92527%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab92453%_ _%key92455%_)
        (let ((_%table92458%_ (&raw-table-table _%tab92453%_))
              (_%seed92460%_ (&raw-table-seed _%tab92453%_)))
          (let* ((_%h92463%_
                  (fxxor (immediate-hash _%key92455%_) _%seed92460%_))
                 (_%size92466%_ (vector-length _%table92458%_))
                 (_%entries92469%_ (##fxquotient _%size92466%_ '2))
                 (_%start92472%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92463%_ _%entries92469%_)
                   '1)))
            (let _%loop92476%_ ((_%probe92479%_ _%start92472%_)
                                (_%i92481%_ '1))
              (let ((_%k92484%_ (vector-ref _%table92458%_ _%probe92479%_)))
                (if (eq? _%k92484%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92484%_ (macro-deleted-obj))
                        (_%loop92476%_
                         (let ((_%next-probe92489%_
                                (fx+ _%start92472%_
                                     _%i92481%_
                                     (fx* _%i92481%_ _%i92481%_))))
                           (##fxmodulo _%next-probe92489%_ _%size92466%_))
                         (##fx+ _%i92481%_ '1))
                        (if (eq? _%key92455%_ _%k92484%_)
                            (let ()
                              (vector-set!
                               _%table92458%_
                               _%probe92479%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92458%_
                               (##fx+ _%probe92479%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92453%_
                                  (##fx- (&raw-table-count _%tab92453%_)
                                         '1)))))
                            (_%loop92476%_
                             (let ((_%next-probe92495%_
                                    (fx+ _%start92472%_
                                         _%i92481%_
                                         (fx* _%i92481%_ _%i92481%_))))
                               (##fxmodulo _%next-probe92495%_ _%size92466%_))
                             (##fx+ _%i92481%_ '1)))))))))))
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
      (lambda (_%tab92451%_)
        (##unchecked-structure-ref
         _%tab92451%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab92449%_)
        (##unchecked-structure-ref
         _%tab92449%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab92446%_ _%val92447%_)
        (##unchecked-structure-set!
         _%tab92446%_
         _%val92447%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab92443%_ _%val92444%_)
        (##unchecked-structure-set!
         _%tab92443%_
         _%val92444%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint92419%_ _%klass92420%_ _%flags92421%_)
        (let ((_%gcht92423%_
               (__gc-table-new
                (if (fixnum? _%size-hint92419%_) _%size-hint92419%_ '16)
                _%flags92421%_)))
          (##structure _%klass92420%_ _%gcht92423%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint92428%_)
        (let* ((_%klass92430%_ __gc-table::t) (_%flags92432%_ '0))
          (make-gc-table__%
           _%size-hint92428%_
           _%klass92430%_
           _%flags92432%_))))
    (define make-gc-table__1
      (lambda (_%size-hint92434%_ _%klass92435%_)
        (let ((_%flags92437%_ '0))
          (make-gc-table__%
           _%size-hint92434%_
           _%klass92435%_
           _%flags92437%_))))
    (define make-gc-table
      (lambda _g93895_
        (let ((_g93894_ (##length _g93895_)))
          (cond ((##fx= _g93894_ 1) (apply make-gc-table__0 _g93895_))
                ((##fx= _g93894_ 2) (apply make-gc-table__1 _g93895_))
                ((##fx= _g93894_ 3) (apply make-gc-table__% _g93895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g93895_))))))
    (define __gc-table-immediate
      (lambda (_%tab92410%_)
        (let ((_%$e92412%_ (&gc-table-immediate _%tab92410%_)))
          (if _%$e92412%_
              _%$e92412%_
              (let ((_%immediate92416%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab92410%_ _%immediate92416%_)
                _%immediate92416%_)))))
    (define __gc-table-new
      (lambda (_%size92400%_ _%flags92401%_)
        (let* ((_%flags92403%_
                (##fxand _%flags92401%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags92405%_
                (fxior _%flags92403%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht92407%_
                (##gc-hash-table-allocate
                 _%size92400%_
                 _%flags92405%_
                 __gc-table-loads)))
          _%gcht92407%_)))
    (define __gc-table-e
      (lambda (_%tab92395%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht92398%_ (&gc-table-gcht _%tab92395%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht92398%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht92398%_
              (begin
                (__gc-table-rehash! _%tab92395%_)
                (&gc-table-gcht _%tab92395%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab92386%_)
        (let* ((_%old-table92388%_ (&gc-table-gcht _%tab92386%_))
               (_%new-table92390%_
                (##gc-hash-table-resize! _%old-table92388%_ __gc-table-loads))
               (_%gcht92392%_
                (##gc-hash-table-rehash!
                 _%old-table92388%_
                 _%new-table92390%_)))
          (&gc-table-gcht-set! _%tab92386%_ _%gcht92392%_))))
    (define gc-table-ref
      (lambda (_%tab92370%_ _%key92371%_ _%default92372%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key92371%_)
            (let* ((_%gcht92376%_ (__gc-table-e _%tab92370%_))
                   (_%value92378%_
                    (##gc-hash-table-ref _%gcht92376%_ _%key92371%_)))
              (if (eq? _%value92378%_ (macro-unused-obj))
                  _%default92372%_
                  _%value92378%_))
            (let ((_%$e92380%_ (&gc-table-immediate _%tab92370%_)))
              (if _%$e92380%_
                  ((lambda (_%immediate92383%_)
                     (immediate-table-ref
                      _%immediate92383%_
                      _%key92371%_
                      _%default92372%_))
                   _%$e92380%_)
                  _%default92372%_)))))
    (define gc-table-set!
      (lambda (_%tab92363%_ _%key92364%_ _%value92365%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key92364%_)
            (let ((_%gcht92368%_ (__gc-table-e _%tab92363%_)))
              (if (##gc-hash-table-set!
                   _%gcht92368%_
                   _%key92364%_
                   _%value92365%_)
                  (begin
                    (__gc-table-rehash! _%tab92363%_)
                    (gc-table-set! _%tab92363%_ _%key92364%_ _%value92365%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab92363%_)
             _%key92364%_
             _%value92365%_))))
    (define gc-table-update!
      (lambda (_%tab92356%_ _%key92357%_ _%update92358%_ _%default92359%_)
        (if (##mem-allocated? _%key92357%_)
            (let ((_%value92361%_
                   (gc-table-ref _%tab92356%_ _%key92357%_ _%default92359%_)))
              (gc-table-set!
               _%tab92356%_
               _%key92357%_
               (_%update92358%_ _%value92361%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab92356%_)
             _%key92357%_
             _%update92358%_
             _%default92359%_))))
    (define gc-table-delete!
      (lambda (_%tab92344%_ _%key92345%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key92345%_)
            (let ((_%gcht92349%_ (__gc-table-e _%tab92344%_)))
              (if (##gc-hash-table-set!
                   _%gcht92349%_
                   _%key92345%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab92344%_)
                    (gc-table-delete! _%tab92344%_ _%key92345%_))
                  '#!void))
            (let ((_%$e92351%_ (&gc-table-immediate _%tab92344%_)))
              (if _%$e92351%_
                  ((lambda (_%immediate92354%_)
                     (immediate-table-delete! _%immediate92354%_ _%key92345%_))
                   _%$e92351%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab92325%_ _%proc92326%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht92329%_ (__gc-table-e _%tab92325%_)))
            (let _%loop92331%_ ((_%i92333%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i92333%_ (##vector-length _%gcht92329%_))
                  (let ((_%key92335%_ (##vector-ref _%gcht92329%_ _%i92333%_)))
                    (if (if (eq? _%key92335%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92335%_ (macro-deleted-obj))))
                        (_%proc92326%_
                         _%key92335%_
                         (##vector-ref _%gcht92329%_ (##fx+ _%i92333%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop92331%_ (##fx+ _%i92333%_ '2))))
                  '#!void)))
          (let ((_%$e92339%_ (&gc-table-immediate _%tab92325%_)))
            (if _%$e92339%_
                ((lambda (_%immediate92342%_)
                   (raw-table-for-each _%immediate92342%_ _%proc92326%_))
                 _%$e92339%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab92313%_)
        (let* ((_%gcht92315%_ (__gc-table-e _%tab92313%_))
               (_%new-table92317%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht92315%_)
                 (macro-gc-hash-table-flags _%gcht92315%_)))
               (_%result92319%_
                (##structure
                 (##structure-type _%tab92313%_)
                 _%new-table92317%_
                 '#f)))
          (gc-table-for-each
           _%tab92313%_
           (lambda (_%k92322%_ _%v92323%_)
             (gc-table-set! _%result92319%_ _%k92322%_ _%v92323%_)))
          _%result92319%_)))
    (define gc-table-clear!
      (lambda (_%tab92306%_)
        (let* ((_%gcht92308%_ (__gc-table-e _%tab92306%_))
               (_%new-table92310%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht92308%_))))
          (&gc-table-gcht-set! _%tab92306%_ _%new-table92310%_)
          (&gc-table-immediate-set! _%tab92306%_ '#f))))
    (define gc-table-length
      (lambda (_%tab92298%_)
        (let ((_%gcht92300%_ (__gc-table-e _%tab92298%_)))
          (fx+ (macro-gc-hash-table-count _%gcht92300%_)
               (let ((_%$e92302%_ (&gc-table-immediate _%tab92298%_)))
                 (if _%$e92302%_ (&raw-table-count _%$e92302%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj92283%_)
        (declare (not interrupts-enabled))
        (let ((_%val92286%_ (gc-table-ref __object-eq-hash _%obj92283%_ '#f)))
          (if _%val92286%_
              _%val92286%_
              (let* ((_%mix92288%_ __object-eq-hash-next)
                     (_%ptr92290%_ (##type-cast _%obj92283%_ '0))
                     (_%h92292%_
                      (fxand (fxxor _%mix92288%_ _%ptr92290%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e92295%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e92295%_ _%$e92295%_ '0)))
                (gc-table-set! __object-eq-hash _%obj92283%_ _%h92292%_)
                _%h92292%_)))))))
