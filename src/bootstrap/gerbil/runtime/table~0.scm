(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712147675)
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
      (lambda (_%tab90168%_)
        (##unchecked-structure-ref
         _%tab90168%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90166%_)
        (##unchecked-structure-ref
         _%tab90166%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90164%_)
        (##unchecked-structure-ref
         _%tab90164%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90162%_)
        (##unchecked-structure-ref
         _%tab90162%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90160%_)
        (##unchecked-structure-ref
         _%tab90160%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90158%_)
        (##unchecked-structure-ref
         _%tab90158%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90155%_ _%val90156%_)
        (##unchecked-structure-set!
         _%tab90155%_
         _%val90156%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90152%_ _%val90153%_)
        (##unchecked-structure-set!
         _%tab90152%_
         _%val90153%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90149%_ _%val90150%_)
        (##unchecked-structure-set!
         _%tab90149%_
         _%val90150%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90146%_ _%val90147%_)
        (##unchecked-structure-set!
         _%tab90146%_
         _%val90147%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90143%_ _%val90144%_)
        (##unchecked-structure-set!
         _%tab90143%_
         _%val90144%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90140%_ _%val90141%_)
        (##unchecked-structure-set!
         _%tab90140%_
         _%val90141%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90138%_)
        (if (and (fixnum? _%size-hint90138%_) (##fx> _%size-hint90138%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90138%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint90114%_ _%hash90115%_ _%test90116%_ _%seed90117%_)
        (let* ((_%size90119%_ (raw-table-size-hint->size _%size-hint90114%_))
               (_%table90121%_
                (##make-vector _%size90119%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table90121%_
           '0
           (##fxquotient _%size90119%_ '2)
           _%hash90115%_
           _%test90116%_
           _%seed90117%_))))
    (define make-raw-table__0
      (lambda (_%size-hint90127%_ _%hash90128%_ _%test90129%_)
        (let ((_%seed90131%_ '0))
          (make-raw-table__%
           _%size-hint90127%_
           _%hash90128%_
           _%test90129%_
           _%seed90131%_))))
    (define make-raw-table
      (lambda _g90170_
        (let ((_g90169_ (##length _g90170_)))
          (cond ((##fx= _g90169_ 3)
                 (apply (lambda (_%size-hint90127%_
                                 _%hash90128%_
                                 _%test90129%_)
                          (make-raw-table__0
                           _%size-hint90127%_
                           _%hash90128%_
                           _%test90129%_))
                        _g90170_))
                ((##fx= _g90169_ 4)
                 (apply (lambda (_%size-hint90133%_
                                 _%hash90134%_
                                 _%test90135%_
                                 _%seed90136%_)
                          (make-raw-table__%
                           _%size-hint90133%_
                           _%hash90134%_
                           _%test90135%_
                           _%seed90136%_))
                        _g90170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90170_))))))
    (define raw-table-ref
      (lambda (_%tab90065%_ _%key90066%_ _%default90067%_)
        (let ((_%table90069%_ (&raw-table-table _%tab90065%_))
              (_%seed90070%_ (&raw-table-seed _%tab90065%_))
              (_%hash90071%_ (&raw-table-hash _%tab90065%_))
              (_%test90072%_ (&raw-table-test _%tab90065%_)))
          (let* ((_%h90074%_
                  (fxxor (_%hash90071%_ _%key90066%_) _%seed90070%_))
                 (_%size90077%_ (vector-length _%table90069%_))
                 (_%entries90080%_ (##fxquotient _%size90077%_ '2))
                 (_%start90083%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90074%_ _%entries90080%_)
                   '1)))
            (let _%loop90087%_ ((_%probe90090%_ _%start90083%_)
                                (_%i90092%_ '1)
                                (_%deleted90094%_ '#f))
              (let ((_%k90097%_ (vector-ref _%table90069%_ _%probe90090%_)))
                (if (eq? _%k90097%_ (macro-unused-obj))
                    (let () _%default90067%_)
                    (if (eq? _%k90097%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90087%_
                           (let ((_%next-probe90102%_
                                  (fx+ _%start90083%_
                                       _%i90092%_
                                       (fx* _%i90092%_ _%i90092%_))))
                             (##fxmodulo _%next-probe90102%_ _%size90077%_))
                           (##fx+ _%i90092%_ '1)
                           (let ((_%$e90105%_ _%deleted90094%_))
                             (if _%$e90105%_ _%$e90105%_ _%probe90090%_))))
                        (if (_%test90072%_ _%key90066%_ _%k90097%_)
                            (let ()
                              (vector-ref
                               _%table90069%_
                               (##fx+ _%probe90090%_ '1)))
                            (let ()
                              (_%loop90087%_
                               (let ((_%next-probe90110%_
                                      (fx+ _%start90083%_
                                           _%i90092%_
                                           (fx* _%i90092%_ _%i90092%_))))
                                 (##fxmodulo
                                  _%next-probe90110%_
                                  _%size90077%_))
                               (##fx+ _%i90092%_ '1)
                               _%deleted90094%_)))))))))))
    (define raw-table-set!
      (lambda (_%tab90061%_ _%key90062%_ _%value90063%_)
        (if (##fx< (&raw-table-free _%tab90061%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90061%_))
                    '4))
            (__raw-table-rehash! _%tab90061%_)
            '#!void)
        (__raw-table-set! _%tab90061%_ _%key90062%_ _%value90063%_)))
    (define raw-table-update!
      (lambda (_%tab90056%_ _%key90057%_ _%update90058%_ _%default90059%_)
        (if (##fx< (&raw-table-free _%tab90056%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90056%_))
                    '4))
            (__raw-table-rehash! _%tab90056%_)
            '#!void)
        (__raw-table-update!
         _%tab90056%_
         _%key90057%_
         _%update90058%_
         _%default90059%_)))
    (define raw-table-delete!
      (lambda (_%tab90013%_ _%key90014%_)
        (let ((_%table90016%_ (&raw-table-table _%tab90013%_))
              (_%seed90017%_ (&raw-table-seed _%tab90013%_))
              (_%hash90018%_ (&raw-table-hash _%tab90013%_))
              (_%test90019%_ (&raw-table-test _%tab90013%_)))
          (let* ((_%h90021%_
                  (fxxor (_%hash90018%_ _%key90014%_) _%seed90017%_))
                 (_%size90024%_ (vector-length _%table90016%_))
                 (_%entries90027%_ (##fxquotient _%size90024%_ '2))
                 (_%start90030%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90021%_ _%entries90027%_)
                   '1)))
            (let _%loop90034%_ ((_%probe90037%_ _%start90030%_)
                                (_%i90039%_ '1))
              (let ((_%k90042%_ (vector-ref _%table90016%_ _%probe90037%_)))
                (if (eq? _%k90042%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90042%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90034%_
                           (let ((_%next-probe90047%_
                                  (fx+ _%start90030%_
                                       _%i90039%_
                                       (fx* _%i90039%_ _%i90039%_))))
                             (##fxmodulo _%next-probe90047%_ _%size90024%_))
                           (##fx+ _%i90039%_ '1)))
                        (if (_%test90019%_ _%key90014%_ _%k90042%_)
                            (let ()
                              (vector-set!
                               _%table90016%_
                               _%probe90037%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90016%_
                               (##fx+ _%probe90037%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90013%_
                                  (##fx- (&raw-table-count _%tab90013%_)
                                         '1)))))
                            (let ()
                              (_%loop90034%_
                               (let ((_%next-probe90053%_
                                      (fx+ _%start90030%_
                                           _%i90039%_
                                           (fx* _%i90039%_ _%i90039%_))))
                                 (##fxmodulo
                                  _%next-probe90053%_
                                  _%size90024%_))
                               (##fx+ _%i90039%_ '1))))))))))))
    (define raw-table-for-each
      (lambda (_%tab89997%_ _%proc89998%_)
        (let* ((_%table90000%_ (&raw-table-table _%tab89997%_))
               (_%size90002%_ (vector-length _%table90000%_)))
          (let _%loop90005%_ ((_%i90007%_ '0))
            (if (##fx< _%i90007%_ _%size90002%_)
                (begin
                  (let ((_%key90009%_ (vector-ref _%table90000%_ _%i90007%_)))
                    (if (and (not (eq? _%key90009%_ (macro-unused-obj)))
                             (not (eq? _%key90009%_ (macro-deleted-obj))))
                        (let ((_%value90011%_
                               (vector-ref
                                _%table90000%_
                                (##fx+ _%i90007%_ '1))))
                          (_%proc89998%_ _%key90009%_ _%value90011%_))
                        '#!void))
                  (_%loop90005%_ (##fx+ _%i90007%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab89993%_)
        (let ((_%new-tab89995%_ (##structure-copy _%tab89993%_)))
          (&raw-table-table-set!
           _%new-tab89995%_
           (vector-copy (&raw-table-table _%tab89993%_)))
          _%new-tab89995%_)))
    (define raw-table-clear!
      (lambda (_%tab89991%_)
        (vector-fill! (&raw-table-table _%tab89991%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab89991%_ '0)
        (&raw-table-free-set!
         _%tab89991%_
         (##fxquotient (vector-length (&raw-table-table _%tab89991%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab89941%_ _%key89942%_ _%value89943%_)
        (let ((_%table89945%_ (&raw-table-table _%tab89941%_))
              (_%seed89946%_ (&raw-table-seed _%tab89941%_))
              (_%hash89947%_ (&raw-table-hash _%tab89941%_))
              (_%test89948%_ (&raw-table-test _%tab89941%_)))
          (let* ((_%h89950%_
                  (fxxor (_%hash89947%_ _%key89942%_) _%seed89946%_))
                 (_%size89953%_ (vector-length _%table89945%_))
                 (_%entries89956%_ (##fxquotient _%size89953%_ '2))
                 (_%start89959%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89950%_ _%entries89956%_)
                   '1)))
            (let _%loop89963%_ ((_%probe89966%_ _%start89959%_)
                                (_%i89968%_ '1)
                                (_%deleted89970%_ '#f))
              (let ((_%k89973%_ (vector-ref _%table89945%_ _%probe89966%_)))
                (if (eq? _%k89973%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89970%_
                          (begin
                            (vector-set!
                             _%table89945%_
                             _%deleted89970%_
                             _%key89942%_)
                            (vector-set!
                             _%table89945%_
                             (##fx+ _%deleted89970%_ '1)
                             _%value89943%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89941%_
                                (##fx+ (&raw-table-count _%tab89941%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89945%_
                             _%probe89966%_
                             _%key89942%_)
                            (vector-set!
                             _%table89945%_
                             (##fx+ _%probe89966%_ '1)
                             _%value89943%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89941%_
                                (##fx- (&raw-table-free _%tab89941%_) '1))
                               (&raw-table-count-set!
                                _%tab89941%_
                                (##fx+ (&raw-table-count _%tab89941%_)
                                       '1)))))))
                    (if (eq? _%k89973%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89963%_
                           (let ((_%next-probe89980%_
                                  (fx+ _%start89959%_
                                       _%i89968%_
                                       (fx* _%i89968%_ _%i89968%_))))
                             (##fxmodulo _%next-probe89980%_ _%size89953%_))
                           (##fx+ _%i89968%_ '1)
                           (let ((_%$e89983%_ _%deleted89970%_))
                             (if _%$e89983%_ _%$e89983%_ _%probe89966%_))))
                        (if (_%test89948%_ _%key89942%_ _%k89973%_)
                            (let ()
                              (vector-set!
                               _%table89945%_
                               _%probe89966%_
                               _%key89942%_)
                              (vector-set!
                               _%table89945%_
                               (##fx+ _%probe89966%_ '1)
                               _%value89943%_))
                            (let ()
                              (_%loop89963%_
                               (let ((_%next-probe89988%_
                                      (fx+ _%start89959%_
                                           _%i89968%_
                                           (fx* _%i89968%_ _%i89968%_))))
                                 (##fxmodulo
                                  _%next-probe89988%_
                                  _%size89953%_))
                               (##fx+ _%i89968%_ '1)
                               _%deleted89970%_)))))))))))
    (define __raw-table-update!
      (lambda (_%tab89890%_ _%key89891%_ _%update89892%_ _%default89893%_)
        (let ((_%table89895%_ (&raw-table-table _%tab89890%_))
              (_%seed89896%_ (&raw-table-seed _%tab89890%_))
              (_%hash89897%_ (&raw-table-hash _%tab89890%_))
              (_%test89898%_ (&raw-table-test _%tab89890%_)))
          (let* ((_%h89900%_
                  (fxxor (_%hash89897%_ _%key89891%_) _%seed89896%_))
                 (_%size89903%_ (vector-length _%table89895%_))
                 (_%entries89906%_ (##fxquotient _%size89903%_ '2))
                 (_%start89909%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89900%_ _%entries89906%_)
                   '1)))
            (let _%loop89913%_ ((_%probe89916%_ _%start89909%_)
                                (_%i89918%_ '1)
                                (_%deleted89920%_ '#f))
              (let ((_%k89923%_ (vector-ref _%table89895%_ _%probe89916%_)))
                (if (eq? _%k89923%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89920%_
                          (begin
                            (vector-set!
                             _%table89895%_
                             _%deleted89920%_
                             _%key89891%_)
                            (vector-set!
                             _%table89895%_
                             (##fx+ _%deleted89920%_ '1)
                             (_%update89892%_ _%default89893%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89890%_
                                (##fx+ (&raw-table-count _%tab89890%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89895%_
                             _%probe89916%_
                             _%key89891%_)
                            (vector-set!
                             _%table89895%_
                             (##fx+ _%probe89916%_ '1)
                             (_%update89892%_ _%default89893%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89890%_
                                (##fx- (&raw-table-free _%tab89890%_) '1))
                               (&raw-table-count-set!
                                _%tab89890%_
                                (##fx+ (&raw-table-count _%tab89890%_)
                                       '1)))))))
                    (if (eq? _%k89923%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89913%_
                           (let ((_%next-probe89930%_
                                  (fx+ _%start89909%_
                                       _%i89918%_
                                       (fx* _%i89918%_ _%i89918%_))))
                             (##fxmodulo _%next-probe89930%_ _%size89903%_))
                           (##fx+ _%i89918%_ '1)
                           (let ((_%$e89933%_ _%deleted89920%_))
                             (if _%$e89933%_ _%$e89933%_ _%probe89916%_))))
                        (if (_%test89898%_ _%key89891%_ _%k89923%_)
                            (let ()
                              (vector-set!
                               _%table89895%_
                               _%probe89916%_
                               _%key89891%_)
                              (vector-set!
                               _%table89895%_
                               (##fx+ _%probe89916%_ '1)
                               (_%update89892%_
                                (vector-ref
                                 _%table89895%_
                                 (##fx+ _%probe89916%_ '1)))))
                            (let ()
                              (_%loop89913%_
                               (let ((_%next-probe89938%_
                                      (fx+ _%start89909%_
                                           _%i89918%_
                                           (fx* _%i89918%_ _%i89918%_))))
                                 (##fxmodulo
                                  _%next-probe89938%_
                                  _%size89903%_))
                               (##fx+ _%i89918%_ '1)
                               _%deleted89920%_)))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab89871%_)
        (let* ((_%old-table89873%_ (&raw-table-table _%tab89871%_))
               (_%old-size89875%_ (vector-length _%old-table89873%_))
               (_%new-size89877%_
                (if (##fx< (&raw-table-count _%tab89871%_)
                           (##fxquotient _%old-size89875%_ '4))
                    (vector-length _%old-table89873%_)
                    (##fx* '2 (vector-length _%old-table89873%_))))
               (_%new-table89879%_
                (##make-vector _%new-size89877%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab89871%_ _%new-table89879%_)
          (&raw-table-count-set! _%tab89871%_ '0)
          (&raw-table-free-set!
           _%tab89871%_
           (##fxquotient _%new-size89877%_ '2))
          (let _%lp89882%_ ((_%i89884%_ '0))
            (if (##fx< _%i89884%_ _%old-size89875%_)
                (begin
                  (let ((_%key89886%_
                         (vector-ref _%old-table89873%_ _%i89884%_)))
                    (if (and (not (eq? _%key89886%_ (macro-unused-obj)))
                             (not (eq? _%key89886%_ (macro-deleted-obj))))
                        (let ((_%value89888%_
                               (vector-ref
                                _%old-table89873%_
                                (##fx+ _%i89884%_ '1))))
                          (__raw-table-set!
                           _%tab89871%_
                           _%key89886%_
                           _%value89888%_))
                        '#!void))
                  (_%lp89882%_ (##fx+ _%i89884%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj89863%_)
        (let ((_%t89865%_ (##type _%obj89863%_)))
          (if (##fx= (##fxand _%t89865%_ '1) '0)
              (let ()
                (fxand (##type-cast _%obj89863%_ (macro-type-fixnum))
                       (macro-max-fixnum32)))
              (if (symbolic? _%obj89863%_)
                  (let () (symbolic-hash _%obj89863%_))
                  (if (procedure? _%obj89863%_)
                      (let () (procedure-hash _%obj89863%_))
                      (let ()
                        (fxand (__eq-hash _%obj89863%_)
                               (macro-max-fixnum32)))))))))
    (define procedure-hash
      (lambda (_%obj89859%_)
        (let ((_%h89861%_
               (if (##closure? _%obj89859%_)
                   (__eq-hash _%obj89859%_)
                   (##type-cast _%obj89859%_ '0))))
          (fxand _%h89861%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj89856%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj89856%_)))
    (define eqv-hash
      (lambda (_%obj89846%_)
        (letrec ((_%combine89848%_
                  (lambda (_%a89853%_ _%b89854%_)
                    (fxand (##fx* (##fx+ _%a89853%_
                                         (fxarithmetic-shift-left
                                          _%b89854%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash89849%_
                  (lambda (_%obj89851%_)
                    (macro-number-dispatch
                     _%obj89851%_
                     (eq-hash _%obj89851%_)
                     (fxand _%obj89851%_ (macro-max-fixnum32))
                     (modulo _%obj89851%_ '331804481)
                     (_%combine89848%_
                      (_%hash89849%_ (macro-ratnum-numerator _%obj89851%_))
                      (_%hash89849%_ (macro-ratnum-denominator _%obj89851%_)))
                     (_%combine89848%_
                      (##u16vector-ref _%obj89851%_ '0)
                      (_%combine89848%_
                       (##u16vector-ref _%obj89851%_ '1)
                       (_%combine89848%_
                        (##u16vector-ref _%obj89851%_ '2)
                        (##u16vector-ref _%obj89851%_ '3))))
                     (_%combine89848%_
                      (_%hash89849%_ (macro-cpxnum-real _%obj89851%_))
                      (_%hash89849%_ (macro-cpxnum-imag _%obj89851%_)))))))
          (_%hash89849%_ _%obj89846%_))))
    (define symbolic?
      (lambda (_%obj89841%_)
        (let ((_%$e89843%_ (symbol? _%obj89841%_)))
          (if _%$e89843%_ _%$e89843%_ (keyword? _%obj89841%_)))))
    (define symbolic-hash (lambda (_%obj89839%_) (macro-slot '1 _%obj89839%_)))
    (define string-hash (lambda (_%obj89837%_) (##string=?-hash _%obj89837%_)))
    (define immediate-hash
      (lambda (_%obj89835%_) (##type-cast _%obj89835%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint89816%_ _%seed89818%_)
        (make-raw-table__% _%size-hint89816%_ eq-hash eq? _%seed89818%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint89824%_ '#f) (_%seed89826%_ '0))
          (make-eq-table__% _%size-hint89824%_ _%seed89826%_))))
    (define make-eq-table__1
      (lambda (_%size-hint89828%_)
        (let ((_%seed89830%_ '0))
          (make-eq-table__% _%size-hint89828%_ _%seed89830%_))))
    (define make-eq-table
      (lambda _g90172_
        (let ((_g90171_ (##length _g90172_)))
          (cond ((##fx= _g90171_ 0)
                 (apply (lambda () (make-eq-table__0)) _g90172_))
                ((##fx= _g90171_ 1)
                 (apply (lambda (_%size-hint89828%_)
                          (make-eq-table__1 _%size-hint89828%_))
                        _g90172_))
                ((##fx= _g90171_ 2)
                 (apply (lambda (_%size-hint89832%_ _%seed89833%_)
                          (make-eq-table__% _%size-hint89832%_ _%seed89833%_))
                        _g90172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90172_))))))
    (define eq-table-ref
      (lambda (_%tab89769%_ _%key89770%_ _%default89771%_)
        (let ((_%table89773%_ (&raw-table-table _%tab89769%_))
              (_%seed89774%_ (&raw-table-seed _%tab89769%_)))
          (let* ((_%h89776%_ (fxxor (eq-hash _%key89770%_) _%seed89774%_))
                 (_%size89779%_ (vector-length _%table89773%_))
                 (_%entries89782%_ (##fxquotient _%size89779%_ '2))
                 (_%start89785%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89776%_ _%entries89782%_)
                   '1)))
            (let _%loop89789%_ ((_%probe89792%_ _%start89785%_)
                                (_%i89794%_ '1)
                                (_%deleted89796%_ '#f))
              (let ((_%k89799%_ (vector-ref _%table89773%_ _%probe89792%_)))
                (if (eq? _%k89799%_ (macro-unused-obj))
                    (let () _%default89771%_)
                    (if (eq? _%k89799%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89789%_
                           (let ((_%next-probe89804%_
                                  (fx+ _%start89785%_
                                       _%i89794%_
                                       (fx* _%i89794%_ _%i89794%_))))
                             (##fxmodulo _%next-probe89804%_ _%size89779%_))
                           (##fx+ _%i89794%_ '1)
                           (let ((_%$e89807%_ _%deleted89796%_))
                             (if _%$e89807%_ _%$e89807%_ _%probe89792%_))))
                        (if (eq? _%key89770%_ _%k89799%_)
                            (let ()
                              (vector-ref
                               _%table89773%_
                               (##fx+ _%probe89792%_ '1)))
                            (let ()
                              (_%loop89789%_
                               (let ((_%next-probe89812%_
                                      (fx+ _%start89785%_
                                           _%i89794%_
                                           (fx* _%i89794%_ _%i89794%_))))
                                 (##fxmodulo
                                  _%next-probe89812%_
                                  _%size89779%_))
                               (##fx+ _%i89794%_ '1)
                               _%deleted89796%_)))))))))))
    (define eq-table-set!
      (lambda (_%tab89765%_ _%key89766%_ _%value89767%_)
        (if (##fx< (&raw-table-free _%tab89765%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89765%_))
                    '4))
            (__raw-table-rehash! _%tab89765%_)
            '#!void)
        (__eq-table-set! _%tab89765%_ _%key89766%_ _%value89767%_)))
    (define __eq-table-set!
      (lambda (_%tab89716%_ _%key89717%_ _%value89718%_)
        (let ((_%table89721%_ (&raw-table-table _%tab89716%_))
              (_%seed89722%_ (&raw-table-seed _%tab89716%_)))
          (let* ((_%h89724%_ (fxxor (eq-hash _%key89717%_) _%seed89722%_))
                 (_%size89727%_ (vector-length _%table89721%_))
                 (_%entries89730%_ (##fxquotient _%size89727%_ '2))
                 (_%start89733%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89724%_ _%entries89730%_)
                   '1)))
            (let _%loop89737%_ ((_%probe89740%_ _%start89733%_)
                                (_%i89742%_ '1)
                                (_%deleted89744%_ '#f))
              (let ((_%k89747%_ (vector-ref _%table89721%_ _%probe89740%_)))
                (if (eq? _%k89747%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89744%_
                          (begin
                            (vector-set!
                             _%table89721%_
                             _%deleted89744%_
                             _%key89717%_)
                            (vector-set!
                             _%table89721%_
                             (##fx+ _%deleted89744%_ '1)
                             _%value89718%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89716%_
                                (##fx+ (&raw-table-count _%tab89716%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89721%_
                             _%probe89740%_
                             _%key89717%_)
                            (vector-set!
                             _%table89721%_
                             (##fx+ _%probe89740%_ '1)
                             _%value89718%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89716%_
                                (##fx- (&raw-table-free _%tab89716%_) '1))
                               (&raw-table-count-set!
                                _%tab89716%_
                                (##fx+ (&raw-table-count _%tab89716%_)
                                       '1)))))))
                    (if (eq? _%k89747%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89737%_
                           (let ((_%next-probe89754%_
                                  (fx+ _%start89733%_
                                       _%i89742%_
                                       (fx* _%i89742%_ _%i89742%_))))
                             (##fxmodulo _%next-probe89754%_ _%size89727%_))
                           (##fx+ _%i89742%_ '1)
                           (let ((_%$e89757%_ _%deleted89744%_))
                             (if _%$e89757%_ _%$e89757%_ _%probe89740%_))))
                        (if (eq? _%key89717%_ _%k89747%_)
                            (let ()
                              (vector-set!
                               _%table89721%_
                               _%probe89740%_
                               _%key89717%_)
                              (vector-set!
                               _%table89721%_
                               (##fx+ _%probe89740%_ '1)
                               _%value89718%_))
                            (let ()
                              (_%loop89737%_
                               (let ((_%next-probe89762%_
                                      (fx+ _%start89733%_
                                           _%i89742%_
                                           (fx* _%i89742%_ _%i89742%_))))
                                 (##fxmodulo
                                  _%next-probe89762%_
                                  _%size89727%_))
                               (##fx+ _%i89742%_ '1)
                               _%deleted89744%_)))))))))))
    (define eq-table-update!
      (lambda (_%tab89711%_
               _%key89712%_
               _%eq-table-update!89713%_
               _%default89714%_)
        (if (##fx< (&raw-table-free _%tab89711%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89711%_))
                    '4))
            (__raw-table-rehash! _%tab89711%_)
            '#!void)
        (__eq-table-update!
         _%tab89711%_
         _%key89712%_
         _%eq-table-update!89713%_
         _%default89714%_)))
    (define __eq-table-update!
      (lambda (_%tab89661%_
               _%key89662%_
               _%eq-table-update!89663%_
               _%default89664%_)
        (let ((_%table89667%_ (&raw-table-table _%tab89661%_))
              (_%seed89668%_ (&raw-table-seed _%tab89661%_)))
          (let* ((_%h89670%_ (fxxor (eq-hash _%key89662%_) _%seed89668%_))
                 (_%size89673%_ (vector-length _%table89667%_))
                 (_%entries89676%_ (##fxquotient _%size89673%_ '2))
                 (_%start89679%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89670%_ _%entries89676%_)
                   '1)))
            (let _%loop89683%_ ((_%probe89686%_ _%start89679%_)
                                (_%i89688%_ '1)
                                (_%deleted89690%_ '#f))
              (let ((_%k89693%_ (vector-ref _%table89667%_ _%probe89686%_)))
                (if (eq? _%k89693%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89690%_
                          (begin
                            (vector-set!
                             _%table89667%_
                             _%deleted89690%_
                             _%key89662%_)
                            (vector-set!
                             _%table89667%_
                             (##fx+ _%deleted89690%_ '1)
                             (_%eq-table-update!89663%_ _%default89664%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89661%_
                                (##fx+ (&raw-table-count _%tab89661%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89667%_
                             _%probe89686%_
                             _%key89662%_)
                            (vector-set!
                             _%table89667%_
                             (##fx+ _%probe89686%_ '1)
                             (_%eq-table-update!89663%_ _%default89664%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89661%_
                                (##fx- (&raw-table-free _%tab89661%_) '1))
                               (&raw-table-count-set!
                                _%tab89661%_
                                (##fx+ (&raw-table-count _%tab89661%_)
                                       '1)))))))
                    (if (eq? _%k89693%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89683%_
                           (let ((_%next-probe89700%_
                                  (fx+ _%start89679%_
                                       _%i89688%_
                                       (fx* _%i89688%_ _%i89688%_))))
                             (##fxmodulo _%next-probe89700%_ _%size89673%_))
                           (##fx+ _%i89688%_ '1)
                           (let ((_%$e89703%_ _%deleted89690%_))
                             (if _%$e89703%_ _%$e89703%_ _%probe89686%_))))
                        (if (eq? _%key89662%_ _%k89693%_)
                            (let ()
                              (vector-set!
                               _%table89667%_
                               _%probe89686%_
                               _%key89662%_)
                              (vector-set!
                               _%table89667%_
                               (##fx+ _%probe89686%_ '1)
                               (_%eq-table-update!89663%_
                                (vector-ref
                                 _%table89667%_
                                 (##fx+ _%probe89686%_ '1)))))
                            (let ()
                              (_%loop89683%_
                               (let ((_%next-probe89708%_
                                      (fx+ _%start89679%_
                                           _%i89688%_
                                           (fx* _%i89688%_ _%i89688%_))))
                                 (##fxmodulo
                                  _%next-probe89708%_
                                  _%size89673%_))
                               (##fx+ _%i89688%_ '1)
                               _%deleted89690%_)))))))))))
    (define eq-table-delete!
      (lambda (_%tab89616%_ _%key89618%_)
        (let ((_%table89621%_ (&raw-table-table _%tab89616%_))
              (_%seed89623%_ (&raw-table-seed _%tab89616%_)))
          (let* ((_%h89626%_ (fxxor (eq-hash _%key89618%_) _%seed89623%_))
                 (_%size89629%_ (vector-length _%table89621%_))
                 (_%entries89632%_ (##fxquotient _%size89629%_ '2))
                 (_%start89635%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89626%_ _%entries89632%_)
                   '1)))
            (let _%loop89639%_ ((_%probe89642%_ _%start89635%_)
                                (_%i89644%_ '1))
              (let ((_%k89647%_ (vector-ref _%table89621%_ _%probe89642%_)))
                (if (eq? _%k89647%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89647%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89639%_
                           (let ((_%next-probe89652%_
                                  (fx+ _%start89635%_
                                       _%i89644%_
                                       (fx* _%i89644%_ _%i89644%_))))
                             (##fxmodulo _%next-probe89652%_ _%size89629%_))
                           (##fx+ _%i89644%_ '1)))
                        (if (eq? _%key89618%_ _%k89647%_)
                            (let ()
                              (vector-set!
                               _%table89621%_
                               _%probe89642%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89621%_
                               (##fx+ _%probe89642%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89616%_
                                  (##fx- (&raw-table-count _%tab89616%_)
                                         '1)))))
                            (let ()
                              (_%loop89639%_
                               (let ((_%next-probe89658%_
                                      (fx+ _%start89635%_
                                           _%i89644%_
                                           (fx* _%i89644%_ _%i89644%_))))
                                 (##fxmodulo
                                  _%next-probe89658%_
                                  _%size89629%_))
                               (##fx+ _%i89644%_ '1))))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint89597%_ _%seed89599%_)
        (make-raw-table__% _%size-hint89597%_ eqv-hash eqv? _%seed89599%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint89605%_ '#f) (_%seed89607%_ '0))
          (make-eqv-table__% _%size-hint89605%_ _%seed89607%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint89609%_)
        (let ((_%seed89611%_ '0))
          (make-eqv-table__% _%size-hint89609%_ _%seed89611%_))))
    (define make-eqv-table
      (lambda _g90174_
        (let ((_g90173_ (##length _g90174_)))
          (cond ((##fx= _g90173_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g90174_))
                ((##fx= _g90173_ 1)
                 (apply (lambda (_%size-hint89609%_)
                          (make-eqv-table__1 _%size-hint89609%_))
                        _g90174_))
                ((##fx= _g90173_ 2)
                 (apply (lambda (_%size-hint89613%_ _%seed89614%_)
                          (make-eqv-table__% _%size-hint89613%_ _%seed89614%_))
                        _g90174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90174_))))))
    (define eqv-table-ref
      (lambda (_%tab89550%_ _%key89551%_ _%default89552%_)
        (let ((_%table89554%_ (&raw-table-table _%tab89550%_))
              (_%seed89555%_ (&raw-table-seed _%tab89550%_)))
          (let* ((_%h89557%_ (fxxor (eqv-hash _%key89551%_) _%seed89555%_))
                 (_%size89560%_ (vector-length _%table89554%_))
                 (_%entries89563%_ (##fxquotient _%size89560%_ '2))
                 (_%start89566%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89557%_ _%entries89563%_)
                   '1)))
            (let _%loop89570%_ ((_%probe89573%_ _%start89566%_)
                                (_%i89575%_ '1)
                                (_%deleted89577%_ '#f))
              (let ((_%k89580%_ (vector-ref _%table89554%_ _%probe89573%_)))
                (if (eq? _%k89580%_ (macro-unused-obj))
                    (let () _%default89552%_)
                    (if (eq? _%k89580%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89570%_
                           (let ((_%next-probe89585%_
                                  (fx+ _%start89566%_
                                       _%i89575%_
                                       (fx* _%i89575%_ _%i89575%_))))
                             (##fxmodulo _%next-probe89585%_ _%size89560%_))
                           (##fx+ _%i89575%_ '1)
                           (let ((_%$e89588%_ _%deleted89577%_))
                             (if _%$e89588%_ _%$e89588%_ _%probe89573%_))))
                        (if (eqv? _%key89551%_ _%k89580%_)
                            (let ()
                              (vector-ref
                               _%table89554%_
                               (##fx+ _%probe89573%_ '1)))
                            (let ()
                              (_%loop89570%_
                               (let ((_%next-probe89593%_
                                      (fx+ _%start89566%_
                                           _%i89575%_
                                           (fx* _%i89575%_ _%i89575%_))))
                                 (##fxmodulo
                                  _%next-probe89593%_
                                  _%size89560%_))
                               (##fx+ _%i89575%_ '1)
                               _%deleted89577%_)))))))))))
    (define eqv-table-set!
      (lambda (_%tab89546%_ _%key89547%_ _%value89548%_)
        (if (##fx< (&raw-table-free _%tab89546%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89546%_))
                    '4))
            (__raw-table-rehash! _%tab89546%_)
            '#!void)
        (__eqv-table-set! _%tab89546%_ _%key89547%_ _%value89548%_)))
    (define __eqv-table-set!
      (lambda (_%tab89497%_ _%key89498%_ _%value89499%_)
        (let ((_%table89502%_ (&raw-table-table _%tab89497%_))
              (_%seed89503%_ (&raw-table-seed _%tab89497%_)))
          (let* ((_%h89505%_ (fxxor (eqv-hash _%key89498%_) _%seed89503%_))
                 (_%size89508%_ (vector-length _%table89502%_))
                 (_%entries89511%_ (##fxquotient _%size89508%_ '2))
                 (_%start89514%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89505%_ _%entries89511%_)
                   '1)))
            (let _%loop89518%_ ((_%probe89521%_ _%start89514%_)
                                (_%i89523%_ '1)
                                (_%deleted89525%_ '#f))
              (let ((_%k89528%_ (vector-ref _%table89502%_ _%probe89521%_)))
                (if (eq? _%k89528%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89525%_
                          (begin
                            (vector-set!
                             _%table89502%_
                             _%deleted89525%_
                             _%key89498%_)
                            (vector-set!
                             _%table89502%_
                             (##fx+ _%deleted89525%_ '1)
                             _%value89499%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89497%_
                                (##fx+ (&raw-table-count _%tab89497%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89502%_
                             _%probe89521%_
                             _%key89498%_)
                            (vector-set!
                             _%table89502%_
                             (##fx+ _%probe89521%_ '1)
                             _%value89499%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89497%_
                                (##fx- (&raw-table-free _%tab89497%_) '1))
                               (&raw-table-count-set!
                                _%tab89497%_
                                (##fx+ (&raw-table-count _%tab89497%_)
                                       '1)))))))
                    (if (eq? _%k89528%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89518%_
                           (let ((_%next-probe89535%_
                                  (fx+ _%start89514%_
                                       _%i89523%_
                                       (fx* _%i89523%_ _%i89523%_))))
                             (##fxmodulo _%next-probe89535%_ _%size89508%_))
                           (##fx+ _%i89523%_ '1)
                           (let ((_%$e89538%_ _%deleted89525%_))
                             (if _%$e89538%_ _%$e89538%_ _%probe89521%_))))
                        (if (eqv? _%key89498%_ _%k89528%_)
                            (let ()
                              (vector-set!
                               _%table89502%_
                               _%probe89521%_
                               _%key89498%_)
                              (vector-set!
                               _%table89502%_
                               (##fx+ _%probe89521%_ '1)
                               _%value89499%_))
                            (let ()
                              (_%loop89518%_
                               (let ((_%next-probe89543%_
                                      (fx+ _%start89514%_
                                           _%i89523%_
                                           (fx* _%i89523%_ _%i89523%_))))
                                 (##fxmodulo
                                  _%next-probe89543%_
                                  _%size89508%_))
                               (##fx+ _%i89523%_ '1)
                               _%deleted89525%_)))))))))))
    (define eqv-table-update!
      (lambda (_%tab89492%_
               _%key89493%_
               _%eqv-table-update!89494%_
               _%default89495%_)
        (if (##fx< (&raw-table-free _%tab89492%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89492%_))
                    '4))
            (__raw-table-rehash! _%tab89492%_)
            '#!void)
        (__eqv-table-update!
         _%tab89492%_
         _%key89493%_
         _%eqv-table-update!89494%_
         _%default89495%_)))
    (define __eqv-table-update!
      (lambda (_%tab89442%_
               _%key89443%_
               _%eqv-table-update!89444%_
               _%default89445%_)
        (let ((_%table89448%_ (&raw-table-table _%tab89442%_))
              (_%seed89449%_ (&raw-table-seed _%tab89442%_)))
          (let* ((_%h89451%_ (fxxor (eqv-hash _%key89443%_) _%seed89449%_))
                 (_%size89454%_ (vector-length _%table89448%_))
                 (_%entries89457%_ (##fxquotient _%size89454%_ '2))
                 (_%start89460%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89451%_ _%entries89457%_)
                   '1)))
            (let _%loop89464%_ ((_%probe89467%_ _%start89460%_)
                                (_%i89469%_ '1)
                                (_%deleted89471%_ '#f))
              (let ((_%k89474%_ (vector-ref _%table89448%_ _%probe89467%_)))
                (if (eq? _%k89474%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89471%_
                          (begin
                            (vector-set!
                             _%table89448%_
                             _%deleted89471%_
                             _%key89443%_)
                            (vector-set!
                             _%table89448%_
                             (##fx+ _%deleted89471%_ '1)
                             (_%eqv-table-update!89444%_ _%default89445%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89442%_
                                (##fx+ (&raw-table-count _%tab89442%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89448%_
                             _%probe89467%_
                             _%key89443%_)
                            (vector-set!
                             _%table89448%_
                             (##fx+ _%probe89467%_ '1)
                             (_%eqv-table-update!89444%_ _%default89445%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89442%_
                                (##fx- (&raw-table-free _%tab89442%_) '1))
                               (&raw-table-count-set!
                                _%tab89442%_
                                (##fx+ (&raw-table-count _%tab89442%_)
                                       '1)))))))
                    (if (eq? _%k89474%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89464%_
                           (let ((_%next-probe89481%_
                                  (fx+ _%start89460%_
                                       _%i89469%_
                                       (fx* _%i89469%_ _%i89469%_))))
                             (##fxmodulo _%next-probe89481%_ _%size89454%_))
                           (##fx+ _%i89469%_ '1)
                           (let ((_%$e89484%_ _%deleted89471%_))
                             (if _%$e89484%_ _%$e89484%_ _%probe89467%_))))
                        (if (eqv? _%key89443%_ _%k89474%_)
                            (let ()
                              (vector-set!
                               _%table89448%_
                               _%probe89467%_
                               _%key89443%_)
                              (vector-set!
                               _%table89448%_
                               (##fx+ _%probe89467%_ '1)
                               (_%eqv-table-update!89444%_
                                (vector-ref
                                 _%table89448%_
                                 (##fx+ _%probe89467%_ '1)))))
                            (let ()
                              (_%loop89464%_
                               (let ((_%next-probe89489%_
                                      (fx+ _%start89460%_
                                           _%i89469%_
                                           (fx* _%i89469%_ _%i89469%_))))
                                 (##fxmodulo
                                  _%next-probe89489%_
                                  _%size89454%_))
                               (##fx+ _%i89469%_ '1)
                               _%deleted89471%_)))))))))))
    (define eqv-table-delete!
      (lambda (_%tab89397%_ _%key89399%_)
        (let ((_%table89402%_ (&raw-table-table _%tab89397%_))
              (_%seed89404%_ (&raw-table-seed _%tab89397%_)))
          (let* ((_%h89407%_ (fxxor (eqv-hash _%key89399%_) _%seed89404%_))
                 (_%size89410%_ (vector-length _%table89402%_))
                 (_%entries89413%_ (##fxquotient _%size89410%_ '2))
                 (_%start89416%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89407%_ _%entries89413%_)
                   '1)))
            (let _%loop89420%_ ((_%probe89423%_ _%start89416%_)
                                (_%i89425%_ '1))
              (let ((_%k89428%_ (vector-ref _%table89402%_ _%probe89423%_)))
                (if (eq? _%k89428%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89428%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89420%_
                           (let ((_%next-probe89433%_
                                  (fx+ _%start89416%_
                                       _%i89425%_
                                       (fx* _%i89425%_ _%i89425%_))))
                             (##fxmodulo _%next-probe89433%_ _%size89410%_))
                           (##fx+ _%i89425%_ '1)))
                        (if (eqv? _%key89399%_ _%k89428%_)
                            (let ()
                              (vector-set!
                               _%table89402%_
                               _%probe89423%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89402%_
                               (##fx+ _%probe89423%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89397%_
                                  (##fx- (&raw-table-count _%tab89397%_)
                                         '1)))))
                            (let ()
                              (_%loop89420%_
                               (let ((_%next-probe89439%_
                                      (fx+ _%start89416%_
                                           _%i89425%_
                                           (fx* _%i89425%_ _%i89425%_))))
                                 (##fxmodulo
                                  _%next-probe89439%_
                                  _%size89410%_))
                               (##fx+ _%i89425%_ '1))))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint89378%_ _%seed89380%_)
        (make-raw-table__%
         _%size-hint89378%_
         symbolic-hash
         eq?
         _%seed89380%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint89386%_ '#f) (_%seed89388%_ '0))
          (make-symbolic-table__% _%size-hint89386%_ _%seed89388%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint89390%_)
        (let ((_%seed89392%_ '0))
          (make-symbolic-table__% _%size-hint89390%_ _%seed89392%_))))
    (define make-symbolic-table
      (lambda _g90176_
        (let ((_g90175_ (##length _g90176_)))
          (cond ((##fx= _g90175_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g90176_))
                ((##fx= _g90175_ 1)
                 (apply (lambda (_%size-hint89390%_)
                          (make-symbolic-table__1 _%size-hint89390%_))
                        _g90176_))
                ((##fx= _g90175_ 2)
                 (apply (lambda (_%size-hint89394%_ _%seed89395%_)
                          (make-symbolic-table__%
                           _%size-hint89394%_
                           _%seed89395%_))
                        _g90176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90176_))))))
    (define symbolic-table-ref
      (lambda (_%tab89331%_ _%key89332%_ _%default89333%_)
        (let ((_%table89335%_ (&raw-table-table _%tab89331%_))
              (_%seed89336%_ (&raw-table-seed _%tab89331%_)))
          (let* ((_%h89338%_
                  (fxxor (symbolic-hash _%key89332%_) _%seed89336%_))
                 (_%size89341%_ (vector-length _%table89335%_))
                 (_%entries89344%_ (##fxquotient _%size89341%_ '2))
                 (_%start89347%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89338%_ _%entries89344%_)
                   '1)))
            (let _%loop89351%_ ((_%probe89354%_ _%start89347%_)
                                (_%i89356%_ '1)
                                (_%deleted89358%_ '#f))
              (let ((_%k89361%_ (vector-ref _%table89335%_ _%probe89354%_)))
                (if (eq? _%k89361%_ (macro-unused-obj))
                    (let () _%default89333%_)
                    (if (eq? _%k89361%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89351%_
                           (let ((_%next-probe89366%_
                                  (fx+ _%start89347%_
                                       _%i89356%_
                                       (fx* _%i89356%_ _%i89356%_))))
                             (##fxmodulo _%next-probe89366%_ _%size89341%_))
                           (##fx+ _%i89356%_ '1)
                           (let ((_%$e89369%_ _%deleted89358%_))
                             (if _%$e89369%_ _%$e89369%_ _%probe89354%_))))
                        (if (eq? _%key89332%_ _%k89361%_)
                            (let ()
                              (vector-ref
                               _%table89335%_
                               (##fx+ _%probe89354%_ '1)))
                            (let ()
                              (_%loop89351%_
                               (let ((_%next-probe89374%_
                                      (fx+ _%start89347%_
                                           _%i89356%_
                                           (fx* _%i89356%_ _%i89356%_))))
                                 (##fxmodulo
                                  _%next-probe89374%_
                                  _%size89341%_))
                               (##fx+ _%i89356%_ '1)
                               _%deleted89358%_)))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89327%_ _%key89328%_ _%value89329%_)
        (if (##fx< (&raw-table-free _%tab89327%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89327%_))
                    '4))
            (__raw-table-rehash! _%tab89327%_)
            '#!void)
        (__symbolic-table-set! _%tab89327%_ _%key89328%_ _%value89329%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89278%_ _%key89279%_ _%value89280%_)
        (let ((_%table89283%_ (&raw-table-table _%tab89278%_))
              (_%seed89284%_ (&raw-table-seed _%tab89278%_)))
          (let* ((_%h89286%_
                  (fxxor (symbolic-hash _%key89279%_) _%seed89284%_))
                 (_%size89289%_ (vector-length _%table89283%_))
                 (_%entries89292%_ (##fxquotient _%size89289%_ '2))
                 (_%start89295%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89286%_ _%entries89292%_)
                   '1)))
            (let _%loop89299%_ ((_%probe89302%_ _%start89295%_)
                                (_%i89304%_ '1)
                                (_%deleted89306%_ '#f))
              (let ((_%k89309%_ (vector-ref _%table89283%_ _%probe89302%_)))
                (if (eq? _%k89309%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89306%_
                          (begin
                            (vector-set!
                             _%table89283%_
                             _%deleted89306%_
                             _%key89279%_)
                            (vector-set!
                             _%table89283%_
                             (##fx+ _%deleted89306%_ '1)
                             _%value89280%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89278%_
                                (##fx+ (&raw-table-count _%tab89278%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89283%_
                             _%probe89302%_
                             _%key89279%_)
                            (vector-set!
                             _%table89283%_
                             (##fx+ _%probe89302%_ '1)
                             _%value89280%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89278%_
                                (##fx- (&raw-table-free _%tab89278%_) '1))
                               (&raw-table-count-set!
                                _%tab89278%_
                                (##fx+ (&raw-table-count _%tab89278%_)
                                       '1)))))))
                    (if (eq? _%k89309%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89299%_
                           (let ((_%next-probe89316%_
                                  (fx+ _%start89295%_
                                       _%i89304%_
                                       (fx* _%i89304%_ _%i89304%_))))
                             (##fxmodulo _%next-probe89316%_ _%size89289%_))
                           (##fx+ _%i89304%_ '1)
                           (let ((_%$e89319%_ _%deleted89306%_))
                             (if _%$e89319%_ _%$e89319%_ _%probe89302%_))))
                        (if (eq? _%key89279%_ _%k89309%_)
                            (let ()
                              (vector-set!
                               _%table89283%_
                               _%probe89302%_
                               _%key89279%_)
                              (vector-set!
                               _%table89283%_
                               (##fx+ _%probe89302%_ '1)
                               _%value89280%_))
                            (let ()
                              (_%loop89299%_
                               (let ((_%next-probe89324%_
                                      (fx+ _%start89295%_
                                           _%i89304%_
                                           (fx* _%i89304%_ _%i89304%_))))
                                 (##fxmodulo
                                  _%next-probe89324%_
                                  _%size89289%_))
                               (##fx+ _%i89304%_ '1)
                               _%deleted89306%_)))))))))))
    (define symbolic-table-update!
      (lambda (_%tab89273%_
               _%key89274%_
               _%symbolic-table-update!89275%_
               _%default89276%_)
        (if (##fx< (&raw-table-free _%tab89273%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89273%_))
                    '4))
            (__raw-table-rehash! _%tab89273%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89273%_
         _%key89274%_
         _%symbolic-table-update!89275%_
         _%default89276%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89223%_
               _%key89224%_
               _%symbolic-table-update!89225%_
               _%default89226%_)
        (let ((_%table89229%_ (&raw-table-table _%tab89223%_))
              (_%seed89230%_ (&raw-table-seed _%tab89223%_)))
          (let* ((_%h89232%_
                  (fxxor (symbolic-hash _%key89224%_) _%seed89230%_))
                 (_%size89235%_ (vector-length _%table89229%_))
                 (_%entries89238%_ (##fxquotient _%size89235%_ '2))
                 (_%start89241%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89232%_ _%entries89238%_)
                   '1)))
            (let _%loop89245%_ ((_%probe89248%_ _%start89241%_)
                                (_%i89250%_ '1)
                                (_%deleted89252%_ '#f))
              (let ((_%k89255%_ (vector-ref _%table89229%_ _%probe89248%_)))
                (if (eq? _%k89255%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89252%_
                          (begin
                            (vector-set!
                             _%table89229%_
                             _%deleted89252%_
                             _%key89224%_)
                            (vector-set!
                             _%table89229%_
                             (##fx+ _%deleted89252%_ '1)
                             (_%symbolic-table-update!89225%_
                              _%default89226%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89223%_
                                (##fx+ (&raw-table-count _%tab89223%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89229%_
                             _%probe89248%_
                             _%key89224%_)
                            (vector-set!
                             _%table89229%_
                             (##fx+ _%probe89248%_ '1)
                             (_%symbolic-table-update!89225%_
                              _%default89226%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89223%_
                                (##fx- (&raw-table-free _%tab89223%_) '1))
                               (&raw-table-count-set!
                                _%tab89223%_
                                (##fx+ (&raw-table-count _%tab89223%_)
                                       '1)))))))
                    (if (eq? _%k89255%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89245%_
                           (let ((_%next-probe89262%_
                                  (fx+ _%start89241%_
                                       _%i89250%_
                                       (fx* _%i89250%_ _%i89250%_))))
                             (##fxmodulo _%next-probe89262%_ _%size89235%_))
                           (##fx+ _%i89250%_ '1)
                           (let ((_%$e89265%_ _%deleted89252%_))
                             (if _%$e89265%_ _%$e89265%_ _%probe89248%_))))
                        (if (eq? _%key89224%_ _%k89255%_)
                            (let ()
                              (vector-set!
                               _%table89229%_
                               _%probe89248%_
                               _%key89224%_)
                              (vector-set!
                               _%table89229%_
                               (##fx+ _%probe89248%_ '1)
                               (_%symbolic-table-update!89225%_
                                (vector-ref
                                 _%table89229%_
                                 (##fx+ _%probe89248%_ '1)))))
                            (let ()
                              (_%loop89245%_
                               (let ((_%next-probe89270%_
                                      (fx+ _%start89241%_
                                           _%i89250%_
                                           (fx* _%i89250%_ _%i89250%_))))
                                 (##fxmodulo
                                  _%next-probe89270%_
                                  _%size89235%_))
                               (##fx+ _%i89250%_ '1)
                               _%deleted89252%_)))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89178%_ _%key89180%_)
        (let ((_%table89183%_ (&raw-table-table _%tab89178%_))
              (_%seed89185%_ (&raw-table-seed _%tab89178%_)))
          (let* ((_%h89188%_
                  (fxxor (symbolic-hash _%key89180%_) _%seed89185%_))
                 (_%size89191%_ (vector-length _%table89183%_))
                 (_%entries89194%_ (##fxquotient _%size89191%_ '2))
                 (_%start89197%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89188%_ _%entries89194%_)
                   '1)))
            (let _%loop89201%_ ((_%probe89204%_ _%start89197%_)
                                (_%i89206%_ '1))
              (let ((_%k89209%_ (vector-ref _%table89183%_ _%probe89204%_)))
                (if (eq? _%k89209%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89209%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89201%_
                           (let ((_%next-probe89214%_
                                  (fx+ _%start89197%_
                                       _%i89206%_
                                       (fx* _%i89206%_ _%i89206%_))))
                             (##fxmodulo _%next-probe89214%_ _%size89191%_))
                           (##fx+ _%i89206%_ '1)))
                        (if (eq? _%key89180%_ _%k89209%_)
                            (let ()
                              (vector-set!
                               _%table89183%_
                               _%probe89204%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89183%_
                               (##fx+ _%probe89204%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89178%_
                                  (##fx- (&raw-table-count _%tab89178%_)
                                         '1)))))
                            (let ()
                              (_%loop89201%_
                               (let ((_%next-probe89220%_
                                      (fx+ _%start89197%_
                                           _%i89206%_
                                           (fx* _%i89206%_ _%i89206%_))))
                                 (##fxmodulo
                                  _%next-probe89220%_
                                  _%size89191%_))
                               (##fx+ _%i89206%_ '1))))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89159%_ _%seed89161%_)
        (make-raw-table__%
         _%size-hint89159%_
         string-hash
         ##string=?
         _%seed89161%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89167%_ '#f) (_%seed89169%_ '0))
          (make-string-table__% _%size-hint89167%_ _%seed89169%_))))
    (define make-string-table__1
      (lambda (_%size-hint89171%_)
        (let ((_%seed89173%_ '0))
          (make-string-table__% _%size-hint89171%_ _%seed89173%_))))
    (define make-string-table
      (lambda _g90178_
        (let ((_g90177_ (##length _g90178_)))
          (cond ((##fx= _g90177_ 0)
                 (apply (lambda () (make-string-table__0)) _g90178_))
                ((##fx= _g90177_ 1)
                 (apply (lambda (_%size-hint89171%_)
                          (make-string-table__1 _%size-hint89171%_))
                        _g90178_))
                ((##fx= _g90177_ 2)
                 (apply (lambda (_%size-hint89175%_ _%seed89176%_)
                          (make-string-table__%
                           _%size-hint89175%_
                           _%seed89176%_))
                        _g90178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90178_))))))
    (define string-table-ref
      (lambda (_%tab89112%_ _%key89113%_ _%default89114%_)
        (let ((_%table89116%_ (&raw-table-table _%tab89112%_))
              (_%seed89117%_ (&raw-table-seed _%tab89112%_)))
          (let* ((_%h89119%_
                  (fxxor (##string=?-hash _%key89113%_) _%seed89117%_))
                 (_%size89122%_ (vector-length _%table89116%_))
                 (_%entries89125%_ (##fxquotient _%size89122%_ '2))
                 (_%start89128%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89119%_ _%entries89125%_)
                   '1)))
            (let _%loop89132%_ ((_%probe89135%_ _%start89128%_)
                                (_%i89137%_ '1)
                                (_%deleted89139%_ '#f))
              (let ((_%k89142%_ (vector-ref _%table89116%_ _%probe89135%_)))
                (if (eq? _%k89142%_ (macro-unused-obj))
                    (let () _%default89114%_)
                    (if (eq? _%k89142%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89132%_
                           (let ((_%next-probe89147%_
                                  (fx+ _%start89128%_
                                       _%i89137%_
                                       (fx* _%i89137%_ _%i89137%_))))
                             (##fxmodulo _%next-probe89147%_ _%size89122%_))
                           (##fx+ _%i89137%_ '1)
                           (let ((_%$e89150%_ _%deleted89139%_))
                             (if _%$e89150%_ _%$e89150%_ _%probe89135%_))))
                        (if (##string=? _%key89113%_ _%k89142%_)
                            (let ()
                              (vector-ref
                               _%table89116%_
                               (##fx+ _%probe89135%_ '1)))
                            (let ()
                              (_%loop89132%_
                               (let ((_%next-probe89155%_
                                      (fx+ _%start89128%_
                                           _%i89137%_
                                           (fx* _%i89137%_ _%i89137%_))))
                                 (##fxmodulo
                                  _%next-probe89155%_
                                  _%size89122%_))
                               (##fx+ _%i89137%_ '1)
                               _%deleted89139%_)))))))))))
    (define string-table-set!
      (lambda (_%tab89108%_ _%key89109%_ _%value89110%_)
        (if (##fx< (&raw-table-free _%tab89108%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89108%_))
                    '4))
            (__raw-table-rehash! _%tab89108%_)
            '#!void)
        (__string-table-set! _%tab89108%_ _%key89109%_ _%value89110%_)))
    (define __string-table-set!
      (lambda (_%tab89059%_ _%key89060%_ _%value89061%_)
        (let ((_%table89064%_ (&raw-table-table _%tab89059%_))
              (_%seed89065%_ (&raw-table-seed _%tab89059%_)))
          (let* ((_%h89067%_
                  (fxxor (##string=?-hash _%key89060%_) _%seed89065%_))
                 (_%size89070%_ (vector-length _%table89064%_))
                 (_%entries89073%_ (##fxquotient _%size89070%_ '2))
                 (_%start89076%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89067%_ _%entries89073%_)
                   '1)))
            (let _%loop89080%_ ((_%probe89083%_ _%start89076%_)
                                (_%i89085%_ '1)
                                (_%deleted89087%_ '#f))
              (let ((_%k89090%_ (vector-ref _%table89064%_ _%probe89083%_)))
                (if (eq? _%k89090%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89087%_
                          (begin
                            (vector-set!
                             _%table89064%_
                             _%deleted89087%_
                             _%key89060%_)
                            (vector-set!
                             _%table89064%_
                             (##fx+ _%deleted89087%_ '1)
                             _%value89061%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89059%_
                                (##fx+ (&raw-table-count _%tab89059%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89064%_
                             _%probe89083%_
                             _%key89060%_)
                            (vector-set!
                             _%table89064%_
                             (##fx+ _%probe89083%_ '1)
                             _%value89061%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89059%_
                                (##fx- (&raw-table-free _%tab89059%_) '1))
                               (&raw-table-count-set!
                                _%tab89059%_
                                (##fx+ (&raw-table-count _%tab89059%_)
                                       '1)))))))
                    (if (eq? _%k89090%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89080%_
                           (let ((_%next-probe89097%_
                                  (fx+ _%start89076%_
                                       _%i89085%_
                                       (fx* _%i89085%_ _%i89085%_))))
                             (##fxmodulo _%next-probe89097%_ _%size89070%_))
                           (##fx+ _%i89085%_ '1)
                           (let ((_%$e89100%_ _%deleted89087%_))
                             (if _%$e89100%_ _%$e89100%_ _%probe89083%_))))
                        (if (##string=? _%key89060%_ _%k89090%_)
                            (let ()
                              (vector-set!
                               _%table89064%_
                               _%probe89083%_
                               _%key89060%_)
                              (vector-set!
                               _%table89064%_
                               (##fx+ _%probe89083%_ '1)
                               _%value89061%_))
                            (let ()
                              (_%loop89080%_
                               (let ((_%next-probe89105%_
                                      (fx+ _%start89076%_
                                           _%i89085%_
                                           (fx* _%i89085%_ _%i89085%_))))
                                 (##fxmodulo
                                  _%next-probe89105%_
                                  _%size89070%_))
                               (##fx+ _%i89085%_ '1)
                               _%deleted89087%_)))))))))))
    (define string-table-update!
      (lambda (_%tab89054%_
               _%key89055%_
               _%string-table-update!89056%_
               _%default89057%_)
        (if (##fx< (&raw-table-free _%tab89054%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89054%_))
                    '4))
            (__raw-table-rehash! _%tab89054%_)
            '#!void)
        (__string-table-update!
         _%tab89054%_
         _%key89055%_
         _%string-table-update!89056%_
         _%default89057%_)))
    (define __string-table-update!
      (lambda (_%tab89004%_
               _%key89005%_
               _%string-table-update!89006%_
               _%default89007%_)
        (let ((_%table89010%_ (&raw-table-table _%tab89004%_))
              (_%seed89011%_ (&raw-table-seed _%tab89004%_)))
          (let* ((_%h89013%_
                  (fxxor (##string=?-hash _%key89005%_) _%seed89011%_))
                 (_%size89016%_ (vector-length _%table89010%_))
                 (_%entries89019%_ (##fxquotient _%size89016%_ '2))
                 (_%start89022%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89013%_ _%entries89019%_)
                   '1)))
            (let _%loop89026%_ ((_%probe89029%_ _%start89022%_)
                                (_%i89031%_ '1)
                                (_%deleted89033%_ '#f))
              (let ((_%k89036%_ (vector-ref _%table89010%_ _%probe89029%_)))
                (if (eq? _%k89036%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89033%_
                          (begin
                            (vector-set!
                             _%table89010%_
                             _%deleted89033%_
                             _%key89005%_)
                            (vector-set!
                             _%table89010%_
                             (##fx+ _%deleted89033%_ '1)
                             (_%string-table-update!89006%_ _%default89007%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89004%_
                                (##fx+ (&raw-table-count _%tab89004%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89010%_
                             _%probe89029%_
                             _%key89005%_)
                            (vector-set!
                             _%table89010%_
                             (##fx+ _%probe89029%_ '1)
                             (_%string-table-update!89006%_ _%default89007%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89004%_
                                (##fx- (&raw-table-free _%tab89004%_) '1))
                               (&raw-table-count-set!
                                _%tab89004%_
                                (##fx+ (&raw-table-count _%tab89004%_)
                                       '1)))))))
                    (if (eq? _%k89036%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89026%_
                           (let ((_%next-probe89043%_
                                  (fx+ _%start89022%_
                                       _%i89031%_
                                       (fx* _%i89031%_ _%i89031%_))))
                             (##fxmodulo _%next-probe89043%_ _%size89016%_))
                           (##fx+ _%i89031%_ '1)
                           (let ((_%$e89046%_ _%deleted89033%_))
                             (if _%$e89046%_ _%$e89046%_ _%probe89029%_))))
                        (if (##string=? _%key89005%_ _%k89036%_)
                            (let ()
                              (vector-set!
                               _%table89010%_
                               _%probe89029%_
                               _%key89005%_)
                              (vector-set!
                               _%table89010%_
                               (##fx+ _%probe89029%_ '1)
                               (_%string-table-update!89006%_
                                (vector-ref
                                 _%table89010%_
                                 (##fx+ _%probe89029%_ '1)))))
                            (let ()
                              (_%loop89026%_
                               (let ((_%next-probe89051%_
                                      (fx+ _%start89022%_
                                           _%i89031%_
                                           (fx* _%i89031%_ _%i89031%_))))
                                 (##fxmodulo
                                  _%next-probe89051%_
                                  _%size89016%_))
                               (##fx+ _%i89031%_ '1)
                               _%deleted89033%_)))))))))))
    (define string-table-delete!
      (lambda (_%tab88959%_ _%key88961%_)
        (let ((_%table88964%_ (&raw-table-table _%tab88959%_))
              (_%seed88966%_ (&raw-table-seed _%tab88959%_)))
          (let* ((_%h88969%_
                  (fxxor (##string=?-hash _%key88961%_) _%seed88966%_))
                 (_%size88972%_ (vector-length _%table88964%_))
                 (_%entries88975%_ (##fxquotient _%size88972%_ '2))
                 (_%start88978%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88969%_ _%entries88975%_)
                   '1)))
            (let _%loop88982%_ ((_%probe88985%_ _%start88978%_)
                                (_%i88987%_ '1))
              (let ((_%k88990%_ (vector-ref _%table88964%_ _%probe88985%_)))
                (if (eq? _%k88990%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k88990%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88982%_
                           (let ((_%next-probe88995%_
                                  (fx+ _%start88978%_
                                       _%i88987%_
                                       (fx* _%i88987%_ _%i88987%_))))
                             (##fxmodulo _%next-probe88995%_ _%size88972%_))
                           (##fx+ _%i88987%_ '1)))
                        (if (##string=? _%key88961%_ _%k88990%_)
                            (let ()
                              (vector-set!
                               _%table88964%_
                               _%probe88985%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88964%_
                               (##fx+ _%probe88985%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88959%_
                                  (##fx- (&raw-table-count _%tab88959%_)
                                         '1)))))
                            (let ()
                              (_%loop88982%_
                               (let ((_%next-probe89001%_
                                      (fx+ _%start88978%_
                                           _%i88987%_
                                           (fx* _%i88987%_ _%i88987%_))))
                                 (##fxmodulo
                                  _%next-probe89001%_
                                  _%size88972%_))
                               (##fx+ _%i88987%_ '1))))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint88940%_ _%seed88942%_)
        (make-raw-table__%
         _%size-hint88940%_
         immediate-hash
         eq?
         _%seed88942%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint88948%_ '#f) (_%seed88950%_ '0))
          (make-immediate-table__% _%size-hint88948%_ _%seed88950%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint88952%_)
        (let ((_%seed88954%_ '0))
          (make-immediate-table__% _%size-hint88952%_ _%seed88954%_))))
    (define make-immediate-table
      (lambda _g90180_
        (let ((_g90179_ (##length _g90180_)))
          (cond ((##fx= _g90179_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g90180_))
                ((##fx= _g90179_ 1)
                 (apply (lambda (_%size-hint88952%_)
                          (make-immediate-table__1 _%size-hint88952%_))
                        _g90180_))
                ((##fx= _g90179_ 2)
                 (apply (lambda (_%size-hint88956%_ _%seed88957%_)
                          (make-immediate-table__%
                           _%size-hint88956%_
                           _%seed88957%_))
                        _g90180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90180_))))))
    (define immediate-table-ref
      (lambda (_%tab88893%_ _%key88894%_ _%default88895%_)
        (let ((_%table88897%_ (&raw-table-table _%tab88893%_))
              (_%seed88898%_ (&raw-table-seed _%tab88893%_)))
          (let* ((_%h88900%_
                  (fxxor (immediate-hash _%key88894%_) _%seed88898%_))
                 (_%size88903%_ (vector-length _%table88897%_))
                 (_%entries88906%_ (##fxquotient _%size88903%_ '2))
                 (_%start88909%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88900%_ _%entries88906%_)
                   '1)))
            (let _%loop88913%_ ((_%probe88916%_ _%start88909%_)
                                (_%i88918%_ '1)
                                (_%deleted88920%_ '#f))
              (let ((_%k88923%_ (vector-ref _%table88897%_ _%probe88916%_)))
                (if (eq? _%k88923%_ (macro-unused-obj))
                    (let () _%default88895%_)
                    (if (eq? _%k88923%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88913%_
                           (let ((_%next-probe88928%_
                                  (fx+ _%start88909%_
                                       _%i88918%_
                                       (fx* _%i88918%_ _%i88918%_))))
                             (##fxmodulo _%next-probe88928%_ _%size88903%_))
                           (##fx+ _%i88918%_ '1)
                           (let ((_%$e88931%_ _%deleted88920%_))
                             (if _%$e88931%_ _%$e88931%_ _%probe88916%_))))
                        (if (eq? _%key88894%_ _%k88923%_)
                            (let ()
                              (vector-ref
                               _%table88897%_
                               (##fx+ _%probe88916%_ '1)))
                            (let ()
                              (_%loop88913%_
                               (let ((_%next-probe88936%_
                                      (fx+ _%start88909%_
                                           _%i88918%_
                                           (fx* _%i88918%_ _%i88918%_))))
                                 (##fxmodulo
                                  _%next-probe88936%_
                                  _%size88903%_))
                               (##fx+ _%i88918%_ '1)
                               _%deleted88920%_)))))))))))
    (define immediate-table-set!
      (lambda (_%tab88889%_ _%key88890%_ _%value88891%_)
        (if (##fx< (&raw-table-free _%tab88889%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88889%_))
                    '4))
            (__raw-table-rehash! _%tab88889%_)
            '#!void)
        (__immediate-table-set! _%tab88889%_ _%key88890%_ _%value88891%_)))
    (define __immediate-table-set!
      (lambda (_%tab88840%_ _%key88841%_ _%value88842%_)
        (let ((_%table88845%_ (&raw-table-table _%tab88840%_))
              (_%seed88846%_ (&raw-table-seed _%tab88840%_)))
          (let* ((_%h88848%_
                  (fxxor (immediate-hash _%key88841%_) _%seed88846%_))
                 (_%size88851%_ (vector-length _%table88845%_))
                 (_%entries88854%_ (##fxquotient _%size88851%_ '2))
                 (_%start88857%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88848%_ _%entries88854%_)
                   '1)))
            (let _%loop88861%_ ((_%probe88864%_ _%start88857%_)
                                (_%i88866%_ '1)
                                (_%deleted88868%_ '#f))
              (let ((_%k88871%_ (vector-ref _%table88845%_ _%probe88864%_)))
                (if (eq? _%k88871%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88868%_
                          (begin
                            (vector-set!
                             _%table88845%_
                             _%deleted88868%_
                             _%key88841%_)
                            (vector-set!
                             _%table88845%_
                             (##fx+ _%deleted88868%_ '1)
                             _%value88842%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88840%_
                                (##fx+ (&raw-table-count _%tab88840%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88845%_
                             _%probe88864%_
                             _%key88841%_)
                            (vector-set!
                             _%table88845%_
                             (##fx+ _%probe88864%_ '1)
                             _%value88842%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88840%_
                                (##fx- (&raw-table-free _%tab88840%_) '1))
                               (&raw-table-count-set!
                                _%tab88840%_
                                (##fx+ (&raw-table-count _%tab88840%_)
                                       '1)))))))
                    (if (eq? _%k88871%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88861%_
                           (let ((_%next-probe88878%_
                                  (fx+ _%start88857%_
                                       _%i88866%_
                                       (fx* _%i88866%_ _%i88866%_))))
                             (##fxmodulo _%next-probe88878%_ _%size88851%_))
                           (##fx+ _%i88866%_ '1)
                           (let ((_%$e88881%_ _%deleted88868%_))
                             (if _%$e88881%_ _%$e88881%_ _%probe88864%_))))
                        (if (eq? _%key88841%_ _%k88871%_)
                            (let ()
                              (vector-set!
                               _%table88845%_
                               _%probe88864%_
                               _%key88841%_)
                              (vector-set!
                               _%table88845%_
                               (##fx+ _%probe88864%_ '1)
                               _%value88842%_))
                            (let ()
                              (_%loop88861%_
                               (let ((_%next-probe88886%_
                                      (fx+ _%start88857%_
                                           _%i88866%_
                                           (fx* _%i88866%_ _%i88866%_))))
                                 (##fxmodulo
                                  _%next-probe88886%_
                                  _%size88851%_))
                               (##fx+ _%i88866%_ '1)
                               _%deleted88868%_)))))))))))
    (define immediate-table-update!
      (lambda (_%tab88835%_
               _%key88836%_
               _%immediate-table-update!88837%_
               _%default88838%_)
        (if (##fx< (&raw-table-free _%tab88835%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88835%_))
                    '4))
            (__raw-table-rehash! _%tab88835%_)
            '#!void)
        (__immediate-table-update!
         _%tab88835%_
         _%key88836%_
         _%immediate-table-update!88837%_
         _%default88838%_)))
    (define __immediate-table-update!
      (lambda (_%tab88785%_
               _%key88786%_
               _%immediate-table-update!88787%_
               _%default88788%_)
        (let ((_%table88791%_ (&raw-table-table _%tab88785%_))
              (_%seed88792%_ (&raw-table-seed _%tab88785%_)))
          (let* ((_%h88794%_
                  (fxxor (immediate-hash _%key88786%_) _%seed88792%_))
                 (_%size88797%_ (vector-length _%table88791%_))
                 (_%entries88800%_ (##fxquotient _%size88797%_ '2))
                 (_%start88803%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88794%_ _%entries88800%_)
                   '1)))
            (let _%loop88807%_ ((_%probe88810%_ _%start88803%_)
                                (_%i88812%_ '1)
                                (_%deleted88814%_ '#f))
              (let ((_%k88817%_ (vector-ref _%table88791%_ _%probe88810%_)))
                (if (eq? _%k88817%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88814%_
                          (begin
                            (vector-set!
                             _%table88791%_
                             _%deleted88814%_
                             _%key88786%_)
                            (vector-set!
                             _%table88791%_
                             (##fx+ _%deleted88814%_ '1)
                             (_%immediate-table-update!88787%_
                              _%default88788%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88785%_
                                (##fx+ (&raw-table-count _%tab88785%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88791%_
                             _%probe88810%_
                             _%key88786%_)
                            (vector-set!
                             _%table88791%_
                             (##fx+ _%probe88810%_ '1)
                             (_%immediate-table-update!88787%_
                              _%default88788%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88785%_
                                (##fx- (&raw-table-free _%tab88785%_) '1))
                               (&raw-table-count-set!
                                _%tab88785%_
                                (##fx+ (&raw-table-count _%tab88785%_)
                                       '1)))))))
                    (if (eq? _%k88817%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88807%_
                           (let ((_%next-probe88824%_
                                  (fx+ _%start88803%_
                                       _%i88812%_
                                       (fx* _%i88812%_ _%i88812%_))))
                             (##fxmodulo _%next-probe88824%_ _%size88797%_))
                           (##fx+ _%i88812%_ '1)
                           (let ((_%$e88827%_ _%deleted88814%_))
                             (if _%$e88827%_ _%$e88827%_ _%probe88810%_))))
                        (if (eq? _%key88786%_ _%k88817%_)
                            (let ()
                              (vector-set!
                               _%table88791%_
                               _%probe88810%_
                               _%key88786%_)
                              (vector-set!
                               _%table88791%_
                               (##fx+ _%probe88810%_ '1)
                               (_%immediate-table-update!88787%_
                                (vector-ref
                                 _%table88791%_
                                 (##fx+ _%probe88810%_ '1)))))
                            (let ()
                              (_%loop88807%_
                               (let ((_%next-probe88832%_
                                      (fx+ _%start88803%_
                                           _%i88812%_
                                           (fx* _%i88812%_ _%i88812%_))))
                                 (##fxmodulo
                                  _%next-probe88832%_
                                  _%size88797%_))
                               (##fx+ _%i88812%_ '1)
                               _%deleted88814%_)))))))))))
    (define immediate-table-delete!
      (lambda (_%tab88740%_ _%key88742%_)
        (let ((_%table88745%_ (&raw-table-table _%tab88740%_))
              (_%seed88747%_ (&raw-table-seed _%tab88740%_)))
          (let* ((_%h88750%_
                  (fxxor (immediate-hash _%key88742%_) _%seed88747%_))
                 (_%size88753%_ (vector-length _%table88745%_))
                 (_%entries88756%_ (##fxquotient _%size88753%_ '2))
                 (_%start88759%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88750%_ _%entries88756%_)
                   '1)))
            (let _%loop88763%_ ((_%probe88766%_ _%start88759%_)
                                (_%i88768%_ '1))
              (let ((_%k88771%_ (vector-ref _%table88745%_ _%probe88766%_)))
                (if (eq? _%k88771%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k88771%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88763%_
                           (let ((_%next-probe88776%_
                                  (fx+ _%start88759%_
                                       _%i88768%_
                                       (fx* _%i88768%_ _%i88768%_))))
                             (##fxmodulo _%next-probe88776%_ _%size88753%_))
                           (##fx+ _%i88768%_ '1)))
                        (if (eq? _%key88742%_ _%k88771%_)
                            (let ()
                              (vector-set!
                               _%table88745%_
                               _%probe88766%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88745%_
                               (##fx+ _%probe88766%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88740%_
                                  (##fx- (&raw-table-count _%tab88740%_)
                                         '1)))))
                            (let ()
                              (_%loop88763%_
                               (let ((_%next-probe88782%_
                                      (fx+ _%start88759%_
                                           _%i88768%_
                                           (fx* _%i88768%_ _%i88768%_))))
                                 (##fxmodulo
                                  _%next-probe88782%_
                                  _%size88753%_))
                               (##fx+ _%i88768%_ '1))))))))))))
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
      (lambda (_%tab88738%_)
        (##unchecked-structure-ref
         _%tab88738%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab88736%_)
        (##unchecked-structure-ref
         _%tab88736%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab88733%_ _%val88734%_)
        (##unchecked-structure-set!
         _%tab88733%_
         _%val88734%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab88730%_ _%val88731%_)
        (##unchecked-structure-set!
         _%tab88730%_
         _%val88731%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint88706%_ _%klass88707%_ _%flags88708%_)
        (let ((_%gcht88710%_
               (__gc-table-new
                (if (fixnum? _%size-hint88706%_) _%size-hint88706%_ '16)
                _%flags88708%_)))
          (##structure _%klass88707%_ _%gcht88710%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint88715%_)
        (let* ((_%klass88717%_ __gc-table::t) (_%flags88719%_ '0))
          (make-gc-table__%
           _%size-hint88715%_
           _%klass88717%_
           _%flags88719%_))))
    (define make-gc-table__1
      (lambda (_%size-hint88721%_ _%klass88722%_)
        (let ((_%flags88724%_ '0))
          (make-gc-table__%
           _%size-hint88721%_
           _%klass88722%_
           _%flags88724%_))))
    (define make-gc-table
      (lambda _g90182_
        (let ((_g90181_ (##length _g90182_)))
          (cond ((##fx= _g90181_ 1)
                 (apply (lambda (_%size-hint88715%_)
                          (make-gc-table__0 _%size-hint88715%_))
                        _g90182_))
                ((##fx= _g90181_ 2)
                 (apply (lambda (_%size-hint88721%_ _%klass88722%_)
                          (make-gc-table__1 _%size-hint88721%_ _%klass88722%_))
                        _g90182_))
                ((##fx= _g90181_ 3)
                 (apply (lambda (_%size-hint88726%_
                                 _%klass88727%_
                                 _%flags88728%_)
                          (make-gc-table__%
                           _%size-hint88726%_
                           _%klass88727%_
                           _%flags88728%_))
                        _g90182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90182_))))))
    (define __gc-table-immediate
      (lambda (_%tab88697%_)
        (let ((_%$e88699%_ (&gc-table-immediate _%tab88697%_)))
          (if _%$e88699%_
              _%$e88699%_
              (let ((_%immediate88703%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab88697%_ _%immediate88703%_)
                _%immediate88703%_)))))
    (define __gc-table-new
      (lambda (_%size88687%_ _%flags88688%_)
        (let* ((_%flags88690%_
                (##fxand _%flags88688%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags88692%_
                (fxior _%flags88690%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht88694%_
                (##gc-hash-table-allocate
                 _%size88687%_
                 _%flags88692%_
                 __gc-table-loads)))
          _%gcht88694%_)))
    (define __gc-table-e
      (lambda (_%tab88682%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht88685%_ (&gc-table-gcht _%tab88682%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht88685%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht88685%_
              (begin
                (__gc-table-rehash! _%tab88682%_)
                (&gc-table-gcht _%tab88682%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab88673%_)
        (let* ((_%old-table88675%_ (&gc-table-gcht _%tab88673%_))
               (_%new-table88677%_
                (##gc-hash-table-resize! _%old-table88675%_ __gc-table-loads))
               (_%gcht88679%_
                (##gc-hash-table-rehash!
                 _%old-table88675%_
                 _%new-table88677%_)))
          (&gc-table-gcht-set! _%tab88673%_ _%gcht88679%_))))
    (define gc-table-ref
      (lambda (_%tab88657%_ _%key88658%_ _%default88659%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88658%_)
            (let ()
              (let* ((_%gcht88663%_ (__gc-table-e _%tab88657%_))
                     (_%value88665%_
                      (##gc-hash-table-ref _%gcht88663%_ _%key88658%_)))
                (if (eq? _%value88665%_ (macro-unused-obj))
                    _%default88659%_
                    _%value88665%_)))
            (let ((_%$e88667%_ (&gc-table-immediate _%tab88657%_)))
              (if _%$e88667%_
                  ((lambda (_%immediate88670%_)
                     (immediate-table-ref
                      _%immediate88670%_
                      _%key88658%_
                      _%default88659%_))
                   _%$e88667%_)
                  (let () _%default88659%_))))))
    (define gc-table-set!
      (lambda (_%tab88650%_ _%key88651%_ _%value88652%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88651%_)
            (let ((_%gcht88655%_ (__gc-table-e _%tab88650%_)))
              (if (##gc-hash-table-set!
                   _%gcht88655%_
                   _%key88651%_
                   _%value88652%_)
                  (begin
                    (__gc-table-rehash! _%tab88650%_)
                    (gc-table-set! _%tab88650%_ _%key88651%_ _%value88652%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab88650%_)
             _%key88651%_
             _%value88652%_))))
    (define gc-table-update!
      (lambda (_%tab88643%_ _%key88644%_ _%update88645%_ _%default88646%_)
        (if (##mem-allocated? _%key88644%_)
            (let ((_%value88648%_
                   (gc-table-ref _%tab88643%_ _%key88644%_ _%default88646%_)))
              (gc-table-set!
               _%tab88643%_
               _%key88644%_
               (_%update88645%_ _%value88648%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab88643%_)
             _%key88644%_
             _%update88645%_
             _%default88646%_))))
    (define gc-table-delete!
      (lambda (_%tab88631%_ _%key88632%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88632%_)
            (let ((_%gcht88636%_ (__gc-table-e _%tab88631%_)))
              (if (##gc-hash-table-set!
                   _%gcht88636%_
                   _%key88632%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab88631%_)
                    (gc-table-delete! _%tab88631%_ _%key88632%_))
                  '#!void))
            (let ((_%$e88638%_ (&gc-table-immediate _%tab88631%_)))
              (if _%$e88638%_
                  ((lambda (_%immediate88641%_)
                     (immediate-table-delete! _%immediate88641%_ _%key88632%_))
                   _%$e88638%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab88612%_ _%proc88613%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht88616%_ (__gc-table-e _%tab88612%_)))
            (let _%loop88618%_ ((_%i88620%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i88620%_ (##vector-length _%gcht88616%_))
                  (let ((_%key88622%_ (##vector-ref _%gcht88616%_ _%i88620%_)))
                    (if (and (not (eq? _%key88622%_ (macro-unused-obj)))
                             (not (eq? _%key88622%_ (macro-deleted-obj))))
                        (_%proc88613%_
                         _%key88622%_
                         (##vector-ref _%gcht88616%_ (##fx+ _%i88620%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop88618%_ (##fx+ _%i88620%_ '2))))
                  '#!void)))
          (let ((_%$e88626%_ (&gc-table-immediate _%tab88612%_)))
            (if _%$e88626%_
                ((lambda (_%immediate88629%_)
                   (raw-table-for-each _%immediate88629%_ _%proc88613%_))
                 _%$e88626%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab88600%_)
        (let* ((_%gcht88602%_ (__gc-table-e _%tab88600%_))
               (_%new-table88604%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht88602%_)
                 (macro-gc-hash-table-flags _%gcht88602%_)))
               (_%result88606%_
                (##structure
                 (##structure-type _%tab88600%_)
                 _%new-table88604%_
                 '#f)))
          (gc-table-for-each
           _%tab88600%_
           (lambda (_%k88609%_ _%v88610%_)
             (gc-table-set! _%result88606%_ _%k88609%_ _%v88610%_)))
          _%result88606%_)))
    (define gc-table-clear!
      (lambda (_%tab88593%_)
        (let* ((_%gcht88595%_ (__gc-table-e _%tab88593%_))
               (_%new-table88597%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht88595%_))))
          (&gc-table-gcht-set! _%tab88593%_ _%new-table88597%_)
          (&gc-table-immediate-set! _%tab88593%_ '#f))))
    (define gc-table-length
      (lambda (_%tab88585%_)
        (let ((_%gcht88587%_ (__gc-table-e _%tab88585%_)))
          (fx+ (macro-gc-hash-table-count _%gcht88587%_)
               (let ((_%$e88589%_ (&gc-table-immediate _%tab88585%_)))
                 (if _%$e88589%_
                     (&raw-table-count _%$e88589%_)
                     (let () '0)))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj88570%_)
        (declare (not interrupts-enabled))
        (let ((_%val88573%_ (gc-table-ref __object-eq-hash _%obj88570%_ '#f)))
          (if _%val88573%_
              _%val88573%_
              (let* ((_%mix88575%_ __object-eq-hash-next)
                     (_%ptr88577%_ (##type-cast _%obj88570%_ '0))
                     (_%h88579%_
                      (fxand (fxxor _%mix88575%_ _%ptr88577%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e88582%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e88582%_ _%$e88582%_ '0)))
                (gc-table-set! __object-eq-hash _%obj88570%_ _%h88579%_)
                _%h88579%_)))))))
