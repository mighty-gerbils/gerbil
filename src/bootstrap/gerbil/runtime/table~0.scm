(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1734278442)
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
      (lambda (_%tab94886%_)
        (##unchecked-structure-ref
         _%tab94886%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab94884%_)
        (##unchecked-structure-ref
         _%tab94884%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab94882%_)
        (##unchecked-structure-ref
         _%tab94882%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab94880%_)
        (##unchecked-structure-ref
         _%tab94880%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab94878%_)
        (##unchecked-structure-ref
         _%tab94878%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab94876%_)
        (##unchecked-structure-ref
         _%tab94876%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab94873%_ _%val94874%_)
        (##unchecked-structure-set!
         _%tab94873%_
         _%val94874%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab94870%_ _%val94871%_)
        (##unchecked-structure-set!
         _%tab94870%_
         _%val94871%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab94867%_ _%val94868%_)
        (##unchecked-structure-set!
         _%tab94867%_
         _%val94868%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab94864%_ _%val94865%_)
        (##unchecked-structure-set!
         _%tab94864%_
         _%val94865%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab94861%_ _%val94862%_)
        (##unchecked-structure-set!
         _%tab94861%_
         _%val94862%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab94858%_ _%val94859%_)
        (##unchecked-structure-set!
         _%tab94858%_
         _%val94859%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint94856%_)
        (if (and (fixnum? _%size-hint94856%_) (##fx> _%size-hint94856%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint94856%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint94832%_ _%hash94833%_ _%test94834%_ _%seed94835%_)
        (let* ((_%size94837%_ (raw-table-size-hint->size _%size-hint94832%_))
               (_%table94839%_
                (##make-vector _%size94837%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table94839%_
           '0
           (##fxquotient _%size94837%_ '2)
           _%hash94833%_
           _%test94834%_
           _%seed94835%_))))
    (define make-raw-table__0
      (lambda (_%size-hint94845%_ _%hash94846%_ _%test94847%_)
        (let ((_%seed94849%_ '0))
          (make-raw-table__%
           _%size-hint94845%_
           _%hash94846%_
           _%test94847%_
           _%seed94849%_))))
    (define make-raw-table
      (lambda _g94888_
        (let ((_g94887_ (##length _g94888_)))
          (cond ((##fx= _g94887_ 3) (apply make-raw-table__0 _g94888_))
                ((##fx= _g94887_ 4) (apply make-raw-table__% _g94888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g94888_))))))
    (define raw-table-ref
      (lambda (_%tab94783%_ _%key94784%_ _%default94785%_)
        (let ((_%table94787%_ (&raw-table-table _%tab94783%_))
              (_%seed94788%_ (&raw-table-seed _%tab94783%_))
              (_%hash94789%_ (&raw-table-hash _%tab94783%_))
              (_%test94790%_ (&raw-table-test _%tab94783%_)))
          (let* ((_%h94792%_
                  (fxxor (_%hash94789%_ _%key94784%_) _%seed94788%_))
                 (_%size94795%_ (vector-length _%table94787%_))
                 (_%entries94798%_ (##fxquotient _%size94795%_ '2))
                 (_%start94801%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94792%_ _%entries94798%_)
                   '1)))
            (let _%loop94805%_ ((_%probe94808%_ _%start94801%_)
                                (_%i94810%_ '1)
                                (_%deleted94812%_ '#f))
              (let ((_%k94815%_ (vector-ref _%table94787%_ _%probe94808%_)))
                (if (eq? _%k94815%_ (macro-unused-obj))
                    _%default94785%_
                    (if (eq? _%k94815%_ (macro-deleted-obj))
                        (_%loop94805%_
                         (let ((_%next-probe94820%_
                                (fx+ _%start94801%_
                                     _%i94810%_
                                     (fx* _%i94810%_ _%i94810%_))))
                           (##fxmodulo _%next-probe94820%_ _%size94795%_))
                         (##fx+ _%i94810%_ '1)
                         (let ((_%$e94823%_ _%deleted94812%_))
                           (if _%$e94823%_ _%$e94823%_ _%probe94808%_)))
                        (if (_%test94790%_ _%key94784%_ _%k94815%_)
                            (vector-ref
                             _%table94787%_
                             (##fx+ _%probe94808%_ '1))
                            (_%loop94805%_
                             (let ((_%next-probe94828%_
                                    (fx+ _%start94801%_
                                         _%i94810%_
                                         (fx* _%i94810%_ _%i94810%_))))
                               (##fxmodulo _%next-probe94828%_ _%size94795%_))
                             (##fx+ _%i94810%_ '1)
                             _%deleted94812%_))))))))))
    (define raw-table-set!
      (lambda (_%tab94779%_ _%key94780%_ _%value94781%_)
        (if (##fx< (&raw-table-free _%tab94779%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94779%_))
                    '4))
            (__raw-table-rehash! _%tab94779%_)
            '#!void)
        (__raw-table-set! _%tab94779%_ _%key94780%_ _%value94781%_)))
    (define raw-table-update!
      (lambda (_%tab94774%_ _%key94775%_ _%update94776%_ _%default94777%_)
        (if (##fx< (&raw-table-free _%tab94774%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94774%_))
                    '4))
            (__raw-table-rehash! _%tab94774%_)
            '#!void)
        (__raw-table-update!
         _%tab94774%_
         _%key94775%_
         _%update94776%_
         _%default94777%_)))
    (define raw-table-delete!
      (lambda (_%tab94731%_ _%key94732%_)
        (let ((_%table94734%_ (&raw-table-table _%tab94731%_))
              (_%seed94735%_ (&raw-table-seed _%tab94731%_))
              (_%hash94736%_ (&raw-table-hash _%tab94731%_))
              (_%test94737%_ (&raw-table-test _%tab94731%_)))
          (let* ((_%h94739%_
                  (fxxor (_%hash94736%_ _%key94732%_) _%seed94735%_))
                 (_%size94742%_ (vector-length _%table94734%_))
                 (_%entries94745%_ (##fxquotient _%size94742%_ '2))
                 (_%start94748%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94739%_ _%entries94745%_)
                   '1)))
            (let _%loop94752%_ ((_%probe94755%_ _%start94748%_)
                                (_%i94757%_ '1))
              (let ((_%k94760%_ (vector-ref _%table94734%_ _%probe94755%_)))
                (if (eq? _%k94760%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94760%_ (macro-deleted-obj))
                        (_%loop94752%_
                         (let ((_%next-probe94765%_
                                (fx+ _%start94748%_
                                     _%i94757%_
                                     (fx* _%i94757%_ _%i94757%_))))
                           (##fxmodulo _%next-probe94765%_ _%size94742%_))
                         (##fx+ _%i94757%_ '1))
                        (if (_%test94737%_ _%key94732%_ _%k94760%_)
                            (let ()
                              (vector-set!
                               _%table94734%_
                               _%probe94755%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94734%_
                               (##fx+ _%probe94755%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94731%_
                                  (##fx- (&raw-table-count _%tab94731%_)
                                         '1)))))
                            (_%loop94752%_
                             (let ((_%next-probe94771%_
                                    (fx+ _%start94748%_
                                         _%i94757%_
                                         (fx* _%i94757%_ _%i94757%_))))
                               (##fxmodulo _%next-probe94771%_ _%size94742%_))
                             (##fx+ _%i94757%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab94715%_ _%proc94716%_)
        (let* ((_%table94718%_ (&raw-table-table _%tab94715%_))
               (_%size94720%_ (vector-length _%table94718%_)))
          (let _%loop94723%_ ((_%i94725%_ '0))
            (if (##fx< _%i94725%_ _%size94720%_)
                (begin
                  (let ((_%key94727%_ (vector-ref _%table94718%_ _%i94725%_)))
                    (if (if (eq? _%key94727%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94727%_ (macro-deleted-obj))))
                        (let ((_%value94729%_
                               (vector-ref
                                _%table94718%_
                                (##fx+ _%i94725%_ '1))))
                          (_%proc94716%_ _%key94727%_ _%value94729%_))
                        '#!void))
                  (_%loop94723%_ (##fx+ _%i94725%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab94711%_)
        (let ((_%new-tab94713%_ (##structure-copy _%tab94711%_)))
          (&raw-table-table-set!
           _%new-tab94713%_
           (vector-copy (&raw-table-table _%tab94711%_)))
          _%new-tab94713%_)))
    (define raw-table-clear!
      (lambda (_%tab94709%_)
        (vector-fill! (&raw-table-table _%tab94709%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab94709%_ '0)
        (&raw-table-free-set!
         _%tab94709%_
         (##fxquotient (vector-length (&raw-table-table _%tab94709%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab94659%_ _%key94660%_ _%value94661%_)
        (let ((_%table94663%_ (&raw-table-table _%tab94659%_))
              (_%seed94664%_ (&raw-table-seed _%tab94659%_))
              (_%hash94665%_ (&raw-table-hash _%tab94659%_))
              (_%test94666%_ (&raw-table-test _%tab94659%_)))
          (let* ((_%h94668%_
                  (fxxor (_%hash94665%_ _%key94660%_) _%seed94664%_))
                 (_%size94671%_ (vector-length _%table94663%_))
                 (_%entries94674%_ (##fxquotient _%size94671%_ '2))
                 (_%start94677%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94668%_ _%entries94674%_)
                   '1)))
            (let _%loop94681%_ ((_%probe94684%_ _%start94677%_)
                                (_%i94686%_ '1)
                                (_%deleted94688%_ '#f))
              (let ((_%k94691%_ (vector-ref _%table94663%_ _%probe94684%_)))
                (if (eq? _%k94691%_ (macro-unused-obj))
                    (if _%deleted94688%_
                        (begin
                          (vector-set!
                           _%table94663%_
                           _%deleted94688%_
                           _%key94660%_)
                          (vector-set!
                           _%table94663%_
                           (##fx+ _%deleted94688%_ '1)
                           _%value94661%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94659%_
                              (##fx+ (&raw-table-count _%tab94659%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94663%_
                           _%probe94684%_
                           _%key94660%_)
                          (vector-set!
                           _%table94663%_
                           (##fx+ _%probe94684%_ '1)
                           _%value94661%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94659%_
                              (##fx- (&raw-table-free _%tab94659%_) '1))
                             (&raw-table-count-set!
                              _%tab94659%_
                              (##fx+ (&raw-table-count _%tab94659%_) '1))))))
                    (if (eq? _%k94691%_ (macro-deleted-obj))
                        (_%loop94681%_
                         (let ((_%next-probe94698%_
                                (fx+ _%start94677%_
                                     _%i94686%_
                                     (fx* _%i94686%_ _%i94686%_))))
                           (##fxmodulo _%next-probe94698%_ _%size94671%_))
                         (##fx+ _%i94686%_ '1)
                         (let ((_%$e94701%_ _%deleted94688%_))
                           (if _%$e94701%_ _%$e94701%_ _%probe94684%_)))
                        (if (_%test94666%_ _%key94660%_ _%k94691%_)
                            (let ()
                              (vector-set!
                               _%table94663%_
                               _%probe94684%_
                               _%key94660%_)
                              (vector-set!
                               _%table94663%_
                               (##fx+ _%probe94684%_ '1)
                               _%value94661%_))
                            (_%loop94681%_
                             (let ((_%next-probe94706%_
                                    (fx+ _%start94677%_
                                         _%i94686%_
                                         (fx* _%i94686%_ _%i94686%_))))
                               (##fxmodulo _%next-probe94706%_ _%size94671%_))
                             (##fx+ _%i94686%_ '1)
                             _%deleted94688%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab94608%_ _%key94609%_ _%update94610%_ _%default94611%_)
        (let ((_%table94613%_ (&raw-table-table _%tab94608%_))
              (_%seed94614%_ (&raw-table-seed _%tab94608%_))
              (_%hash94615%_ (&raw-table-hash _%tab94608%_))
              (_%test94616%_ (&raw-table-test _%tab94608%_)))
          (let* ((_%h94618%_
                  (fxxor (_%hash94615%_ _%key94609%_) _%seed94614%_))
                 (_%size94621%_ (vector-length _%table94613%_))
                 (_%entries94624%_ (##fxquotient _%size94621%_ '2))
                 (_%start94627%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94618%_ _%entries94624%_)
                   '1)))
            (let _%loop94631%_ ((_%probe94634%_ _%start94627%_)
                                (_%i94636%_ '1)
                                (_%deleted94638%_ '#f))
              (let ((_%k94641%_ (vector-ref _%table94613%_ _%probe94634%_)))
                (if (eq? _%k94641%_ (macro-unused-obj))
                    (if _%deleted94638%_
                        (begin
                          (vector-set!
                           _%table94613%_
                           _%deleted94638%_
                           _%key94609%_)
                          (vector-set!
                           _%table94613%_
                           (##fx+ _%deleted94638%_ '1)
                           (_%update94610%_ _%default94611%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94608%_
                              (##fx+ (&raw-table-count _%tab94608%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94613%_
                           _%probe94634%_
                           _%key94609%_)
                          (vector-set!
                           _%table94613%_
                           (##fx+ _%probe94634%_ '1)
                           (_%update94610%_ _%default94611%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94608%_
                              (##fx- (&raw-table-free _%tab94608%_) '1))
                             (&raw-table-count-set!
                              _%tab94608%_
                              (##fx+ (&raw-table-count _%tab94608%_) '1))))))
                    (if (eq? _%k94641%_ (macro-deleted-obj))
                        (_%loop94631%_
                         (let ((_%next-probe94648%_
                                (fx+ _%start94627%_
                                     _%i94636%_
                                     (fx* _%i94636%_ _%i94636%_))))
                           (##fxmodulo _%next-probe94648%_ _%size94621%_))
                         (##fx+ _%i94636%_ '1)
                         (let ((_%$e94651%_ _%deleted94638%_))
                           (if _%$e94651%_ _%$e94651%_ _%probe94634%_)))
                        (if (_%test94616%_ _%key94609%_ _%k94641%_)
                            (let ()
                              (vector-set!
                               _%table94613%_
                               _%probe94634%_
                               _%key94609%_)
                              (vector-set!
                               _%table94613%_
                               (##fx+ _%probe94634%_ '1)
                               (_%update94610%_
                                (vector-ref
                                 _%table94613%_
                                 (##fx+ _%probe94634%_ '1)))))
                            (_%loop94631%_
                             (let ((_%next-probe94656%_
                                    (fx+ _%start94627%_
                                         _%i94636%_
                                         (fx* _%i94636%_ _%i94636%_))))
                               (##fxmodulo _%next-probe94656%_ _%size94621%_))
                             (##fx+ _%i94636%_ '1)
                             _%deleted94638%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab94589%_)
        (let* ((_%old-table94591%_ (&raw-table-table _%tab94589%_))
               (_%old-size94593%_ (vector-length _%old-table94591%_))
               (_%new-size94595%_
                (if (##fx< (&raw-table-count _%tab94589%_)
                           (##fxquotient _%old-size94593%_ '4))
                    (vector-length _%old-table94591%_)
                    (##fx* '2 (vector-length _%old-table94591%_))))
               (_%new-table94597%_
                (##make-vector _%new-size94595%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab94589%_ _%new-table94597%_)
          (&raw-table-count-set! _%tab94589%_ '0)
          (&raw-table-free-set!
           _%tab94589%_
           (##fxquotient _%new-size94595%_ '2))
          (let _%lp94600%_ ((_%i94602%_ '0))
            (if (##fx< _%i94602%_ _%old-size94593%_)
                (begin
                  (let ((_%key94604%_
                         (vector-ref _%old-table94591%_ _%i94602%_)))
                    (if (if (eq? _%key94604%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94604%_ (macro-deleted-obj))))
                        (let ((_%value94606%_
                               (vector-ref
                                _%old-table94591%_
                                (##fx+ _%i94602%_ '1))))
                          (__raw-table-set!
                           _%tab94589%_
                           _%key94604%_
                           _%value94606%_))
                        '#!void))
                  (_%lp94600%_ (##fx+ _%i94602%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj94581%_)
        (let ((_%t94583%_ (##type _%obj94581%_)))
          (if (##fx= (##fxand _%t94583%_ '1) '0)
              (fxand (##type-cast _%obj94581%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj94581%_)
                  (symbolic-hash _%obj94581%_)
                  (if (procedure? _%obj94581%_)
                      (procedure-hash _%obj94581%_)
                      (fxand (__eq-hash _%obj94581%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj94577%_)
        (let ((_%h94579%_
               (if (##closure? _%obj94577%_)
                   (__eq-hash _%obj94577%_)
                   (##type-cast _%obj94577%_ '0))))
          (fxand _%h94579%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj94574%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj94574%_)))
    (define eqv-hash
      (lambda (_%obj94564%_)
        (letrec ((_%combine94566%_
                  (lambda (_%a94571%_ _%b94572%_)
                    (fxand (##fx* (##fx+ _%a94571%_
                                         (fxarithmetic-shift-left
                                          _%b94572%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash94567%_
                  (lambda (_%obj94569%_)
                    (macro-number-dispatch
                     _%obj94569%_
                     (eq-hash _%obj94569%_)
                     (fxand _%obj94569%_ (macro-max-fixnum32))
                     (modulo _%obj94569%_ '331804481)
                     (_%combine94566%_
                      (_%hash94567%_ (macro-ratnum-numerator _%obj94569%_))
                      (_%hash94567%_ (macro-ratnum-denominator _%obj94569%_)))
                     (_%combine94566%_
                      (##u16vector-ref _%obj94569%_ '0)
                      (_%combine94566%_
                       (##u16vector-ref _%obj94569%_ '1)
                       (_%combine94566%_
                        (##u16vector-ref _%obj94569%_ '2)
                        (##u16vector-ref _%obj94569%_ '3))))
                     (_%combine94566%_
                      (_%hash94567%_ (macro-cpxnum-real _%obj94569%_))
                      (_%hash94567%_ (macro-cpxnum-imag _%obj94569%_)))))))
          (_%hash94567%_ _%obj94564%_))))
    (define symbolic?
      (lambda (_%obj94559%_)
        (let ((_%$e94561%_ (symbol? _%obj94559%_)))
          (if _%$e94561%_ _%$e94561%_ (keyword? _%obj94559%_)))))
    (define symbolic-hash (lambda (_%obj94557%_) (macro-slot '1 _%obj94557%_)))
    (define string-hash (lambda (_%obj94555%_) (##string=?-hash _%obj94555%_)))
    (define immediate-hash
      (lambda (_%obj94553%_) (##type-cast _%obj94553%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint94534%_ _%seed94536%_)
        (make-raw-table__% _%size-hint94534%_ eq-hash eq? _%seed94536%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint94542%_ '#f) (_%seed94544%_ '0))
          (make-eq-table__% _%size-hint94542%_ _%seed94544%_))))
    (define make-eq-table__1
      (lambda (_%size-hint94546%_)
        (let ((_%seed94548%_ '0))
          (make-eq-table__% _%size-hint94546%_ _%seed94548%_))))
    (define make-eq-table
      (lambda _g94890_
        (let ((_g94889_ (##length _g94890_)))
          (cond ((##fx= _g94889_ 0) (apply make-eq-table__0 _g94890_))
                ((##fx= _g94889_ 1) (apply make-eq-table__1 _g94890_))
                ((##fx= _g94889_ 2) (apply make-eq-table__% _g94890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g94890_))))))
    (define eq-table-ref
      (lambda (_%tab94487%_ _%key94488%_ _%default94489%_)
        (let ((_%table94491%_ (&raw-table-table _%tab94487%_))
              (_%seed94492%_ (&raw-table-seed _%tab94487%_)))
          (let* ((_%h94494%_ (fxxor (eq-hash _%key94488%_) _%seed94492%_))
                 (_%size94497%_ (vector-length _%table94491%_))
                 (_%entries94500%_ (##fxquotient _%size94497%_ '2))
                 (_%start94503%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94494%_ _%entries94500%_)
                   '1)))
            (let _%loop94507%_ ((_%probe94510%_ _%start94503%_)
                                (_%i94512%_ '1)
                                (_%deleted94514%_ '#f))
              (let ((_%k94517%_ (vector-ref _%table94491%_ _%probe94510%_)))
                (if (eq? _%k94517%_ (macro-unused-obj))
                    _%default94489%_
                    (if (eq? _%k94517%_ (macro-deleted-obj))
                        (_%loop94507%_
                         (let ((_%next-probe94522%_
                                (fx+ _%start94503%_
                                     _%i94512%_
                                     (fx* _%i94512%_ _%i94512%_))))
                           (##fxmodulo _%next-probe94522%_ _%size94497%_))
                         (##fx+ _%i94512%_ '1)
                         (let ((_%$e94525%_ _%deleted94514%_))
                           (if _%$e94525%_ _%$e94525%_ _%probe94510%_)))
                        (if (eq? _%key94488%_ _%k94517%_)
                            (vector-ref
                             _%table94491%_
                             (##fx+ _%probe94510%_ '1))
                            (_%loop94507%_
                             (let ((_%next-probe94530%_
                                    (fx+ _%start94503%_
                                         _%i94512%_
                                         (fx* _%i94512%_ _%i94512%_))))
                               (##fxmodulo _%next-probe94530%_ _%size94497%_))
                             (##fx+ _%i94512%_ '1)
                             _%deleted94514%_))))))))))
    (define eq-table-set!
      (lambda (_%tab94483%_ _%key94484%_ _%value94485%_)
        (if (##fx< (&raw-table-free _%tab94483%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94483%_))
                    '4))
            (__raw-table-rehash! _%tab94483%_)
            '#!void)
        (__eq-table-set! _%tab94483%_ _%key94484%_ _%value94485%_)))
    (define __eq-table-set!
      (lambda (_%tab94434%_ _%key94435%_ _%value94436%_)
        (let ((_%table94439%_ (&raw-table-table _%tab94434%_))
              (_%seed94440%_ (&raw-table-seed _%tab94434%_)))
          (let* ((_%h94442%_ (fxxor (eq-hash _%key94435%_) _%seed94440%_))
                 (_%size94445%_ (vector-length _%table94439%_))
                 (_%entries94448%_ (##fxquotient _%size94445%_ '2))
                 (_%start94451%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94442%_ _%entries94448%_)
                   '1)))
            (let _%loop94455%_ ((_%probe94458%_ _%start94451%_)
                                (_%i94460%_ '1)
                                (_%deleted94462%_ '#f))
              (let ((_%k94465%_ (vector-ref _%table94439%_ _%probe94458%_)))
                (if (eq? _%k94465%_ (macro-unused-obj))
                    (if _%deleted94462%_
                        (begin
                          (vector-set!
                           _%table94439%_
                           _%deleted94462%_
                           _%key94435%_)
                          (vector-set!
                           _%table94439%_
                           (##fx+ _%deleted94462%_ '1)
                           _%value94436%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94434%_
                              (##fx+ (&raw-table-count _%tab94434%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94439%_
                           _%probe94458%_
                           _%key94435%_)
                          (vector-set!
                           _%table94439%_
                           (##fx+ _%probe94458%_ '1)
                           _%value94436%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94434%_
                              (##fx- (&raw-table-free _%tab94434%_) '1))
                             (&raw-table-count-set!
                              _%tab94434%_
                              (##fx+ (&raw-table-count _%tab94434%_) '1))))))
                    (if (eq? _%k94465%_ (macro-deleted-obj))
                        (_%loop94455%_
                         (let ((_%next-probe94472%_
                                (fx+ _%start94451%_
                                     _%i94460%_
                                     (fx* _%i94460%_ _%i94460%_))))
                           (##fxmodulo _%next-probe94472%_ _%size94445%_))
                         (##fx+ _%i94460%_ '1)
                         (let ((_%$e94475%_ _%deleted94462%_))
                           (if _%$e94475%_ _%$e94475%_ _%probe94458%_)))
                        (if (eq? _%key94435%_ _%k94465%_)
                            (let ()
                              (vector-set!
                               _%table94439%_
                               _%probe94458%_
                               _%key94435%_)
                              (vector-set!
                               _%table94439%_
                               (##fx+ _%probe94458%_ '1)
                               _%value94436%_))
                            (_%loop94455%_
                             (let ((_%next-probe94480%_
                                    (fx+ _%start94451%_
                                         _%i94460%_
                                         (fx* _%i94460%_ _%i94460%_))))
                               (##fxmodulo _%next-probe94480%_ _%size94445%_))
                             (##fx+ _%i94460%_ '1)
                             _%deleted94462%_))))))))))
    (define eq-table-update!
      (lambda (_%tab94429%_
               _%key94430%_
               _%eq-table-update!94431%_
               _%default94432%_)
        (if (##fx< (&raw-table-free _%tab94429%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94429%_))
                    '4))
            (__raw-table-rehash! _%tab94429%_)
            '#!void)
        (__eq-table-update!
         _%tab94429%_
         _%key94430%_
         _%eq-table-update!94431%_
         _%default94432%_)))
    (define __eq-table-update!
      (lambda (_%tab94379%_
               _%key94380%_
               _%eq-table-update!94381%_
               _%default94382%_)
        (let ((_%table94385%_ (&raw-table-table _%tab94379%_))
              (_%seed94386%_ (&raw-table-seed _%tab94379%_)))
          (let* ((_%h94388%_ (fxxor (eq-hash _%key94380%_) _%seed94386%_))
                 (_%size94391%_ (vector-length _%table94385%_))
                 (_%entries94394%_ (##fxquotient _%size94391%_ '2))
                 (_%start94397%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94388%_ _%entries94394%_)
                   '1)))
            (let _%loop94401%_ ((_%probe94404%_ _%start94397%_)
                                (_%i94406%_ '1)
                                (_%deleted94408%_ '#f))
              (let ((_%k94411%_ (vector-ref _%table94385%_ _%probe94404%_)))
                (if (eq? _%k94411%_ (macro-unused-obj))
                    (if _%deleted94408%_
                        (begin
                          (vector-set!
                           _%table94385%_
                           _%deleted94408%_
                           _%key94380%_)
                          (vector-set!
                           _%table94385%_
                           (##fx+ _%deleted94408%_ '1)
                           (_%eq-table-update!94381%_ _%default94382%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94379%_
                              (##fx+ (&raw-table-count _%tab94379%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94385%_
                           _%probe94404%_
                           _%key94380%_)
                          (vector-set!
                           _%table94385%_
                           (##fx+ _%probe94404%_ '1)
                           (_%eq-table-update!94381%_ _%default94382%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94379%_
                              (##fx- (&raw-table-free _%tab94379%_) '1))
                             (&raw-table-count-set!
                              _%tab94379%_
                              (##fx+ (&raw-table-count _%tab94379%_) '1))))))
                    (if (eq? _%k94411%_ (macro-deleted-obj))
                        (_%loop94401%_
                         (let ((_%next-probe94418%_
                                (fx+ _%start94397%_
                                     _%i94406%_
                                     (fx* _%i94406%_ _%i94406%_))))
                           (##fxmodulo _%next-probe94418%_ _%size94391%_))
                         (##fx+ _%i94406%_ '1)
                         (let ((_%$e94421%_ _%deleted94408%_))
                           (if _%$e94421%_ _%$e94421%_ _%probe94404%_)))
                        (if (eq? _%key94380%_ _%k94411%_)
                            (let ()
                              (vector-set!
                               _%table94385%_
                               _%probe94404%_
                               _%key94380%_)
                              (vector-set!
                               _%table94385%_
                               (##fx+ _%probe94404%_ '1)
                               (_%eq-table-update!94381%_
                                (vector-ref
                                 _%table94385%_
                                 (##fx+ _%probe94404%_ '1)))))
                            (_%loop94401%_
                             (let ((_%next-probe94426%_
                                    (fx+ _%start94397%_
                                         _%i94406%_
                                         (fx* _%i94406%_ _%i94406%_))))
                               (##fxmodulo _%next-probe94426%_ _%size94391%_))
                             (##fx+ _%i94406%_ '1)
                             _%deleted94408%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab94334%_ _%key94336%_)
        (let ((_%table94339%_ (&raw-table-table _%tab94334%_))
              (_%seed94341%_ (&raw-table-seed _%tab94334%_)))
          (let* ((_%h94344%_ (fxxor (eq-hash _%key94336%_) _%seed94341%_))
                 (_%size94347%_ (vector-length _%table94339%_))
                 (_%entries94350%_ (##fxquotient _%size94347%_ '2))
                 (_%start94353%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94344%_ _%entries94350%_)
                   '1)))
            (let _%loop94357%_ ((_%probe94360%_ _%start94353%_)
                                (_%i94362%_ '1))
              (let ((_%k94365%_ (vector-ref _%table94339%_ _%probe94360%_)))
                (if (eq? _%k94365%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94365%_ (macro-deleted-obj))
                        (_%loop94357%_
                         (let ((_%next-probe94370%_
                                (fx+ _%start94353%_
                                     _%i94362%_
                                     (fx* _%i94362%_ _%i94362%_))))
                           (##fxmodulo _%next-probe94370%_ _%size94347%_))
                         (##fx+ _%i94362%_ '1))
                        (if (eq? _%key94336%_ _%k94365%_)
                            (let ()
                              (vector-set!
                               _%table94339%_
                               _%probe94360%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94339%_
                               (##fx+ _%probe94360%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94334%_
                                  (##fx- (&raw-table-count _%tab94334%_)
                                         '1)))))
                            (_%loop94357%_
                             (let ((_%next-probe94376%_
                                    (fx+ _%start94353%_
                                         _%i94362%_
                                         (fx* _%i94362%_ _%i94362%_))))
                               (##fxmodulo _%next-probe94376%_ _%size94347%_))
                             (##fx+ _%i94362%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint94315%_ _%seed94317%_)
        (make-raw-table__% _%size-hint94315%_ eqv-hash eqv? _%seed94317%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint94323%_ '#f) (_%seed94325%_ '0))
          (make-eqv-table__% _%size-hint94323%_ _%seed94325%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint94327%_)
        (let ((_%seed94329%_ '0))
          (make-eqv-table__% _%size-hint94327%_ _%seed94329%_))))
    (define make-eqv-table
      (lambda _g94892_
        (let ((_g94891_ (##length _g94892_)))
          (cond ((##fx= _g94891_ 0) (apply make-eqv-table__0 _g94892_))
                ((##fx= _g94891_ 1) (apply make-eqv-table__1 _g94892_))
                ((##fx= _g94891_ 2) (apply make-eqv-table__% _g94892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g94892_))))))
    (define eqv-table-ref
      (lambda (_%tab94268%_ _%key94269%_ _%default94270%_)
        (let ((_%table94272%_ (&raw-table-table _%tab94268%_))
              (_%seed94273%_ (&raw-table-seed _%tab94268%_)))
          (let* ((_%h94275%_ (fxxor (eqv-hash _%key94269%_) _%seed94273%_))
                 (_%size94278%_ (vector-length _%table94272%_))
                 (_%entries94281%_ (##fxquotient _%size94278%_ '2))
                 (_%start94284%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94275%_ _%entries94281%_)
                   '1)))
            (let _%loop94288%_ ((_%probe94291%_ _%start94284%_)
                                (_%i94293%_ '1)
                                (_%deleted94295%_ '#f))
              (let ((_%k94298%_ (vector-ref _%table94272%_ _%probe94291%_)))
                (if (eq? _%k94298%_ (macro-unused-obj))
                    _%default94270%_
                    (if (eq? _%k94298%_ (macro-deleted-obj))
                        (_%loop94288%_
                         (let ((_%next-probe94303%_
                                (fx+ _%start94284%_
                                     _%i94293%_
                                     (fx* _%i94293%_ _%i94293%_))))
                           (##fxmodulo _%next-probe94303%_ _%size94278%_))
                         (##fx+ _%i94293%_ '1)
                         (let ((_%$e94306%_ _%deleted94295%_))
                           (if _%$e94306%_ _%$e94306%_ _%probe94291%_)))
                        (if (eqv? _%key94269%_ _%k94298%_)
                            (vector-ref
                             _%table94272%_
                             (##fx+ _%probe94291%_ '1))
                            (_%loop94288%_
                             (let ((_%next-probe94311%_
                                    (fx+ _%start94284%_
                                         _%i94293%_
                                         (fx* _%i94293%_ _%i94293%_))))
                               (##fxmodulo _%next-probe94311%_ _%size94278%_))
                             (##fx+ _%i94293%_ '1)
                             _%deleted94295%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab94264%_ _%key94265%_ _%value94266%_)
        (if (##fx< (&raw-table-free _%tab94264%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94264%_))
                    '4))
            (__raw-table-rehash! _%tab94264%_)
            '#!void)
        (__eqv-table-set! _%tab94264%_ _%key94265%_ _%value94266%_)))
    (define __eqv-table-set!
      (lambda (_%tab94215%_ _%key94216%_ _%value94217%_)
        (let ((_%table94220%_ (&raw-table-table _%tab94215%_))
              (_%seed94221%_ (&raw-table-seed _%tab94215%_)))
          (let* ((_%h94223%_ (fxxor (eqv-hash _%key94216%_) _%seed94221%_))
                 (_%size94226%_ (vector-length _%table94220%_))
                 (_%entries94229%_ (##fxquotient _%size94226%_ '2))
                 (_%start94232%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94223%_ _%entries94229%_)
                   '1)))
            (let _%loop94236%_ ((_%probe94239%_ _%start94232%_)
                                (_%i94241%_ '1)
                                (_%deleted94243%_ '#f))
              (let ((_%k94246%_ (vector-ref _%table94220%_ _%probe94239%_)))
                (if (eq? _%k94246%_ (macro-unused-obj))
                    (if _%deleted94243%_
                        (begin
                          (vector-set!
                           _%table94220%_
                           _%deleted94243%_
                           _%key94216%_)
                          (vector-set!
                           _%table94220%_
                           (##fx+ _%deleted94243%_ '1)
                           _%value94217%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94215%_
                              (##fx+ (&raw-table-count _%tab94215%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94220%_
                           _%probe94239%_
                           _%key94216%_)
                          (vector-set!
                           _%table94220%_
                           (##fx+ _%probe94239%_ '1)
                           _%value94217%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94215%_
                              (##fx- (&raw-table-free _%tab94215%_) '1))
                             (&raw-table-count-set!
                              _%tab94215%_
                              (##fx+ (&raw-table-count _%tab94215%_) '1))))))
                    (if (eq? _%k94246%_ (macro-deleted-obj))
                        (_%loop94236%_
                         (let ((_%next-probe94253%_
                                (fx+ _%start94232%_
                                     _%i94241%_
                                     (fx* _%i94241%_ _%i94241%_))))
                           (##fxmodulo _%next-probe94253%_ _%size94226%_))
                         (##fx+ _%i94241%_ '1)
                         (let ((_%$e94256%_ _%deleted94243%_))
                           (if _%$e94256%_ _%$e94256%_ _%probe94239%_)))
                        (if (eqv? _%key94216%_ _%k94246%_)
                            (let ()
                              (vector-set!
                               _%table94220%_
                               _%probe94239%_
                               _%key94216%_)
                              (vector-set!
                               _%table94220%_
                               (##fx+ _%probe94239%_ '1)
                               _%value94217%_))
                            (_%loop94236%_
                             (let ((_%next-probe94261%_
                                    (fx+ _%start94232%_
                                         _%i94241%_
                                         (fx* _%i94241%_ _%i94241%_))))
                               (##fxmodulo _%next-probe94261%_ _%size94226%_))
                             (##fx+ _%i94241%_ '1)
                             _%deleted94243%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab94210%_
               _%key94211%_
               _%eqv-table-update!94212%_
               _%default94213%_)
        (if (##fx< (&raw-table-free _%tab94210%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94210%_))
                    '4))
            (__raw-table-rehash! _%tab94210%_)
            '#!void)
        (__eqv-table-update!
         _%tab94210%_
         _%key94211%_
         _%eqv-table-update!94212%_
         _%default94213%_)))
    (define __eqv-table-update!
      (lambda (_%tab94160%_
               _%key94161%_
               _%eqv-table-update!94162%_
               _%default94163%_)
        (let ((_%table94166%_ (&raw-table-table _%tab94160%_))
              (_%seed94167%_ (&raw-table-seed _%tab94160%_)))
          (let* ((_%h94169%_ (fxxor (eqv-hash _%key94161%_) _%seed94167%_))
                 (_%size94172%_ (vector-length _%table94166%_))
                 (_%entries94175%_ (##fxquotient _%size94172%_ '2))
                 (_%start94178%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94169%_ _%entries94175%_)
                   '1)))
            (let _%loop94182%_ ((_%probe94185%_ _%start94178%_)
                                (_%i94187%_ '1)
                                (_%deleted94189%_ '#f))
              (let ((_%k94192%_ (vector-ref _%table94166%_ _%probe94185%_)))
                (if (eq? _%k94192%_ (macro-unused-obj))
                    (if _%deleted94189%_
                        (begin
                          (vector-set!
                           _%table94166%_
                           _%deleted94189%_
                           _%key94161%_)
                          (vector-set!
                           _%table94166%_
                           (##fx+ _%deleted94189%_ '1)
                           (_%eqv-table-update!94162%_ _%default94163%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94160%_
                              (##fx+ (&raw-table-count _%tab94160%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94166%_
                           _%probe94185%_
                           _%key94161%_)
                          (vector-set!
                           _%table94166%_
                           (##fx+ _%probe94185%_ '1)
                           (_%eqv-table-update!94162%_ _%default94163%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94160%_
                              (##fx- (&raw-table-free _%tab94160%_) '1))
                             (&raw-table-count-set!
                              _%tab94160%_
                              (##fx+ (&raw-table-count _%tab94160%_) '1))))))
                    (if (eq? _%k94192%_ (macro-deleted-obj))
                        (_%loop94182%_
                         (let ((_%next-probe94199%_
                                (fx+ _%start94178%_
                                     _%i94187%_
                                     (fx* _%i94187%_ _%i94187%_))))
                           (##fxmodulo _%next-probe94199%_ _%size94172%_))
                         (##fx+ _%i94187%_ '1)
                         (let ((_%$e94202%_ _%deleted94189%_))
                           (if _%$e94202%_ _%$e94202%_ _%probe94185%_)))
                        (if (eqv? _%key94161%_ _%k94192%_)
                            (let ()
                              (vector-set!
                               _%table94166%_
                               _%probe94185%_
                               _%key94161%_)
                              (vector-set!
                               _%table94166%_
                               (##fx+ _%probe94185%_ '1)
                               (_%eqv-table-update!94162%_
                                (vector-ref
                                 _%table94166%_
                                 (##fx+ _%probe94185%_ '1)))))
                            (_%loop94182%_
                             (let ((_%next-probe94207%_
                                    (fx+ _%start94178%_
                                         _%i94187%_
                                         (fx* _%i94187%_ _%i94187%_))))
                               (##fxmodulo _%next-probe94207%_ _%size94172%_))
                             (##fx+ _%i94187%_ '1)
                             _%deleted94189%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab94115%_ _%key94117%_)
        (let ((_%table94120%_ (&raw-table-table _%tab94115%_))
              (_%seed94122%_ (&raw-table-seed _%tab94115%_)))
          (let* ((_%h94125%_ (fxxor (eqv-hash _%key94117%_) _%seed94122%_))
                 (_%size94128%_ (vector-length _%table94120%_))
                 (_%entries94131%_ (##fxquotient _%size94128%_ '2))
                 (_%start94134%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94125%_ _%entries94131%_)
                   '1)))
            (let _%loop94138%_ ((_%probe94141%_ _%start94134%_)
                                (_%i94143%_ '1))
              (let ((_%k94146%_ (vector-ref _%table94120%_ _%probe94141%_)))
                (if (eq? _%k94146%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94146%_ (macro-deleted-obj))
                        (_%loop94138%_
                         (let ((_%next-probe94151%_
                                (fx+ _%start94134%_
                                     _%i94143%_
                                     (fx* _%i94143%_ _%i94143%_))))
                           (##fxmodulo _%next-probe94151%_ _%size94128%_))
                         (##fx+ _%i94143%_ '1))
                        (if (eqv? _%key94117%_ _%k94146%_)
                            (let ()
                              (vector-set!
                               _%table94120%_
                               _%probe94141%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94120%_
                               (##fx+ _%probe94141%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94115%_
                                  (##fx- (&raw-table-count _%tab94115%_)
                                         '1)))))
                            (_%loop94138%_
                             (let ((_%next-probe94157%_
                                    (fx+ _%start94134%_
                                         _%i94143%_
                                         (fx* _%i94143%_ _%i94143%_))))
                               (##fxmodulo _%next-probe94157%_ _%size94128%_))
                             (##fx+ _%i94143%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint94096%_ _%seed94098%_)
        (make-raw-table__%
         _%size-hint94096%_
         symbolic-hash
         eq?
         _%seed94098%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint94104%_ '#f) (_%seed94106%_ '0))
          (make-symbolic-table__% _%size-hint94104%_ _%seed94106%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint94108%_)
        (let ((_%seed94110%_ '0))
          (make-symbolic-table__% _%size-hint94108%_ _%seed94110%_))))
    (define make-symbolic-table
      (lambda _g94894_
        (let ((_g94893_ (##length _g94894_)))
          (cond ((##fx= _g94893_ 0) (apply make-symbolic-table__0 _g94894_))
                ((##fx= _g94893_ 1) (apply make-symbolic-table__1 _g94894_))
                ((##fx= _g94893_ 2) (apply make-symbolic-table__% _g94894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g94894_))))))
    (define symbolic-table-ref
      (lambda (_%tab94049%_ _%key94050%_ _%default94051%_)
        (let ((_%table94053%_ (&raw-table-table _%tab94049%_))
              (_%seed94054%_ (&raw-table-seed _%tab94049%_)))
          (let* ((_%h94056%_
                  (fxxor (symbolic-hash _%key94050%_) _%seed94054%_))
                 (_%size94059%_ (vector-length _%table94053%_))
                 (_%entries94062%_ (##fxquotient _%size94059%_ '2))
                 (_%start94065%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94056%_ _%entries94062%_)
                   '1)))
            (let _%loop94069%_ ((_%probe94072%_ _%start94065%_)
                                (_%i94074%_ '1)
                                (_%deleted94076%_ '#f))
              (let ((_%k94079%_ (vector-ref _%table94053%_ _%probe94072%_)))
                (if (eq? _%k94079%_ (macro-unused-obj))
                    _%default94051%_
                    (if (eq? _%k94079%_ (macro-deleted-obj))
                        (_%loop94069%_
                         (let ((_%next-probe94084%_
                                (fx+ _%start94065%_
                                     _%i94074%_
                                     (fx* _%i94074%_ _%i94074%_))))
                           (##fxmodulo _%next-probe94084%_ _%size94059%_))
                         (##fx+ _%i94074%_ '1)
                         (let ((_%$e94087%_ _%deleted94076%_))
                           (if _%$e94087%_ _%$e94087%_ _%probe94072%_)))
                        (if (eq? _%key94050%_ _%k94079%_)
                            (vector-ref
                             _%table94053%_
                             (##fx+ _%probe94072%_ '1))
                            (_%loop94069%_
                             (let ((_%next-probe94092%_
                                    (fx+ _%start94065%_
                                         _%i94074%_
                                         (fx* _%i94074%_ _%i94074%_))))
                               (##fxmodulo _%next-probe94092%_ _%size94059%_))
                             (##fx+ _%i94074%_ '1)
                             _%deleted94076%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab94045%_ _%key94046%_ _%value94047%_)
        (if (##fx< (&raw-table-free _%tab94045%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94045%_))
                    '4))
            (__raw-table-rehash! _%tab94045%_)
            '#!void)
        (__symbolic-table-set! _%tab94045%_ _%key94046%_ _%value94047%_)))
    (define __symbolic-table-set!
      (lambda (_%tab93996%_ _%key93997%_ _%value93998%_)
        (let ((_%table94001%_ (&raw-table-table _%tab93996%_))
              (_%seed94002%_ (&raw-table-seed _%tab93996%_)))
          (let* ((_%h94004%_
                  (fxxor (symbolic-hash _%key93997%_) _%seed94002%_))
                 (_%size94007%_ (vector-length _%table94001%_))
                 (_%entries94010%_ (##fxquotient _%size94007%_ '2))
                 (_%start94013%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94004%_ _%entries94010%_)
                   '1)))
            (let _%loop94017%_ ((_%probe94020%_ _%start94013%_)
                                (_%i94022%_ '1)
                                (_%deleted94024%_ '#f))
              (let ((_%k94027%_ (vector-ref _%table94001%_ _%probe94020%_)))
                (if (eq? _%k94027%_ (macro-unused-obj))
                    (if _%deleted94024%_
                        (begin
                          (vector-set!
                           _%table94001%_
                           _%deleted94024%_
                           _%key93997%_)
                          (vector-set!
                           _%table94001%_
                           (##fx+ _%deleted94024%_ '1)
                           _%value93998%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93996%_
                              (##fx+ (&raw-table-count _%tab93996%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94001%_
                           _%probe94020%_
                           _%key93997%_)
                          (vector-set!
                           _%table94001%_
                           (##fx+ _%probe94020%_ '1)
                           _%value93998%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93996%_
                              (##fx- (&raw-table-free _%tab93996%_) '1))
                             (&raw-table-count-set!
                              _%tab93996%_
                              (##fx+ (&raw-table-count _%tab93996%_) '1))))))
                    (if (eq? _%k94027%_ (macro-deleted-obj))
                        (_%loop94017%_
                         (let ((_%next-probe94034%_
                                (fx+ _%start94013%_
                                     _%i94022%_
                                     (fx* _%i94022%_ _%i94022%_))))
                           (##fxmodulo _%next-probe94034%_ _%size94007%_))
                         (##fx+ _%i94022%_ '1)
                         (let ((_%$e94037%_ _%deleted94024%_))
                           (if _%$e94037%_ _%$e94037%_ _%probe94020%_)))
                        (if (eq? _%key93997%_ _%k94027%_)
                            (let ()
                              (vector-set!
                               _%table94001%_
                               _%probe94020%_
                               _%key93997%_)
                              (vector-set!
                               _%table94001%_
                               (##fx+ _%probe94020%_ '1)
                               _%value93998%_))
                            (_%loop94017%_
                             (let ((_%next-probe94042%_
                                    (fx+ _%start94013%_
                                         _%i94022%_
                                         (fx* _%i94022%_ _%i94022%_))))
                               (##fxmodulo _%next-probe94042%_ _%size94007%_))
                             (##fx+ _%i94022%_ '1)
                             _%deleted94024%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab93991%_
               _%key93992%_
               _%symbolic-table-update!93993%_
               _%default93994%_)
        (if (##fx< (&raw-table-free _%tab93991%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93991%_))
                    '4))
            (__raw-table-rehash! _%tab93991%_)
            '#!void)
        (__symbolic-table-update!
         _%tab93991%_
         _%key93992%_
         _%symbolic-table-update!93993%_
         _%default93994%_)))
    (define __symbolic-table-update!
      (lambda (_%tab93941%_
               _%key93942%_
               _%symbolic-table-update!93943%_
               _%default93944%_)
        (let ((_%table93947%_ (&raw-table-table _%tab93941%_))
              (_%seed93948%_ (&raw-table-seed _%tab93941%_)))
          (let* ((_%h93950%_
                  (fxxor (symbolic-hash _%key93942%_) _%seed93948%_))
                 (_%size93953%_ (vector-length _%table93947%_))
                 (_%entries93956%_ (##fxquotient _%size93953%_ '2))
                 (_%start93959%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93950%_ _%entries93956%_)
                   '1)))
            (let _%loop93963%_ ((_%probe93966%_ _%start93959%_)
                                (_%i93968%_ '1)
                                (_%deleted93970%_ '#f))
              (let ((_%k93973%_ (vector-ref _%table93947%_ _%probe93966%_)))
                (if (eq? _%k93973%_ (macro-unused-obj))
                    (if _%deleted93970%_
                        (begin
                          (vector-set!
                           _%table93947%_
                           _%deleted93970%_
                           _%key93942%_)
                          (vector-set!
                           _%table93947%_
                           (##fx+ _%deleted93970%_ '1)
                           (_%symbolic-table-update!93943%_ _%default93944%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93941%_
                              (##fx+ (&raw-table-count _%tab93941%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93947%_
                           _%probe93966%_
                           _%key93942%_)
                          (vector-set!
                           _%table93947%_
                           (##fx+ _%probe93966%_ '1)
                           (_%symbolic-table-update!93943%_ _%default93944%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93941%_
                              (##fx- (&raw-table-free _%tab93941%_) '1))
                             (&raw-table-count-set!
                              _%tab93941%_
                              (##fx+ (&raw-table-count _%tab93941%_) '1))))))
                    (if (eq? _%k93973%_ (macro-deleted-obj))
                        (_%loop93963%_
                         (let ((_%next-probe93980%_
                                (fx+ _%start93959%_
                                     _%i93968%_
                                     (fx* _%i93968%_ _%i93968%_))))
                           (##fxmodulo _%next-probe93980%_ _%size93953%_))
                         (##fx+ _%i93968%_ '1)
                         (let ((_%$e93983%_ _%deleted93970%_))
                           (if _%$e93983%_ _%$e93983%_ _%probe93966%_)))
                        (if (eq? _%key93942%_ _%k93973%_)
                            (let ()
                              (vector-set!
                               _%table93947%_
                               _%probe93966%_
                               _%key93942%_)
                              (vector-set!
                               _%table93947%_
                               (##fx+ _%probe93966%_ '1)
                               (_%symbolic-table-update!93943%_
                                (vector-ref
                                 _%table93947%_
                                 (##fx+ _%probe93966%_ '1)))))
                            (_%loop93963%_
                             (let ((_%next-probe93988%_
                                    (fx+ _%start93959%_
                                         _%i93968%_
                                         (fx* _%i93968%_ _%i93968%_))))
                               (##fxmodulo _%next-probe93988%_ _%size93953%_))
                             (##fx+ _%i93968%_ '1)
                             _%deleted93970%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab93896%_ _%key93898%_)
        (let ((_%table93901%_ (&raw-table-table _%tab93896%_))
              (_%seed93903%_ (&raw-table-seed _%tab93896%_)))
          (let* ((_%h93906%_
                  (fxxor (symbolic-hash _%key93898%_) _%seed93903%_))
                 (_%size93909%_ (vector-length _%table93901%_))
                 (_%entries93912%_ (##fxquotient _%size93909%_ '2))
                 (_%start93915%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93906%_ _%entries93912%_)
                   '1)))
            (let _%loop93919%_ ((_%probe93922%_ _%start93915%_)
                                (_%i93924%_ '1))
              (let ((_%k93927%_ (vector-ref _%table93901%_ _%probe93922%_)))
                (if (eq? _%k93927%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93927%_ (macro-deleted-obj))
                        (_%loop93919%_
                         (let ((_%next-probe93932%_
                                (fx+ _%start93915%_
                                     _%i93924%_
                                     (fx* _%i93924%_ _%i93924%_))))
                           (##fxmodulo _%next-probe93932%_ _%size93909%_))
                         (##fx+ _%i93924%_ '1))
                        (if (eq? _%key93898%_ _%k93927%_)
                            (let ()
                              (vector-set!
                               _%table93901%_
                               _%probe93922%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93901%_
                               (##fx+ _%probe93922%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93896%_
                                  (##fx- (&raw-table-count _%tab93896%_)
                                         '1)))))
                            (_%loop93919%_
                             (let ((_%next-probe93938%_
                                    (fx+ _%start93915%_
                                         _%i93924%_
                                         (fx* _%i93924%_ _%i93924%_))))
                               (##fxmodulo _%next-probe93938%_ _%size93909%_))
                             (##fx+ _%i93924%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint93877%_ _%seed93879%_)
        (make-raw-table__%
         _%size-hint93877%_
         string-hash
         ##string=?
         _%seed93879%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint93885%_ '#f) (_%seed93887%_ '0))
          (make-string-table__% _%size-hint93885%_ _%seed93887%_))))
    (define make-string-table__1
      (lambda (_%size-hint93889%_)
        (let ((_%seed93891%_ '0))
          (make-string-table__% _%size-hint93889%_ _%seed93891%_))))
    (define make-string-table
      (lambda _g94896_
        (let ((_g94895_ (##length _g94896_)))
          (cond ((##fx= _g94895_ 0) (apply make-string-table__0 _g94896_))
                ((##fx= _g94895_ 1) (apply make-string-table__1 _g94896_))
                ((##fx= _g94895_ 2) (apply make-string-table__% _g94896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g94896_))))))
    (define string-table-ref
      (lambda (_%tab93830%_ _%key93831%_ _%default93832%_)
        (let ((_%table93834%_ (&raw-table-table _%tab93830%_))
              (_%seed93835%_ (&raw-table-seed _%tab93830%_)))
          (let* ((_%h93837%_
                  (fxxor (##string=?-hash _%key93831%_) _%seed93835%_))
                 (_%size93840%_ (vector-length _%table93834%_))
                 (_%entries93843%_ (##fxquotient _%size93840%_ '2))
                 (_%start93846%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93837%_ _%entries93843%_)
                   '1)))
            (let _%loop93850%_ ((_%probe93853%_ _%start93846%_)
                                (_%i93855%_ '1)
                                (_%deleted93857%_ '#f))
              (let ((_%k93860%_ (vector-ref _%table93834%_ _%probe93853%_)))
                (if (eq? _%k93860%_ (macro-unused-obj))
                    _%default93832%_
                    (if (eq? _%k93860%_ (macro-deleted-obj))
                        (_%loop93850%_
                         (let ((_%next-probe93865%_
                                (fx+ _%start93846%_
                                     _%i93855%_
                                     (fx* _%i93855%_ _%i93855%_))))
                           (##fxmodulo _%next-probe93865%_ _%size93840%_))
                         (##fx+ _%i93855%_ '1)
                         (let ((_%$e93868%_ _%deleted93857%_))
                           (if _%$e93868%_ _%$e93868%_ _%probe93853%_)))
                        (if (##string=? _%key93831%_ _%k93860%_)
                            (vector-ref
                             _%table93834%_
                             (##fx+ _%probe93853%_ '1))
                            (_%loop93850%_
                             (let ((_%next-probe93873%_
                                    (fx+ _%start93846%_
                                         _%i93855%_
                                         (fx* _%i93855%_ _%i93855%_))))
                               (##fxmodulo _%next-probe93873%_ _%size93840%_))
                             (##fx+ _%i93855%_ '1)
                             _%deleted93857%_))))))))))
    (define string-table-set!
      (lambda (_%tab93826%_ _%key93827%_ _%value93828%_)
        (if (##fx< (&raw-table-free _%tab93826%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93826%_))
                    '4))
            (__raw-table-rehash! _%tab93826%_)
            '#!void)
        (__string-table-set! _%tab93826%_ _%key93827%_ _%value93828%_)))
    (define __string-table-set!
      (lambda (_%tab93777%_ _%key93778%_ _%value93779%_)
        (let ((_%table93782%_ (&raw-table-table _%tab93777%_))
              (_%seed93783%_ (&raw-table-seed _%tab93777%_)))
          (let* ((_%h93785%_
                  (fxxor (##string=?-hash _%key93778%_) _%seed93783%_))
                 (_%size93788%_ (vector-length _%table93782%_))
                 (_%entries93791%_ (##fxquotient _%size93788%_ '2))
                 (_%start93794%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93785%_ _%entries93791%_)
                   '1)))
            (let _%loop93798%_ ((_%probe93801%_ _%start93794%_)
                                (_%i93803%_ '1)
                                (_%deleted93805%_ '#f))
              (let ((_%k93808%_ (vector-ref _%table93782%_ _%probe93801%_)))
                (if (eq? _%k93808%_ (macro-unused-obj))
                    (if _%deleted93805%_
                        (begin
                          (vector-set!
                           _%table93782%_
                           _%deleted93805%_
                           _%key93778%_)
                          (vector-set!
                           _%table93782%_
                           (##fx+ _%deleted93805%_ '1)
                           _%value93779%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93777%_
                              (##fx+ (&raw-table-count _%tab93777%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93782%_
                           _%probe93801%_
                           _%key93778%_)
                          (vector-set!
                           _%table93782%_
                           (##fx+ _%probe93801%_ '1)
                           _%value93779%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93777%_
                              (##fx- (&raw-table-free _%tab93777%_) '1))
                             (&raw-table-count-set!
                              _%tab93777%_
                              (##fx+ (&raw-table-count _%tab93777%_) '1))))))
                    (if (eq? _%k93808%_ (macro-deleted-obj))
                        (_%loop93798%_
                         (let ((_%next-probe93815%_
                                (fx+ _%start93794%_
                                     _%i93803%_
                                     (fx* _%i93803%_ _%i93803%_))))
                           (##fxmodulo _%next-probe93815%_ _%size93788%_))
                         (##fx+ _%i93803%_ '1)
                         (let ((_%$e93818%_ _%deleted93805%_))
                           (if _%$e93818%_ _%$e93818%_ _%probe93801%_)))
                        (if (##string=? _%key93778%_ _%k93808%_)
                            (let ()
                              (vector-set!
                               _%table93782%_
                               _%probe93801%_
                               _%key93778%_)
                              (vector-set!
                               _%table93782%_
                               (##fx+ _%probe93801%_ '1)
                               _%value93779%_))
                            (_%loop93798%_
                             (let ((_%next-probe93823%_
                                    (fx+ _%start93794%_
                                         _%i93803%_
                                         (fx* _%i93803%_ _%i93803%_))))
                               (##fxmodulo _%next-probe93823%_ _%size93788%_))
                             (##fx+ _%i93803%_ '1)
                             _%deleted93805%_))))))))))
    (define string-table-update!
      (lambda (_%tab93772%_
               _%key93773%_
               _%string-table-update!93774%_
               _%default93775%_)
        (if (##fx< (&raw-table-free _%tab93772%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93772%_))
                    '4))
            (__raw-table-rehash! _%tab93772%_)
            '#!void)
        (__string-table-update!
         _%tab93772%_
         _%key93773%_
         _%string-table-update!93774%_
         _%default93775%_)))
    (define __string-table-update!
      (lambda (_%tab93722%_
               _%key93723%_
               _%string-table-update!93724%_
               _%default93725%_)
        (let ((_%table93728%_ (&raw-table-table _%tab93722%_))
              (_%seed93729%_ (&raw-table-seed _%tab93722%_)))
          (let* ((_%h93731%_
                  (fxxor (##string=?-hash _%key93723%_) _%seed93729%_))
                 (_%size93734%_ (vector-length _%table93728%_))
                 (_%entries93737%_ (##fxquotient _%size93734%_ '2))
                 (_%start93740%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93731%_ _%entries93737%_)
                   '1)))
            (let _%loop93744%_ ((_%probe93747%_ _%start93740%_)
                                (_%i93749%_ '1)
                                (_%deleted93751%_ '#f))
              (let ((_%k93754%_ (vector-ref _%table93728%_ _%probe93747%_)))
                (if (eq? _%k93754%_ (macro-unused-obj))
                    (if _%deleted93751%_
                        (begin
                          (vector-set!
                           _%table93728%_
                           _%deleted93751%_
                           _%key93723%_)
                          (vector-set!
                           _%table93728%_
                           (##fx+ _%deleted93751%_ '1)
                           (_%string-table-update!93724%_ _%default93725%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93722%_
                              (##fx+ (&raw-table-count _%tab93722%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93728%_
                           _%probe93747%_
                           _%key93723%_)
                          (vector-set!
                           _%table93728%_
                           (##fx+ _%probe93747%_ '1)
                           (_%string-table-update!93724%_ _%default93725%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93722%_
                              (##fx- (&raw-table-free _%tab93722%_) '1))
                             (&raw-table-count-set!
                              _%tab93722%_
                              (##fx+ (&raw-table-count _%tab93722%_) '1))))))
                    (if (eq? _%k93754%_ (macro-deleted-obj))
                        (_%loop93744%_
                         (let ((_%next-probe93761%_
                                (fx+ _%start93740%_
                                     _%i93749%_
                                     (fx* _%i93749%_ _%i93749%_))))
                           (##fxmodulo _%next-probe93761%_ _%size93734%_))
                         (##fx+ _%i93749%_ '1)
                         (let ((_%$e93764%_ _%deleted93751%_))
                           (if _%$e93764%_ _%$e93764%_ _%probe93747%_)))
                        (if (##string=? _%key93723%_ _%k93754%_)
                            (let ()
                              (vector-set!
                               _%table93728%_
                               _%probe93747%_
                               _%key93723%_)
                              (vector-set!
                               _%table93728%_
                               (##fx+ _%probe93747%_ '1)
                               (_%string-table-update!93724%_
                                (vector-ref
                                 _%table93728%_
                                 (##fx+ _%probe93747%_ '1)))))
                            (_%loop93744%_
                             (let ((_%next-probe93769%_
                                    (fx+ _%start93740%_
                                         _%i93749%_
                                         (fx* _%i93749%_ _%i93749%_))))
                               (##fxmodulo _%next-probe93769%_ _%size93734%_))
                             (##fx+ _%i93749%_ '1)
                             _%deleted93751%_))))))))))
    (define string-table-delete!
      (lambda (_%tab93677%_ _%key93679%_)
        (let ((_%table93682%_ (&raw-table-table _%tab93677%_))
              (_%seed93684%_ (&raw-table-seed _%tab93677%_)))
          (let* ((_%h93687%_
                  (fxxor (##string=?-hash _%key93679%_) _%seed93684%_))
                 (_%size93690%_ (vector-length _%table93682%_))
                 (_%entries93693%_ (##fxquotient _%size93690%_ '2))
                 (_%start93696%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93687%_ _%entries93693%_)
                   '1)))
            (let _%loop93700%_ ((_%probe93703%_ _%start93696%_)
                                (_%i93705%_ '1))
              (let ((_%k93708%_ (vector-ref _%table93682%_ _%probe93703%_)))
                (if (eq? _%k93708%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93708%_ (macro-deleted-obj))
                        (_%loop93700%_
                         (let ((_%next-probe93713%_
                                (fx+ _%start93696%_
                                     _%i93705%_
                                     (fx* _%i93705%_ _%i93705%_))))
                           (##fxmodulo _%next-probe93713%_ _%size93690%_))
                         (##fx+ _%i93705%_ '1))
                        (if (##string=? _%key93679%_ _%k93708%_)
                            (let ()
                              (vector-set!
                               _%table93682%_
                               _%probe93703%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93682%_
                               (##fx+ _%probe93703%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93677%_
                                  (##fx- (&raw-table-count _%tab93677%_)
                                         '1)))))
                            (_%loop93700%_
                             (let ((_%next-probe93719%_
                                    (fx+ _%start93696%_
                                         _%i93705%_
                                         (fx* _%i93705%_ _%i93705%_))))
                               (##fxmodulo _%next-probe93719%_ _%size93690%_))
                             (##fx+ _%i93705%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint93658%_ _%seed93660%_)
        (make-raw-table__%
         _%size-hint93658%_
         immediate-hash
         eq?
         _%seed93660%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint93666%_ '#f) (_%seed93668%_ '0))
          (make-immediate-table__% _%size-hint93666%_ _%seed93668%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint93670%_)
        (let ((_%seed93672%_ '0))
          (make-immediate-table__% _%size-hint93670%_ _%seed93672%_))))
    (define make-immediate-table
      (lambda _g94898_
        (let ((_g94897_ (##length _g94898_)))
          (cond ((##fx= _g94897_ 0) (apply make-immediate-table__0 _g94898_))
                ((##fx= _g94897_ 1) (apply make-immediate-table__1 _g94898_))
                ((##fx= _g94897_ 2) (apply make-immediate-table__% _g94898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g94898_))))))
    (define immediate-table-ref
      (lambda (_%tab93611%_ _%key93612%_ _%default93613%_)
        (let ((_%table93615%_ (&raw-table-table _%tab93611%_))
              (_%seed93616%_ (&raw-table-seed _%tab93611%_)))
          (let* ((_%h93618%_
                  (fxxor (immediate-hash _%key93612%_) _%seed93616%_))
                 (_%size93621%_ (vector-length _%table93615%_))
                 (_%entries93624%_ (##fxquotient _%size93621%_ '2))
                 (_%start93627%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93618%_ _%entries93624%_)
                   '1)))
            (let _%loop93631%_ ((_%probe93634%_ _%start93627%_)
                                (_%i93636%_ '1)
                                (_%deleted93638%_ '#f))
              (let ((_%k93641%_ (vector-ref _%table93615%_ _%probe93634%_)))
                (if (eq? _%k93641%_ (macro-unused-obj))
                    _%default93613%_
                    (if (eq? _%k93641%_ (macro-deleted-obj))
                        (_%loop93631%_
                         (let ((_%next-probe93646%_
                                (fx+ _%start93627%_
                                     _%i93636%_
                                     (fx* _%i93636%_ _%i93636%_))))
                           (##fxmodulo _%next-probe93646%_ _%size93621%_))
                         (##fx+ _%i93636%_ '1)
                         (let ((_%$e93649%_ _%deleted93638%_))
                           (if _%$e93649%_ _%$e93649%_ _%probe93634%_)))
                        (if (eq? _%key93612%_ _%k93641%_)
                            (vector-ref
                             _%table93615%_
                             (##fx+ _%probe93634%_ '1))
                            (_%loop93631%_
                             (let ((_%next-probe93654%_
                                    (fx+ _%start93627%_
                                         _%i93636%_
                                         (fx* _%i93636%_ _%i93636%_))))
                               (##fxmodulo _%next-probe93654%_ _%size93621%_))
                             (##fx+ _%i93636%_ '1)
                             _%deleted93638%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab93607%_ _%key93608%_ _%value93609%_)
        (if (##fx< (&raw-table-free _%tab93607%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93607%_))
                    '4))
            (__raw-table-rehash! _%tab93607%_)
            '#!void)
        (__immediate-table-set! _%tab93607%_ _%key93608%_ _%value93609%_)))
    (define __immediate-table-set!
      (lambda (_%tab93558%_ _%key93559%_ _%value93560%_)
        (let ((_%table93563%_ (&raw-table-table _%tab93558%_))
              (_%seed93564%_ (&raw-table-seed _%tab93558%_)))
          (let* ((_%h93566%_
                  (fxxor (immediate-hash _%key93559%_) _%seed93564%_))
                 (_%size93569%_ (vector-length _%table93563%_))
                 (_%entries93572%_ (##fxquotient _%size93569%_ '2))
                 (_%start93575%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93566%_ _%entries93572%_)
                   '1)))
            (let _%loop93579%_ ((_%probe93582%_ _%start93575%_)
                                (_%i93584%_ '1)
                                (_%deleted93586%_ '#f))
              (let ((_%k93589%_ (vector-ref _%table93563%_ _%probe93582%_)))
                (if (eq? _%k93589%_ (macro-unused-obj))
                    (if _%deleted93586%_
                        (begin
                          (vector-set!
                           _%table93563%_
                           _%deleted93586%_
                           _%key93559%_)
                          (vector-set!
                           _%table93563%_
                           (##fx+ _%deleted93586%_ '1)
                           _%value93560%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93558%_
                              (##fx+ (&raw-table-count _%tab93558%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93563%_
                           _%probe93582%_
                           _%key93559%_)
                          (vector-set!
                           _%table93563%_
                           (##fx+ _%probe93582%_ '1)
                           _%value93560%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93558%_
                              (##fx- (&raw-table-free _%tab93558%_) '1))
                             (&raw-table-count-set!
                              _%tab93558%_
                              (##fx+ (&raw-table-count _%tab93558%_) '1))))))
                    (if (eq? _%k93589%_ (macro-deleted-obj))
                        (_%loop93579%_
                         (let ((_%next-probe93596%_
                                (fx+ _%start93575%_
                                     _%i93584%_
                                     (fx* _%i93584%_ _%i93584%_))))
                           (##fxmodulo _%next-probe93596%_ _%size93569%_))
                         (##fx+ _%i93584%_ '1)
                         (let ((_%$e93599%_ _%deleted93586%_))
                           (if _%$e93599%_ _%$e93599%_ _%probe93582%_)))
                        (if (eq? _%key93559%_ _%k93589%_)
                            (let ()
                              (vector-set!
                               _%table93563%_
                               _%probe93582%_
                               _%key93559%_)
                              (vector-set!
                               _%table93563%_
                               (##fx+ _%probe93582%_ '1)
                               _%value93560%_))
                            (_%loop93579%_
                             (let ((_%next-probe93604%_
                                    (fx+ _%start93575%_
                                         _%i93584%_
                                         (fx* _%i93584%_ _%i93584%_))))
                               (##fxmodulo _%next-probe93604%_ _%size93569%_))
                             (##fx+ _%i93584%_ '1)
                             _%deleted93586%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab93553%_
               _%key93554%_
               _%immediate-table-update!93555%_
               _%default93556%_)
        (if (##fx< (&raw-table-free _%tab93553%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93553%_))
                    '4))
            (__raw-table-rehash! _%tab93553%_)
            '#!void)
        (__immediate-table-update!
         _%tab93553%_
         _%key93554%_
         _%immediate-table-update!93555%_
         _%default93556%_)))
    (define __immediate-table-update!
      (lambda (_%tab93503%_
               _%key93504%_
               _%immediate-table-update!93505%_
               _%default93506%_)
        (let ((_%table93509%_ (&raw-table-table _%tab93503%_))
              (_%seed93510%_ (&raw-table-seed _%tab93503%_)))
          (let* ((_%h93512%_
                  (fxxor (immediate-hash _%key93504%_) _%seed93510%_))
                 (_%size93515%_ (vector-length _%table93509%_))
                 (_%entries93518%_ (##fxquotient _%size93515%_ '2))
                 (_%start93521%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93512%_ _%entries93518%_)
                   '1)))
            (let _%loop93525%_ ((_%probe93528%_ _%start93521%_)
                                (_%i93530%_ '1)
                                (_%deleted93532%_ '#f))
              (let ((_%k93535%_ (vector-ref _%table93509%_ _%probe93528%_)))
                (if (eq? _%k93535%_ (macro-unused-obj))
                    (if _%deleted93532%_
                        (begin
                          (vector-set!
                           _%table93509%_
                           _%deleted93532%_
                           _%key93504%_)
                          (vector-set!
                           _%table93509%_
                           (##fx+ _%deleted93532%_ '1)
                           (_%immediate-table-update!93505%_ _%default93506%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93503%_
                              (##fx+ (&raw-table-count _%tab93503%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93509%_
                           _%probe93528%_
                           _%key93504%_)
                          (vector-set!
                           _%table93509%_
                           (##fx+ _%probe93528%_ '1)
                           (_%immediate-table-update!93505%_ _%default93506%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93503%_
                              (##fx- (&raw-table-free _%tab93503%_) '1))
                             (&raw-table-count-set!
                              _%tab93503%_
                              (##fx+ (&raw-table-count _%tab93503%_) '1))))))
                    (if (eq? _%k93535%_ (macro-deleted-obj))
                        (_%loop93525%_
                         (let ((_%next-probe93542%_
                                (fx+ _%start93521%_
                                     _%i93530%_
                                     (fx* _%i93530%_ _%i93530%_))))
                           (##fxmodulo _%next-probe93542%_ _%size93515%_))
                         (##fx+ _%i93530%_ '1)
                         (let ((_%$e93545%_ _%deleted93532%_))
                           (if _%$e93545%_ _%$e93545%_ _%probe93528%_)))
                        (if (eq? _%key93504%_ _%k93535%_)
                            (let ()
                              (vector-set!
                               _%table93509%_
                               _%probe93528%_
                               _%key93504%_)
                              (vector-set!
                               _%table93509%_
                               (##fx+ _%probe93528%_ '1)
                               (_%immediate-table-update!93505%_
                                (vector-ref
                                 _%table93509%_
                                 (##fx+ _%probe93528%_ '1)))))
                            (_%loop93525%_
                             (let ((_%next-probe93550%_
                                    (fx+ _%start93521%_
                                         _%i93530%_
                                         (fx* _%i93530%_ _%i93530%_))))
                               (##fxmodulo _%next-probe93550%_ _%size93515%_))
                             (##fx+ _%i93530%_ '1)
                             _%deleted93532%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab93458%_ _%key93460%_)
        (let ((_%table93463%_ (&raw-table-table _%tab93458%_))
              (_%seed93465%_ (&raw-table-seed _%tab93458%_)))
          (let* ((_%h93468%_
                  (fxxor (immediate-hash _%key93460%_) _%seed93465%_))
                 (_%size93471%_ (vector-length _%table93463%_))
                 (_%entries93474%_ (##fxquotient _%size93471%_ '2))
                 (_%start93477%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93468%_ _%entries93474%_)
                   '1)))
            (let _%loop93481%_ ((_%probe93484%_ _%start93477%_)
                                (_%i93486%_ '1))
              (let ((_%k93489%_ (vector-ref _%table93463%_ _%probe93484%_)))
                (if (eq? _%k93489%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93489%_ (macro-deleted-obj))
                        (_%loop93481%_
                         (let ((_%next-probe93494%_
                                (fx+ _%start93477%_
                                     _%i93486%_
                                     (fx* _%i93486%_ _%i93486%_))))
                           (##fxmodulo _%next-probe93494%_ _%size93471%_))
                         (##fx+ _%i93486%_ '1))
                        (if (eq? _%key93460%_ _%k93489%_)
                            (let ()
                              (vector-set!
                               _%table93463%_
                               _%probe93484%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93463%_
                               (##fx+ _%probe93484%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93458%_
                                  (##fx- (&raw-table-count _%tab93458%_)
                                         '1)))))
                            (_%loop93481%_
                             (let ((_%next-probe93500%_
                                    (fx+ _%start93477%_
                                         _%i93486%_
                                         (fx* _%i93486%_ _%i93486%_))))
                               (##fxmodulo _%next-probe93500%_ _%size93471%_))
                             (##fx+ _%i93486%_ '1)))))))))))
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
      (lambda (_%tab93456%_)
        (##unchecked-structure-ref
         _%tab93456%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab93454%_)
        (##unchecked-structure-ref
         _%tab93454%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab93451%_ _%val93452%_)
        (##unchecked-structure-set!
         _%tab93451%_
         _%val93452%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab93448%_ _%val93449%_)
        (##unchecked-structure-set!
         _%tab93448%_
         _%val93449%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint93424%_ _%klass93425%_ _%flags93426%_)
        (let ((_%gcht93428%_
               (__gc-table-new
                (if (fixnum? _%size-hint93424%_) _%size-hint93424%_ '16)
                _%flags93426%_)))
          (##structure _%klass93425%_ _%gcht93428%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint93433%_)
        (let* ((_%klass93435%_ __gc-table::t) (_%flags93437%_ '0))
          (make-gc-table__%
           _%size-hint93433%_
           _%klass93435%_
           _%flags93437%_))))
    (define make-gc-table__1
      (lambda (_%size-hint93439%_ _%klass93440%_)
        (let ((_%flags93442%_ '0))
          (make-gc-table__%
           _%size-hint93439%_
           _%klass93440%_
           _%flags93442%_))))
    (define make-gc-table
      (lambda _g94900_
        (let ((_g94899_ (##length _g94900_)))
          (cond ((##fx= _g94899_ 1) (apply make-gc-table__0 _g94900_))
                ((##fx= _g94899_ 2) (apply make-gc-table__1 _g94900_))
                ((##fx= _g94899_ 3) (apply make-gc-table__% _g94900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g94900_))))))
    (define __gc-table-immediate
      (lambda (_%tab93415%_)
        (let ((_%$e93417%_ (&gc-table-immediate _%tab93415%_)))
          (if _%$e93417%_
              _%$e93417%_
              (let ((_%immediate93421%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab93415%_ _%immediate93421%_)
                _%immediate93421%_)))))
    (define __gc-table-new
      (lambda (_%size93405%_ _%flags93406%_)
        (let* ((_%flags93408%_
                (##fxand _%flags93406%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags93410%_
                (fxior _%flags93408%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht93412%_
                (##gc-hash-table-allocate
                 _%size93405%_
                 _%flags93410%_
                 __gc-table-loads)))
          _%gcht93412%_)))
    (define __gc-table-e
      (lambda (_%tab93400%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht93403%_ (&gc-table-gcht _%tab93400%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht93403%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht93403%_
              (begin
                (__gc-table-rehash! _%tab93400%_)
                (&gc-table-gcht _%tab93400%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab93391%_)
        (let* ((_%old-table93393%_ (&gc-table-gcht _%tab93391%_))
               (_%new-table93395%_
                (##gc-hash-table-resize! _%old-table93393%_ __gc-table-loads))
               (_%gcht93397%_
                (##gc-hash-table-rehash!
                 _%old-table93393%_
                 _%new-table93395%_)))
          (&gc-table-gcht-set! _%tab93391%_ _%gcht93397%_))))
    (define gc-table-ref
      (lambda (_%tab93375%_ _%key93376%_ _%default93377%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93376%_)
            (let* ((_%gcht93381%_ (__gc-table-e _%tab93375%_))
                   (_%value93383%_
                    (##gc-hash-table-ref _%gcht93381%_ _%key93376%_)))
              (if (eq? _%value93383%_ (macro-unused-obj))
                  _%default93377%_
                  _%value93383%_))
            (let ((_%$e93385%_ (&gc-table-immediate _%tab93375%_)))
              (if _%$e93385%_
                  ((lambda (_%immediate93388%_)
                     (immediate-table-ref
                      _%immediate93388%_
                      _%key93376%_
                      _%default93377%_))
                   _%$e93385%_)
                  _%default93377%_)))))
    (define gc-table-set!
      (lambda (_%tab93368%_ _%key93369%_ _%value93370%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93369%_)
            (let ((_%gcht93373%_ (__gc-table-e _%tab93368%_)))
              (if (##gc-hash-table-set!
                   _%gcht93373%_
                   _%key93369%_
                   _%value93370%_)
                  (begin
                    (__gc-table-rehash! _%tab93368%_)
                    (gc-table-set! _%tab93368%_ _%key93369%_ _%value93370%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab93368%_)
             _%key93369%_
             _%value93370%_))))
    (define gc-table-update!
      (lambda (_%tab93361%_ _%key93362%_ _%update93363%_ _%default93364%_)
        (if (##mem-allocated? _%key93362%_)
            (let ((_%value93366%_
                   (gc-table-ref _%tab93361%_ _%key93362%_ _%default93364%_)))
              (gc-table-set!
               _%tab93361%_
               _%key93362%_
               (_%update93363%_ _%value93366%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab93361%_)
             _%key93362%_
             _%update93363%_
             _%default93364%_))))
    (define gc-table-delete!
      (lambda (_%tab93349%_ _%key93350%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93350%_)
            (let ((_%gcht93354%_ (__gc-table-e _%tab93349%_)))
              (if (##gc-hash-table-set!
                   _%gcht93354%_
                   _%key93350%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab93349%_)
                    (gc-table-delete! _%tab93349%_ _%key93350%_))
                  '#!void))
            (let ((_%$e93356%_ (&gc-table-immediate _%tab93349%_)))
              (if _%$e93356%_
                  ((lambda (_%immediate93359%_)
                     (immediate-table-delete! _%immediate93359%_ _%key93350%_))
                   _%$e93356%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab93330%_ _%proc93331%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht93334%_ (__gc-table-e _%tab93330%_)))
            (let _%loop93336%_ ((_%i93338%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i93338%_ (##vector-length _%gcht93334%_))
                  (let ((_%key93340%_ (##vector-ref _%gcht93334%_ _%i93338%_)))
                    (if (if (eq? _%key93340%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key93340%_ (macro-deleted-obj))))
                        (_%proc93331%_
                         _%key93340%_
                         (##vector-ref _%gcht93334%_ (##fx+ _%i93338%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop93336%_ (##fx+ _%i93338%_ '2))))
                  '#!void)))
          (let ((_%$e93344%_ (&gc-table-immediate _%tab93330%_)))
            (if _%$e93344%_
                ((lambda (_%immediate93347%_)
                   (raw-table-for-each _%immediate93347%_ _%proc93331%_))
                 _%$e93344%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab93318%_)
        (let* ((_%gcht93320%_ (__gc-table-e _%tab93318%_))
               (_%new-table93322%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht93320%_)
                 (macro-gc-hash-table-flags _%gcht93320%_)))
               (_%result93324%_
                (##structure
                 (##structure-type _%tab93318%_)
                 _%new-table93322%_
                 '#f)))
          (gc-table-for-each
           _%tab93318%_
           (lambda (_%k93327%_ _%v93328%_)
             (gc-table-set! _%result93324%_ _%k93327%_ _%v93328%_)))
          _%result93324%_)))
    (define gc-table-clear!
      (lambda (_%tab93311%_)
        (let* ((_%gcht93313%_ (__gc-table-e _%tab93311%_))
               (_%new-table93315%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht93313%_))))
          (&gc-table-gcht-set! _%tab93311%_ _%new-table93315%_)
          (&gc-table-immediate-set! _%tab93311%_ '#f))))
    (define gc-table-length
      (lambda (_%tab93303%_)
        (let ((_%gcht93305%_ (__gc-table-e _%tab93303%_)))
          (fx+ (macro-gc-hash-table-count _%gcht93305%_)
               (let ((_%$e93307%_ (&gc-table-immediate _%tab93303%_)))
                 (if _%$e93307%_ (&raw-table-count _%$e93307%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj93288%_)
        (declare (not interrupts-enabled))
        (let ((_%val93291%_ (gc-table-ref __object-eq-hash _%obj93288%_ '#f)))
          (if _%val93291%_
              _%val93291%_
              (let* ((_%mix93293%_ __object-eq-hash-next)
                     (_%ptr93295%_ (##type-cast _%obj93288%_ '0))
                     (_%h93297%_
                      (fxand (fxxor _%mix93293%_ _%ptr93295%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e93300%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e93300%_ _%$e93300%_ '0)))
                (gc-table-set! __object-eq-hash _%obj93288%_ _%h93297%_)
                _%h93297%_)))))))
