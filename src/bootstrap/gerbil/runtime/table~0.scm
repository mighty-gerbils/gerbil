(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1742222162)
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
      (lambda (_%tab94908%_)
        (##unchecked-structure-ref
         _%tab94908%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab94906%_)
        (##unchecked-structure-ref
         _%tab94906%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab94904%_)
        (##unchecked-structure-ref
         _%tab94904%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab94902%_)
        (##unchecked-structure-ref
         _%tab94902%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab94900%_)
        (##unchecked-structure-ref
         _%tab94900%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab94898%_)
        (##unchecked-structure-ref
         _%tab94898%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab94895%_ _%val94896%_)
        (##unchecked-structure-set!
         _%tab94895%_
         _%val94896%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab94892%_ _%val94893%_)
        (##unchecked-structure-set!
         _%tab94892%_
         _%val94893%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab94889%_ _%val94890%_)
        (##unchecked-structure-set!
         _%tab94889%_
         _%val94890%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab94886%_ _%val94887%_)
        (##unchecked-structure-set!
         _%tab94886%_
         _%val94887%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab94883%_ _%val94884%_)
        (##unchecked-structure-set!
         _%tab94883%_
         _%val94884%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab94880%_ _%val94881%_)
        (##unchecked-structure-set!
         _%tab94880%_
         _%val94881%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint94878%_)
        (if (and (fixnum? _%size-hint94878%_) (##fx> _%size-hint94878%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint94878%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint94854%_ _%hash94855%_ _%test94856%_ _%seed94857%_)
        (let* ((_%size94859%_ (raw-table-size-hint->size _%size-hint94854%_))
               (_%table94861%_
                (##make-vector _%size94859%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table94861%_
           '0
           (##fxquotient _%size94859%_ '2)
           _%hash94855%_
           _%test94856%_
           _%seed94857%_))))
    (define make-raw-table__0
      (lambda (_%size-hint94867%_ _%hash94868%_ _%test94869%_)
        (let ((_%seed94871%_ '0))
          (make-raw-table__%
           _%size-hint94867%_
           _%hash94868%_
           _%test94869%_
           _%seed94871%_))))
    (define make-raw-table
      (lambda _g94910_
        (let ((_g94909_ (##length _g94910_)))
          (cond ((##fx= _g94909_ 3) (apply make-raw-table__0 _g94910_))
                ((##fx= _g94909_ 4) (apply make-raw-table__% _g94910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g94910_))))))
    (define raw-table-ref
      (lambda (_%tab94805%_ _%key94806%_ _%default94807%_)
        (let ((_%table94809%_ (&raw-table-table _%tab94805%_))
              (_%seed94810%_ (&raw-table-seed _%tab94805%_))
              (_%hash94811%_ (&raw-table-hash _%tab94805%_))
              (_%test94812%_ (&raw-table-test _%tab94805%_)))
          (let* ((_%h94814%_
                  (fxxor (_%hash94811%_ _%key94806%_) _%seed94810%_))
                 (_%size94817%_ (vector-length _%table94809%_))
                 (_%entries94820%_ (##fxquotient _%size94817%_ '2))
                 (_%start94823%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94814%_ _%entries94820%_)
                   '1)))
            (let _%loop94827%_ ((_%probe94830%_ _%start94823%_)
                                (_%i94832%_ '1)
                                (_%deleted94834%_ '#f))
              (let ((_%k94837%_ (vector-ref _%table94809%_ _%probe94830%_)))
                (if (eq? _%k94837%_ (macro-unused-obj))
                    _%default94807%_
                    (if (eq? _%k94837%_ (macro-deleted-obj))
                        (_%loop94827%_
                         (let ((_%next-probe94842%_
                                (fx+ _%start94823%_
                                     _%i94832%_
                                     (fx* _%i94832%_ _%i94832%_))))
                           (##fxmodulo _%next-probe94842%_ _%size94817%_))
                         (##fx+ _%i94832%_ '1)
                         (let ((_%$e94845%_ _%deleted94834%_))
                           (if _%$e94845%_ _%$e94845%_ _%probe94830%_)))
                        (if (_%test94812%_ _%key94806%_ _%k94837%_)
                            (vector-ref
                             _%table94809%_
                             (##fx+ _%probe94830%_ '1))
                            (_%loop94827%_
                             (let ((_%next-probe94850%_
                                    (fx+ _%start94823%_
                                         _%i94832%_
                                         (fx* _%i94832%_ _%i94832%_))))
                               (##fxmodulo _%next-probe94850%_ _%size94817%_))
                             (##fx+ _%i94832%_ '1)
                             _%deleted94834%_))))))))))
    (define raw-table-set!
      (lambda (_%tab94801%_ _%key94802%_ _%value94803%_)
        (if (##fx< (&raw-table-free _%tab94801%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94801%_))
                    '4))
            (__raw-table-rehash! _%tab94801%_)
            '#!void)
        (__raw-table-set! _%tab94801%_ _%key94802%_ _%value94803%_)))
    (define raw-table-update!
      (lambda (_%tab94796%_ _%key94797%_ _%update94798%_ _%default94799%_)
        (if (##fx< (&raw-table-free _%tab94796%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94796%_))
                    '4))
            (__raw-table-rehash! _%tab94796%_)
            '#!void)
        (__raw-table-update!
         _%tab94796%_
         _%key94797%_
         _%update94798%_
         _%default94799%_)))
    (define raw-table-delete!
      (lambda (_%tab94753%_ _%key94754%_)
        (let ((_%table94756%_ (&raw-table-table _%tab94753%_))
              (_%seed94757%_ (&raw-table-seed _%tab94753%_))
              (_%hash94758%_ (&raw-table-hash _%tab94753%_))
              (_%test94759%_ (&raw-table-test _%tab94753%_)))
          (let* ((_%h94761%_
                  (fxxor (_%hash94758%_ _%key94754%_) _%seed94757%_))
                 (_%size94764%_ (vector-length _%table94756%_))
                 (_%entries94767%_ (##fxquotient _%size94764%_ '2))
                 (_%start94770%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94761%_ _%entries94767%_)
                   '1)))
            (let _%loop94774%_ ((_%probe94777%_ _%start94770%_)
                                (_%i94779%_ '1))
              (let ((_%k94782%_ (vector-ref _%table94756%_ _%probe94777%_)))
                (if (eq? _%k94782%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94782%_ (macro-deleted-obj))
                        (_%loop94774%_
                         (let ((_%next-probe94787%_
                                (fx+ _%start94770%_
                                     _%i94779%_
                                     (fx* _%i94779%_ _%i94779%_))))
                           (##fxmodulo _%next-probe94787%_ _%size94764%_))
                         (##fx+ _%i94779%_ '1))
                        (if (_%test94759%_ _%key94754%_ _%k94782%_)
                            (let ()
                              (vector-set!
                               _%table94756%_
                               _%probe94777%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94756%_
                               (##fx+ _%probe94777%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94753%_
                                  (##fx- (&raw-table-count _%tab94753%_)
                                         '1)))))
                            (_%loop94774%_
                             (let ((_%next-probe94793%_
                                    (fx+ _%start94770%_
                                         _%i94779%_
                                         (fx* _%i94779%_ _%i94779%_))))
                               (##fxmodulo _%next-probe94793%_ _%size94764%_))
                             (##fx+ _%i94779%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab94737%_ _%proc94738%_)
        (let* ((_%table94740%_ (&raw-table-table _%tab94737%_))
               (_%size94742%_ (vector-length _%table94740%_)))
          (let _%loop94745%_ ((_%i94747%_ '0))
            (if (##fx< _%i94747%_ _%size94742%_)
                (begin
                  (let ((_%key94749%_ (vector-ref _%table94740%_ _%i94747%_)))
                    (if (if (eq? _%key94749%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94749%_ (macro-deleted-obj))))
                        (let ((_%value94751%_
                               (vector-ref
                                _%table94740%_
                                (##fx+ _%i94747%_ '1))))
                          (_%proc94738%_ _%key94749%_ _%value94751%_))
                        '#!void))
                  (_%loop94745%_ (##fx+ _%i94747%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab94733%_)
        (let ((_%new-tab94735%_ (##structure-copy _%tab94733%_)))
          (&raw-table-table-set!
           _%new-tab94735%_
           (vector-copy (&raw-table-table _%tab94733%_)))
          _%new-tab94735%_)))
    (define raw-table-clear!
      (lambda (_%tab94731%_)
        (vector-fill! (&raw-table-table _%tab94731%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab94731%_ '0)
        (&raw-table-free-set!
         _%tab94731%_
         (##fxquotient (vector-length (&raw-table-table _%tab94731%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab94681%_ _%key94682%_ _%value94683%_)
        (let ((_%table94685%_ (&raw-table-table _%tab94681%_))
              (_%seed94686%_ (&raw-table-seed _%tab94681%_))
              (_%hash94687%_ (&raw-table-hash _%tab94681%_))
              (_%test94688%_ (&raw-table-test _%tab94681%_)))
          (let* ((_%h94690%_
                  (fxxor (_%hash94687%_ _%key94682%_) _%seed94686%_))
                 (_%size94693%_ (vector-length _%table94685%_))
                 (_%entries94696%_ (##fxquotient _%size94693%_ '2))
                 (_%start94699%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94690%_ _%entries94696%_)
                   '1)))
            (let _%loop94703%_ ((_%probe94706%_ _%start94699%_)
                                (_%i94708%_ '1)
                                (_%deleted94710%_ '#f))
              (let ((_%k94713%_ (vector-ref _%table94685%_ _%probe94706%_)))
                (if (eq? _%k94713%_ (macro-unused-obj))
                    (if _%deleted94710%_
                        (begin
                          (vector-set!
                           _%table94685%_
                           _%deleted94710%_
                           _%key94682%_)
                          (vector-set!
                           _%table94685%_
                           (##fx+ _%deleted94710%_ '1)
                           _%value94683%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94681%_
                              (##fx+ (&raw-table-count _%tab94681%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94685%_
                           _%probe94706%_
                           _%key94682%_)
                          (vector-set!
                           _%table94685%_
                           (##fx+ _%probe94706%_ '1)
                           _%value94683%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94681%_
                              (##fx- (&raw-table-free _%tab94681%_) '1))
                             (&raw-table-count-set!
                              _%tab94681%_
                              (##fx+ (&raw-table-count _%tab94681%_) '1))))))
                    (if (eq? _%k94713%_ (macro-deleted-obj))
                        (_%loop94703%_
                         (let ((_%next-probe94720%_
                                (fx+ _%start94699%_
                                     _%i94708%_
                                     (fx* _%i94708%_ _%i94708%_))))
                           (##fxmodulo _%next-probe94720%_ _%size94693%_))
                         (##fx+ _%i94708%_ '1)
                         (let ((_%$e94723%_ _%deleted94710%_))
                           (if _%$e94723%_ _%$e94723%_ _%probe94706%_)))
                        (if (_%test94688%_ _%key94682%_ _%k94713%_)
                            (let ()
                              (vector-set!
                               _%table94685%_
                               _%probe94706%_
                               _%key94682%_)
                              (vector-set!
                               _%table94685%_
                               (##fx+ _%probe94706%_ '1)
                               _%value94683%_))
                            (_%loop94703%_
                             (let ((_%next-probe94728%_
                                    (fx+ _%start94699%_
                                         _%i94708%_
                                         (fx* _%i94708%_ _%i94708%_))))
                               (##fxmodulo _%next-probe94728%_ _%size94693%_))
                             (##fx+ _%i94708%_ '1)
                             _%deleted94710%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab94630%_ _%key94631%_ _%update94632%_ _%default94633%_)
        (let ((_%table94635%_ (&raw-table-table _%tab94630%_))
              (_%seed94636%_ (&raw-table-seed _%tab94630%_))
              (_%hash94637%_ (&raw-table-hash _%tab94630%_))
              (_%test94638%_ (&raw-table-test _%tab94630%_)))
          (let* ((_%h94640%_
                  (fxxor (_%hash94637%_ _%key94631%_) _%seed94636%_))
                 (_%size94643%_ (vector-length _%table94635%_))
                 (_%entries94646%_ (##fxquotient _%size94643%_ '2))
                 (_%start94649%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94640%_ _%entries94646%_)
                   '1)))
            (let _%loop94653%_ ((_%probe94656%_ _%start94649%_)
                                (_%i94658%_ '1)
                                (_%deleted94660%_ '#f))
              (let ((_%k94663%_ (vector-ref _%table94635%_ _%probe94656%_)))
                (if (eq? _%k94663%_ (macro-unused-obj))
                    (if _%deleted94660%_
                        (begin
                          (vector-set!
                           _%table94635%_
                           _%deleted94660%_
                           _%key94631%_)
                          (vector-set!
                           _%table94635%_
                           (##fx+ _%deleted94660%_ '1)
                           (_%update94632%_ _%default94633%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94630%_
                              (##fx+ (&raw-table-count _%tab94630%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94635%_
                           _%probe94656%_
                           _%key94631%_)
                          (vector-set!
                           _%table94635%_
                           (##fx+ _%probe94656%_ '1)
                           (_%update94632%_ _%default94633%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94630%_
                              (##fx- (&raw-table-free _%tab94630%_) '1))
                             (&raw-table-count-set!
                              _%tab94630%_
                              (##fx+ (&raw-table-count _%tab94630%_) '1))))))
                    (if (eq? _%k94663%_ (macro-deleted-obj))
                        (_%loop94653%_
                         (let ((_%next-probe94670%_
                                (fx+ _%start94649%_
                                     _%i94658%_
                                     (fx* _%i94658%_ _%i94658%_))))
                           (##fxmodulo _%next-probe94670%_ _%size94643%_))
                         (##fx+ _%i94658%_ '1)
                         (let ((_%$e94673%_ _%deleted94660%_))
                           (if _%$e94673%_ _%$e94673%_ _%probe94656%_)))
                        (if (_%test94638%_ _%key94631%_ _%k94663%_)
                            (let ()
                              (vector-set!
                               _%table94635%_
                               _%probe94656%_
                               _%key94631%_)
                              (vector-set!
                               _%table94635%_
                               (##fx+ _%probe94656%_ '1)
                               (_%update94632%_
                                (vector-ref
                                 _%table94635%_
                                 (##fx+ _%probe94656%_ '1)))))
                            (_%loop94653%_
                             (let ((_%next-probe94678%_
                                    (fx+ _%start94649%_
                                         _%i94658%_
                                         (fx* _%i94658%_ _%i94658%_))))
                               (##fxmodulo _%next-probe94678%_ _%size94643%_))
                             (##fx+ _%i94658%_ '1)
                             _%deleted94660%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab94611%_)
        (let* ((_%old-table94613%_ (&raw-table-table _%tab94611%_))
               (_%old-size94615%_ (vector-length _%old-table94613%_))
               (_%new-size94617%_
                (if (##fx< (&raw-table-count _%tab94611%_)
                           (##fxquotient _%old-size94615%_ '4))
                    (vector-length _%old-table94613%_)
                    (##fx* '2 (vector-length _%old-table94613%_))))
               (_%new-table94619%_
                (##make-vector _%new-size94617%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab94611%_ _%new-table94619%_)
          (&raw-table-count-set! _%tab94611%_ '0)
          (&raw-table-free-set!
           _%tab94611%_
           (##fxquotient _%new-size94617%_ '2))
          (let _%lp94622%_ ((_%i94624%_ '0))
            (if (##fx< _%i94624%_ _%old-size94615%_)
                (begin
                  (let ((_%key94626%_
                         (vector-ref _%old-table94613%_ _%i94624%_)))
                    (if (if (eq? _%key94626%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94626%_ (macro-deleted-obj))))
                        (let ((_%value94628%_
                               (vector-ref
                                _%old-table94613%_
                                (##fx+ _%i94624%_ '1))))
                          (__raw-table-set!
                           _%tab94611%_
                           _%key94626%_
                           _%value94628%_))
                        '#!void))
                  (_%lp94622%_ (##fx+ _%i94624%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj94603%_)
        (let ((_%t94605%_ (##type _%obj94603%_)))
          (if (##fx= (##fxand _%t94605%_ '1) '0)
              (fxand (##type-cast _%obj94603%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj94603%_)
                  (##symbol-hash _%obj94603%_)
                  (if (procedure? _%obj94603%_)
                      (procedure-hash _%obj94603%_)
                      (fxand (__eq-hash _%obj94603%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj94599%_)
        (let ((_%h94601%_
               (if (##closure? _%obj94599%_)
                   (__eq-hash _%obj94599%_)
                   (##type-cast _%obj94599%_ '0))))
          (fxand _%h94601%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj94596%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj94596%_)))
    (define eqv-hash
      (lambda (_%obj94586%_)
        (letrec ((_%combine94588%_
                  (lambda (_%a94593%_ _%b94594%_)
                    (fxand (##fx* (##fx+ _%a94593%_
                                         (fxarithmetic-shift-left
                                          _%b94594%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash94589%_
                  (lambda (_%obj94591%_)
                    (macro-number-dispatch
                     _%obj94591%_
                     (eq-hash _%obj94591%_)
                     (fxand _%obj94591%_ (macro-max-fixnum32))
                     (modulo _%obj94591%_ '331804481)
                     (_%combine94588%_
                      (_%hash94589%_ (macro-ratnum-numerator _%obj94591%_))
                      (_%hash94589%_ (macro-ratnum-denominator _%obj94591%_)))
                     (_%combine94588%_
                      (##u16vector-ref _%obj94591%_ '0)
                      (_%combine94588%_
                       (##u16vector-ref _%obj94591%_ '1)
                       (_%combine94588%_
                        (##u16vector-ref _%obj94591%_ '2)
                        (##u16vector-ref _%obj94591%_ '3))))
                     (_%combine94588%_
                      (_%hash94589%_ (macro-cpxnum-real _%obj94591%_))
                      (_%hash94589%_ (macro-cpxnum-imag _%obj94591%_)))))))
          (_%hash94589%_ _%obj94586%_))))
    (define symbolic?
      (lambda (_%obj94581%_)
        (let ((_%$e94583%_ (symbol? _%obj94581%_)))
          (if _%$e94583%_ _%$e94583%_ (keyword? _%obj94581%_)))))
    (define symbolic-hash (lambda (_%obj94579%_) (##symbol-hash _%obj94579%_)))
    (define string-hash (lambda (_%obj94577%_) (##string=?-hash _%obj94577%_)))
    (define immediate-hash
      (lambda (_%obj94575%_) (##type-cast _%obj94575%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint94556%_ _%seed94558%_)
        (make-raw-table__% _%size-hint94556%_ eq-hash eq? _%seed94558%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint94564%_ '#f) (_%seed94566%_ '0))
          (make-eq-table__% _%size-hint94564%_ _%seed94566%_))))
    (define make-eq-table__1
      (lambda (_%size-hint94568%_)
        (let ((_%seed94570%_ '0))
          (make-eq-table__% _%size-hint94568%_ _%seed94570%_))))
    (define make-eq-table
      (lambda _g94912_
        (let ((_g94911_ (##length _g94912_)))
          (cond ((##fx= _g94911_ 0) (apply make-eq-table__0 _g94912_))
                ((##fx= _g94911_ 1) (apply make-eq-table__1 _g94912_))
                ((##fx= _g94911_ 2) (apply make-eq-table__% _g94912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g94912_))))))
    (define eq-table-ref
      (lambda (_%tab94509%_ _%key94510%_ _%default94511%_)
        (let ((_%table94513%_ (&raw-table-table _%tab94509%_))
              (_%seed94514%_ (&raw-table-seed _%tab94509%_)))
          (let* ((_%h94516%_ (fxxor (eq-hash _%key94510%_) _%seed94514%_))
                 (_%size94519%_ (vector-length _%table94513%_))
                 (_%entries94522%_ (##fxquotient _%size94519%_ '2))
                 (_%start94525%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94516%_ _%entries94522%_)
                   '1)))
            (let _%loop94529%_ ((_%probe94532%_ _%start94525%_)
                                (_%i94534%_ '1)
                                (_%deleted94536%_ '#f))
              (let ((_%k94539%_ (vector-ref _%table94513%_ _%probe94532%_)))
                (if (eq? _%k94539%_ (macro-unused-obj))
                    _%default94511%_
                    (if (eq? _%k94539%_ (macro-deleted-obj))
                        (_%loop94529%_
                         (let ((_%next-probe94544%_
                                (fx+ _%start94525%_
                                     _%i94534%_
                                     (fx* _%i94534%_ _%i94534%_))))
                           (##fxmodulo _%next-probe94544%_ _%size94519%_))
                         (##fx+ _%i94534%_ '1)
                         (let ((_%$e94547%_ _%deleted94536%_))
                           (if _%$e94547%_ _%$e94547%_ _%probe94532%_)))
                        (if (eq? _%key94510%_ _%k94539%_)
                            (vector-ref
                             _%table94513%_
                             (##fx+ _%probe94532%_ '1))
                            (_%loop94529%_
                             (let ((_%next-probe94552%_
                                    (fx+ _%start94525%_
                                         _%i94534%_
                                         (fx* _%i94534%_ _%i94534%_))))
                               (##fxmodulo _%next-probe94552%_ _%size94519%_))
                             (##fx+ _%i94534%_ '1)
                             _%deleted94536%_))))))))))
    (define eq-table-set!
      (lambda (_%tab94505%_ _%key94506%_ _%value94507%_)
        (if (##fx< (&raw-table-free _%tab94505%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94505%_))
                    '4))
            (__raw-table-rehash! _%tab94505%_)
            '#!void)
        (__eq-table-set! _%tab94505%_ _%key94506%_ _%value94507%_)))
    (define __eq-table-set!
      (lambda (_%tab94456%_ _%key94457%_ _%value94458%_)
        (let ((_%table94461%_ (&raw-table-table _%tab94456%_))
              (_%seed94462%_ (&raw-table-seed _%tab94456%_)))
          (let* ((_%h94464%_ (fxxor (eq-hash _%key94457%_) _%seed94462%_))
                 (_%size94467%_ (vector-length _%table94461%_))
                 (_%entries94470%_ (##fxquotient _%size94467%_ '2))
                 (_%start94473%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94464%_ _%entries94470%_)
                   '1)))
            (let _%loop94477%_ ((_%probe94480%_ _%start94473%_)
                                (_%i94482%_ '1)
                                (_%deleted94484%_ '#f))
              (let ((_%k94487%_ (vector-ref _%table94461%_ _%probe94480%_)))
                (if (eq? _%k94487%_ (macro-unused-obj))
                    (if _%deleted94484%_
                        (begin
                          (vector-set!
                           _%table94461%_
                           _%deleted94484%_
                           _%key94457%_)
                          (vector-set!
                           _%table94461%_
                           (##fx+ _%deleted94484%_ '1)
                           _%value94458%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94456%_
                              (##fx+ (&raw-table-count _%tab94456%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94461%_
                           _%probe94480%_
                           _%key94457%_)
                          (vector-set!
                           _%table94461%_
                           (##fx+ _%probe94480%_ '1)
                           _%value94458%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94456%_
                              (##fx- (&raw-table-free _%tab94456%_) '1))
                             (&raw-table-count-set!
                              _%tab94456%_
                              (##fx+ (&raw-table-count _%tab94456%_) '1))))))
                    (if (eq? _%k94487%_ (macro-deleted-obj))
                        (_%loop94477%_
                         (let ((_%next-probe94494%_
                                (fx+ _%start94473%_
                                     _%i94482%_
                                     (fx* _%i94482%_ _%i94482%_))))
                           (##fxmodulo _%next-probe94494%_ _%size94467%_))
                         (##fx+ _%i94482%_ '1)
                         (let ((_%$e94497%_ _%deleted94484%_))
                           (if _%$e94497%_ _%$e94497%_ _%probe94480%_)))
                        (if (eq? _%key94457%_ _%k94487%_)
                            (let ()
                              (vector-set!
                               _%table94461%_
                               _%probe94480%_
                               _%key94457%_)
                              (vector-set!
                               _%table94461%_
                               (##fx+ _%probe94480%_ '1)
                               _%value94458%_))
                            (_%loop94477%_
                             (let ((_%next-probe94502%_
                                    (fx+ _%start94473%_
                                         _%i94482%_
                                         (fx* _%i94482%_ _%i94482%_))))
                               (##fxmodulo _%next-probe94502%_ _%size94467%_))
                             (##fx+ _%i94482%_ '1)
                             _%deleted94484%_))))))))))
    (define eq-table-update!
      (lambda (_%tab94451%_
               _%key94452%_
               _%eq-table-update!94453%_
               _%default94454%_)
        (if (##fx< (&raw-table-free _%tab94451%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94451%_))
                    '4))
            (__raw-table-rehash! _%tab94451%_)
            '#!void)
        (__eq-table-update!
         _%tab94451%_
         _%key94452%_
         _%eq-table-update!94453%_
         _%default94454%_)))
    (define __eq-table-update!
      (lambda (_%tab94401%_
               _%key94402%_
               _%eq-table-update!94403%_
               _%default94404%_)
        (let ((_%table94407%_ (&raw-table-table _%tab94401%_))
              (_%seed94408%_ (&raw-table-seed _%tab94401%_)))
          (let* ((_%h94410%_ (fxxor (eq-hash _%key94402%_) _%seed94408%_))
                 (_%size94413%_ (vector-length _%table94407%_))
                 (_%entries94416%_ (##fxquotient _%size94413%_ '2))
                 (_%start94419%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94410%_ _%entries94416%_)
                   '1)))
            (let _%loop94423%_ ((_%probe94426%_ _%start94419%_)
                                (_%i94428%_ '1)
                                (_%deleted94430%_ '#f))
              (let ((_%k94433%_ (vector-ref _%table94407%_ _%probe94426%_)))
                (if (eq? _%k94433%_ (macro-unused-obj))
                    (if _%deleted94430%_
                        (begin
                          (vector-set!
                           _%table94407%_
                           _%deleted94430%_
                           _%key94402%_)
                          (vector-set!
                           _%table94407%_
                           (##fx+ _%deleted94430%_ '1)
                           (_%eq-table-update!94403%_ _%default94404%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94401%_
                              (##fx+ (&raw-table-count _%tab94401%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94407%_
                           _%probe94426%_
                           _%key94402%_)
                          (vector-set!
                           _%table94407%_
                           (##fx+ _%probe94426%_ '1)
                           (_%eq-table-update!94403%_ _%default94404%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94401%_
                              (##fx- (&raw-table-free _%tab94401%_) '1))
                             (&raw-table-count-set!
                              _%tab94401%_
                              (##fx+ (&raw-table-count _%tab94401%_) '1))))))
                    (if (eq? _%k94433%_ (macro-deleted-obj))
                        (_%loop94423%_
                         (let ((_%next-probe94440%_
                                (fx+ _%start94419%_
                                     _%i94428%_
                                     (fx* _%i94428%_ _%i94428%_))))
                           (##fxmodulo _%next-probe94440%_ _%size94413%_))
                         (##fx+ _%i94428%_ '1)
                         (let ((_%$e94443%_ _%deleted94430%_))
                           (if _%$e94443%_ _%$e94443%_ _%probe94426%_)))
                        (if (eq? _%key94402%_ _%k94433%_)
                            (let ()
                              (vector-set!
                               _%table94407%_
                               _%probe94426%_
                               _%key94402%_)
                              (vector-set!
                               _%table94407%_
                               (##fx+ _%probe94426%_ '1)
                               (_%eq-table-update!94403%_
                                (vector-ref
                                 _%table94407%_
                                 (##fx+ _%probe94426%_ '1)))))
                            (_%loop94423%_
                             (let ((_%next-probe94448%_
                                    (fx+ _%start94419%_
                                         _%i94428%_
                                         (fx* _%i94428%_ _%i94428%_))))
                               (##fxmodulo _%next-probe94448%_ _%size94413%_))
                             (##fx+ _%i94428%_ '1)
                             _%deleted94430%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab94356%_ _%key94358%_)
        (let ((_%table94361%_ (&raw-table-table _%tab94356%_))
              (_%seed94363%_ (&raw-table-seed _%tab94356%_)))
          (let* ((_%h94366%_ (fxxor (eq-hash _%key94358%_) _%seed94363%_))
                 (_%size94369%_ (vector-length _%table94361%_))
                 (_%entries94372%_ (##fxquotient _%size94369%_ '2))
                 (_%start94375%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94366%_ _%entries94372%_)
                   '1)))
            (let _%loop94379%_ ((_%probe94382%_ _%start94375%_)
                                (_%i94384%_ '1))
              (let ((_%k94387%_ (vector-ref _%table94361%_ _%probe94382%_)))
                (if (eq? _%k94387%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94387%_ (macro-deleted-obj))
                        (_%loop94379%_
                         (let ((_%next-probe94392%_
                                (fx+ _%start94375%_
                                     _%i94384%_
                                     (fx* _%i94384%_ _%i94384%_))))
                           (##fxmodulo _%next-probe94392%_ _%size94369%_))
                         (##fx+ _%i94384%_ '1))
                        (if (eq? _%key94358%_ _%k94387%_)
                            (let ()
                              (vector-set!
                               _%table94361%_
                               _%probe94382%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94361%_
                               (##fx+ _%probe94382%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94356%_
                                  (##fx- (&raw-table-count _%tab94356%_)
                                         '1)))))
                            (_%loop94379%_
                             (let ((_%next-probe94398%_
                                    (fx+ _%start94375%_
                                         _%i94384%_
                                         (fx* _%i94384%_ _%i94384%_))))
                               (##fxmodulo _%next-probe94398%_ _%size94369%_))
                             (##fx+ _%i94384%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint94337%_ _%seed94339%_)
        (make-raw-table__% _%size-hint94337%_ eqv-hash eqv? _%seed94339%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint94345%_ '#f) (_%seed94347%_ '0))
          (make-eqv-table__% _%size-hint94345%_ _%seed94347%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint94349%_)
        (let ((_%seed94351%_ '0))
          (make-eqv-table__% _%size-hint94349%_ _%seed94351%_))))
    (define make-eqv-table
      (lambda _g94914_
        (let ((_g94913_ (##length _g94914_)))
          (cond ((##fx= _g94913_ 0) (apply make-eqv-table__0 _g94914_))
                ((##fx= _g94913_ 1) (apply make-eqv-table__1 _g94914_))
                ((##fx= _g94913_ 2) (apply make-eqv-table__% _g94914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g94914_))))))
    (define eqv-table-ref
      (lambda (_%tab94290%_ _%key94291%_ _%default94292%_)
        (let ((_%table94294%_ (&raw-table-table _%tab94290%_))
              (_%seed94295%_ (&raw-table-seed _%tab94290%_)))
          (let* ((_%h94297%_ (fxxor (eqv-hash _%key94291%_) _%seed94295%_))
                 (_%size94300%_ (vector-length _%table94294%_))
                 (_%entries94303%_ (##fxquotient _%size94300%_ '2))
                 (_%start94306%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94297%_ _%entries94303%_)
                   '1)))
            (let _%loop94310%_ ((_%probe94313%_ _%start94306%_)
                                (_%i94315%_ '1)
                                (_%deleted94317%_ '#f))
              (let ((_%k94320%_ (vector-ref _%table94294%_ _%probe94313%_)))
                (if (eq? _%k94320%_ (macro-unused-obj))
                    _%default94292%_
                    (if (eq? _%k94320%_ (macro-deleted-obj))
                        (_%loop94310%_
                         (let ((_%next-probe94325%_
                                (fx+ _%start94306%_
                                     _%i94315%_
                                     (fx* _%i94315%_ _%i94315%_))))
                           (##fxmodulo _%next-probe94325%_ _%size94300%_))
                         (##fx+ _%i94315%_ '1)
                         (let ((_%$e94328%_ _%deleted94317%_))
                           (if _%$e94328%_ _%$e94328%_ _%probe94313%_)))
                        (if (eqv? _%key94291%_ _%k94320%_)
                            (vector-ref
                             _%table94294%_
                             (##fx+ _%probe94313%_ '1))
                            (_%loop94310%_
                             (let ((_%next-probe94333%_
                                    (fx+ _%start94306%_
                                         _%i94315%_
                                         (fx* _%i94315%_ _%i94315%_))))
                               (##fxmodulo _%next-probe94333%_ _%size94300%_))
                             (##fx+ _%i94315%_ '1)
                             _%deleted94317%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab94286%_ _%key94287%_ _%value94288%_)
        (if (##fx< (&raw-table-free _%tab94286%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94286%_))
                    '4))
            (__raw-table-rehash! _%tab94286%_)
            '#!void)
        (__eqv-table-set! _%tab94286%_ _%key94287%_ _%value94288%_)))
    (define __eqv-table-set!
      (lambda (_%tab94237%_ _%key94238%_ _%value94239%_)
        (let ((_%table94242%_ (&raw-table-table _%tab94237%_))
              (_%seed94243%_ (&raw-table-seed _%tab94237%_)))
          (let* ((_%h94245%_ (fxxor (eqv-hash _%key94238%_) _%seed94243%_))
                 (_%size94248%_ (vector-length _%table94242%_))
                 (_%entries94251%_ (##fxquotient _%size94248%_ '2))
                 (_%start94254%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94245%_ _%entries94251%_)
                   '1)))
            (let _%loop94258%_ ((_%probe94261%_ _%start94254%_)
                                (_%i94263%_ '1)
                                (_%deleted94265%_ '#f))
              (let ((_%k94268%_ (vector-ref _%table94242%_ _%probe94261%_)))
                (if (eq? _%k94268%_ (macro-unused-obj))
                    (if _%deleted94265%_
                        (begin
                          (vector-set!
                           _%table94242%_
                           _%deleted94265%_
                           _%key94238%_)
                          (vector-set!
                           _%table94242%_
                           (##fx+ _%deleted94265%_ '1)
                           _%value94239%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94237%_
                              (##fx+ (&raw-table-count _%tab94237%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94242%_
                           _%probe94261%_
                           _%key94238%_)
                          (vector-set!
                           _%table94242%_
                           (##fx+ _%probe94261%_ '1)
                           _%value94239%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94237%_
                              (##fx- (&raw-table-free _%tab94237%_) '1))
                             (&raw-table-count-set!
                              _%tab94237%_
                              (##fx+ (&raw-table-count _%tab94237%_) '1))))))
                    (if (eq? _%k94268%_ (macro-deleted-obj))
                        (_%loop94258%_
                         (let ((_%next-probe94275%_
                                (fx+ _%start94254%_
                                     _%i94263%_
                                     (fx* _%i94263%_ _%i94263%_))))
                           (##fxmodulo _%next-probe94275%_ _%size94248%_))
                         (##fx+ _%i94263%_ '1)
                         (let ((_%$e94278%_ _%deleted94265%_))
                           (if _%$e94278%_ _%$e94278%_ _%probe94261%_)))
                        (if (eqv? _%key94238%_ _%k94268%_)
                            (let ()
                              (vector-set!
                               _%table94242%_
                               _%probe94261%_
                               _%key94238%_)
                              (vector-set!
                               _%table94242%_
                               (##fx+ _%probe94261%_ '1)
                               _%value94239%_))
                            (_%loop94258%_
                             (let ((_%next-probe94283%_
                                    (fx+ _%start94254%_
                                         _%i94263%_
                                         (fx* _%i94263%_ _%i94263%_))))
                               (##fxmodulo _%next-probe94283%_ _%size94248%_))
                             (##fx+ _%i94263%_ '1)
                             _%deleted94265%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab94232%_
               _%key94233%_
               _%eqv-table-update!94234%_
               _%default94235%_)
        (if (##fx< (&raw-table-free _%tab94232%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94232%_))
                    '4))
            (__raw-table-rehash! _%tab94232%_)
            '#!void)
        (__eqv-table-update!
         _%tab94232%_
         _%key94233%_
         _%eqv-table-update!94234%_
         _%default94235%_)))
    (define __eqv-table-update!
      (lambda (_%tab94182%_
               _%key94183%_
               _%eqv-table-update!94184%_
               _%default94185%_)
        (let ((_%table94188%_ (&raw-table-table _%tab94182%_))
              (_%seed94189%_ (&raw-table-seed _%tab94182%_)))
          (let* ((_%h94191%_ (fxxor (eqv-hash _%key94183%_) _%seed94189%_))
                 (_%size94194%_ (vector-length _%table94188%_))
                 (_%entries94197%_ (##fxquotient _%size94194%_ '2))
                 (_%start94200%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94191%_ _%entries94197%_)
                   '1)))
            (let _%loop94204%_ ((_%probe94207%_ _%start94200%_)
                                (_%i94209%_ '1)
                                (_%deleted94211%_ '#f))
              (let ((_%k94214%_ (vector-ref _%table94188%_ _%probe94207%_)))
                (if (eq? _%k94214%_ (macro-unused-obj))
                    (if _%deleted94211%_
                        (begin
                          (vector-set!
                           _%table94188%_
                           _%deleted94211%_
                           _%key94183%_)
                          (vector-set!
                           _%table94188%_
                           (##fx+ _%deleted94211%_ '1)
                           (_%eqv-table-update!94184%_ _%default94185%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94182%_
                              (##fx+ (&raw-table-count _%tab94182%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94188%_
                           _%probe94207%_
                           _%key94183%_)
                          (vector-set!
                           _%table94188%_
                           (##fx+ _%probe94207%_ '1)
                           (_%eqv-table-update!94184%_ _%default94185%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94182%_
                              (##fx- (&raw-table-free _%tab94182%_) '1))
                             (&raw-table-count-set!
                              _%tab94182%_
                              (##fx+ (&raw-table-count _%tab94182%_) '1))))))
                    (if (eq? _%k94214%_ (macro-deleted-obj))
                        (_%loop94204%_
                         (let ((_%next-probe94221%_
                                (fx+ _%start94200%_
                                     _%i94209%_
                                     (fx* _%i94209%_ _%i94209%_))))
                           (##fxmodulo _%next-probe94221%_ _%size94194%_))
                         (##fx+ _%i94209%_ '1)
                         (let ((_%$e94224%_ _%deleted94211%_))
                           (if _%$e94224%_ _%$e94224%_ _%probe94207%_)))
                        (if (eqv? _%key94183%_ _%k94214%_)
                            (let ()
                              (vector-set!
                               _%table94188%_
                               _%probe94207%_
                               _%key94183%_)
                              (vector-set!
                               _%table94188%_
                               (##fx+ _%probe94207%_ '1)
                               (_%eqv-table-update!94184%_
                                (vector-ref
                                 _%table94188%_
                                 (##fx+ _%probe94207%_ '1)))))
                            (_%loop94204%_
                             (let ((_%next-probe94229%_
                                    (fx+ _%start94200%_
                                         _%i94209%_
                                         (fx* _%i94209%_ _%i94209%_))))
                               (##fxmodulo _%next-probe94229%_ _%size94194%_))
                             (##fx+ _%i94209%_ '1)
                             _%deleted94211%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab94137%_ _%key94139%_)
        (let ((_%table94142%_ (&raw-table-table _%tab94137%_))
              (_%seed94144%_ (&raw-table-seed _%tab94137%_)))
          (let* ((_%h94147%_ (fxxor (eqv-hash _%key94139%_) _%seed94144%_))
                 (_%size94150%_ (vector-length _%table94142%_))
                 (_%entries94153%_ (##fxquotient _%size94150%_ '2))
                 (_%start94156%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94147%_ _%entries94153%_)
                   '1)))
            (let _%loop94160%_ ((_%probe94163%_ _%start94156%_)
                                (_%i94165%_ '1))
              (let ((_%k94168%_ (vector-ref _%table94142%_ _%probe94163%_)))
                (if (eq? _%k94168%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94168%_ (macro-deleted-obj))
                        (_%loop94160%_
                         (let ((_%next-probe94173%_
                                (fx+ _%start94156%_
                                     _%i94165%_
                                     (fx* _%i94165%_ _%i94165%_))))
                           (##fxmodulo _%next-probe94173%_ _%size94150%_))
                         (##fx+ _%i94165%_ '1))
                        (if (eqv? _%key94139%_ _%k94168%_)
                            (let ()
                              (vector-set!
                               _%table94142%_
                               _%probe94163%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94142%_
                               (##fx+ _%probe94163%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94137%_
                                  (##fx- (&raw-table-count _%tab94137%_)
                                         '1)))))
                            (_%loop94160%_
                             (let ((_%next-probe94179%_
                                    (fx+ _%start94156%_
                                         _%i94165%_
                                         (fx* _%i94165%_ _%i94165%_))))
                               (##fxmodulo _%next-probe94179%_ _%size94150%_))
                             (##fx+ _%i94165%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint94118%_ _%seed94120%_)
        (make-raw-table__%
         _%size-hint94118%_
         symbolic-hash
         eq?
         _%seed94120%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint94126%_ '#f) (_%seed94128%_ '0))
          (make-symbolic-table__% _%size-hint94126%_ _%seed94128%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint94130%_)
        (let ((_%seed94132%_ '0))
          (make-symbolic-table__% _%size-hint94130%_ _%seed94132%_))))
    (define make-symbolic-table
      (lambda _g94916_
        (let ((_g94915_ (##length _g94916_)))
          (cond ((##fx= _g94915_ 0) (apply make-symbolic-table__0 _g94916_))
                ((##fx= _g94915_ 1) (apply make-symbolic-table__1 _g94916_))
                ((##fx= _g94915_ 2) (apply make-symbolic-table__% _g94916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g94916_))))))
    (define symbolic-table-ref
      (lambda (_%tab94071%_ _%key94072%_ _%default94073%_)
        (let ((_%table94075%_ (&raw-table-table _%tab94071%_))
              (_%seed94076%_ (&raw-table-seed _%tab94071%_)))
          (let* ((_%h94078%_
                  (fxxor (##symbol-hash _%key94072%_) _%seed94076%_))
                 (_%size94081%_ (vector-length _%table94075%_))
                 (_%entries94084%_ (##fxquotient _%size94081%_ '2))
                 (_%start94087%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94078%_ _%entries94084%_)
                   '1)))
            (let _%loop94091%_ ((_%probe94094%_ _%start94087%_)
                                (_%i94096%_ '1)
                                (_%deleted94098%_ '#f))
              (let ((_%k94101%_ (vector-ref _%table94075%_ _%probe94094%_)))
                (if (eq? _%k94101%_ (macro-unused-obj))
                    _%default94073%_
                    (if (eq? _%k94101%_ (macro-deleted-obj))
                        (_%loop94091%_
                         (let ((_%next-probe94106%_
                                (fx+ _%start94087%_
                                     _%i94096%_
                                     (fx* _%i94096%_ _%i94096%_))))
                           (##fxmodulo _%next-probe94106%_ _%size94081%_))
                         (##fx+ _%i94096%_ '1)
                         (let ((_%$e94109%_ _%deleted94098%_))
                           (if _%$e94109%_ _%$e94109%_ _%probe94094%_)))
                        (if (eq? _%key94072%_ _%k94101%_)
                            (vector-ref
                             _%table94075%_
                             (##fx+ _%probe94094%_ '1))
                            (_%loop94091%_
                             (let ((_%next-probe94114%_
                                    (fx+ _%start94087%_
                                         _%i94096%_
                                         (fx* _%i94096%_ _%i94096%_))))
                               (##fxmodulo _%next-probe94114%_ _%size94081%_))
                             (##fx+ _%i94096%_ '1)
                             _%deleted94098%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab94067%_ _%key94068%_ _%value94069%_)
        (if (##fx< (&raw-table-free _%tab94067%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94067%_))
                    '4))
            (__raw-table-rehash! _%tab94067%_)
            '#!void)
        (__symbolic-table-set! _%tab94067%_ _%key94068%_ _%value94069%_)))
    (define __symbolic-table-set!
      (lambda (_%tab94018%_ _%key94019%_ _%value94020%_)
        (let ((_%table94023%_ (&raw-table-table _%tab94018%_))
              (_%seed94024%_ (&raw-table-seed _%tab94018%_)))
          (let* ((_%h94026%_
                  (fxxor (##symbol-hash _%key94019%_) _%seed94024%_))
                 (_%size94029%_ (vector-length _%table94023%_))
                 (_%entries94032%_ (##fxquotient _%size94029%_ '2))
                 (_%start94035%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94026%_ _%entries94032%_)
                   '1)))
            (let _%loop94039%_ ((_%probe94042%_ _%start94035%_)
                                (_%i94044%_ '1)
                                (_%deleted94046%_ '#f))
              (let ((_%k94049%_ (vector-ref _%table94023%_ _%probe94042%_)))
                (if (eq? _%k94049%_ (macro-unused-obj))
                    (if _%deleted94046%_
                        (begin
                          (vector-set!
                           _%table94023%_
                           _%deleted94046%_
                           _%key94019%_)
                          (vector-set!
                           _%table94023%_
                           (##fx+ _%deleted94046%_ '1)
                           _%value94020%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94018%_
                              (##fx+ (&raw-table-count _%tab94018%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94023%_
                           _%probe94042%_
                           _%key94019%_)
                          (vector-set!
                           _%table94023%_
                           (##fx+ _%probe94042%_ '1)
                           _%value94020%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94018%_
                              (##fx- (&raw-table-free _%tab94018%_) '1))
                             (&raw-table-count-set!
                              _%tab94018%_
                              (##fx+ (&raw-table-count _%tab94018%_) '1))))))
                    (if (eq? _%k94049%_ (macro-deleted-obj))
                        (_%loop94039%_
                         (let ((_%next-probe94056%_
                                (fx+ _%start94035%_
                                     _%i94044%_
                                     (fx* _%i94044%_ _%i94044%_))))
                           (##fxmodulo _%next-probe94056%_ _%size94029%_))
                         (##fx+ _%i94044%_ '1)
                         (let ((_%$e94059%_ _%deleted94046%_))
                           (if _%$e94059%_ _%$e94059%_ _%probe94042%_)))
                        (if (eq? _%key94019%_ _%k94049%_)
                            (let ()
                              (vector-set!
                               _%table94023%_
                               _%probe94042%_
                               _%key94019%_)
                              (vector-set!
                               _%table94023%_
                               (##fx+ _%probe94042%_ '1)
                               _%value94020%_))
                            (_%loop94039%_
                             (let ((_%next-probe94064%_
                                    (fx+ _%start94035%_
                                         _%i94044%_
                                         (fx* _%i94044%_ _%i94044%_))))
                               (##fxmodulo _%next-probe94064%_ _%size94029%_))
                             (##fx+ _%i94044%_ '1)
                             _%deleted94046%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab94013%_
               _%key94014%_
               _%symbolic-table-update!94015%_
               _%default94016%_)
        (if (##fx< (&raw-table-free _%tab94013%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94013%_))
                    '4))
            (__raw-table-rehash! _%tab94013%_)
            '#!void)
        (__symbolic-table-update!
         _%tab94013%_
         _%key94014%_
         _%symbolic-table-update!94015%_
         _%default94016%_)))
    (define __symbolic-table-update!
      (lambda (_%tab93963%_
               _%key93964%_
               _%symbolic-table-update!93965%_
               _%default93966%_)
        (let ((_%table93969%_ (&raw-table-table _%tab93963%_))
              (_%seed93970%_ (&raw-table-seed _%tab93963%_)))
          (let* ((_%h93972%_
                  (fxxor (##symbol-hash _%key93964%_) _%seed93970%_))
                 (_%size93975%_ (vector-length _%table93969%_))
                 (_%entries93978%_ (##fxquotient _%size93975%_ '2))
                 (_%start93981%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93972%_ _%entries93978%_)
                   '1)))
            (let _%loop93985%_ ((_%probe93988%_ _%start93981%_)
                                (_%i93990%_ '1)
                                (_%deleted93992%_ '#f))
              (let ((_%k93995%_ (vector-ref _%table93969%_ _%probe93988%_)))
                (if (eq? _%k93995%_ (macro-unused-obj))
                    (if _%deleted93992%_
                        (begin
                          (vector-set!
                           _%table93969%_
                           _%deleted93992%_
                           _%key93964%_)
                          (vector-set!
                           _%table93969%_
                           (##fx+ _%deleted93992%_ '1)
                           (_%symbolic-table-update!93965%_ _%default93966%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93963%_
                              (##fx+ (&raw-table-count _%tab93963%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93969%_
                           _%probe93988%_
                           _%key93964%_)
                          (vector-set!
                           _%table93969%_
                           (##fx+ _%probe93988%_ '1)
                           (_%symbolic-table-update!93965%_ _%default93966%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93963%_
                              (##fx- (&raw-table-free _%tab93963%_) '1))
                             (&raw-table-count-set!
                              _%tab93963%_
                              (##fx+ (&raw-table-count _%tab93963%_) '1))))))
                    (if (eq? _%k93995%_ (macro-deleted-obj))
                        (_%loop93985%_
                         (let ((_%next-probe94002%_
                                (fx+ _%start93981%_
                                     _%i93990%_
                                     (fx* _%i93990%_ _%i93990%_))))
                           (##fxmodulo _%next-probe94002%_ _%size93975%_))
                         (##fx+ _%i93990%_ '1)
                         (let ((_%$e94005%_ _%deleted93992%_))
                           (if _%$e94005%_ _%$e94005%_ _%probe93988%_)))
                        (if (eq? _%key93964%_ _%k93995%_)
                            (let ()
                              (vector-set!
                               _%table93969%_
                               _%probe93988%_
                               _%key93964%_)
                              (vector-set!
                               _%table93969%_
                               (##fx+ _%probe93988%_ '1)
                               (_%symbolic-table-update!93965%_
                                (vector-ref
                                 _%table93969%_
                                 (##fx+ _%probe93988%_ '1)))))
                            (_%loop93985%_
                             (let ((_%next-probe94010%_
                                    (fx+ _%start93981%_
                                         _%i93990%_
                                         (fx* _%i93990%_ _%i93990%_))))
                               (##fxmodulo _%next-probe94010%_ _%size93975%_))
                             (##fx+ _%i93990%_ '1)
                             _%deleted93992%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab93918%_ _%key93920%_)
        (let ((_%table93923%_ (&raw-table-table _%tab93918%_))
              (_%seed93925%_ (&raw-table-seed _%tab93918%_)))
          (let* ((_%h93928%_
                  (fxxor (##symbol-hash _%key93920%_) _%seed93925%_))
                 (_%size93931%_ (vector-length _%table93923%_))
                 (_%entries93934%_ (##fxquotient _%size93931%_ '2))
                 (_%start93937%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93928%_ _%entries93934%_)
                   '1)))
            (let _%loop93941%_ ((_%probe93944%_ _%start93937%_)
                                (_%i93946%_ '1))
              (let ((_%k93949%_ (vector-ref _%table93923%_ _%probe93944%_)))
                (if (eq? _%k93949%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93949%_ (macro-deleted-obj))
                        (_%loop93941%_
                         (let ((_%next-probe93954%_
                                (fx+ _%start93937%_
                                     _%i93946%_
                                     (fx* _%i93946%_ _%i93946%_))))
                           (##fxmodulo _%next-probe93954%_ _%size93931%_))
                         (##fx+ _%i93946%_ '1))
                        (if (eq? _%key93920%_ _%k93949%_)
                            (let ()
                              (vector-set!
                               _%table93923%_
                               _%probe93944%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93923%_
                               (##fx+ _%probe93944%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93918%_
                                  (##fx- (&raw-table-count _%tab93918%_)
                                         '1)))))
                            (_%loop93941%_
                             (let ((_%next-probe93960%_
                                    (fx+ _%start93937%_
                                         _%i93946%_
                                         (fx* _%i93946%_ _%i93946%_))))
                               (##fxmodulo _%next-probe93960%_ _%size93931%_))
                             (##fx+ _%i93946%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint93899%_ _%seed93901%_)
        (make-raw-table__%
         _%size-hint93899%_
         string-hash
         ##string=?
         _%seed93901%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint93907%_ '#f) (_%seed93909%_ '0))
          (make-string-table__% _%size-hint93907%_ _%seed93909%_))))
    (define make-string-table__1
      (lambda (_%size-hint93911%_)
        (let ((_%seed93913%_ '0))
          (make-string-table__% _%size-hint93911%_ _%seed93913%_))))
    (define make-string-table
      (lambda _g94918_
        (let ((_g94917_ (##length _g94918_)))
          (cond ((##fx= _g94917_ 0) (apply make-string-table__0 _g94918_))
                ((##fx= _g94917_ 1) (apply make-string-table__1 _g94918_))
                ((##fx= _g94917_ 2) (apply make-string-table__% _g94918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g94918_))))))
    (define string-table-ref
      (lambda (_%tab93852%_ _%key93853%_ _%default93854%_)
        (let ((_%table93856%_ (&raw-table-table _%tab93852%_))
              (_%seed93857%_ (&raw-table-seed _%tab93852%_)))
          (let* ((_%h93859%_
                  (fxxor (##string=?-hash _%key93853%_) _%seed93857%_))
                 (_%size93862%_ (vector-length _%table93856%_))
                 (_%entries93865%_ (##fxquotient _%size93862%_ '2))
                 (_%start93868%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93859%_ _%entries93865%_)
                   '1)))
            (let _%loop93872%_ ((_%probe93875%_ _%start93868%_)
                                (_%i93877%_ '1)
                                (_%deleted93879%_ '#f))
              (let ((_%k93882%_ (vector-ref _%table93856%_ _%probe93875%_)))
                (if (eq? _%k93882%_ (macro-unused-obj))
                    _%default93854%_
                    (if (eq? _%k93882%_ (macro-deleted-obj))
                        (_%loop93872%_
                         (let ((_%next-probe93887%_
                                (fx+ _%start93868%_
                                     _%i93877%_
                                     (fx* _%i93877%_ _%i93877%_))))
                           (##fxmodulo _%next-probe93887%_ _%size93862%_))
                         (##fx+ _%i93877%_ '1)
                         (let ((_%$e93890%_ _%deleted93879%_))
                           (if _%$e93890%_ _%$e93890%_ _%probe93875%_)))
                        (if (##string=? _%key93853%_ _%k93882%_)
                            (vector-ref
                             _%table93856%_
                             (##fx+ _%probe93875%_ '1))
                            (_%loop93872%_
                             (let ((_%next-probe93895%_
                                    (fx+ _%start93868%_
                                         _%i93877%_
                                         (fx* _%i93877%_ _%i93877%_))))
                               (##fxmodulo _%next-probe93895%_ _%size93862%_))
                             (##fx+ _%i93877%_ '1)
                             _%deleted93879%_))))))))))
    (define string-table-set!
      (lambda (_%tab93848%_ _%key93849%_ _%value93850%_)
        (if (##fx< (&raw-table-free _%tab93848%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93848%_))
                    '4))
            (__raw-table-rehash! _%tab93848%_)
            '#!void)
        (__string-table-set! _%tab93848%_ _%key93849%_ _%value93850%_)))
    (define __string-table-set!
      (lambda (_%tab93799%_ _%key93800%_ _%value93801%_)
        (let ((_%table93804%_ (&raw-table-table _%tab93799%_))
              (_%seed93805%_ (&raw-table-seed _%tab93799%_)))
          (let* ((_%h93807%_
                  (fxxor (##string=?-hash _%key93800%_) _%seed93805%_))
                 (_%size93810%_ (vector-length _%table93804%_))
                 (_%entries93813%_ (##fxquotient _%size93810%_ '2))
                 (_%start93816%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93807%_ _%entries93813%_)
                   '1)))
            (let _%loop93820%_ ((_%probe93823%_ _%start93816%_)
                                (_%i93825%_ '1)
                                (_%deleted93827%_ '#f))
              (let ((_%k93830%_ (vector-ref _%table93804%_ _%probe93823%_)))
                (if (eq? _%k93830%_ (macro-unused-obj))
                    (if _%deleted93827%_
                        (begin
                          (vector-set!
                           _%table93804%_
                           _%deleted93827%_
                           _%key93800%_)
                          (vector-set!
                           _%table93804%_
                           (##fx+ _%deleted93827%_ '1)
                           _%value93801%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93799%_
                              (##fx+ (&raw-table-count _%tab93799%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93804%_
                           _%probe93823%_
                           _%key93800%_)
                          (vector-set!
                           _%table93804%_
                           (##fx+ _%probe93823%_ '1)
                           _%value93801%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93799%_
                              (##fx- (&raw-table-free _%tab93799%_) '1))
                             (&raw-table-count-set!
                              _%tab93799%_
                              (##fx+ (&raw-table-count _%tab93799%_) '1))))))
                    (if (eq? _%k93830%_ (macro-deleted-obj))
                        (_%loop93820%_
                         (let ((_%next-probe93837%_
                                (fx+ _%start93816%_
                                     _%i93825%_
                                     (fx* _%i93825%_ _%i93825%_))))
                           (##fxmodulo _%next-probe93837%_ _%size93810%_))
                         (##fx+ _%i93825%_ '1)
                         (let ((_%$e93840%_ _%deleted93827%_))
                           (if _%$e93840%_ _%$e93840%_ _%probe93823%_)))
                        (if (##string=? _%key93800%_ _%k93830%_)
                            (let ()
                              (vector-set!
                               _%table93804%_
                               _%probe93823%_
                               _%key93800%_)
                              (vector-set!
                               _%table93804%_
                               (##fx+ _%probe93823%_ '1)
                               _%value93801%_))
                            (_%loop93820%_
                             (let ((_%next-probe93845%_
                                    (fx+ _%start93816%_
                                         _%i93825%_
                                         (fx* _%i93825%_ _%i93825%_))))
                               (##fxmodulo _%next-probe93845%_ _%size93810%_))
                             (##fx+ _%i93825%_ '1)
                             _%deleted93827%_))))))))))
    (define string-table-update!
      (lambda (_%tab93794%_
               _%key93795%_
               _%string-table-update!93796%_
               _%default93797%_)
        (if (##fx< (&raw-table-free _%tab93794%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93794%_))
                    '4))
            (__raw-table-rehash! _%tab93794%_)
            '#!void)
        (__string-table-update!
         _%tab93794%_
         _%key93795%_
         _%string-table-update!93796%_
         _%default93797%_)))
    (define __string-table-update!
      (lambda (_%tab93744%_
               _%key93745%_
               _%string-table-update!93746%_
               _%default93747%_)
        (let ((_%table93750%_ (&raw-table-table _%tab93744%_))
              (_%seed93751%_ (&raw-table-seed _%tab93744%_)))
          (let* ((_%h93753%_
                  (fxxor (##string=?-hash _%key93745%_) _%seed93751%_))
                 (_%size93756%_ (vector-length _%table93750%_))
                 (_%entries93759%_ (##fxquotient _%size93756%_ '2))
                 (_%start93762%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93753%_ _%entries93759%_)
                   '1)))
            (let _%loop93766%_ ((_%probe93769%_ _%start93762%_)
                                (_%i93771%_ '1)
                                (_%deleted93773%_ '#f))
              (let ((_%k93776%_ (vector-ref _%table93750%_ _%probe93769%_)))
                (if (eq? _%k93776%_ (macro-unused-obj))
                    (if _%deleted93773%_
                        (begin
                          (vector-set!
                           _%table93750%_
                           _%deleted93773%_
                           _%key93745%_)
                          (vector-set!
                           _%table93750%_
                           (##fx+ _%deleted93773%_ '1)
                           (_%string-table-update!93746%_ _%default93747%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93744%_
                              (##fx+ (&raw-table-count _%tab93744%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93750%_
                           _%probe93769%_
                           _%key93745%_)
                          (vector-set!
                           _%table93750%_
                           (##fx+ _%probe93769%_ '1)
                           (_%string-table-update!93746%_ _%default93747%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93744%_
                              (##fx- (&raw-table-free _%tab93744%_) '1))
                             (&raw-table-count-set!
                              _%tab93744%_
                              (##fx+ (&raw-table-count _%tab93744%_) '1))))))
                    (if (eq? _%k93776%_ (macro-deleted-obj))
                        (_%loop93766%_
                         (let ((_%next-probe93783%_
                                (fx+ _%start93762%_
                                     _%i93771%_
                                     (fx* _%i93771%_ _%i93771%_))))
                           (##fxmodulo _%next-probe93783%_ _%size93756%_))
                         (##fx+ _%i93771%_ '1)
                         (let ((_%$e93786%_ _%deleted93773%_))
                           (if _%$e93786%_ _%$e93786%_ _%probe93769%_)))
                        (if (##string=? _%key93745%_ _%k93776%_)
                            (let ()
                              (vector-set!
                               _%table93750%_
                               _%probe93769%_
                               _%key93745%_)
                              (vector-set!
                               _%table93750%_
                               (##fx+ _%probe93769%_ '1)
                               (_%string-table-update!93746%_
                                (vector-ref
                                 _%table93750%_
                                 (##fx+ _%probe93769%_ '1)))))
                            (_%loop93766%_
                             (let ((_%next-probe93791%_
                                    (fx+ _%start93762%_
                                         _%i93771%_
                                         (fx* _%i93771%_ _%i93771%_))))
                               (##fxmodulo _%next-probe93791%_ _%size93756%_))
                             (##fx+ _%i93771%_ '1)
                             _%deleted93773%_))))))))))
    (define string-table-delete!
      (lambda (_%tab93699%_ _%key93701%_)
        (let ((_%table93704%_ (&raw-table-table _%tab93699%_))
              (_%seed93706%_ (&raw-table-seed _%tab93699%_)))
          (let* ((_%h93709%_
                  (fxxor (##string=?-hash _%key93701%_) _%seed93706%_))
                 (_%size93712%_ (vector-length _%table93704%_))
                 (_%entries93715%_ (##fxquotient _%size93712%_ '2))
                 (_%start93718%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93709%_ _%entries93715%_)
                   '1)))
            (let _%loop93722%_ ((_%probe93725%_ _%start93718%_)
                                (_%i93727%_ '1))
              (let ((_%k93730%_ (vector-ref _%table93704%_ _%probe93725%_)))
                (if (eq? _%k93730%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93730%_ (macro-deleted-obj))
                        (_%loop93722%_
                         (let ((_%next-probe93735%_
                                (fx+ _%start93718%_
                                     _%i93727%_
                                     (fx* _%i93727%_ _%i93727%_))))
                           (##fxmodulo _%next-probe93735%_ _%size93712%_))
                         (##fx+ _%i93727%_ '1))
                        (if (##string=? _%key93701%_ _%k93730%_)
                            (let ()
                              (vector-set!
                               _%table93704%_
                               _%probe93725%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93704%_
                               (##fx+ _%probe93725%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93699%_
                                  (##fx- (&raw-table-count _%tab93699%_)
                                         '1)))))
                            (_%loop93722%_
                             (let ((_%next-probe93741%_
                                    (fx+ _%start93718%_
                                         _%i93727%_
                                         (fx* _%i93727%_ _%i93727%_))))
                               (##fxmodulo _%next-probe93741%_ _%size93712%_))
                             (##fx+ _%i93727%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint93680%_ _%seed93682%_)
        (make-raw-table__%
         _%size-hint93680%_
         immediate-hash
         eq?
         _%seed93682%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint93688%_ '#f) (_%seed93690%_ '0))
          (make-immediate-table__% _%size-hint93688%_ _%seed93690%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint93692%_)
        (let ((_%seed93694%_ '0))
          (make-immediate-table__% _%size-hint93692%_ _%seed93694%_))))
    (define make-immediate-table
      (lambda _g94920_
        (let ((_g94919_ (##length _g94920_)))
          (cond ((##fx= _g94919_ 0) (apply make-immediate-table__0 _g94920_))
                ((##fx= _g94919_ 1) (apply make-immediate-table__1 _g94920_))
                ((##fx= _g94919_ 2) (apply make-immediate-table__% _g94920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g94920_))))))
    (define immediate-table-ref
      (lambda (_%tab93633%_ _%key93634%_ _%default93635%_)
        (let ((_%table93637%_ (&raw-table-table _%tab93633%_))
              (_%seed93638%_ (&raw-table-seed _%tab93633%_)))
          (let* ((_%h93640%_
                  (fxxor (immediate-hash _%key93634%_) _%seed93638%_))
                 (_%size93643%_ (vector-length _%table93637%_))
                 (_%entries93646%_ (##fxquotient _%size93643%_ '2))
                 (_%start93649%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93640%_ _%entries93646%_)
                   '1)))
            (let _%loop93653%_ ((_%probe93656%_ _%start93649%_)
                                (_%i93658%_ '1)
                                (_%deleted93660%_ '#f))
              (let ((_%k93663%_ (vector-ref _%table93637%_ _%probe93656%_)))
                (if (eq? _%k93663%_ (macro-unused-obj))
                    _%default93635%_
                    (if (eq? _%k93663%_ (macro-deleted-obj))
                        (_%loop93653%_
                         (let ((_%next-probe93668%_
                                (fx+ _%start93649%_
                                     _%i93658%_
                                     (fx* _%i93658%_ _%i93658%_))))
                           (##fxmodulo _%next-probe93668%_ _%size93643%_))
                         (##fx+ _%i93658%_ '1)
                         (let ((_%$e93671%_ _%deleted93660%_))
                           (if _%$e93671%_ _%$e93671%_ _%probe93656%_)))
                        (if (eq? _%key93634%_ _%k93663%_)
                            (vector-ref
                             _%table93637%_
                             (##fx+ _%probe93656%_ '1))
                            (_%loop93653%_
                             (let ((_%next-probe93676%_
                                    (fx+ _%start93649%_
                                         _%i93658%_
                                         (fx* _%i93658%_ _%i93658%_))))
                               (##fxmodulo _%next-probe93676%_ _%size93643%_))
                             (##fx+ _%i93658%_ '1)
                             _%deleted93660%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab93629%_ _%key93630%_ _%value93631%_)
        (if (##fx< (&raw-table-free _%tab93629%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93629%_))
                    '4))
            (__raw-table-rehash! _%tab93629%_)
            '#!void)
        (__immediate-table-set! _%tab93629%_ _%key93630%_ _%value93631%_)))
    (define __immediate-table-set!
      (lambda (_%tab93580%_ _%key93581%_ _%value93582%_)
        (let ((_%table93585%_ (&raw-table-table _%tab93580%_))
              (_%seed93586%_ (&raw-table-seed _%tab93580%_)))
          (let* ((_%h93588%_
                  (fxxor (immediate-hash _%key93581%_) _%seed93586%_))
                 (_%size93591%_ (vector-length _%table93585%_))
                 (_%entries93594%_ (##fxquotient _%size93591%_ '2))
                 (_%start93597%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93588%_ _%entries93594%_)
                   '1)))
            (let _%loop93601%_ ((_%probe93604%_ _%start93597%_)
                                (_%i93606%_ '1)
                                (_%deleted93608%_ '#f))
              (let ((_%k93611%_ (vector-ref _%table93585%_ _%probe93604%_)))
                (if (eq? _%k93611%_ (macro-unused-obj))
                    (if _%deleted93608%_
                        (begin
                          (vector-set!
                           _%table93585%_
                           _%deleted93608%_
                           _%key93581%_)
                          (vector-set!
                           _%table93585%_
                           (##fx+ _%deleted93608%_ '1)
                           _%value93582%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93580%_
                              (##fx+ (&raw-table-count _%tab93580%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93585%_
                           _%probe93604%_
                           _%key93581%_)
                          (vector-set!
                           _%table93585%_
                           (##fx+ _%probe93604%_ '1)
                           _%value93582%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93580%_
                              (##fx- (&raw-table-free _%tab93580%_) '1))
                             (&raw-table-count-set!
                              _%tab93580%_
                              (##fx+ (&raw-table-count _%tab93580%_) '1))))))
                    (if (eq? _%k93611%_ (macro-deleted-obj))
                        (_%loop93601%_
                         (let ((_%next-probe93618%_
                                (fx+ _%start93597%_
                                     _%i93606%_
                                     (fx* _%i93606%_ _%i93606%_))))
                           (##fxmodulo _%next-probe93618%_ _%size93591%_))
                         (##fx+ _%i93606%_ '1)
                         (let ((_%$e93621%_ _%deleted93608%_))
                           (if _%$e93621%_ _%$e93621%_ _%probe93604%_)))
                        (if (eq? _%key93581%_ _%k93611%_)
                            (let ()
                              (vector-set!
                               _%table93585%_
                               _%probe93604%_
                               _%key93581%_)
                              (vector-set!
                               _%table93585%_
                               (##fx+ _%probe93604%_ '1)
                               _%value93582%_))
                            (_%loop93601%_
                             (let ((_%next-probe93626%_
                                    (fx+ _%start93597%_
                                         _%i93606%_
                                         (fx* _%i93606%_ _%i93606%_))))
                               (##fxmodulo _%next-probe93626%_ _%size93591%_))
                             (##fx+ _%i93606%_ '1)
                             _%deleted93608%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab93575%_
               _%key93576%_
               _%immediate-table-update!93577%_
               _%default93578%_)
        (if (##fx< (&raw-table-free _%tab93575%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93575%_))
                    '4))
            (__raw-table-rehash! _%tab93575%_)
            '#!void)
        (__immediate-table-update!
         _%tab93575%_
         _%key93576%_
         _%immediate-table-update!93577%_
         _%default93578%_)))
    (define __immediate-table-update!
      (lambda (_%tab93525%_
               _%key93526%_
               _%immediate-table-update!93527%_
               _%default93528%_)
        (let ((_%table93531%_ (&raw-table-table _%tab93525%_))
              (_%seed93532%_ (&raw-table-seed _%tab93525%_)))
          (let* ((_%h93534%_
                  (fxxor (immediate-hash _%key93526%_) _%seed93532%_))
                 (_%size93537%_ (vector-length _%table93531%_))
                 (_%entries93540%_ (##fxquotient _%size93537%_ '2))
                 (_%start93543%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93534%_ _%entries93540%_)
                   '1)))
            (let _%loop93547%_ ((_%probe93550%_ _%start93543%_)
                                (_%i93552%_ '1)
                                (_%deleted93554%_ '#f))
              (let ((_%k93557%_ (vector-ref _%table93531%_ _%probe93550%_)))
                (if (eq? _%k93557%_ (macro-unused-obj))
                    (if _%deleted93554%_
                        (begin
                          (vector-set!
                           _%table93531%_
                           _%deleted93554%_
                           _%key93526%_)
                          (vector-set!
                           _%table93531%_
                           (##fx+ _%deleted93554%_ '1)
                           (_%immediate-table-update!93527%_ _%default93528%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93525%_
                              (##fx+ (&raw-table-count _%tab93525%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93531%_
                           _%probe93550%_
                           _%key93526%_)
                          (vector-set!
                           _%table93531%_
                           (##fx+ _%probe93550%_ '1)
                           (_%immediate-table-update!93527%_ _%default93528%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93525%_
                              (##fx- (&raw-table-free _%tab93525%_) '1))
                             (&raw-table-count-set!
                              _%tab93525%_
                              (##fx+ (&raw-table-count _%tab93525%_) '1))))))
                    (if (eq? _%k93557%_ (macro-deleted-obj))
                        (_%loop93547%_
                         (let ((_%next-probe93564%_
                                (fx+ _%start93543%_
                                     _%i93552%_
                                     (fx* _%i93552%_ _%i93552%_))))
                           (##fxmodulo _%next-probe93564%_ _%size93537%_))
                         (##fx+ _%i93552%_ '1)
                         (let ((_%$e93567%_ _%deleted93554%_))
                           (if _%$e93567%_ _%$e93567%_ _%probe93550%_)))
                        (if (eq? _%key93526%_ _%k93557%_)
                            (let ()
                              (vector-set!
                               _%table93531%_
                               _%probe93550%_
                               _%key93526%_)
                              (vector-set!
                               _%table93531%_
                               (##fx+ _%probe93550%_ '1)
                               (_%immediate-table-update!93527%_
                                (vector-ref
                                 _%table93531%_
                                 (##fx+ _%probe93550%_ '1)))))
                            (_%loop93547%_
                             (let ((_%next-probe93572%_
                                    (fx+ _%start93543%_
                                         _%i93552%_
                                         (fx* _%i93552%_ _%i93552%_))))
                               (##fxmodulo _%next-probe93572%_ _%size93537%_))
                             (##fx+ _%i93552%_ '1)
                             _%deleted93554%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab93480%_ _%key93482%_)
        (let ((_%table93485%_ (&raw-table-table _%tab93480%_))
              (_%seed93487%_ (&raw-table-seed _%tab93480%_)))
          (let* ((_%h93490%_
                  (fxxor (immediate-hash _%key93482%_) _%seed93487%_))
                 (_%size93493%_ (vector-length _%table93485%_))
                 (_%entries93496%_ (##fxquotient _%size93493%_ '2))
                 (_%start93499%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93490%_ _%entries93496%_)
                   '1)))
            (let _%loop93503%_ ((_%probe93506%_ _%start93499%_)
                                (_%i93508%_ '1))
              (let ((_%k93511%_ (vector-ref _%table93485%_ _%probe93506%_)))
                (if (eq? _%k93511%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93511%_ (macro-deleted-obj))
                        (_%loop93503%_
                         (let ((_%next-probe93516%_
                                (fx+ _%start93499%_
                                     _%i93508%_
                                     (fx* _%i93508%_ _%i93508%_))))
                           (##fxmodulo _%next-probe93516%_ _%size93493%_))
                         (##fx+ _%i93508%_ '1))
                        (if (eq? _%key93482%_ _%k93511%_)
                            (let ()
                              (vector-set!
                               _%table93485%_
                               _%probe93506%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93485%_
                               (##fx+ _%probe93506%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93480%_
                                  (##fx- (&raw-table-count _%tab93480%_)
                                         '1)))))
                            (_%loop93503%_
                             (let ((_%next-probe93522%_
                                    (fx+ _%start93499%_
                                         _%i93508%_
                                         (fx* _%i93508%_ _%i93508%_))))
                               (##fxmodulo _%next-probe93522%_ _%size93493%_))
                             (##fx+ _%i93508%_ '1)))))))))))
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
      (lambda (_%tab93478%_)
        (##unchecked-structure-ref
         _%tab93478%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab93476%_)
        (##unchecked-structure-ref
         _%tab93476%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab93473%_ _%val93474%_)
        (##unchecked-structure-set!
         _%tab93473%_
         _%val93474%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab93470%_ _%val93471%_)
        (##unchecked-structure-set!
         _%tab93470%_
         _%val93471%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint93446%_ _%klass93447%_ _%flags93448%_)
        (let ((_%gcht93450%_
               (__gc-table-new
                (if (fixnum? _%size-hint93446%_) _%size-hint93446%_ '16)
                _%flags93448%_)))
          (##structure _%klass93447%_ _%gcht93450%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint93455%_)
        (let* ((_%klass93457%_ __gc-table::t) (_%flags93459%_ '0))
          (make-gc-table__%
           _%size-hint93455%_
           _%klass93457%_
           _%flags93459%_))))
    (define make-gc-table__1
      (lambda (_%size-hint93461%_ _%klass93462%_)
        (let ((_%flags93464%_ '0))
          (make-gc-table__%
           _%size-hint93461%_
           _%klass93462%_
           _%flags93464%_))))
    (define make-gc-table
      (lambda _g94922_
        (let ((_g94921_ (##length _g94922_)))
          (cond ((##fx= _g94921_ 1) (apply make-gc-table__0 _g94922_))
                ((##fx= _g94921_ 2) (apply make-gc-table__1 _g94922_))
                ((##fx= _g94921_ 3) (apply make-gc-table__% _g94922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g94922_))))))
    (define __gc-table-immediate
      (lambda (_%tab93437%_)
        (let ((_%$e93439%_ (&gc-table-immediate _%tab93437%_)))
          (if _%$e93439%_
              _%$e93439%_
              (let ((_%immediate93443%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab93437%_ _%immediate93443%_)
                _%immediate93443%_)))))
    (define __gc-table-new
      (lambda (_%size93427%_ _%flags93428%_)
        (let* ((_%flags93430%_
                (##fxand _%flags93428%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags93432%_
                (fxior _%flags93430%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht93434%_
                (##gc-hash-table-allocate
                 _%size93427%_
                 _%flags93432%_
                 __gc-table-loads)))
          _%gcht93434%_)))
    (define __gc-table-e
      (lambda (_%tab93422%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht93425%_ (&gc-table-gcht _%tab93422%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht93425%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht93425%_
              (begin
                (__gc-table-rehash! _%tab93422%_)
                (&gc-table-gcht _%tab93422%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab93413%_)
        (let* ((_%old-table93415%_ (&gc-table-gcht _%tab93413%_))
               (_%new-table93417%_
                (##gc-hash-table-resize! _%old-table93415%_ __gc-table-loads))
               (_%gcht93419%_
                (##gc-hash-table-rehash!
                 _%old-table93415%_
                 _%new-table93417%_)))
          (&gc-table-gcht-set! _%tab93413%_ _%gcht93419%_))))
    (define gc-table-ref
      (lambda (_%tab93397%_ _%key93398%_ _%default93399%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93398%_)
            (let* ((_%gcht93403%_ (__gc-table-e _%tab93397%_))
                   (_%value93405%_
                    (##gc-hash-table-ref _%gcht93403%_ _%key93398%_)))
              (if (eq? _%value93405%_ (macro-unused-obj))
                  _%default93399%_
                  _%value93405%_))
            (let ((_%$e93407%_ (&gc-table-immediate _%tab93397%_)))
              (if _%$e93407%_
                  ((lambda (_%immediate93410%_)
                     (immediate-table-ref
                      _%immediate93410%_
                      _%key93398%_
                      _%default93399%_))
                   _%$e93407%_)
                  _%default93399%_)))))
    (define gc-table-set!
      (lambda (_%tab93390%_ _%key93391%_ _%value93392%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93391%_)
            (let ((_%gcht93395%_ (__gc-table-e _%tab93390%_)))
              (if (##gc-hash-table-set!
                   _%gcht93395%_
                   _%key93391%_
                   _%value93392%_)
                  (begin
                    (__gc-table-rehash! _%tab93390%_)
                    (gc-table-set! _%tab93390%_ _%key93391%_ _%value93392%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab93390%_)
             _%key93391%_
             _%value93392%_))))
    (define gc-table-update!
      (lambda (_%tab93383%_ _%key93384%_ _%update93385%_ _%default93386%_)
        (if (##mem-allocated? _%key93384%_)
            (let ((_%value93388%_
                   (gc-table-ref _%tab93383%_ _%key93384%_ _%default93386%_)))
              (gc-table-set!
               _%tab93383%_
               _%key93384%_
               (_%update93385%_ _%value93388%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab93383%_)
             _%key93384%_
             _%update93385%_
             _%default93386%_))))
    (define gc-table-delete!
      (lambda (_%tab93371%_ _%key93372%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93372%_)
            (let ((_%gcht93376%_ (__gc-table-e _%tab93371%_)))
              (if (##gc-hash-table-set!
                   _%gcht93376%_
                   _%key93372%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab93371%_)
                    (gc-table-delete! _%tab93371%_ _%key93372%_))
                  '#!void))
            (let ((_%$e93378%_ (&gc-table-immediate _%tab93371%_)))
              (if _%$e93378%_
                  ((lambda (_%immediate93381%_)
                     (immediate-table-delete! _%immediate93381%_ _%key93372%_))
                   _%$e93378%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab93360%_ _%proc93361%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht93364%_ (__gc-table-e _%tab93360%_)))
            (##gc-hash-table-for-each _%proc93361%_ _%gcht93364%_))
          (let ((_%$e93366%_ (&gc-table-immediate _%tab93360%_)))
            (if _%$e93366%_
                ((lambda (_%immediate93369%_)
                   (raw-table-for-each _%immediate93369%_ _%proc93361%_))
                 _%$e93366%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab93348%_)
        (let* ((_%gcht93350%_ (__gc-table-e _%tab93348%_))
               (_%new-table93352%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht93350%_)
                 (macro-gc-hash-table-flags _%gcht93350%_)))
               (_%result93354%_
                (##structure
                 (##structure-type _%tab93348%_)
                 _%new-table93352%_
                 '#f)))
          (gc-table-for-each
           _%tab93348%_
           (lambda (_%k93357%_ _%v93358%_)
             (gc-table-set! _%result93354%_ _%k93357%_ _%v93358%_)))
          _%result93354%_)))
    (define gc-table-clear!
      (lambda (_%tab93341%_)
        (let* ((_%gcht93343%_ (__gc-table-e _%tab93341%_))
               (_%new-table93345%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht93343%_))))
          (&gc-table-gcht-set! _%tab93341%_ _%new-table93345%_)
          (&gc-table-immediate-set! _%tab93341%_ '#f))))
    (define gc-table-length
      (lambda (_%tab93333%_)
        (let ((_%gcht93335%_ (__gc-table-e _%tab93333%_)))
          (fx+ (macro-gc-hash-table-count _%gcht93335%_)
               (let ((_%$e93337%_ (&gc-table-immediate _%tab93333%_)))
                 (if _%$e93337%_ (&raw-table-count _%$e93337%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj93318%_)
        (declare (not interrupts-enabled))
        (let ((_%val93321%_ (gc-table-ref __object-eq-hash _%obj93318%_ '#f)))
          (if _%val93321%_
              _%val93321%_
              (let* ((_%mix93323%_ __object-eq-hash-next)
                     (_%ptr93325%_ (##type-cast _%obj93318%_ '0))
                     (_%h93327%_
                      (fxand (fxxor _%mix93323%_ _%ptr93325%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e93330%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e93330%_ _%$e93330%_ '0)))
                (gc-table-set! __object-eq-hash _%obj93318%_ _%h93327%_)
                _%h93327%_)))))))
