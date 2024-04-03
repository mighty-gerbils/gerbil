(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712121897)
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
      (lambda (_%tab90151%_)
        (##unchecked-structure-ref
         _%tab90151%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90149%_)
        (##unchecked-structure-ref
         _%tab90149%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90147%_)
        (##unchecked-structure-ref
         _%tab90147%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90145%_)
        (##unchecked-structure-ref
         _%tab90145%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90143%_)
        (##unchecked-structure-ref
         _%tab90143%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90141%_)
        (##unchecked-structure-ref
         _%tab90141%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90138%_ _%val90139%_)
        (##unchecked-structure-set!
         _%tab90138%_
         _%val90139%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90135%_ _%val90136%_)
        (##unchecked-structure-set!
         _%tab90135%_
         _%val90136%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90132%_ _%val90133%_)
        (##unchecked-structure-set!
         _%tab90132%_
         _%val90133%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90129%_ _%val90130%_)
        (##unchecked-structure-set!
         _%tab90129%_
         _%val90130%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90126%_ _%val90127%_)
        (##unchecked-structure-set!
         _%tab90126%_
         _%val90127%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90123%_ _%val90124%_)
        (##unchecked-structure-set!
         _%tab90123%_
         _%val90124%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90121%_)
        (if (and (fixnum? _%size-hint90121%_) (##fx> _%size-hint90121%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90121%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint90097%_ _%hash90098%_ _%test90099%_ _%seed90100%_)
        (let* ((_%size90102%_ (raw-table-size-hint->size _%size-hint90097%_))
               (_%table90104%_
                (##make-vector _%size90102%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table90104%_
           '0
           (##fxquotient _%size90102%_ '2)
           _%hash90098%_
           _%test90099%_
           _%seed90100%_))))
    (define make-raw-table__0
      (lambda (_%size-hint90110%_ _%hash90111%_ _%test90112%_)
        (let ((_%seed90114%_ '0))
          (make-raw-table__%
           _%size-hint90110%_
           _%hash90111%_
           _%test90112%_
           _%seed90114%_))))
    (define make-raw-table
      (lambda _g90153_
        (let ((_g90152_ (##length _g90153_)))
          (cond ((##fx= _g90152_ 3)
                 (apply (lambda (_%size-hint90110%_
                                 _%hash90111%_
                                 _%test90112%_)
                          (make-raw-table__0
                           _%size-hint90110%_
                           _%hash90111%_
                           _%test90112%_))
                        _g90153_))
                ((##fx= _g90152_ 4)
                 (apply (lambda (_%size-hint90116%_
                                 _%hash90117%_
                                 _%test90118%_
                                 _%seed90119%_)
                          (make-raw-table__%
                           _%size-hint90116%_
                           _%hash90117%_
                           _%test90118%_
                           _%seed90119%_))
                        _g90153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90153_))))))
    (define raw-table-ref
      (lambda (_%tab90048%_ _%key90049%_ _%default90050%_)
        (let ((_%table90052%_ (&raw-table-table _%tab90048%_))
              (_%seed90053%_ (&raw-table-seed _%tab90048%_))
              (_%hash90054%_ (&raw-table-hash _%tab90048%_))
              (_%test90055%_ (&raw-table-test _%tab90048%_)))
          (let* ((_%h90057%_
                  (fxxor (_%hash90054%_ _%key90049%_) _%seed90053%_))
                 (_%size90060%_ (vector-length _%table90052%_))
                 (_%entries90063%_ (##fxquotient _%size90060%_ '2))
                 (_%start90066%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90057%_ _%entries90063%_)
                   '1)))
            (let _%loop90070%_ ((_%probe90073%_ _%start90066%_)
                                (_%i90075%_ '1)
                                (_%deleted90077%_ '#f))
              (let ((_%k90080%_ (vector-ref _%table90052%_ _%probe90073%_)))
                (if (eq? _%k90080%_ (macro-unused-obj))
                    (let () _%default90050%_)
                    (if (eq? _%k90080%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90070%_
                           (let ((_%next-probe90085%_
                                  (fx+ _%start90066%_
                                       _%i90075%_
                                       (fx* _%i90075%_ _%i90075%_))))
                             (##fxmodulo _%next-probe90085%_ _%size90060%_))
                           (##fx+ _%i90075%_ '1)
                           (let ((_%$e90088%_ _%deleted90077%_))
                             (if _%$e90088%_ _%$e90088%_ _%probe90073%_))))
                        (if (_%test90055%_ _%key90049%_ _%k90080%_)
                            (let ()
                              (vector-ref
                               _%table90052%_
                               (##fx+ _%probe90073%_ '1)))
                            (let ()
                              (_%loop90070%_
                               (let ((_%next-probe90093%_
                                      (fx+ _%start90066%_
                                           _%i90075%_
                                           (fx* _%i90075%_ _%i90075%_))))
                                 (##fxmodulo
                                  _%next-probe90093%_
                                  _%size90060%_))
                               (##fx+ _%i90075%_ '1)
                               _%deleted90077%_)))))))))))
    (define raw-table-set!
      (lambda (_%tab90044%_ _%key90045%_ _%value90046%_)
        (if (##fx< (&raw-table-free _%tab90044%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90044%_))
                    '4))
            (__raw-table-rehash! _%tab90044%_)
            '#!void)
        (__raw-table-set! _%tab90044%_ _%key90045%_ _%value90046%_)))
    (define raw-table-update!
      (lambda (_%tab90039%_ _%key90040%_ _%update90041%_ _%default90042%_)
        (if (##fx< (&raw-table-free _%tab90039%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90039%_))
                    '4))
            (__raw-table-rehash! _%tab90039%_)
            '#!void)
        (__raw-table-update!
         _%tab90039%_
         _%key90040%_
         _%update90041%_
         _%default90042%_)))
    (define raw-table-delete!
      (lambda (_%tab89996%_ _%key89997%_)
        (let ((_%table89999%_ (&raw-table-table _%tab89996%_))
              (_%seed90000%_ (&raw-table-seed _%tab89996%_))
              (_%hash90001%_ (&raw-table-hash _%tab89996%_))
              (_%test90002%_ (&raw-table-test _%tab89996%_)))
          (let* ((_%h90004%_
                  (fxxor (_%hash90001%_ _%key89997%_) _%seed90000%_))
                 (_%size90007%_ (vector-length _%table89999%_))
                 (_%entries90010%_ (##fxquotient _%size90007%_ '2))
                 (_%start90013%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90004%_ _%entries90010%_)
                   '1)))
            (let _%loop90017%_ ((_%probe90020%_ _%start90013%_)
                                (_%i90022%_ '1))
              (let ((_%k90025%_ (vector-ref _%table89999%_ _%probe90020%_)))
                (if (eq? _%k90025%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k90025%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90017%_
                           (let ((_%next-probe90030%_
                                  (fx+ _%start90013%_
                                       _%i90022%_
                                       (fx* _%i90022%_ _%i90022%_))))
                             (##fxmodulo _%next-probe90030%_ _%size90007%_))
                           (##fx+ _%i90022%_ '1)))
                        (if (_%test90002%_ _%key89997%_ _%k90025%_)
                            (let ()
                              (vector-set!
                               _%table89999%_
                               _%probe90020%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89999%_
                               (##fx+ _%probe90020%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89996%_
                                  (##fx- (&raw-table-count _%tab89996%_)
                                         '1)))))
                            (let ()
                              (_%loop90017%_
                               (let ((_%next-probe90036%_
                                      (fx+ _%start90013%_
                                           _%i90022%_
                                           (fx* _%i90022%_ _%i90022%_))))
                                 (##fxmodulo
                                  _%next-probe90036%_
                                  _%size90007%_))
                               (##fx+ _%i90022%_ '1))))))))))))
    (define raw-table-for-each
      (lambda (_%tab89980%_ _%proc89981%_)
        (let* ((_%table89983%_ (&raw-table-table _%tab89980%_))
               (_%size89985%_ (vector-length _%table89983%_)))
          (let _%loop89988%_ ((_%i89990%_ '0))
            (if (##fx< _%i89990%_ _%size89985%_)
                (begin
                  (let ((_%key89992%_ (vector-ref _%table89983%_ _%i89990%_)))
                    (if (and (not (eq? _%key89992%_ (macro-unused-obj)))
                             (not (eq? _%key89992%_ (macro-deleted-obj))))
                        (let ((_%value89994%_
                               (vector-ref
                                _%table89983%_
                                (##fx+ _%i89990%_ '1))))
                          (_%proc89981%_ _%key89992%_ _%value89994%_))
                        '#!void))
                  (_%loop89988%_ (##fx+ _%i89990%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab89976%_)
        (let ((_%new-tab89978%_ (##structure-copy _%tab89976%_)))
          (&raw-table-table-set!
           _%new-tab89978%_
           (vector-copy (&raw-table-table _%tab89976%_)))
          _%new-tab89978%_)))
    (define raw-table-clear!
      (lambda (_%tab89974%_)
        (vector-fill! (&raw-table-table _%tab89974%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab89974%_ '0)
        (&raw-table-free-set!
         _%tab89974%_
         (##fxquotient (vector-length (&raw-table-table _%tab89974%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab89924%_ _%key89925%_ _%value89926%_)
        (let ((_%table89928%_ (&raw-table-table _%tab89924%_))
              (_%seed89929%_ (&raw-table-seed _%tab89924%_))
              (_%hash89930%_ (&raw-table-hash _%tab89924%_))
              (_%test89931%_ (&raw-table-test _%tab89924%_)))
          (let* ((_%h89933%_
                  (fxxor (_%hash89930%_ _%key89925%_) _%seed89929%_))
                 (_%size89936%_ (vector-length _%table89928%_))
                 (_%entries89939%_ (##fxquotient _%size89936%_ '2))
                 (_%start89942%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89933%_ _%entries89939%_)
                   '1)))
            (let _%loop89946%_ ((_%probe89949%_ _%start89942%_)
                                (_%i89951%_ '1)
                                (_%deleted89953%_ '#f))
              (let ((_%k89956%_ (vector-ref _%table89928%_ _%probe89949%_)))
                (if (eq? _%k89956%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89953%_
                          (begin
                            (vector-set!
                             _%table89928%_
                             _%deleted89953%_
                             _%key89925%_)
                            (vector-set!
                             _%table89928%_
                             (##fx+ _%deleted89953%_ '1)
                             _%value89926%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89924%_
                                (##fx+ (&raw-table-count _%tab89924%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89928%_
                             _%probe89949%_
                             _%key89925%_)
                            (vector-set!
                             _%table89928%_
                             (##fx+ _%probe89949%_ '1)
                             _%value89926%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89924%_
                                (##fx- (&raw-table-free _%tab89924%_) '1))
                               (&raw-table-count-set!
                                _%tab89924%_
                                (##fx+ (&raw-table-count _%tab89924%_)
                                       '1)))))))
                    (if (eq? _%k89956%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89946%_
                           (let ((_%next-probe89963%_
                                  (fx+ _%start89942%_
                                       _%i89951%_
                                       (fx* _%i89951%_ _%i89951%_))))
                             (##fxmodulo _%next-probe89963%_ _%size89936%_))
                           (##fx+ _%i89951%_ '1)
                           (let ((_%$e89966%_ _%deleted89953%_))
                             (if _%$e89966%_ _%$e89966%_ _%probe89949%_))))
                        (if (_%test89931%_ _%key89925%_ _%k89956%_)
                            (let ()
                              (vector-set!
                               _%table89928%_
                               _%probe89949%_
                               _%key89925%_)
                              (vector-set!
                               _%table89928%_
                               (##fx+ _%probe89949%_ '1)
                               _%value89926%_))
                            (let ()
                              (_%loop89946%_
                               (let ((_%next-probe89971%_
                                      (fx+ _%start89942%_
                                           _%i89951%_
                                           (fx* _%i89951%_ _%i89951%_))))
                                 (##fxmodulo
                                  _%next-probe89971%_
                                  _%size89936%_))
                               (##fx+ _%i89951%_ '1)
                               _%deleted89953%_)))))))))))
    (define __raw-table-update!
      (lambda (_%tab89873%_ _%key89874%_ _%update89875%_ _%default89876%_)
        (let ((_%table89878%_ (&raw-table-table _%tab89873%_))
              (_%seed89879%_ (&raw-table-seed _%tab89873%_))
              (_%hash89880%_ (&raw-table-hash _%tab89873%_))
              (_%test89881%_ (&raw-table-test _%tab89873%_)))
          (let* ((_%h89883%_
                  (fxxor (_%hash89880%_ _%key89874%_) _%seed89879%_))
                 (_%size89886%_ (vector-length _%table89878%_))
                 (_%entries89889%_ (##fxquotient _%size89886%_ '2))
                 (_%start89892%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89883%_ _%entries89889%_)
                   '1)))
            (let _%loop89896%_ ((_%probe89899%_ _%start89892%_)
                                (_%i89901%_ '1)
                                (_%deleted89903%_ '#f))
              (let ((_%k89906%_ (vector-ref _%table89878%_ _%probe89899%_)))
                (if (eq? _%k89906%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89903%_
                          (begin
                            (vector-set!
                             _%table89878%_
                             _%deleted89903%_
                             _%key89874%_)
                            (vector-set!
                             _%table89878%_
                             (##fx+ _%deleted89903%_ '1)
                             (_%update89875%_ _%default89876%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89873%_
                                (##fx+ (&raw-table-count _%tab89873%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89878%_
                             _%probe89899%_
                             _%key89874%_)
                            (vector-set!
                             _%table89878%_
                             (##fx+ _%probe89899%_ '1)
                             (_%update89875%_ _%default89876%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89873%_
                                (##fx- (&raw-table-free _%tab89873%_) '1))
                               (&raw-table-count-set!
                                _%tab89873%_
                                (##fx+ (&raw-table-count _%tab89873%_)
                                       '1)))))))
                    (if (eq? _%k89906%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89896%_
                           (let ((_%next-probe89913%_
                                  (fx+ _%start89892%_
                                       _%i89901%_
                                       (fx* _%i89901%_ _%i89901%_))))
                             (##fxmodulo _%next-probe89913%_ _%size89886%_))
                           (##fx+ _%i89901%_ '1)
                           (let ((_%$e89916%_ _%deleted89903%_))
                             (if _%$e89916%_ _%$e89916%_ _%probe89899%_))))
                        (if (_%test89881%_ _%key89874%_ _%k89906%_)
                            (let ()
                              (vector-set!
                               _%table89878%_
                               _%probe89899%_
                               _%key89874%_)
                              (vector-set!
                               _%table89878%_
                               (##fx+ _%probe89899%_ '1)
                               (_%update89875%_
                                (vector-ref
                                 _%table89878%_
                                 (##fx+ _%probe89899%_ '1)))))
                            (let ()
                              (_%loop89896%_
                               (let ((_%next-probe89921%_
                                      (fx+ _%start89892%_
                                           _%i89901%_
                                           (fx* _%i89901%_ _%i89901%_))))
                                 (##fxmodulo
                                  _%next-probe89921%_
                                  _%size89886%_))
                               (##fx+ _%i89901%_ '1)
                               _%deleted89903%_)))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab89854%_)
        (let* ((_%old-table89856%_ (&raw-table-table _%tab89854%_))
               (_%old-size89858%_ (vector-length _%old-table89856%_))
               (_%new-size89860%_
                (if (##fx< (&raw-table-count _%tab89854%_)
                           (##fxquotient _%old-size89858%_ '4))
                    (vector-length _%old-table89856%_)
                    (##fx* '2 (vector-length _%old-table89856%_))))
               (_%new-table89862%_
                (##make-vector _%new-size89860%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab89854%_ _%new-table89862%_)
          (&raw-table-count-set! _%tab89854%_ '0)
          (&raw-table-free-set!
           _%tab89854%_
           (##fxquotient _%new-size89860%_ '2))
          (let _%lp89865%_ ((_%i89867%_ '0))
            (if (##fx< _%i89867%_ _%old-size89858%_)
                (begin
                  (let ((_%key89869%_
                         (vector-ref _%old-table89856%_ _%i89867%_)))
                    (if (and (not (eq? _%key89869%_ (macro-unused-obj)))
                             (not (eq? _%key89869%_ (macro-deleted-obj))))
                        (let ((_%value89871%_
                               (vector-ref
                                _%old-table89856%_
                                (##fx+ _%i89867%_ '1))))
                          (__raw-table-set!
                           _%tab89854%_
                           _%key89869%_
                           _%value89871%_))
                        '#!void))
                  (_%lp89865%_ (##fx+ _%i89867%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj89846%_)
        (let ((_%t89848%_ (##type _%obj89846%_)))
          (if (##fx= (##fxand _%t89848%_ '1) '0)
              (let ()
                (fxand (##type-cast _%obj89846%_ (macro-type-fixnum))
                       (macro-max-fixnum32)))
              (if (symbolic? _%obj89846%_)
                  (let () (symbolic-hash _%obj89846%_))
                  (if (procedure? _%obj89846%_)
                      (let () (procedure-hash _%obj89846%_))
                      (let ()
                        (fxand (__eq-hash _%obj89846%_)
                               (macro-max-fixnum32)))))))))
    (define procedure-hash
      (lambda (_%obj89842%_)
        (let ((_%h89844%_
               (if (##closure? _%obj89842%_)
                   (__eq-hash _%obj89842%_)
                   (##type-cast _%obj89842%_ '0))))
          (fxand _%h89844%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj89839%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj89839%_)))
    (define eqv-hash
      (lambda (_%obj89829%_)
        (letrec ((_%combine89831%_
                  (lambda (_%a89836%_ _%b89837%_)
                    (fxand (##fx* (##fx+ _%a89836%_
                                         (fxarithmetic-shift-left
                                          _%b89837%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash89832%_
                  (lambda (_%obj89834%_)
                    (macro-number-dispatch
                     _%obj89834%_
                     (eq-hash _%obj89834%_)
                     (fxand _%obj89834%_ (macro-max-fixnum32))
                     (modulo _%obj89834%_ '331804481)
                     (_%combine89831%_
                      (_%hash89832%_ (macro-ratnum-numerator _%obj89834%_))
                      (_%hash89832%_ (macro-ratnum-denominator _%obj89834%_)))
                     (_%combine89831%_
                      (##u16vector-ref _%obj89834%_ '0)
                      (_%combine89831%_
                       (##u16vector-ref _%obj89834%_ '1)
                       (_%combine89831%_
                        (##u16vector-ref _%obj89834%_ '2)
                        (##u16vector-ref _%obj89834%_ '3))))
                     (_%combine89831%_
                      (_%hash89832%_ (macro-cpxnum-real _%obj89834%_))
                      (_%hash89832%_ (macro-cpxnum-imag _%obj89834%_)))))))
          (_%hash89832%_ _%obj89829%_))))
    (define symbolic?
      (lambda (_%obj89824%_)
        (let ((_%$e89826%_ (symbol? _%obj89824%_)))
          (if _%$e89826%_ _%$e89826%_ (keyword? _%obj89824%_)))))
    (define symbolic-hash (lambda (_%obj89822%_) (macro-slot '1 _%obj89822%_)))
    (define string-hash (lambda (_%obj89820%_) (##string=?-hash _%obj89820%_)))
    (define immediate-hash
      (lambda (_%obj89818%_) (##type-cast _%obj89818%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint89799%_ _%seed89801%_)
        (make-raw-table__% _%size-hint89799%_ eq-hash eq? _%seed89801%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint89807%_ '#f) (_%seed89809%_ '0))
          (make-eq-table__% _%size-hint89807%_ _%seed89809%_))))
    (define make-eq-table__1
      (lambda (_%size-hint89811%_)
        (let ((_%seed89813%_ '0))
          (make-eq-table__% _%size-hint89811%_ _%seed89813%_))))
    (define make-eq-table
      (lambda _g90155_
        (let ((_g90154_ (##length _g90155_)))
          (cond ((##fx= _g90154_ 0)
                 (apply (lambda () (make-eq-table__0)) _g90155_))
                ((##fx= _g90154_ 1)
                 (apply (lambda (_%size-hint89811%_)
                          (make-eq-table__1 _%size-hint89811%_))
                        _g90155_))
                ((##fx= _g90154_ 2)
                 (apply (lambda (_%size-hint89815%_ _%seed89816%_)
                          (make-eq-table__% _%size-hint89815%_ _%seed89816%_))
                        _g90155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90155_))))))
    (define eq-table-ref
      (lambda (_%tab89752%_ _%key89753%_ _%default89754%_)
        (let ((_%table89756%_ (&raw-table-table _%tab89752%_))
              (_%seed89757%_ (&raw-table-seed _%tab89752%_)))
          (let* ((_%h89759%_ (fxxor (eq-hash _%key89753%_) _%seed89757%_))
                 (_%size89762%_ (vector-length _%table89756%_))
                 (_%entries89765%_ (##fxquotient _%size89762%_ '2))
                 (_%start89768%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89759%_ _%entries89765%_)
                   '1)))
            (let _%loop89772%_ ((_%probe89775%_ _%start89768%_)
                                (_%i89777%_ '1)
                                (_%deleted89779%_ '#f))
              (let ((_%k89782%_ (vector-ref _%table89756%_ _%probe89775%_)))
                (if (eq? _%k89782%_ (macro-unused-obj))
                    (let () _%default89754%_)
                    (if (eq? _%k89782%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89772%_
                           (let ((_%next-probe89787%_
                                  (fx+ _%start89768%_
                                       _%i89777%_
                                       (fx* _%i89777%_ _%i89777%_))))
                             (##fxmodulo _%next-probe89787%_ _%size89762%_))
                           (##fx+ _%i89777%_ '1)
                           (let ((_%$e89790%_ _%deleted89779%_))
                             (if _%$e89790%_ _%$e89790%_ _%probe89775%_))))
                        (if (eq? _%key89753%_ _%k89782%_)
                            (let ()
                              (vector-ref
                               _%table89756%_
                               (##fx+ _%probe89775%_ '1)))
                            (let ()
                              (_%loop89772%_
                               (let ((_%next-probe89795%_
                                      (fx+ _%start89768%_
                                           _%i89777%_
                                           (fx* _%i89777%_ _%i89777%_))))
                                 (##fxmodulo
                                  _%next-probe89795%_
                                  _%size89762%_))
                               (##fx+ _%i89777%_ '1)
                               _%deleted89779%_)))))))))))
    (define eq-table-set!
      (lambda (_%tab89748%_ _%key89749%_ _%value89750%_)
        (if (##fx< (&raw-table-free _%tab89748%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89748%_))
                    '4))
            (__raw-table-rehash! _%tab89748%_)
            '#!void)
        (__eq-table-set! _%tab89748%_ _%key89749%_ _%value89750%_)))
    (define __eq-table-set!
      (lambda (_%tab89699%_ _%key89700%_ _%value89701%_)
        (let ((_%table89704%_ (&raw-table-table _%tab89699%_))
              (_%seed89705%_ (&raw-table-seed _%tab89699%_)))
          (let* ((_%h89707%_ (fxxor (eq-hash _%key89700%_) _%seed89705%_))
                 (_%size89710%_ (vector-length _%table89704%_))
                 (_%entries89713%_ (##fxquotient _%size89710%_ '2))
                 (_%start89716%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89707%_ _%entries89713%_)
                   '1)))
            (let _%loop89720%_ ((_%probe89723%_ _%start89716%_)
                                (_%i89725%_ '1)
                                (_%deleted89727%_ '#f))
              (let ((_%k89730%_ (vector-ref _%table89704%_ _%probe89723%_)))
                (if (eq? _%k89730%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89727%_
                          (begin
                            (vector-set!
                             _%table89704%_
                             _%deleted89727%_
                             _%key89700%_)
                            (vector-set!
                             _%table89704%_
                             (##fx+ _%deleted89727%_ '1)
                             _%value89701%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89699%_
                                (##fx+ (&raw-table-count _%tab89699%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89704%_
                             _%probe89723%_
                             _%key89700%_)
                            (vector-set!
                             _%table89704%_
                             (##fx+ _%probe89723%_ '1)
                             _%value89701%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89699%_
                                (##fx- (&raw-table-free _%tab89699%_) '1))
                               (&raw-table-count-set!
                                _%tab89699%_
                                (##fx+ (&raw-table-count _%tab89699%_)
                                       '1)))))))
                    (if (eq? _%k89730%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89720%_
                           (let ((_%next-probe89737%_
                                  (fx+ _%start89716%_
                                       _%i89725%_
                                       (fx* _%i89725%_ _%i89725%_))))
                             (##fxmodulo _%next-probe89737%_ _%size89710%_))
                           (##fx+ _%i89725%_ '1)
                           (let ((_%$e89740%_ _%deleted89727%_))
                             (if _%$e89740%_ _%$e89740%_ _%probe89723%_))))
                        (if (eq? _%key89700%_ _%k89730%_)
                            (let ()
                              (vector-set!
                               _%table89704%_
                               _%probe89723%_
                               _%key89700%_)
                              (vector-set!
                               _%table89704%_
                               (##fx+ _%probe89723%_ '1)
                               _%value89701%_))
                            (let ()
                              (_%loop89720%_
                               (let ((_%next-probe89745%_
                                      (fx+ _%start89716%_
                                           _%i89725%_
                                           (fx* _%i89725%_ _%i89725%_))))
                                 (##fxmodulo
                                  _%next-probe89745%_
                                  _%size89710%_))
                               (##fx+ _%i89725%_ '1)
                               _%deleted89727%_)))))))))))
    (define eq-table-update!
      (lambda (_%tab89694%_
               _%key89695%_
               _%eq-table-update!89696%_
               _%default89697%_)
        (if (##fx< (&raw-table-free _%tab89694%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89694%_))
                    '4))
            (__raw-table-rehash! _%tab89694%_)
            '#!void)
        (__eq-table-update!
         _%tab89694%_
         _%key89695%_
         _%eq-table-update!89696%_
         _%default89697%_)))
    (define __eq-table-update!
      (lambda (_%tab89644%_
               _%key89645%_
               _%eq-table-update!89646%_
               _%default89647%_)
        (let ((_%table89650%_ (&raw-table-table _%tab89644%_))
              (_%seed89651%_ (&raw-table-seed _%tab89644%_)))
          (let* ((_%h89653%_ (fxxor (eq-hash _%key89645%_) _%seed89651%_))
                 (_%size89656%_ (vector-length _%table89650%_))
                 (_%entries89659%_ (##fxquotient _%size89656%_ '2))
                 (_%start89662%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89653%_ _%entries89659%_)
                   '1)))
            (let _%loop89666%_ ((_%probe89669%_ _%start89662%_)
                                (_%i89671%_ '1)
                                (_%deleted89673%_ '#f))
              (let ((_%k89676%_ (vector-ref _%table89650%_ _%probe89669%_)))
                (if (eq? _%k89676%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89673%_
                          (begin
                            (vector-set!
                             _%table89650%_
                             _%deleted89673%_
                             _%key89645%_)
                            (vector-set!
                             _%table89650%_
                             (##fx+ _%deleted89673%_ '1)
                             (_%eq-table-update!89646%_ _%default89647%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89644%_
                                (##fx+ (&raw-table-count _%tab89644%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89650%_
                             _%probe89669%_
                             _%key89645%_)
                            (vector-set!
                             _%table89650%_
                             (##fx+ _%probe89669%_ '1)
                             (_%eq-table-update!89646%_ _%default89647%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89644%_
                                (##fx- (&raw-table-free _%tab89644%_) '1))
                               (&raw-table-count-set!
                                _%tab89644%_
                                (##fx+ (&raw-table-count _%tab89644%_)
                                       '1)))))))
                    (if (eq? _%k89676%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89666%_
                           (let ((_%next-probe89683%_
                                  (fx+ _%start89662%_
                                       _%i89671%_
                                       (fx* _%i89671%_ _%i89671%_))))
                             (##fxmodulo _%next-probe89683%_ _%size89656%_))
                           (##fx+ _%i89671%_ '1)
                           (let ((_%$e89686%_ _%deleted89673%_))
                             (if _%$e89686%_ _%$e89686%_ _%probe89669%_))))
                        (if (eq? _%key89645%_ _%k89676%_)
                            (let ()
                              (vector-set!
                               _%table89650%_
                               _%probe89669%_
                               _%key89645%_)
                              (vector-set!
                               _%table89650%_
                               (##fx+ _%probe89669%_ '1)
                               (_%eq-table-update!89646%_
                                (vector-ref
                                 _%table89650%_
                                 (##fx+ _%probe89669%_ '1)))))
                            (let ()
                              (_%loop89666%_
                               (let ((_%next-probe89691%_
                                      (fx+ _%start89662%_
                                           _%i89671%_
                                           (fx* _%i89671%_ _%i89671%_))))
                                 (##fxmodulo
                                  _%next-probe89691%_
                                  _%size89656%_))
                               (##fx+ _%i89671%_ '1)
                               _%deleted89673%_)))))))))))
    (define eq-table-delete!
      (lambda (_%tab89599%_ _%key89601%_)
        (let ((_%table89604%_ (&raw-table-table _%tab89599%_))
              (_%seed89606%_ (&raw-table-seed _%tab89599%_)))
          (let* ((_%h89609%_ (fxxor (eq-hash _%key89601%_) _%seed89606%_))
                 (_%size89612%_ (vector-length _%table89604%_))
                 (_%entries89615%_ (##fxquotient _%size89612%_ '2))
                 (_%start89618%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89609%_ _%entries89615%_)
                   '1)))
            (let _%loop89622%_ ((_%probe89625%_ _%start89618%_)
                                (_%i89627%_ '1))
              (let ((_%k89630%_ (vector-ref _%table89604%_ _%probe89625%_)))
                (if (eq? _%k89630%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89630%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89622%_
                           (let ((_%next-probe89635%_
                                  (fx+ _%start89618%_
                                       _%i89627%_
                                       (fx* _%i89627%_ _%i89627%_))))
                             (##fxmodulo _%next-probe89635%_ _%size89612%_))
                           (##fx+ _%i89627%_ '1)))
                        (if (eq? _%key89601%_ _%k89630%_)
                            (let ()
                              (vector-set!
                               _%table89604%_
                               _%probe89625%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89604%_
                               (##fx+ _%probe89625%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89599%_
                                  (##fx- (&raw-table-count _%tab89599%_)
                                         '1)))))
                            (let ()
                              (_%loop89622%_
                               (let ((_%next-probe89641%_
                                      (fx+ _%start89618%_
                                           _%i89627%_
                                           (fx* _%i89627%_ _%i89627%_))))
                                 (##fxmodulo
                                  _%next-probe89641%_
                                  _%size89612%_))
                               (##fx+ _%i89627%_ '1))))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint89580%_ _%seed89582%_)
        (make-raw-table__% _%size-hint89580%_ eqv-hash eqv? _%seed89582%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint89588%_ '#f) (_%seed89590%_ '0))
          (make-eqv-table__% _%size-hint89588%_ _%seed89590%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint89592%_)
        (let ((_%seed89594%_ '0))
          (make-eqv-table__% _%size-hint89592%_ _%seed89594%_))))
    (define make-eqv-table
      (lambda _g90157_
        (let ((_g90156_ (##length _g90157_)))
          (cond ((##fx= _g90156_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g90157_))
                ((##fx= _g90156_ 1)
                 (apply (lambda (_%size-hint89592%_)
                          (make-eqv-table__1 _%size-hint89592%_))
                        _g90157_))
                ((##fx= _g90156_ 2)
                 (apply (lambda (_%size-hint89596%_ _%seed89597%_)
                          (make-eqv-table__% _%size-hint89596%_ _%seed89597%_))
                        _g90157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90157_))))))
    (define eqv-table-ref
      (lambda (_%tab89533%_ _%key89534%_ _%default89535%_)
        (let ((_%table89537%_ (&raw-table-table _%tab89533%_))
              (_%seed89538%_ (&raw-table-seed _%tab89533%_)))
          (let* ((_%h89540%_ (fxxor (eqv-hash _%key89534%_) _%seed89538%_))
                 (_%size89543%_ (vector-length _%table89537%_))
                 (_%entries89546%_ (##fxquotient _%size89543%_ '2))
                 (_%start89549%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89540%_ _%entries89546%_)
                   '1)))
            (let _%loop89553%_ ((_%probe89556%_ _%start89549%_)
                                (_%i89558%_ '1)
                                (_%deleted89560%_ '#f))
              (let ((_%k89563%_ (vector-ref _%table89537%_ _%probe89556%_)))
                (if (eq? _%k89563%_ (macro-unused-obj))
                    (let () _%default89535%_)
                    (if (eq? _%k89563%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89553%_
                           (let ((_%next-probe89568%_
                                  (fx+ _%start89549%_
                                       _%i89558%_
                                       (fx* _%i89558%_ _%i89558%_))))
                             (##fxmodulo _%next-probe89568%_ _%size89543%_))
                           (##fx+ _%i89558%_ '1)
                           (let ((_%$e89571%_ _%deleted89560%_))
                             (if _%$e89571%_ _%$e89571%_ _%probe89556%_))))
                        (if (eqv? _%key89534%_ _%k89563%_)
                            (let ()
                              (vector-ref
                               _%table89537%_
                               (##fx+ _%probe89556%_ '1)))
                            (let ()
                              (_%loop89553%_
                               (let ((_%next-probe89576%_
                                      (fx+ _%start89549%_
                                           _%i89558%_
                                           (fx* _%i89558%_ _%i89558%_))))
                                 (##fxmodulo
                                  _%next-probe89576%_
                                  _%size89543%_))
                               (##fx+ _%i89558%_ '1)
                               _%deleted89560%_)))))))))))
    (define eqv-table-set!
      (lambda (_%tab89529%_ _%key89530%_ _%value89531%_)
        (if (##fx< (&raw-table-free _%tab89529%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89529%_))
                    '4))
            (__raw-table-rehash! _%tab89529%_)
            '#!void)
        (__eqv-table-set! _%tab89529%_ _%key89530%_ _%value89531%_)))
    (define __eqv-table-set!
      (lambda (_%tab89480%_ _%key89481%_ _%value89482%_)
        (let ((_%table89485%_ (&raw-table-table _%tab89480%_))
              (_%seed89486%_ (&raw-table-seed _%tab89480%_)))
          (let* ((_%h89488%_ (fxxor (eqv-hash _%key89481%_) _%seed89486%_))
                 (_%size89491%_ (vector-length _%table89485%_))
                 (_%entries89494%_ (##fxquotient _%size89491%_ '2))
                 (_%start89497%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89488%_ _%entries89494%_)
                   '1)))
            (let _%loop89501%_ ((_%probe89504%_ _%start89497%_)
                                (_%i89506%_ '1)
                                (_%deleted89508%_ '#f))
              (let ((_%k89511%_ (vector-ref _%table89485%_ _%probe89504%_)))
                (if (eq? _%k89511%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89508%_
                          (begin
                            (vector-set!
                             _%table89485%_
                             _%deleted89508%_
                             _%key89481%_)
                            (vector-set!
                             _%table89485%_
                             (##fx+ _%deleted89508%_ '1)
                             _%value89482%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89480%_
                                (##fx+ (&raw-table-count _%tab89480%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89485%_
                             _%probe89504%_
                             _%key89481%_)
                            (vector-set!
                             _%table89485%_
                             (##fx+ _%probe89504%_ '1)
                             _%value89482%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89480%_
                                (##fx- (&raw-table-free _%tab89480%_) '1))
                               (&raw-table-count-set!
                                _%tab89480%_
                                (##fx+ (&raw-table-count _%tab89480%_)
                                       '1)))))))
                    (if (eq? _%k89511%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89501%_
                           (let ((_%next-probe89518%_
                                  (fx+ _%start89497%_
                                       _%i89506%_
                                       (fx* _%i89506%_ _%i89506%_))))
                             (##fxmodulo _%next-probe89518%_ _%size89491%_))
                           (##fx+ _%i89506%_ '1)
                           (let ((_%$e89521%_ _%deleted89508%_))
                             (if _%$e89521%_ _%$e89521%_ _%probe89504%_))))
                        (if (eqv? _%key89481%_ _%k89511%_)
                            (let ()
                              (vector-set!
                               _%table89485%_
                               _%probe89504%_
                               _%key89481%_)
                              (vector-set!
                               _%table89485%_
                               (##fx+ _%probe89504%_ '1)
                               _%value89482%_))
                            (let ()
                              (_%loop89501%_
                               (let ((_%next-probe89526%_
                                      (fx+ _%start89497%_
                                           _%i89506%_
                                           (fx* _%i89506%_ _%i89506%_))))
                                 (##fxmodulo
                                  _%next-probe89526%_
                                  _%size89491%_))
                               (##fx+ _%i89506%_ '1)
                               _%deleted89508%_)))))))))))
    (define eqv-table-update!
      (lambda (_%tab89475%_
               _%key89476%_
               _%eqv-table-update!89477%_
               _%default89478%_)
        (if (##fx< (&raw-table-free _%tab89475%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89475%_))
                    '4))
            (__raw-table-rehash! _%tab89475%_)
            '#!void)
        (__eqv-table-update!
         _%tab89475%_
         _%key89476%_
         _%eqv-table-update!89477%_
         _%default89478%_)))
    (define __eqv-table-update!
      (lambda (_%tab89425%_
               _%key89426%_
               _%eqv-table-update!89427%_
               _%default89428%_)
        (let ((_%table89431%_ (&raw-table-table _%tab89425%_))
              (_%seed89432%_ (&raw-table-seed _%tab89425%_)))
          (let* ((_%h89434%_ (fxxor (eqv-hash _%key89426%_) _%seed89432%_))
                 (_%size89437%_ (vector-length _%table89431%_))
                 (_%entries89440%_ (##fxquotient _%size89437%_ '2))
                 (_%start89443%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89434%_ _%entries89440%_)
                   '1)))
            (let _%loop89447%_ ((_%probe89450%_ _%start89443%_)
                                (_%i89452%_ '1)
                                (_%deleted89454%_ '#f))
              (let ((_%k89457%_ (vector-ref _%table89431%_ _%probe89450%_)))
                (if (eq? _%k89457%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89454%_
                          (begin
                            (vector-set!
                             _%table89431%_
                             _%deleted89454%_
                             _%key89426%_)
                            (vector-set!
                             _%table89431%_
                             (##fx+ _%deleted89454%_ '1)
                             (_%eqv-table-update!89427%_ _%default89428%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89425%_
                                (##fx+ (&raw-table-count _%tab89425%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89431%_
                             _%probe89450%_
                             _%key89426%_)
                            (vector-set!
                             _%table89431%_
                             (##fx+ _%probe89450%_ '1)
                             (_%eqv-table-update!89427%_ _%default89428%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89425%_
                                (##fx- (&raw-table-free _%tab89425%_) '1))
                               (&raw-table-count-set!
                                _%tab89425%_
                                (##fx+ (&raw-table-count _%tab89425%_)
                                       '1)))))))
                    (if (eq? _%k89457%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89447%_
                           (let ((_%next-probe89464%_
                                  (fx+ _%start89443%_
                                       _%i89452%_
                                       (fx* _%i89452%_ _%i89452%_))))
                             (##fxmodulo _%next-probe89464%_ _%size89437%_))
                           (##fx+ _%i89452%_ '1)
                           (let ((_%$e89467%_ _%deleted89454%_))
                             (if _%$e89467%_ _%$e89467%_ _%probe89450%_))))
                        (if (eqv? _%key89426%_ _%k89457%_)
                            (let ()
                              (vector-set!
                               _%table89431%_
                               _%probe89450%_
                               _%key89426%_)
                              (vector-set!
                               _%table89431%_
                               (##fx+ _%probe89450%_ '1)
                               (_%eqv-table-update!89427%_
                                (vector-ref
                                 _%table89431%_
                                 (##fx+ _%probe89450%_ '1)))))
                            (let ()
                              (_%loop89447%_
                               (let ((_%next-probe89472%_
                                      (fx+ _%start89443%_
                                           _%i89452%_
                                           (fx* _%i89452%_ _%i89452%_))))
                                 (##fxmodulo
                                  _%next-probe89472%_
                                  _%size89437%_))
                               (##fx+ _%i89452%_ '1)
                               _%deleted89454%_)))))))))))
    (define eqv-table-delete!
      (lambda (_%tab89380%_ _%key89382%_)
        (let ((_%table89385%_ (&raw-table-table _%tab89380%_))
              (_%seed89387%_ (&raw-table-seed _%tab89380%_)))
          (let* ((_%h89390%_ (fxxor (eqv-hash _%key89382%_) _%seed89387%_))
                 (_%size89393%_ (vector-length _%table89385%_))
                 (_%entries89396%_ (##fxquotient _%size89393%_ '2))
                 (_%start89399%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89390%_ _%entries89396%_)
                   '1)))
            (let _%loop89403%_ ((_%probe89406%_ _%start89399%_)
                                (_%i89408%_ '1))
              (let ((_%k89411%_ (vector-ref _%table89385%_ _%probe89406%_)))
                (if (eq? _%k89411%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89411%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89403%_
                           (let ((_%next-probe89416%_
                                  (fx+ _%start89399%_
                                       _%i89408%_
                                       (fx* _%i89408%_ _%i89408%_))))
                             (##fxmodulo _%next-probe89416%_ _%size89393%_))
                           (##fx+ _%i89408%_ '1)))
                        (if (eqv? _%key89382%_ _%k89411%_)
                            (let ()
                              (vector-set!
                               _%table89385%_
                               _%probe89406%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89385%_
                               (##fx+ _%probe89406%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89380%_
                                  (##fx- (&raw-table-count _%tab89380%_)
                                         '1)))))
                            (let ()
                              (_%loop89403%_
                               (let ((_%next-probe89422%_
                                      (fx+ _%start89399%_
                                           _%i89408%_
                                           (fx* _%i89408%_ _%i89408%_))))
                                 (##fxmodulo
                                  _%next-probe89422%_
                                  _%size89393%_))
                               (##fx+ _%i89408%_ '1))))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint89361%_ _%seed89363%_)
        (make-raw-table__%
         _%size-hint89361%_
         symbolic-hash
         eq?
         _%seed89363%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint89369%_ '#f) (_%seed89371%_ '0))
          (make-symbolic-table__% _%size-hint89369%_ _%seed89371%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint89373%_)
        (let ((_%seed89375%_ '0))
          (make-symbolic-table__% _%size-hint89373%_ _%seed89375%_))))
    (define make-symbolic-table
      (lambda _g90159_
        (let ((_g90158_ (##length _g90159_)))
          (cond ((##fx= _g90158_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g90159_))
                ((##fx= _g90158_ 1)
                 (apply (lambda (_%size-hint89373%_)
                          (make-symbolic-table__1 _%size-hint89373%_))
                        _g90159_))
                ((##fx= _g90158_ 2)
                 (apply (lambda (_%size-hint89377%_ _%seed89378%_)
                          (make-symbolic-table__%
                           _%size-hint89377%_
                           _%seed89378%_))
                        _g90159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90159_))))))
    (define symbolic-table-ref
      (lambda (_%tab89314%_ _%key89315%_ _%default89316%_)
        (let ((_%table89318%_ (&raw-table-table _%tab89314%_))
              (_%seed89319%_ (&raw-table-seed _%tab89314%_)))
          (let* ((_%h89321%_
                  (fxxor (symbolic-hash _%key89315%_) _%seed89319%_))
                 (_%size89324%_ (vector-length _%table89318%_))
                 (_%entries89327%_ (##fxquotient _%size89324%_ '2))
                 (_%start89330%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89321%_ _%entries89327%_)
                   '1)))
            (let _%loop89334%_ ((_%probe89337%_ _%start89330%_)
                                (_%i89339%_ '1)
                                (_%deleted89341%_ '#f))
              (let ((_%k89344%_ (vector-ref _%table89318%_ _%probe89337%_)))
                (if (eq? _%k89344%_ (macro-unused-obj))
                    (let () _%default89316%_)
                    (if (eq? _%k89344%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89334%_
                           (let ((_%next-probe89349%_
                                  (fx+ _%start89330%_
                                       _%i89339%_
                                       (fx* _%i89339%_ _%i89339%_))))
                             (##fxmodulo _%next-probe89349%_ _%size89324%_))
                           (##fx+ _%i89339%_ '1)
                           (let ((_%$e89352%_ _%deleted89341%_))
                             (if _%$e89352%_ _%$e89352%_ _%probe89337%_))))
                        (if (eq? _%key89315%_ _%k89344%_)
                            (let ()
                              (vector-ref
                               _%table89318%_
                               (##fx+ _%probe89337%_ '1)))
                            (let ()
                              (_%loop89334%_
                               (let ((_%next-probe89357%_
                                      (fx+ _%start89330%_
                                           _%i89339%_
                                           (fx* _%i89339%_ _%i89339%_))))
                                 (##fxmodulo
                                  _%next-probe89357%_
                                  _%size89324%_))
                               (##fx+ _%i89339%_ '1)
                               _%deleted89341%_)))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89310%_ _%key89311%_ _%value89312%_)
        (if (##fx< (&raw-table-free _%tab89310%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89310%_))
                    '4))
            (__raw-table-rehash! _%tab89310%_)
            '#!void)
        (__symbolic-table-set! _%tab89310%_ _%key89311%_ _%value89312%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89261%_ _%key89262%_ _%value89263%_)
        (let ((_%table89266%_ (&raw-table-table _%tab89261%_))
              (_%seed89267%_ (&raw-table-seed _%tab89261%_)))
          (let* ((_%h89269%_
                  (fxxor (symbolic-hash _%key89262%_) _%seed89267%_))
                 (_%size89272%_ (vector-length _%table89266%_))
                 (_%entries89275%_ (##fxquotient _%size89272%_ '2))
                 (_%start89278%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89269%_ _%entries89275%_)
                   '1)))
            (let _%loop89282%_ ((_%probe89285%_ _%start89278%_)
                                (_%i89287%_ '1)
                                (_%deleted89289%_ '#f))
              (let ((_%k89292%_ (vector-ref _%table89266%_ _%probe89285%_)))
                (if (eq? _%k89292%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89289%_
                          (begin
                            (vector-set!
                             _%table89266%_
                             _%deleted89289%_
                             _%key89262%_)
                            (vector-set!
                             _%table89266%_
                             (##fx+ _%deleted89289%_ '1)
                             _%value89263%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89261%_
                                (##fx+ (&raw-table-count _%tab89261%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89266%_
                             _%probe89285%_
                             _%key89262%_)
                            (vector-set!
                             _%table89266%_
                             (##fx+ _%probe89285%_ '1)
                             _%value89263%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89261%_
                                (##fx- (&raw-table-free _%tab89261%_) '1))
                               (&raw-table-count-set!
                                _%tab89261%_
                                (##fx+ (&raw-table-count _%tab89261%_)
                                       '1)))))))
                    (if (eq? _%k89292%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89282%_
                           (let ((_%next-probe89299%_
                                  (fx+ _%start89278%_
                                       _%i89287%_
                                       (fx* _%i89287%_ _%i89287%_))))
                             (##fxmodulo _%next-probe89299%_ _%size89272%_))
                           (##fx+ _%i89287%_ '1)
                           (let ((_%$e89302%_ _%deleted89289%_))
                             (if _%$e89302%_ _%$e89302%_ _%probe89285%_))))
                        (if (eq? _%key89262%_ _%k89292%_)
                            (let ()
                              (vector-set!
                               _%table89266%_
                               _%probe89285%_
                               _%key89262%_)
                              (vector-set!
                               _%table89266%_
                               (##fx+ _%probe89285%_ '1)
                               _%value89263%_))
                            (let ()
                              (_%loop89282%_
                               (let ((_%next-probe89307%_
                                      (fx+ _%start89278%_
                                           _%i89287%_
                                           (fx* _%i89287%_ _%i89287%_))))
                                 (##fxmodulo
                                  _%next-probe89307%_
                                  _%size89272%_))
                               (##fx+ _%i89287%_ '1)
                               _%deleted89289%_)))))))))))
    (define symbolic-table-update!
      (lambda (_%tab89256%_
               _%key89257%_
               _%symbolic-table-update!89258%_
               _%default89259%_)
        (if (##fx< (&raw-table-free _%tab89256%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89256%_))
                    '4))
            (__raw-table-rehash! _%tab89256%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89256%_
         _%key89257%_
         _%symbolic-table-update!89258%_
         _%default89259%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89206%_
               _%key89207%_
               _%symbolic-table-update!89208%_
               _%default89209%_)
        (let ((_%table89212%_ (&raw-table-table _%tab89206%_))
              (_%seed89213%_ (&raw-table-seed _%tab89206%_)))
          (let* ((_%h89215%_
                  (fxxor (symbolic-hash _%key89207%_) _%seed89213%_))
                 (_%size89218%_ (vector-length _%table89212%_))
                 (_%entries89221%_ (##fxquotient _%size89218%_ '2))
                 (_%start89224%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89215%_ _%entries89221%_)
                   '1)))
            (let _%loop89228%_ ((_%probe89231%_ _%start89224%_)
                                (_%i89233%_ '1)
                                (_%deleted89235%_ '#f))
              (let ((_%k89238%_ (vector-ref _%table89212%_ _%probe89231%_)))
                (if (eq? _%k89238%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89235%_
                          (begin
                            (vector-set!
                             _%table89212%_
                             _%deleted89235%_
                             _%key89207%_)
                            (vector-set!
                             _%table89212%_
                             (##fx+ _%deleted89235%_ '1)
                             (_%symbolic-table-update!89208%_
                              _%default89209%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89206%_
                                (##fx+ (&raw-table-count _%tab89206%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89212%_
                             _%probe89231%_
                             _%key89207%_)
                            (vector-set!
                             _%table89212%_
                             (##fx+ _%probe89231%_ '1)
                             (_%symbolic-table-update!89208%_
                              _%default89209%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89206%_
                                (##fx- (&raw-table-free _%tab89206%_) '1))
                               (&raw-table-count-set!
                                _%tab89206%_
                                (##fx+ (&raw-table-count _%tab89206%_)
                                       '1)))))))
                    (if (eq? _%k89238%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89228%_
                           (let ((_%next-probe89245%_
                                  (fx+ _%start89224%_
                                       _%i89233%_
                                       (fx* _%i89233%_ _%i89233%_))))
                             (##fxmodulo _%next-probe89245%_ _%size89218%_))
                           (##fx+ _%i89233%_ '1)
                           (let ((_%$e89248%_ _%deleted89235%_))
                             (if _%$e89248%_ _%$e89248%_ _%probe89231%_))))
                        (if (eq? _%key89207%_ _%k89238%_)
                            (let ()
                              (vector-set!
                               _%table89212%_
                               _%probe89231%_
                               _%key89207%_)
                              (vector-set!
                               _%table89212%_
                               (##fx+ _%probe89231%_ '1)
                               (_%symbolic-table-update!89208%_
                                (vector-ref
                                 _%table89212%_
                                 (##fx+ _%probe89231%_ '1)))))
                            (let ()
                              (_%loop89228%_
                               (let ((_%next-probe89253%_
                                      (fx+ _%start89224%_
                                           _%i89233%_
                                           (fx* _%i89233%_ _%i89233%_))))
                                 (##fxmodulo
                                  _%next-probe89253%_
                                  _%size89218%_))
                               (##fx+ _%i89233%_ '1)
                               _%deleted89235%_)))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89161%_ _%key89163%_)
        (let ((_%table89166%_ (&raw-table-table _%tab89161%_))
              (_%seed89168%_ (&raw-table-seed _%tab89161%_)))
          (let* ((_%h89171%_
                  (fxxor (symbolic-hash _%key89163%_) _%seed89168%_))
                 (_%size89174%_ (vector-length _%table89166%_))
                 (_%entries89177%_ (##fxquotient _%size89174%_ '2))
                 (_%start89180%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89171%_ _%entries89177%_)
                   '1)))
            (let _%loop89184%_ ((_%probe89187%_ _%start89180%_)
                                (_%i89189%_ '1))
              (let ((_%k89192%_ (vector-ref _%table89166%_ _%probe89187%_)))
                (if (eq? _%k89192%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89192%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89184%_
                           (let ((_%next-probe89197%_
                                  (fx+ _%start89180%_
                                       _%i89189%_
                                       (fx* _%i89189%_ _%i89189%_))))
                             (##fxmodulo _%next-probe89197%_ _%size89174%_))
                           (##fx+ _%i89189%_ '1)))
                        (if (eq? _%key89163%_ _%k89192%_)
                            (let ()
                              (vector-set!
                               _%table89166%_
                               _%probe89187%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89166%_
                               (##fx+ _%probe89187%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89161%_
                                  (##fx- (&raw-table-count _%tab89161%_)
                                         '1)))))
                            (let ()
                              (_%loop89184%_
                               (let ((_%next-probe89203%_
                                      (fx+ _%start89180%_
                                           _%i89189%_
                                           (fx* _%i89189%_ _%i89189%_))))
                                 (##fxmodulo
                                  _%next-probe89203%_
                                  _%size89174%_))
                               (##fx+ _%i89189%_ '1))))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89142%_ _%seed89144%_)
        (make-raw-table__%
         _%size-hint89142%_
         string-hash
         ##string=?
         _%seed89144%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89150%_ '#f) (_%seed89152%_ '0))
          (make-string-table__% _%size-hint89150%_ _%seed89152%_))))
    (define make-string-table__1
      (lambda (_%size-hint89154%_)
        (let ((_%seed89156%_ '0))
          (make-string-table__% _%size-hint89154%_ _%seed89156%_))))
    (define make-string-table
      (lambda _g90161_
        (let ((_g90160_ (##length _g90161_)))
          (cond ((##fx= _g90160_ 0)
                 (apply (lambda () (make-string-table__0)) _g90161_))
                ((##fx= _g90160_ 1)
                 (apply (lambda (_%size-hint89154%_)
                          (make-string-table__1 _%size-hint89154%_))
                        _g90161_))
                ((##fx= _g90160_ 2)
                 (apply (lambda (_%size-hint89158%_ _%seed89159%_)
                          (make-string-table__%
                           _%size-hint89158%_
                           _%seed89159%_))
                        _g90161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90161_))))))
    (define string-table-ref
      (lambda (_%tab89095%_ _%key89096%_ _%default89097%_)
        (let ((_%table89099%_ (&raw-table-table _%tab89095%_))
              (_%seed89100%_ (&raw-table-seed _%tab89095%_)))
          (let* ((_%h89102%_
                  (fxxor (##string=?-hash _%key89096%_) _%seed89100%_))
                 (_%size89105%_ (vector-length _%table89099%_))
                 (_%entries89108%_ (##fxquotient _%size89105%_ '2))
                 (_%start89111%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89102%_ _%entries89108%_)
                   '1)))
            (let _%loop89115%_ ((_%probe89118%_ _%start89111%_)
                                (_%i89120%_ '1)
                                (_%deleted89122%_ '#f))
              (let ((_%k89125%_ (vector-ref _%table89099%_ _%probe89118%_)))
                (if (eq? _%k89125%_ (macro-unused-obj))
                    (let () _%default89097%_)
                    (if (eq? _%k89125%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89115%_
                           (let ((_%next-probe89130%_
                                  (fx+ _%start89111%_
                                       _%i89120%_
                                       (fx* _%i89120%_ _%i89120%_))))
                             (##fxmodulo _%next-probe89130%_ _%size89105%_))
                           (##fx+ _%i89120%_ '1)
                           (let ((_%$e89133%_ _%deleted89122%_))
                             (if _%$e89133%_ _%$e89133%_ _%probe89118%_))))
                        (if (##string=? _%key89096%_ _%k89125%_)
                            (let ()
                              (vector-ref
                               _%table89099%_
                               (##fx+ _%probe89118%_ '1)))
                            (let ()
                              (_%loop89115%_
                               (let ((_%next-probe89138%_
                                      (fx+ _%start89111%_
                                           _%i89120%_
                                           (fx* _%i89120%_ _%i89120%_))))
                                 (##fxmodulo
                                  _%next-probe89138%_
                                  _%size89105%_))
                               (##fx+ _%i89120%_ '1)
                               _%deleted89122%_)))))))))))
    (define string-table-set!
      (lambda (_%tab89091%_ _%key89092%_ _%value89093%_)
        (if (##fx< (&raw-table-free _%tab89091%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89091%_))
                    '4))
            (__raw-table-rehash! _%tab89091%_)
            '#!void)
        (__string-table-set! _%tab89091%_ _%key89092%_ _%value89093%_)))
    (define __string-table-set!
      (lambda (_%tab89042%_ _%key89043%_ _%value89044%_)
        (let ((_%table89047%_ (&raw-table-table _%tab89042%_))
              (_%seed89048%_ (&raw-table-seed _%tab89042%_)))
          (let* ((_%h89050%_
                  (fxxor (##string=?-hash _%key89043%_) _%seed89048%_))
                 (_%size89053%_ (vector-length _%table89047%_))
                 (_%entries89056%_ (##fxquotient _%size89053%_ '2))
                 (_%start89059%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89050%_ _%entries89056%_)
                   '1)))
            (let _%loop89063%_ ((_%probe89066%_ _%start89059%_)
                                (_%i89068%_ '1)
                                (_%deleted89070%_ '#f))
              (let ((_%k89073%_ (vector-ref _%table89047%_ _%probe89066%_)))
                (if (eq? _%k89073%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89070%_
                          (begin
                            (vector-set!
                             _%table89047%_
                             _%deleted89070%_
                             _%key89043%_)
                            (vector-set!
                             _%table89047%_
                             (##fx+ _%deleted89070%_ '1)
                             _%value89044%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89042%_
                                (##fx+ (&raw-table-count _%tab89042%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89047%_
                             _%probe89066%_
                             _%key89043%_)
                            (vector-set!
                             _%table89047%_
                             (##fx+ _%probe89066%_ '1)
                             _%value89044%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89042%_
                                (##fx- (&raw-table-free _%tab89042%_) '1))
                               (&raw-table-count-set!
                                _%tab89042%_
                                (##fx+ (&raw-table-count _%tab89042%_)
                                       '1)))))))
                    (if (eq? _%k89073%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89063%_
                           (let ((_%next-probe89080%_
                                  (fx+ _%start89059%_
                                       _%i89068%_
                                       (fx* _%i89068%_ _%i89068%_))))
                             (##fxmodulo _%next-probe89080%_ _%size89053%_))
                           (##fx+ _%i89068%_ '1)
                           (let ((_%$e89083%_ _%deleted89070%_))
                             (if _%$e89083%_ _%$e89083%_ _%probe89066%_))))
                        (if (##string=? _%key89043%_ _%k89073%_)
                            (let ()
                              (vector-set!
                               _%table89047%_
                               _%probe89066%_
                               _%key89043%_)
                              (vector-set!
                               _%table89047%_
                               (##fx+ _%probe89066%_ '1)
                               _%value89044%_))
                            (let ()
                              (_%loop89063%_
                               (let ((_%next-probe89088%_
                                      (fx+ _%start89059%_
                                           _%i89068%_
                                           (fx* _%i89068%_ _%i89068%_))))
                                 (##fxmodulo
                                  _%next-probe89088%_
                                  _%size89053%_))
                               (##fx+ _%i89068%_ '1)
                               _%deleted89070%_)))))))))))
    (define string-table-update!
      (lambda (_%tab89037%_
               _%key89038%_
               _%string-table-update!89039%_
               _%default89040%_)
        (if (##fx< (&raw-table-free _%tab89037%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89037%_))
                    '4))
            (__raw-table-rehash! _%tab89037%_)
            '#!void)
        (__string-table-update!
         _%tab89037%_
         _%key89038%_
         _%string-table-update!89039%_
         _%default89040%_)))
    (define __string-table-update!
      (lambda (_%tab88987%_
               _%key88988%_
               _%string-table-update!88989%_
               _%default88990%_)
        (let ((_%table88993%_ (&raw-table-table _%tab88987%_))
              (_%seed88994%_ (&raw-table-seed _%tab88987%_)))
          (let* ((_%h88996%_
                  (fxxor (##string=?-hash _%key88988%_) _%seed88994%_))
                 (_%size88999%_ (vector-length _%table88993%_))
                 (_%entries89002%_ (##fxquotient _%size88999%_ '2))
                 (_%start89005%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88996%_ _%entries89002%_)
                   '1)))
            (let _%loop89009%_ ((_%probe89012%_ _%start89005%_)
                                (_%i89014%_ '1)
                                (_%deleted89016%_ '#f))
              (let ((_%k89019%_ (vector-ref _%table88993%_ _%probe89012%_)))
                (if (eq? _%k89019%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89016%_
                          (begin
                            (vector-set!
                             _%table88993%_
                             _%deleted89016%_
                             _%key88988%_)
                            (vector-set!
                             _%table88993%_
                             (##fx+ _%deleted89016%_ '1)
                             (_%string-table-update!88989%_ _%default88990%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88987%_
                                (##fx+ (&raw-table-count _%tab88987%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88993%_
                             _%probe89012%_
                             _%key88988%_)
                            (vector-set!
                             _%table88993%_
                             (##fx+ _%probe89012%_ '1)
                             (_%string-table-update!88989%_ _%default88990%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88987%_
                                (##fx- (&raw-table-free _%tab88987%_) '1))
                               (&raw-table-count-set!
                                _%tab88987%_
                                (##fx+ (&raw-table-count _%tab88987%_)
                                       '1)))))))
                    (if (eq? _%k89019%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89009%_
                           (let ((_%next-probe89026%_
                                  (fx+ _%start89005%_
                                       _%i89014%_
                                       (fx* _%i89014%_ _%i89014%_))))
                             (##fxmodulo _%next-probe89026%_ _%size88999%_))
                           (##fx+ _%i89014%_ '1)
                           (let ((_%$e89029%_ _%deleted89016%_))
                             (if _%$e89029%_ _%$e89029%_ _%probe89012%_))))
                        (if (##string=? _%key88988%_ _%k89019%_)
                            (let ()
                              (vector-set!
                               _%table88993%_
                               _%probe89012%_
                               _%key88988%_)
                              (vector-set!
                               _%table88993%_
                               (##fx+ _%probe89012%_ '1)
                               (_%string-table-update!88989%_
                                (vector-ref
                                 _%table88993%_
                                 (##fx+ _%probe89012%_ '1)))))
                            (let ()
                              (_%loop89009%_
                               (let ((_%next-probe89034%_
                                      (fx+ _%start89005%_
                                           _%i89014%_
                                           (fx* _%i89014%_ _%i89014%_))))
                                 (##fxmodulo
                                  _%next-probe89034%_
                                  _%size88999%_))
                               (##fx+ _%i89014%_ '1)
                               _%deleted89016%_)))))))))))
    (define string-table-delete!
      (lambda (_%tab88942%_ _%key88944%_)
        (let ((_%table88947%_ (&raw-table-table _%tab88942%_))
              (_%seed88949%_ (&raw-table-seed _%tab88942%_)))
          (let* ((_%h88952%_
                  (fxxor (##string=?-hash _%key88944%_) _%seed88949%_))
                 (_%size88955%_ (vector-length _%table88947%_))
                 (_%entries88958%_ (##fxquotient _%size88955%_ '2))
                 (_%start88961%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88952%_ _%entries88958%_)
                   '1)))
            (let _%loop88965%_ ((_%probe88968%_ _%start88961%_)
                                (_%i88970%_ '1))
              (let ((_%k88973%_ (vector-ref _%table88947%_ _%probe88968%_)))
                (if (eq? _%k88973%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k88973%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88965%_
                           (let ((_%next-probe88978%_
                                  (fx+ _%start88961%_
                                       _%i88970%_
                                       (fx* _%i88970%_ _%i88970%_))))
                             (##fxmodulo _%next-probe88978%_ _%size88955%_))
                           (##fx+ _%i88970%_ '1)))
                        (if (##string=? _%key88944%_ _%k88973%_)
                            (let ()
                              (vector-set!
                               _%table88947%_
                               _%probe88968%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88947%_
                               (##fx+ _%probe88968%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88942%_
                                  (##fx- (&raw-table-count _%tab88942%_)
                                         '1)))))
                            (let ()
                              (_%loop88965%_
                               (let ((_%next-probe88984%_
                                      (fx+ _%start88961%_
                                           _%i88970%_
                                           (fx* _%i88970%_ _%i88970%_))))
                                 (##fxmodulo
                                  _%next-probe88984%_
                                  _%size88955%_))
                               (##fx+ _%i88970%_ '1))))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint88923%_ _%seed88925%_)
        (make-raw-table__%
         _%size-hint88923%_
         immediate-hash
         eq?
         _%seed88925%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint88931%_ '#f) (_%seed88933%_ '0))
          (make-immediate-table__% _%size-hint88931%_ _%seed88933%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint88935%_)
        (let ((_%seed88937%_ '0))
          (make-immediate-table__% _%size-hint88935%_ _%seed88937%_))))
    (define make-immediate-table
      (lambda _g90163_
        (let ((_g90162_ (##length _g90163_)))
          (cond ((##fx= _g90162_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g90163_))
                ((##fx= _g90162_ 1)
                 (apply (lambda (_%size-hint88935%_)
                          (make-immediate-table__1 _%size-hint88935%_))
                        _g90163_))
                ((##fx= _g90162_ 2)
                 (apply (lambda (_%size-hint88939%_ _%seed88940%_)
                          (make-immediate-table__%
                           _%size-hint88939%_
                           _%seed88940%_))
                        _g90163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90163_))))))
    (define immediate-table-ref
      (lambda (_%tab88876%_ _%key88877%_ _%default88878%_)
        (let ((_%table88880%_ (&raw-table-table _%tab88876%_))
              (_%seed88881%_ (&raw-table-seed _%tab88876%_)))
          (let* ((_%h88883%_
                  (fxxor (immediate-hash _%key88877%_) _%seed88881%_))
                 (_%size88886%_ (vector-length _%table88880%_))
                 (_%entries88889%_ (##fxquotient _%size88886%_ '2))
                 (_%start88892%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88883%_ _%entries88889%_)
                   '1)))
            (let _%loop88896%_ ((_%probe88899%_ _%start88892%_)
                                (_%i88901%_ '1)
                                (_%deleted88903%_ '#f))
              (let ((_%k88906%_ (vector-ref _%table88880%_ _%probe88899%_)))
                (if (eq? _%k88906%_ (macro-unused-obj))
                    (let () _%default88878%_)
                    (if (eq? _%k88906%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88896%_
                           (let ((_%next-probe88911%_
                                  (fx+ _%start88892%_
                                       _%i88901%_
                                       (fx* _%i88901%_ _%i88901%_))))
                             (##fxmodulo _%next-probe88911%_ _%size88886%_))
                           (##fx+ _%i88901%_ '1)
                           (let ((_%$e88914%_ _%deleted88903%_))
                             (if _%$e88914%_ _%$e88914%_ _%probe88899%_))))
                        (if (eq? _%key88877%_ _%k88906%_)
                            (let ()
                              (vector-ref
                               _%table88880%_
                               (##fx+ _%probe88899%_ '1)))
                            (let ()
                              (_%loop88896%_
                               (let ((_%next-probe88919%_
                                      (fx+ _%start88892%_
                                           _%i88901%_
                                           (fx* _%i88901%_ _%i88901%_))))
                                 (##fxmodulo
                                  _%next-probe88919%_
                                  _%size88886%_))
                               (##fx+ _%i88901%_ '1)
                               _%deleted88903%_)))))))))))
    (define immediate-table-set!
      (lambda (_%tab88872%_ _%key88873%_ _%value88874%_)
        (if (##fx< (&raw-table-free _%tab88872%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88872%_))
                    '4))
            (__raw-table-rehash! _%tab88872%_)
            '#!void)
        (__immediate-table-set! _%tab88872%_ _%key88873%_ _%value88874%_)))
    (define __immediate-table-set!
      (lambda (_%tab88823%_ _%key88824%_ _%value88825%_)
        (let ((_%table88828%_ (&raw-table-table _%tab88823%_))
              (_%seed88829%_ (&raw-table-seed _%tab88823%_)))
          (let* ((_%h88831%_
                  (fxxor (immediate-hash _%key88824%_) _%seed88829%_))
                 (_%size88834%_ (vector-length _%table88828%_))
                 (_%entries88837%_ (##fxquotient _%size88834%_ '2))
                 (_%start88840%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88831%_ _%entries88837%_)
                   '1)))
            (let _%loop88844%_ ((_%probe88847%_ _%start88840%_)
                                (_%i88849%_ '1)
                                (_%deleted88851%_ '#f))
              (let ((_%k88854%_ (vector-ref _%table88828%_ _%probe88847%_)))
                (if (eq? _%k88854%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88851%_
                          (begin
                            (vector-set!
                             _%table88828%_
                             _%deleted88851%_
                             _%key88824%_)
                            (vector-set!
                             _%table88828%_
                             (##fx+ _%deleted88851%_ '1)
                             _%value88825%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88823%_
                                (##fx+ (&raw-table-count _%tab88823%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88828%_
                             _%probe88847%_
                             _%key88824%_)
                            (vector-set!
                             _%table88828%_
                             (##fx+ _%probe88847%_ '1)
                             _%value88825%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88823%_
                                (##fx- (&raw-table-free _%tab88823%_) '1))
                               (&raw-table-count-set!
                                _%tab88823%_
                                (##fx+ (&raw-table-count _%tab88823%_)
                                       '1)))))))
                    (if (eq? _%k88854%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88844%_
                           (let ((_%next-probe88861%_
                                  (fx+ _%start88840%_
                                       _%i88849%_
                                       (fx* _%i88849%_ _%i88849%_))))
                             (##fxmodulo _%next-probe88861%_ _%size88834%_))
                           (##fx+ _%i88849%_ '1)
                           (let ((_%$e88864%_ _%deleted88851%_))
                             (if _%$e88864%_ _%$e88864%_ _%probe88847%_))))
                        (if (eq? _%key88824%_ _%k88854%_)
                            (let ()
                              (vector-set!
                               _%table88828%_
                               _%probe88847%_
                               _%key88824%_)
                              (vector-set!
                               _%table88828%_
                               (##fx+ _%probe88847%_ '1)
                               _%value88825%_))
                            (let ()
                              (_%loop88844%_
                               (let ((_%next-probe88869%_
                                      (fx+ _%start88840%_
                                           _%i88849%_
                                           (fx* _%i88849%_ _%i88849%_))))
                                 (##fxmodulo
                                  _%next-probe88869%_
                                  _%size88834%_))
                               (##fx+ _%i88849%_ '1)
                               _%deleted88851%_)))))))))))
    (define immediate-table-update!
      (lambda (_%tab88818%_
               _%key88819%_
               _%immediate-table-update!88820%_
               _%default88821%_)
        (if (##fx< (&raw-table-free _%tab88818%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88818%_))
                    '4))
            (__raw-table-rehash! _%tab88818%_)
            '#!void)
        (__immediate-table-update!
         _%tab88818%_
         _%key88819%_
         _%immediate-table-update!88820%_
         _%default88821%_)))
    (define __immediate-table-update!
      (lambda (_%tab88768%_
               _%key88769%_
               _%immediate-table-update!88770%_
               _%default88771%_)
        (let ((_%table88774%_ (&raw-table-table _%tab88768%_))
              (_%seed88775%_ (&raw-table-seed _%tab88768%_)))
          (let* ((_%h88777%_
                  (fxxor (immediate-hash _%key88769%_) _%seed88775%_))
                 (_%size88780%_ (vector-length _%table88774%_))
                 (_%entries88783%_ (##fxquotient _%size88780%_ '2))
                 (_%start88786%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88777%_ _%entries88783%_)
                   '1)))
            (let _%loop88790%_ ((_%probe88793%_ _%start88786%_)
                                (_%i88795%_ '1)
                                (_%deleted88797%_ '#f))
              (let ((_%k88800%_ (vector-ref _%table88774%_ _%probe88793%_)))
                (if (eq? _%k88800%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88797%_
                          (begin
                            (vector-set!
                             _%table88774%_
                             _%deleted88797%_
                             _%key88769%_)
                            (vector-set!
                             _%table88774%_
                             (##fx+ _%deleted88797%_ '1)
                             (_%immediate-table-update!88770%_
                              _%default88771%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88768%_
                                (##fx+ (&raw-table-count _%tab88768%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88774%_
                             _%probe88793%_
                             _%key88769%_)
                            (vector-set!
                             _%table88774%_
                             (##fx+ _%probe88793%_ '1)
                             (_%immediate-table-update!88770%_
                              _%default88771%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88768%_
                                (##fx- (&raw-table-free _%tab88768%_) '1))
                               (&raw-table-count-set!
                                _%tab88768%_
                                (##fx+ (&raw-table-count _%tab88768%_)
                                       '1)))))))
                    (if (eq? _%k88800%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88790%_
                           (let ((_%next-probe88807%_
                                  (fx+ _%start88786%_
                                       _%i88795%_
                                       (fx* _%i88795%_ _%i88795%_))))
                             (##fxmodulo _%next-probe88807%_ _%size88780%_))
                           (##fx+ _%i88795%_ '1)
                           (let ((_%$e88810%_ _%deleted88797%_))
                             (if _%$e88810%_ _%$e88810%_ _%probe88793%_))))
                        (if (eq? _%key88769%_ _%k88800%_)
                            (let ()
                              (vector-set!
                               _%table88774%_
                               _%probe88793%_
                               _%key88769%_)
                              (vector-set!
                               _%table88774%_
                               (##fx+ _%probe88793%_ '1)
                               (_%immediate-table-update!88770%_
                                (vector-ref
                                 _%table88774%_
                                 (##fx+ _%probe88793%_ '1)))))
                            (let ()
                              (_%loop88790%_
                               (let ((_%next-probe88815%_
                                      (fx+ _%start88786%_
                                           _%i88795%_
                                           (fx* _%i88795%_ _%i88795%_))))
                                 (##fxmodulo
                                  _%next-probe88815%_
                                  _%size88780%_))
                               (##fx+ _%i88795%_ '1)
                               _%deleted88797%_)))))))))))
    (define immediate-table-delete!
      (lambda (_%tab88723%_ _%key88725%_)
        (let ((_%table88728%_ (&raw-table-table _%tab88723%_))
              (_%seed88730%_ (&raw-table-seed _%tab88723%_)))
          (let* ((_%h88733%_
                  (fxxor (immediate-hash _%key88725%_) _%seed88730%_))
                 (_%size88736%_ (vector-length _%table88728%_))
                 (_%entries88739%_ (##fxquotient _%size88736%_ '2))
                 (_%start88742%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88733%_ _%entries88739%_)
                   '1)))
            (let _%loop88746%_ ((_%probe88749%_ _%start88742%_)
                                (_%i88751%_ '1))
              (let ((_%k88754%_ (vector-ref _%table88728%_ _%probe88749%_)))
                (if (eq? _%k88754%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k88754%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88746%_
                           (let ((_%next-probe88759%_
                                  (fx+ _%start88742%_
                                       _%i88751%_
                                       (fx* _%i88751%_ _%i88751%_))))
                             (##fxmodulo _%next-probe88759%_ _%size88736%_))
                           (##fx+ _%i88751%_ '1)))
                        (if (eq? _%key88725%_ _%k88754%_)
                            (let ()
                              (vector-set!
                               _%table88728%_
                               _%probe88749%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88728%_
                               (##fx+ _%probe88749%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88723%_
                                  (##fx- (&raw-table-count _%tab88723%_)
                                         '1)))))
                            (let ()
                              (_%loop88746%_
                               (let ((_%next-probe88765%_
                                      (fx+ _%start88742%_
                                           _%i88751%_
                                           (fx* _%i88751%_ _%i88751%_))))
                                 (##fxmodulo
                                  _%next-probe88765%_
                                  _%size88736%_))
                               (##fx+ _%i88751%_ '1))))))))))))
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
      (lambda (_%tab88721%_)
        (##unchecked-structure-ref
         _%tab88721%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab88719%_)
        (##unchecked-structure-ref
         _%tab88719%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab88716%_ _%val88717%_)
        (##unchecked-structure-set!
         _%tab88716%_
         _%val88717%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab88713%_ _%val88714%_)
        (##unchecked-structure-set!
         _%tab88713%_
         _%val88714%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint88689%_ _%klass88690%_ _%flags88691%_)
        (let ((_%gcht88693%_
               (__gc-table-new
                (if (fixnum? _%size-hint88689%_) _%size-hint88689%_ '16)
                _%flags88691%_)))
          (##structure _%klass88690%_ _%gcht88693%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint88698%_)
        (let* ((_%klass88700%_ __gc-table::t) (_%flags88702%_ '0))
          (make-gc-table__%
           _%size-hint88698%_
           _%klass88700%_
           _%flags88702%_))))
    (define make-gc-table__1
      (lambda (_%size-hint88704%_ _%klass88705%_)
        (let ((_%flags88707%_ '0))
          (make-gc-table__%
           _%size-hint88704%_
           _%klass88705%_
           _%flags88707%_))))
    (define make-gc-table
      (lambda _g90165_
        (let ((_g90164_ (##length _g90165_)))
          (cond ((##fx= _g90164_ 1)
                 (apply (lambda (_%size-hint88698%_)
                          (make-gc-table__0 _%size-hint88698%_))
                        _g90165_))
                ((##fx= _g90164_ 2)
                 (apply (lambda (_%size-hint88704%_ _%klass88705%_)
                          (make-gc-table__1 _%size-hint88704%_ _%klass88705%_))
                        _g90165_))
                ((##fx= _g90164_ 3)
                 (apply (lambda (_%size-hint88709%_
                                 _%klass88710%_
                                 _%flags88711%_)
                          (make-gc-table__%
                           _%size-hint88709%_
                           _%klass88710%_
                           _%flags88711%_))
                        _g90165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90165_))))))
    (define __gc-table-immediate
      (lambda (_%tab88680%_)
        (let ((_%$e88682%_ (&gc-table-immediate _%tab88680%_)))
          (if _%$e88682%_
              _%$e88682%_
              (let ()
                (let ((_%immediate88686%_ (make-immediate-table__% '#f '0)))
                  (&gc-table-immediate-set! _%tab88680%_ _%immediate88686%_)
                  _%immediate88686%_))))))
    (define __gc-table-new
      (lambda (_%size88670%_ _%flags88671%_)
        (let* ((_%flags88673%_
                (##fxand _%flags88671%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags88675%_
                (fxior _%flags88673%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht88677%_
                (##gc-hash-table-allocate
                 _%size88670%_
                 _%flags88675%_
                 __gc-table-loads)))
          _%gcht88677%_)))
    (define __gc-table-e
      (lambda (_%tab88665%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht88668%_ (&gc-table-gcht _%tab88665%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht88668%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht88668%_
              (begin
                (__gc-table-rehash! _%tab88665%_)
                (&gc-table-gcht _%tab88665%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab88656%_)
        (let* ((_%old-table88658%_ (&gc-table-gcht _%tab88656%_))
               (_%new-table88660%_
                (##gc-hash-table-resize! _%old-table88658%_ __gc-table-loads))
               (_%gcht88662%_
                (##gc-hash-table-rehash!
                 _%old-table88658%_
                 _%new-table88660%_)))
          (&gc-table-gcht-set! _%tab88656%_ _%gcht88662%_))))
    (define gc-table-ref
      (lambda (_%tab88640%_ _%key88641%_ _%default88642%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88641%_)
            (let ()
              (let* ((_%gcht88646%_ (__gc-table-e _%tab88640%_))
                     (_%value88648%_
                      (##gc-hash-table-ref _%gcht88646%_ _%key88641%_)))
                (if (eq? _%value88648%_ (macro-unused-obj))
                    _%default88642%_
                    _%value88648%_)))
            (let ((_%$e88650%_ (&gc-table-immediate _%tab88640%_)))
              (if _%$e88650%_
                  ((lambda (_%immediate88653%_)
                     (immediate-table-ref
                      _%immediate88653%_
                      _%key88641%_
                      _%default88642%_))
                   _%$e88650%_)
                  (let () _%default88642%_))))))
    (define gc-table-set!
      (lambda (_%tab88633%_ _%key88634%_ _%value88635%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88634%_)
            (let ((_%gcht88638%_ (__gc-table-e _%tab88633%_)))
              (if (##gc-hash-table-set!
                   _%gcht88638%_
                   _%key88634%_
                   _%value88635%_)
                  (begin
                    (__gc-table-rehash! _%tab88633%_)
                    (gc-table-set! _%tab88633%_ _%key88634%_ _%value88635%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab88633%_)
             _%key88634%_
             _%value88635%_))))
    (define gc-table-update!
      (lambda (_%tab88626%_ _%key88627%_ _%update88628%_ _%default88629%_)
        (if (##mem-allocated? _%key88627%_)
            (let ((_%value88631%_
                   (gc-table-ref _%tab88626%_ _%key88627%_ _%default88629%_)))
              (gc-table-set!
               _%tab88626%_
               _%key88627%_
               (_%update88628%_ _%value88631%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab88626%_)
             _%key88627%_
             _%update88628%_
             _%default88629%_))))
    (define gc-table-delete!
      (lambda (_%tab88614%_ _%key88615%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88615%_)
            (let ()
              (let ((_%gcht88619%_ (__gc-table-e _%tab88614%_)))
                (if (##gc-hash-table-set!
                     _%gcht88619%_
                     _%key88615%_
                     (macro-absent-obj))
                    (begin
                      (__gc-table-rehash! _%tab88614%_)
                      (gc-table-delete! _%tab88614%_ _%key88615%_))
                    '#!void)))
            (let ((_%$e88621%_ (&gc-table-immediate _%tab88614%_)))
              (if _%$e88621%_
                  ((lambda (_%immediate88624%_)
                     (immediate-table-delete! _%immediate88624%_ _%key88615%_))
                   _%$e88621%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab88595%_ _%proc88596%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht88599%_ (__gc-table-e _%tab88595%_)))
            (let _%loop88601%_ ((_%i88603%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i88603%_ (##vector-length _%gcht88599%_))
                  (let ((_%key88605%_ (##vector-ref _%gcht88599%_ _%i88603%_)))
                    (if (and (not (eq? _%key88605%_ (macro-unused-obj)))
                             (not (eq? _%key88605%_ (macro-deleted-obj))))
                        (_%proc88596%_
                         _%key88605%_
                         (##vector-ref _%gcht88599%_ (##fx+ _%i88603%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop88601%_ (##fx+ _%i88603%_ '2))))
                  '#!void)))
          (let ((_%$e88609%_ (&gc-table-immediate _%tab88595%_)))
            (if _%$e88609%_
                ((lambda (_%immediate88612%_)
                   (raw-table-for-each _%immediate88612%_ _%proc88596%_))
                 _%$e88609%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab88583%_)
        (let* ((_%gcht88585%_ (__gc-table-e _%tab88583%_))
               (_%new-table88587%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht88585%_)
                 (macro-gc-hash-table-flags _%gcht88585%_)))
               (_%result88589%_
                (##structure
                 (##structure-type _%tab88583%_)
                 _%new-table88587%_
                 '#f)))
          (gc-table-for-each
           _%tab88583%_
           (lambda (_%k88592%_ _%v88593%_)
             (gc-table-set! _%result88589%_ _%k88592%_ _%v88593%_)))
          _%result88589%_)))
    (define gc-table-clear!
      (lambda (_%tab88576%_)
        (let* ((_%gcht88578%_ (__gc-table-e _%tab88576%_))
               (_%new-table88580%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht88578%_))))
          (&gc-table-gcht-set! _%tab88576%_ _%new-table88580%_)
          (&gc-table-immediate-set! _%tab88576%_ '#f))))
    (define gc-table-length
      (lambda (_%tab88568%_)
        (let ((_%gcht88570%_ (__gc-table-e _%tab88568%_)))
          (fx+ (macro-gc-hash-table-count _%gcht88570%_)
               (let ((_%$e88572%_ (&gc-table-immediate _%tab88568%_)))
                 (if _%$e88572%_
                     (&raw-table-count _%$e88572%_)
                     (let () '0)))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj88553%_)
        (declare (not interrupts-enabled))
        (let ((_%val88556%_ (gc-table-ref __object-eq-hash _%obj88553%_ '#f)))
          (if _%val88556%_
              _%val88556%_
              (let* ((_%mix88558%_ __object-eq-hash-next)
                     (_%ptr88560%_ (##type-cast _%obj88553%_ '0))
                     (_%h88562%_
                      (fxand (fxxor _%mix88558%_ _%ptr88560%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e88565%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e88565%_ _%$e88565%_ '0)))
                (gc-table-set! __object-eq-hash _%obj88553%_ _%h88562%_)
                _%h88562%_)))))))
