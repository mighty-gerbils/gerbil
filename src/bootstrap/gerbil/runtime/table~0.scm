(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712124233)
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
      (lambda (_%tab90186%_)
        (##unchecked-structure-ref
         _%tab90186%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90184%_)
        (##unchecked-structure-ref
         _%tab90184%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90182%_)
        (##unchecked-structure-ref
         _%tab90182%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90180%_)
        (##unchecked-structure-ref
         _%tab90180%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90178%_)
        (##unchecked-structure-ref
         _%tab90178%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90176%_)
        (##unchecked-structure-ref
         _%tab90176%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90173%_ _%val90174%_)
        (##unchecked-structure-set!
         _%tab90173%_
         _%val90174%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90170%_ _%val90171%_)
        (##unchecked-structure-set!
         _%tab90170%_
         _%val90171%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90167%_ _%val90168%_)
        (##unchecked-structure-set!
         _%tab90167%_
         _%val90168%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90164%_ _%val90165%_)
        (##unchecked-structure-set!
         _%tab90164%_
         _%val90165%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90161%_ _%val90162%_)
        (##unchecked-structure-set!
         _%tab90161%_
         _%val90162%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90158%_ _%val90159%_)
        (##unchecked-structure-set!
         _%tab90158%_
         _%val90159%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90156%_)
        (if (and (fixnum? _%size-hint90156%_) (##fx> _%size-hint90156%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90156%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint90132%_ _%hash90133%_ _%test90134%_ _%seed90135%_)
        (let* ((_%size90137%_ (raw-table-size-hint->size _%size-hint90132%_))
               (_%table90139%_
                (##make-vector _%size90137%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table90139%_
           '0
           (##fxquotient _%size90137%_ '2)
           _%hash90133%_
           _%test90134%_
           _%seed90135%_))))
    (define make-raw-table__0
      (lambda (_%size-hint90145%_ _%hash90146%_ _%test90147%_)
        (let ((_%seed90149%_ '0))
          (make-raw-table__%
           _%size-hint90145%_
           _%hash90146%_
           _%test90147%_
           _%seed90149%_))))
    (define make-raw-table
      (lambda _g90188_
        (let ((_g90187_ (##length _g90188_)))
          (cond ((##fx= _g90187_ 3)
                 (apply (lambda (_%size-hint90145%_
                                 _%hash90146%_
                                 _%test90147%_)
                          (make-raw-table__0
                           _%size-hint90145%_
                           _%hash90146%_
                           _%test90147%_))
                        _g90188_))
                ((##fx= _g90187_ 4)
                 (apply (lambda (_%size-hint90151%_
                                 _%hash90152%_
                                 _%test90153%_
                                 _%seed90154%_)
                          (make-raw-table__%
                           _%size-hint90151%_
                           _%hash90152%_
                           _%test90153%_
                           _%seed90154%_))
                        _g90188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90188_))))))
    (define raw-table-ref
      (lambda (_%tab90083%_ _%key90084%_ _%default90085%_)
        (let ((_%table90087%_ (&raw-table-table _%tab90083%_))
              (_%seed90088%_ (&raw-table-seed _%tab90083%_))
              (_%hash90089%_ (&raw-table-hash _%tab90083%_))
              (_%test90090%_ (&raw-table-test _%tab90083%_)))
          (let* ((_%h90092%_
                  (fxxor (_%hash90089%_ _%key90084%_) _%seed90088%_))
                 (_%size90095%_ (vector-length _%table90087%_))
                 (_%entries90098%_ (##fxquotient _%size90095%_ '2))
                 (_%start90101%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90092%_ _%entries90098%_)
                   '1)))
            (let _%loop90105%_ ((_%probe90108%_ _%start90101%_)
                                (_%i90110%_ '1)
                                (_%deleted90112%_ '#f))
              (let ((_%k90115%_ (vector-ref _%table90087%_ _%probe90108%_)))
                (if (eq? _%k90115%_ (macro-unused-obj))
                    (let () _%default90085%_)
                    (if (eq? _%k90115%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90105%_
                           (let ((_%next-probe90120%_
                                  (fx+ _%start90101%_
                                       _%i90110%_
                                       (fx* _%i90110%_ _%i90110%_))))
                             (##fxmodulo _%next-probe90120%_ _%size90095%_))
                           (##fx+ _%i90110%_ '1)
                           (let ((_%$e90123%_ _%deleted90112%_))
                             (if _%$e90123%_ _%$e90123%_ _%probe90108%_))))
                        (if (_%test90090%_ _%key90084%_ _%k90115%_)
                            (let ()
                              (vector-ref
                               _%table90087%_
                               (##fx+ _%probe90108%_ '1)))
                            (let ()
                              (_%loop90105%_
                               (let ((_%next-probe90128%_
                                      (fx+ _%start90101%_
                                           _%i90110%_
                                           (fx* _%i90110%_ _%i90110%_))))
                                 (##fxmodulo
                                  _%next-probe90128%_
                                  _%size90095%_))
                               (##fx+ _%i90110%_ '1)
                               _%deleted90112%_)))))))))))
    (define raw-table-set!
      (lambda (_%tab90079%_ _%key90080%_ _%value90081%_)
        (if (##fx< (&raw-table-free _%tab90079%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90079%_))
                    '4))
            (__raw-table-rehash! _%tab90079%_)
            '#!void)
        (__raw-table-set! _%tab90079%_ _%key90080%_ _%value90081%_)))
    (define raw-table-update!
      (lambda (_%tab90074%_ _%key90075%_ _%update90076%_ _%default90077%_)
        (if (##fx< (&raw-table-free _%tab90074%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90074%_))
                    '4))
            (__raw-table-rehash! _%tab90074%_)
            '#!void)
        (__raw-table-update!
         _%tab90074%_
         _%key90075%_
         _%update90076%_
         _%default90077%_)))
    (define raw-table-delete!
      (lambda (_%tab90031%_ _%key90032%_)
        (let ((_%table90034%_ (&raw-table-table _%tab90031%_))
              (_%seed90035%_ (&raw-table-seed _%tab90031%_))
              (_%hash90036%_ (&raw-table-hash _%tab90031%_))
              (_%test90037%_ (&raw-table-test _%tab90031%_)))
          (let* ((_%h90039%_
                  (fxxor (_%hash90036%_ _%key90032%_) _%seed90035%_))
                 (_%size90042%_ (vector-length _%table90034%_))
                 (_%entries90045%_ (##fxquotient _%size90042%_ '2))
                 (_%start90048%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90039%_ _%entries90045%_)
                   '1)))
            (let _%loop90052%_ ((_%probe90055%_ _%start90048%_)
                                (_%i90057%_ '1))
              (let ((_%k90060%_ (vector-ref _%table90034%_ _%probe90055%_)))
                (if (eq? _%k90060%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90060%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90052%_
                           (let ((_%next-probe90065%_
                                  (fx+ _%start90048%_
                                       _%i90057%_
                                       (fx* _%i90057%_ _%i90057%_))))
                             (##fxmodulo _%next-probe90065%_ _%size90042%_))
                           (##fx+ _%i90057%_ '1)))
                        (if (_%test90037%_ _%key90032%_ _%k90060%_)
                            (let ()
                              (vector-set!
                               _%table90034%_
                               _%probe90055%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90034%_
                               (##fx+ _%probe90055%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90031%_
                                  (##fx- (&raw-table-count _%tab90031%_)
                                         '1)))))
                            (let ()
                              (_%loop90052%_
                               (let ((_%next-probe90071%_
                                      (fx+ _%start90048%_
                                           _%i90057%_
                                           (fx* _%i90057%_ _%i90057%_))))
                                 (##fxmodulo
                                  _%next-probe90071%_
                                  _%size90042%_))
                               (##fx+ _%i90057%_ '1))))))))))))
    (define raw-table-for-each
      (lambda (_%tab90015%_ _%proc90016%_)
        (let* ((_%table90018%_ (&raw-table-table _%tab90015%_))
               (_%size90020%_ (vector-length _%table90018%_)))
          (let _%loop90023%_ ((_%i90025%_ '0))
            (if (##fx< _%i90025%_ _%size90020%_)
                (begin
                  (let ((_%key90027%_ (vector-ref _%table90018%_ _%i90025%_)))
                    (if (and (not (eq? _%key90027%_ (macro-unused-obj)))
                             (not (eq? _%key90027%_ (macro-deleted-obj))))
                        (let ((_%value90029%_
                               (vector-ref
                                _%table90018%_
                                (##fx+ _%i90025%_ '1))))
                          (_%proc90016%_ _%key90027%_ _%value90029%_))
                        '#!void))
                  (_%loop90023%_ (##fx+ _%i90025%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab90011%_)
        (let ((_%new-tab90013%_ (##structure-copy _%tab90011%_)))
          (&raw-table-table-set!
           _%new-tab90013%_
           (vector-copy (&raw-table-table _%tab90011%_)))
          _%new-tab90013%_)))
    (define raw-table-clear!
      (lambda (_%tab90009%_)
        (vector-fill! (&raw-table-table _%tab90009%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab90009%_ '0)
        (&raw-table-free-set!
         _%tab90009%_
         (##fxquotient (vector-length (&raw-table-table _%tab90009%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab89959%_ _%key89960%_ _%value89961%_)
        (let ((_%table89963%_ (&raw-table-table _%tab89959%_))
              (_%seed89964%_ (&raw-table-seed _%tab89959%_))
              (_%hash89965%_ (&raw-table-hash _%tab89959%_))
              (_%test89966%_ (&raw-table-test _%tab89959%_)))
          (let* ((_%h89968%_
                  (fxxor (_%hash89965%_ _%key89960%_) _%seed89964%_))
                 (_%size89971%_ (vector-length _%table89963%_))
                 (_%entries89974%_ (##fxquotient _%size89971%_ '2))
                 (_%start89977%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89968%_ _%entries89974%_)
                   '1)))
            (let _%loop89981%_ ((_%probe89984%_ _%start89977%_)
                                (_%i89986%_ '1)
                                (_%deleted89988%_ '#f))
              (let ((_%k89991%_ (vector-ref _%table89963%_ _%probe89984%_)))
                (if (eq? _%k89991%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89988%_
                          (begin
                            (vector-set!
                             _%table89963%_
                             _%deleted89988%_
                             _%key89960%_)
                            (vector-set!
                             _%table89963%_
                             (##fx+ _%deleted89988%_ '1)
                             _%value89961%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89959%_
                                (##fx+ (&raw-table-count _%tab89959%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89963%_
                             _%probe89984%_
                             _%key89960%_)
                            (vector-set!
                             _%table89963%_
                             (##fx+ _%probe89984%_ '1)
                             _%value89961%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89959%_
                                (##fx- (&raw-table-free _%tab89959%_) '1))
                               (&raw-table-count-set!
                                _%tab89959%_
                                (##fx+ (&raw-table-count _%tab89959%_)
                                       '1)))))))
                    (if (eq? _%k89991%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89981%_
                           (let ((_%next-probe89998%_
                                  (fx+ _%start89977%_
                                       _%i89986%_
                                       (fx* _%i89986%_ _%i89986%_))))
                             (##fxmodulo _%next-probe89998%_ _%size89971%_))
                           (##fx+ _%i89986%_ '1)
                           (let ((_%$e90001%_ _%deleted89988%_))
                             (if _%$e90001%_ _%$e90001%_ _%probe89984%_))))
                        (if (_%test89966%_ _%key89960%_ _%k89991%_)
                            (let ()
                              (vector-set!
                               _%table89963%_
                               _%probe89984%_
                               _%key89960%_)
                              (vector-set!
                               _%table89963%_
                               (##fx+ _%probe89984%_ '1)
                               _%value89961%_))
                            (let ()
                              (_%loop89981%_
                               (let ((_%next-probe90006%_
                                      (fx+ _%start89977%_
                                           _%i89986%_
                                           (fx* _%i89986%_ _%i89986%_))))
                                 (##fxmodulo
                                  _%next-probe90006%_
                                  _%size89971%_))
                               (##fx+ _%i89986%_ '1)
                               _%deleted89988%_)))))))))))
    (define __raw-table-update!
      (lambda (_%tab89908%_ _%key89909%_ _%update89910%_ _%default89911%_)
        (let ((_%table89913%_ (&raw-table-table _%tab89908%_))
              (_%seed89914%_ (&raw-table-seed _%tab89908%_))
              (_%hash89915%_ (&raw-table-hash _%tab89908%_))
              (_%test89916%_ (&raw-table-test _%tab89908%_)))
          (let* ((_%h89918%_
                  (fxxor (_%hash89915%_ _%key89909%_) _%seed89914%_))
                 (_%size89921%_ (vector-length _%table89913%_))
                 (_%entries89924%_ (##fxquotient _%size89921%_ '2))
                 (_%start89927%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89918%_ _%entries89924%_)
                   '1)))
            (let _%loop89931%_ ((_%probe89934%_ _%start89927%_)
                                (_%i89936%_ '1)
                                (_%deleted89938%_ '#f))
              (let ((_%k89941%_ (vector-ref _%table89913%_ _%probe89934%_)))
                (if (eq? _%k89941%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89938%_
                          (begin
                            (vector-set!
                             _%table89913%_
                             _%deleted89938%_
                             _%key89909%_)
                            (vector-set!
                             _%table89913%_
                             (##fx+ _%deleted89938%_ '1)
                             (_%update89910%_ _%default89911%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89908%_
                                (##fx+ (&raw-table-count _%tab89908%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89913%_
                             _%probe89934%_
                             _%key89909%_)
                            (vector-set!
                             _%table89913%_
                             (##fx+ _%probe89934%_ '1)
                             (_%update89910%_ _%default89911%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89908%_
                                (##fx- (&raw-table-free _%tab89908%_) '1))
                               (&raw-table-count-set!
                                _%tab89908%_
                                (##fx+ (&raw-table-count _%tab89908%_)
                                       '1)))))))
                    (if (eq? _%k89941%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89931%_
                           (let ((_%next-probe89948%_
                                  (fx+ _%start89927%_
                                       _%i89936%_
                                       (fx* _%i89936%_ _%i89936%_))))
                             (##fxmodulo _%next-probe89948%_ _%size89921%_))
                           (##fx+ _%i89936%_ '1)
                           (let ((_%$e89951%_ _%deleted89938%_))
                             (if _%$e89951%_ _%$e89951%_ _%probe89934%_))))
                        (if (_%test89916%_ _%key89909%_ _%k89941%_)
                            (let ()
                              (vector-set!
                               _%table89913%_
                               _%probe89934%_
                               _%key89909%_)
                              (vector-set!
                               _%table89913%_
                               (##fx+ _%probe89934%_ '1)
                               (_%update89910%_
                                (vector-ref
                                 _%table89913%_
                                 (##fx+ _%probe89934%_ '1)))))
                            (let ()
                              (_%loop89931%_
                               (let ((_%next-probe89956%_
                                      (fx+ _%start89927%_
                                           _%i89936%_
                                           (fx* _%i89936%_ _%i89936%_))))
                                 (##fxmodulo
                                  _%next-probe89956%_
                                  _%size89921%_))
                               (##fx+ _%i89936%_ '1)
                               _%deleted89938%_)))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab89889%_)
        (let* ((_%old-table89891%_ (&raw-table-table _%tab89889%_))
               (_%old-size89893%_ (vector-length _%old-table89891%_))
               (_%new-size89895%_
                (if (##fx< (&raw-table-count _%tab89889%_)
                           (##fxquotient _%old-size89893%_ '4))
                    (vector-length _%old-table89891%_)
                    (##fx* '2 (vector-length _%old-table89891%_))))
               (_%new-table89897%_
                (##make-vector _%new-size89895%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab89889%_ _%new-table89897%_)
          (&raw-table-count-set! _%tab89889%_ '0)
          (&raw-table-free-set!
           _%tab89889%_
           (##fxquotient _%new-size89895%_ '2))
          (let _%lp89900%_ ((_%i89902%_ '0))
            (if (##fx< _%i89902%_ _%old-size89893%_)
                (begin
                  (let ((_%key89904%_
                         (vector-ref _%old-table89891%_ _%i89902%_)))
                    (if (and (not (eq? _%key89904%_ (macro-unused-obj)))
                             (not (eq? _%key89904%_ (macro-deleted-obj))))
                        (let ((_%value89906%_
                               (vector-ref
                                _%old-table89891%_
                                (##fx+ _%i89902%_ '1))))
                          (__raw-table-set!
                           _%tab89889%_
                           _%key89904%_
                           _%value89906%_))
                        '#!void))
                  (_%lp89900%_ (##fx+ _%i89902%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj89881%_)
        (let ((_%t89883%_ (##type _%obj89881%_)))
          (if (##fx= (##fxand _%t89883%_ '1) '0)
              (let ()
                (fxand (##type-cast _%obj89881%_ (macro-type-fixnum))
                       (macro-max-fixnum32)))
              (if (symbolic? _%obj89881%_)
                  (let () (symbolic-hash _%obj89881%_))
                  (if (procedure? _%obj89881%_)
                      (let () (procedure-hash _%obj89881%_))
                      (let ()
                        (fxand (__eq-hash _%obj89881%_)
                               (macro-max-fixnum32)))))))))
    (define procedure-hash
      (lambda (_%obj89877%_)
        (let ((_%h89879%_
               (if (##closure? _%obj89877%_)
                   (__eq-hash _%obj89877%_)
                   (##type-cast _%obj89877%_ '0))))
          (fxand _%h89879%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj89874%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj89874%_)))
    (define eqv-hash
      (lambda (_%obj89864%_)
        (letrec ((_%combine89866%_
                  (lambda (_%a89871%_ _%b89872%_)
                    (fxand (##fx* (##fx+ _%a89871%_
                                         (fxarithmetic-shift-left
                                          _%b89872%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash89867%_
                  (lambda (_%obj89869%_)
                    (macro-number-dispatch
                     _%obj89869%_
                     (eq-hash _%obj89869%_)
                     (fxand _%obj89869%_ (macro-max-fixnum32))
                     (modulo _%obj89869%_ '331804481)
                     (_%combine89866%_
                      (_%hash89867%_ (macro-ratnum-numerator _%obj89869%_))
                      (_%hash89867%_ (macro-ratnum-denominator _%obj89869%_)))
                     (_%combine89866%_
                      (##u16vector-ref _%obj89869%_ '0)
                      (_%combine89866%_
                       (##u16vector-ref _%obj89869%_ '1)
                       (_%combine89866%_
                        (##u16vector-ref _%obj89869%_ '2)
                        (##u16vector-ref _%obj89869%_ '3))))
                     (_%combine89866%_
                      (_%hash89867%_ (macro-cpxnum-real _%obj89869%_))
                      (_%hash89867%_ (macro-cpxnum-imag _%obj89869%_)))))))
          (_%hash89867%_ _%obj89864%_))))
    (define symbolic?
      (lambda (_%obj89859%_)
        (let ((_%$e89861%_ (symbol? _%obj89859%_)))
          (if _%$e89861%_ _%$e89861%_ (keyword? _%obj89859%_)))))
    (define symbolic-hash (lambda (_%obj89857%_) (macro-slot '1 _%obj89857%_)))
    (define string-hash (lambda (_%obj89855%_) (##string=?-hash _%obj89855%_)))
    (define immediate-hash
      (lambda (_%obj89853%_) (##type-cast _%obj89853%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint89834%_ _%seed89836%_)
        (make-raw-table__% _%size-hint89834%_ eq-hash eq? _%seed89836%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint89842%_ '#f) (_%seed89844%_ '0))
          (make-eq-table__% _%size-hint89842%_ _%seed89844%_))))
    (define make-eq-table__1
      (lambda (_%size-hint89846%_)
        (let ((_%seed89848%_ '0))
          (make-eq-table__% _%size-hint89846%_ _%seed89848%_))))
    (define make-eq-table
      (lambda _g90190_
        (let ((_g90189_ (##length _g90190_)))
          (cond ((##fx= _g90189_ 0)
                 (apply (lambda () (make-eq-table__0)) _g90190_))
                ((##fx= _g90189_ 1)
                 (apply (lambda (_%size-hint89846%_)
                          (make-eq-table__1 _%size-hint89846%_))
                        _g90190_))
                ((##fx= _g90189_ 2)
                 (apply (lambda (_%size-hint89850%_ _%seed89851%_)
                          (make-eq-table__% _%size-hint89850%_ _%seed89851%_))
                        _g90190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90190_))))))
    (define eq-table-ref
      (lambda (_%tab89787%_ _%key89788%_ _%default89789%_)
        (let ((_%table89791%_ (&raw-table-table _%tab89787%_))
              (_%seed89792%_ (&raw-table-seed _%tab89787%_)))
          (let* ((_%h89794%_ (fxxor (eq-hash _%key89788%_) _%seed89792%_))
                 (_%size89797%_ (vector-length _%table89791%_))
                 (_%entries89800%_ (##fxquotient _%size89797%_ '2))
                 (_%start89803%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89794%_ _%entries89800%_)
                   '1)))
            (let _%loop89807%_ ((_%probe89810%_ _%start89803%_)
                                (_%i89812%_ '1)
                                (_%deleted89814%_ '#f))
              (let ((_%k89817%_ (vector-ref _%table89791%_ _%probe89810%_)))
                (if (eq? _%k89817%_ (macro-unused-obj))
                    (let () _%default89789%_)
                    (if (eq? _%k89817%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89807%_
                           (let ((_%next-probe89822%_
                                  (fx+ _%start89803%_
                                       _%i89812%_
                                       (fx* _%i89812%_ _%i89812%_))))
                             (##fxmodulo _%next-probe89822%_ _%size89797%_))
                           (##fx+ _%i89812%_ '1)
                           (let ((_%$e89825%_ _%deleted89814%_))
                             (if _%$e89825%_ _%$e89825%_ _%probe89810%_))))
                        (if (eq? _%key89788%_ _%k89817%_)
                            (let ()
                              (vector-ref
                               _%table89791%_
                               (##fx+ _%probe89810%_ '1)))
                            (let ()
                              (_%loop89807%_
                               (let ((_%next-probe89830%_
                                      (fx+ _%start89803%_
                                           _%i89812%_
                                           (fx* _%i89812%_ _%i89812%_))))
                                 (##fxmodulo
                                  _%next-probe89830%_
                                  _%size89797%_))
                               (##fx+ _%i89812%_ '1)
                               _%deleted89814%_)))))))))))
    (define eq-table-set!
      (lambda (_%tab89783%_ _%key89784%_ _%value89785%_)
        (if (##fx< (&raw-table-free _%tab89783%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89783%_))
                    '4))
            (__raw-table-rehash! _%tab89783%_)
            '#!void)
        (__eq-table-set! _%tab89783%_ _%key89784%_ _%value89785%_)))
    (define __eq-table-set!
      (lambda (_%tab89734%_ _%key89735%_ _%value89736%_)
        (let ((_%table89739%_ (&raw-table-table _%tab89734%_))
              (_%seed89740%_ (&raw-table-seed _%tab89734%_)))
          (let* ((_%h89742%_ (fxxor (eq-hash _%key89735%_) _%seed89740%_))
                 (_%size89745%_ (vector-length _%table89739%_))
                 (_%entries89748%_ (##fxquotient _%size89745%_ '2))
                 (_%start89751%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89742%_ _%entries89748%_)
                   '1)))
            (let _%loop89755%_ ((_%probe89758%_ _%start89751%_)
                                (_%i89760%_ '1)
                                (_%deleted89762%_ '#f))
              (let ((_%k89765%_ (vector-ref _%table89739%_ _%probe89758%_)))
                (if (eq? _%k89765%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89762%_
                          (begin
                            (vector-set!
                             _%table89739%_
                             _%deleted89762%_
                             _%key89735%_)
                            (vector-set!
                             _%table89739%_
                             (##fx+ _%deleted89762%_ '1)
                             _%value89736%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89734%_
                                (##fx+ (&raw-table-count _%tab89734%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89739%_
                             _%probe89758%_
                             _%key89735%_)
                            (vector-set!
                             _%table89739%_
                             (##fx+ _%probe89758%_ '1)
                             _%value89736%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89734%_
                                (##fx- (&raw-table-free _%tab89734%_) '1))
                               (&raw-table-count-set!
                                _%tab89734%_
                                (##fx+ (&raw-table-count _%tab89734%_)
                                       '1)))))))
                    (if (eq? _%k89765%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89755%_
                           (let ((_%next-probe89772%_
                                  (fx+ _%start89751%_
                                       _%i89760%_
                                       (fx* _%i89760%_ _%i89760%_))))
                             (##fxmodulo _%next-probe89772%_ _%size89745%_))
                           (##fx+ _%i89760%_ '1)
                           (let ((_%$e89775%_ _%deleted89762%_))
                             (if _%$e89775%_ _%$e89775%_ _%probe89758%_))))
                        (if (eq? _%key89735%_ _%k89765%_)
                            (let ()
                              (vector-set!
                               _%table89739%_
                               _%probe89758%_
                               _%key89735%_)
                              (vector-set!
                               _%table89739%_
                               (##fx+ _%probe89758%_ '1)
                               _%value89736%_))
                            (let ()
                              (_%loop89755%_
                               (let ((_%next-probe89780%_
                                      (fx+ _%start89751%_
                                           _%i89760%_
                                           (fx* _%i89760%_ _%i89760%_))))
                                 (##fxmodulo
                                  _%next-probe89780%_
                                  _%size89745%_))
                               (##fx+ _%i89760%_ '1)
                               _%deleted89762%_)))))))))))
    (define eq-table-update!
      (lambda (_%tab89729%_
               _%key89730%_
               _%eq-table-update!89731%_
               _%default89732%_)
        (if (##fx< (&raw-table-free _%tab89729%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89729%_))
                    '4))
            (__raw-table-rehash! _%tab89729%_)
            '#!void)
        (__eq-table-update!
         _%tab89729%_
         _%key89730%_
         _%eq-table-update!89731%_
         _%default89732%_)))
    (define __eq-table-update!
      (lambda (_%tab89679%_
               _%key89680%_
               _%eq-table-update!89681%_
               _%default89682%_)
        (let ((_%table89685%_ (&raw-table-table _%tab89679%_))
              (_%seed89686%_ (&raw-table-seed _%tab89679%_)))
          (let* ((_%h89688%_ (fxxor (eq-hash _%key89680%_) _%seed89686%_))
                 (_%size89691%_ (vector-length _%table89685%_))
                 (_%entries89694%_ (##fxquotient _%size89691%_ '2))
                 (_%start89697%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89688%_ _%entries89694%_)
                   '1)))
            (let _%loop89701%_ ((_%probe89704%_ _%start89697%_)
                                (_%i89706%_ '1)
                                (_%deleted89708%_ '#f))
              (let ((_%k89711%_ (vector-ref _%table89685%_ _%probe89704%_)))
                (if (eq? _%k89711%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89708%_
                          (begin
                            (vector-set!
                             _%table89685%_
                             _%deleted89708%_
                             _%key89680%_)
                            (vector-set!
                             _%table89685%_
                             (##fx+ _%deleted89708%_ '1)
                             (_%eq-table-update!89681%_ _%default89682%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89679%_
                                (##fx+ (&raw-table-count _%tab89679%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89685%_
                             _%probe89704%_
                             _%key89680%_)
                            (vector-set!
                             _%table89685%_
                             (##fx+ _%probe89704%_ '1)
                             (_%eq-table-update!89681%_ _%default89682%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89679%_
                                (##fx- (&raw-table-free _%tab89679%_) '1))
                               (&raw-table-count-set!
                                _%tab89679%_
                                (##fx+ (&raw-table-count _%tab89679%_)
                                       '1)))))))
                    (if (eq? _%k89711%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89701%_
                           (let ((_%next-probe89718%_
                                  (fx+ _%start89697%_
                                       _%i89706%_
                                       (fx* _%i89706%_ _%i89706%_))))
                             (##fxmodulo _%next-probe89718%_ _%size89691%_))
                           (##fx+ _%i89706%_ '1)
                           (let ((_%$e89721%_ _%deleted89708%_))
                             (if _%$e89721%_ _%$e89721%_ _%probe89704%_))))
                        (if (eq? _%key89680%_ _%k89711%_)
                            (let ()
                              (vector-set!
                               _%table89685%_
                               _%probe89704%_
                               _%key89680%_)
                              (vector-set!
                               _%table89685%_
                               (##fx+ _%probe89704%_ '1)
                               (_%eq-table-update!89681%_
                                (vector-ref
                                 _%table89685%_
                                 (##fx+ _%probe89704%_ '1)))))
                            (let ()
                              (_%loop89701%_
                               (let ((_%next-probe89726%_
                                      (fx+ _%start89697%_
                                           _%i89706%_
                                           (fx* _%i89706%_ _%i89706%_))))
                                 (##fxmodulo
                                  _%next-probe89726%_
                                  _%size89691%_))
                               (##fx+ _%i89706%_ '1)
                               _%deleted89708%_)))))))))))
    (define eq-table-delete!
      (lambda (_%tab89634%_ _%key89636%_)
        (let ((_%table89639%_ (&raw-table-table _%tab89634%_))
              (_%seed89641%_ (&raw-table-seed _%tab89634%_)))
          (let* ((_%h89644%_ (fxxor (eq-hash _%key89636%_) _%seed89641%_))
                 (_%size89647%_ (vector-length _%table89639%_))
                 (_%entries89650%_ (##fxquotient _%size89647%_ '2))
                 (_%start89653%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89644%_ _%entries89650%_)
                   '1)))
            (let _%loop89657%_ ((_%probe89660%_ _%start89653%_)
                                (_%i89662%_ '1))
              (let ((_%k89665%_ (vector-ref _%table89639%_ _%probe89660%_)))
                (if (eq? _%k89665%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89665%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89657%_
                           (let ((_%next-probe89670%_
                                  (fx+ _%start89653%_
                                       _%i89662%_
                                       (fx* _%i89662%_ _%i89662%_))))
                             (##fxmodulo _%next-probe89670%_ _%size89647%_))
                           (##fx+ _%i89662%_ '1)))
                        (if (eq? _%key89636%_ _%k89665%_)
                            (let ()
                              (vector-set!
                               _%table89639%_
                               _%probe89660%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89639%_
                               (##fx+ _%probe89660%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89634%_
                                  (##fx- (&raw-table-count _%tab89634%_)
                                         '1)))))
                            (let ()
                              (_%loop89657%_
                               (let ((_%next-probe89676%_
                                      (fx+ _%start89653%_
                                           _%i89662%_
                                           (fx* _%i89662%_ _%i89662%_))))
                                 (##fxmodulo
                                  _%next-probe89676%_
                                  _%size89647%_))
                               (##fx+ _%i89662%_ '1))))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint89615%_ _%seed89617%_)
        (make-raw-table__% _%size-hint89615%_ eqv-hash eqv? _%seed89617%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint89623%_ '#f) (_%seed89625%_ '0))
          (make-eqv-table__% _%size-hint89623%_ _%seed89625%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint89627%_)
        (let ((_%seed89629%_ '0))
          (make-eqv-table__% _%size-hint89627%_ _%seed89629%_))))
    (define make-eqv-table
      (lambda _g90192_
        (let ((_g90191_ (##length _g90192_)))
          (cond ((##fx= _g90191_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g90192_))
                ((##fx= _g90191_ 1)
                 (apply (lambda (_%size-hint89627%_)
                          (make-eqv-table__1 _%size-hint89627%_))
                        _g90192_))
                ((##fx= _g90191_ 2)
                 (apply (lambda (_%size-hint89631%_ _%seed89632%_)
                          (make-eqv-table__% _%size-hint89631%_ _%seed89632%_))
                        _g90192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90192_))))))
    (define eqv-table-ref
      (lambda (_%tab89568%_ _%key89569%_ _%default89570%_)
        (let ((_%table89572%_ (&raw-table-table _%tab89568%_))
              (_%seed89573%_ (&raw-table-seed _%tab89568%_)))
          (let* ((_%h89575%_ (fxxor (eqv-hash _%key89569%_) _%seed89573%_))
                 (_%size89578%_ (vector-length _%table89572%_))
                 (_%entries89581%_ (##fxquotient _%size89578%_ '2))
                 (_%start89584%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89575%_ _%entries89581%_)
                   '1)))
            (let _%loop89588%_ ((_%probe89591%_ _%start89584%_)
                                (_%i89593%_ '1)
                                (_%deleted89595%_ '#f))
              (let ((_%k89598%_ (vector-ref _%table89572%_ _%probe89591%_)))
                (if (eq? _%k89598%_ (macro-unused-obj))
                    (let () _%default89570%_)
                    (if (eq? _%k89598%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89588%_
                           (let ((_%next-probe89603%_
                                  (fx+ _%start89584%_
                                       _%i89593%_
                                       (fx* _%i89593%_ _%i89593%_))))
                             (##fxmodulo _%next-probe89603%_ _%size89578%_))
                           (##fx+ _%i89593%_ '1)
                           (let ((_%$e89606%_ _%deleted89595%_))
                             (if _%$e89606%_ _%$e89606%_ _%probe89591%_))))
                        (if (eqv? _%key89569%_ _%k89598%_)
                            (let ()
                              (vector-ref
                               _%table89572%_
                               (##fx+ _%probe89591%_ '1)))
                            (let ()
                              (_%loop89588%_
                               (let ((_%next-probe89611%_
                                      (fx+ _%start89584%_
                                           _%i89593%_
                                           (fx* _%i89593%_ _%i89593%_))))
                                 (##fxmodulo
                                  _%next-probe89611%_
                                  _%size89578%_))
                               (##fx+ _%i89593%_ '1)
                               _%deleted89595%_)))))))))))
    (define eqv-table-set!
      (lambda (_%tab89564%_ _%key89565%_ _%value89566%_)
        (if (##fx< (&raw-table-free _%tab89564%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89564%_))
                    '4))
            (__raw-table-rehash! _%tab89564%_)
            '#!void)
        (__eqv-table-set! _%tab89564%_ _%key89565%_ _%value89566%_)))
    (define __eqv-table-set!
      (lambda (_%tab89515%_ _%key89516%_ _%value89517%_)
        (let ((_%table89520%_ (&raw-table-table _%tab89515%_))
              (_%seed89521%_ (&raw-table-seed _%tab89515%_)))
          (let* ((_%h89523%_ (fxxor (eqv-hash _%key89516%_) _%seed89521%_))
                 (_%size89526%_ (vector-length _%table89520%_))
                 (_%entries89529%_ (##fxquotient _%size89526%_ '2))
                 (_%start89532%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89523%_ _%entries89529%_)
                   '1)))
            (let _%loop89536%_ ((_%probe89539%_ _%start89532%_)
                                (_%i89541%_ '1)
                                (_%deleted89543%_ '#f))
              (let ((_%k89546%_ (vector-ref _%table89520%_ _%probe89539%_)))
                (if (eq? _%k89546%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89543%_
                          (begin
                            (vector-set!
                             _%table89520%_
                             _%deleted89543%_
                             _%key89516%_)
                            (vector-set!
                             _%table89520%_
                             (##fx+ _%deleted89543%_ '1)
                             _%value89517%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89515%_
                                (##fx+ (&raw-table-count _%tab89515%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89520%_
                             _%probe89539%_
                             _%key89516%_)
                            (vector-set!
                             _%table89520%_
                             (##fx+ _%probe89539%_ '1)
                             _%value89517%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89515%_
                                (##fx- (&raw-table-free _%tab89515%_) '1))
                               (&raw-table-count-set!
                                _%tab89515%_
                                (##fx+ (&raw-table-count _%tab89515%_)
                                       '1)))))))
                    (if (eq? _%k89546%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89536%_
                           (let ((_%next-probe89553%_
                                  (fx+ _%start89532%_
                                       _%i89541%_
                                       (fx* _%i89541%_ _%i89541%_))))
                             (##fxmodulo _%next-probe89553%_ _%size89526%_))
                           (##fx+ _%i89541%_ '1)
                           (let ((_%$e89556%_ _%deleted89543%_))
                             (if _%$e89556%_ _%$e89556%_ _%probe89539%_))))
                        (if (eqv? _%key89516%_ _%k89546%_)
                            (let ()
                              (vector-set!
                               _%table89520%_
                               _%probe89539%_
                               _%key89516%_)
                              (vector-set!
                               _%table89520%_
                               (##fx+ _%probe89539%_ '1)
                               _%value89517%_))
                            (let ()
                              (_%loop89536%_
                               (let ((_%next-probe89561%_
                                      (fx+ _%start89532%_
                                           _%i89541%_
                                           (fx* _%i89541%_ _%i89541%_))))
                                 (##fxmodulo
                                  _%next-probe89561%_
                                  _%size89526%_))
                               (##fx+ _%i89541%_ '1)
                               _%deleted89543%_)))))))))))
    (define eqv-table-update!
      (lambda (_%tab89510%_
               _%key89511%_
               _%eqv-table-update!89512%_
               _%default89513%_)
        (if (##fx< (&raw-table-free _%tab89510%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89510%_))
                    '4))
            (__raw-table-rehash! _%tab89510%_)
            '#!void)
        (__eqv-table-update!
         _%tab89510%_
         _%key89511%_
         _%eqv-table-update!89512%_
         _%default89513%_)))
    (define __eqv-table-update!
      (lambda (_%tab89460%_
               _%key89461%_
               _%eqv-table-update!89462%_
               _%default89463%_)
        (let ((_%table89466%_ (&raw-table-table _%tab89460%_))
              (_%seed89467%_ (&raw-table-seed _%tab89460%_)))
          (let* ((_%h89469%_ (fxxor (eqv-hash _%key89461%_) _%seed89467%_))
                 (_%size89472%_ (vector-length _%table89466%_))
                 (_%entries89475%_ (##fxquotient _%size89472%_ '2))
                 (_%start89478%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89469%_ _%entries89475%_)
                   '1)))
            (let _%loop89482%_ ((_%probe89485%_ _%start89478%_)
                                (_%i89487%_ '1)
                                (_%deleted89489%_ '#f))
              (let ((_%k89492%_ (vector-ref _%table89466%_ _%probe89485%_)))
                (if (eq? _%k89492%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89489%_
                          (begin
                            (vector-set!
                             _%table89466%_
                             _%deleted89489%_
                             _%key89461%_)
                            (vector-set!
                             _%table89466%_
                             (##fx+ _%deleted89489%_ '1)
                             (_%eqv-table-update!89462%_ _%default89463%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89460%_
                                (##fx+ (&raw-table-count _%tab89460%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89466%_
                             _%probe89485%_
                             _%key89461%_)
                            (vector-set!
                             _%table89466%_
                             (##fx+ _%probe89485%_ '1)
                             (_%eqv-table-update!89462%_ _%default89463%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89460%_
                                (##fx- (&raw-table-free _%tab89460%_) '1))
                               (&raw-table-count-set!
                                _%tab89460%_
                                (##fx+ (&raw-table-count _%tab89460%_)
                                       '1)))))))
                    (if (eq? _%k89492%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89482%_
                           (let ((_%next-probe89499%_
                                  (fx+ _%start89478%_
                                       _%i89487%_
                                       (fx* _%i89487%_ _%i89487%_))))
                             (##fxmodulo _%next-probe89499%_ _%size89472%_))
                           (##fx+ _%i89487%_ '1)
                           (let ((_%$e89502%_ _%deleted89489%_))
                             (if _%$e89502%_ _%$e89502%_ _%probe89485%_))))
                        (if (eqv? _%key89461%_ _%k89492%_)
                            (let ()
                              (vector-set!
                               _%table89466%_
                               _%probe89485%_
                               _%key89461%_)
                              (vector-set!
                               _%table89466%_
                               (##fx+ _%probe89485%_ '1)
                               (_%eqv-table-update!89462%_
                                (vector-ref
                                 _%table89466%_
                                 (##fx+ _%probe89485%_ '1)))))
                            (let ()
                              (_%loop89482%_
                               (let ((_%next-probe89507%_
                                      (fx+ _%start89478%_
                                           _%i89487%_
                                           (fx* _%i89487%_ _%i89487%_))))
                                 (##fxmodulo
                                  _%next-probe89507%_
                                  _%size89472%_))
                               (##fx+ _%i89487%_ '1)
                               _%deleted89489%_)))))))))))
    (define eqv-table-delete!
      (lambda (_%tab89415%_ _%key89417%_)
        (let ((_%table89420%_ (&raw-table-table _%tab89415%_))
              (_%seed89422%_ (&raw-table-seed _%tab89415%_)))
          (let* ((_%h89425%_ (fxxor (eqv-hash _%key89417%_) _%seed89422%_))
                 (_%size89428%_ (vector-length _%table89420%_))
                 (_%entries89431%_ (##fxquotient _%size89428%_ '2))
                 (_%start89434%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89425%_ _%entries89431%_)
                   '1)))
            (let _%loop89438%_ ((_%probe89441%_ _%start89434%_)
                                (_%i89443%_ '1))
              (let ((_%k89446%_ (vector-ref _%table89420%_ _%probe89441%_)))
                (if (eq? _%k89446%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89446%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89438%_
                           (let ((_%next-probe89451%_
                                  (fx+ _%start89434%_
                                       _%i89443%_
                                       (fx* _%i89443%_ _%i89443%_))))
                             (##fxmodulo _%next-probe89451%_ _%size89428%_))
                           (##fx+ _%i89443%_ '1)))
                        (if (eqv? _%key89417%_ _%k89446%_)
                            (let ()
                              (vector-set!
                               _%table89420%_
                               _%probe89441%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89420%_
                               (##fx+ _%probe89441%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89415%_
                                  (##fx- (&raw-table-count _%tab89415%_)
                                         '1)))))
                            (let ()
                              (_%loop89438%_
                               (let ((_%next-probe89457%_
                                      (fx+ _%start89434%_
                                           _%i89443%_
                                           (fx* _%i89443%_ _%i89443%_))))
                                 (##fxmodulo
                                  _%next-probe89457%_
                                  _%size89428%_))
                               (##fx+ _%i89443%_ '1))))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint89396%_ _%seed89398%_)
        (make-raw-table__%
         _%size-hint89396%_
         symbolic-hash
         eq?
         _%seed89398%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint89404%_ '#f) (_%seed89406%_ '0))
          (make-symbolic-table__% _%size-hint89404%_ _%seed89406%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint89408%_)
        (let ((_%seed89410%_ '0))
          (make-symbolic-table__% _%size-hint89408%_ _%seed89410%_))))
    (define make-symbolic-table
      (lambda _g90194_
        (let ((_g90193_ (##length _g90194_)))
          (cond ((##fx= _g90193_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g90194_))
                ((##fx= _g90193_ 1)
                 (apply (lambda (_%size-hint89408%_)
                          (make-symbolic-table__1 _%size-hint89408%_))
                        _g90194_))
                ((##fx= _g90193_ 2)
                 (apply (lambda (_%size-hint89412%_ _%seed89413%_)
                          (make-symbolic-table__%
                           _%size-hint89412%_
                           _%seed89413%_))
                        _g90194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90194_))))))
    (define symbolic-table-ref
      (lambda (_%tab89349%_ _%key89350%_ _%default89351%_)
        (let ((_%table89353%_ (&raw-table-table _%tab89349%_))
              (_%seed89354%_ (&raw-table-seed _%tab89349%_)))
          (let* ((_%h89356%_
                  (fxxor (symbolic-hash _%key89350%_) _%seed89354%_))
                 (_%size89359%_ (vector-length _%table89353%_))
                 (_%entries89362%_ (##fxquotient _%size89359%_ '2))
                 (_%start89365%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89356%_ _%entries89362%_)
                   '1)))
            (let _%loop89369%_ ((_%probe89372%_ _%start89365%_)
                                (_%i89374%_ '1)
                                (_%deleted89376%_ '#f))
              (let ((_%k89379%_ (vector-ref _%table89353%_ _%probe89372%_)))
                (if (eq? _%k89379%_ (macro-unused-obj))
                    (let () _%default89351%_)
                    (if (eq? _%k89379%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89369%_
                           (let ((_%next-probe89384%_
                                  (fx+ _%start89365%_
                                       _%i89374%_
                                       (fx* _%i89374%_ _%i89374%_))))
                             (##fxmodulo _%next-probe89384%_ _%size89359%_))
                           (##fx+ _%i89374%_ '1)
                           (let ((_%$e89387%_ _%deleted89376%_))
                             (if _%$e89387%_ _%$e89387%_ _%probe89372%_))))
                        (if (eq? _%key89350%_ _%k89379%_)
                            (let ()
                              (vector-ref
                               _%table89353%_
                               (##fx+ _%probe89372%_ '1)))
                            (let ()
                              (_%loop89369%_
                               (let ((_%next-probe89392%_
                                      (fx+ _%start89365%_
                                           _%i89374%_
                                           (fx* _%i89374%_ _%i89374%_))))
                                 (##fxmodulo
                                  _%next-probe89392%_
                                  _%size89359%_))
                               (##fx+ _%i89374%_ '1)
                               _%deleted89376%_)))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89345%_ _%key89346%_ _%value89347%_)
        (if (##fx< (&raw-table-free _%tab89345%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89345%_))
                    '4))
            (__raw-table-rehash! _%tab89345%_)
            '#!void)
        (__symbolic-table-set! _%tab89345%_ _%key89346%_ _%value89347%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89296%_ _%key89297%_ _%value89298%_)
        (let ((_%table89301%_ (&raw-table-table _%tab89296%_))
              (_%seed89302%_ (&raw-table-seed _%tab89296%_)))
          (let* ((_%h89304%_
                  (fxxor (symbolic-hash _%key89297%_) _%seed89302%_))
                 (_%size89307%_ (vector-length _%table89301%_))
                 (_%entries89310%_ (##fxquotient _%size89307%_ '2))
                 (_%start89313%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89304%_ _%entries89310%_)
                   '1)))
            (let _%loop89317%_ ((_%probe89320%_ _%start89313%_)
                                (_%i89322%_ '1)
                                (_%deleted89324%_ '#f))
              (let ((_%k89327%_ (vector-ref _%table89301%_ _%probe89320%_)))
                (if (eq? _%k89327%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89324%_
                          (begin
                            (vector-set!
                             _%table89301%_
                             _%deleted89324%_
                             _%key89297%_)
                            (vector-set!
                             _%table89301%_
                             (##fx+ _%deleted89324%_ '1)
                             _%value89298%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89296%_
                                (##fx+ (&raw-table-count _%tab89296%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89301%_
                             _%probe89320%_
                             _%key89297%_)
                            (vector-set!
                             _%table89301%_
                             (##fx+ _%probe89320%_ '1)
                             _%value89298%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89296%_
                                (##fx- (&raw-table-free _%tab89296%_) '1))
                               (&raw-table-count-set!
                                _%tab89296%_
                                (##fx+ (&raw-table-count _%tab89296%_)
                                       '1)))))))
                    (if (eq? _%k89327%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89317%_
                           (let ((_%next-probe89334%_
                                  (fx+ _%start89313%_
                                       _%i89322%_
                                       (fx* _%i89322%_ _%i89322%_))))
                             (##fxmodulo _%next-probe89334%_ _%size89307%_))
                           (##fx+ _%i89322%_ '1)
                           (let ((_%$e89337%_ _%deleted89324%_))
                             (if _%$e89337%_ _%$e89337%_ _%probe89320%_))))
                        (if (eq? _%key89297%_ _%k89327%_)
                            (let ()
                              (vector-set!
                               _%table89301%_
                               _%probe89320%_
                               _%key89297%_)
                              (vector-set!
                               _%table89301%_
                               (##fx+ _%probe89320%_ '1)
                               _%value89298%_))
                            (let ()
                              (_%loop89317%_
                               (let ((_%next-probe89342%_
                                      (fx+ _%start89313%_
                                           _%i89322%_
                                           (fx* _%i89322%_ _%i89322%_))))
                                 (##fxmodulo
                                  _%next-probe89342%_
                                  _%size89307%_))
                               (##fx+ _%i89322%_ '1)
                               _%deleted89324%_)))))))))))
    (define symbolic-table-update!
      (lambda (_%tab89291%_
               _%key89292%_
               _%symbolic-table-update!89293%_
               _%default89294%_)
        (if (##fx< (&raw-table-free _%tab89291%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89291%_))
                    '4))
            (__raw-table-rehash! _%tab89291%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89291%_
         _%key89292%_
         _%symbolic-table-update!89293%_
         _%default89294%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89241%_
               _%key89242%_
               _%symbolic-table-update!89243%_
               _%default89244%_)
        (let ((_%table89247%_ (&raw-table-table _%tab89241%_))
              (_%seed89248%_ (&raw-table-seed _%tab89241%_)))
          (let* ((_%h89250%_
                  (fxxor (symbolic-hash _%key89242%_) _%seed89248%_))
                 (_%size89253%_ (vector-length _%table89247%_))
                 (_%entries89256%_ (##fxquotient _%size89253%_ '2))
                 (_%start89259%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89250%_ _%entries89256%_)
                   '1)))
            (let _%loop89263%_ ((_%probe89266%_ _%start89259%_)
                                (_%i89268%_ '1)
                                (_%deleted89270%_ '#f))
              (let ((_%k89273%_ (vector-ref _%table89247%_ _%probe89266%_)))
                (if (eq? _%k89273%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89270%_
                          (begin
                            (vector-set!
                             _%table89247%_
                             _%deleted89270%_
                             _%key89242%_)
                            (vector-set!
                             _%table89247%_
                             (##fx+ _%deleted89270%_ '1)
                             (_%symbolic-table-update!89243%_
                              _%default89244%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89241%_
                                (##fx+ (&raw-table-count _%tab89241%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89247%_
                             _%probe89266%_
                             _%key89242%_)
                            (vector-set!
                             _%table89247%_
                             (##fx+ _%probe89266%_ '1)
                             (_%symbolic-table-update!89243%_
                              _%default89244%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89241%_
                                (##fx- (&raw-table-free _%tab89241%_) '1))
                               (&raw-table-count-set!
                                _%tab89241%_
                                (##fx+ (&raw-table-count _%tab89241%_)
                                       '1)))))))
                    (if (eq? _%k89273%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89263%_
                           (let ((_%next-probe89280%_
                                  (fx+ _%start89259%_
                                       _%i89268%_
                                       (fx* _%i89268%_ _%i89268%_))))
                             (##fxmodulo _%next-probe89280%_ _%size89253%_))
                           (##fx+ _%i89268%_ '1)
                           (let ((_%$e89283%_ _%deleted89270%_))
                             (if _%$e89283%_ _%$e89283%_ _%probe89266%_))))
                        (if (eq? _%key89242%_ _%k89273%_)
                            (let ()
                              (vector-set!
                               _%table89247%_
                               _%probe89266%_
                               _%key89242%_)
                              (vector-set!
                               _%table89247%_
                               (##fx+ _%probe89266%_ '1)
                               (_%symbolic-table-update!89243%_
                                (vector-ref
                                 _%table89247%_
                                 (##fx+ _%probe89266%_ '1)))))
                            (let ()
                              (_%loop89263%_
                               (let ((_%next-probe89288%_
                                      (fx+ _%start89259%_
                                           _%i89268%_
                                           (fx* _%i89268%_ _%i89268%_))))
                                 (##fxmodulo
                                  _%next-probe89288%_
                                  _%size89253%_))
                               (##fx+ _%i89268%_ '1)
                               _%deleted89270%_)))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89196%_ _%key89198%_)
        (let ((_%table89201%_ (&raw-table-table _%tab89196%_))
              (_%seed89203%_ (&raw-table-seed _%tab89196%_)))
          (let* ((_%h89206%_
                  (fxxor (symbolic-hash _%key89198%_) _%seed89203%_))
                 (_%size89209%_ (vector-length _%table89201%_))
                 (_%entries89212%_ (##fxquotient _%size89209%_ '2))
                 (_%start89215%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89206%_ _%entries89212%_)
                   '1)))
            (let _%loop89219%_ ((_%probe89222%_ _%start89215%_)
                                (_%i89224%_ '1))
              (let ((_%k89227%_ (vector-ref _%table89201%_ _%probe89222%_)))
                (if (eq? _%k89227%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89227%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89219%_
                           (let ((_%next-probe89232%_
                                  (fx+ _%start89215%_
                                       _%i89224%_
                                       (fx* _%i89224%_ _%i89224%_))))
                             (##fxmodulo _%next-probe89232%_ _%size89209%_))
                           (##fx+ _%i89224%_ '1)))
                        (if (eq? _%key89198%_ _%k89227%_)
                            (let ()
                              (vector-set!
                               _%table89201%_
                               _%probe89222%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89201%_
                               (##fx+ _%probe89222%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89196%_
                                  (##fx- (&raw-table-count _%tab89196%_)
                                         '1)))))
                            (let ()
                              (_%loop89219%_
                               (let ((_%next-probe89238%_
                                      (fx+ _%start89215%_
                                           _%i89224%_
                                           (fx* _%i89224%_ _%i89224%_))))
                                 (##fxmodulo
                                  _%next-probe89238%_
                                  _%size89209%_))
                               (##fx+ _%i89224%_ '1))))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89177%_ _%seed89179%_)
        (make-raw-table__%
         _%size-hint89177%_
         string-hash
         ##string=?
         _%seed89179%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89185%_ '#f) (_%seed89187%_ '0))
          (make-string-table__% _%size-hint89185%_ _%seed89187%_))))
    (define make-string-table__1
      (lambda (_%size-hint89189%_)
        (let ((_%seed89191%_ '0))
          (make-string-table__% _%size-hint89189%_ _%seed89191%_))))
    (define make-string-table
      (lambda _g90196_
        (let ((_g90195_ (##length _g90196_)))
          (cond ((##fx= _g90195_ 0)
                 (apply (lambda () (make-string-table__0)) _g90196_))
                ((##fx= _g90195_ 1)
                 (apply (lambda (_%size-hint89189%_)
                          (make-string-table__1 _%size-hint89189%_))
                        _g90196_))
                ((##fx= _g90195_ 2)
                 (apply (lambda (_%size-hint89193%_ _%seed89194%_)
                          (make-string-table__%
                           _%size-hint89193%_
                           _%seed89194%_))
                        _g90196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90196_))))))
    (define string-table-ref
      (lambda (_%tab89130%_ _%key89131%_ _%default89132%_)
        (let ((_%table89134%_ (&raw-table-table _%tab89130%_))
              (_%seed89135%_ (&raw-table-seed _%tab89130%_)))
          (let* ((_%h89137%_
                  (fxxor (##string=?-hash _%key89131%_) _%seed89135%_))
                 (_%size89140%_ (vector-length _%table89134%_))
                 (_%entries89143%_ (##fxquotient _%size89140%_ '2))
                 (_%start89146%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89137%_ _%entries89143%_)
                   '1)))
            (let _%loop89150%_ ((_%probe89153%_ _%start89146%_)
                                (_%i89155%_ '1)
                                (_%deleted89157%_ '#f))
              (let ((_%k89160%_ (vector-ref _%table89134%_ _%probe89153%_)))
                (if (eq? _%k89160%_ (macro-unused-obj))
                    (let () _%default89132%_)
                    (if (eq? _%k89160%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89150%_
                           (let ((_%next-probe89165%_
                                  (fx+ _%start89146%_
                                       _%i89155%_
                                       (fx* _%i89155%_ _%i89155%_))))
                             (##fxmodulo _%next-probe89165%_ _%size89140%_))
                           (##fx+ _%i89155%_ '1)
                           (let ((_%$e89168%_ _%deleted89157%_))
                             (if _%$e89168%_ _%$e89168%_ _%probe89153%_))))
                        (if (##string=? _%key89131%_ _%k89160%_)
                            (let ()
                              (vector-ref
                               _%table89134%_
                               (##fx+ _%probe89153%_ '1)))
                            (let ()
                              (_%loop89150%_
                               (let ((_%next-probe89173%_
                                      (fx+ _%start89146%_
                                           _%i89155%_
                                           (fx* _%i89155%_ _%i89155%_))))
                                 (##fxmodulo
                                  _%next-probe89173%_
                                  _%size89140%_))
                               (##fx+ _%i89155%_ '1)
                               _%deleted89157%_)))))))))))
    (define string-table-set!
      (lambda (_%tab89126%_ _%key89127%_ _%value89128%_)
        (if (##fx< (&raw-table-free _%tab89126%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89126%_))
                    '4))
            (__raw-table-rehash! _%tab89126%_)
            '#!void)
        (__string-table-set! _%tab89126%_ _%key89127%_ _%value89128%_)))
    (define __string-table-set!
      (lambda (_%tab89077%_ _%key89078%_ _%value89079%_)
        (let ((_%table89082%_ (&raw-table-table _%tab89077%_))
              (_%seed89083%_ (&raw-table-seed _%tab89077%_)))
          (let* ((_%h89085%_
                  (fxxor (##string=?-hash _%key89078%_) _%seed89083%_))
                 (_%size89088%_ (vector-length _%table89082%_))
                 (_%entries89091%_ (##fxquotient _%size89088%_ '2))
                 (_%start89094%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89085%_ _%entries89091%_)
                   '1)))
            (let _%loop89098%_ ((_%probe89101%_ _%start89094%_)
                                (_%i89103%_ '1)
                                (_%deleted89105%_ '#f))
              (let ((_%k89108%_ (vector-ref _%table89082%_ _%probe89101%_)))
                (if (eq? _%k89108%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89105%_
                          (begin
                            (vector-set!
                             _%table89082%_
                             _%deleted89105%_
                             _%key89078%_)
                            (vector-set!
                             _%table89082%_
                             (##fx+ _%deleted89105%_ '1)
                             _%value89079%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89077%_
                                (##fx+ (&raw-table-count _%tab89077%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89082%_
                             _%probe89101%_
                             _%key89078%_)
                            (vector-set!
                             _%table89082%_
                             (##fx+ _%probe89101%_ '1)
                             _%value89079%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89077%_
                                (##fx- (&raw-table-free _%tab89077%_) '1))
                               (&raw-table-count-set!
                                _%tab89077%_
                                (##fx+ (&raw-table-count _%tab89077%_)
                                       '1)))))))
                    (if (eq? _%k89108%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89098%_
                           (let ((_%next-probe89115%_
                                  (fx+ _%start89094%_
                                       _%i89103%_
                                       (fx* _%i89103%_ _%i89103%_))))
                             (##fxmodulo _%next-probe89115%_ _%size89088%_))
                           (##fx+ _%i89103%_ '1)
                           (let ((_%$e89118%_ _%deleted89105%_))
                             (if _%$e89118%_ _%$e89118%_ _%probe89101%_))))
                        (if (##string=? _%key89078%_ _%k89108%_)
                            (let ()
                              (vector-set!
                               _%table89082%_
                               _%probe89101%_
                               _%key89078%_)
                              (vector-set!
                               _%table89082%_
                               (##fx+ _%probe89101%_ '1)
                               _%value89079%_))
                            (let ()
                              (_%loop89098%_
                               (let ((_%next-probe89123%_
                                      (fx+ _%start89094%_
                                           _%i89103%_
                                           (fx* _%i89103%_ _%i89103%_))))
                                 (##fxmodulo
                                  _%next-probe89123%_
                                  _%size89088%_))
                               (##fx+ _%i89103%_ '1)
                               _%deleted89105%_)))))))))))
    (define string-table-update!
      (lambda (_%tab89072%_
               _%key89073%_
               _%string-table-update!89074%_
               _%default89075%_)
        (if (##fx< (&raw-table-free _%tab89072%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89072%_))
                    '4))
            (__raw-table-rehash! _%tab89072%_)
            '#!void)
        (__string-table-update!
         _%tab89072%_
         _%key89073%_
         _%string-table-update!89074%_
         _%default89075%_)))
    (define __string-table-update!
      (lambda (_%tab89022%_
               _%key89023%_
               _%string-table-update!89024%_
               _%default89025%_)
        (let ((_%table89028%_ (&raw-table-table _%tab89022%_))
              (_%seed89029%_ (&raw-table-seed _%tab89022%_)))
          (let* ((_%h89031%_
                  (fxxor (##string=?-hash _%key89023%_) _%seed89029%_))
                 (_%size89034%_ (vector-length _%table89028%_))
                 (_%entries89037%_ (##fxquotient _%size89034%_ '2))
                 (_%start89040%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89031%_ _%entries89037%_)
                   '1)))
            (let _%loop89044%_ ((_%probe89047%_ _%start89040%_)
                                (_%i89049%_ '1)
                                (_%deleted89051%_ '#f))
              (let ((_%k89054%_ (vector-ref _%table89028%_ _%probe89047%_)))
                (if (eq? _%k89054%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89051%_
                          (begin
                            (vector-set!
                             _%table89028%_
                             _%deleted89051%_
                             _%key89023%_)
                            (vector-set!
                             _%table89028%_
                             (##fx+ _%deleted89051%_ '1)
                             (_%string-table-update!89024%_ _%default89025%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89022%_
                                (##fx+ (&raw-table-count _%tab89022%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89028%_
                             _%probe89047%_
                             _%key89023%_)
                            (vector-set!
                             _%table89028%_
                             (##fx+ _%probe89047%_ '1)
                             (_%string-table-update!89024%_ _%default89025%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89022%_
                                (##fx- (&raw-table-free _%tab89022%_) '1))
                               (&raw-table-count-set!
                                _%tab89022%_
                                (##fx+ (&raw-table-count _%tab89022%_)
                                       '1)))))))
                    (if (eq? _%k89054%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89044%_
                           (let ((_%next-probe89061%_
                                  (fx+ _%start89040%_
                                       _%i89049%_
                                       (fx* _%i89049%_ _%i89049%_))))
                             (##fxmodulo _%next-probe89061%_ _%size89034%_))
                           (##fx+ _%i89049%_ '1)
                           (let ((_%$e89064%_ _%deleted89051%_))
                             (if _%$e89064%_ _%$e89064%_ _%probe89047%_))))
                        (if (##string=? _%key89023%_ _%k89054%_)
                            (let ()
                              (vector-set!
                               _%table89028%_
                               _%probe89047%_
                               _%key89023%_)
                              (vector-set!
                               _%table89028%_
                               (##fx+ _%probe89047%_ '1)
                               (_%string-table-update!89024%_
                                (vector-ref
                                 _%table89028%_
                                 (##fx+ _%probe89047%_ '1)))))
                            (let ()
                              (_%loop89044%_
                               (let ((_%next-probe89069%_
                                      (fx+ _%start89040%_
                                           _%i89049%_
                                           (fx* _%i89049%_ _%i89049%_))))
                                 (##fxmodulo
                                  _%next-probe89069%_
                                  _%size89034%_))
                               (##fx+ _%i89049%_ '1)
                               _%deleted89051%_)))))))))))
    (define string-table-delete!
      (lambda (_%tab88977%_ _%key88979%_)
        (let ((_%table88982%_ (&raw-table-table _%tab88977%_))
              (_%seed88984%_ (&raw-table-seed _%tab88977%_)))
          (let* ((_%h88987%_
                  (fxxor (##string=?-hash _%key88979%_) _%seed88984%_))
                 (_%size88990%_ (vector-length _%table88982%_))
                 (_%entries88993%_ (##fxquotient _%size88990%_ '2))
                 (_%start88996%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88987%_ _%entries88993%_)
                   '1)))
            (let _%loop89000%_ ((_%probe89003%_ _%start88996%_)
                                (_%i89005%_ '1))
              (let ((_%k89008%_ (vector-ref _%table88982%_ _%probe89003%_)))
                (if (eq? _%k89008%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89008%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89000%_
                           (let ((_%next-probe89013%_
                                  (fx+ _%start88996%_
                                       _%i89005%_
                                       (fx* _%i89005%_ _%i89005%_))))
                             (##fxmodulo _%next-probe89013%_ _%size88990%_))
                           (##fx+ _%i89005%_ '1)))
                        (if (##string=? _%key88979%_ _%k89008%_)
                            (let ()
                              (vector-set!
                               _%table88982%_
                               _%probe89003%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88982%_
                               (##fx+ _%probe89003%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88977%_
                                  (##fx- (&raw-table-count _%tab88977%_)
                                         '1)))))
                            (let ()
                              (_%loop89000%_
                               (let ((_%next-probe89019%_
                                      (fx+ _%start88996%_
                                           _%i89005%_
                                           (fx* _%i89005%_ _%i89005%_))))
                                 (##fxmodulo
                                  _%next-probe89019%_
                                  _%size88990%_))
                               (##fx+ _%i89005%_ '1))))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint88958%_ _%seed88960%_)
        (make-raw-table__%
         _%size-hint88958%_
         immediate-hash
         eq?
         _%seed88960%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint88966%_ '#f) (_%seed88968%_ '0))
          (make-immediate-table__% _%size-hint88966%_ _%seed88968%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint88970%_)
        (let ((_%seed88972%_ '0))
          (make-immediate-table__% _%size-hint88970%_ _%seed88972%_))))
    (define make-immediate-table
      (lambda _g90198_
        (let ((_g90197_ (##length _g90198_)))
          (cond ((##fx= _g90197_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g90198_))
                ((##fx= _g90197_ 1)
                 (apply (lambda (_%size-hint88970%_)
                          (make-immediate-table__1 _%size-hint88970%_))
                        _g90198_))
                ((##fx= _g90197_ 2)
                 (apply (lambda (_%size-hint88974%_ _%seed88975%_)
                          (make-immediate-table__%
                           _%size-hint88974%_
                           _%seed88975%_))
                        _g90198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90198_))))))
    (define immediate-table-ref
      (lambda (_%tab88911%_ _%key88912%_ _%default88913%_)
        (let ((_%table88915%_ (&raw-table-table _%tab88911%_))
              (_%seed88916%_ (&raw-table-seed _%tab88911%_)))
          (let* ((_%h88918%_
                  (fxxor (immediate-hash _%key88912%_) _%seed88916%_))
                 (_%size88921%_ (vector-length _%table88915%_))
                 (_%entries88924%_ (##fxquotient _%size88921%_ '2))
                 (_%start88927%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88918%_ _%entries88924%_)
                   '1)))
            (let _%loop88931%_ ((_%probe88934%_ _%start88927%_)
                                (_%i88936%_ '1)
                                (_%deleted88938%_ '#f))
              (let ((_%k88941%_ (vector-ref _%table88915%_ _%probe88934%_)))
                (if (eq? _%k88941%_ (macro-unused-obj))
                    (let () _%default88913%_)
                    (if (eq? _%k88941%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88931%_
                           (let ((_%next-probe88946%_
                                  (fx+ _%start88927%_
                                       _%i88936%_
                                       (fx* _%i88936%_ _%i88936%_))))
                             (##fxmodulo _%next-probe88946%_ _%size88921%_))
                           (##fx+ _%i88936%_ '1)
                           (let ((_%$e88949%_ _%deleted88938%_))
                             (if _%$e88949%_ _%$e88949%_ _%probe88934%_))))
                        (if (eq? _%key88912%_ _%k88941%_)
                            (let ()
                              (vector-ref
                               _%table88915%_
                               (##fx+ _%probe88934%_ '1)))
                            (let ()
                              (_%loop88931%_
                               (let ((_%next-probe88954%_
                                      (fx+ _%start88927%_
                                           _%i88936%_
                                           (fx* _%i88936%_ _%i88936%_))))
                                 (##fxmodulo
                                  _%next-probe88954%_
                                  _%size88921%_))
                               (##fx+ _%i88936%_ '1)
                               _%deleted88938%_)))))))))))
    (define immediate-table-set!
      (lambda (_%tab88907%_ _%key88908%_ _%value88909%_)
        (if (##fx< (&raw-table-free _%tab88907%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88907%_))
                    '4))
            (__raw-table-rehash! _%tab88907%_)
            '#!void)
        (__immediate-table-set! _%tab88907%_ _%key88908%_ _%value88909%_)))
    (define __immediate-table-set!
      (lambda (_%tab88858%_ _%key88859%_ _%value88860%_)
        (let ((_%table88863%_ (&raw-table-table _%tab88858%_))
              (_%seed88864%_ (&raw-table-seed _%tab88858%_)))
          (let* ((_%h88866%_
                  (fxxor (immediate-hash _%key88859%_) _%seed88864%_))
                 (_%size88869%_ (vector-length _%table88863%_))
                 (_%entries88872%_ (##fxquotient _%size88869%_ '2))
                 (_%start88875%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88866%_ _%entries88872%_)
                   '1)))
            (let _%loop88879%_ ((_%probe88882%_ _%start88875%_)
                                (_%i88884%_ '1)
                                (_%deleted88886%_ '#f))
              (let ((_%k88889%_ (vector-ref _%table88863%_ _%probe88882%_)))
                (if (eq? _%k88889%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88886%_
                          (begin
                            (vector-set!
                             _%table88863%_
                             _%deleted88886%_
                             _%key88859%_)
                            (vector-set!
                             _%table88863%_
                             (##fx+ _%deleted88886%_ '1)
                             _%value88860%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88858%_
                                (##fx+ (&raw-table-count _%tab88858%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88863%_
                             _%probe88882%_
                             _%key88859%_)
                            (vector-set!
                             _%table88863%_
                             (##fx+ _%probe88882%_ '1)
                             _%value88860%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88858%_
                                (##fx- (&raw-table-free _%tab88858%_) '1))
                               (&raw-table-count-set!
                                _%tab88858%_
                                (##fx+ (&raw-table-count _%tab88858%_)
                                       '1)))))))
                    (if (eq? _%k88889%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88879%_
                           (let ((_%next-probe88896%_
                                  (fx+ _%start88875%_
                                       _%i88884%_
                                       (fx* _%i88884%_ _%i88884%_))))
                             (##fxmodulo _%next-probe88896%_ _%size88869%_))
                           (##fx+ _%i88884%_ '1)
                           (let ((_%$e88899%_ _%deleted88886%_))
                             (if _%$e88899%_ _%$e88899%_ _%probe88882%_))))
                        (if (eq? _%key88859%_ _%k88889%_)
                            (let ()
                              (vector-set!
                               _%table88863%_
                               _%probe88882%_
                               _%key88859%_)
                              (vector-set!
                               _%table88863%_
                               (##fx+ _%probe88882%_ '1)
                               _%value88860%_))
                            (let ()
                              (_%loop88879%_
                               (let ((_%next-probe88904%_
                                      (fx+ _%start88875%_
                                           _%i88884%_
                                           (fx* _%i88884%_ _%i88884%_))))
                                 (##fxmodulo
                                  _%next-probe88904%_
                                  _%size88869%_))
                               (##fx+ _%i88884%_ '1)
                               _%deleted88886%_)))))))))))
    (define immediate-table-update!
      (lambda (_%tab88853%_
               _%key88854%_
               _%immediate-table-update!88855%_
               _%default88856%_)
        (if (##fx< (&raw-table-free _%tab88853%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88853%_))
                    '4))
            (__raw-table-rehash! _%tab88853%_)
            '#!void)
        (__immediate-table-update!
         _%tab88853%_
         _%key88854%_
         _%immediate-table-update!88855%_
         _%default88856%_)))
    (define __immediate-table-update!
      (lambda (_%tab88803%_
               _%key88804%_
               _%immediate-table-update!88805%_
               _%default88806%_)
        (let ((_%table88809%_ (&raw-table-table _%tab88803%_))
              (_%seed88810%_ (&raw-table-seed _%tab88803%_)))
          (let* ((_%h88812%_
                  (fxxor (immediate-hash _%key88804%_) _%seed88810%_))
                 (_%size88815%_ (vector-length _%table88809%_))
                 (_%entries88818%_ (##fxquotient _%size88815%_ '2))
                 (_%start88821%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88812%_ _%entries88818%_)
                   '1)))
            (let _%loop88825%_ ((_%probe88828%_ _%start88821%_)
                                (_%i88830%_ '1)
                                (_%deleted88832%_ '#f))
              (let ((_%k88835%_ (vector-ref _%table88809%_ _%probe88828%_)))
                (if (eq? _%k88835%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88832%_
                          (begin
                            (vector-set!
                             _%table88809%_
                             _%deleted88832%_
                             _%key88804%_)
                            (vector-set!
                             _%table88809%_
                             (##fx+ _%deleted88832%_ '1)
                             (_%immediate-table-update!88805%_
                              _%default88806%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88803%_
                                (##fx+ (&raw-table-count _%tab88803%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88809%_
                             _%probe88828%_
                             _%key88804%_)
                            (vector-set!
                             _%table88809%_
                             (##fx+ _%probe88828%_ '1)
                             (_%immediate-table-update!88805%_
                              _%default88806%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88803%_
                                (##fx- (&raw-table-free _%tab88803%_) '1))
                               (&raw-table-count-set!
                                _%tab88803%_
                                (##fx+ (&raw-table-count _%tab88803%_)
                                       '1)))))))
                    (if (eq? _%k88835%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88825%_
                           (let ((_%next-probe88842%_
                                  (fx+ _%start88821%_
                                       _%i88830%_
                                       (fx* _%i88830%_ _%i88830%_))))
                             (##fxmodulo _%next-probe88842%_ _%size88815%_))
                           (##fx+ _%i88830%_ '1)
                           (let ((_%$e88845%_ _%deleted88832%_))
                             (if _%$e88845%_ _%$e88845%_ _%probe88828%_))))
                        (if (eq? _%key88804%_ _%k88835%_)
                            (let ()
                              (vector-set!
                               _%table88809%_
                               _%probe88828%_
                               _%key88804%_)
                              (vector-set!
                               _%table88809%_
                               (##fx+ _%probe88828%_ '1)
                               (_%immediate-table-update!88805%_
                                (vector-ref
                                 _%table88809%_
                                 (##fx+ _%probe88828%_ '1)))))
                            (let ()
                              (_%loop88825%_
                               (let ((_%next-probe88850%_
                                      (fx+ _%start88821%_
                                           _%i88830%_
                                           (fx* _%i88830%_ _%i88830%_))))
                                 (##fxmodulo
                                  _%next-probe88850%_
                                  _%size88815%_))
                               (##fx+ _%i88830%_ '1)
                               _%deleted88832%_)))))))))))
    (define immediate-table-delete!
      (lambda (_%tab88758%_ _%key88760%_)
        (let ((_%table88763%_ (&raw-table-table _%tab88758%_))
              (_%seed88765%_ (&raw-table-seed _%tab88758%_)))
          (let* ((_%h88768%_
                  (fxxor (immediate-hash _%key88760%_) _%seed88765%_))
                 (_%size88771%_ (vector-length _%table88763%_))
                 (_%entries88774%_ (##fxquotient _%size88771%_ '2))
                 (_%start88777%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88768%_ _%entries88774%_)
                   '1)))
            (let _%loop88781%_ ((_%probe88784%_ _%start88777%_)
                                (_%i88786%_ '1))
              (let ((_%k88789%_ (vector-ref _%table88763%_ _%probe88784%_)))
                (if (eq? _%k88789%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k88789%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88781%_
                           (let ((_%next-probe88794%_
                                  (fx+ _%start88777%_
                                       _%i88786%_
                                       (fx* _%i88786%_ _%i88786%_))))
                             (##fxmodulo _%next-probe88794%_ _%size88771%_))
                           (##fx+ _%i88786%_ '1)))
                        (if (eq? _%key88760%_ _%k88789%_)
                            (let ()
                              (vector-set!
                               _%table88763%_
                               _%probe88784%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88763%_
                               (##fx+ _%probe88784%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88758%_
                                  (##fx- (&raw-table-count _%tab88758%_)
                                         '1)))))
                            (let ()
                              (_%loop88781%_
                               (let ((_%next-probe88800%_
                                      (fx+ _%start88777%_
                                           _%i88786%_
                                           (fx* _%i88786%_ _%i88786%_))))
                                 (##fxmodulo
                                  _%next-probe88800%_
                                  _%size88771%_))
                               (##fx+ _%i88786%_ '1))))))))))))
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
      (lambda (_%tab88756%_)
        (##unchecked-structure-ref
         _%tab88756%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab88754%_)
        (##unchecked-structure-ref
         _%tab88754%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab88751%_ _%val88752%_)
        (##unchecked-structure-set!
         _%tab88751%_
         _%val88752%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab88748%_ _%val88749%_)
        (##unchecked-structure-set!
         _%tab88748%_
         _%val88749%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint88724%_ _%klass88725%_ _%flags88726%_)
        (let ((_%gcht88728%_
               (__gc-table-new
                (if (fixnum? _%size-hint88724%_) _%size-hint88724%_ '16)
                _%flags88726%_)))
          (##structure _%klass88725%_ _%gcht88728%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint88733%_)
        (let* ((_%klass88735%_ __gc-table::t) (_%flags88737%_ '0))
          (make-gc-table__%
           _%size-hint88733%_
           _%klass88735%_
           _%flags88737%_))))
    (define make-gc-table__1
      (lambda (_%size-hint88739%_ _%klass88740%_)
        (let ((_%flags88742%_ '0))
          (make-gc-table__%
           _%size-hint88739%_
           _%klass88740%_
           _%flags88742%_))))
    (define make-gc-table
      (lambda _g90200_
        (let ((_g90199_ (##length _g90200_)))
          (cond ((##fx= _g90199_ 1)
                 (apply (lambda (_%size-hint88733%_)
                          (make-gc-table__0 _%size-hint88733%_))
                        _g90200_))
                ((##fx= _g90199_ 2)
                 (apply (lambda (_%size-hint88739%_ _%klass88740%_)
                          (make-gc-table__1 _%size-hint88739%_ _%klass88740%_))
                        _g90200_))
                ((##fx= _g90199_ 3)
                 (apply (lambda (_%size-hint88744%_
                                 _%klass88745%_
                                 _%flags88746%_)
                          (make-gc-table__%
                           _%size-hint88744%_
                           _%klass88745%_
                           _%flags88746%_))
                        _g90200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90200_))))))
    (define __gc-table-immediate
      (lambda (_%tab88715%_)
        (let ((_%$e88717%_ (&gc-table-immediate _%tab88715%_)))
          (if _%$e88717%_
              _%$e88717%_
              (let ()
                (let ((_%immediate88721%_ (make-immediate-table__% '#f '0)))
                  (&gc-table-immediate-set! _%tab88715%_ _%immediate88721%_)
                  _%immediate88721%_))))))
    (define __gc-table-new
      (lambda (_%size88705%_ _%flags88706%_)
        (let* ((_%flags88708%_
                (##fxand _%flags88706%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags88710%_
                (fxior _%flags88708%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht88712%_
                (##gc-hash-table-allocate
                 _%size88705%_
                 _%flags88710%_
                 __gc-table-loads)))
          _%gcht88712%_)))
    (define __gc-table-e
      (lambda (_%tab88700%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht88703%_ (&gc-table-gcht _%tab88700%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht88703%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht88703%_
              (begin
                (__gc-table-rehash! _%tab88700%_)
                (&gc-table-gcht _%tab88700%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab88691%_)
        (let* ((_%old-table88693%_ (&gc-table-gcht _%tab88691%_))
               (_%new-table88695%_
                (##gc-hash-table-resize! _%old-table88693%_ __gc-table-loads))
               (_%gcht88697%_
                (##gc-hash-table-rehash!
                 _%old-table88693%_
                 _%new-table88695%_)))
          (&gc-table-gcht-set! _%tab88691%_ _%gcht88697%_))))
    (define gc-table-ref
      (lambda (_%tab88675%_ _%key88676%_ _%default88677%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88676%_)
            (let ()
              (let* ((_%gcht88681%_ (__gc-table-e _%tab88675%_))
                     (_%value88683%_
                      (##gc-hash-table-ref _%gcht88681%_ _%key88676%_)))
                (if (eq? _%value88683%_ (macro-unused-obj))
                    _%default88677%_
                    _%value88683%_)))
            (let ((_%$e88685%_ (&gc-table-immediate _%tab88675%_)))
              (if _%$e88685%_
                  ((lambda (_%immediate88688%_)
                     (immediate-table-ref
                      _%immediate88688%_
                      _%key88676%_
                      _%default88677%_))
                   _%$e88685%_)
                  (let () _%default88677%_))))))
    (define gc-table-set!
      (lambda (_%tab88668%_ _%key88669%_ _%value88670%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88669%_)
            (let ((_%gcht88673%_ (__gc-table-e _%tab88668%_)))
              (if (##gc-hash-table-set!
                   _%gcht88673%_
                   _%key88669%_
                   _%value88670%_)
                  (begin
                    (__gc-table-rehash! _%tab88668%_)
                    (gc-table-set! _%tab88668%_ _%key88669%_ _%value88670%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab88668%_)
             _%key88669%_
             _%value88670%_))))
    (define gc-table-update!
      (lambda (_%tab88661%_ _%key88662%_ _%update88663%_ _%default88664%_)
        (if (##mem-allocated? _%key88662%_)
            (let ((_%value88666%_
                   (gc-table-ref _%tab88661%_ _%key88662%_ _%default88664%_)))
              (gc-table-set!
               _%tab88661%_
               _%key88662%_
               (_%update88663%_ _%value88666%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab88661%_)
             _%key88662%_
             _%update88663%_
             _%default88664%_))))
    (define gc-table-delete!
      (lambda (_%tab88649%_ _%key88650%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88650%_)
            (let ()
              (let ((_%gcht88654%_ (__gc-table-e _%tab88649%_)))
                (if (##gc-hash-table-set!
                     _%gcht88654%_
                     _%key88650%_
                     (macro-absent-obj))
                    (begin
                      (__gc-table-rehash! _%tab88649%_)
                      (gc-table-delete! _%tab88649%_ _%key88650%_))
                    '#!void)))
            (let ((_%$e88656%_ (&gc-table-immediate _%tab88649%_)))
              (if _%$e88656%_
                  ((lambda (_%immediate88659%_)
                     (immediate-table-delete! _%immediate88659%_ _%key88650%_))
                   _%$e88656%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab88630%_ _%proc88631%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht88634%_ (__gc-table-e _%tab88630%_)))
            (let _%loop88636%_ ((_%i88638%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i88638%_ (##vector-length _%gcht88634%_))
                  (let ((_%key88640%_ (##vector-ref _%gcht88634%_ _%i88638%_)))
                    (if (and (not (eq? _%key88640%_ (macro-unused-obj)))
                             (not (eq? _%key88640%_ (macro-deleted-obj))))
                        (_%proc88631%_
                         _%key88640%_
                         (##vector-ref _%gcht88634%_ (##fx+ _%i88638%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop88636%_ (##fx+ _%i88638%_ '2))))
                  '#!void)))
          (let ((_%$e88644%_ (&gc-table-immediate _%tab88630%_)))
            (if _%$e88644%_
                ((lambda (_%immediate88647%_)
                   (raw-table-for-each _%immediate88647%_ _%proc88631%_))
                 _%$e88644%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab88618%_)
        (let* ((_%gcht88620%_ (__gc-table-e _%tab88618%_))
               (_%new-table88622%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht88620%_)
                 (macro-gc-hash-table-flags _%gcht88620%_)))
               (_%result88624%_
                (##structure
                 (##structure-type _%tab88618%_)
                 _%new-table88622%_
                 '#f)))
          (gc-table-for-each
           _%tab88618%_
           (lambda (_%k88627%_ _%v88628%_)
             (gc-table-set! _%result88624%_ _%k88627%_ _%v88628%_)))
          _%result88624%_)))
    (define gc-table-clear!
      (lambda (_%tab88611%_)
        (let* ((_%gcht88613%_ (__gc-table-e _%tab88611%_))
               (_%new-table88615%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht88613%_))))
          (&gc-table-gcht-set! _%tab88611%_ _%new-table88615%_)
          (&gc-table-immediate-set! _%tab88611%_ '#f))))
    (define gc-table-length
      (lambda (_%tab88603%_)
        (let ((_%gcht88605%_ (__gc-table-e _%tab88603%_)))
          (fx+ (macro-gc-hash-table-count _%gcht88605%_)
               (let ((_%$e88607%_ (&gc-table-immediate _%tab88603%_)))
                 (if _%$e88607%_
                     (&raw-table-count _%$e88607%_)
                     (let () '0)))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj88588%_)
        (declare (not interrupts-enabled))
        (let ((_%val88591%_ (gc-table-ref __object-eq-hash _%obj88588%_ '#f)))
          (if _%val88591%_
              _%val88591%_
              (let* ((_%mix88593%_ __object-eq-hash-next)
                     (_%ptr88595%_ (##type-cast _%obj88588%_ '0))
                     (_%h88597%_
                      (fxand (fxxor _%mix88593%_ _%ptr88595%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e88600%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e88600%_ _%$e88600%_ '0)))
                (gc-table-set! __object-eq-hash _%obj88588%_ _%h88597%_)
                _%h88597%_)))))))
