(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1742237311)
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
      (lambda (_%tab94927%_)
        (##unchecked-structure-ref
         _%tab94927%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab94925%_)
        (##unchecked-structure-ref
         _%tab94925%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab94923%_)
        (##unchecked-structure-ref
         _%tab94923%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab94921%_)
        (##unchecked-structure-ref
         _%tab94921%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab94919%_)
        (##unchecked-structure-ref
         _%tab94919%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab94917%_)
        (##unchecked-structure-ref
         _%tab94917%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab94914%_ _%val94915%_)
        (##unchecked-structure-set!
         _%tab94914%_
         _%val94915%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab94911%_ _%val94912%_)
        (##unchecked-structure-set!
         _%tab94911%_
         _%val94912%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab94908%_ _%val94909%_)
        (##unchecked-structure-set!
         _%tab94908%_
         _%val94909%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab94905%_ _%val94906%_)
        (##unchecked-structure-set!
         _%tab94905%_
         _%val94906%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab94902%_ _%val94903%_)
        (##unchecked-structure-set!
         _%tab94902%_
         _%val94903%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab94899%_ _%val94900%_)
        (##unchecked-structure-set!
         _%tab94899%_
         _%val94900%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint94897%_)
        (if (and (fixnum? _%size-hint94897%_) (##fx> _%size-hint94897%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint94897%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint94873%_ _%hash94874%_ _%test94875%_ _%seed94876%_)
        (let* ((_%size94878%_ (raw-table-size-hint->size _%size-hint94873%_))
               (_%table94880%_
                (##make-vector _%size94878%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table94880%_
           '0
           (##fxquotient _%size94878%_ '2)
           _%hash94874%_
           _%test94875%_
           _%seed94876%_))))
    (define make-raw-table__0
      (lambda (_%size-hint94886%_ _%hash94887%_ _%test94888%_)
        (let ((_%seed94890%_ '0))
          (make-raw-table__%
           _%size-hint94886%_
           _%hash94887%_
           _%test94888%_
           _%seed94890%_))))
    (define make-raw-table
      (lambda _g94929_
        (let ((_g94928_ (##length _g94929_)))
          (cond ((##fx= _g94928_ 3) (apply make-raw-table__0 _g94929_))
                ((##fx= _g94928_ 4) (apply make-raw-table__% _g94929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g94929_))))))
    (define raw-table-ref
      (lambda (_%tab94824%_ _%key94825%_ _%default94826%_)
        (let ((_%table94828%_ (&raw-table-table _%tab94824%_))
              (_%seed94829%_ (&raw-table-seed _%tab94824%_))
              (_%hash94830%_ (&raw-table-hash _%tab94824%_))
              (_%test94831%_ (&raw-table-test _%tab94824%_)))
          (let* ((_%h94833%_
                  (fxxor (_%hash94830%_ _%key94825%_) _%seed94829%_))
                 (_%size94836%_ (vector-length _%table94828%_))
                 (_%entries94839%_ (##fxquotient _%size94836%_ '2))
                 (_%start94842%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94833%_ _%entries94839%_)
                   '1)))
            (let _%loop94846%_ ((_%probe94849%_ _%start94842%_)
                                (_%i94851%_ '1)
                                (_%deleted94853%_ '#f))
              (let ((_%k94856%_ (vector-ref _%table94828%_ _%probe94849%_)))
                (if (eq? _%k94856%_ (macro-unused-obj))
                    _%default94826%_
                    (if (eq? _%k94856%_ (macro-deleted-obj))
                        (_%loop94846%_
                         (let ((_%next-probe94861%_
                                (fx+ _%start94842%_
                                     _%i94851%_
                                     (fx* _%i94851%_ _%i94851%_))))
                           (##fxmodulo _%next-probe94861%_ _%size94836%_))
                         (##fx+ _%i94851%_ '1)
                         (let ((_%$e94864%_ _%deleted94853%_))
                           (if _%$e94864%_ _%$e94864%_ _%probe94849%_)))
                        (if (_%test94831%_ _%key94825%_ _%k94856%_)
                            (vector-ref
                             _%table94828%_
                             (##fx+ _%probe94849%_ '1))
                            (_%loop94846%_
                             (let ((_%next-probe94869%_
                                    (fx+ _%start94842%_
                                         _%i94851%_
                                         (fx* _%i94851%_ _%i94851%_))))
                               (##fxmodulo _%next-probe94869%_ _%size94836%_))
                             (##fx+ _%i94851%_ '1)
                             _%deleted94853%_))))))))))
    (define raw-table-set!
      (lambda (_%tab94820%_ _%key94821%_ _%value94822%_)
        (if (##fx< (&raw-table-free _%tab94820%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94820%_))
                    '4))
            (__raw-table-rehash! _%tab94820%_)
            '#!void)
        (__raw-table-set! _%tab94820%_ _%key94821%_ _%value94822%_)))
    (define raw-table-update!
      (lambda (_%tab94815%_ _%key94816%_ _%update94817%_ _%default94818%_)
        (if (##fx< (&raw-table-free _%tab94815%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94815%_))
                    '4))
            (__raw-table-rehash! _%tab94815%_)
            '#!void)
        (__raw-table-update!
         _%tab94815%_
         _%key94816%_
         _%update94817%_
         _%default94818%_)))
    (define raw-table-delete!
      (lambda (_%tab94772%_ _%key94773%_)
        (let ((_%table94775%_ (&raw-table-table _%tab94772%_))
              (_%seed94776%_ (&raw-table-seed _%tab94772%_))
              (_%hash94777%_ (&raw-table-hash _%tab94772%_))
              (_%test94778%_ (&raw-table-test _%tab94772%_)))
          (let* ((_%h94780%_
                  (fxxor (_%hash94777%_ _%key94773%_) _%seed94776%_))
                 (_%size94783%_ (vector-length _%table94775%_))
                 (_%entries94786%_ (##fxquotient _%size94783%_ '2))
                 (_%start94789%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94780%_ _%entries94786%_)
                   '1)))
            (let _%loop94793%_ ((_%probe94796%_ _%start94789%_)
                                (_%i94798%_ '1))
              (let ((_%k94801%_ (vector-ref _%table94775%_ _%probe94796%_)))
                (if (eq? _%k94801%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94801%_ (macro-deleted-obj))
                        (_%loop94793%_
                         (let ((_%next-probe94806%_
                                (fx+ _%start94789%_
                                     _%i94798%_
                                     (fx* _%i94798%_ _%i94798%_))))
                           (##fxmodulo _%next-probe94806%_ _%size94783%_))
                         (##fx+ _%i94798%_ '1))
                        (if (_%test94778%_ _%key94773%_ _%k94801%_)
                            (let ()
                              (vector-set!
                               _%table94775%_
                               _%probe94796%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94775%_
                               (##fx+ _%probe94796%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94772%_
                                  (##fx- (&raw-table-count _%tab94772%_)
                                         '1)))))
                            (_%loop94793%_
                             (let ((_%next-probe94812%_
                                    (fx+ _%start94789%_
                                         _%i94798%_
                                         (fx* _%i94798%_ _%i94798%_))))
                               (##fxmodulo _%next-probe94812%_ _%size94783%_))
                             (##fx+ _%i94798%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab94756%_ _%proc94757%_)
        (let* ((_%table94759%_ (&raw-table-table _%tab94756%_))
               (_%size94761%_ (vector-length _%table94759%_)))
          (let _%loop94764%_ ((_%i94766%_ '0))
            (if (##fx< _%i94766%_ _%size94761%_)
                (begin
                  (let ((_%key94768%_ (vector-ref _%table94759%_ _%i94766%_)))
                    (if (if (eq? _%key94768%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94768%_ (macro-deleted-obj))))
                        (let ((_%value94770%_
                               (vector-ref
                                _%table94759%_
                                (##fx+ _%i94766%_ '1))))
                          (_%proc94757%_ _%key94768%_ _%value94770%_))
                        '#!void))
                  (_%loop94764%_ (##fx+ _%i94766%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab94752%_)
        (let ((_%new-tab94754%_ (##structure-copy _%tab94752%_)))
          (&raw-table-table-set!
           _%new-tab94754%_
           (vector-copy (&raw-table-table _%tab94752%_)))
          _%new-tab94754%_)))
    (define raw-table-clear!
      (lambda (_%tab94750%_)
        (vector-fill! (&raw-table-table _%tab94750%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab94750%_ '0)
        (&raw-table-free-set!
         _%tab94750%_
         (##fxquotient (vector-length (&raw-table-table _%tab94750%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab94700%_ _%key94701%_ _%value94702%_)
        (let ((_%table94704%_ (&raw-table-table _%tab94700%_))
              (_%seed94705%_ (&raw-table-seed _%tab94700%_))
              (_%hash94706%_ (&raw-table-hash _%tab94700%_))
              (_%test94707%_ (&raw-table-test _%tab94700%_)))
          (let* ((_%h94709%_
                  (fxxor (_%hash94706%_ _%key94701%_) _%seed94705%_))
                 (_%size94712%_ (vector-length _%table94704%_))
                 (_%entries94715%_ (##fxquotient _%size94712%_ '2))
                 (_%start94718%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94709%_ _%entries94715%_)
                   '1)))
            (let _%loop94722%_ ((_%probe94725%_ _%start94718%_)
                                (_%i94727%_ '1)
                                (_%deleted94729%_ '#f))
              (let ((_%k94732%_ (vector-ref _%table94704%_ _%probe94725%_)))
                (if (eq? _%k94732%_ (macro-unused-obj))
                    (if _%deleted94729%_
                        (begin
                          (vector-set!
                           _%table94704%_
                           _%deleted94729%_
                           _%key94701%_)
                          (vector-set!
                           _%table94704%_
                           (##fx+ _%deleted94729%_ '1)
                           _%value94702%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94700%_
                              (##fx+ (&raw-table-count _%tab94700%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94704%_
                           _%probe94725%_
                           _%key94701%_)
                          (vector-set!
                           _%table94704%_
                           (##fx+ _%probe94725%_ '1)
                           _%value94702%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94700%_
                              (##fx- (&raw-table-free _%tab94700%_) '1))
                             (&raw-table-count-set!
                              _%tab94700%_
                              (##fx+ (&raw-table-count _%tab94700%_) '1))))))
                    (if (eq? _%k94732%_ (macro-deleted-obj))
                        (_%loop94722%_
                         (let ((_%next-probe94739%_
                                (fx+ _%start94718%_
                                     _%i94727%_
                                     (fx* _%i94727%_ _%i94727%_))))
                           (##fxmodulo _%next-probe94739%_ _%size94712%_))
                         (##fx+ _%i94727%_ '1)
                         (let ((_%$e94742%_ _%deleted94729%_))
                           (if _%$e94742%_ _%$e94742%_ _%probe94725%_)))
                        (if (_%test94707%_ _%key94701%_ _%k94732%_)
                            (let ()
                              (vector-set!
                               _%table94704%_
                               _%probe94725%_
                               _%key94701%_)
                              (vector-set!
                               _%table94704%_
                               (##fx+ _%probe94725%_ '1)
                               _%value94702%_))
                            (_%loop94722%_
                             (let ((_%next-probe94747%_
                                    (fx+ _%start94718%_
                                         _%i94727%_
                                         (fx* _%i94727%_ _%i94727%_))))
                               (##fxmodulo _%next-probe94747%_ _%size94712%_))
                             (##fx+ _%i94727%_ '1)
                             _%deleted94729%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab94649%_ _%key94650%_ _%update94651%_ _%default94652%_)
        (let ((_%table94654%_ (&raw-table-table _%tab94649%_))
              (_%seed94655%_ (&raw-table-seed _%tab94649%_))
              (_%hash94656%_ (&raw-table-hash _%tab94649%_))
              (_%test94657%_ (&raw-table-test _%tab94649%_)))
          (let* ((_%h94659%_
                  (fxxor (_%hash94656%_ _%key94650%_) _%seed94655%_))
                 (_%size94662%_ (vector-length _%table94654%_))
                 (_%entries94665%_ (##fxquotient _%size94662%_ '2))
                 (_%start94668%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94659%_ _%entries94665%_)
                   '1)))
            (let _%loop94672%_ ((_%probe94675%_ _%start94668%_)
                                (_%i94677%_ '1)
                                (_%deleted94679%_ '#f))
              (let ((_%k94682%_ (vector-ref _%table94654%_ _%probe94675%_)))
                (if (eq? _%k94682%_ (macro-unused-obj))
                    (if _%deleted94679%_
                        (begin
                          (vector-set!
                           _%table94654%_
                           _%deleted94679%_
                           _%key94650%_)
                          (vector-set!
                           _%table94654%_
                           (##fx+ _%deleted94679%_ '1)
                           (_%update94651%_ _%default94652%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94649%_
                              (##fx+ (&raw-table-count _%tab94649%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94654%_
                           _%probe94675%_
                           _%key94650%_)
                          (vector-set!
                           _%table94654%_
                           (##fx+ _%probe94675%_ '1)
                           (_%update94651%_ _%default94652%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94649%_
                              (##fx- (&raw-table-free _%tab94649%_) '1))
                             (&raw-table-count-set!
                              _%tab94649%_
                              (##fx+ (&raw-table-count _%tab94649%_) '1))))))
                    (if (eq? _%k94682%_ (macro-deleted-obj))
                        (_%loop94672%_
                         (let ((_%next-probe94689%_
                                (fx+ _%start94668%_
                                     _%i94677%_
                                     (fx* _%i94677%_ _%i94677%_))))
                           (##fxmodulo _%next-probe94689%_ _%size94662%_))
                         (##fx+ _%i94677%_ '1)
                         (let ((_%$e94692%_ _%deleted94679%_))
                           (if _%$e94692%_ _%$e94692%_ _%probe94675%_)))
                        (if (_%test94657%_ _%key94650%_ _%k94682%_)
                            (let ()
                              (vector-set!
                               _%table94654%_
                               _%probe94675%_
                               _%key94650%_)
                              (vector-set!
                               _%table94654%_
                               (##fx+ _%probe94675%_ '1)
                               (_%update94651%_
                                (vector-ref
                                 _%table94654%_
                                 (##fx+ _%probe94675%_ '1)))))
                            (_%loop94672%_
                             (let ((_%next-probe94697%_
                                    (fx+ _%start94668%_
                                         _%i94677%_
                                         (fx* _%i94677%_ _%i94677%_))))
                               (##fxmodulo _%next-probe94697%_ _%size94662%_))
                             (##fx+ _%i94677%_ '1)
                             _%deleted94679%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab94630%_)
        (let* ((_%old-table94632%_ (&raw-table-table _%tab94630%_))
               (_%old-size94634%_ (vector-length _%old-table94632%_))
               (_%new-size94636%_
                (if (##fx< (&raw-table-count _%tab94630%_)
                           (##fxquotient _%old-size94634%_ '4))
                    (vector-length _%old-table94632%_)
                    (##fx* '2 (vector-length _%old-table94632%_))))
               (_%new-table94638%_
                (##make-vector _%new-size94636%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab94630%_ _%new-table94638%_)
          (&raw-table-count-set! _%tab94630%_ '0)
          (&raw-table-free-set!
           _%tab94630%_
           (##fxquotient _%new-size94636%_ '2))
          (let _%lp94641%_ ((_%i94643%_ '0))
            (if (##fx< _%i94643%_ _%old-size94634%_)
                (begin
                  (let ((_%key94645%_
                         (vector-ref _%old-table94632%_ _%i94643%_)))
                    (if (if (eq? _%key94645%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94645%_ (macro-deleted-obj))))
                        (let ((_%value94647%_
                               (vector-ref
                                _%old-table94632%_
                                (##fx+ _%i94643%_ '1))))
                          (__raw-table-set!
                           _%tab94630%_
                           _%key94645%_
                           _%value94647%_))
                        '#!void))
                  (_%lp94641%_ (##fx+ _%i94643%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj94622%_)
        (let ((_%t94624%_ (##type _%obj94622%_)))
          (if (##fx= (##fxand _%t94624%_ '1) '0)
              (fxand (##type-cast _%obj94622%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj94622%_)
                  (##symbol-hash _%obj94622%_)
                  (if (procedure? _%obj94622%_)
                      (procedure-hash _%obj94622%_)
                      (fxand (__eq-hash _%obj94622%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj94618%_)
        (let ((_%h94620%_
               (if (##closure? _%obj94618%_)
                   (__eq-hash _%obj94618%_)
                   (##type-cast _%obj94618%_ '0))))
          (fxand _%h94620%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj94615%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj94615%_)))
    (define eqv-hash
      (lambda (_%obj94605%_)
        (letrec ((_%combine94607%_
                  (lambda (_%a94612%_ _%b94613%_)
                    (fxand (##fx* (##fx+ _%a94612%_
                                         (fxarithmetic-shift-left
                                          _%b94613%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash94608%_
                  (lambda (_%obj94610%_)
                    (macro-number-dispatch
                     _%obj94610%_
                     (eq-hash _%obj94610%_)
                     (fxand _%obj94610%_ (macro-max-fixnum32))
                     (modulo _%obj94610%_ '331804481)
                     (_%combine94607%_
                      (_%hash94608%_ (macro-ratnum-numerator _%obj94610%_))
                      (_%hash94608%_ (macro-ratnum-denominator _%obj94610%_)))
                     (_%combine94607%_
                      (##u16vector-ref _%obj94610%_ '0)
                      (_%combine94607%_
                       (##u16vector-ref _%obj94610%_ '1)
                       (_%combine94607%_
                        (##u16vector-ref _%obj94610%_ '2)
                        (##u16vector-ref _%obj94610%_ '3))))
                     (_%combine94607%_
                      (_%hash94608%_ (macro-cpxnum-real _%obj94610%_))
                      (_%hash94608%_ (macro-cpxnum-imag _%obj94610%_)))))))
          (_%hash94608%_ _%obj94605%_))))
    (define symbolic?
      (lambda (_%obj94600%_)
        (let ((_%$e94602%_ (symbol? _%obj94600%_)))
          (if _%$e94602%_ _%$e94602%_ (keyword? _%obj94600%_)))))
    (define symbolic-hash (lambda (_%obj94598%_) (##symbol-hash _%obj94598%_)))
    (define string-hash (lambda (_%obj94596%_) (##string=?-hash _%obj94596%_)))
    (define immediate-hash
      (lambda (_%obj94594%_) (##type-cast _%obj94594%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint94575%_ _%seed94577%_)
        (make-raw-table__% _%size-hint94575%_ eq-hash eq? _%seed94577%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint94583%_ '#f) (_%seed94585%_ '0))
          (make-eq-table__% _%size-hint94583%_ _%seed94585%_))))
    (define make-eq-table__1
      (lambda (_%size-hint94587%_)
        (let ((_%seed94589%_ '0))
          (make-eq-table__% _%size-hint94587%_ _%seed94589%_))))
    (define make-eq-table
      (lambda _g94931_
        (let ((_g94930_ (##length _g94931_)))
          (cond ((##fx= _g94930_ 0) (apply make-eq-table__0 _g94931_))
                ((##fx= _g94930_ 1) (apply make-eq-table__1 _g94931_))
                ((##fx= _g94930_ 2) (apply make-eq-table__% _g94931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g94931_))))))
    (define eq-table-ref
      (lambda (_%tab94528%_ _%key94529%_ _%default94530%_)
        (let ((_%table94532%_ (&raw-table-table _%tab94528%_))
              (_%seed94533%_ (&raw-table-seed _%tab94528%_)))
          (let* ((_%h94535%_ (fxxor (eq-hash _%key94529%_) _%seed94533%_))
                 (_%size94538%_ (vector-length _%table94532%_))
                 (_%entries94541%_ (##fxquotient _%size94538%_ '2))
                 (_%start94544%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94535%_ _%entries94541%_)
                   '1)))
            (let _%loop94548%_ ((_%probe94551%_ _%start94544%_)
                                (_%i94553%_ '1)
                                (_%deleted94555%_ '#f))
              (let ((_%k94558%_ (vector-ref _%table94532%_ _%probe94551%_)))
                (if (eq? _%k94558%_ (macro-unused-obj))
                    _%default94530%_
                    (if (eq? _%k94558%_ (macro-deleted-obj))
                        (_%loop94548%_
                         (let ((_%next-probe94563%_
                                (fx+ _%start94544%_
                                     _%i94553%_
                                     (fx* _%i94553%_ _%i94553%_))))
                           (##fxmodulo _%next-probe94563%_ _%size94538%_))
                         (##fx+ _%i94553%_ '1)
                         (let ((_%$e94566%_ _%deleted94555%_))
                           (if _%$e94566%_ _%$e94566%_ _%probe94551%_)))
                        (if (eq? _%key94529%_ _%k94558%_)
                            (vector-ref
                             _%table94532%_
                             (##fx+ _%probe94551%_ '1))
                            (_%loop94548%_
                             (let ((_%next-probe94571%_
                                    (fx+ _%start94544%_
                                         _%i94553%_
                                         (fx* _%i94553%_ _%i94553%_))))
                               (##fxmodulo _%next-probe94571%_ _%size94538%_))
                             (##fx+ _%i94553%_ '1)
                             _%deleted94555%_))))))))))
    (define eq-table-set!
      (lambda (_%tab94524%_ _%key94525%_ _%value94526%_)
        (if (##fx< (&raw-table-free _%tab94524%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94524%_))
                    '4))
            (__raw-table-rehash! _%tab94524%_)
            '#!void)
        (__eq-table-set! _%tab94524%_ _%key94525%_ _%value94526%_)))
    (define __eq-table-set!
      (lambda (_%tab94475%_ _%key94476%_ _%value94477%_)
        (let ((_%table94480%_ (&raw-table-table _%tab94475%_))
              (_%seed94481%_ (&raw-table-seed _%tab94475%_)))
          (let* ((_%h94483%_ (fxxor (eq-hash _%key94476%_) _%seed94481%_))
                 (_%size94486%_ (vector-length _%table94480%_))
                 (_%entries94489%_ (##fxquotient _%size94486%_ '2))
                 (_%start94492%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94483%_ _%entries94489%_)
                   '1)))
            (let _%loop94496%_ ((_%probe94499%_ _%start94492%_)
                                (_%i94501%_ '1)
                                (_%deleted94503%_ '#f))
              (let ((_%k94506%_ (vector-ref _%table94480%_ _%probe94499%_)))
                (if (eq? _%k94506%_ (macro-unused-obj))
                    (if _%deleted94503%_
                        (begin
                          (vector-set!
                           _%table94480%_
                           _%deleted94503%_
                           _%key94476%_)
                          (vector-set!
                           _%table94480%_
                           (##fx+ _%deleted94503%_ '1)
                           _%value94477%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94475%_
                              (##fx+ (&raw-table-count _%tab94475%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94480%_
                           _%probe94499%_
                           _%key94476%_)
                          (vector-set!
                           _%table94480%_
                           (##fx+ _%probe94499%_ '1)
                           _%value94477%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94475%_
                              (##fx- (&raw-table-free _%tab94475%_) '1))
                             (&raw-table-count-set!
                              _%tab94475%_
                              (##fx+ (&raw-table-count _%tab94475%_) '1))))))
                    (if (eq? _%k94506%_ (macro-deleted-obj))
                        (_%loop94496%_
                         (let ((_%next-probe94513%_
                                (fx+ _%start94492%_
                                     _%i94501%_
                                     (fx* _%i94501%_ _%i94501%_))))
                           (##fxmodulo _%next-probe94513%_ _%size94486%_))
                         (##fx+ _%i94501%_ '1)
                         (let ((_%$e94516%_ _%deleted94503%_))
                           (if _%$e94516%_ _%$e94516%_ _%probe94499%_)))
                        (if (eq? _%key94476%_ _%k94506%_)
                            (let ()
                              (vector-set!
                               _%table94480%_
                               _%probe94499%_
                               _%key94476%_)
                              (vector-set!
                               _%table94480%_
                               (##fx+ _%probe94499%_ '1)
                               _%value94477%_))
                            (_%loop94496%_
                             (let ((_%next-probe94521%_
                                    (fx+ _%start94492%_
                                         _%i94501%_
                                         (fx* _%i94501%_ _%i94501%_))))
                               (##fxmodulo _%next-probe94521%_ _%size94486%_))
                             (##fx+ _%i94501%_ '1)
                             _%deleted94503%_))))))))))
    (define eq-table-update!
      (lambda (_%tab94470%_
               _%key94471%_
               _%eq-table-update!94472%_
               _%default94473%_)
        (if (##fx< (&raw-table-free _%tab94470%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94470%_))
                    '4))
            (__raw-table-rehash! _%tab94470%_)
            '#!void)
        (__eq-table-update!
         _%tab94470%_
         _%key94471%_
         _%eq-table-update!94472%_
         _%default94473%_)))
    (define __eq-table-update!
      (lambda (_%tab94420%_
               _%key94421%_
               _%eq-table-update!94422%_
               _%default94423%_)
        (let ((_%table94426%_ (&raw-table-table _%tab94420%_))
              (_%seed94427%_ (&raw-table-seed _%tab94420%_)))
          (let* ((_%h94429%_ (fxxor (eq-hash _%key94421%_) _%seed94427%_))
                 (_%size94432%_ (vector-length _%table94426%_))
                 (_%entries94435%_ (##fxquotient _%size94432%_ '2))
                 (_%start94438%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94429%_ _%entries94435%_)
                   '1)))
            (let _%loop94442%_ ((_%probe94445%_ _%start94438%_)
                                (_%i94447%_ '1)
                                (_%deleted94449%_ '#f))
              (let ((_%k94452%_ (vector-ref _%table94426%_ _%probe94445%_)))
                (if (eq? _%k94452%_ (macro-unused-obj))
                    (if _%deleted94449%_
                        (begin
                          (vector-set!
                           _%table94426%_
                           _%deleted94449%_
                           _%key94421%_)
                          (vector-set!
                           _%table94426%_
                           (##fx+ _%deleted94449%_ '1)
                           (_%eq-table-update!94422%_ _%default94423%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94420%_
                              (##fx+ (&raw-table-count _%tab94420%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94426%_
                           _%probe94445%_
                           _%key94421%_)
                          (vector-set!
                           _%table94426%_
                           (##fx+ _%probe94445%_ '1)
                           (_%eq-table-update!94422%_ _%default94423%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94420%_
                              (##fx- (&raw-table-free _%tab94420%_) '1))
                             (&raw-table-count-set!
                              _%tab94420%_
                              (##fx+ (&raw-table-count _%tab94420%_) '1))))))
                    (if (eq? _%k94452%_ (macro-deleted-obj))
                        (_%loop94442%_
                         (let ((_%next-probe94459%_
                                (fx+ _%start94438%_
                                     _%i94447%_
                                     (fx* _%i94447%_ _%i94447%_))))
                           (##fxmodulo _%next-probe94459%_ _%size94432%_))
                         (##fx+ _%i94447%_ '1)
                         (let ((_%$e94462%_ _%deleted94449%_))
                           (if _%$e94462%_ _%$e94462%_ _%probe94445%_)))
                        (if (eq? _%key94421%_ _%k94452%_)
                            (let ()
                              (vector-set!
                               _%table94426%_
                               _%probe94445%_
                               _%key94421%_)
                              (vector-set!
                               _%table94426%_
                               (##fx+ _%probe94445%_ '1)
                               (_%eq-table-update!94422%_
                                (vector-ref
                                 _%table94426%_
                                 (##fx+ _%probe94445%_ '1)))))
                            (_%loop94442%_
                             (let ((_%next-probe94467%_
                                    (fx+ _%start94438%_
                                         _%i94447%_
                                         (fx* _%i94447%_ _%i94447%_))))
                               (##fxmodulo _%next-probe94467%_ _%size94432%_))
                             (##fx+ _%i94447%_ '1)
                             _%deleted94449%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab94375%_ _%key94377%_)
        (let ((_%table94380%_ (&raw-table-table _%tab94375%_))
              (_%seed94382%_ (&raw-table-seed _%tab94375%_)))
          (let* ((_%h94385%_ (fxxor (eq-hash _%key94377%_) _%seed94382%_))
                 (_%size94388%_ (vector-length _%table94380%_))
                 (_%entries94391%_ (##fxquotient _%size94388%_ '2))
                 (_%start94394%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94385%_ _%entries94391%_)
                   '1)))
            (let _%loop94398%_ ((_%probe94401%_ _%start94394%_)
                                (_%i94403%_ '1))
              (let ((_%k94406%_ (vector-ref _%table94380%_ _%probe94401%_)))
                (if (eq? _%k94406%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94406%_ (macro-deleted-obj))
                        (_%loop94398%_
                         (let ((_%next-probe94411%_
                                (fx+ _%start94394%_
                                     _%i94403%_
                                     (fx* _%i94403%_ _%i94403%_))))
                           (##fxmodulo _%next-probe94411%_ _%size94388%_))
                         (##fx+ _%i94403%_ '1))
                        (if (eq? _%key94377%_ _%k94406%_)
                            (let ()
                              (vector-set!
                               _%table94380%_
                               _%probe94401%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94380%_
                               (##fx+ _%probe94401%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94375%_
                                  (##fx- (&raw-table-count _%tab94375%_)
                                         '1)))))
                            (_%loop94398%_
                             (let ((_%next-probe94417%_
                                    (fx+ _%start94394%_
                                         _%i94403%_
                                         (fx* _%i94403%_ _%i94403%_))))
                               (##fxmodulo _%next-probe94417%_ _%size94388%_))
                             (##fx+ _%i94403%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint94356%_ _%seed94358%_)
        (make-raw-table__% _%size-hint94356%_ eqv-hash eqv? _%seed94358%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint94364%_ '#f) (_%seed94366%_ '0))
          (make-eqv-table__% _%size-hint94364%_ _%seed94366%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint94368%_)
        (let ((_%seed94370%_ '0))
          (make-eqv-table__% _%size-hint94368%_ _%seed94370%_))))
    (define make-eqv-table
      (lambda _g94933_
        (let ((_g94932_ (##length _g94933_)))
          (cond ((##fx= _g94932_ 0) (apply make-eqv-table__0 _g94933_))
                ((##fx= _g94932_ 1) (apply make-eqv-table__1 _g94933_))
                ((##fx= _g94932_ 2) (apply make-eqv-table__% _g94933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g94933_))))))
    (define eqv-table-ref
      (lambda (_%tab94309%_ _%key94310%_ _%default94311%_)
        (let ((_%table94313%_ (&raw-table-table _%tab94309%_))
              (_%seed94314%_ (&raw-table-seed _%tab94309%_)))
          (let* ((_%h94316%_ (fxxor (eqv-hash _%key94310%_) _%seed94314%_))
                 (_%size94319%_ (vector-length _%table94313%_))
                 (_%entries94322%_ (##fxquotient _%size94319%_ '2))
                 (_%start94325%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94316%_ _%entries94322%_)
                   '1)))
            (let _%loop94329%_ ((_%probe94332%_ _%start94325%_)
                                (_%i94334%_ '1)
                                (_%deleted94336%_ '#f))
              (let ((_%k94339%_ (vector-ref _%table94313%_ _%probe94332%_)))
                (if (eq? _%k94339%_ (macro-unused-obj))
                    _%default94311%_
                    (if (eq? _%k94339%_ (macro-deleted-obj))
                        (_%loop94329%_
                         (let ((_%next-probe94344%_
                                (fx+ _%start94325%_
                                     _%i94334%_
                                     (fx* _%i94334%_ _%i94334%_))))
                           (##fxmodulo _%next-probe94344%_ _%size94319%_))
                         (##fx+ _%i94334%_ '1)
                         (let ((_%$e94347%_ _%deleted94336%_))
                           (if _%$e94347%_ _%$e94347%_ _%probe94332%_)))
                        (if (eqv? _%key94310%_ _%k94339%_)
                            (vector-ref
                             _%table94313%_
                             (##fx+ _%probe94332%_ '1))
                            (_%loop94329%_
                             (let ((_%next-probe94352%_
                                    (fx+ _%start94325%_
                                         _%i94334%_
                                         (fx* _%i94334%_ _%i94334%_))))
                               (##fxmodulo _%next-probe94352%_ _%size94319%_))
                             (##fx+ _%i94334%_ '1)
                             _%deleted94336%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab94305%_ _%key94306%_ _%value94307%_)
        (if (##fx< (&raw-table-free _%tab94305%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94305%_))
                    '4))
            (__raw-table-rehash! _%tab94305%_)
            '#!void)
        (__eqv-table-set! _%tab94305%_ _%key94306%_ _%value94307%_)))
    (define __eqv-table-set!
      (lambda (_%tab94256%_ _%key94257%_ _%value94258%_)
        (let ((_%table94261%_ (&raw-table-table _%tab94256%_))
              (_%seed94262%_ (&raw-table-seed _%tab94256%_)))
          (let* ((_%h94264%_ (fxxor (eqv-hash _%key94257%_) _%seed94262%_))
                 (_%size94267%_ (vector-length _%table94261%_))
                 (_%entries94270%_ (##fxquotient _%size94267%_ '2))
                 (_%start94273%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94264%_ _%entries94270%_)
                   '1)))
            (let _%loop94277%_ ((_%probe94280%_ _%start94273%_)
                                (_%i94282%_ '1)
                                (_%deleted94284%_ '#f))
              (let ((_%k94287%_ (vector-ref _%table94261%_ _%probe94280%_)))
                (if (eq? _%k94287%_ (macro-unused-obj))
                    (if _%deleted94284%_
                        (begin
                          (vector-set!
                           _%table94261%_
                           _%deleted94284%_
                           _%key94257%_)
                          (vector-set!
                           _%table94261%_
                           (##fx+ _%deleted94284%_ '1)
                           _%value94258%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94256%_
                              (##fx+ (&raw-table-count _%tab94256%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94261%_
                           _%probe94280%_
                           _%key94257%_)
                          (vector-set!
                           _%table94261%_
                           (##fx+ _%probe94280%_ '1)
                           _%value94258%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94256%_
                              (##fx- (&raw-table-free _%tab94256%_) '1))
                             (&raw-table-count-set!
                              _%tab94256%_
                              (##fx+ (&raw-table-count _%tab94256%_) '1))))))
                    (if (eq? _%k94287%_ (macro-deleted-obj))
                        (_%loop94277%_
                         (let ((_%next-probe94294%_
                                (fx+ _%start94273%_
                                     _%i94282%_
                                     (fx* _%i94282%_ _%i94282%_))))
                           (##fxmodulo _%next-probe94294%_ _%size94267%_))
                         (##fx+ _%i94282%_ '1)
                         (let ((_%$e94297%_ _%deleted94284%_))
                           (if _%$e94297%_ _%$e94297%_ _%probe94280%_)))
                        (if (eqv? _%key94257%_ _%k94287%_)
                            (let ()
                              (vector-set!
                               _%table94261%_
                               _%probe94280%_
                               _%key94257%_)
                              (vector-set!
                               _%table94261%_
                               (##fx+ _%probe94280%_ '1)
                               _%value94258%_))
                            (_%loop94277%_
                             (let ((_%next-probe94302%_
                                    (fx+ _%start94273%_
                                         _%i94282%_
                                         (fx* _%i94282%_ _%i94282%_))))
                               (##fxmodulo _%next-probe94302%_ _%size94267%_))
                             (##fx+ _%i94282%_ '1)
                             _%deleted94284%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab94251%_
               _%key94252%_
               _%eqv-table-update!94253%_
               _%default94254%_)
        (if (##fx< (&raw-table-free _%tab94251%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94251%_))
                    '4))
            (__raw-table-rehash! _%tab94251%_)
            '#!void)
        (__eqv-table-update!
         _%tab94251%_
         _%key94252%_
         _%eqv-table-update!94253%_
         _%default94254%_)))
    (define __eqv-table-update!
      (lambda (_%tab94201%_
               _%key94202%_
               _%eqv-table-update!94203%_
               _%default94204%_)
        (let ((_%table94207%_ (&raw-table-table _%tab94201%_))
              (_%seed94208%_ (&raw-table-seed _%tab94201%_)))
          (let* ((_%h94210%_ (fxxor (eqv-hash _%key94202%_) _%seed94208%_))
                 (_%size94213%_ (vector-length _%table94207%_))
                 (_%entries94216%_ (##fxquotient _%size94213%_ '2))
                 (_%start94219%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94210%_ _%entries94216%_)
                   '1)))
            (let _%loop94223%_ ((_%probe94226%_ _%start94219%_)
                                (_%i94228%_ '1)
                                (_%deleted94230%_ '#f))
              (let ((_%k94233%_ (vector-ref _%table94207%_ _%probe94226%_)))
                (if (eq? _%k94233%_ (macro-unused-obj))
                    (if _%deleted94230%_
                        (begin
                          (vector-set!
                           _%table94207%_
                           _%deleted94230%_
                           _%key94202%_)
                          (vector-set!
                           _%table94207%_
                           (##fx+ _%deleted94230%_ '1)
                           (_%eqv-table-update!94203%_ _%default94204%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94201%_
                              (##fx+ (&raw-table-count _%tab94201%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94207%_
                           _%probe94226%_
                           _%key94202%_)
                          (vector-set!
                           _%table94207%_
                           (##fx+ _%probe94226%_ '1)
                           (_%eqv-table-update!94203%_ _%default94204%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94201%_
                              (##fx- (&raw-table-free _%tab94201%_) '1))
                             (&raw-table-count-set!
                              _%tab94201%_
                              (##fx+ (&raw-table-count _%tab94201%_) '1))))))
                    (if (eq? _%k94233%_ (macro-deleted-obj))
                        (_%loop94223%_
                         (let ((_%next-probe94240%_
                                (fx+ _%start94219%_
                                     _%i94228%_
                                     (fx* _%i94228%_ _%i94228%_))))
                           (##fxmodulo _%next-probe94240%_ _%size94213%_))
                         (##fx+ _%i94228%_ '1)
                         (let ((_%$e94243%_ _%deleted94230%_))
                           (if _%$e94243%_ _%$e94243%_ _%probe94226%_)))
                        (if (eqv? _%key94202%_ _%k94233%_)
                            (let ()
                              (vector-set!
                               _%table94207%_
                               _%probe94226%_
                               _%key94202%_)
                              (vector-set!
                               _%table94207%_
                               (##fx+ _%probe94226%_ '1)
                               (_%eqv-table-update!94203%_
                                (vector-ref
                                 _%table94207%_
                                 (##fx+ _%probe94226%_ '1)))))
                            (_%loop94223%_
                             (let ((_%next-probe94248%_
                                    (fx+ _%start94219%_
                                         _%i94228%_
                                         (fx* _%i94228%_ _%i94228%_))))
                               (##fxmodulo _%next-probe94248%_ _%size94213%_))
                             (##fx+ _%i94228%_ '1)
                             _%deleted94230%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab94156%_ _%key94158%_)
        (let ((_%table94161%_ (&raw-table-table _%tab94156%_))
              (_%seed94163%_ (&raw-table-seed _%tab94156%_)))
          (let* ((_%h94166%_ (fxxor (eqv-hash _%key94158%_) _%seed94163%_))
                 (_%size94169%_ (vector-length _%table94161%_))
                 (_%entries94172%_ (##fxquotient _%size94169%_ '2))
                 (_%start94175%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94166%_ _%entries94172%_)
                   '1)))
            (let _%loop94179%_ ((_%probe94182%_ _%start94175%_)
                                (_%i94184%_ '1))
              (let ((_%k94187%_ (vector-ref _%table94161%_ _%probe94182%_)))
                (if (eq? _%k94187%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94187%_ (macro-deleted-obj))
                        (_%loop94179%_
                         (let ((_%next-probe94192%_
                                (fx+ _%start94175%_
                                     _%i94184%_
                                     (fx* _%i94184%_ _%i94184%_))))
                           (##fxmodulo _%next-probe94192%_ _%size94169%_))
                         (##fx+ _%i94184%_ '1))
                        (if (eqv? _%key94158%_ _%k94187%_)
                            (let ()
                              (vector-set!
                               _%table94161%_
                               _%probe94182%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94161%_
                               (##fx+ _%probe94182%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94156%_
                                  (##fx- (&raw-table-count _%tab94156%_)
                                         '1)))))
                            (_%loop94179%_
                             (let ((_%next-probe94198%_
                                    (fx+ _%start94175%_
                                         _%i94184%_
                                         (fx* _%i94184%_ _%i94184%_))))
                               (##fxmodulo _%next-probe94198%_ _%size94169%_))
                             (##fx+ _%i94184%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint94137%_ _%seed94139%_)
        (make-raw-table__%
         _%size-hint94137%_
         symbolic-hash
         eq?
         _%seed94139%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint94145%_ '#f) (_%seed94147%_ '0))
          (make-symbolic-table__% _%size-hint94145%_ _%seed94147%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint94149%_)
        (let ((_%seed94151%_ '0))
          (make-symbolic-table__% _%size-hint94149%_ _%seed94151%_))))
    (define make-symbolic-table
      (lambda _g94935_
        (let ((_g94934_ (##length _g94935_)))
          (cond ((##fx= _g94934_ 0) (apply make-symbolic-table__0 _g94935_))
                ((##fx= _g94934_ 1) (apply make-symbolic-table__1 _g94935_))
                ((##fx= _g94934_ 2) (apply make-symbolic-table__% _g94935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g94935_))))))
    (define symbolic-table-ref
      (lambda (_%tab94090%_ _%key94091%_ _%default94092%_)
        (let ((_%table94094%_ (&raw-table-table _%tab94090%_))
              (_%seed94095%_ (&raw-table-seed _%tab94090%_)))
          (let* ((_%h94097%_
                  (fxxor (##symbol-hash _%key94091%_) _%seed94095%_))
                 (_%size94100%_ (vector-length _%table94094%_))
                 (_%entries94103%_ (##fxquotient _%size94100%_ '2))
                 (_%start94106%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94097%_ _%entries94103%_)
                   '1)))
            (let _%loop94110%_ ((_%probe94113%_ _%start94106%_)
                                (_%i94115%_ '1)
                                (_%deleted94117%_ '#f))
              (let ((_%k94120%_ (vector-ref _%table94094%_ _%probe94113%_)))
                (if (eq? _%k94120%_ (macro-unused-obj))
                    _%default94092%_
                    (if (eq? _%k94120%_ (macro-deleted-obj))
                        (_%loop94110%_
                         (let ((_%next-probe94125%_
                                (fx+ _%start94106%_
                                     _%i94115%_
                                     (fx* _%i94115%_ _%i94115%_))))
                           (##fxmodulo _%next-probe94125%_ _%size94100%_))
                         (##fx+ _%i94115%_ '1)
                         (let ((_%$e94128%_ _%deleted94117%_))
                           (if _%$e94128%_ _%$e94128%_ _%probe94113%_)))
                        (if (eq? _%key94091%_ _%k94120%_)
                            (vector-ref
                             _%table94094%_
                             (##fx+ _%probe94113%_ '1))
                            (_%loop94110%_
                             (let ((_%next-probe94133%_
                                    (fx+ _%start94106%_
                                         _%i94115%_
                                         (fx* _%i94115%_ _%i94115%_))))
                               (##fxmodulo _%next-probe94133%_ _%size94100%_))
                             (##fx+ _%i94115%_ '1)
                             _%deleted94117%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab94086%_ _%key94087%_ _%value94088%_)
        (if (##fx< (&raw-table-free _%tab94086%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94086%_))
                    '4))
            (__raw-table-rehash! _%tab94086%_)
            '#!void)
        (__symbolic-table-set! _%tab94086%_ _%key94087%_ _%value94088%_)))
    (define __symbolic-table-set!
      (lambda (_%tab94037%_ _%key94038%_ _%value94039%_)
        (let ((_%table94042%_ (&raw-table-table _%tab94037%_))
              (_%seed94043%_ (&raw-table-seed _%tab94037%_)))
          (let* ((_%h94045%_
                  (fxxor (##symbol-hash _%key94038%_) _%seed94043%_))
                 (_%size94048%_ (vector-length _%table94042%_))
                 (_%entries94051%_ (##fxquotient _%size94048%_ '2))
                 (_%start94054%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94045%_ _%entries94051%_)
                   '1)))
            (let _%loop94058%_ ((_%probe94061%_ _%start94054%_)
                                (_%i94063%_ '1)
                                (_%deleted94065%_ '#f))
              (let ((_%k94068%_ (vector-ref _%table94042%_ _%probe94061%_)))
                (if (eq? _%k94068%_ (macro-unused-obj))
                    (if _%deleted94065%_
                        (begin
                          (vector-set!
                           _%table94042%_
                           _%deleted94065%_
                           _%key94038%_)
                          (vector-set!
                           _%table94042%_
                           (##fx+ _%deleted94065%_ '1)
                           _%value94039%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94037%_
                              (##fx+ (&raw-table-count _%tab94037%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94042%_
                           _%probe94061%_
                           _%key94038%_)
                          (vector-set!
                           _%table94042%_
                           (##fx+ _%probe94061%_ '1)
                           _%value94039%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94037%_
                              (##fx- (&raw-table-free _%tab94037%_) '1))
                             (&raw-table-count-set!
                              _%tab94037%_
                              (##fx+ (&raw-table-count _%tab94037%_) '1))))))
                    (if (eq? _%k94068%_ (macro-deleted-obj))
                        (_%loop94058%_
                         (let ((_%next-probe94075%_
                                (fx+ _%start94054%_
                                     _%i94063%_
                                     (fx* _%i94063%_ _%i94063%_))))
                           (##fxmodulo _%next-probe94075%_ _%size94048%_))
                         (##fx+ _%i94063%_ '1)
                         (let ((_%$e94078%_ _%deleted94065%_))
                           (if _%$e94078%_ _%$e94078%_ _%probe94061%_)))
                        (if (eq? _%key94038%_ _%k94068%_)
                            (let ()
                              (vector-set!
                               _%table94042%_
                               _%probe94061%_
                               _%key94038%_)
                              (vector-set!
                               _%table94042%_
                               (##fx+ _%probe94061%_ '1)
                               _%value94039%_))
                            (_%loop94058%_
                             (let ((_%next-probe94083%_
                                    (fx+ _%start94054%_
                                         _%i94063%_
                                         (fx* _%i94063%_ _%i94063%_))))
                               (##fxmodulo _%next-probe94083%_ _%size94048%_))
                             (##fx+ _%i94063%_ '1)
                             _%deleted94065%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab94032%_
               _%key94033%_
               _%symbolic-table-update!94034%_
               _%default94035%_)
        (if (##fx< (&raw-table-free _%tab94032%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94032%_))
                    '4))
            (__raw-table-rehash! _%tab94032%_)
            '#!void)
        (__symbolic-table-update!
         _%tab94032%_
         _%key94033%_
         _%symbolic-table-update!94034%_
         _%default94035%_)))
    (define __symbolic-table-update!
      (lambda (_%tab93982%_
               _%key93983%_
               _%symbolic-table-update!93984%_
               _%default93985%_)
        (let ((_%table93988%_ (&raw-table-table _%tab93982%_))
              (_%seed93989%_ (&raw-table-seed _%tab93982%_)))
          (let* ((_%h93991%_
                  (fxxor (##symbol-hash _%key93983%_) _%seed93989%_))
                 (_%size93994%_ (vector-length _%table93988%_))
                 (_%entries93997%_ (##fxquotient _%size93994%_ '2))
                 (_%start94000%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93991%_ _%entries93997%_)
                   '1)))
            (let _%loop94004%_ ((_%probe94007%_ _%start94000%_)
                                (_%i94009%_ '1)
                                (_%deleted94011%_ '#f))
              (let ((_%k94014%_ (vector-ref _%table93988%_ _%probe94007%_)))
                (if (eq? _%k94014%_ (macro-unused-obj))
                    (if _%deleted94011%_
                        (begin
                          (vector-set!
                           _%table93988%_
                           _%deleted94011%_
                           _%key93983%_)
                          (vector-set!
                           _%table93988%_
                           (##fx+ _%deleted94011%_ '1)
                           (_%symbolic-table-update!93984%_ _%default93985%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93982%_
                              (##fx+ (&raw-table-count _%tab93982%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93988%_
                           _%probe94007%_
                           _%key93983%_)
                          (vector-set!
                           _%table93988%_
                           (##fx+ _%probe94007%_ '1)
                           (_%symbolic-table-update!93984%_ _%default93985%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93982%_
                              (##fx- (&raw-table-free _%tab93982%_) '1))
                             (&raw-table-count-set!
                              _%tab93982%_
                              (##fx+ (&raw-table-count _%tab93982%_) '1))))))
                    (if (eq? _%k94014%_ (macro-deleted-obj))
                        (_%loop94004%_
                         (let ((_%next-probe94021%_
                                (fx+ _%start94000%_
                                     _%i94009%_
                                     (fx* _%i94009%_ _%i94009%_))))
                           (##fxmodulo _%next-probe94021%_ _%size93994%_))
                         (##fx+ _%i94009%_ '1)
                         (let ((_%$e94024%_ _%deleted94011%_))
                           (if _%$e94024%_ _%$e94024%_ _%probe94007%_)))
                        (if (eq? _%key93983%_ _%k94014%_)
                            (let ()
                              (vector-set!
                               _%table93988%_
                               _%probe94007%_
                               _%key93983%_)
                              (vector-set!
                               _%table93988%_
                               (##fx+ _%probe94007%_ '1)
                               (_%symbolic-table-update!93984%_
                                (vector-ref
                                 _%table93988%_
                                 (##fx+ _%probe94007%_ '1)))))
                            (_%loop94004%_
                             (let ((_%next-probe94029%_
                                    (fx+ _%start94000%_
                                         _%i94009%_
                                         (fx* _%i94009%_ _%i94009%_))))
                               (##fxmodulo _%next-probe94029%_ _%size93994%_))
                             (##fx+ _%i94009%_ '1)
                             _%deleted94011%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab93937%_ _%key93939%_)
        (let ((_%table93942%_ (&raw-table-table _%tab93937%_))
              (_%seed93944%_ (&raw-table-seed _%tab93937%_)))
          (let* ((_%h93947%_
                  (fxxor (##symbol-hash _%key93939%_) _%seed93944%_))
                 (_%size93950%_ (vector-length _%table93942%_))
                 (_%entries93953%_ (##fxquotient _%size93950%_ '2))
                 (_%start93956%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93947%_ _%entries93953%_)
                   '1)))
            (let _%loop93960%_ ((_%probe93963%_ _%start93956%_)
                                (_%i93965%_ '1))
              (let ((_%k93968%_ (vector-ref _%table93942%_ _%probe93963%_)))
                (if (eq? _%k93968%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93968%_ (macro-deleted-obj))
                        (_%loop93960%_
                         (let ((_%next-probe93973%_
                                (fx+ _%start93956%_
                                     _%i93965%_
                                     (fx* _%i93965%_ _%i93965%_))))
                           (##fxmodulo _%next-probe93973%_ _%size93950%_))
                         (##fx+ _%i93965%_ '1))
                        (if (eq? _%key93939%_ _%k93968%_)
                            (let ()
                              (vector-set!
                               _%table93942%_
                               _%probe93963%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93942%_
                               (##fx+ _%probe93963%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93937%_
                                  (##fx- (&raw-table-count _%tab93937%_)
                                         '1)))))
                            (_%loop93960%_
                             (let ((_%next-probe93979%_
                                    (fx+ _%start93956%_
                                         _%i93965%_
                                         (fx* _%i93965%_ _%i93965%_))))
                               (##fxmodulo _%next-probe93979%_ _%size93950%_))
                             (##fx+ _%i93965%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint93918%_ _%seed93920%_)
        (make-raw-table__%
         _%size-hint93918%_
         string-hash
         ##string=?
         _%seed93920%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint93926%_ '#f) (_%seed93928%_ '0))
          (make-string-table__% _%size-hint93926%_ _%seed93928%_))))
    (define make-string-table__1
      (lambda (_%size-hint93930%_)
        (let ((_%seed93932%_ '0))
          (make-string-table__% _%size-hint93930%_ _%seed93932%_))))
    (define make-string-table
      (lambda _g94937_
        (let ((_g94936_ (##length _g94937_)))
          (cond ((##fx= _g94936_ 0) (apply make-string-table__0 _g94937_))
                ((##fx= _g94936_ 1) (apply make-string-table__1 _g94937_))
                ((##fx= _g94936_ 2) (apply make-string-table__% _g94937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g94937_))))))
    (define string-table-ref
      (lambda (_%tab93871%_ _%key93872%_ _%default93873%_)
        (let ((_%table93875%_ (&raw-table-table _%tab93871%_))
              (_%seed93876%_ (&raw-table-seed _%tab93871%_)))
          (let* ((_%h93878%_
                  (fxxor (##string=?-hash _%key93872%_) _%seed93876%_))
                 (_%size93881%_ (vector-length _%table93875%_))
                 (_%entries93884%_ (##fxquotient _%size93881%_ '2))
                 (_%start93887%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93878%_ _%entries93884%_)
                   '1)))
            (let _%loop93891%_ ((_%probe93894%_ _%start93887%_)
                                (_%i93896%_ '1)
                                (_%deleted93898%_ '#f))
              (let ((_%k93901%_ (vector-ref _%table93875%_ _%probe93894%_)))
                (if (eq? _%k93901%_ (macro-unused-obj))
                    _%default93873%_
                    (if (eq? _%k93901%_ (macro-deleted-obj))
                        (_%loop93891%_
                         (let ((_%next-probe93906%_
                                (fx+ _%start93887%_
                                     _%i93896%_
                                     (fx* _%i93896%_ _%i93896%_))))
                           (##fxmodulo _%next-probe93906%_ _%size93881%_))
                         (##fx+ _%i93896%_ '1)
                         (let ((_%$e93909%_ _%deleted93898%_))
                           (if _%$e93909%_ _%$e93909%_ _%probe93894%_)))
                        (if (##string=? _%key93872%_ _%k93901%_)
                            (vector-ref
                             _%table93875%_
                             (##fx+ _%probe93894%_ '1))
                            (_%loop93891%_
                             (let ((_%next-probe93914%_
                                    (fx+ _%start93887%_
                                         _%i93896%_
                                         (fx* _%i93896%_ _%i93896%_))))
                               (##fxmodulo _%next-probe93914%_ _%size93881%_))
                             (##fx+ _%i93896%_ '1)
                             _%deleted93898%_))))))))))
    (define string-table-set!
      (lambda (_%tab93867%_ _%key93868%_ _%value93869%_)
        (if (##fx< (&raw-table-free _%tab93867%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93867%_))
                    '4))
            (__raw-table-rehash! _%tab93867%_)
            '#!void)
        (__string-table-set! _%tab93867%_ _%key93868%_ _%value93869%_)))
    (define __string-table-set!
      (lambda (_%tab93818%_ _%key93819%_ _%value93820%_)
        (let ((_%table93823%_ (&raw-table-table _%tab93818%_))
              (_%seed93824%_ (&raw-table-seed _%tab93818%_)))
          (let* ((_%h93826%_
                  (fxxor (##string=?-hash _%key93819%_) _%seed93824%_))
                 (_%size93829%_ (vector-length _%table93823%_))
                 (_%entries93832%_ (##fxquotient _%size93829%_ '2))
                 (_%start93835%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93826%_ _%entries93832%_)
                   '1)))
            (let _%loop93839%_ ((_%probe93842%_ _%start93835%_)
                                (_%i93844%_ '1)
                                (_%deleted93846%_ '#f))
              (let ((_%k93849%_ (vector-ref _%table93823%_ _%probe93842%_)))
                (if (eq? _%k93849%_ (macro-unused-obj))
                    (if _%deleted93846%_
                        (begin
                          (vector-set!
                           _%table93823%_
                           _%deleted93846%_
                           _%key93819%_)
                          (vector-set!
                           _%table93823%_
                           (##fx+ _%deleted93846%_ '1)
                           _%value93820%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93818%_
                              (##fx+ (&raw-table-count _%tab93818%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93823%_
                           _%probe93842%_
                           _%key93819%_)
                          (vector-set!
                           _%table93823%_
                           (##fx+ _%probe93842%_ '1)
                           _%value93820%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93818%_
                              (##fx- (&raw-table-free _%tab93818%_) '1))
                             (&raw-table-count-set!
                              _%tab93818%_
                              (##fx+ (&raw-table-count _%tab93818%_) '1))))))
                    (if (eq? _%k93849%_ (macro-deleted-obj))
                        (_%loop93839%_
                         (let ((_%next-probe93856%_
                                (fx+ _%start93835%_
                                     _%i93844%_
                                     (fx* _%i93844%_ _%i93844%_))))
                           (##fxmodulo _%next-probe93856%_ _%size93829%_))
                         (##fx+ _%i93844%_ '1)
                         (let ((_%$e93859%_ _%deleted93846%_))
                           (if _%$e93859%_ _%$e93859%_ _%probe93842%_)))
                        (if (##string=? _%key93819%_ _%k93849%_)
                            (let ()
                              (vector-set!
                               _%table93823%_
                               _%probe93842%_
                               _%key93819%_)
                              (vector-set!
                               _%table93823%_
                               (##fx+ _%probe93842%_ '1)
                               _%value93820%_))
                            (_%loop93839%_
                             (let ((_%next-probe93864%_
                                    (fx+ _%start93835%_
                                         _%i93844%_
                                         (fx* _%i93844%_ _%i93844%_))))
                               (##fxmodulo _%next-probe93864%_ _%size93829%_))
                             (##fx+ _%i93844%_ '1)
                             _%deleted93846%_))))))))))
    (define string-table-update!
      (lambda (_%tab93813%_
               _%key93814%_
               _%string-table-update!93815%_
               _%default93816%_)
        (if (##fx< (&raw-table-free _%tab93813%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93813%_))
                    '4))
            (__raw-table-rehash! _%tab93813%_)
            '#!void)
        (__string-table-update!
         _%tab93813%_
         _%key93814%_
         _%string-table-update!93815%_
         _%default93816%_)))
    (define __string-table-update!
      (lambda (_%tab93763%_
               _%key93764%_
               _%string-table-update!93765%_
               _%default93766%_)
        (let ((_%table93769%_ (&raw-table-table _%tab93763%_))
              (_%seed93770%_ (&raw-table-seed _%tab93763%_)))
          (let* ((_%h93772%_
                  (fxxor (##string=?-hash _%key93764%_) _%seed93770%_))
                 (_%size93775%_ (vector-length _%table93769%_))
                 (_%entries93778%_ (##fxquotient _%size93775%_ '2))
                 (_%start93781%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93772%_ _%entries93778%_)
                   '1)))
            (let _%loop93785%_ ((_%probe93788%_ _%start93781%_)
                                (_%i93790%_ '1)
                                (_%deleted93792%_ '#f))
              (let ((_%k93795%_ (vector-ref _%table93769%_ _%probe93788%_)))
                (if (eq? _%k93795%_ (macro-unused-obj))
                    (if _%deleted93792%_
                        (begin
                          (vector-set!
                           _%table93769%_
                           _%deleted93792%_
                           _%key93764%_)
                          (vector-set!
                           _%table93769%_
                           (##fx+ _%deleted93792%_ '1)
                           (_%string-table-update!93765%_ _%default93766%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93763%_
                              (##fx+ (&raw-table-count _%tab93763%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93769%_
                           _%probe93788%_
                           _%key93764%_)
                          (vector-set!
                           _%table93769%_
                           (##fx+ _%probe93788%_ '1)
                           (_%string-table-update!93765%_ _%default93766%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93763%_
                              (##fx- (&raw-table-free _%tab93763%_) '1))
                             (&raw-table-count-set!
                              _%tab93763%_
                              (##fx+ (&raw-table-count _%tab93763%_) '1))))))
                    (if (eq? _%k93795%_ (macro-deleted-obj))
                        (_%loop93785%_
                         (let ((_%next-probe93802%_
                                (fx+ _%start93781%_
                                     _%i93790%_
                                     (fx* _%i93790%_ _%i93790%_))))
                           (##fxmodulo _%next-probe93802%_ _%size93775%_))
                         (##fx+ _%i93790%_ '1)
                         (let ((_%$e93805%_ _%deleted93792%_))
                           (if _%$e93805%_ _%$e93805%_ _%probe93788%_)))
                        (if (##string=? _%key93764%_ _%k93795%_)
                            (let ()
                              (vector-set!
                               _%table93769%_
                               _%probe93788%_
                               _%key93764%_)
                              (vector-set!
                               _%table93769%_
                               (##fx+ _%probe93788%_ '1)
                               (_%string-table-update!93765%_
                                (vector-ref
                                 _%table93769%_
                                 (##fx+ _%probe93788%_ '1)))))
                            (_%loop93785%_
                             (let ((_%next-probe93810%_
                                    (fx+ _%start93781%_
                                         _%i93790%_
                                         (fx* _%i93790%_ _%i93790%_))))
                               (##fxmodulo _%next-probe93810%_ _%size93775%_))
                             (##fx+ _%i93790%_ '1)
                             _%deleted93792%_))))))))))
    (define string-table-delete!
      (lambda (_%tab93718%_ _%key93720%_)
        (let ((_%table93723%_ (&raw-table-table _%tab93718%_))
              (_%seed93725%_ (&raw-table-seed _%tab93718%_)))
          (let* ((_%h93728%_
                  (fxxor (##string=?-hash _%key93720%_) _%seed93725%_))
                 (_%size93731%_ (vector-length _%table93723%_))
                 (_%entries93734%_ (##fxquotient _%size93731%_ '2))
                 (_%start93737%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93728%_ _%entries93734%_)
                   '1)))
            (let _%loop93741%_ ((_%probe93744%_ _%start93737%_)
                                (_%i93746%_ '1))
              (let ((_%k93749%_ (vector-ref _%table93723%_ _%probe93744%_)))
                (if (eq? _%k93749%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93749%_ (macro-deleted-obj))
                        (_%loop93741%_
                         (let ((_%next-probe93754%_
                                (fx+ _%start93737%_
                                     _%i93746%_
                                     (fx* _%i93746%_ _%i93746%_))))
                           (##fxmodulo _%next-probe93754%_ _%size93731%_))
                         (##fx+ _%i93746%_ '1))
                        (if (##string=? _%key93720%_ _%k93749%_)
                            (let ()
                              (vector-set!
                               _%table93723%_
                               _%probe93744%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93723%_
                               (##fx+ _%probe93744%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93718%_
                                  (##fx- (&raw-table-count _%tab93718%_)
                                         '1)))))
                            (_%loop93741%_
                             (let ((_%next-probe93760%_
                                    (fx+ _%start93737%_
                                         _%i93746%_
                                         (fx* _%i93746%_ _%i93746%_))))
                               (##fxmodulo _%next-probe93760%_ _%size93731%_))
                             (##fx+ _%i93746%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint93699%_ _%seed93701%_)
        (make-raw-table__%
         _%size-hint93699%_
         immediate-hash
         eq?
         _%seed93701%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint93707%_ '#f) (_%seed93709%_ '0))
          (make-immediate-table__% _%size-hint93707%_ _%seed93709%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint93711%_)
        (let ((_%seed93713%_ '0))
          (make-immediate-table__% _%size-hint93711%_ _%seed93713%_))))
    (define make-immediate-table
      (lambda _g94939_
        (let ((_g94938_ (##length _g94939_)))
          (cond ((##fx= _g94938_ 0) (apply make-immediate-table__0 _g94939_))
                ((##fx= _g94938_ 1) (apply make-immediate-table__1 _g94939_))
                ((##fx= _g94938_ 2) (apply make-immediate-table__% _g94939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g94939_))))))
    (define immediate-table-ref
      (lambda (_%tab93652%_ _%key93653%_ _%default93654%_)
        (let ((_%table93656%_ (&raw-table-table _%tab93652%_))
              (_%seed93657%_ (&raw-table-seed _%tab93652%_)))
          (let* ((_%h93659%_
                  (fxxor (immediate-hash _%key93653%_) _%seed93657%_))
                 (_%size93662%_ (vector-length _%table93656%_))
                 (_%entries93665%_ (##fxquotient _%size93662%_ '2))
                 (_%start93668%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93659%_ _%entries93665%_)
                   '1)))
            (let _%loop93672%_ ((_%probe93675%_ _%start93668%_)
                                (_%i93677%_ '1)
                                (_%deleted93679%_ '#f))
              (let ((_%k93682%_ (vector-ref _%table93656%_ _%probe93675%_)))
                (if (eq? _%k93682%_ (macro-unused-obj))
                    _%default93654%_
                    (if (eq? _%k93682%_ (macro-deleted-obj))
                        (_%loop93672%_
                         (let ((_%next-probe93687%_
                                (fx+ _%start93668%_
                                     _%i93677%_
                                     (fx* _%i93677%_ _%i93677%_))))
                           (##fxmodulo _%next-probe93687%_ _%size93662%_))
                         (##fx+ _%i93677%_ '1)
                         (let ((_%$e93690%_ _%deleted93679%_))
                           (if _%$e93690%_ _%$e93690%_ _%probe93675%_)))
                        (if (eq? _%key93653%_ _%k93682%_)
                            (vector-ref
                             _%table93656%_
                             (##fx+ _%probe93675%_ '1))
                            (_%loop93672%_
                             (let ((_%next-probe93695%_
                                    (fx+ _%start93668%_
                                         _%i93677%_
                                         (fx* _%i93677%_ _%i93677%_))))
                               (##fxmodulo _%next-probe93695%_ _%size93662%_))
                             (##fx+ _%i93677%_ '1)
                             _%deleted93679%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab93648%_ _%key93649%_ _%value93650%_)
        (if (##fx< (&raw-table-free _%tab93648%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93648%_))
                    '4))
            (__raw-table-rehash! _%tab93648%_)
            '#!void)
        (__immediate-table-set! _%tab93648%_ _%key93649%_ _%value93650%_)))
    (define __immediate-table-set!
      (lambda (_%tab93599%_ _%key93600%_ _%value93601%_)
        (let ((_%table93604%_ (&raw-table-table _%tab93599%_))
              (_%seed93605%_ (&raw-table-seed _%tab93599%_)))
          (let* ((_%h93607%_
                  (fxxor (immediate-hash _%key93600%_) _%seed93605%_))
                 (_%size93610%_ (vector-length _%table93604%_))
                 (_%entries93613%_ (##fxquotient _%size93610%_ '2))
                 (_%start93616%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93607%_ _%entries93613%_)
                   '1)))
            (let _%loop93620%_ ((_%probe93623%_ _%start93616%_)
                                (_%i93625%_ '1)
                                (_%deleted93627%_ '#f))
              (let ((_%k93630%_ (vector-ref _%table93604%_ _%probe93623%_)))
                (if (eq? _%k93630%_ (macro-unused-obj))
                    (if _%deleted93627%_
                        (begin
                          (vector-set!
                           _%table93604%_
                           _%deleted93627%_
                           _%key93600%_)
                          (vector-set!
                           _%table93604%_
                           (##fx+ _%deleted93627%_ '1)
                           _%value93601%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93599%_
                              (##fx+ (&raw-table-count _%tab93599%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93604%_
                           _%probe93623%_
                           _%key93600%_)
                          (vector-set!
                           _%table93604%_
                           (##fx+ _%probe93623%_ '1)
                           _%value93601%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93599%_
                              (##fx- (&raw-table-free _%tab93599%_) '1))
                             (&raw-table-count-set!
                              _%tab93599%_
                              (##fx+ (&raw-table-count _%tab93599%_) '1))))))
                    (if (eq? _%k93630%_ (macro-deleted-obj))
                        (_%loop93620%_
                         (let ((_%next-probe93637%_
                                (fx+ _%start93616%_
                                     _%i93625%_
                                     (fx* _%i93625%_ _%i93625%_))))
                           (##fxmodulo _%next-probe93637%_ _%size93610%_))
                         (##fx+ _%i93625%_ '1)
                         (let ((_%$e93640%_ _%deleted93627%_))
                           (if _%$e93640%_ _%$e93640%_ _%probe93623%_)))
                        (if (eq? _%key93600%_ _%k93630%_)
                            (let ()
                              (vector-set!
                               _%table93604%_
                               _%probe93623%_
                               _%key93600%_)
                              (vector-set!
                               _%table93604%_
                               (##fx+ _%probe93623%_ '1)
                               _%value93601%_))
                            (_%loop93620%_
                             (let ((_%next-probe93645%_
                                    (fx+ _%start93616%_
                                         _%i93625%_
                                         (fx* _%i93625%_ _%i93625%_))))
                               (##fxmodulo _%next-probe93645%_ _%size93610%_))
                             (##fx+ _%i93625%_ '1)
                             _%deleted93627%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab93594%_
               _%key93595%_
               _%immediate-table-update!93596%_
               _%default93597%_)
        (if (##fx< (&raw-table-free _%tab93594%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93594%_))
                    '4))
            (__raw-table-rehash! _%tab93594%_)
            '#!void)
        (__immediate-table-update!
         _%tab93594%_
         _%key93595%_
         _%immediate-table-update!93596%_
         _%default93597%_)))
    (define __immediate-table-update!
      (lambda (_%tab93544%_
               _%key93545%_
               _%immediate-table-update!93546%_
               _%default93547%_)
        (let ((_%table93550%_ (&raw-table-table _%tab93544%_))
              (_%seed93551%_ (&raw-table-seed _%tab93544%_)))
          (let* ((_%h93553%_
                  (fxxor (immediate-hash _%key93545%_) _%seed93551%_))
                 (_%size93556%_ (vector-length _%table93550%_))
                 (_%entries93559%_ (##fxquotient _%size93556%_ '2))
                 (_%start93562%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93553%_ _%entries93559%_)
                   '1)))
            (let _%loop93566%_ ((_%probe93569%_ _%start93562%_)
                                (_%i93571%_ '1)
                                (_%deleted93573%_ '#f))
              (let ((_%k93576%_ (vector-ref _%table93550%_ _%probe93569%_)))
                (if (eq? _%k93576%_ (macro-unused-obj))
                    (if _%deleted93573%_
                        (begin
                          (vector-set!
                           _%table93550%_
                           _%deleted93573%_
                           _%key93545%_)
                          (vector-set!
                           _%table93550%_
                           (##fx+ _%deleted93573%_ '1)
                           (_%immediate-table-update!93546%_ _%default93547%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93544%_
                              (##fx+ (&raw-table-count _%tab93544%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93550%_
                           _%probe93569%_
                           _%key93545%_)
                          (vector-set!
                           _%table93550%_
                           (##fx+ _%probe93569%_ '1)
                           (_%immediate-table-update!93546%_ _%default93547%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93544%_
                              (##fx- (&raw-table-free _%tab93544%_) '1))
                             (&raw-table-count-set!
                              _%tab93544%_
                              (##fx+ (&raw-table-count _%tab93544%_) '1))))))
                    (if (eq? _%k93576%_ (macro-deleted-obj))
                        (_%loop93566%_
                         (let ((_%next-probe93583%_
                                (fx+ _%start93562%_
                                     _%i93571%_
                                     (fx* _%i93571%_ _%i93571%_))))
                           (##fxmodulo _%next-probe93583%_ _%size93556%_))
                         (##fx+ _%i93571%_ '1)
                         (let ((_%$e93586%_ _%deleted93573%_))
                           (if _%$e93586%_ _%$e93586%_ _%probe93569%_)))
                        (if (eq? _%key93545%_ _%k93576%_)
                            (let ()
                              (vector-set!
                               _%table93550%_
                               _%probe93569%_
                               _%key93545%_)
                              (vector-set!
                               _%table93550%_
                               (##fx+ _%probe93569%_ '1)
                               (_%immediate-table-update!93546%_
                                (vector-ref
                                 _%table93550%_
                                 (##fx+ _%probe93569%_ '1)))))
                            (_%loop93566%_
                             (let ((_%next-probe93591%_
                                    (fx+ _%start93562%_
                                         _%i93571%_
                                         (fx* _%i93571%_ _%i93571%_))))
                               (##fxmodulo _%next-probe93591%_ _%size93556%_))
                             (##fx+ _%i93571%_ '1)
                             _%deleted93573%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab93499%_ _%key93501%_)
        (let ((_%table93504%_ (&raw-table-table _%tab93499%_))
              (_%seed93506%_ (&raw-table-seed _%tab93499%_)))
          (let* ((_%h93509%_
                  (fxxor (immediate-hash _%key93501%_) _%seed93506%_))
                 (_%size93512%_ (vector-length _%table93504%_))
                 (_%entries93515%_ (##fxquotient _%size93512%_ '2))
                 (_%start93518%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93509%_ _%entries93515%_)
                   '1)))
            (let _%loop93522%_ ((_%probe93525%_ _%start93518%_)
                                (_%i93527%_ '1))
              (let ((_%k93530%_ (vector-ref _%table93504%_ _%probe93525%_)))
                (if (eq? _%k93530%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93530%_ (macro-deleted-obj))
                        (_%loop93522%_
                         (let ((_%next-probe93535%_
                                (fx+ _%start93518%_
                                     _%i93527%_
                                     (fx* _%i93527%_ _%i93527%_))))
                           (##fxmodulo _%next-probe93535%_ _%size93512%_))
                         (##fx+ _%i93527%_ '1))
                        (if (eq? _%key93501%_ _%k93530%_)
                            (let ()
                              (vector-set!
                               _%table93504%_
                               _%probe93525%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93504%_
                               (##fx+ _%probe93525%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93499%_
                                  (##fx- (&raw-table-count _%tab93499%_)
                                         '1)))))
                            (_%loop93522%_
                             (let ((_%next-probe93541%_
                                    (fx+ _%start93518%_
                                         _%i93527%_
                                         (fx* _%i93527%_ _%i93527%_))))
                               (##fxmodulo _%next-probe93541%_ _%size93512%_))
                             (##fx+ _%i93527%_ '1)))))))))))
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
      (lambda (_%tab93497%_)
        (##unchecked-structure-ref
         _%tab93497%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab93495%_)
        (##unchecked-structure-ref
         _%tab93495%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab93492%_ _%val93493%_)
        (##unchecked-structure-set!
         _%tab93492%_
         _%val93493%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab93489%_ _%val93490%_)
        (##unchecked-structure-set!
         _%tab93489%_
         _%val93490%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint93465%_ _%klass93466%_ _%flags93467%_)
        (let ((_%gcht93469%_
               (__gc-table-new
                (if (fixnum? _%size-hint93465%_) _%size-hint93465%_ '16)
                _%flags93467%_)))
          (##structure _%klass93466%_ _%gcht93469%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint93474%_)
        (let* ((_%klass93476%_ __gc-table::t) (_%flags93478%_ '0))
          (make-gc-table__%
           _%size-hint93474%_
           _%klass93476%_
           _%flags93478%_))))
    (define make-gc-table__1
      (lambda (_%size-hint93480%_ _%klass93481%_)
        (let ((_%flags93483%_ '0))
          (make-gc-table__%
           _%size-hint93480%_
           _%klass93481%_
           _%flags93483%_))))
    (define make-gc-table
      (lambda _g94941_
        (let ((_g94940_ (##length _g94941_)))
          (cond ((##fx= _g94940_ 1) (apply make-gc-table__0 _g94941_))
                ((##fx= _g94940_ 2) (apply make-gc-table__1 _g94941_))
                ((##fx= _g94940_ 3) (apply make-gc-table__% _g94941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g94941_))))))
    (define __gc-table-immediate
      (lambda (_%tab93456%_)
        (let ((_%$e93458%_ (&gc-table-immediate _%tab93456%_)))
          (if _%$e93458%_
              _%$e93458%_
              (let ((_%immediate93462%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab93456%_ _%immediate93462%_)
                _%immediate93462%_)))))
    (define __gc-table-new
      (lambda (_%size93446%_ _%flags93447%_)
        (let* ((_%flags93449%_
                (##fxand _%flags93447%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags93451%_
                (fxior _%flags93449%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht93453%_
                (##gc-hash-table-allocate
                 _%size93446%_
                 _%flags93451%_
                 __gc-table-loads)))
          _%gcht93453%_)))
    (define __gc-table-e
      (lambda (_%tab93441%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht93444%_ (&gc-table-gcht _%tab93441%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht93444%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht93444%_
              (begin
                (__gc-table-rehash! _%tab93441%_)
                (&gc-table-gcht _%tab93441%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab93432%_)
        (let* ((_%old-table93434%_ (&gc-table-gcht _%tab93432%_))
               (_%new-table93436%_
                (##gc-hash-table-resize! _%old-table93434%_ __gc-table-loads))
               (_%gcht93438%_
                (##gc-hash-table-rehash!
                 _%old-table93434%_
                 _%new-table93436%_)))
          (&gc-table-gcht-set! _%tab93432%_ _%gcht93438%_))))
    (define gc-table-ref
      (lambda (_%tab93416%_ _%key93417%_ _%default93418%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93417%_)
            (let* ((_%gcht93422%_ (__gc-table-e _%tab93416%_))
                   (_%value93424%_
                    (##gc-hash-table-ref _%gcht93422%_ _%key93417%_)))
              (if (eq? _%value93424%_ (macro-unused-obj))
                  _%default93418%_
                  _%value93424%_))
            (let ((_%$e93426%_ (&gc-table-immediate _%tab93416%_)))
              (if _%$e93426%_
                  ((lambda (_%immediate93429%_)
                     (immediate-table-ref
                      _%immediate93429%_
                      _%key93417%_
                      _%default93418%_))
                   _%$e93426%_)
                  _%default93418%_)))))
    (define gc-table-set!
      (lambda (_%tab93409%_ _%key93410%_ _%value93411%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93410%_)
            (let ((_%gcht93414%_ (__gc-table-e _%tab93409%_)))
              (if (##gc-hash-table-set!
                   _%gcht93414%_
                   _%key93410%_
                   _%value93411%_)
                  (begin
                    (__gc-table-rehash! _%tab93409%_)
                    (gc-table-set! _%tab93409%_ _%key93410%_ _%value93411%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab93409%_)
             _%key93410%_
             _%value93411%_))))
    (define gc-table-update!
      (lambda (_%tab93402%_ _%key93403%_ _%update93404%_ _%default93405%_)
        (if (##mem-allocated? _%key93403%_)
            (let ((_%value93407%_
                   (gc-table-ref _%tab93402%_ _%key93403%_ _%default93405%_)))
              (gc-table-set!
               _%tab93402%_
               _%key93403%_
               (_%update93404%_ _%value93407%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab93402%_)
             _%key93403%_
             _%update93404%_
             _%default93405%_))))
    (define gc-table-delete!
      (lambda (_%tab93390%_ _%key93391%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93391%_)
            (let ((_%gcht93395%_ (__gc-table-e _%tab93390%_)))
              (if (##gc-hash-table-set!
                   _%gcht93395%_
                   _%key93391%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab93390%_)
                    (gc-table-delete! _%tab93390%_ _%key93391%_))
                  '#!void))
            (let ((_%$e93397%_ (&gc-table-immediate _%tab93390%_)))
              (if _%$e93397%_
                  ((lambda (_%immediate93400%_)
                     (immediate-table-delete! _%immediate93400%_ _%key93391%_))
                   _%$e93397%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab93379%_ _%proc93380%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht93383%_ (__gc-table-e _%tab93379%_)))
            (##gc-hash-table-for-each _%proc93380%_ _%gcht93383%_))
          (let ((_%$e93385%_ (&gc-table-immediate _%tab93379%_)))
            (if _%$e93385%_
                ((lambda (_%immediate93388%_)
                   (raw-table-for-each _%immediate93388%_ _%proc93380%_))
                 _%$e93385%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab93367%_)
        (let* ((_%gcht93369%_ (__gc-table-e _%tab93367%_))
               (_%new-table93371%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht93369%_)
                 (macro-gc-hash-table-flags _%gcht93369%_)))
               (_%result93373%_
                (##structure
                 (##structure-type _%tab93367%_)
                 _%new-table93371%_
                 '#f)))
          (gc-table-for-each
           _%tab93367%_
           (lambda (_%k93376%_ _%v93377%_)
             (gc-table-set! _%result93373%_ _%k93376%_ _%v93377%_)))
          _%result93373%_)))
    (define gc-table-clear!
      (lambda (_%tab93360%_)
        (let* ((_%gcht93362%_ (__gc-table-e _%tab93360%_))
               (_%new-table93364%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht93362%_))))
          (&gc-table-gcht-set! _%tab93360%_ _%new-table93364%_)
          (&gc-table-immediate-set! _%tab93360%_ '#f))))
    (define gc-table-length
      (lambda (_%tab93352%_)
        (let ((_%gcht93354%_ (__gc-table-e _%tab93352%_)))
          (fx+ (macro-gc-hash-table-count _%gcht93354%_)
               (let ((_%$e93356%_ (&gc-table-immediate _%tab93352%_)))
                 (if _%$e93356%_ (&raw-table-count _%$e93356%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj93337%_)
        (declare (not interrupts-enabled))
        (let ((_%val93340%_ (gc-table-ref __object-eq-hash _%obj93337%_ '#f)))
          (if _%val93340%_
              _%val93340%_
              (let* ((_%mix93342%_ __object-eq-hash-next)
                     (_%ptr93344%_ (##type-cast _%obj93337%_ '0))
                     (_%h93346%_
                      (fxand (fxxor _%mix93342%_ _%ptr93344%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e93349%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e93349%_ _%$e93349%_ '0)))
                (gc-table-set! __object-eq-hash _%obj93337%_ _%h93346%_)
                _%h93346%_)))))))
