(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1756142014)
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
      (lambda (_%tab100671%_)
        (##unchecked-structure-ref
         _%tab100671%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab100669%_)
        (##unchecked-structure-ref
         _%tab100669%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab100667%_)
        (##unchecked-structure-ref
         _%tab100667%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab100665%_)
        (##unchecked-structure-ref
         _%tab100665%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab100663%_)
        (##unchecked-structure-ref
         _%tab100663%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab100661%_)
        (##unchecked-structure-ref
         _%tab100661%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab100658%_ _%val100659%_)
        (##unchecked-structure-set!
         _%tab100658%_
         _%val100659%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab100655%_ _%val100656%_)
        (##unchecked-structure-set!
         _%tab100655%_
         _%val100656%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab100652%_ _%val100653%_)
        (##unchecked-structure-set!
         _%tab100652%_
         _%val100653%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab100649%_ _%val100650%_)
        (##unchecked-structure-set!
         _%tab100649%_
         _%val100650%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab100646%_ _%val100647%_)
        (##unchecked-structure-set!
         _%tab100646%_
         _%val100647%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab100643%_ _%val100644%_)
        (##unchecked-structure-set!
         _%tab100643%_
         _%val100644%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint100641%_)
        (if (and (fixnum? _%size-hint100641%_) (##fx> _%size-hint100641%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint100641%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint100617%_
               _%hash100618%_
               _%test100619%_
               _%seed100620%_)
        (let* ((_%size100622%_ (raw-table-size-hint->size _%size-hint100617%_))
               (_%table100624%_
                (##make-vector _%size100622%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table100624%_
           '0
           (##fxquotient _%size100622%_ '2)
           _%hash100618%_
           _%test100619%_
           _%seed100620%_))))
    (define make-raw-table__0
      (lambda (_%size-hint100630%_ _%hash100631%_ _%test100632%_)
        (let ((_%seed100634%_ '0))
          (make-raw-table__%
           _%size-hint100630%_
           _%hash100631%_
           _%test100632%_
           _%seed100634%_))))
    (define make-raw-table
      (lambda _g100672_
        (let ((_g100673_ (##length _g100672_)))
          (cond ((##fx= _g100673_ 3) (apply make-raw-table__0 _g100672_))
                ((##fx= _g100673_ 4) (apply make-raw-table__% _g100672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g100672_))))))
    (define raw-table-ref
      (lambda (_%tab100568%_ _%key100569%_ _%default100570%_)
        (let ((_%table100572%_ (&raw-table-table _%tab100568%_))
              (_%seed100573%_ (&raw-table-seed _%tab100568%_))
              (_%hash100574%_ (&raw-table-hash _%tab100568%_))
              (_%test100575%_ (&raw-table-test _%tab100568%_)))
          (let* ((_%h100577%_
                  (fxxor (_%hash100574%_ _%key100569%_) _%seed100573%_))
                 (_%size100580%_ (vector-length _%table100572%_))
                 (_%entries100583%_ (##fxquotient _%size100580%_ '2))
                 (_%start100586%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100577%_ _%entries100583%_)
                   '1)))
            (let _%loop100590%_ ((_%probe100593%_ _%start100586%_)
                                 (_%i100595%_ '1)
                                 (_%deleted100597%_ '#f))
              (let ((_%k100600%_ (vector-ref _%table100572%_ _%probe100593%_)))
                (if (eq? _%k100600%_ (macro-unused-obj))
                    _%default100570%_
                    (if (eq? _%k100600%_ (macro-deleted-obj))
                        (_%loop100590%_
                         (let ((_%next-probe100605%_
                                (fx+ _%start100586%_
                                     _%i100595%_
                                     (fx* _%i100595%_ _%i100595%_))))
                           (##fxmodulo _%next-probe100605%_ _%size100580%_))
                         (##fx+ _%i100595%_ '1)
                         (let ((_%$e100608%_ _%deleted100597%_))
                           (if _%$e100608%_ _%$e100608%_ _%probe100593%_)))
                        (if (_%test100575%_ _%key100569%_ _%k100600%_)
                            (vector-ref
                             _%table100572%_
                             (##fx+ _%probe100593%_ '1))
                            (_%loop100590%_
                             (let ((_%next-probe100613%_
                                    (fx+ _%start100586%_
                                         _%i100595%_
                                         (fx* _%i100595%_ _%i100595%_))))
                               (##fxmodulo
                                _%next-probe100613%_
                                _%size100580%_))
                             (##fx+ _%i100595%_ '1)
                             _%deleted100597%_))))))))))
    (define raw-table-set!
      (lambda (_%tab100564%_ _%key100565%_ _%value100566%_)
        (if (##fx< (&raw-table-free _%tab100564%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100564%_))
                    '4))
            (__raw-table-rehash! _%tab100564%_)
            '#!void)
        (__raw-table-set! _%tab100564%_ _%key100565%_ _%value100566%_)))
    (define raw-table-update!
      (lambda (_%tab100559%_ _%key100560%_ _%update100561%_ _%default100562%_)
        (if (##fx< (&raw-table-free _%tab100559%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100559%_))
                    '4))
            (__raw-table-rehash! _%tab100559%_)
            '#!void)
        (__raw-table-update!
         _%tab100559%_
         _%key100560%_
         _%update100561%_
         _%default100562%_)))
    (define raw-table-delete!
      (lambda (_%tab100516%_ _%key100517%_)
        (let ((_%table100519%_ (&raw-table-table _%tab100516%_))
              (_%seed100520%_ (&raw-table-seed _%tab100516%_))
              (_%hash100521%_ (&raw-table-hash _%tab100516%_))
              (_%test100522%_ (&raw-table-test _%tab100516%_)))
          (let* ((_%h100524%_
                  (fxxor (_%hash100521%_ _%key100517%_) _%seed100520%_))
                 (_%size100527%_ (vector-length _%table100519%_))
                 (_%entries100530%_ (##fxquotient _%size100527%_ '2))
                 (_%start100533%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100524%_ _%entries100530%_)
                   '1)))
            (let _%loop100537%_ ((_%probe100540%_ _%start100533%_)
                                 (_%i100542%_ '1))
              (let ((_%k100545%_ (vector-ref _%table100519%_ _%probe100540%_)))
                (if (eq? _%k100545%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100545%_ (macro-deleted-obj))
                        (_%loop100537%_
                         (let ((_%next-probe100550%_
                                (fx+ _%start100533%_
                                     _%i100542%_
                                     (fx* _%i100542%_ _%i100542%_))))
                           (##fxmodulo _%next-probe100550%_ _%size100527%_))
                         (##fx+ _%i100542%_ '1))
                        (if (_%test100522%_ _%key100517%_ _%k100545%_)
                            (let ()
                              (vector-set!
                               _%table100519%_
                               _%probe100540%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100519%_
                               (##fx+ _%probe100540%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab100516%_
                                  (##fx- (&raw-table-count _%tab100516%_)
                                         '1)))))
                            (_%loop100537%_
                             (let ((_%next-probe100556%_
                                    (fx+ _%start100533%_
                                         _%i100542%_
                                         (fx* _%i100542%_ _%i100542%_))))
                               (##fxmodulo
                                _%next-probe100556%_
                                _%size100527%_))
                             (##fx+ _%i100542%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab100500%_ _%proc100501%_)
        (let* ((_%table100503%_ (&raw-table-table _%tab100500%_))
               (_%size100505%_ (vector-length _%table100503%_)))
          (let _%loop100508%_ ((_%i100510%_ '0))
            (if (##fx< _%i100510%_ _%size100505%_)
                (begin
                  (let ((_%key100512%_
                         (vector-ref _%table100503%_ _%i100510%_)))
                    (if (if (eq? _%key100512%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key100512%_ (macro-deleted-obj))))
                        (let ((_%value100514%_
                               (vector-ref
                                _%table100503%_
                                (##fx+ _%i100510%_ '1))))
                          (_%proc100501%_ _%key100512%_ _%value100514%_))
                        '#!void))
                  (_%loop100508%_ (##fx+ _%i100510%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab100496%_)
        (let ((_%new-tab100498%_ (##structure-copy _%tab100496%_)))
          (&raw-table-table-set!
           _%new-tab100498%_
           (vector-copy (&raw-table-table _%tab100496%_)))
          _%new-tab100498%_)))
    (define raw-table-clear!
      (lambda (_%tab100494%_)
        (vector-fill! (&raw-table-table _%tab100494%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab100494%_ '0)
        (&raw-table-free-set!
         _%tab100494%_
         (##fxquotient (vector-length (&raw-table-table _%tab100494%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab100444%_ _%key100445%_ _%value100446%_)
        (let ((_%table100448%_ (&raw-table-table _%tab100444%_))
              (_%seed100449%_ (&raw-table-seed _%tab100444%_))
              (_%hash100450%_ (&raw-table-hash _%tab100444%_))
              (_%test100451%_ (&raw-table-test _%tab100444%_)))
          (let* ((_%h100453%_
                  (fxxor (_%hash100450%_ _%key100445%_) _%seed100449%_))
                 (_%size100456%_ (vector-length _%table100448%_))
                 (_%entries100459%_ (##fxquotient _%size100456%_ '2))
                 (_%start100462%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100453%_ _%entries100459%_)
                   '1)))
            (let _%loop100466%_ ((_%probe100469%_ _%start100462%_)
                                 (_%i100471%_ '1)
                                 (_%deleted100473%_ '#f))
              (let ((_%k100476%_ (vector-ref _%table100448%_ _%probe100469%_)))
                (if (eq? _%k100476%_ (macro-unused-obj))
                    (if _%deleted100473%_
                        (begin
                          (vector-set!
                           _%table100448%_
                           _%deleted100473%_
                           _%key100445%_)
                          (vector-set!
                           _%table100448%_
                           (##fx+ _%deleted100473%_ '1)
                           _%value100446%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100444%_
                              (##fx+ (&raw-table-count _%tab100444%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100448%_
                           _%probe100469%_
                           _%key100445%_)
                          (vector-set!
                           _%table100448%_
                           (##fx+ _%probe100469%_ '1)
                           _%value100446%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100444%_
                              (##fx- (&raw-table-free _%tab100444%_) '1))
                             (&raw-table-count-set!
                              _%tab100444%_
                              (##fx+ (&raw-table-count _%tab100444%_) '1))))))
                    (if (eq? _%k100476%_ (macro-deleted-obj))
                        (_%loop100466%_
                         (let ((_%next-probe100483%_
                                (fx+ _%start100462%_
                                     _%i100471%_
                                     (fx* _%i100471%_ _%i100471%_))))
                           (##fxmodulo _%next-probe100483%_ _%size100456%_))
                         (##fx+ _%i100471%_ '1)
                         (let ((_%$e100486%_ _%deleted100473%_))
                           (if _%$e100486%_ _%$e100486%_ _%probe100469%_)))
                        (if (_%test100451%_ _%key100445%_ _%k100476%_)
                            (let ()
                              (vector-set!
                               _%table100448%_
                               _%probe100469%_
                               _%key100445%_)
                              (vector-set!
                               _%table100448%_
                               (##fx+ _%probe100469%_ '1)
                               _%value100446%_))
                            (_%loop100466%_
                             (let ((_%next-probe100491%_
                                    (fx+ _%start100462%_
                                         _%i100471%_
                                         (fx* _%i100471%_ _%i100471%_))))
                               (##fxmodulo
                                _%next-probe100491%_
                                _%size100456%_))
                             (##fx+ _%i100471%_ '1)
                             _%deleted100473%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab100393%_ _%key100394%_ _%update100395%_ _%default100396%_)
        (let ((_%table100398%_ (&raw-table-table _%tab100393%_))
              (_%seed100399%_ (&raw-table-seed _%tab100393%_))
              (_%hash100400%_ (&raw-table-hash _%tab100393%_))
              (_%test100401%_ (&raw-table-test _%tab100393%_)))
          (let* ((_%h100403%_
                  (fxxor (_%hash100400%_ _%key100394%_) _%seed100399%_))
                 (_%size100406%_ (vector-length _%table100398%_))
                 (_%entries100409%_ (##fxquotient _%size100406%_ '2))
                 (_%start100412%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100403%_ _%entries100409%_)
                   '1)))
            (let _%loop100416%_ ((_%probe100419%_ _%start100412%_)
                                 (_%i100421%_ '1)
                                 (_%deleted100423%_ '#f))
              (let ((_%k100426%_ (vector-ref _%table100398%_ _%probe100419%_)))
                (if (eq? _%k100426%_ (macro-unused-obj))
                    (if _%deleted100423%_
                        (begin
                          (vector-set!
                           _%table100398%_
                           _%deleted100423%_
                           _%key100394%_)
                          (vector-set!
                           _%table100398%_
                           (##fx+ _%deleted100423%_ '1)
                           (_%update100395%_ _%default100396%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100393%_
                              (##fx+ (&raw-table-count _%tab100393%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100398%_
                           _%probe100419%_
                           _%key100394%_)
                          (vector-set!
                           _%table100398%_
                           (##fx+ _%probe100419%_ '1)
                           (_%update100395%_ _%default100396%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100393%_
                              (##fx- (&raw-table-free _%tab100393%_) '1))
                             (&raw-table-count-set!
                              _%tab100393%_
                              (##fx+ (&raw-table-count _%tab100393%_) '1))))))
                    (if (eq? _%k100426%_ (macro-deleted-obj))
                        (_%loop100416%_
                         (let ((_%next-probe100433%_
                                (fx+ _%start100412%_
                                     _%i100421%_
                                     (fx* _%i100421%_ _%i100421%_))))
                           (##fxmodulo _%next-probe100433%_ _%size100406%_))
                         (##fx+ _%i100421%_ '1)
                         (let ((_%$e100436%_ _%deleted100423%_))
                           (if _%$e100436%_ _%$e100436%_ _%probe100419%_)))
                        (if (_%test100401%_ _%key100394%_ _%k100426%_)
                            (let ()
                              (vector-set!
                               _%table100398%_
                               _%probe100419%_
                               _%key100394%_)
                              (vector-set!
                               _%table100398%_
                               (##fx+ _%probe100419%_ '1)
                               (_%update100395%_
                                (vector-ref
                                 _%table100398%_
                                 (##fx+ _%probe100419%_ '1)))))
                            (_%loop100416%_
                             (let ((_%next-probe100441%_
                                    (fx+ _%start100412%_
                                         _%i100421%_
                                         (fx* _%i100421%_ _%i100421%_))))
                               (##fxmodulo
                                _%next-probe100441%_
                                _%size100406%_))
                             (##fx+ _%i100421%_ '1)
                             _%deleted100423%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab100374%_)
        (let* ((_%old-table100376%_ (&raw-table-table _%tab100374%_))
               (_%old-size100378%_ (vector-length _%old-table100376%_))
               (_%new-size100380%_
                (if (##fx< (&raw-table-count _%tab100374%_)
                           (##fxquotient _%old-size100378%_ '4))
                    (vector-length _%old-table100376%_)
                    (##fx* '2 (vector-length _%old-table100376%_))))
               (_%new-table100382%_
                (##make-vector _%new-size100380%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab100374%_ _%new-table100382%_)
          (&raw-table-count-set! _%tab100374%_ '0)
          (&raw-table-free-set!
           _%tab100374%_
           (##fxquotient _%new-size100380%_ '2))
          (let _%lp100385%_ ((_%i100387%_ '0))
            (if (##fx< _%i100387%_ _%old-size100378%_)
                (begin
                  (let ((_%key100389%_
                         (vector-ref _%old-table100376%_ _%i100387%_)))
                    (if (if (eq? _%key100389%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key100389%_ (macro-deleted-obj))))
                        (let ((_%value100391%_
                               (vector-ref
                                _%old-table100376%_
                                (##fx+ _%i100387%_ '1))))
                          (__raw-table-set!
                           _%tab100374%_
                           _%key100389%_
                           _%value100391%_))
                        '#!void))
                  (_%lp100385%_ (##fx+ _%i100387%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj100366%_)
        (let ((_%t100368%_ (##type _%obj100366%_)))
          (if (##fx= (##fxand _%t100368%_ '1) '0)
              (fxand (##type-cast _%obj100366%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj100366%_)
                  (##symbol-hash _%obj100366%_)
                  (if (procedure? _%obj100366%_)
                      (procedure-hash _%obj100366%_)
                      (fxand (__eq-hash _%obj100366%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj100362%_)
        (let ((_%h100364%_
               (if (##closure? _%obj100362%_)
                   (__eq-hash _%obj100362%_)
                   (##type-cast _%obj100362%_ '0))))
          (fxand _%h100364%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj100359%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj100359%_)))
    (define eqv-hash
      (lambda (_%obj100349%_)
        (letrec ((_%combine100351%_
                  (lambda (_%a100356%_ _%b100357%_)
                    (fxand (##fx* (##fx+ _%a100356%_
                                         (fxarithmetic-shift-left
                                          _%b100357%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash100352%_
                  (lambda (_%obj100354%_)
                    (macro-number-dispatch
                     _%obj100354%_
                     (eq-hash _%obj100354%_)
                     (fxand _%obj100354%_ (macro-max-fixnum32))
                     (modulo _%obj100354%_ '331804481)
                     (_%combine100351%_
                      (_%hash100352%_ (macro-ratnum-numerator _%obj100354%_))
                      (_%hash100352%_
                       (macro-ratnum-denominator _%obj100354%_)))
                     (_%combine100351%_
                      (##u16vector-ref _%obj100354%_ '0)
                      (_%combine100351%_
                       (##u16vector-ref _%obj100354%_ '1)
                       (_%combine100351%_
                        (##u16vector-ref _%obj100354%_ '2)
                        (##u16vector-ref _%obj100354%_ '3))))
                     (_%combine100351%_
                      (_%hash100352%_ (macro-cpxnum-real _%obj100354%_))
                      (_%hash100352%_ (macro-cpxnum-imag _%obj100354%_)))))))
          (_%hash100352%_ _%obj100349%_))))
    (define symbolic?
      (lambda (_%obj100344%_)
        (let ((_%$e100346%_ (symbol? _%obj100344%_)))
          (if _%$e100346%_ _%$e100346%_ (keyword? _%obj100344%_)))))
    (define symbolic-hash
      (lambda (_%obj100342%_) (##symbol-hash _%obj100342%_)))
    (define string-hash
      (lambda (_%obj100340%_) (##string=?-hash _%obj100340%_)))
    (define immediate-hash
      (lambda (_%obj100338%_) (##type-cast _%obj100338%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint100319%_ _%seed100321%_)
        (make-raw-table__% _%size-hint100319%_ eq-hash eq? _%seed100321%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint100327%_ '#f) (_%seed100329%_ '0))
          (make-eq-table__% _%size-hint100327%_ _%seed100329%_))))
    (define make-eq-table__1
      (lambda (_%size-hint100331%_)
        (let ((_%seed100333%_ '0))
          (make-eq-table__% _%size-hint100331%_ _%seed100333%_))))
    (define make-eq-table
      (lambda _g100674_
        (let ((_g100675_ (##length _g100674_)))
          (cond ((##fx= _g100675_ 0) (apply make-eq-table__0 _g100674_))
                ((##fx= _g100675_ 1) (apply make-eq-table__1 _g100674_))
                ((##fx= _g100675_ 2) (apply make-eq-table__% _g100674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g100674_))))))
    (define eq-table-ref
      (lambda (_%tab100272%_ _%key100273%_ _%default100274%_)
        (let ((_%table100276%_ (&raw-table-table _%tab100272%_))
              (_%seed100277%_ (&raw-table-seed _%tab100272%_)))
          (let* ((_%h100279%_ (fxxor (eq-hash _%key100273%_) _%seed100277%_))
                 (_%size100282%_ (vector-length _%table100276%_))
                 (_%entries100285%_ (##fxquotient _%size100282%_ '2))
                 (_%start100288%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100279%_ _%entries100285%_)
                   '1)))
            (let _%loop100292%_ ((_%probe100295%_ _%start100288%_)
                                 (_%i100297%_ '1)
                                 (_%deleted100299%_ '#f))
              (let ((_%k100302%_ (vector-ref _%table100276%_ _%probe100295%_)))
                (if (eq? _%k100302%_ (macro-unused-obj))
                    _%default100274%_
                    (if (eq? _%k100302%_ (macro-deleted-obj))
                        (_%loop100292%_
                         (let ((_%next-probe100307%_
                                (fx+ _%start100288%_
                                     _%i100297%_
                                     (fx* _%i100297%_ _%i100297%_))))
                           (##fxmodulo _%next-probe100307%_ _%size100282%_))
                         (##fx+ _%i100297%_ '1)
                         (let ((_%$e100310%_ _%deleted100299%_))
                           (if _%$e100310%_ _%$e100310%_ _%probe100295%_)))
                        (if (eq? _%key100273%_ _%k100302%_)
                            (vector-ref
                             _%table100276%_
                             (##fx+ _%probe100295%_ '1))
                            (_%loop100292%_
                             (let ((_%next-probe100315%_
                                    (fx+ _%start100288%_
                                         _%i100297%_
                                         (fx* _%i100297%_ _%i100297%_))))
                               (##fxmodulo
                                _%next-probe100315%_
                                _%size100282%_))
                             (##fx+ _%i100297%_ '1)
                             _%deleted100299%_))))))))))
    (define eq-table-set!
      (lambda (_%tab100268%_ _%key100269%_ _%value100270%_)
        (if (##fx< (&raw-table-free _%tab100268%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100268%_))
                    '4))
            (__raw-table-rehash! _%tab100268%_)
            '#!void)
        (__eq-table-set! _%tab100268%_ _%key100269%_ _%value100270%_)))
    (define __eq-table-set!
      (lambda (_%tab100219%_ _%key100220%_ _%value100221%_)
        (let ((_%table100224%_ (&raw-table-table _%tab100219%_))
              (_%seed100225%_ (&raw-table-seed _%tab100219%_)))
          (let* ((_%h100227%_ (fxxor (eq-hash _%key100220%_) _%seed100225%_))
                 (_%size100230%_ (vector-length _%table100224%_))
                 (_%entries100233%_ (##fxquotient _%size100230%_ '2))
                 (_%start100236%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100227%_ _%entries100233%_)
                   '1)))
            (let _%loop100240%_ ((_%probe100243%_ _%start100236%_)
                                 (_%i100245%_ '1)
                                 (_%deleted100247%_ '#f))
              (let ((_%k100250%_ (vector-ref _%table100224%_ _%probe100243%_)))
                (if (eq? _%k100250%_ (macro-unused-obj))
                    (if _%deleted100247%_
                        (begin
                          (vector-set!
                           _%table100224%_
                           _%deleted100247%_
                           _%key100220%_)
                          (vector-set!
                           _%table100224%_
                           (##fx+ _%deleted100247%_ '1)
                           _%value100221%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100219%_
                              (##fx+ (&raw-table-count _%tab100219%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100224%_
                           _%probe100243%_
                           _%key100220%_)
                          (vector-set!
                           _%table100224%_
                           (##fx+ _%probe100243%_ '1)
                           _%value100221%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100219%_
                              (##fx- (&raw-table-free _%tab100219%_) '1))
                             (&raw-table-count-set!
                              _%tab100219%_
                              (##fx+ (&raw-table-count _%tab100219%_) '1))))))
                    (if (eq? _%k100250%_ (macro-deleted-obj))
                        (_%loop100240%_
                         (let ((_%next-probe100257%_
                                (fx+ _%start100236%_
                                     _%i100245%_
                                     (fx* _%i100245%_ _%i100245%_))))
                           (##fxmodulo _%next-probe100257%_ _%size100230%_))
                         (##fx+ _%i100245%_ '1)
                         (let ((_%$e100260%_ _%deleted100247%_))
                           (if _%$e100260%_ _%$e100260%_ _%probe100243%_)))
                        (if (eq? _%key100220%_ _%k100250%_)
                            (let ()
                              (vector-set!
                               _%table100224%_
                               _%probe100243%_
                               _%key100220%_)
                              (vector-set!
                               _%table100224%_
                               (##fx+ _%probe100243%_ '1)
                               _%value100221%_))
                            (_%loop100240%_
                             (let ((_%next-probe100265%_
                                    (fx+ _%start100236%_
                                         _%i100245%_
                                         (fx* _%i100245%_ _%i100245%_))))
                               (##fxmodulo
                                _%next-probe100265%_
                                _%size100230%_))
                             (##fx+ _%i100245%_ '1)
                             _%deleted100247%_))))))))))
    (define eq-table-update!
      (lambda (_%tab100214%_
               _%key100215%_
               _%eq-table-update!100216%_
               _%default100217%_)
        (if (##fx< (&raw-table-free _%tab100214%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100214%_))
                    '4))
            (__raw-table-rehash! _%tab100214%_)
            '#!void)
        (__eq-table-update!
         _%tab100214%_
         _%key100215%_
         _%eq-table-update!100216%_
         _%default100217%_)))
    (define __eq-table-update!
      (lambda (_%tab100164%_
               _%key100165%_
               _%eq-table-update!100166%_
               _%default100167%_)
        (let ((_%table100170%_ (&raw-table-table _%tab100164%_))
              (_%seed100171%_ (&raw-table-seed _%tab100164%_)))
          (let* ((_%h100173%_ (fxxor (eq-hash _%key100165%_) _%seed100171%_))
                 (_%size100176%_ (vector-length _%table100170%_))
                 (_%entries100179%_ (##fxquotient _%size100176%_ '2))
                 (_%start100182%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100173%_ _%entries100179%_)
                   '1)))
            (let _%loop100186%_ ((_%probe100189%_ _%start100182%_)
                                 (_%i100191%_ '1)
                                 (_%deleted100193%_ '#f))
              (let ((_%k100196%_ (vector-ref _%table100170%_ _%probe100189%_)))
                (if (eq? _%k100196%_ (macro-unused-obj))
                    (if _%deleted100193%_
                        (begin
                          (vector-set!
                           _%table100170%_
                           _%deleted100193%_
                           _%key100165%_)
                          (vector-set!
                           _%table100170%_
                           (##fx+ _%deleted100193%_ '1)
                           (_%eq-table-update!100166%_ _%default100167%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100164%_
                              (##fx+ (&raw-table-count _%tab100164%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100170%_
                           _%probe100189%_
                           _%key100165%_)
                          (vector-set!
                           _%table100170%_
                           (##fx+ _%probe100189%_ '1)
                           (_%eq-table-update!100166%_ _%default100167%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100164%_
                              (##fx- (&raw-table-free _%tab100164%_) '1))
                             (&raw-table-count-set!
                              _%tab100164%_
                              (##fx+ (&raw-table-count _%tab100164%_) '1))))))
                    (if (eq? _%k100196%_ (macro-deleted-obj))
                        (_%loop100186%_
                         (let ((_%next-probe100203%_
                                (fx+ _%start100182%_
                                     _%i100191%_
                                     (fx* _%i100191%_ _%i100191%_))))
                           (##fxmodulo _%next-probe100203%_ _%size100176%_))
                         (##fx+ _%i100191%_ '1)
                         (let ((_%$e100206%_ _%deleted100193%_))
                           (if _%$e100206%_ _%$e100206%_ _%probe100189%_)))
                        (if (eq? _%key100165%_ _%k100196%_)
                            (let ()
                              (vector-set!
                               _%table100170%_
                               _%probe100189%_
                               _%key100165%_)
                              (vector-set!
                               _%table100170%_
                               (##fx+ _%probe100189%_ '1)
                               (_%eq-table-update!100166%_
                                (vector-ref
                                 _%table100170%_
                                 (##fx+ _%probe100189%_ '1)))))
                            (_%loop100186%_
                             (let ((_%next-probe100211%_
                                    (fx+ _%start100182%_
                                         _%i100191%_
                                         (fx* _%i100191%_ _%i100191%_))))
                               (##fxmodulo
                                _%next-probe100211%_
                                _%size100176%_))
                             (##fx+ _%i100191%_ '1)
                             _%deleted100193%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab100119%_ _%key100121%_)
        (let ((_%table100124%_ (&raw-table-table _%tab100119%_))
              (_%seed100126%_ (&raw-table-seed _%tab100119%_)))
          (let* ((_%h100129%_ (fxxor (eq-hash _%key100121%_) _%seed100126%_))
                 (_%size100132%_ (vector-length _%table100124%_))
                 (_%entries100135%_ (##fxquotient _%size100132%_ '2))
                 (_%start100138%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100129%_ _%entries100135%_)
                   '1)))
            (let _%loop100142%_ ((_%probe100145%_ _%start100138%_)
                                 (_%i100147%_ '1))
              (let ((_%k100150%_ (vector-ref _%table100124%_ _%probe100145%_)))
                (if (eq? _%k100150%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100150%_ (macro-deleted-obj))
                        (_%loop100142%_
                         (let ((_%next-probe100155%_
                                (fx+ _%start100138%_
                                     _%i100147%_
                                     (fx* _%i100147%_ _%i100147%_))))
                           (##fxmodulo _%next-probe100155%_ _%size100132%_))
                         (##fx+ _%i100147%_ '1))
                        (if (eq? _%key100121%_ _%k100150%_)
                            (let ()
                              (vector-set!
                               _%table100124%_
                               _%probe100145%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100124%_
                               (##fx+ _%probe100145%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab100119%_
                                  (##fx- (&raw-table-count _%tab100119%_)
                                         '1)))))
                            (_%loop100142%_
                             (let ((_%next-probe100161%_
                                    (fx+ _%start100138%_
                                         _%i100147%_
                                         (fx* _%i100147%_ _%i100147%_))))
                               (##fxmodulo
                                _%next-probe100161%_
                                _%size100132%_))
                             (##fx+ _%i100147%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint100100%_ _%seed100102%_)
        (make-raw-table__% _%size-hint100100%_ eqv-hash eqv? _%seed100102%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint100108%_ '#f) (_%seed100110%_ '0))
          (make-eqv-table__% _%size-hint100108%_ _%seed100110%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint100112%_)
        (let ((_%seed100114%_ '0))
          (make-eqv-table__% _%size-hint100112%_ _%seed100114%_))))
    (define make-eqv-table
      (lambda _g100676_
        (let ((_g100677_ (##length _g100676_)))
          (cond ((##fx= _g100677_ 0) (apply make-eqv-table__0 _g100676_))
                ((##fx= _g100677_ 1) (apply make-eqv-table__1 _g100676_))
                ((##fx= _g100677_ 2) (apply make-eqv-table__% _g100676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g100676_))))))
    (define eqv-table-ref
      (lambda (_%tab100053%_ _%key100054%_ _%default100055%_)
        (let ((_%table100057%_ (&raw-table-table _%tab100053%_))
              (_%seed100058%_ (&raw-table-seed _%tab100053%_)))
          (let* ((_%h100060%_ (fxxor (eqv-hash _%key100054%_) _%seed100058%_))
                 (_%size100063%_ (vector-length _%table100057%_))
                 (_%entries100066%_ (##fxquotient _%size100063%_ '2))
                 (_%start100069%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100060%_ _%entries100066%_)
                   '1)))
            (let _%loop100073%_ ((_%probe100076%_ _%start100069%_)
                                 (_%i100078%_ '1)
                                 (_%deleted100080%_ '#f))
              (let ((_%k100083%_ (vector-ref _%table100057%_ _%probe100076%_)))
                (if (eq? _%k100083%_ (macro-unused-obj))
                    _%default100055%_
                    (if (eq? _%k100083%_ (macro-deleted-obj))
                        (_%loop100073%_
                         (let ((_%next-probe100088%_
                                (fx+ _%start100069%_
                                     _%i100078%_
                                     (fx* _%i100078%_ _%i100078%_))))
                           (##fxmodulo _%next-probe100088%_ _%size100063%_))
                         (##fx+ _%i100078%_ '1)
                         (let ((_%$e100091%_ _%deleted100080%_))
                           (if _%$e100091%_ _%$e100091%_ _%probe100076%_)))
                        (if (eqv? _%key100054%_ _%k100083%_)
                            (vector-ref
                             _%table100057%_
                             (##fx+ _%probe100076%_ '1))
                            (_%loop100073%_
                             (let ((_%next-probe100096%_
                                    (fx+ _%start100069%_
                                         _%i100078%_
                                         (fx* _%i100078%_ _%i100078%_))))
                               (##fxmodulo
                                _%next-probe100096%_
                                _%size100063%_))
                             (##fx+ _%i100078%_ '1)
                             _%deleted100080%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab100049%_ _%key100050%_ _%value100051%_)
        (if (##fx< (&raw-table-free _%tab100049%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100049%_))
                    '4))
            (__raw-table-rehash! _%tab100049%_)
            '#!void)
        (__eqv-table-set! _%tab100049%_ _%key100050%_ _%value100051%_)))
    (define __eqv-table-set!
      (lambda (_%tab100000%_ _%key100001%_ _%value100002%_)
        (let ((_%table100005%_ (&raw-table-table _%tab100000%_))
              (_%seed100006%_ (&raw-table-seed _%tab100000%_)))
          (let* ((_%h100008%_ (fxxor (eqv-hash _%key100001%_) _%seed100006%_))
                 (_%size100011%_ (vector-length _%table100005%_))
                 (_%entries100014%_ (##fxquotient _%size100011%_ '2))
                 (_%start100017%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100008%_ _%entries100014%_)
                   '1)))
            (let _%loop100021%_ ((_%probe100024%_ _%start100017%_)
                                 (_%i100026%_ '1)
                                 (_%deleted100028%_ '#f))
              (let ((_%k100031%_ (vector-ref _%table100005%_ _%probe100024%_)))
                (if (eq? _%k100031%_ (macro-unused-obj))
                    (if _%deleted100028%_
                        (begin
                          (vector-set!
                           _%table100005%_
                           _%deleted100028%_
                           _%key100001%_)
                          (vector-set!
                           _%table100005%_
                           (##fx+ _%deleted100028%_ '1)
                           _%value100002%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100000%_
                              (##fx+ (&raw-table-count _%tab100000%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100005%_
                           _%probe100024%_
                           _%key100001%_)
                          (vector-set!
                           _%table100005%_
                           (##fx+ _%probe100024%_ '1)
                           _%value100002%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100000%_
                              (##fx- (&raw-table-free _%tab100000%_) '1))
                             (&raw-table-count-set!
                              _%tab100000%_
                              (##fx+ (&raw-table-count _%tab100000%_) '1))))))
                    (if (eq? _%k100031%_ (macro-deleted-obj))
                        (_%loop100021%_
                         (let ((_%next-probe100038%_
                                (fx+ _%start100017%_
                                     _%i100026%_
                                     (fx* _%i100026%_ _%i100026%_))))
                           (##fxmodulo _%next-probe100038%_ _%size100011%_))
                         (##fx+ _%i100026%_ '1)
                         (let ((_%$e100041%_ _%deleted100028%_))
                           (if _%$e100041%_ _%$e100041%_ _%probe100024%_)))
                        (if (eqv? _%key100001%_ _%k100031%_)
                            (let ()
                              (vector-set!
                               _%table100005%_
                               _%probe100024%_
                               _%key100001%_)
                              (vector-set!
                               _%table100005%_
                               (##fx+ _%probe100024%_ '1)
                               _%value100002%_))
                            (_%loop100021%_
                             (let ((_%next-probe100046%_
                                    (fx+ _%start100017%_
                                         _%i100026%_
                                         (fx* _%i100026%_ _%i100026%_))))
                               (##fxmodulo
                                _%next-probe100046%_
                                _%size100011%_))
                             (##fx+ _%i100026%_ '1)
                             _%deleted100028%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab99995%_
               _%key99996%_
               _%eqv-table-update!99997%_
               _%default99998%_)
        (if (##fx< (&raw-table-free _%tab99995%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab99995%_))
                    '4))
            (__raw-table-rehash! _%tab99995%_)
            '#!void)
        (__eqv-table-update!
         _%tab99995%_
         _%key99996%_
         _%eqv-table-update!99997%_
         _%default99998%_)))
    (define __eqv-table-update!
      (lambda (_%tab99945%_
               _%key99946%_
               _%eqv-table-update!99947%_
               _%default99948%_)
        (let ((_%table99951%_ (&raw-table-table _%tab99945%_))
              (_%seed99952%_ (&raw-table-seed _%tab99945%_)))
          (let* ((_%h99954%_ (fxxor (eqv-hash _%key99946%_) _%seed99952%_))
                 (_%size99957%_ (vector-length _%table99951%_))
                 (_%entries99960%_ (##fxquotient _%size99957%_ '2))
                 (_%start99963%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99954%_ _%entries99960%_)
                   '1)))
            (let _%loop99967%_ ((_%probe99970%_ _%start99963%_)
                                (_%i99972%_ '1)
                                (_%deleted99974%_ '#f))
              (let ((_%k99977%_ (vector-ref _%table99951%_ _%probe99970%_)))
                (if (eq? _%k99977%_ (macro-unused-obj))
                    (if _%deleted99974%_
                        (begin
                          (vector-set!
                           _%table99951%_
                           _%deleted99974%_
                           _%key99946%_)
                          (vector-set!
                           _%table99951%_
                           (##fx+ _%deleted99974%_ '1)
                           (_%eqv-table-update!99947%_ _%default99948%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab99945%_
                              (##fx+ (&raw-table-count _%tab99945%_) '1)))))
                        (begin
                          (vector-set!
                           _%table99951%_
                           _%probe99970%_
                           _%key99946%_)
                          (vector-set!
                           _%table99951%_
                           (##fx+ _%probe99970%_ '1)
                           (_%eqv-table-update!99947%_ _%default99948%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab99945%_
                              (##fx- (&raw-table-free _%tab99945%_) '1))
                             (&raw-table-count-set!
                              _%tab99945%_
                              (##fx+ (&raw-table-count _%tab99945%_) '1))))))
                    (if (eq? _%k99977%_ (macro-deleted-obj))
                        (_%loop99967%_
                         (let ((_%next-probe99984%_
                                (fx+ _%start99963%_
                                     _%i99972%_
                                     (fx* _%i99972%_ _%i99972%_))))
                           (##fxmodulo _%next-probe99984%_ _%size99957%_))
                         (##fx+ _%i99972%_ '1)
                         (let ((_%$e99987%_ _%deleted99974%_))
                           (if _%$e99987%_ _%$e99987%_ _%probe99970%_)))
                        (if (eqv? _%key99946%_ _%k99977%_)
                            (let ()
                              (vector-set!
                               _%table99951%_
                               _%probe99970%_
                               _%key99946%_)
                              (vector-set!
                               _%table99951%_
                               (##fx+ _%probe99970%_ '1)
                               (_%eqv-table-update!99947%_
                                (vector-ref
                                 _%table99951%_
                                 (##fx+ _%probe99970%_ '1)))))
                            (_%loop99967%_
                             (let ((_%next-probe99992%_
                                    (fx+ _%start99963%_
                                         _%i99972%_
                                         (fx* _%i99972%_ _%i99972%_))))
                               (##fxmodulo _%next-probe99992%_ _%size99957%_))
                             (##fx+ _%i99972%_ '1)
                             _%deleted99974%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab99900%_ _%key99902%_)
        (let ((_%table99905%_ (&raw-table-table _%tab99900%_))
              (_%seed99907%_ (&raw-table-seed _%tab99900%_)))
          (let* ((_%h99910%_ (fxxor (eqv-hash _%key99902%_) _%seed99907%_))
                 (_%size99913%_ (vector-length _%table99905%_))
                 (_%entries99916%_ (##fxquotient _%size99913%_ '2))
                 (_%start99919%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99910%_ _%entries99916%_)
                   '1)))
            (let _%loop99923%_ ((_%probe99926%_ _%start99919%_)
                                (_%i99928%_ '1))
              (let ((_%k99931%_ (vector-ref _%table99905%_ _%probe99926%_)))
                (if (eq? _%k99931%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k99931%_ (macro-deleted-obj))
                        (_%loop99923%_
                         (let ((_%next-probe99936%_
                                (fx+ _%start99919%_
                                     _%i99928%_
                                     (fx* _%i99928%_ _%i99928%_))))
                           (##fxmodulo _%next-probe99936%_ _%size99913%_))
                         (##fx+ _%i99928%_ '1))
                        (if (eqv? _%key99902%_ _%k99931%_)
                            (let ()
                              (vector-set!
                               _%table99905%_
                               _%probe99926%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table99905%_
                               (##fx+ _%probe99926%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab99900%_
                                  (##fx- (&raw-table-count _%tab99900%_)
                                         '1)))))
                            (_%loop99923%_
                             (let ((_%next-probe99942%_
                                    (fx+ _%start99919%_
                                         _%i99928%_
                                         (fx* _%i99928%_ _%i99928%_))))
                               (##fxmodulo _%next-probe99942%_ _%size99913%_))
                             (##fx+ _%i99928%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint99881%_ _%seed99883%_)
        (make-raw-table__%
         _%size-hint99881%_
         symbolic-hash
         eq?
         _%seed99883%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint99889%_ '#f) (_%seed99891%_ '0))
          (make-symbolic-table__% _%size-hint99889%_ _%seed99891%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint99893%_)
        (let ((_%seed99895%_ '0))
          (make-symbolic-table__% _%size-hint99893%_ _%seed99895%_))))
    (define make-symbolic-table
      (lambda _g100678_
        (let ((_g100679_ (##length _g100678_)))
          (cond ((##fx= _g100679_ 0) (apply make-symbolic-table__0 _g100678_))
                ((##fx= _g100679_ 1) (apply make-symbolic-table__1 _g100678_))
                ((##fx= _g100679_ 2) (apply make-symbolic-table__% _g100678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g100678_))))))
    (define symbolic-table-ref
      (lambda (_%tab99834%_ _%key99835%_ _%default99836%_)
        (let ((_%table99838%_ (&raw-table-table _%tab99834%_))
              (_%seed99839%_ (&raw-table-seed _%tab99834%_)))
          (let* ((_%h99841%_
                  (fxxor (##symbol-hash _%key99835%_) _%seed99839%_))
                 (_%size99844%_ (vector-length _%table99838%_))
                 (_%entries99847%_ (##fxquotient _%size99844%_ '2))
                 (_%start99850%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99841%_ _%entries99847%_)
                   '1)))
            (let _%loop99854%_ ((_%probe99857%_ _%start99850%_)
                                (_%i99859%_ '1)
                                (_%deleted99861%_ '#f))
              (let ((_%k99864%_ (vector-ref _%table99838%_ _%probe99857%_)))
                (if (eq? _%k99864%_ (macro-unused-obj))
                    _%default99836%_
                    (if (eq? _%k99864%_ (macro-deleted-obj))
                        (_%loop99854%_
                         (let ((_%next-probe99869%_
                                (fx+ _%start99850%_
                                     _%i99859%_
                                     (fx* _%i99859%_ _%i99859%_))))
                           (##fxmodulo _%next-probe99869%_ _%size99844%_))
                         (##fx+ _%i99859%_ '1)
                         (let ((_%$e99872%_ _%deleted99861%_))
                           (if _%$e99872%_ _%$e99872%_ _%probe99857%_)))
                        (if (eq? _%key99835%_ _%k99864%_)
                            (vector-ref
                             _%table99838%_
                             (##fx+ _%probe99857%_ '1))
                            (_%loop99854%_
                             (let ((_%next-probe99877%_
                                    (fx+ _%start99850%_
                                         _%i99859%_
                                         (fx* _%i99859%_ _%i99859%_))))
                               (##fxmodulo _%next-probe99877%_ _%size99844%_))
                             (##fx+ _%i99859%_ '1)
                             _%deleted99861%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab99830%_ _%key99831%_ _%value99832%_)
        (if (##fx< (&raw-table-free _%tab99830%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab99830%_))
                    '4))
            (__raw-table-rehash! _%tab99830%_)
            '#!void)
        (__symbolic-table-set! _%tab99830%_ _%key99831%_ _%value99832%_)))
    (define __symbolic-table-set!
      (lambda (_%tab99781%_ _%key99782%_ _%value99783%_)
        (let ((_%table99786%_ (&raw-table-table _%tab99781%_))
              (_%seed99787%_ (&raw-table-seed _%tab99781%_)))
          (let* ((_%h99789%_
                  (fxxor (##symbol-hash _%key99782%_) _%seed99787%_))
                 (_%size99792%_ (vector-length _%table99786%_))
                 (_%entries99795%_ (##fxquotient _%size99792%_ '2))
                 (_%start99798%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99789%_ _%entries99795%_)
                   '1)))
            (let _%loop99802%_ ((_%probe99805%_ _%start99798%_)
                                (_%i99807%_ '1)
                                (_%deleted99809%_ '#f))
              (let ((_%k99812%_ (vector-ref _%table99786%_ _%probe99805%_)))
                (if (eq? _%k99812%_ (macro-unused-obj))
                    (if _%deleted99809%_
                        (begin
                          (vector-set!
                           _%table99786%_
                           _%deleted99809%_
                           _%key99782%_)
                          (vector-set!
                           _%table99786%_
                           (##fx+ _%deleted99809%_ '1)
                           _%value99783%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab99781%_
                              (##fx+ (&raw-table-count _%tab99781%_) '1)))))
                        (begin
                          (vector-set!
                           _%table99786%_
                           _%probe99805%_
                           _%key99782%_)
                          (vector-set!
                           _%table99786%_
                           (##fx+ _%probe99805%_ '1)
                           _%value99783%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab99781%_
                              (##fx- (&raw-table-free _%tab99781%_) '1))
                             (&raw-table-count-set!
                              _%tab99781%_
                              (##fx+ (&raw-table-count _%tab99781%_) '1))))))
                    (if (eq? _%k99812%_ (macro-deleted-obj))
                        (_%loop99802%_
                         (let ((_%next-probe99819%_
                                (fx+ _%start99798%_
                                     _%i99807%_
                                     (fx* _%i99807%_ _%i99807%_))))
                           (##fxmodulo _%next-probe99819%_ _%size99792%_))
                         (##fx+ _%i99807%_ '1)
                         (let ((_%$e99822%_ _%deleted99809%_))
                           (if _%$e99822%_ _%$e99822%_ _%probe99805%_)))
                        (if (eq? _%key99782%_ _%k99812%_)
                            (let ()
                              (vector-set!
                               _%table99786%_
                               _%probe99805%_
                               _%key99782%_)
                              (vector-set!
                               _%table99786%_
                               (##fx+ _%probe99805%_ '1)
                               _%value99783%_))
                            (_%loop99802%_
                             (let ((_%next-probe99827%_
                                    (fx+ _%start99798%_
                                         _%i99807%_
                                         (fx* _%i99807%_ _%i99807%_))))
                               (##fxmodulo _%next-probe99827%_ _%size99792%_))
                             (##fx+ _%i99807%_ '1)
                             _%deleted99809%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab99776%_
               _%key99777%_
               _%symbolic-table-update!99778%_
               _%default99779%_)
        (if (##fx< (&raw-table-free _%tab99776%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab99776%_))
                    '4))
            (__raw-table-rehash! _%tab99776%_)
            '#!void)
        (__symbolic-table-update!
         _%tab99776%_
         _%key99777%_
         _%symbolic-table-update!99778%_
         _%default99779%_)))
    (define __symbolic-table-update!
      (lambda (_%tab99726%_
               _%key99727%_
               _%symbolic-table-update!99728%_
               _%default99729%_)
        (let ((_%table99732%_ (&raw-table-table _%tab99726%_))
              (_%seed99733%_ (&raw-table-seed _%tab99726%_)))
          (let* ((_%h99735%_
                  (fxxor (##symbol-hash _%key99727%_) _%seed99733%_))
                 (_%size99738%_ (vector-length _%table99732%_))
                 (_%entries99741%_ (##fxquotient _%size99738%_ '2))
                 (_%start99744%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99735%_ _%entries99741%_)
                   '1)))
            (let _%loop99748%_ ((_%probe99751%_ _%start99744%_)
                                (_%i99753%_ '1)
                                (_%deleted99755%_ '#f))
              (let ((_%k99758%_ (vector-ref _%table99732%_ _%probe99751%_)))
                (if (eq? _%k99758%_ (macro-unused-obj))
                    (if _%deleted99755%_
                        (begin
                          (vector-set!
                           _%table99732%_
                           _%deleted99755%_
                           _%key99727%_)
                          (vector-set!
                           _%table99732%_
                           (##fx+ _%deleted99755%_ '1)
                           (_%symbolic-table-update!99728%_ _%default99729%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab99726%_
                              (##fx+ (&raw-table-count _%tab99726%_) '1)))))
                        (begin
                          (vector-set!
                           _%table99732%_
                           _%probe99751%_
                           _%key99727%_)
                          (vector-set!
                           _%table99732%_
                           (##fx+ _%probe99751%_ '1)
                           (_%symbolic-table-update!99728%_ _%default99729%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab99726%_
                              (##fx- (&raw-table-free _%tab99726%_) '1))
                             (&raw-table-count-set!
                              _%tab99726%_
                              (##fx+ (&raw-table-count _%tab99726%_) '1))))))
                    (if (eq? _%k99758%_ (macro-deleted-obj))
                        (_%loop99748%_
                         (let ((_%next-probe99765%_
                                (fx+ _%start99744%_
                                     _%i99753%_
                                     (fx* _%i99753%_ _%i99753%_))))
                           (##fxmodulo _%next-probe99765%_ _%size99738%_))
                         (##fx+ _%i99753%_ '1)
                         (let ((_%$e99768%_ _%deleted99755%_))
                           (if _%$e99768%_ _%$e99768%_ _%probe99751%_)))
                        (if (eq? _%key99727%_ _%k99758%_)
                            (let ()
                              (vector-set!
                               _%table99732%_
                               _%probe99751%_
                               _%key99727%_)
                              (vector-set!
                               _%table99732%_
                               (##fx+ _%probe99751%_ '1)
                               (_%symbolic-table-update!99728%_
                                (vector-ref
                                 _%table99732%_
                                 (##fx+ _%probe99751%_ '1)))))
                            (_%loop99748%_
                             (let ((_%next-probe99773%_
                                    (fx+ _%start99744%_
                                         _%i99753%_
                                         (fx* _%i99753%_ _%i99753%_))))
                               (##fxmodulo _%next-probe99773%_ _%size99738%_))
                             (##fx+ _%i99753%_ '1)
                             _%deleted99755%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab99681%_ _%key99683%_)
        (let ((_%table99686%_ (&raw-table-table _%tab99681%_))
              (_%seed99688%_ (&raw-table-seed _%tab99681%_)))
          (let* ((_%h99691%_
                  (fxxor (##symbol-hash _%key99683%_) _%seed99688%_))
                 (_%size99694%_ (vector-length _%table99686%_))
                 (_%entries99697%_ (##fxquotient _%size99694%_ '2))
                 (_%start99700%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99691%_ _%entries99697%_)
                   '1)))
            (let _%loop99704%_ ((_%probe99707%_ _%start99700%_)
                                (_%i99709%_ '1))
              (let ((_%k99712%_ (vector-ref _%table99686%_ _%probe99707%_)))
                (if (eq? _%k99712%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k99712%_ (macro-deleted-obj))
                        (_%loop99704%_
                         (let ((_%next-probe99717%_
                                (fx+ _%start99700%_
                                     _%i99709%_
                                     (fx* _%i99709%_ _%i99709%_))))
                           (##fxmodulo _%next-probe99717%_ _%size99694%_))
                         (##fx+ _%i99709%_ '1))
                        (if (eq? _%key99683%_ _%k99712%_)
                            (let ()
                              (vector-set!
                               _%table99686%_
                               _%probe99707%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table99686%_
                               (##fx+ _%probe99707%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab99681%_
                                  (##fx- (&raw-table-count _%tab99681%_)
                                         '1)))))
                            (_%loop99704%_
                             (let ((_%next-probe99723%_
                                    (fx+ _%start99700%_
                                         _%i99709%_
                                         (fx* _%i99709%_ _%i99709%_))))
                               (##fxmodulo _%next-probe99723%_ _%size99694%_))
                             (##fx+ _%i99709%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint99662%_ _%seed99664%_)
        (make-raw-table__%
         _%size-hint99662%_
         string-hash
         ##string=?
         _%seed99664%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint99670%_ '#f) (_%seed99672%_ '0))
          (make-string-table__% _%size-hint99670%_ _%seed99672%_))))
    (define make-string-table__1
      (lambda (_%size-hint99674%_)
        (let ((_%seed99676%_ '0))
          (make-string-table__% _%size-hint99674%_ _%seed99676%_))))
    (define make-string-table
      (lambda _g100680_
        (let ((_g100681_ (##length _g100680_)))
          (cond ((##fx= _g100681_ 0) (apply make-string-table__0 _g100680_))
                ((##fx= _g100681_ 1) (apply make-string-table__1 _g100680_))
                ((##fx= _g100681_ 2) (apply make-string-table__% _g100680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g100680_))))))
    (define string-table-ref
      (lambda (_%tab99615%_ _%key99616%_ _%default99617%_)
        (let ((_%table99619%_ (&raw-table-table _%tab99615%_))
              (_%seed99620%_ (&raw-table-seed _%tab99615%_)))
          (let* ((_%h99622%_
                  (fxxor (##string=?-hash _%key99616%_) _%seed99620%_))
                 (_%size99625%_ (vector-length _%table99619%_))
                 (_%entries99628%_ (##fxquotient _%size99625%_ '2))
                 (_%start99631%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99622%_ _%entries99628%_)
                   '1)))
            (let _%loop99635%_ ((_%probe99638%_ _%start99631%_)
                                (_%i99640%_ '1)
                                (_%deleted99642%_ '#f))
              (let ((_%k99645%_ (vector-ref _%table99619%_ _%probe99638%_)))
                (if (eq? _%k99645%_ (macro-unused-obj))
                    _%default99617%_
                    (if (eq? _%k99645%_ (macro-deleted-obj))
                        (_%loop99635%_
                         (let ((_%next-probe99650%_
                                (fx+ _%start99631%_
                                     _%i99640%_
                                     (fx* _%i99640%_ _%i99640%_))))
                           (##fxmodulo _%next-probe99650%_ _%size99625%_))
                         (##fx+ _%i99640%_ '1)
                         (let ((_%$e99653%_ _%deleted99642%_))
                           (if _%$e99653%_ _%$e99653%_ _%probe99638%_)))
                        (if (##string=? _%key99616%_ _%k99645%_)
                            (vector-ref
                             _%table99619%_
                             (##fx+ _%probe99638%_ '1))
                            (_%loop99635%_
                             (let ((_%next-probe99658%_
                                    (fx+ _%start99631%_
                                         _%i99640%_
                                         (fx* _%i99640%_ _%i99640%_))))
                               (##fxmodulo _%next-probe99658%_ _%size99625%_))
                             (##fx+ _%i99640%_ '1)
                             _%deleted99642%_))))))))))
    (define string-table-set!
      (lambda (_%tab99611%_ _%key99612%_ _%value99613%_)
        (if (##fx< (&raw-table-free _%tab99611%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab99611%_))
                    '4))
            (__raw-table-rehash! _%tab99611%_)
            '#!void)
        (__string-table-set! _%tab99611%_ _%key99612%_ _%value99613%_)))
    (define __string-table-set!
      (lambda (_%tab99562%_ _%key99563%_ _%value99564%_)
        (let ((_%table99567%_ (&raw-table-table _%tab99562%_))
              (_%seed99568%_ (&raw-table-seed _%tab99562%_)))
          (let* ((_%h99570%_
                  (fxxor (##string=?-hash _%key99563%_) _%seed99568%_))
                 (_%size99573%_ (vector-length _%table99567%_))
                 (_%entries99576%_ (##fxquotient _%size99573%_ '2))
                 (_%start99579%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99570%_ _%entries99576%_)
                   '1)))
            (let _%loop99583%_ ((_%probe99586%_ _%start99579%_)
                                (_%i99588%_ '1)
                                (_%deleted99590%_ '#f))
              (let ((_%k99593%_ (vector-ref _%table99567%_ _%probe99586%_)))
                (if (eq? _%k99593%_ (macro-unused-obj))
                    (if _%deleted99590%_
                        (begin
                          (vector-set!
                           _%table99567%_
                           _%deleted99590%_
                           _%key99563%_)
                          (vector-set!
                           _%table99567%_
                           (##fx+ _%deleted99590%_ '1)
                           _%value99564%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab99562%_
                              (##fx+ (&raw-table-count _%tab99562%_) '1)))))
                        (begin
                          (vector-set!
                           _%table99567%_
                           _%probe99586%_
                           _%key99563%_)
                          (vector-set!
                           _%table99567%_
                           (##fx+ _%probe99586%_ '1)
                           _%value99564%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab99562%_
                              (##fx- (&raw-table-free _%tab99562%_) '1))
                             (&raw-table-count-set!
                              _%tab99562%_
                              (##fx+ (&raw-table-count _%tab99562%_) '1))))))
                    (if (eq? _%k99593%_ (macro-deleted-obj))
                        (_%loop99583%_
                         (let ((_%next-probe99600%_
                                (fx+ _%start99579%_
                                     _%i99588%_
                                     (fx* _%i99588%_ _%i99588%_))))
                           (##fxmodulo _%next-probe99600%_ _%size99573%_))
                         (##fx+ _%i99588%_ '1)
                         (let ((_%$e99603%_ _%deleted99590%_))
                           (if _%$e99603%_ _%$e99603%_ _%probe99586%_)))
                        (if (##string=? _%key99563%_ _%k99593%_)
                            (let ()
                              (vector-set!
                               _%table99567%_
                               _%probe99586%_
                               _%key99563%_)
                              (vector-set!
                               _%table99567%_
                               (##fx+ _%probe99586%_ '1)
                               _%value99564%_))
                            (_%loop99583%_
                             (let ((_%next-probe99608%_
                                    (fx+ _%start99579%_
                                         _%i99588%_
                                         (fx* _%i99588%_ _%i99588%_))))
                               (##fxmodulo _%next-probe99608%_ _%size99573%_))
                             (##fx+ _%i99588%_ '1)
                             _%deleted99590%_))))))))))
    (define string-table-update!
      (lambda (_%tab99557%_
               _%key99558%_
               _%string-table-update!99559%_
               _%default99560%_)
        (if (##fx< (&raw-table-free _%tab99557%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab99557%_))
                    '4))
            (__raw-table-rehash! _%tab99557%_)
            '#!void)
        (__string-table-update!
         _%tab99557%_
         _%key99558%_
         _%string-table-update!99559%_
         _%default99560%_)))
    (define __string-table-update!
      (lambda (_%tab99507%_
               _%key99508%_
               _%string-table-update!99509%_
               _%default99510%_)
        (let ((_%table99513%_ (&raw-table-table _%tab99507%_))
              (_%seed99514%_ (&raw-table-seed _%tab99507%_)))
          (let* ((_%h99516%_
                  (fxxor (##string=?-hash _%key99508%_) _%seed99514%_))
                 (_%size99519%_ (vector-length _%table99513%_))
                 (_%entries99522%_ (##fxquotient _%size99519%_ '2))
                 (_%start99525%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99516%_ _%entries99522%_)
                   '1)))
            (let _%loop99529%_ ((_%probe99532%_ _%start99525%_)
                                (_%i99534%_ '1)
                                (_%deleted99536%_ '#f))
              (let ((_%k99539%_ (vector-ref _%table99513%_ _%probe99532%_)))
                (if (eq? _%k99539%_ (macro-unused-obj))
                    (if _%deleted99536%_
                        (begin
                          (vector-set!
                           _%table99513%_
                           _%deleted99536%_
                           _%key99508%_)
                          (vector-set!
                           _%table99513%_
                           (##fx+ _%deleted99536%_ '1)
                           (_%string-table-update!99509%_ _%default99510%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab99507%_
                              (##fx+ (&raw-table-count _%tab99507%_) '1)))))
                        (begin
                          (vector-set!
                           _%table99513%_
                           _%probe99532%_
                           _%key99508%_)
                          (vector-set!
                           _%table99513%_
                           (##fx+ _%probe99532%_ '1)
                           (_%string-table-update!99509%_ _%default99510%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab99507%_
                              (##fx- (&raw-table-free _%tab99507%_) '1))
                             (&raw-table-count-set!
                              _%tab99507%_
                              (##fx+ (&raw-table-count _%tab99507%_) '1))))))
                    (if (eq? _%k99539%_ (macro-deleted-obj))
                        (_%loop99529%_
                         (let ((_%next-probe99546%_
                                (fx+ _%start99525%_
                                     _%i99534%_
                                     (fx* _%i99534%_ _%i99534%_))))
                           (##fxmodulo _%next-probe99546%_ _%size99519%_))
                         (##fx+ _%i99534%_ '1)
                         (let ((_%$e99549%_ _%deleted99536%_))
                           (if _%$e99549%_ _%$e99549%_ _%probe99532%_)))
                        (if (##string=? _%key99508%_ _%k99539%_)
                            (let ()
                              (vector-set!
                               _%table99513%_
                               _%probe99532%_
                               _%key99508%_)
                              (vector-set!
                               _%table99513%_
                               (##fx+ _%probe99532%_ '1)
                               (_%string-table-update!99509%_
                                (vector-ref
                                 _%table99513%_
                                 (##fx+ _%probe99532%_ '1)))))
                            (_%loop99529%_
                             (let ((_%next-probe99554%_
                                    (fx+ _%start99525%_
                                         _%i99534%_
                                         (fx* _%i99534%_ _%i99534%_))))
                               (##fxmodulo _%next-probe99554%_ _%size99519%_))
                             (##fx+ _%i99534%_ '1)
                             _%deleted99536%_))))))))))
    (define string-table-delete!
      (lambda (_%tab99462%_ _%key99464%_)
        (let ((_%table99467%_ (&raw-table-table _%tab99462%_))
              (_%seed99469%_ (&raw-table-seed _%tab99462%_)))
          (let* ((_%h99472%_
                  (fxxor (##string=?-hash _%key99464%_) _%seed99469%_))
                 (_%size99475%_ (vector-length _%table99467%_))
                 (_%entries99478%_ (##fxquotient _%size99475%_ '2))
                 (_%start99481%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99472%_ _%entries99478%_)
                   '1)))
            (let _%loop99485%_ ((_%probe99488%_ _%start99481%_)
                                (_%i99490%_ '1))
              (let ((_%k99493%_ (vector-ref _%table99467%_ _%probe99488%_)))
                (if (eq? _%k99493%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k99493%_ (macro-deleted-obj))
                        (_%loop99485%_
                         (let ((_%next-probe99498%_
                                (fx+ _%start99481%_
                                     _%i99490%_
                                     (fx* _%i99490%_ _%i99490%_))))
                           (##fxmodulo _%next-probe99498%_ _%size99475%_))
                         (##fx+ _%i99490%_ '1))
                        (if (##string=? _%key99464%_ _%k99493%_)
                            (let ()
                              (vector-set!
                               _%table99467%_
                               _%probe99488%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table99467%_
                               (##fx+ _%probe99488%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab99462%_
                                  (##fx- (&raw-table-count _%tab99462%_)
                                         '1)))))
                            (_%loop99485%_
                             (let ((_%next-probe99504%_
                                    (fx+ _%start99481%_
                                         _%i99490%_
                                         (fx* _%i99490%_ _%i99490%_))))
                               (##fxmodulo _%next-probe99504%_ _%size99475%_))
                             (##fx+ _%i99490%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint99443%_ _%seed99445%_)
        (make-raw-table__%
         _%size-hint99443%_
         immediate-hash
         eq?
         _%seed99445%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint99451%_ '#f) (_%seed99453%_ '0))
          (make-immediate-table__% _%size-hint99451%_ _%seed99453%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint99455%_)
        (let ((_%seed99457%_ '0))
          (make-immediate-table__% _%size-hint99455%_ _%seed99457%_))))
    (define make-immediate-table
      (lambda _g100682_
        (let ((_g100683_ (##length _g100682_)))
          (cond ((##fx= _g100683_ 0) (apply make-immediate-table__0 _g100682_))
                ((##fx= _g100683_ 1) (apply make-immediate-table__1 _g100682_))
                ((##fx= _g100683_ 2) (apply make-immediate-table__% _g100682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g100682_))))))
    (define immediate-table-ref
      (lambda (_%tab99396%_ _%key99397%_ _%default99398%_)
        (let ((_%table99400%_ (&raw-table-table _%tab99396%_))
              (_%seed99401%_ (&raw-table-seed _%tab99396%_)))
          (let* ((_%h99403%_
                  (fxxor (immediate-hash _%key99397%_) _%seed99401%_))
                 (_%size99406%_ (vector-length _%table99400%_))
                 (_%entries99409%_ (##fxquotient _%size99406%_ '2))
                 (_%start99412%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99403%_ _%entries99409%_)
                   '1)))
            (let _%loop99416%_ ((_%probe99419%_ _%start99412%_)
                                (_%i99421%_ '1)
                                (_%deleted99423%_ '#f))
              (let ((_%k99426%_ (vector-ref _%table99400%_ _%probe99419%_)))
                (if (eq? _%k99426%_ (macro-unused-obj))
                    _%default99398%_
                    (if (eq? _%k99426%_ (macro-deleted-obj))
                        (_%loop99416%_
                         (let ((_%next-probe99431%_
                                (fx+ _%start99412%_
                                     _%i99421%_
                                     (fx* _%i99421%_ _%i99421%_))))
                           (##fxmodulo _%next-probe99431%_ _%size99406%_))
                         (##fx+ _%i99421%_ '1)
                         (let ((_%$e99434%_ _%deleted99423%_))
                           (if _%$e99434%_ _%$e99434%_ _%probe99419%_)))
                        (if (eq? _%key99397%_ _%k99426%_)
                            (vector-ref
                             _%table99400%_
                             (##fx+ _%probe99419%_ '1))
                            (_%loop99416%_
                             (let ((_%next-probe99439%_
                                    (fx+ _%start99412%_
                                         _%i99421%_
                                         (fx* _%i99421%_ _%i99421%_))))
                               (##fxmodulo _%next-probe99439%_ _%size99406%_))
                             (##fx+ _%i99421%_ '1)
                             _%deleted99423%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab99392%_ _%key99393%_ _%value99394%_)
        (if (##fx< (&raw-table-free _%tab99392%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab99392%_))
                    '4))
            (__raw-table-rehash! _%tab99392%_)
            '#!void)
        (__immediate-table-set! _%tab99392%_ _%key99393%_ _%value99394%_)))
    (define __immediate-table-set!
      (lambda (_%tab99343%_ _%key99344%_ _%value99345%_)
        (let ((_%table99348%_ (&raw-table-table _%tab99343%_))
              (_%seed99349%_ (&raw-table-seed _%tab99343%_)))
          (let* ((_%h99351%_
                  (fxxor (immediate-hash _%key99344%_) _%seed99349%_))
                 (_%size99354%_ (vector-length _%table99348%_))
                 (_%entries99357%_ (##fxquotient _%size99354%_ '2))
                 (_%start99360%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99351%_ _%entries99357%_)
                   '1)))
            (let _%loop99364%_ ((_%probe99367%_ _%start99360%_)
                                (_%i99369%_ '1)
                                (_%deleted99371%_ '#f))
              (let ((_%k99374%_ (vector-ref _%table99348%_ _%probe99367%_)))
                (if (eq? _%k99374%_ (macro-unused-obj))
                    (if _%deleted99371%_
                        (begin
                          (vector-set!
                           _%table99348%_
                           _%deleted99371%_
                           _%key99344%_)
                          (vector-set!
                           _%table99348%_
                           (##fx+ _%deleted99371%_ '1)
                           _%value99345%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab99343%_
                              (##fx+ (&raw-table-count _%tab99343%_) '1)))))
                        (begin
                          (vector-set!
                           _%table99348%_
                           _%probe99367%_
                           _%key99344%_)
                          (vector-set!
                           _%table99348%_
                           (##fx+ _%probe99367%_ '1)
                           _%value99345%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab99343%_
                              (##fx- (&raw-table-free _%tab99343%_) '1))
                             (&raw-table-count-set!
                              _%tab99343%_
                              (##fx+ (&raw-table-count _%tab99343%_) '1))))))
                    (if (eq? _%k99374%_ (macro-deleted-obj))
                        (_%loop99364%_
                         (let ((_%next-probe99381%_
                                (fx+ _%start99360%_
                                     _%i99369%_
                                     (fx* _%i99369%_ _%i99369%_))))
                           (##fxmodulo _%next-probe99381%_ _%size99354%_))
                         (##fx+ _%i99369%_ '1)
                         (let ((_%$e99384%_ _%deleted99371%_))
                           (if _%$e99384%_ _%$e99384%_ _%probe99367%_)))
                        (if (eq? _%key99344%_ _%k99374%_)
                            (let ()
                              (vector-set!
                               _%table99348%_
                               _%probe99367%_
                               _%key99344%_)
                              (vector-set!
                               _%table99348%_
                               (##fx+ _%probe99367%_ '1)
                               _%value99345%_))
                            (_%loop99364%_
                             (let ((_%next-probe99389%_
                                    (fx+ _%start99360%_
                                         _%i99369%_
                                         (fx* _%i99369%_ _%i99369%_))))
                               (##fxmodulo _%next-probe99389%_ _%size99354%_))
                             (##fx+ _%i99369%_ '1)
                             _%deleted99371%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab99338%_
               _%key99339%_
               _%immediate-table-update!99340%_
               _%default99341%_)
        (if (##fx< (&raw-table-free _%tab99338%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab99338%_))
                    '4))
            (__raw-table-rehash! _%tab99338%_)
            '#!void)
        (__immediate-table-update!
         _%tab99338%_
         _%key99339%_
         _%immediate-table-update!99340%_
         _%default99341%_)))
    (define __immediate-table-update!
      (lambda (_%tab99288%_
               _%key99289%_
               _%immediate-table-update!99290%_
               _%default99291%_)
        (let ((_%table99294%_ (&raw-table-table _%tab99288%_))
              (_%seed99295%_ (&raw-table-seed _%tab99288%_)))
          (let* ((_%h99297%_
                  (fxxor (immediate-hash _%key99289%_) _%seed99295%_))
                 (_%size99300%_ (vector-length _%table99294%_))
                 (_%entries99303%_ (##fxquotient _%size99300%_ '2))
                 (_%start99306%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99297%_ _%entries99303%_)
                   '1)))
            (let _%loop99310%_ ((_%probe99313%_ _%start99306%_)
                                (_%i99315%_ '1)
                                (_%deleted99317%_ '#f))
              (let ((_%k99320%_ (vector-ref _%table99294%_ _%probe99313%_)))
                (if (eq? _%k99320%_ (macro-unused-obj))
                    (if _%deleted99317%_
                        (begin
                          (vector-set!
                           _%table99294%_
                           _%deleted99317%_
                           _%key99289%_)
                          (vector-set!
                           _%table99294%_
                           (##fx+ _%deleted99317%_ '1)
                           (_%immediate-table-update!99290%_ _%default99291%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab99288%_
                              (##fx+ (&raw-table-count _%tab99288%_) '1)))))
                        (begin
                          (vector-set!
                           _%table99294%_
                           _%probe99313%_
                           _%key99289%_)
                          (vector-set!
                           _%table99294%_
                           (##fx+ _%probe99313%_ '1)
                           (_%immediate-table-update!99290%_ _%default99291%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab99288%_
                              (##fx- (&raw-table-free _%tab99288%_) '1))
                             (&raw-table-count-set!
                              _%tab99288%_
                              (##fx+ (&raw-table-count _%tab99288%_) '1))))))
                    (if (eq? _%k99320%_ (macro-deleted-obj))
                        (_%loop99310%_
                         (let ((_%next-probe99327%_
                                (fx+ _%start99306%_
                                     _%i99315%_
                                     (fx* _%i99315%_ _%i99315%_))))
                           (##fxmodulo _%next-probe99327%_ _%size99300%_))
                         (##fx+ _%i99315%_ '1)
                         (let ((_%$e99330%_ _%deleted99317%_))
                           (if _%$e99330%_ _%$e99330%_ _%probe99313%_)))
                        (if (eq? _%key99289%_ _%k99320%_)
                            (let ()
                              (vector-set!
                               _%table99294%_
                               _%probe99313%_
                               _%key99289%_)
                              (vector-set!
                               _%table99294%_
                               (##fx+ _%probe99313%_ '1)
                               (_%immediate-table-update!99290%_
                                (vector-ref
                                 _%table99294%_
                                 (##fx+ _%probe99313%_ '1)))))
                            (_%loop99310%_
                             (let ((_%next-probe99335%_
                                    (fx+ _%start99306%_
                                         _%i99315%_
                                         (fx* _%i99315%_ _%i99315%_))))
                               (##fxmodulo _%next-probe99335%_ _%size99300%_))
                             (##fx+ _%i99315%_ '1)
                             _%deleted99317%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab99243%_ _%key99245%_)
        (let ((_%table99248%_ (&raw-table-table _%tab99243%_))
              (_%seed99250%_ (&raw-table-seed _%tab99243%_)))
          (let* ((_%h99253%_
                  (fxxor (immediate-hash _%key99245%_) _%seed99250%_))
                 (_%size99256%_ (vector-length _%table99248%_))
                 (_%entries99259%_ (##fxquotient _%size99256%_ '2))
                 (_%start99262%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99253%_ _%entries99259%_)
                   '1)))
            (let _%loop99266%_ ((_%probe99269%_ _%start99262%_)
                                (_%i99271%_ '1))
              (let ((_%k99274%_ (vector-ref _%table99248%_ _%probe99269%_)))
                (if (eq? _%k99274%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k99274%_ (macro-deleted-obj))
                        (_%loop99266%_
                         (let ((_%next-probe99279%_
                                (fx+ _%start99262%_
                                     _%i99271%_
                                     (fx* _%i99271%_ _%i99271%_))))
                           (##fxmodulo _%next-probe99279%_ _%size99256%_))
                         (##fx+ _%i99271%_ '1))
                        (if (eq? _%key99245%_ _%k99274%_)
                            (let ()
                              (vector-set!
                               _%table99248%_
                               _%probe99269%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table99248%_
                               (##fx+ _%probe99269%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab99243%_
                                  (##fx- (&raw-table-count _%tab99243%_)
                                         '1)))))
                            (_%loop99266%_
                             (let ((_%next-probe99285%_
                                    (fx+ _%start99262%_
                                         _%i99271%_
                                         (fx* _%i99271%_ _%i99271%_))))
                               (##fxmodulo _%next-probe99285%_ _%size99256%_))
                             (##fx+ _%i99271%_ '1)))))))))))
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
      (lambda (_%tab99241%_)
        (##unchecked-structure-ref
         _%tab99241%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab99239%_)
        (##unchecked-structure-ref
         _%tab99239%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab99236%_ _%val99237%_)
        (##unchecked-structure-set!
         _%tab99236%_
         _%val99237%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab99233%_ _%val99234%_)
        (##unchecked-structure-set!
         _%tab99233%_
         _%val99234%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint99209%_ _%klass99210%_ _%flags99211%_)
        (let ((_%gcht99213%_
               (__gc-table-new
                (if (fixnum? _%size-hint99209%_) _%size-hint99209%_ '16)
                _%flags99211%_)))
          (##structure _%klass99210%_ _%gcht99213%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint99218%_)
        (let* ((_%klass99220%_ __gc-table::t) (_%flags99222%_ '0))
          (make-gc-table__%
           _%size-hint99218%_
           _%klass99220%_
           _%flags99222%_))))
    (define make-gc-table__1
      (lambda (_%size-hint99224%_ _%klass99225%_)
        (let ((_%flags99227%_ '0))
          (make-gc-table__%
           _%size-hint99224%_
           _%klass99225%_
           _%flags99227%_))))
    (define make-gc-table
      (lambda _g100684_
        (let ((_g100685_ (##length _g100684_)))
          (cond ((##fx= _g100685_ 1) (apply make-gc-table__0 _g100684_))
                ((##fx= _g100685_ 2) (apply make-gc-table__1 _g100684_))
                ((##fx= _g100685_ 3) (apply make-gc-table__% _g100684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g100684_))))))
    (define __gc-table-immediate
      (lambda (_%tab99200%_)
        (let ((_%$e99202%_ (&gc-table-immediate _%tab99200%_)))
          (if _%$e99202%_
              _%$e99202%_
              (let ((_%immediate99206%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab99200%_ _%immediate99206%_)
                _%immediate99206%_)))))
    (define __gc-table-new
      (lambda (_%size99190%_ _%flags99191%_)
        (let* ((_%flags99193%_
                (##fxand _%flags99191%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags99195%_
                (fxior _%flags99193%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht99197%_
                (##gc-hash-table-allocate
                 _%size99190%_
                 _%flags99195%_
                 __gc-table-loads)))
          _%gcht99197%_)))
    (define __gc-table-e
      (lambda (_%tab99185%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht99188%_ (&gc-table-gcht _%tab99185%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht99188%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht99188%_
              (begin
                (__gc-table-rehash! _%tab99185%_)
                (&gc-table-gcht _%tab99185%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab99176%_)
        (let* ((_%old-table99178%_ (&gc-table-gcht _%tab99176%_))
               (_%new-table99180%_
                (##gc-hash-table-resize! _%old-table99178%_ __gc-table-loads))
               (_%gcht99182%_
                (##gc-hash-table-rehash!
                 _%old-table99178%_
                 _%new-table99180%_)))
          (&gc-table-gcht-set! _%tab99176%_ _%gcht99182%_))))
    (define gc-table-ref
      (lambda (_%tab99160%_ _%key99161%_ _%default99162%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key99161%_)
            (let* ((_%gcht99166%_ (__gc-table-e _%tab99160%_))
                   (_%value99168%_
                    (##gc-hash-table-ref _%gcht99166%_ _%key99161%_)))
              (if (eq? _%value99168%_ (macro-unused-obj))
                  _%default99162%_
                  _%value99168%_))
            (let ((_%$e99170%_ (&gc-table-immediate _%tab99160%_)))
              (if _%$e99170%_
                  ((lambda (_%immediate99173%_)
                     (immediate-table-ref
                      _%immediate99173%_
                      _%key99161%_
                      _%default99162%_))
                   _%$e99170%_)
                  _%default99162%_)))))
    (define gc-table-set!
      (lambda (_%tab99153%_ _%key99154%_ _%value99155%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key99154%_)
            (let ((_%gcht99158%_ (__gc-table-e _%tab99153%_)))
              (if (##gc-hash-table-set!
                   _%gcht99158%_
                   _%key99154%_
                   _%value99155%_)
                  (begin
                    (__gc-table-rehash! _%tab99153%_)
                    (gc-table-set! _%tab99153%_ _%key99154%_ _%value99155%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab99153%_)
             _%key99154%_
             _%value99155%_))))
    (define gc-table-update!
      (lambda (_%tab99146%_ _%key99147%_ _%update99148%_ _%default99149%_)
        (if (##mem-allocated? _%key99147%_)
            (let ((_%value99151%_
                   (gc-table-ref _%tab99146%_ _%key99147%_ _%default99149%_)))
              (gc-table-set!
               _%tab99146%_
               _%key99147%_
               (_%update99148%_ _%value99151%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab99146%_)
             _%key99147%_
             _%update99148%_
             _%default99149%_))))
    (define gc-table-delete!
      (lambda (_%tab99134%_ _%key99135%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key99135%_)
            (let ((_%gcht99139%_ (__gc-table-e _%tab99134%_)))
              (if (##gc-hash-table-set!
                   _%gcht99139%_
                   _%key99135%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab99134%_)
                    (gc-table-delete! _%tab99134%_ _%key99135%_))
                  '#!void))
            (let ((_%$e99141%_ (&gc-table-immediate _%tab99134%_)))
              (if _%$e99141%_
                  ((lambda (_%immediate99144%_)
                     (immediate-table-delete! _%immediate99144%_ _%key99135%_))
                   _%$e99141%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab99123%_ _%proc99124%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht99127%_ (__gc-table-e _%tab99123%_)))
            (##gc-hash-table-for-each _%proc99124%_ _%gcht99127%_))
          (let ((_%$e99129%_ (&gc-table-immediate _%tab99123%_)))
            (if _%$e99129%_
                ((lambda (_%immediate99132%_)
                   (raw-table-for-each _%immediate99132%_ _%proc99124%_))
                 _%$e99129%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab99111%_)
        (let* ((_%gcht99113%_ (__gc-table-e _%tab99111%_))
               (_%new-table99115%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht99113%_)
                 (macro-gc-hash-table-flags _%gcht99113%_)))
               (_%result99117%_
                (##structure
                 (##structure-type _%tab99111%_)
                 _%new-table99115%_
                 '#f)))
          (gc-table-for-each
           _%tab99111%_
           (lambda (_%k99120%_ _%v99121%_)
             (gc-table-set! _%result99117%_ _%k99120%_ _%v99121%_)))
          _%result99117%_)))
    (define gc-table-clear!
      (lambda (_%tab99104%_)
        (let* ((_%gcht99106%_ (__gc-table-e _%tab99104%_))
               (_%new-table99108%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht99106%_))))
          (&gc-table-gcht-set! _%tab99104%_ _%new-table99108%_)
          (&gc-table-immediate-set! _%tab99104%_ '#f))))
    (define gc-table-length
      (lambda (_%tab99096%_)
        (let ((_%gcht99098%_ (__gc-table-e _%tab99096%_)))
          (fx+ (macro-gc-hash-table-count _%gcht99098%_)
               (let ((_%$e99100%_ (&gc-table-immediate _%tab99096%_)))
                 (if _%$e99100%_ (&raw-table-count _%$e99100%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj99081%_)
        (declare (not interrupts-enabled))
        (let ((_%val99084%_ (gc-table-ref __object-eq-hash _%obj99081%_ '#f)))
          (if _%val99084%_
              _%val99084%_
              (let* ((_%mix99086%_ __object-eq-hash-next)
                     (_%ptr99088%_ (##type-cast _%obj99081%_ '0))
                     (_%h99090%_
                      (fxand (fxxor _%mix99086%_ _%ptr99088%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e99093%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e99093%_ _%$e99093%_ '0)))
                (gc-table-set! __object-eq-hash _%obj99081%_ _%h99090%_)
                _%h99090%_)))))))
