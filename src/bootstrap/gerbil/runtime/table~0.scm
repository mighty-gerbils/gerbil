(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1734225192)
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
      (lambda (_%tab94890%_)
        (##unchecked-structure-ref
         _%tab94890%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab94888%_)
        (##unchecked-structure-ref
         _%tab94888%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab94886%_)
        (##unchecked-structure-ref
         _%tab94886%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab94884%_)
        (##unchecked-structure-ref
         _%tab94884%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab94882%_)
        (##unchecked-structure-ref
         _%tab94882%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab94880%_)
        (##unchecked-structure-ref
         _%tab94880%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab94877%_ _%val94878%_)
        (##unchecked-structure-set!
         _%tab94877%_
         _%val94878%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab94874%_ _%val94875%_)
        (##unchecked-structure-set!
         _%tab94874%_
         _%val94875%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab94871%_ _%val94872%_)
        (##unchecked-structure-set!
         _%tab94871%_
         _%val94872%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab94868%_ _%val94869%_)
        (##unchecked-structure-set!
         _%tab94868%_
         _%val94869%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab94865%_ _%val94866%_)
        (##unchecked-structure-set!
         _%tab94865%_
         _%val94866%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab94862%_ _%val94863%_)
        (##unchecked-structure-set!
         _%tab94862%_
         _%val94863%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint94860%_)
        (if (and (fixnum? _%size-hint94860%_) (##fx> _%size-hint94860%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint94860%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint94836%_ _%hash94837%_ _%test94838%_ _%seed94839%_)
        (let* ((_%size94841%_ (raw-table-size-hint->size _%size-hint94836%_))
               (_%table94843%_
                (##make-vector _%size94841%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table94843%_
           '0
           (##fxquotient _%size94841%_ '2)
           _%hash94837%_
           _%test94838%_
           _%seed94839%_))))
    (define make-raw-table__0
      (lambda (_%size-hint94849%_ _%hash94850%_ _%test94851%_)
        (let ((_%seed94853%_ '0))
          (make-raw-table__%
           _%size-hint94849%_
           _%hash94850%_
           _%test94851%_
           _%seed94853%_))))
    (define make-raw-table
      (lambda _g94892_
        (let ((_g94891_ (##length _g94892_)))
          (cond ((##fx= _g94891_ 3) (apply make-raw-table__0 _g94892_))
                ((##fx= _g94891_ 4) (apply make-raw-table__% _g94892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g94892_))))))
    (define raw-table-ref
      (lambda (_%tab94787%_ _%key94788%_ _%default94789%_)
        (let ((_%table94791%_ (&raw-table-table _%tab94787%_))
              (_%seed94792%_ (&raw-table-seed _%tab94787%_))
              (_%hash94793%_ (&raw-table-hash _%tab94787%_))
              (_%test94794%_ (&raw-table-test _%tab94787%_)))
          (let* ((_%h94796%_
                  (fxxor (_%hash94793%_ _%key94788%_) _%seed94792%_))
                 (_%size94799%_ (vector-length _%table94791%_))
                 (_%entries94802%_ (##fxquotient _%size94799%_ '2))
                 (_%start94805%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94796%_ _%entries94802%_)
                   '1)))
            (let _%loop94809%_ ((_%probe94812%_ _%start94805%_)
                                (_%i94814%_ '1)
                                (_%deleted94816%_ '#f))
              (let ((_%k94819%_ (vector-ref _%table94791%_ _%probe94812%_)))
                (if (eq? _%k94819%_ (macro-unused-obj))
                    _%default94789%_
                    (if (eq? _%k94819%_ (macro-deleted-obj))
                        (_%loop94809%_
                         (let ((_%next-probe94824%_
                                (fx+ _%start94805%_
                                     _%i94814%_
                                     (fx* _%i94814%_ _%i94814%_))))
                           (##fxmodulo _%next-probe94824%_ _%size94799%_))
                         (##fx+ _%i94814%_ '1)
                         (let ((_%$e94827%_ _%deleted94816%_))
                           (if _%$e94827%_ _%$e94827%_ _%probe94812%_)))
                        (if (_%test94794%_ _%key94788%_ _%k94819%_)
                            (vector-ref
                             _%table94791%_
                             (##fx+ _%probe94812%_ '1))
                            (_%loop94809%_
                             (let ((_%next-probe94832%_
                                    (fx+ _%start94805%_
                                         _%i94814%_
                                         (fx* _%i94814%_ _%i94814%_))))
                               (##fxmodulo _%next-probe94832%_ _%size94799%_))
                             (##fx+ _%i94814%_ '1)
                             _%deleted94816%_))))))))))
    (define raw-table-set!
      (lambda (_%tab94783%_ _%key94784%_ _%value94785%_)
        (if (##fx< (&raw-table-free _%tab94783%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94783%_))
                    '4))
            (__raw-table-rehash! _%tab94783%_)
            '#!void)
        (__raw-table-set! _%tab94783%_ _%key94784%_ _%value94785%_)))
    (define raw-table-update!
      (lambda (_%tab94778%_ _%key94779%_ _%update94780%_ _%default94781%_)
        (if (##fx< (&raw-table-free _%tab94778%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94778%_))
                    '4))
            (__raw-table-rehash! _%tab94778%_)
            '#!void)
        (__raw-table-update!
         _%tab94778%_
         _%key94779%_
         _%update94780%_
         _%default94781%_)))
    (define raw-table-delete!
      (lambda (_%tab94735%_ _%key94736%_)
        (let ((_%table94738%_ (&raw-table-table _%tab94735%_))
              (_%seed94739%_ (&raw-table-seed _%tab94735%_))
              (_%hash94740%_ (&raw-table-hash _%tab94735%_))
              (_%test94741%_ (&raw-table-test _%tab94735%_)))
          (let* ((_%h94743%_
                  (fxxor (_%hash94740%_ _%key94736%_) _%seed94739%_))
                 (_%size94746%_ (vector-length _%table94738%_))
                 (_%entries94749%_ (##fxquotient _%size94746%_ '2))
                 (_%start94752%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94743%_ _%entries94749%_)
                   '1)))
            (let _%loop94756%_ ((_%probe94759%_ _%start94752%_)
                                (_%i94761%_ '1))
              (let ((_%k94764%_ (vector-ref _%table94738%_ _%probe94759%_)))
                (if (eq? _%k94764%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94764%_ (macro-deleted-obj))
                        (_%loop94756%_
                         (let ((_%next-probe94769%_
                                (fx+ _%start94752%_
                                     _%i94761%_
                                     (fx* _%i94761%_ _%i94761%_))))
                           (##fxmodulo _%next-probe94769%_ _%size94746%_))
                         (##fx+ _%i94761%_ '1))
                        (if (_%test94741%_ _%key94736%_ _%k94764%_)
                            (let ()
                              (vector-set!
                               _%table94738%_
                               _%probe94759%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94738%_
                               (##fx+ _%probe94759%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94735%_
                                  (##fx- (&raw-table-count _%tab94735%_)
                                         '1)))))
                            (_%loop94756%_
                             (let ((_%next-probe94775%_
                                    (fx+ _%start94752%_
                                         _%i94761%_
                                         (fx* _%i94761%_ _%i94761%_))))
                               (##fxmodulo _%next-probe94775%_ _%size94746%_))
                             (##fx+ _%i94761%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab94719%_ _%proc94720%_)
        (let* ((_%table94722%_ (&raw-table-table _%tab94719%_))
               (_%size94724%_ (vector-length _%table94722%_)))
          (let _%loop94727%_ ((_%i94729%_ '0))
            (if (##fx< _%i94729%_ _%size94724%_)
                (begin
                  (let ((_%key94731%_ (vector-ref _%table94722%_ _%i94729%_)))
                    (if (if (eq? _%key94731%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94731%_ (macro-deleted-obj))))
                        (let ((_%value94733%_
                               (vector-ref
                                _%table94722%_
                                (##fx+ _%i94729%_ '1))))
                          (_%proc94720%_ _%key94731%_ _%value94733%_))
                        '#!void))
                  (_%loop94727%_ (##fx+ _%i94729%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab94715%_)
        (let ((_%new-tab94717%_ (##structure-copy _%tab94715%_)))
          (&raw-table-table-set!
           _%new-tab94717%_
           (vector-copy (&raw-table-table _%tab94715%_)))
          _%new-tab94717%_)))
    (define raw-table-clear!
      (lambda (_%tab94713%_)
        (vector-fill! (&raw-table-table _%tab94713%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab94713%_ '0)
        (&raw-table-free-set!
         _%tab94713%_
         (##fxquotient (vector-length (&raw-table-table _%tab94713%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab94663%_ _%key94664%_ _%value94665%_)
        (let ((_%table94667%_ (&raw-table-table _%tab94663%_))
              (_%seed94668%_ (&raw-table-seed _%tab94663%_))
              (_%hash94669%_ (&raw-table-hash _%tab94663%_))
              (_%test94670%_ (&raw-table-test _%tab94663%_)))
          (let* ((_%h94672%_
                  (fxxor (_%hash94669%_ _%key94664%_) _%seed94668%_))
                 (_%size94675%_ (vector-length _%table94667%_))
                 (_%entries94678%_ (##fxquotient _%size94675%_ '2))
                 (_%start94681%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94672%_ _%entries94678%_)
                   '1)))
            (let _%loop94685%_ ((_%probe94688%_ _%start94681%_)
                                (_%i94690%_ '1)
                                (_%deleted94692%_ '#f))
              (let ((_%k94695%_ (vector-ref _%table94667%_ _%probe94688%_)))
                (if (eq? _%k94695%_ (macro-unused-obj))
                    (if _%deleted94692%_
                        (begin
                          (vector-set!
                           _%table94667%_
                           _%deleted94692%_
                           _%key94664%_)
                          (vector-set!
                           _%table94667%_
                           (##fx+ _%deleted94692%_ '1)
                           _%value94665%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94663%_
                              (##fx+ (&raw-table-count _%tab94663%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94667%_
                           _%probe94688%_
                           _%key94664%_)
                          (vector-set!
                           _%table94667%_
                           (##fx+ _%probe94688%_ '1)
                           _%value94665%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94663%_
                              (##fx- (&raw-table-free _%tab94663%_) '1))
                             (&raw-table-count-set!
                              _%tab94663%_
                              (##fx+ (&raw-table-count _%tab94663%_) '1))))))
                    (if (eq? _%k94695%_ (macro-deleted-obj))
                        (_%loop94685%_
                         (let ((_%next-probe94702%_
                                (fx+ _%start94681%_
                                     _%i94690%_
                                     (fx* _%i94690%_ _%i94690%_))))
                           (##fxmodulo _%next-probe94702%_ _%size94675%_))
                         (##fx+ _%i94690%_ '1)
                         (let ((_%$e94705%_ _%deleted94692%_))
                           (if _%$e94705%_ _%$e94705%_ _%probe94688%_)))
                        (if (_%test94670%_ _%key94664%_ _%k94695%_)
                            (let ()
                              (vector-set!
                               _%table94667%_
                               _%probe94688%_
                               _%key94664%_)
                              (vector-set!
                               _%table94667%_
                               (##fx+ _%probe94688%_ '1)
                               _%value94665%_))
                            (_%loop94685%_
                             (let ((_%next-probe94710%_
                                    (fx+ _%start94681%_
                                         _%i94690%_
                                         (fx* _%i94690%_ _%i94690%_))))
                               (##fxmodulo _%next-probe94710%_ _%size94675%_))
                             (##fx+ _%i94690%_ '1)
                             _%deleted94692%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab94612%_ _%key94613%_ _%update94614%_ _%default94615%_)
        (let ((_%table94617%_ (&raw-table-table _%tab94612%_))
              (_%seed94618%_ (&raw-table-seed _%tab94612%_))
              (_%hash94619%_ (&raw-table-hash _%tab94612%_))
              (_%test94620%_ (&raw-table-test _%tab94612%_)))
          (let* ((_%h94622%_
                  (fxxor (_%hash94619%_ _%key94613%_) _%seed94618%_))
                 (_%size94625%_ (vector-length _%table94617%_))
                 (_%entries94628%_ (##fxquotient _%size94625%_ '2))
                 (_%start94631%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94622%_ _%entries94628%_)
                   '1)))
            (let _%loop94635%_ ((_%probe94638%_ _%start94631%_)
                                (_%i94640%_ '1)
                                (_%deleted94642%_ '#f))
              (let ((_%k94645%_ (vector-ref _%table94617%_ _%probe94638%_)))
                (if (eq? _%k94645%_ (macro-unused-obj))
                    (if _%deleted94642%_
                        (begin
                          (vector-set!
                           _%table94617%_
                           _%deleted94642%_
                           _%key94613%_)
                          (vector-set!
                           _%table94617%_
                           (##fx+ _%deleted94642%_ '1)
                           (_%update94614%_ _%default94615%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94612%_
                              (##fx+ (&raw-table-count _%tab94612%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94617%_
                           _%probe94638%_
                           _%key94613%_)
                          (vector-set!
                           _%table94617%_
                           (##fx+ _%probe94638%_ '1)
                           (_%update94614%_ _%default94615%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94612%_
                              (##fx- (&raw-table-free _%tab94612%_) '1))
                             (&raw-table-count-set!
                              _%tab94612%_
                              (##fx+ (&raw-table-count _%tab94612%_) '1))))))
                    (if (eq? _%k94645%_ (macro-deleted-obj))
                        (_%loop94635%_
                         (let ((_%next-probe94652%_
                                (fx+ _%start94631%_
                                     _%i94640%_
                                     (fx* _%i94640%_ _%i94640%_))))
                           (##fxmodulo _%next-probe94652%_ _%size94625%_))
                         (##fx+ _%i94640%_ '1)
                         (let ((_%$e94655%_ _%deleted94642%_))
                           (if _%$e94655%_ _%$e94655%_ _%probe94638%_)))
                        (if (_%test94620%_ _%key94613%_ _%k94645%_)
                            (let ()
                              (vector-set!
                               _%table94617%_
                               _%probe94638%_
                               _%key94613%_)
                              (vector-set!
                               _%table94617%_
                               (##fx+ _%probe94638%_ '1)
                               (_%update94614%_
                                (vector-ref
                                 _%table94617%_
                                 (##fx+ _%probe94638%_ '1)))))
                            (_%loop94635%_
                             (let ((_%next-probe94660%_
                                    (fx+ _%start94631%_
                                         _%i94640%_
                                         (fx* _%i94640%_ _%i94640%_))))
                               (##fxmodulo _%next-probe94660%_ _%size94625%_))
                             (##fx+ _%i94640%_ '1)
                             _%deleted94642%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab94593%_)
        (let* ((_%old-table94595%_ (&raw-table-table _%tab94593%_))
               (_%old-size94597%_ (vector-length _%old-table94595%_))
               (_%new-size94599%_
                (if (##fx< (&raw-table-count _%tab94593%_)
                           (##fxquotient _%old-size94597%_ '4))
                    (vector-length _%old-table94595%_)
                    (##fx* '2 (vector-length _%old-table94595%_))))
               (_%new-table94601%_
                (##make-vector _%new-size94599%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab94593%_ _%new-table94601%_)
          (&raw-table-count-set! _%tab94593%_ '0)
          (&raw-table-free-set!
           _%tab94593%_
           (##fxquotient _%new-size94599%_ '2))
          (let _%lp94604%_ ((_%i94606%_ '0))
            (if (##fx< _%i94606%_ _%old-size94597%_)
                (begin
                  (let ((_%key94608%_
                         (vector-ref _%old-table94595%_ _%i94606%_)))
                    (if (if (eq? _%key94608%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94608%_ (macro-deleted-obj))))
                        (let ((_%value94610%_
                               (vector-ref
                                _%old-table94595%_
                                (##fx+ _%i94606%_ '1))))
                          (__raw-table-set!
                           _%tab94593%_
                           _%key94608%_
                           _%value94610%_))
                        '#!void))
                  (_%lp94604%_ (##fx+ _%i94606%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj94585%_)
        (let ((_%t94587%_ (##type _%obj94585%_)))
          (if (##fx= (##fxand _%t94587%_ '1) '0)
              (fxand (##type-cast _%obj94585%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj94585%_)
                  (symbolic-hash _%obj94585%_)
                  (if (procedure? _%obj94585%_)
                      (procedure-hash _%obj94585%_)
                      (fxand (__eq-hash _%obj94585%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj94581%_)
        (let ((_%h94583%_
               (if (##closure? _%obj94581%_)
                   (__eq-hash _%obj94581%_)
                   (##type-cast _%obj94581%_ '0))))
          (fxand _%h94583%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj94578%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj94578%_)))
    (define eqv-hash
      (lambda (_%obj94568%_)
        (letrec ((_%combine94570%_
                  (lambda (_%a94575%_ _%b94576%_)
                    (fxand (##fx* (##fx+ _%a94575%_
                                         (fxarithmetic-shift-left
                                          _%b94576%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash94571%_
                  (lambda (_%obj94573%_)
                    (macro-number-dispatch
                     _%obj94573%_
                     (eq-hash _%obj94573%_)
                     (fxand _%obj94573%_ (macro-max-fixnum32))
                     (modulo _%obj94573%_ '331804481)
                     (_%combine94570%_
                      (_%hash94571%_ (macro-ratnum-numerator _%obj94573%_))
                      (_%hash94571%_ (macro-ratnum-denominator _%obj94573%_)))
                     (_%combine94570%_
                      (##u16vector-ref _%obj94573%_ '0)
                      (_%combine94570%_
                       (##u16vector-ref _%obj94573%_ '1)
                       (_%combine94570%_
                        (##u16vector-ref _%obj94573%_ '2)
                        (##u16vector-ref _%obj94573%_ '3))))
                     (_%combine94570%_
                      (_%hash94571%_ (macro-cpxnum-real _%obj94573%_))
                      (_%hash94571%_ (macro-cpxnum-imag _%obj94573%_)))))))
          (_%hash94571%_ _%obj94568%_))))
    (define symbolic?
      (lambda (_%obj94563%_)
        (let ((_%$e94565%_ (symbol? _%obj94563%_)))
          (if _%$e94565%_ _%$e94565%_ (keyword? _%obj94563%_)))))
    (define symbolic-hash (lambda (_%obj94561%_) (macro-slot '1 _%obj94561%_)))
    (define string-hash (lambda (_%obj94559%_) (##string=?-hash _%obj94559%_)))
    (define immediate-hash
      (lambda (_%obj94557%_) (##type-cast _%obj94557%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint94538%_ _%seed94540%_)
        (make-raw-table__% _%size-hint94538%_ eq-hash eq? _%seed94540%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint94546%_ '#f) (_%seed94548%_ '0))
          (make-eq-table__% _%size-hint94546%_ _%seed94548%_))))
    (define make-eq-table__1
      (lambda (_%size-hint94550%_)
        (let ((_%seed94552%_ '0))
          (make-eq-table__% _%size-hint94550%_ _%seed94552%_))))
    (define make-eq-table
      (lambda _g94894_
        (let ((_g94893_ (##length _g94894_)))
          (cond ((##fx= _g94893_ 0) (apply make-eq-table__0 _g94894_))
                ((##fx= _g94893_ 1) (apply make-eq-table__1 _g94894_))
                ((##fx= _g94893_ 2) (apply make-eq-table__% _g94894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g94894_))))))
    (define eq-table-ref
      (lambda (_%tab94491%_ _%key94492%_ _%default94493%_)
        (let ((_%table94495%_ (&raw-table-table _%tab94491%_))
              (_%seed94496%_ (&raw-table-seed _%tab94491%_)))
          (let* ((_%h94498%_ (fxxor (eq-hash _%key94492%_) _%seed94496%_))
                 (_%size94501%_ (vector-length _%table94495%_))
                 (_%entries94504%_ (##fxquotient _%size94501%_ '2))
                 (_%start94507%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94498%_ _%entries94504%_)
                   '1)))
            (let _%loop94511%_ ((_%probe94514%_ _%start94507%_)
                                (_%i94516%_ '1)
                                (_%deleted94518%_ '#f))
              (let ((_%k94521%_ (vector-ref _%table94495%_ _%probe94514%_)))
                (if (eq? _%k94521%_ (macro-unused-obj))
                    _%default94493%_
                    (if (eq? _%k94521%_ (macro-deleted-obj))
                        (_%loop94511%_
                         (let ((_%next-probe94526%_
                                (fx+ _%start94507%_
                                     _%i94516%_
                                     (fx* _%i94516%_ _%i94516%_))))
                           (##fxmodulo _%next-probe94526%_ _%size94501%_))
                         (##fx+ _%i94516%_ '1)
                         (let ((_%$e94529%_ _%deleted94518%_))
                           (if _%$e94529%_ _%$e94529%_ _%probe94514%_)))
                        (if (eq? _%key94492%_ _%k94521%_)
                            (vector-ref
                             _%table94495%_
                             (##fx+ _%probe94514%_ '1))
                            (_%loop94511%_
                             (let ((_%next-probe94534%_
                                    (fx+ _%start94507%_
                                         _%i94516%_
                                         (fx* _%i94516%_ _%i94516%_))))
                               (##fxmodulo _%next-probe94534%_ _%size94501%_))
                             (##fx+ _%i94516%_ '1)
                             _%deleted94518%_))))))))))
    (define eq-table-set!
      (lambda (_%tab94487%_ _%key94488%_ _%value94489%_)
        (if (##fx< (&raw-table-free _%tab94487%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94487%_))
                    '4))
            (__raw-table-rehash! _%tab94487%_)
            '#!void)
        (__eq-table-set! _%tab94487%_ _%key94488%_ _%value94489%_)))
    (define __eq-table-set!
      (lambda (_%tab94438%_ _%key94439%_ _%value94440%_)
        (let ((_%table94443%_ (&raw-table-table _%tab94438%_))
              (_%seed94444%_ (&raw-table-seed _%tab94438%_)))
          (let* ((_%h94446%_ (fxxor (eq-hash _%key94439%_) _%seed94444%_))
                 (_%size94449%_ (vector-length _%table94443%_))
                 (_%entries94452%_ (##fxquotient _%size94449%_ '2))
                 (_%start94455%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94446%_ _%entries94452%_)
                   '1)))
            (let _%loop94459%_ ((_%probe94462%_ _%start94455%_)
                                (_%i94464%_ '1)
                                (_%deleted94466%_ '#f))
              (let ((_%k94469%_ (vector-ref _%table94443%_ _%probe94462%_)))
                (if (eq? _%k94469%_ (macro-unused-obj))
                    (if _%deleted94466%_
                        (begin
                          (vector-set!
                           _%table94443%_
                           _%deleted94466%_
                           _%key94439%_)
                          (vector-set!
                           _%table94443%_
                           (##fx+ _%deleted94466%_ '1)
                           _%value94440%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94438%_
                              (##fx+ (&raw-table-count _%tab94438%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94443%_
                           _%probe94462%_
                           _%key94439%_)
                          (vector-set!
                           _%table94443%_
                           (##fx+ _%probe94462%_ '1)
                           _%value94440%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94438%_
                              (##fx- (&raw-table-free _%tab94438%_) '1))
                             (&raw-table-count-set!
                              _%tab94438%_
                              (##fx+ (&raw-table-count _%tab94438%_) '1))))))
                    (if (eq? _%k94469%_ (macro-deleted-obj))
                        (_%loop94459%_
                         (let ((_%next-probe94476%_
                                (fx+ _%start94455%_
                                     _%i94464%_
                                     (fx* _%i94464%_ _%i94464%_))))
                           (##fxmodulo _%next-probe94476%_ _%size94449%_))
                         (##fx+ _%i94464%_ '1)
                         (let ((_%$e94479%_ _%deleted94466%_))
                           (if _%$e94479%_ _%$e94479%_ _%probe94462%_)))
                        (if (eq? _%key94439%_ _%k94469%_)
                            (let ()
                              (vector-set!
                               _%table94443%_
                               _%probe94462%_
                               _%key94439%_)
                              (vector-set!
                               _%table94443%_
                               (##fx+ _%probe94462%_ '1)
                               _%value94440%_))
                            (_%loop94459%_
                             (let ((_%next-probe94484%_
                                    (fx+ _%start94455%_
                                         _%i94464%_
                                         (fx* _%i94464%_ _%i94464%_))))
                               (##fxmodulo _%next-probe94484%_ _%size94449%_))
                             (##fx+ _%i94464%_ '1)
                             _%deleted94466%_))))))))))
    (define eq-table-update!
      (lambda (_%tab94433%_
               _%key94434%_
               _%eq-table-update!94435%_
               _%default94436%_)
        (if (##fx< (&raw-table-free _%tab94433%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94433%_))
                    '4))
            (__raw-table-rehash! _%tab94433%_)
            '#!void)
        (__eq-table-update!
         _%tab94433%_
         _%key94434%_
         _%eq-table-update!94435%_
         _%default94436%_)))
    (define __eq-table-update!
      (lambda (_%tab94383%_
               _%key94384%_
               _%eq-table-update!94385%_
               _%default94386%_)
        (let ((_%table94389%_ (&raw-table-table _%tab94383%_))
              (_%seed94390%_ (&raw-table-seed _%tab94383%_)))
          (let* ((_%h94392%_ (fxxor (eq-hash _%key94384%_) _%seed94390%_))
                 (_%size94395%_ (vector-length _%table94389%_))
                 (_%entries94398%_ (##fxquotient _%size94395%_ '2))
                 (_%start94401%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94392%_ _%entries94398%_)
                   '1)))
            (let _%loop94405%_ ((_%probe94408%_ _%start94401%_)
                                (_%i94410%_ '1)
                                (_%deleted94412%_ '#f))
              (let ((_%k94415%_ (vector-ref _%table94389%_ _%probe94408%_)))
                (if (eq? _%k94415%_ (macro-unused-obj))
                    (if _%deleted94412%_
                        (begin
                          (vector-set!
                           _%table94389%_
                           _%deleted94412%_
                           _%key94384%_)
                          (vector-set!
                           _%table94389%_
                           (##fx+ _%deleted94412%_ '1)
                           (_%eq-table-update!94385%_ _%default94386%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94383%_
                              (##fx+ (&raw-table-count _%tab94383%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94389%_
                           _%probe94408%_
                           _%key94384%_)
                          (vector-set!
                           _%table94389%_
                           (##fx+ _%probe94408%_ '1)
                           (_%eq-table-update!94385%_ _%default94386%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94383%_
                              (##fx- (&raw-table-free _%tab94383%_) '1))
                             (&raw-table-count-set!
                              _%tab94383%_
                              (##fx+ (&raw-table-count _%tab94383%_) '1))))))
                    (if (eq? _%k94415%_ (macro-deleted-obj))
                        (_%loop94405%_
                         (let ((_%next-probe94422%_
                                (fx+ _%start94401%_
                                     _%i94410%_
                                     (fx* _%i94410%_ _%i94410%_))))
                           (##fxmodulo _%next-probe94422%_ _%size94395%_))
                         (##fx+ _%i94410%_ '1)
                         (let ((_%$e94425%_ _%deleted94412%_))
                           (if _%$e94425%_ _%$e94425%_ _%probe94408%_)))
                        (if (eq? _%key94384%_ _%k94415%_)
                            (let ()
                              (vector-set!
                               _%table94389%_
                               _%probe94408%_
                               _%key94384%_)
                              (vector-set!
                               _%table94389%_
                               (##fx+ _%probe94408%_ '1)
                               (_%eq-table-update!94385%_
                                (vector-ref
                                 _%table94389%_
                                 (##fx+ _%probe94408%_ '1)))))
                            (_%loop94405%_
                             (let ((_%next-probe94430%_
                                    (fx+ _%start94401%_
                                         _%i94410%_
                                         (fx* _%i94410%_ _%i94410%_))))
                               (##fxmodulo _%next-probe94430%_ _%size94395%_))
                             (##fx+ _%i94410%_ '1)
                             _%deleted94412%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab94338%_ _%key94340%_)
        (let ((_%table94343%_ (&raw-table-table _%tab94338%_))
              (_%seed94345%_ (&raw-table-seed _%tab94338%_)))
          (let* ((_%h94348%_ (fxxor (eq-hash _%key94340%_) _%seed94345%_))
                 (_%size94351%_ (vector-length _%table94343%_))
                 (_%entries94354%_ (##fxquotient _%size94351%_ '2))
                 (_%start94357%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94348%_ _%entries94354%_)
                   '1)))
            (let _%loop94361%_ ((_%probe94364%_ _%start94357%_)
                                (_%i94366%_ '1))
              (let ((_%k94369%_ (vector-ref _%table94343%_ _%probe94364%_)))
                (if (eq? _%k94369%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94369%_ (macro-deleted-obj))
                        (_%loop94361%_
                         (let ((_%next-probe94374%_
                                (fx+ _%start94357%_
                                     _%i94366%_
                                     (fx* _%i94366%_ _%i94366%_))))
                           (##fxmodulo _%next-probe94374%_ _%size94351%_))
                         (##fx+ _%i94366%_ '1))
                        (if (eq? _%key94340%_ _%k94369%_)
                            (let ()
                              (vector-set!
                               _%table94343%_
                               _%probe94364%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94343%_
                               (##fx+ _%probe94364%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94338%_
                                  (##fx- (&raw-table-count _%tab94338%_)
                                         '1)))))
                            (_%loop94361%_
                             (let ((_%next-probe94380%_
                                    (fx+ _%start94357%_
                                         _%i94366%_
                                         (fx* _%i94366%_ _%i94366%_))))
                               (##fxmodulo _%next-probe94380%_ _%size94351%_))
                             (##fx+ _%i94366%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint94319%_ _%seed94321%_)
        (make-raw-table__% _%size-hint94319%_ eqv-hash eqv? _%seed94321%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint94327%_ '#f) (_%seed94329%_ '0))
          (make-eqv-table__% _%size-hint94327%_ _%seed94329%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint94331%_)
        (let ((_%seed94333%_ '0))
          (make-eqv-table__% _%size-hint94331%_ _%seed94333%_))))
    (define make-eqv-table
      (lambda _g94896_
        (let ((_g94895_ (##length _g94896_)))
          (cond ((##fx= _g94895_ 0) (apply make-eqv-table__0 _g94896_))
                ((##fx= _g94895_ 1) (apply make-eqv-table__1 _g94896_))
                ((##fx= _g94895_ 2) (apply make-eqv-table__% _g94896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g94896_))))))
    (define eqv-table-ref
      (lambda (_%tab94272%_ _%key94273%_ _%default94274%_)
        (let ((_%table94276%_ (&raw-table-table _%tab94272%_))
              (_%seed94277%_ (&raw-table-seed _%tab94272%_)))
          (let* ((_%h94279%_ (fxxor (eqv-hash _%key94273%_) _%seed94277%_))
                 (_%size94282%_ (vector-length _%table94276%_))
                 (_%entries94285%_ (##fxquotient _%size94282%_ '2))
                 (_%start94288%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94279%_ _%entries94285%_)
                   '1)))
            (let _%loop94292%_ ((_%probe94295%_ _%start94288%_)
                                (_%i94297%_ '1)
                                (_%deleted94299%_ '#f))
              (let ((_%k94302%_ (vector-ref _%table94276%_ _%probe94295%_)))
                (if (eq? _%k94302%_ (macro-unused-obj))
                    _%default94274%_
                    (if (eq? _%k94302%_ (macro-deleted-obj))
                        (_%loop94292%_
                         (let ((_%next-probe94307%_
                                (fx+ _%start94288%_
                                     _%i94297%_
                                     (fx* _%i94297%_ _%i94297%_))))
                           (##fxmodulo _%next-probe94307%_ _%size94282%_))
                         (##fx+ _%i94297%_ '1)
                         (let ((_%$e94310%_ _%deleted94299%_))
                           (if _%$e94310%_ _%$e94310%_ _%probe94295%_)))
                        (if (eqv? _%key94273%_ _%k94302%_)
                            (vector-ref
                             _%table94276%_
                             (##fx+ _%probe94295%_ '1))
                            (_%loop94292%_
                             (let ((_%next-probe94315%_
                                    (fx+ _%start94288%_
                                         _%i94297%_
                                         (fx* _%i94297%_ _%i94297%_))))
                               (##fxmodulo _%next-probe94315%_ _%size94282%_))
                             (##fx+ _%i94297%_ '1)
                             _%deleted94299%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab94268%_ _%key94269%_ _%value94270%_)
        (if (##fx< (&raw-table-free _%tab94268%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94268%_))
                    '4))
            (__raw-table-rehash! _%tab94268%_)
            '#!void)
        (__eqv-table-set! _%tab94268%_ _%key94269%_ _%value94270%_)))
    (define __eqv-table-set!
      (lambda (_%tab94219%_ _%key94220%_ _%value94221%_)
        (let ((_%table94224%_ (&raw-table-table _%tab94219%_))
              (_%seed94225%_ (&raw-table-seed _%tab94219%_)))
          (let* ((_%h94227%_ (fxxor (eqv-hash _%key94220%_) _%seed94225%_))
                 (_%size94230%_ (vector-length _%table94224%_))
                 (_%entries94233%_ (##fxquotient _%size94230%_ '2))
                 (_%start94236%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94227%_ _%entries94233%_)
                   '1)))
            (let _%loop94240%_ ((_%probe94243%_ _%start94236%_)
                                (_%i94245%_ '1)
                                (_%deleted94247%_ '#f))
              (let ((_%k94250%_ (vector-ref _%table94224%_ _%probe94243%_)))
                (if (eq? _%k94250%_ (macro-unused-obj))
                    (if _%deleted94247%_
                        (begin
                          (vector-set!
                           _%table94224%_
                           _%deleted94247%_
                           _%key94220%_)
                          (vector-set!
                           _%table94224%_
                           (##fx+ _%deleted94247%_ '1)
                           _%value94221%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94219%_
                              (##fx+ (&raw-table-count _%tab94219%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94224%_
                           _%probe94243%_
                           _%key94220%_)
                          (vector-set!
                           _%table94224%_
                           (##fx+ _%probe94243%_ '1)
                           _%value94221%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94219%_
                              (##fx- (&raw-table-free _%tab94219%_) '1))
                             (&raw-table-count-set!
                              _%tab94219%_
                              (##fx+ (&raw-table-count _%tab94219%_) '1))))))
                    (if (eq? _%k94250%_ (macro-deleted-obj))
                        (_%loop94240%_
                         (let ((_%next-probe94257%_
                                (fx+ _%start94236%_
                                     _%i94245%_
                                     (fx* _%i94245%_ _%i94245%_))))
                           (##fxmodulo _%next-probe94257%_ _%size94230%_))
                         (##fx+ _%i94245%_ '1)
                         (let ((_%$e94260%_ _%deleted94247%_))
                           (if _%$e94260%_ _%$e94260%_ _%probe94243%_)))
                        (if (eqv? _%key94220%_ _%k94250%_)
                            (let ()
                              (vector-set!
                               _%table94224%_
                               _%probe94243%_
                               _%key94220%_)
                              (vector-set!
                               _%table94224%_
                               (##fx+ _%probe94243%_ '1)
                               _%value94221%_))
                            (_%loop94240%_
                             (let ((_%next-probe94265%_
                                    (fx+ _%start94236%_
                                         _%i94245%_
                                         (fx* _%i94245%_ _%i94245%_))))
                               (##fxmodulo _%next-probe94265%_ _%size94230%_))
                             (##fx+ _%i94245%_ '1)
                             _%deleted94247%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab94214%_
               _%key94215%_
               _%eqv-table-update!94216%_
               _%default94217%_)
        (if (##fx< (&raw-table-free _%tab94214%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94214%_))
                    '4))
            (__raw-table-rehash! _%tab94214%_)
            '#!void)
        (__eqv-table-update!
         _%tab94214%_
         _%key94215%_
         _%eqv-table-update!94216%_
         _%default94217%_)))
    (define __eqv-table-update!
      (lambda (_%tab94164%_
               _%key94165%_
               _%eqv-table-update!94166%_
               _%default94167%_)
        (let ((_%table94170%_ (&raw-table-table _%tab94164%_))
              (_%seed94171%_ (&raw-table-seed _%tab94164%_)))
          (let* ((_%h94173%_ (fxxor (eqv-hash _%key94165%_) _%seed94171%_))
                 (_%size94176%_ (vector-length _%table94170%_))
                 (_%entries94179%_ (##fxquotient _%size94176%_ '2))
                 (_%start94182%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94173%_ _%entries94179%_)
                   '1)))
            (let _%loop94186%_ ((_%probe94189%_ _%start94182%_)
                                (_%i94191%_ '1)
                                (_%deleted94193%_ '#f))
              (let ((_%k94196%_ (vector-ref _%table94170%_ _%probe94189%_)))
                (if (eq? _%k94196%_ (macro-unused-obj))
                    (if _%deleted94193%_
                        (begin
                          (vector-set!
                           _%table94170%_
                           _%deleted94193%_
                           _%key94165%_)
                          (vector-set!
                           _%table94170%_
                           (##fx+ _%deleted94193%_ '1)
                           (_%eqv-table-update!94166%_ _%default94167%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94164%_
                              (##fx+ (&raw-table-count _%tab94164%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94170%_
                           _%probe94189%_
                           _%key94165%_)
                          (vector-set!
                           _%table94170%_
                           (##fx+ _%probe94189%_ '1)
                           (_%eqv-table-update!94166%_ _%default94167%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94164%_
                              (##fx- (&raw-table-free _%tab94164%_) '1))
                             (&raw-table-count-set!
                              _%tab94164%_
                              (##fx+ (&raw-table-count _%tab94164%_) '1))))))
                    (if (eq? _%k94196%_ (macro-deleted-obj))
                        (_%loop94186%_
                         (let ((_%next-probe94203%_
                                (fx+ _%start94182%_
                                     _%i94191%_
                                     (fx* _%i94191%_ _%i94191%_))))
                           (##fxmodulo _%next-probe94203%_ _%size94176%_))
                         (##fx+ _%i94191%_ '1)
                         (let ((_%$e94206%_ _%deleted94193%_))
                           (if _%$e94206%_ _%$e94206%_ _%probe94189%_)))
                        (if (eqv? _%key94165%_ _%k94196%_)
                            (let ()
                              (vector-set!
                               _%table94170%_
                               _%probe94189%_
                               _%key94165%_)
                              (vector-set!
                               _%table94170%_
                               (##fx+ _%probe94189%_ '1)
                               (_%eqv-table-update!94166%_
                                (vector-ref
                                 _%table94170%_
                                 (##fx+ _%probe94189%_ '1)))))
                            (_%loop94186%_
                             (let ((_%next-probe94211%_
                                    (fx+ _%start94182%_
                                         _%i94191%_
                                         (fx* _%i94191%_ _%i94191%_))))
                               (##fxmodulo _%next-probe94211%_ _%size94176%_))
                             (##fx+ _%i94191%_ '1)
                             _%deleted94193%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab94119%_ _%key94121%_)
        (let ((_%table94124%_ (&raw-table-table _%tab94119%_))
              (_%seed94126%_ (&raw-table-seed _%tab94119%_)))
          (let* ((_%h94129%_ (fxxor (eqv-hash _%key94121%_) _%seed94126%_))
                 (_%size94132%_ (vector-length _%table94124%_))
                 (_%entries94135%_ (##fxquotient _%size94132%_ '2))
                 (_%start94138%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94129%_ _%entries94135%_)
                   '1)))
            (let _%loop94142%_ ((_%probe94145%_ _%start94138%_)
                                (_%i94147%_ '1))
              (let ((_%k94150%_ (vector-ref _%table94124%_ _%probe94145%_)))
                (if (eq? _%k94150%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94150%_ (macro-deleted-obj))
                        (_%loop94142%_
                         (let ((_%next-probe94155%_
                                (fx+ _%start94138%_
                                     _%i94147%_
                                     (fx* _%i94147%_ _%i94147%_))))
                           (##fxmodulo _%next-probe94155%_ _%size94132%_))
                         (##fx+ _%i94147%_ '1))
                        (if (eqv? _%key94121%_ _%k94150%_)
                            (let ()
                              (vector-set!
                               _%table94124%_
                               _%probe94145%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94124%_
                               (##fx+ _%probe94145%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94119%_
                                  (##fx- (&raw-table-count _%tab94119%_)
                                         '1)))))
                            (_%loop94142%_
                             (let ((_%next-probe94161%_
                                    (fx+ _%start94138%_
                                         _%i94147%_
                                         (fx* _%i94147%_ _%i94147%_))))
                               (##fxmodulo _%next-probe94161%_ _%size94132%_))
                             (##fx+ _%i94147%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint94100%_ _%seed94102%_)
        (make-raw-table__%
         _%size-hint94100%_
         symbolic-hash
         eq?
         _%seed94102%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint94108%_ '#f) (_%seed94110%_ '0))
          (make-symbolic-table__% _%size-hint94108%_ _%seed94110%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint94112%_)
        (let ((_%seed94114%_ '0))
          (make-symbolic-table__% _%size-hint94112%_ _%seed94114%_))))
    (define make-symbolic-table
      (lambda _g94898_
        (let ((_g94897_ (##length _g94898_)))
          (cond ((##fx= _g94897_ 0) (apply make-symbolic-table__0 _g94898_))
                ((##fx= _g94897_ 1) (apply make-symbolic-table__1 _g94898_))
                ((##fx= _g94897_ 2) (apply make-symbolic-table__% _g94898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g94898_))))))
    (define symbolic-table-ref
      (lambda (_%tab94053%_ _%key94054%_ _%default94055%_)
        (let ((_%table94057%_ (&raw-table-table _%tab94053%_))
              (_%seed94058%_ (&raw-table-seed _%tab94053%_)))
          (let* ((_%h94060%_
                  (fxxor (symbolic-hash _%key94054%_) _%seed94058%_))
                 (_%size94063%_ (vector-length _%table94057%_))
                 (_%entries94066%_ (##fxquotient _%size94063%_ '2))
                 (_%start94069%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94060%_ _%entries94066%_)
                   '1)))
            (let _%loop94073%_ ((_%probe94076%_ _%start94069%_)
                                (_%i94078%_ '1)
                                (_%deleted94080%_ '#f))
              (let ((_%k94083%_ (vector-ref _%table94057%_ _%probe94076%_)))
                (if (eq? _%k94083%_ (macro-unused-obj))
                    _%default94055%_
                    (if (eq? _%k94083%_ (macro-deleted-obj))
                        (_%loop94073%_
                         (let ((_%next-probe94088%_
                                (fx+ _%start94069%_
                                     _%i94078%_
                                     (fx* _%i94078%_ _%i94078%_))))
                           (##fxmodulo _%next-probe94088%_ _%size94063%_))
                         (##fx+ _%i94078%_ '1)
                         (let ((_%$e94091%_ _%deleted94080%_))
                           (if _%$e94091%_ _%$e94091%_ _%probe94076%_)))
                        (if (eq? _%key94054%_ _%k94083%_)
                            (vector-ref
                             _%table94057%_
                             (##fx+ _%probe94076%_ '1))
                            (_%loop94073%_
                             (let ((_%next-probe94096%_
                                    (fx+ _%start94069%_
                                         _%i94078%_
                                         (fx* _%i94078%_ _%i94078%_))))
                               (##fxmodulo _%next-probe94096%_ _%size94063%_))
                             (##fx+ _%i94078%_ '1)
                             _%deleted94080%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab94049%_ _%key94050%_ _%value94051%_)
        (if (##fx< (&raw-table-free _%tab94049%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94049%_))
                    '4))
            (__raw-table-rehash! _%tab94049%_)
            '#!void)
        (__symbolic-table-set! _%tab94049%_ _%key94050%_ _%value94051%_)))
    (define __symbolic-table-set!
      (lambda (_%tab94000%_ _%key94001%_ _%value94002%_)
        (let ((_%table94005%_ (&raw-table-table _%tab94000%_))
              (_%seed94006%_ (&raw-table-seed _%tab94000%_)))
          (let* ((_%h94008%_
                  (fxxor (symbolic-hash _%key94001%_) _%seed94006%_))
                 (_%size94011%_ (vector-length _%table94005%_))
                 (_%entries94014%_ (##fxquotient _%size94011%_ '2))
                 (_%start94017%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94008%_ _%entries94014%_)
                   '1)))
            (let _%loop94021%_ ((_%probe94024%_ _%start94017%_)
                                (_%i94026%_ '1)
                                (_%deleted94028%_ '#f))
              (let ((_%k94031%_ (vector-ref _%table94005%_ _%probe94024%_)))
                (if (eq? _%k94031%_ (macro-unused-obj))
                    (if _%deleted94028%_
                        (begin
                          (vector-set!
                           _%table94005%_
                           _%deleted94028%_
                           _%key94001%_)
                          (vector-set!
                           _%table94005%_
                           (##fx+ _%deleted94028%_ '1)
                           _%value94002%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94000%_
                              (##fx+ (&raw-table-count _%tab94000%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94005%_
                           _%probe94024%_
                           _%key94001%_)
                          (vector-set!
                           _%table94005%_
                           (##fx+ _%probe94024%_ '1)
                           _%value94002%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94000%_
                              (##fx- (&raw-table-free _%tab94000%_) '1))
                             (&raw-table-count-set!
                              _%tab94000%_
                              (##fx+ (&raw-table-count _%tab94000%_) '1))))))
                    (if (eq? _%k94031%_ (macro-deleted-obj))
                        (_%loop94021%_
                         (let ((_%next-probe94038%_
                                (fx+ _%start94017%_
                                     _%i94026%_
                                     (fx* _%i94026%_ _%i94026%_))))
                           (##fxmodulo _%next-probe94038%_ _%size94011%_))
                         (##fx+ _%i94026%_ '1)
                         (let ((_%$e94041%_ _%deleted94028%_))
                           (if _%$e94041%_ _%$e94041%_ _%probe94024%_)))
                        (if (eq? _%key94001%_ _%k94031%_)
                            (let ()
                              (vector-set!
                               _%table94005%_
                               _%probe94024%_
                               _%key94001%_)
                              (vector-set!
                               _%table94005%_
                               (##fx+ _%probe94024%_ '1)
                               _%value94002%_))
                            (_%loop94021%_
                             (let ((_%next-probe94046%_
                                    (fx+ _%start94017%_
                                         _%i94026%_
                                         (fx* _%i94026%_ _%i94026%_))))
                               (##fxmodulo _%next-probe94046%_ _%size94011%_))
                             (##fx+ _%i94026%_ '1)
                             _%deleted94028%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab93995%_
               _%key93996%_
               _%symbolic-table-update!93997%_
               _%default93998%_)
        (if (##fx< (&raw-table-free _%tab93995%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93995%_))
                    '4))
            (__raw-table-rehash! _%tab93995%_)
            '#!void)
        (__symbolic-table-update!
         _%tab93995%_
         _%key93996%_
         _%symbolic-table-update!93997%_
         _%default93998%_)))
    (define __symbolic-table-update!
      (lambda (_%tab93945%_
               _%key93946%_
               _%symbolic-table-update!93947%_
               _%default93948%_)
        (let ((_%table93951%_ (&raw-table-table _%tab93945%_))
              (_%seed93952%_ (&raw-table-seed _%tab93945%_)))
          (let* ((_%h93954%_
                  (fxxor (symbolic-hash _%key93946%_) _%seed93952%_))
                 (_%size93957%_ (vector-length _%table93951%_))
                 (_%entries93960%_ (##fxquotient _%size93957%_ '2))
                 (_%start93963%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93954%_ _%entries93960%_)
                   '1)))
            (let _%loop93967%_ ((_%probe93970%_ _%start93963%_)
                                (_%i93972%_ '1)
                                (_%deleted93974%_ '#f))
              (let ((_%k93977%_ (vector-ref _%table93951%_ _%probe93970%_)))
                (if (eq? _%k93977%_ (macro-unused-obj))
                    (if _%deleted93974%_
                        (begin
                          (vector-set!
                           _%table93951%_
                           _%deleted93974%_
                           _%key93946%_)
                          (vector-set!
                           _%table93951%_
                           (##fx+ _%deleted93974%_ '1)
                           (_%symbolic-table-update!93947%_ _%default93948%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93945%_
                              (##fx+ (&raw-table-count _%tab93945%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93951%_
                           _%probe93970%_
                           _%key93946%_)
                          (vector-set!
                           _%table93951%_
                           (##fx+ _%probe93970%_ '1)
                           (_%symbolic-table-update!93947%_ _%default93948%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93945%_
                              (##fx- (&raw-table-free _%tab93945%_) '1))
                             (&raw-table-count-set!
                              _%tab93945%_
                              (##fx+ (&raw-table-count _%tab93945%_) '1))))))
                    (if (eq? _%k93977%_ (macro-deleted-obj))
                        (_%loop93967%_
                         (let ((_%next-probe93984%_
                                (fx+ _%start93963%_
                                     _%i93972%_
                                     (fx* _%i93972%_ _%i93972%_))))
                           (##fxmodulo _%next-probe93984%_ _%size93957%_))
                         (##fx+ _%i93972%_ '1)
                         (let ((_%$e93987%_ _%deleted93974%_))
                           (if _%$e93987%_ _%$e93987%_ _%probe93970%_)))
                        (if (eq? _%key93946%_ _%k93977%_)
                            (let ()
                              (vector-set!
                               _%table93951%_
                               _%probe93970%_
                               _%key93946%_)
                              (vector-set!
                               _%table93951%_
                               (##fx+ _%probe93970%_ '1)
                               (_%symbolic-table-update!93947%_
                                (vector-ref
                                 _%table93951%_
                                 (##fx+ _%probe93970%_ '1)))))
                            (_%loop93967%_
                             (let ((_%next-probe93992%_
                                    (fx+ _%start93963%_
                                         _%i93972%_
                                         (fx* _%i93972%_ _%i93972%_))))
                               (##fxmodulo _%next-probe93992%_ _%size93957%_))
                             (##fx+ _%i93972%_ '1)
                             _%deleted93974%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab93900%_ _%key93902%_)
        (let ((_%table93905%_ (&raw-table-table _%tab93900%_))
              (_%seed93907%_ (&raw-table-seed _%tab93900%_)))
          (let* ((_%h93910%_
                  (fxxor (symbolic-hash _%key93902%_) _%seed93907%_))
                 (_%size93913%_ (vector-length _%table93905%_))
                 (_%entries93916%_ (##fxquotient _%size93913%_ '2))
                 (_%start93919%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93910%_ _%entries93916%_)
                   '1)))
            (let _%loop93923%_ ((_%probe93926%_ _%start93919%_)
                                (_%i93928%_ '1))
              (let ((_%k93931%_ (vector-ref _%table93905%_ _%probe93926%_)))
                (if (eq? _%k93931%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93931%_ (macro-deleted-obj))
                        (_%loop93923%_
                         (let ((_%next-probe93936%_
                                (fx+ _%start93919%_
                                     _%i93928%_
                                     (fx* _%i93928%_ _%i93928%_))))
                           (##fxmodulo _%next-probe93936%_ _%size93913%_))
                         (##fx+ _%i93928%_ '1))
                        (if (eq? _%key93902%_ _%k93931%_)
                            (let ()
                              (vector-set!
                               _%table93905%_
                               _%probe93926%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93905%_
                               (##fx+ _%probe93926%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93900%_
                                  (##fx- (&raw-table-count _%tab93900%_)
                                         '1)))))
                            (_%loop93923%_
                             (let ((_%next-probe93942%_
                                    (fx+ _%start93919%_
                                         _%i93928%_
                                         (fx* _%i93928%_ _%i93928%_))))
                               (##fxmodulo _%next-probe93942%_ _%size93913%_))
                             (##fx+ _%i93928%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint93881%_ _%seed93883%_)
        (make-raw-table__%
         _%size-hint93881%_
         string-hash
         ##string=?
         _%seed93883%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint93889%_ '#f) (_%seed93891%_ '0))
          (make-string-table__% _%size-hint93889%_ _%seed93891%_))))
    (define make-string-table__1
      (lambda (_%size-hint93893%_)
        (let ((_%seed93895%_ '0))
          (make-string-table__% _%size-hint93893%_ _%seed93895%_))))
    (define make-string-table
      (lambda _g94900_
        (let ((_g94899_ (##length _g94900_)))
          (cond ((##fx= _g94899_ 0) (apply make-string-table__0 _g94900_))
                ((##fx= _g94899_ 1) (apply make-string-table__1 _g94900_))
                ((##fx= _g94899_ 2) (apply make-string-table__% _g94900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g94900_))))))
    (define string-table-ref
      (lambda (_%tab93834%_ _%key93835%_ _%default93836%_)
        (let ((_%table93838%_ (&raw-table-table _%tab93834%_))
              (_%seed93839%_ (&raw-table-seed _%tab93834%_)))
          (let* ((_%h93841%_
                  (fxxor (##string=?-hash _%key93835%_) _%seed93839%_))
                 (_%size93844%_ (vector-length _%table93838%_))
                 (_%entries93847%_ (##fxquotient _%size93844%_ '2))
                 (_%start93850%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93841%_ _%entries93847%_)
                   '1)))
            (let _%loop93854%_ ((_%probe93857%_ _%start93850%_)
                                (_%i93859%_ '1)
                                (_%deleted93861%_ '#f))
              (let ((_%k93864%_ (vector-ref _%table93838%_ _%probe93857%_)))
                (if (eq? _%k93864%_ (macro-unused-obj))
                    _%default93836%_
                    (if (eq? _%k93864%_ (macro-deleted-obj))
                        (_%loop93854%_
                         (let ((_%next-probe93869%_
                                (fx+ _%start93850%_
                                     _%i93859%_
                                     (fx* _%i93859%_ _%i93859%_))))
                           (##fxmodulo _%next-probe93869%_ _%size93844%_))
                         (##fx+ _%i93859%_ '1)
                         (let ((_%$e93872%_ _%deleted93861%_))
                           (if _%$e93872%_ _%$e93872%_ _%probe93857%_)))
                        (if (##string=? _%key93835%_ _%k93864%_)
                            (vector-ref
                             _%table93838%_
                             (##fx+ _%probe93857%_ '1))
                            (_%loop93854%_
                             (let ((_%next-probe93877%_
                                    (fx+ _%start93850%_
                                         _%i93859%_
                                         (fx* _%i93859%_ _%i93859%_))))
                               (##fxmodulo _%next-probe93877%_ _%size93844%_))
                             (##fx+ _%i93859%_ '1)
                             _%deleted93861%_))))))))))
    (define string-table-set!
      (lambda (_%tab93830%_ _%key93831%_ _%value93832%_)
        (if (##fx< (&raw-table-free _%tab93830%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93830%_))
                    '4))
            (__raw-table-rehash! _%tab93830%_)
            '#!void)
        (__string-table-set! _%tab93830%_ _%key93831%_ _%value93832%_)))
    (define __string-table-set!
      (lambda (_%tab93781%_ _%key93782%_ _%value93783%_)
        (let ((_%table93786%_ (&raw-table-table _%tab93781%_))
              (_%seed93787%_ (&raw-table-seed _%tab93781%_)))
          (let* ((_%h93789%_
                  (fxxor (##string=?-hash _%key93782%_) _%seed93787%_))
                 (_%size93792%_ (vector-length _%table93786%_))
                 (_%entries93795%_ (##fxquotient _%size93792%_ '2))
                 (_%start93798%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93789%_ _%entries93795%_)
                   '1)))
            (let _%loop93802%_ ((_%probe93805%_ _%start93798%_)
                                (_%i93807%_ '1)
                                (_%deleted93809%_ '#f))
              (let ((_%k93812%_ (vector-ref _%table93786%_ _%probe93805%_)))
                (if (eq? _%k93812%_ (macro-unused-obj))
                    (if _%deleted93809%_
                        (begin
                          (vector-set!
                           _%table93786%_
                           _%deleted93809%_
                           _%key93782%_)
                          (vector-set!
                           _%table93786%_
                           (##fx+ _%deleted93809%_ '1)
                           _%value93783%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93781%_
                              (##fx+ (&raw-table-count _%tab93781%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93786%_
                           _%probe93805%_
                           _%key93782%_)
                          (vector-set!
                           _%table93786%_
                           (##fx+ _%probe93805%_ '1)
                           _%value93783%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93781%_
                              (##fx- (&raw-table-free _%tab93781%_) '1))
                             (&raw-table-count-set!
                              _%tab93781%_
                              (##fx+ (&raw-table-count _%tab93781%_) '1))))))
                    (if (eq? _%k93812%_ (macro-deleted-obj))
                        (_%loop93802%_
                         (let ((_%next-probe93819%_
                                (fx+ _%start93798%_
                                     _%i93807%_
                                     (fx* _%i93807%_ _%i93807%_))))
                           (##fxmodulo _%next-probe93819%_ _%size93792%_))
                         (##fx+ _%i93807%_ '1)
                         (let ((_%$e93822%_ _%deleted93809%_))
                           (if _%$e93822%_ _%$e93822%_ _%probe93805%_)))
                        (if (##string=? _%key93782%_ _%k93812%_)
                            (let ()
                              (vector-set!
                               _%table93786%_
                               _%probe93805%_
                               _%key93782%_)
                              (vector-set!
                               _%table93786%_
                               (##fx+ _%probe93805%_ '1)
                               _%value93783%_))
                            (_%loop93802%_
                             (let ((_%next-probe93827%_
                                    (fx+ _%start93798%_
                                         _%i93807%_
                                         (fx* _%i93807%_ _%i93807%_))))
                               (##fxmodulo _%next-probe93827%_ _%size93792%_))
                             (##fx+ _%i93807%_ '1)
                             _%deleted93809%_))))))))))
    (define string-table-update!
      (lambda (_%tab93776%_
               _%key93777%_
               _%string-table-update!93778%_
               _%default93779%_)
        (if (##fx< (&raw-table-free _%tab93776%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93776%_))
                    '4))
            (__raw-table-rehash! _%tab93776%_)
            '#!void)
        (__string-table-update!
         _%tab93776%_
         _%key93777%_
         _%string-table-update!93778%_
         _%default93779%_)))
    (define __string-table-update!
      (lambda (_%tab93726%_
               _%key93727%_
               _%string-table-update!93728%_
               _%default93729%_)
        (let ((_%table93732%_ (&raw-table-table _%tab93726%_))
              (_%seed93733%_ (&raw-table-seed _%tab93726%_)))
          (let* ((_%h93735%_
                  (fxxor (##string=?-hash _%key93727%_) _%seed93733%_))
                 (_%size93738%_ (vector-length _%table93732%_))
                 (_%entries93741%_ (##fxquotient _%size93738%_ '2))
                 (_%start93744%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93735%_ _%entries93741%_)
                   '1)))
            (let _%loop93748%_ ((_%probe93751%_ _%start93744%_)
                                (_%i93753%_ '1)
                                (_%deleted93755%_ '#f))
              (let ((_%k93758%_ (vector-ref _%table93732%_ _%probe93751%_)))
                (if (eq? _%k93758%_ (macro-unused-obj))
                    (if _%deleted93755%_
                        (begin
                          (vector-set!
                           _%table93732%_
                           _%deleted93755%_
                           _%key93727%_)
                          (vector-set!
                           _%table93732%_
                           (##fx+ _%deleted93755%_ '1)
                           (_%string-table-update!93728%_ _%default93729%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93726%_
                              (##fx+ (&raw-table-count _%tab93726%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93732%_
                           _%probe93751%_
                           _%key93727%_)
                          (vector-set!
                           _%table93732%_
                           (##fx+ _%probe93751%_ '1)
                           (_%string-table-update!93728%_ _%default93729%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93726%_
                              (##fx- (&raw-table-free _%tab93726%_) '1))
                             (&raw-table-count-set!
                              _%tab93726%_
                              (##fx+ (&raw-table-count _%tab93726%_) '1))))))
                    (if (eq? _%k93758%_ (macro-deleted-obj))
                        (_%loop93748%_
                         (let ((_%next-probe93765%_
                                (fx+ _%start93744%_
                                     _%i93753%_
                                     (fx* _%i93753%_ _%i93753%_))))
                           (##fxmodulo _%next-probe93765%_ _%size93738%_))
                         (##fx+ _%i93753%_ '1)
                         (let ((_%$e93768%_ _%deleted93755%_))
                           (if _%$e93768%_ _%$e93768%_ _%probe93751%_)))
                        (if (##string=? _%key93727%_ _%k93758%_)
                            (let ()
                              (vector-set!
                               _%table93732%_
                               _%probe93751%_
                               _%key93727%_)
                              (vector-set!
                               _%table93732%_
                               (##fx+ _%probe93751%_ '1)
                               (_%string-table-update!93728%_
                                (vector-ref
                                 _%table93732%_
                                 (##fx+ _%probe93751%_ '1)))))
                            (_%loop93748%_
                             (let ((_%next-probe93773%_
                                    (fx+ _%start93744%_
                                         _%i93753%_
                                         (fx* _%i93753%_ _%i93753%_))))
                               (##fxmodulo _%next-probe93773%_ _%size93738%_))
                             (##fx+ _%i93753%_ '1)
                             _%deleted93755%_))))))))))
    (define string-table-delete!
      (lambda (_%tab93681%_ _%key93683%_)
        (let ((_%table93686%_ (&raw-table-table _%tab93681%_))
              (_%seed93688%_ (&raw-table-seed _%tab93681%_)))
          (let* ((_%h93691%_
                  (fxxor (##string=?-hash _%key93683%_) _%seed93688%_))
                 (_%size93694%_ (vector-length _%table93686%_))
                 (_%entries93697%_ (##fxquotient _%size93694%_ '2))
                 (_%start93700%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93691%_ _%entries93697%_)
                   '1)))
            (let _%loop93704%_ ((_%probe93707%_ _%start93700%_)
                                (_%i93709%_ '1))
              (let ((_%k93712%_ (vector-ref _%table93686%_ _%probe93707%_)))
                (if (eq? _%k93712%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93712%_ (macro-deleted-obj))
                        (_%loop93704%_
                         (let ((_%next-probe93717%_
                                (fx+ _%start93700%_
                                     _%i93709%_
                                     (fx* _%i93709%_ _%i93709%_))))
                           (##fxmodulo _%next-probe93717%_ _%size93694%_))
                         (##fx+ _%i93709%_ '1))
                        (if (##string=? _%key93683%_ _%k93712%_)
                            (let ()
                              (vector-set!
                               _%table93686%_
                               _%probe93707%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93686%_
                               (##fx+ _%probe93707%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93681%_
                                  (##fx- (&raw-table-count _%tab93681%_)
                                         '1)))))
                            (_%loop93704%_
                             (let ((_%next-probe93723%_
                                    (fx+ _%start93700%_
                                         _%i93709%_
                                         (fx* _%i93709%_ _%i93709%_))))
                               (##fxmodulo _%next-probe93723%_ _%size93694%_))
                             (##fx+ _%i93709%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint93662%_ _%seed93664%_)
        (make-raw-table__%
         _%size-hint93662%_
         immediate-hash
         eq?
         _%seed93664%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint93670%_ '#f) (_%seed93672%_ '0))
          (make-immediate-table__% _%size-hint93670%_ _%seed93672%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint93674%_)
        (let ((_%seed93676%_ '0))
          (make-immediate-table__% _%size-hint93674%_ _%seed93676%_))))
    (define make-immediate-table
      (lambda _g94902_
        (let ((_g94901_ (##length _g94902_)))
          (cond ((##fx= _g94901_ 0) (apply make-immediate-table__0 _g94902_))
                ((##fx= _g94901_ 1) (apply make-immediate-table__1 _g94902_))
                ((##fx= _g94901_ 2) (apply make-immediate-table__% _g94902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g94902_))))))
    (define immediate-table-ref
      (lambda (_%tab93615%_ _%key93616%_ _%default93617%_)
        (let ((_%table93619%_ (&raw-table-table _%tab93615%_))
              (_%seed93620%_ (&raw-table-seed _%tab93615%_)))
          (let* ((_%h93622%_
                  (fxxor (immediate-hash _%key93616%_) _%seed93620%_))
                 (_%size93625%_ (vector-length _%table93619%_))
                 (_%entries93628%_ (##fxquotient _%size93625%_ '2))
                 (_%start93631%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93622%_ _%entries93628%_)
                   '1)))
            (let _%loop93635%_ ((_%probe93638%_ _%start93631%_)
                                (_%i93640%_ '1)
                                (_%deleted93642%_ '#f))
              (let ((_%k93645%_ (vector-ref _%table93619%_ _%probe93638%_)))
                (if (eq? _%k93645%_ (macro-unused-obj))
                    _%default93617%_
                    (if (eq? _%k93645%_ (macro-deleted-obj))
                        (_%loop93635%_
                         (let ((_%next-probe93650%_
                                (fx+ _%start93631%_
                                     _%i93640%_
                                     (fx* _%i93640%_ _%i93640%_))))
                           (##fxmodulo _%next-probe93650%_ _%size93625%_))
                         (##fx+ _%i93640%_ '1)
                         (let ((_%$e93653%_ _%deleted93642%_))
                           (if _%$e93653%_ _%$e93653%_ _%probe93638%_)))
                        (if (eq? _%key93616%_ _%k93645%_)
                            (vector-ref
                             _%table93619%_
                             (##fx+ _%probe93638%_ '1))
                            (_%loop93635%_
                             (let ((_%next-probe93658%_
                                    (fx+ _%start93631%_
                                         _%i93640%_
                                         (fx* _%i93640%_ _%i93640%_))))
                               (##fxmodulo _%next-probe93658%_ _%size93625%_))
                             (##fx+ _%i93640%_ '1)
                             _%deleted93642%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab93611%_ _%key93612%_ _%value93613%_)
        (if (##fx< (&raw-table-free _%tab93611%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93611%_))
                    '4))
            (__raw-table-rehash! _%tab93611%_)
            '#!void)
        (__immediate-table-set! _%tab93611%_ _%key93612%_ _%value93613%_)))
    (define __immediate-table-set!
      (lambda (_%tab93562%_ _%key93563%_ _%value93564%_)
        (let ((_%table93567%_ (&raw-table-table _%tab93562%_))
              (_%seed93568%_ (&raw-table-seed _%tab93562%_)))
          (let* ((_%h93570%_
                  (fxxor (immediate-hash _%key93563%_) _%seed93568%_))
                 (_%size93573%_ (vector-length _%table93567%_))
                 (_%entries93576%_ (##fxquotient _%size93573%_ '2))
                 (_%start93579%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93570%_ _%entries93576%_)
                   '1)))
            (let _%loop93583%_ ((_%probe93586%_ _%start93579%_)
                                (_%i93588%_ '1)
                                (_%deleted93590%_ '#f))
              (let ((_%k93593%_ (vector-ref _%table93567%_ _%probe93586%_)))
                (if (eq? _%k93593%_ (macro-unused-obj))
                    (if _%deleted93590%_
                        (begin
                          (vector-set!
                           _%table93567%_
                           _%deleted93590%_
                           _%key93563%_)
                          (vector-set!
                           _%table93567%_
                           (##fx+ _%deleted93590%_ '1)
                           _%value93564%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93562%_
                              (##fx+ (&raw-table-count _%tab93562%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93567%_
                           _%probe93586%_
                           _%key93563%_)
                          (vector-set!
                           _%table93567%_
                           (##fx+ _%probe93586%_ '1)
                           _%value93564%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93562%_
                              (##fx- (&raw-table-free _%tab93562%_) '1))
                             (&raw-table-count-set!
                              _%tab93562%_
                              (##fx+ (&raw-table-count _%tab93562%_) '1))))))
                    (if (eq? _%k93593%_ (macro-deleted-obj))
                        (_%loop93583%_
                         (let ((_%next-probe93600%_
                                (fx+ _%start93579%_
                                     _%i93588%_
                                     (fx* _%i93588%_ _%i93588%_))))
                           (##fxmodulo _%next-probe93600%_ _%size93573%_))
                         (##fx+ _%i93588%_ '1)
                         (let ((_%$e93603%_ _%deleted93590%_))
                           (if _%$e93603%_ _%$e93603%_ _%probe93586%_)))
                        (if (eq? _%key93563%_ _%k93593%_)
                            (let ()
                              (vector-set!
                               _%table93567%_
                               _%probe93586%_
                               _%key93563%_)
                              (vector-set!
                               _%table93567%_
                               (##fx+ _%probe93586%_ '1)
                               _%value93564%_))
                            (_%loop93583%_
                             (let ((_%next-probe93608%_
                                    (fx+ _%start93579%_
                                         _%i93588%_
                                         (fx* _%i93588%_ _%i93588%_))))
                               (##fxmodulo _%next-probe93608%_ _%size93573%_))
                             (##fx+ _%i93588%_ '1)
                             _%deleted93590%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab93557%_
               _%key93558%_
               _%immediate-table-update!93559%_
               _%default93560%_)
        (if (##fx< (&raw-table-free _%tab93557%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93557%_))
                    '4))
            (__raw-table-rehash! _%tab93557%_)
            '#!void)
        (__immediate-table-update!
         _%tab93557%_
         _%key93558%_
         _%immediate-table-update!93559%_
         _%default93560%_)))
    (define __immediate-table-update!
      (lambda (_%tab93507%_
               _%key93508%_
               _%immediate-table-update!93509%_
               _%default93510%_)
        (let ((_%table93513%_ (&raw-table-table _%tab93507%_))
              (_%seed93514%_ (&raw-table-seed _%tab93507%_)))
          (let* ((_%h93516%_
                  (fxxor (immediate-hash _%key93508%_) _%seed93514%_))
                 (_%size93519%_ (vector-length _%table93513%_))
                 (_%entries93522%_ (##fxquotient _%size93519%_ '2))
                 (_%start93525%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93516%_ _%entries93522%_)
                   '1)))
            (let _%loop93529%_ ((_%probe93532%_ _%start93525%_)
                                (_%i93534%_ '1)
                                (_%deleted93536%_ '#f))
              (let ((_%k93539%_ (vector-ref _%table93513%_ _%probe93532%_)))
                (if (eq? _%k93539%_ (macro-unused-obj))
                    (if _%deleted93536%_
                        (begin
                          (vector-set!
                           _%table93513%_
                           _%deleted93536%_
                           _%key93508%_)
                          (vector-set!
                           _%table93513%_
                           (##fx+ _%deleted93536%_ '1)
                           (_%immediate-table-update!93509%_ _%default93510%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93507%_
                              (##fx+ (&raw-table-count _%tab93507%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93513%_
                           _%probe93532%_
                           _%key93508%_)
                          (vector-set!
                           _%table93513%_
                           (##fx+ _%probe93532%_ '1)
                           (_%immediate-table-update!93509%_ _%default93510%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93507%_
                              (##fx- (&raw-table-free _%tab93507%_) '1))
                             (&raw-table-count-set!
                              _%tab93507%_
                              (##fx+ (&raw-table-count _%tab93507%_) '1))))))
                    (if (eq? _%k93539%_ (macro-deleted-obj))
                        (_%loop93529%_
                         (let ((_%next-probe93546%_
                                (fx+ _%start93525%_
                                     _%i93534%_
                                     (fx* _%i93534%_ _%i93534%_))))
                           (##fxmodulo _%next-probe93546%_ _%size93519%_))
                         (##fx+ _%i93534%_ '1)
                         (let ((_%$e93549%_ _%deleted93536%_))
                           (if _%$e93549%_ _%$e93549%_ _%probe93532%_)))
                        (if (eq? _%key93508%_ _%k93539%_)
                            (let ()
                              (vector-set!
                               _%table93513%_
                               _%probe93532%_
                               _%key93508%_)
                              (vector-set!
                               _%table93513%_
                               (##fx+ _%probe93532%_ '1)
                               (_%immediate-table-update!93509%_
                                (vector-ref
                                 _%table93513%_
                                 (##fx+ _%probe93532%_ '1)))))
                            (_%loop93529%_
                             (let ((_%next-probe93554%_
                                    (fx+ _%start93525%_
                                         _%i93534%_
                                         (fx* _%i93534%_ _%i93534%_))))
                               (##fxmodulo _%next-probe93554%_ _%size93519%_))
                             (##fx+ _%i93534%_ '1)
                             _%deleted93536%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab93462%_ _%key93464%_)
        (let ((_%table93467%_ (&raw-table-table _%tab93462%_))
              (_%seed93469%_ (&raw-table-seed _%tab93462%_)))
          (let* ((_%h93472%_
                  (fxxor (immediate-hash _%key93464%_) _%seed93469%_))
                 (_%size93475%_ (vector-length _%table93467%_))
                 (_%entries93478%_ (##fxquotient _%size93475%_ '2))
                 (_%start93481%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93472%_ _%entries93478%_)
                   '1)))
            (let _%loop93485%_ ((_%probe93488%_ _%start93481%_)
                                (_%i93490%_ '1))
              (let ((_%k93493%_ (vector-ref _%table93467%_ _%probe93488%_)))
                (if (eq? _%k93493%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93493%_ (macro-deleted-obj))
                        (_%loop93485%_
                         (let ((_%next-probe93498%_
                                (fx+ _%start93481%_
                                     _%i93490%_
                                     (fx* _%i93490%_ _%i93490%_))))
                           (##fxmodulo _%next-probe93498%_ _%size93475%_))
                         (##fx+ _%i93490%_ '1))
                        (if (eq? _%key93464%_ _%k93493%_)
                            (let ()
                              (vector-set!
                               _%table93467%_
                               _%probe93488%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93467%_
                               (##fx+ _%probe93488%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93462%_
                                  (##fx- (&raw-table-count _%tab93462%_)
                                         '1)))))
                            (_%loop93485%_
                             (let ((_%next-probe93504%_
                                    (fx+ _%start93481%_
                                         _%i93490%_
                                         (fx* _%i93490%_ _%i93490%_))))
                               (##fxmodulo _%next-probe93504%_ _%size93475%_))
                             (##fx+ _%i93490%_ '1)))))))))))
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
      (lambda (_%tab93460%_)
        (##unchecked-structure-ref
         _%tab93460%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab93458%_)
        (##unchecked-structure-ref
         _%tab93458%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab93455%_ _%val93456%_)
        (##unchecked-structure-set!
         _%tab93455%_
         _%val93456%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab93452%_ _%val93453%_)
        (##unchecked-structure-set!
         _%tab93452%_
         _%val93453%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint93428%_ _%klass93429%_ _%flags93430%_)
        (let ((_%gcht93432%_
               (__gc-table-new
                (if (fixnum? _%size-hint93428%_) _%size-hint93428%_ '16)
                _%flags93430%_)))
          (##structure _%klass93429%_ _%gcht93432%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint93437%_)
        (let* ((_%klass93439%_ __gc-table::t) (_%flags93441%_ '0))
          (make-gc-table__%
           _%size-hint93437%_
           _%klass93439%_
           _%flags93441%_))))
    (define make-gc-table__1
      (lambda (_%size-hint93443%_ _%klass93444%_)
        (let ((_%flags93446%_ '0))
          (make-gc-table__%
           _%size-hint93443%_
           _%klass93444%_
           _%flags93446%_))))
    (define make-gc-table
      (lambda _g94904_
        (let ((_g94903_ (##length _g94904_)))
          (cond ((##fx= _g94903_ 1) (apply make-gc-table__0 _g94904_))
                ((##fx= _g94903_ 2) (apply make-gc-table__1 _g94904_))
                ((##fx= _g94903_ 3) (apply make-gc-table__% _g94904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g94904_))))))
    (define __gc-table-immediate
      (lambda (_%tab93419%_)
        (let ((_%$e93421%_ (&gc-table-immediate _%tab93419%_)))
          (if _%$e93421%_
              _%$e93421%_
              (let ((_%immediate93425%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab93419%_ _%immediate93425%_)
                _%immediate93425%_)))))
    (define __gc-table-new
      (lambda (_%size93409%_ _%flags93410%_)
        (let* ((_%flags93412%_
                (##fxand _%flags93410%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags93414%_
                (fxior _%flags93412%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht93416%_
                (##gc-hash-table-allocate
                 _%size93409%_
                 _%flags93414%_
                 __gc-table-loads)))
          _%gcht93416%_)))
    (define __gc-table-e
      (lambda (_%tab93404%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht93407%_ (&gc-table-gcht _%tab93404%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht93407%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht93407%_
              (begin
                (__gc-table-rehash! _%tab93404%_)
                (&gc-table-gcht _%tab93404%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab93395%_)
        (let* ((_%old-table93397%_ (&gc-table-gcht _%tab93395%_))
               (_%new-table93399%_
                (##gc-hash-table-resize! _%old-table93397%_ __gc-table-loads))
               (_%gcht93401%_
                (##gc-hash-table-rehash!
                 _%old-table93397%_
                 _%new-table93399%_)))
          (&gc-table-gcht-set! _%tab93395%_ _%gcht93401%_))))
    (define gc-table-ref
      (lambda (_%tab93379%_ _%key93380%_ _%default93381%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93380%_)
            (let* ((_%gcht93385%_ (__gc-table-e _%tab93379%_))
                   (_%value93387%_
                    (##gc-hash-table-ref _%gcht93385%_ _%key93380%_)))
              (if (eq? _%value93387%_ (macro-unused-obj))
                  _%default93381%_
                  _%value93387%_))
            (let ((_%$e93389%_ (&gc-table-immediate _%tab93379%_)))
              (if _%$e93389%_
                  ((lambda (_%immediate93392%_)
                     (immediate-table-ref
                      _%immediate93392%_
                      _%key93380%_
                      _%default93381%_))
                   _%$e93389%_)
                  _%default93381%_)))))
    (define gc-table-set!
      (lambda (_%tab93372%_ _%key93373%_ _%value93374%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93373%_)
            (let ((_%gcht93377%_ (__gc-table-e _%tab93372%_)))
              (if (##gc-hash-table-set!
                   _%gcht93377%_
                   _%key93373%_
                   _%value93374%_)
                  (begin
                    (__gc-table-rehash! _%tab93372%_)
                    (gc-table-set! _%tab93372%_ _%key93373%_ _%value93374%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab93372%_)
             _%key93373%_
             _%value93374%_))))
    (define gc-table-update!
      (lambda (_%tab93365%_ _%key93366%_ _%update93367%_ _%default93368%_)
        (if (##mem-allocated? _%key93366%_)
            (let ((_%value93370%_
                   (gc-table-ref _%tab93365%_ _%key93366%_ _%default93368%_)))
              (gc-table-set!
               _%tab93365%_
               _%key93366%_
               (_%update93367%_ _%value93370%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab93365%_)
             _%key93366%_
             _%update93367%_
             _%default93368%_))))
    (define gc-table-delete!
      (lambda (_%tab93353%_ _%key93354%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93354%_)
            (let ((_%gcht93358%_ (__gc-table-e _%tab93353%_)))
              (if (##gc-hash-table-set!
                   _%gcht93358%_
                   _%key93354%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab93353%_)
                    (gc-table-delete! _%tab93353%_ _%key93354%_))
                  '#!void))
            (let ((_%$e93360%_ (&gc-table-immediate _%tab93353%_)))
              (if _%$e93360%_
                  ((lambda (_%immediate93363%_)
                     (immediate-table-delete! _%immediate93363%_ _%key93354%_))
                   _%$e93360%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab93334%_ _%proc93335%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht93338%_ (__gc-table-e _%tab93334%_)))
            (let _%loop93340%_ ((_%i93342%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i93342%_ (##vector-length _%gcht93338%_))
                  (let ((_%key93344%_ (##vector-ref _%gcht93338%_ _%i93342%_)))
                    (if (if (eq? _%key93344%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key93344%_ (macro-deleted-obj))))
                        (_%proc93335%_
                         _%key93344%_
                         (##vector-ref _%gcht93338%_ (##fx+ _%i93342%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop93340%_ (##fx+ _%i93342%_ '2))))
                  '#!void)))
          (let ((_%$e93348%_ (&gc-table-immediate _%tab93334%_)))
            (if _%$e93348%_
                ((lambda (_%immediate93351%_)
                   (raw-table-for-each _%immediate93351%_ _%proc93335%_))
                 _%$e93348%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab93322%_)
        (let* ((_%gcht93324%_ (__gc-table-e _%tab93322%_))
               (_%new-table93326%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht93324%_)
                 (macro-gc-hash-table-flags _%gcht93324%_)))
               (_%result93328%_
                (##structure
                 (##structure-type _%tab93322%_)
                 _%new-table93326%_
                 '#f)))
          (gc-table-for-each
           _%tab93322%_
           (lambda (_%k93331%_ _%v93332%_)
             (gc-table-set! _%result93328%_ _%k93331%_ _%v93332%_)))
          _%result93328%_)))
    (define gc-table-clear!
      (lambda (_%tab93315%_)
        (let* ((_%gcht93317%_ (__gc-table-e _%tab93315%_))
               (_%new-table93319%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht93317%_))))
          (&gc-table-gcht-set! _%tab93315%_ _%new-table93319%_)
          (&gc-table-immediate-set! _%tab93315%_ '#f))))
    (define gc-table-length
      (lambda (_%tab93307%_)
        (let ((_%gcht93309%_ (__gc-table-e _%tab93307%_)))
          (fx+ (macro-gc-hash-table-count _%gcht93309%_)
               (let ((_%$e93311%_ (&gc-table-immediate _%tab93307%_)))
                 (if _%$e93311%_ (&raw-table-count _%$e93311%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj93292%_)
        (declare (not interrupts-enabled))
        (let ((_%val93295%_ (gc-table-ref __object-eq-hash _%obj93292%_ '#f)))
          (if _%val93295%_
              _%val93295%_
              (let* ((_%mix93297%_ __object-eq-hash-next)
                     (_%ptr93299%_ (##type-cast _%obj93292%_ '0))
                     (_%h93301%_
                      (fxand (fxxor _%mix93297%_ _%ptr93299%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e93304%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e93304%_ _%$e93304%_ '0)))
                (gc-table-set! __object-eq-hash _%obj93292%_ _%h93301%_)
                _%h93301%_)))))))
