(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712084083)
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
      (lambda (_%tab90037%_)
        (##unchecked-structure-ref
         _%tab90037%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90035%_)
        (##unchecked-structure-ref
         _%tab90035%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90033%_)
        (##unchecked-structure-ref
         _%tab90033%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90031%_)
        (##unchecked-structure-ref
         _%tab90031%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90029%_)
        (##unchecked-structure-ref
         _%tab90029%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90027%_)
        (##unchecked-structure-ref
         _%tab90027%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90024%_ _%val90025%_)
        (##unchecked-structure-set!
         _%tab90024%_
         _%val90025%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90021%_ _%val90022%_)
        (##unchecked-structure-set!
         _%tab90021%_
         _%val90022%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90018%_ _%val90019%_)
        (##unchecked-structure-set!
         _%tab90018%_
         _%val90019%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90015%_ _%val90016%_)
        (##unchecked-structure-set!
         _%tab90015%_
         _%val90016%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90012%_ _%val90013%_)
        (##unchecked-structure-set!
         _%tab90012%_
         _%val90013%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90009%_ _%val90010%_)
        (##unchecked-structure-set!
         _%tab90009%_
         _%val90010%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90007%_)
        (if (and (fixnum? _%size-hint90007%_) (##fx> _%size-hint90007%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90007%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint89983%_ _%hash89984%_ _%test89985%_ _%seed89986%_)
        (let* ((_%size89988%_ (raw-table-size-hint->size _%size-hint89983%_))
               (_%table89990%_
                (##make-vector _%size89988%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table89990%_
           '0
           (##fxquotient _%size89988%_ '2)
           _%hash89984%_
           _%test89985%_
           _%seed89986%_))))
    (define make-raw-table__0
      (lambda (_%size-hint89996%_ _%hash89997%_ _%test89998%_)
        (let ((_%seed90000%_ '0))
          (make-raw-table__%
           _%size-hint89996%_
           _%hash89997%_
           _%test89998%_
           _%seed90000%_))))
    (define make-raw-table
      (lambda _g90039_
        (let ((_g90038_ (##length _g90039_)))
          (cond ((##fx= _g90038_ 3)
                 (apply (lambda (_%size-hint89996%_
                                 _%hash89997%_
                                 _%test89998%_)
                          (make-raw-table__0
                           _%size-hint89996%_
                           _%hash89997%_
                           _%test89998%_))
                        _g90039_))
                ((##fx= _g90038_ 4)
                 (apply (lambda (_%size-hint90002%_
                                 _%hash90003%_
                                 _%test90004%_
                                 _%seed90005%_)
                          (make-raw-table__%
                           _%size-hint90002%_
                           _%hash90003%_
                           _%test90004%_
                           _%seed90005%_))
                        _g90039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90039_))))))
    (define raw-table-ref
      (lambda (_%tab89934%_ _%key89935%_ _%default89936%_)
        (let ((_%table89938%_ (&raw-table-table _%tab89934%_))
              (_%seed89939%_ (&raw-table-seed _%tab89934%_))
              (_%hash89940%_ (&raw-table-hash _%tab89934%_))
              (_%test89941%_ (&raw-table-test _%tab89934%_)))
          (let* ((_%h89943%_
                  (fxxor (_%hash89940%_ _%key89935%_) _%seed89939%_))
                 (_%size89946%_ (vector-length _%table89938%_))
                 (_%entries89949%_ (##fxquotient _%size89946%_ '2))
                 (_%start89952%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89943%_ _%entries89949%_)
                   '1)))
            (let _%loop89956%_ ((_%probe89959%_ _%start89952%_)
                                (_%i89961%_ '1)
                                (_%deleted89963%_ '#f))
              (let ((_%k89966%_ (vector-ref _%table89938%_ _%probe89959%_)))
                (if (eq? _%k89966%_ (macro-unused-obj))
                    (let () _%default89936%_)
                    (if (eq? _%k89966%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89956%_
                           (let ((_%next-probe89971%_
                                  (fx+ _%start89952%_
                                       _%i89961%_
                                       (fx* _%i89961%_ _%i89961%_))))
                             (##fxmodulo _%next-probe89971%_ _%size89946%_))
                           (##fx+ _%i89961%_ '1)
                           (let ((_%$e89974%_ _%deleted89963%_))
                             (if _%$e89974%_ _%$e89974%_ _%probe89959%_))))
                        (if (_%test89941%_ _%key89935%_ _%k89966%_)
                            (let ()
                              (vector-ref
                               _%table89938%_
                               (##fx+ _%probe89959%_ '1)))
                            (let ()
                              (_%loop89956%_
                               (let ((_%next-probe89979%_
                                      (fx+ _%start89952%_
                                           _%i89961%_
                                           (fx* _%i89961%_ _%i89961%_))))
                                 (##fxmodulo
                                  _%next-probe89979%_
                                  _%size89946%_))
                               (##fx+ _%i89961%_ '1)
                               _%deleted89963%_)))))))))))
    (define raw-table-set!
      (lambda (_%tab89930%_ _%key89931%_ _%value89932%_)
        (if (##fx< (&raw-table-free _%tab89930%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89930%_))
                    '4))
            (__raw-table-rehash! _%tab89930%_)
            '#!void)
        (__raw-table-set! _%tab89930%_ _%key89931%_ _%value89932%_)))
    (define raw-table-update!
      (lambda (_%tab89925%_ _%key89926%_ _%update89927%_ _%default89928%_)
        (if (##fx< (&raw-table-free _%tab89925%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89925%_))
                    '4))
            (__raw-table-rehash! _%tab89925%_)
            '#!void)
        (__raw-table-update!
         _%tab89925%_
         _%key89926%_
         _%update89927%_
         _%default89928%_)))
    (define raw-table-delete!
      (lambda (_%tab89882%_ _%key89883%_)
        (let ((_%table89885%_ (&raw-table-table _%tab89882%_))
              (_%seed89886%_ (&raw-table-seed _%tab89882%_))
              (_%hash89887%_ (&raw-table-hash _%tab89882%_))
              (_%test89888%_ (&raw-table-test _%tab89882%_)))
          (let* ((_%h89890%_
                  (fxxor (_%hash89887%_ _%key89883%_) _%seed89886%_))
                 (_%size89893%_ (vector-length _%table89885%_))
                 (_%entries89896%_ (##fxquotient _%size89893%_ '2))
                 (_%start89899%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89890%_ _%entries89896%_)
                   '1)))
            (let _%loop89903%_ ((_%probe89906%_ _%start89899%_)
                                (_%i89908%_ '1))
              (let ((_%k89911%_ (vector-ref _%table89885%_ _%probe89906%_)))
                (if (eq? _%k89911%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89911%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89903%_
                           (let ((_%next-probe89916%_
                                  (fx+ _%start89899%_
                                       _%i89908%_
                                       (fx* _%i89908%_ _%i89908%_))))
                             (##fxmodulo _%next-probe89916%_ _%size89893%_))
                           (##fx+ _%i89908%_ '1)))
                        (if (_%test89888%_ _%key89883%_ _%k89911%_)
                            (let ()
                              (vector-set!
                               _%table89885%_
                               _%probe89906%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89885%_
                               (##fx+ _%probe89906%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89882%_
                                  (##fx- (&raw-table-count _%tab89882%_)
                                         '1)))))
                            (let ()
                              (_%loop89903%_
                               (let ((_%next-probe89922%_
                                      (fx+ _%start89899%_
                                           _%i89908%_
                                           (fx* _%i89908%_ _%i89908%_))))
                                 (##fxmodulo
                                  _%next-probe89922%_
                                  _%size89893%_))
                               (##fx+ _%i89908%_ '1))))))))))))
    (define raw-table-for-each
      (lambda (_%tab89866%_ _%proc89867%_)
        (let* ((_%table89869%_ (&raw-table-table _%tab89866%_))
               (_%size89871%_ (vector-length _%table89869%_)))
          (let _%loop89874%_ ((_%i89876%_ '0))
            (if (##fx< _%i89876%_ _%size89871%_)
                (begin
                  (let ((_%key89878%_ (vector-ref _%table89869%_ _%i89876%_)))
                    (if (and (not (eq? _%key89878%_ (macro-unused-obj)))
                             (not (eq? _%key89878%_ (macro-deleted-obj))))
                        (let ((_%value89880%_
                               (vector-ref
                                _%table89869%_
                                (##fx+ _%i89876%_ '1))))
                          (_%proc89867%_ _%key89878%_ _%value89880%_))
                        '#!void))
                  (_%loop89874%_ (##fx+ _%i89876%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab89862%_)
        (let ((_%new-tab89864%_ (##structure-copy _%tab89862%_)))
          (&raw-table-table-set!
           _%new-tab89864%_
           (vector-copy (&raw-table-table _%tab89862%_)))
          _%new-tab89864%_)))
    (define raw-table-clear!
      (lambda (_%tab89860%_)
        (vector-fill! (&raw-table-table _%tab89860%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab89860%_ '0)
        (&raw-table-free-set!
         _%tab89860%_
         (##fxquotient (vector-length (&raw-table-table _%tab89860%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab89810%_ _%key89811%_ _%value89812%_)
        (let ((_%table89814%_ (&raw-table-table _%tab89810%_))
              (_%seed89815%_ (&raw-table-seed _%tab89810%_))
              (_%hash89816%_ (&raw-table-hash _%tab89810%_))
              (_%test89817%_ (&raw-table-test _%tab89810%_)))
          (let* ((_%h89819%_
                  (fxxor (_%hash89816%_ _%key89811%_) _%seed89815%_))
                 (_%size89822%_ (vector-length _%table89814%_))
                 (_%entries89825%_ (##fxquotient _%size89822%_ '2))
                 (_%start89828%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89819%_ _%entries89825%_)
                   '1)))
            (let _%loop89832%_ ((_%probe89835%_ _%start89828%_)
                                (_%i89837%_ '1)
                                (_%deleted89839%_ '#f))
              (let ((_%k89842%_ (vector-ref _%table89814%_ _%probe89835%_)))
                (if (eq? _%k89842%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89839%_
                          (begin
                            (vector-set!
                             _%table89814%_
                             _%deleted89839%_
                             _%key89811%_)
                            (vector-set!
                             _%table89814%_
                             (##fx+ _%deleted89839%_ '1)
                             _%value89812%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89810%_
                                (##fx+ (&raw-table-count _%tab89810%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89814%_
                             _%probe89835%_
                             _%key89811%_)
                            (vector-set!
                             _%table89814%_
                             (##fx+ _%probe89835%_ '1)
                             _%value89812%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89810%_
                                (##fx- (&raw-table-free _%tab89810%_) '1))
                               (&raw-table-count-set!
                                _%tab89810%_
                                (##fx+ (&raw-table-count _%tab89810%_)
                                       '1)))))))
                    (if (eq? _%k89842%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89832%_
                           (let ((_%next-probe89849%_
                                  (fx+ _%start89828%_
                                       _%i89837%_
                                       (fx* _%i89837%_ _%i89837%_))))
                             (##fxmodulo _%next-probe89849%_ _%size89822%_))
                           (##fx+ _%i89837%_ '1)
                           (let ((_%$e89852%_ _%deleted89839%_))
                             (if _%$e89852%_ _%$e89852%_ _%probe89835%_))))
                        (if (_%test89817%_ _%key89811%_ _%k89842%_)
                            (let ()
                              (vector-set!
                               _%table89814%_
                               _%probe89835%_
                               _%key89811%_)
                              (vector-set!
                               _%table89814%_
                               (##fx+ _%probe89835%_ '1)
                               _%value89812%_))
                            (let ()
                              (_%loop89832%_
                               (let ((_%next-probe89857%_
                                      (fx+ _%start89828%_
                                           _%i89837%_
                                           (fx* _%i89837%_ _%i89837%_))))
                                 (##fxmodulo
                                  _%next-probe89857%_
                                  _%size89822%_))
                               (##fx+ _%i89837%_ '1)
                               _%deleted89839%_)))))))))))
    (define __raw-table-update!
      (lambda (_%tab89759%_ _%key89760%_ _%update89761%_ _%default89762%_)
        (let ((_%table89764%_ (&raw-table-table _%tab89759%_))
              (_%seed89765%_ (&raw-table-seed _%tab89759%_))
              (_%hash89766%_ (&raw-table-hash _%tab89759%_))
              (_%test89767%_ (&raw-table-test _%tab89759%_)))
          (let* ((_%h89769%_
                  (fxxor (_%hash89766%_ _%key89760%_) _%seed89765%_))
                 (_%size89772%_ (vector-length _%table89764%_))
                 (_%entries89775%_ (##fxquotient _%size89772%_ '2))
                 (_%start89778%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89769%_ _%entries89775%_)
                   '1)))
            (let _%loop89782%_ ((_%probe89785%_ _%start89778%_)
                                (_%i89787%_ '1)
                                (_%deleted89789%_ '#f))
              (let ((_%k89792%_ (vector-ref _%table89764%_ _%probe89785%_)))
                (if (eq? _%k89792%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89789%_
                          (begin
                            (vector-set!
                             _%table89764%_
                             _%deleted89789%_
                             _%key89760%_)
                            (vector-set!
                             _%table89764%_
                             (##fx+ _%deleted89789%_ '1)
                             (_%update89761%_ _%default89762%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89759%_
                                (##fx+ (&raw-table-count _%tab89759%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89764%_
                             _%probe89785%_
                             _%key89760%_)
                            (vector-set!
                             _%table89764%_
                             (##fx+ _%probe89785%_ '1)
                             (_%update89761%_ _%default89762%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89759%_
                                (##fx- (&raw-table-free _%tab89759%_) '1))
                               (&raw-table-count-set!
                                _%tab89759%_
                                (##fx+ (&raw-table-count _%tab89759%_)
                                       '1)))))))
                    (if (eq? _%k89792%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89782%_
                           (let ((_%next-probe89799%_
                                  (fx+ _%start89778%_
                                       _%i89787%_
                                       (fx* _%i89787%_ _%i89787%_))))
                             (##fxmodulo _%next-probe89799%_ _%size89772%_))
                           (##fx+ _%i89787%_ '1)
                           (let ((_%$e89802%_ _%deleted89789%_))
                             (if _%$e89802%_ _%$e89802%_ _%probe89785%_))))
                        (if (_%test89767%_ _%key89760%_ _%k89792%_)
                            (let ()
                              (vector-set!
                               _%table89764%_
                               _%probe89785%_
                               _%key89760%_)
                              (vector-set!
                               _%table89764%_
                               (##fx+ _%probe89785%_ '1)
                               (_%update89761%_
                                (vector-ref
                                 _%table89764%_
                                 (##fx+ _%probe89785%_ '1)))))
                            (let ()
                              (_%loop89782%_
                               (let ((_%next-probe89807%_
                                      (fx+ _%start89778%_
                                           _%i89787%_
                                           (fx* _%i89787%_ _%i89787%_))))
                                 (##fxmodulo
                                  _%next-probe89807%_
                                  _%size89772%_))
                               (##fx+ _%i89787%_ '1)
                               _%deleted89789%_)))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab89740%_)
        (let* ((_%old-table89742%_ (&raw-table-table _%tab89740%_))
               (_%old-size89744%_ (vector-length _%old-table89742%_))
               (_%new-size89746%_
                (if (##fx< (&raw-table-count _%tab89740%_)
                           (##fxquotient _%old-size89744%_ '4))
                    (vector-length _%old-table89742%_)
                    (##fx* '2 (vector-length _%old-table89742%_))))
               (_%new-table89748%_
                (##make-vector _%new-size89746%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab89740%_ _%new-table89748%_)
          (&raw-table-count-set! _%tab89740%_ '0)
          (&raw-table-free-set!
           _%tab89740%_
           (##fxquotient _%new-size89746%_ '2))
          (let _%lp89751%_ ((_%i89753%_ '0))
            (if (##fx< _%i89753%_ _%old-size89744%_)
                (begin
                  (let ((_%key89755%_
                         (vector-ref _%old-table89742%_ _%i89753%_)))
                    (if (and (not (eq? _%key89755%_ (macro-unused-obj)))
                             (not (eq? _%key89755%_ (macro-deleted-obj))))
                        (let ((_%value89757%_
                               (vector-ref
                                _%old-table89742%_
                                (##fx+ _%i89753%_ '1))))
                          (__raw-table-set!
                           _%tab89740%_
                           _%key89755%_
                           _%value89757%_))
                        '#!void))
                  (_%lp89751%_ (##fx+ _%i89753%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj89732%_)
        (let ((_%t89734%_ (##type _%obj89732%_)))
          (if (##fx= (##fxand _%t89734%_ '1) '0)
              (let ()
                (fxand (##type-cast _%obj89732%_ (macro-type-fixnum))
                       (macro-max-fixnum32)))
              (if (symbolic? _%obj89732%_)
                  (let () (symbolic-hash _%obj89732%_))
                  (if (procedure? _%obj89732%_)
                      (let () (procedure-hash _%obj89732%_))
                      (let ()
                        (fxand (__eq-hash _%obj89732%_)
                               (macro-max-fixnum32)))))))))
    (define procedure-hash
      (lambda (_%obj89728%_)
        (let ((_%h89730%_
               (if (##closure? _%obj89728%_)
                   (__eq-hash _%obj89728%_)
                   (##type-cast _%obj89728%_ '0))))
          (fxand _%h89730%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj89725%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj89725%_)))
    (define eqv-hash
      (lambda (_%obj89715%_)
        (letrec ((_%combine89717%_
                  (lambda (_%a89722%_ _%b89723%_)
                    (fxand (##fx* (##fx+ _%a89722%_
                                         (fxarithmetic-shift-left
                                          _%b89723%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash89718%_
                  (lambda (_%obj89720%_)
                    (macro-number-dispatch
                     _%obj89720%_
                     (eq-hash _%obj89720%_)
                     (fxand _%obj89720%_ (macro-max-fixnum32))
                     (modulo _%obj89720%_ '331804481)
                     (_%combine89717%_
                      (_%hash89718%_ (macro-ratnum-numerator _%obj89720%_))
                      (_%hash89718%_ (macro-ratnum-denominator _%obj89720%_)))
                     (_%combine89717%_
                      (##u16vector-ref _%obj89720%_ '0)
                      (_%combine89717%_
                       (##u16vector-ref _%obj89720%_ '1)
                       (_%combine89717%_
                        (##u16vector-ref _%obj89720%_ '2)
                        (##u16vector-ref _%obj89720%_ '3))))
                     (_%combine89717%_
                      (_%hash89718%_ (macro-cpxnum-real _%obj89720%_))
                      (_%hash89718%_ (macro-cpxnum-imag _%obj89720%_)))))))
          (_%hash89718%_ _%obj89715%_))))
    (define symbolic?
      (lambda (_%obj89710%_)
        (let ((_%$e89712%_ (symbol? _%obj89710%_)))
          (if _%$e89712%_ _%$e89712%_ (keyword? _%obj89710%_)))))
    (define symbolic-hash (lambda (_%obj89708%_) (macro-slot '1 _%obj89708%_)))
    (define string-hash (lambda (_%obj89706%_) (##string=?-hash _%obj89706%_)))
    (define immediate-hash
      (lambda (_%obj89704%_) (##type-cast _%obj89704%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint89685%_ _%seed89687%_)
        (make-raw-table__% _%size-hint89685%_ eq-hash eq? _%seed89687%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint89693%_ '#f) (_%seed89695%_ '0))
          (make-eq-table__% _%size-hint89693%_ _%seed89695%_))))
    (define make-eq-table__1
      (lambda (_%size-hint89697%_)
        (let ((_%seed89699%_ '0))
          (make-eq-table__% _%size-hint89697%_ _%seed89699%_))))
    (define make-eq-table
      (lambda _g90041_
        (let ((_g90040_ (##length _g90041_)))
          (cond ((##fx= _g90040_ 0)
                 (apply (lambda () (make-eq-table__0)) _g90041_))
                ((##fx= _g90040_ 1)
                 (apply (lambda (_%size-hint89697%_)
                          (make-eq-table__1 _%size-hint89697%_))
                        _g90041_))
                ((##fx= _g90040_ 2)
                 (apply (lambda (_%size-hint89701%_ _%seed89702%_)
                          (make-eq-table__% _%size-hint89701%_ _%seed89702%_))
                        _g90041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90041_))))))
    (define eq-table-ref
      (lambda (_%tab89638%_ _%key89639%_ _%default89640%_)
        (let ((_%table89642%_ (&raw-table-table _%tab89638%_))
              (_%seed89643%_ (&raw-table-seed _%tab89638%_)))
          (let* ((_%h89645%_ (fxxor (eq-hash _%key89639%_) _%seed89643%_))
                 (_%size89648%_ (vector-length _%table89642%_))
                 (_%entries89651%_ (##fxquotient _%size89648%_ '2))
                 (_%start89654%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89645%_ _%entries89651%_)
                   '1)))
            (let _%loop89658%_ ((_%probe89661%_ _%start89654%_)
                                (_%i89663%_ '1)
                                (_%deleted89665%_ '#f))
              (let ((_%k89668%_ (vector-ref _%table89642%_ _%probe89661%_)))
                (if (eq? _%k89668%_ (macro-unused-obj))
                    (let () _%default89640%_)
                    (if (eq? _%k89668%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89658%_
                           (let ((_%next-probe89673%_
                                  (fx+ _%start89654%_
                                       _%i89663%_
                                       (fx* _%i89663%_ _%i89663%_))))
                             (##fxmodulo _%next-probe89673%_ _%size89648%_))
                           (##fx+ _%i89663%_ '1)
                           (let ((_%$e89676%_ _%deleted89665%_))
                             (if _%$e89676%_ _%$e89676%_ _%probe89661%_))))
                        (if (eq? _%key89639%_ _%k89668%_)
                            (let ()
                              (vector-ref
                               _%table89642%_
                               (##fx+ _%probe89661%_ '1)))
                            (let ()
                              (_%loop89658%_
                               (let ((_%next-probe89681%_
                                      (fx+ _%start89654%_
                                           _%i89663%_
                                           (fx* _%i89663%_ _%i89663%_))))
                                 (##fxmodulo
                                  _%next-probe89681%_
                                  _%size89648%_))
                               (##fx+ _%i89663%_ '1)
                               _%deleted89665%_)))))))))))
    (define eq-table-set!
      (lambda (_%tab89634%_ _%key89635%_ _%value89636%_)
        (if (##fx< (&raw-table-free _%tab89634%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89634%_))
                    '4))
            (__raw-table-rehash! _%tab89634%_)
            '#!void)
        (__eq-table-set! _%tab89634%_ _%key89635%_ _%value89636%_)))
    (define __eq-table-set!
      (lambda (_%tab89585%_ _%key89586%_ _%value89587%_)
        (let ((_%table89590%_ (&raw-table-table _%tab89585%_))
              (_%seed89591%_ (&raw-table-seed _%tab89585%_)))
          (let* ((_%h89593%_ (fxxor (eq-hash _%key89586%_) _%seed89591%_))
                 (_%size89596%_ (vector-length _%table89590%_))
                 (_%entries89599%_ (##fxquotient _%size89596%_ '2))
                 (_%start89602%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89593%_ _%entries89599%_)
                   '1)))
            (let _%loop89606%_ ((_%probe89609%_ _%start89602%_)
                                (_%i89611%_ '1)
                                (_%deleted89613%_ '#f))
              (let ((_%k89616%_ (vector-ref _%table89590%_ _%probe89609%_)))
                (if (eq? _%k89616%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89613%_
                          (begin
                            (vector-set!
                             _%table89590%_
                             _%deleted89613%_
                             _%key89586%_)
                            (vector-set!
                             _%table89590%_
                             (##fx+ _%deleted89613%_ '1)
                             _%value89587%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89585%_
                                (##fx+ (&raw-table-count _%tab89585%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89590%_
                             _%probe89609%_
                             _%key89586%_)
                            (vector-set!
                             _%table89590%_
                             (##fx+ _%probe89609%_ '1)
                             _%value89587%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89585%_
                                (##fx- (&raw-table-free _%tab89585%_) '1))
                               (&raw-table-count-set!
                                _%tab89585%_
                                (##fx+ (&raw-table-count _%tab89585%_)
                                       '1)))))))
                    (if (eq? _%k89616%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89606%_
                           (let ((_%next-probe89623%_
                                  (fx+ _%start89602%_
                                       _%i89611%_
                                       (fx* _%i89611%_ _%i89611%_))))
                             (##fxmodulo _%next-probe89623%_ _%size89596%_))
                           (##fx+ _%i89611%_ '1)
                           (let ((_%$e89626%_ _%deleted89613%_))
                             (if _%$e89626%_ _%$e89626%_ _%probe89609%_))))
                        (if (eq? _%key89586%_ _%k89616%_)
                            (let ()
                              (vector-set!
                               _%table89590%_
                               _%probe89609%_
                               _%key89586%_)
                              (vector-set!
                               _%table89590%_
                               (##fx+ _%probe89609%_ '1)
                               _%value89587%_))
                            (let ()
                              (_%loop89606%_
                               (let ((_%next-probe89631%_
                                      (fx+ _%start89602%_
                                           _%i89611%_
                                           (fx* _%i89611%_ _%i89611%_))))
                                 (##fxmodulo
                                  _%next-probe89631%_
                                  _%size89596%_))
                               (##fx+ _%i89611%_ '1)
                               _%deleted89613%_)))))))))))
    (define eq-table-update!
      (lambda (_%tab89580%_
               _%key89581%_
               _%eq-table-update!89582%_
               _%default89583%_)
        (if (##fx< (&raw-table-free _%tab89580%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89580%_))
                    '4))
            (__raw-table-rehash! _%tab89580%_)
            '#!void)
        (__eq-table-update!
         _%tab89580%_
         _%key89581%_
         _%eq-table-update!89582%_
         _%default89583%_)))
    (define __eq-table-update!
      (lambda (_%tab89530%_
               _%key89531%_
               _%eq-table-update!89532%_
               _%default89533%_)
        (let ((_%table89536%_ (&raw-table-table _%tab89530%_))
              (_%seed89537%_ (&raw-table-seed _%tab89530%_)))
          (let* ((_%h89539%_ (fxxor (eq-hash _%key89531%_) _%seed89537%_))
                 (_%size89542%_ (vector-length _%table89536%_))
                 (_%entries89545%_ (##fxquotient _%size89542%_ '2))
                 (_%start89548%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89539%_ _%entries89545%_)
                   '1)))
            (let _%loop89552%_ ((_%probe89555%_ _%start89548%_)
                                (_%i89557%_ '1)
                                (_%deleted89559%_ '#f))
              (let ((_%k89562%_ (vector-ref _%table89536%_ _%probe89555%_)))
                (if (eq? _%k89562%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89559%_
                          (begin
                            (vector-set!
                             _%table89536%_
                             _%deleted89559%_
                             _%key89531%_)
                            (vector-set!
                             _%table89536%_
                             (##fx+ _%deleted89559%_ '1)
                             (_%eq-table-update!89532%_ _%default89533%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89530%_
                                (##fx+ (&raw-table-count _%tab89530%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89536%_
                             _%probe89555%_
                             _%key89531%_)
                            (vector-set!
                             _%table89536%_
                             (##fx+ _%probe89555%_ '1)
                             (_%eq-table-update!89532%_ _%default89533%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89530%_
                                (##fx- (&raw-table-free _%tab89530%_) '1))
                               (&raw-table-count-set!
                                _%tab89530%_
                                (##fx+ (&raw-table-count _%tab89530%_)
                                       '1)))))))
                    (if (eq? _%k89562%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89552%_
                           (let ((_%next-probe89569%_
                                  (fx+ _%start89548%_
                                       _%i89557%_
                                       (fx* _%i89557%_ _%i89557%_))))
                             (##fxmodulo _%next-probe89569%_ _%size89542%_))
                           (##fx+ _%i89557%_ '1)
                           (let ((_%$e89572%_ _%deleted89559%_))
                             (if _%$e89572%_ _%$e89572%_ _%probe89555%_))))
                        (if (eq? _%key89531%_ _%k89562%_)
                            (let ()
                              (vector-set!
                               _%table89536%_
                               _%probe89555%_
                               _%key89531%_)
                              (vector-set!
                               _%table89536%_
                               (##fx+ _%probe89555%_ '1)
                               (_%eq-table-update!89532%_
                                (vector-ref
                                 _%table89536%_
                                 (##fx+ _%probe89555%_ '1)))))
                            (let ()
                              (_%loop89552%_
                               (let ((_%next-probe89577%_
                                      (fx+ _%start89548%_
                                           _%i89557%_
                                           (fx* _%i89557%_ _%i89557%_))))
                                 (##fxmodulo
                                  _%next-probe89577%_
                                  _%size89542%_))
                               (##fx+ _%i89557%_ '1)
                               _%deleted89559%_)))))))))))
    (define eq-table-delete!
      (lambda (_%tab89485%_ _%key89487%_)
        (let ((_%table89490%_ (&raw-table-table _%tab89485%_))
              (_%seed89492%_ (&raw-table-seed _%tab89485%_)))
          (let* ((_%h89495%_ (fxxor (eq-hash _%key89487%_) _%seed89492%_))
                 (_%size89498%_ (vector-length _%table89490%_))
                 (_%entries89501%_ (##fxquotient _%size89498%_ '2))
                 (_%start89504%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89495%_ _%entries89501%_)
                   '1)))
            (let _%loop89508%_ ((_%probe89511%_ _%start89504%_)
                                (_%i89513%_ '1))
              (let ((_%k89516%_ (vector-ref _%table89490%_ _%probe89511%_)))
                (if (eq? _%k89516%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89516%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89508%_
                           (let ((_%next-probe89521%_
                                  (fx+ _%start89504%_
                                       _%i89513%_
                                       (fx* _%i89513%_ _%i89513%_))))
                             (##fxmodulo _%next-probe89521%_ _%size89498%_))
                           (##fx+ _%i89513%_ '1)))
                        (if (eq? _%key89487%_ _%k89516%_)
                            (let ()
                              (vector-set!
                               _%table89490%_
                               _%probe89511%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89490%_
                               (##fx+ _%probe89511%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89485%_
                                  (##fx- (&raw-table-count _%tab89485%_)
                                         '1)))))
                            (let ()
                              (_%loop89508%_
                               (let ((_%next-probe89527%_
                                      (fx+ _%start89504%_
                                           _%i89513%_
                                           (fx* _%i89513%_ _%i89513%_))))
                                 (##fxmodulo
                                  _%next-probe89527%_
                                  _%size89498%_))
                               (##fx+ _%i89513%_ '1))))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint89466%_ _%seed89468%_)
        (make-raw-table__% _%size-hint89466%_ eqv-hash eqv? _%seed89468%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint89474%_ '#f) (_%seed89476%_ '0))
          (make-eqv-table__% _%size-hint89474%_ _%seed89476%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint89478%_)
        (let ((_%seed89480%_ '0))
          (make-eqv-table__% _%size-hint89478%_ _%seed89480%_))))
    (define make-eqv-table
      (lambda _g90043_
        (let ((_g90042_ (##length _g90043_)))
          (cond ((##fx= _g90042_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g90043_))
                ((##fx= _g90042_ 1)
                 (apply (lambda (_%size-hint89478%_)
                          (make-eqv-table__1 _%size-hint89478%_))
                        _g90043_))
                ((##fx= _g90042_ 2)
                 (apply (lambda (_%size-hint89482%_ _%seed89483%_)
                          (make-eqv-table__% _%size-hint89482%_ _%seed89483%_))
                        _g90043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90043_))))))
    (define eqv-table-ref
      (lambda (_%tab89419%_ _%key89420%_ _%default89421%_)
        (let ((_%table89423%_ (&raw-table-table _%tab89419%_))
              (_%seed89424%_ (&raw-table-seed _%tab89419%_)))
          (let* ((_%h89426%_ (fxxor (eqv-hash _%key89420%_) _%seed89424%_))
                 (_%size89429%_ (vector-length _%table89423%_))
                 (_%entries89432%_ (##fxquotient _%size89429%_ '2))
                 (_%start89435%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89426%_ _%entries89432%_)
                   '1)))
            (let _%loop89439%_ ((_%probe89442%_ _%start89435%_)
                                (_%i89444%_ '1)
                                (_%deleted89446%_ '#f))
              (let ((_%k89449%_ (vector-ref _%table89423%_ _%probe89442%_)))
                (if (eq? _%k89449%_ (macro-unused-obj))
                    (let () _%default89421%_)
                    (if (eq? _%k89449%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89439%_
                           (let ((_%next-probe89454%_
                                  (fx+ _%start89435%_
                                       _%i89444%_
                                       (fx* _%i89444%_ _%i89444%_))))
                             (##fxmodulo _%next-probe89454%_ _%size89429%_))
                           (##fx+ _%i89444%_ '1)
                           (let ((_%$e89457%_ _%deleted89446%_))
                             (if _%$e89457%_ _%$e89457%_ _%probe89442%_))))
                        (if (eqv? _%key89420%_ _%k89449%_)
                            (let ()
                              (vector-ref
                               _%table89423%_
                               (##fx+ _%probe89442%_ '1)))
                            (let ()
                              (_%loop89439%_
                               (let ((_%next-probe89462%_
                                      (fx+ _%start89435%_
                                           _%i89444%_
                                           (fx* _%i89444%_ _%i89444%_))))
                                 (##fxmodulo
                                  _%next-probe89462%_
                                  _%size89429%_))
                               (##fx+ _%i89444%_ '1)
                               _%deleted89446%_)))))))))))
    (define eqv-table-set!
      (lambda (_%tab89415%_ _%key89416%_ _%value89417%_)
        (if (##fx< (&raw-table-free _%tab89415%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89415%_))
                    '4))
            (__raw-table-rehash! _%tab89415%_)
            '#!void)
        (__eqv-table-set! _%tab89415%_ _%key89416%_ _%value89417%_)))
    (define __eqv-table-set!
      (lambda (_%tab89366%_ _%key89367%_ _%value89368%_)
        (let ((_%table89371%_ (&raw-table-table _%tab89366%_))
              (_%seed89372%_ (&raw-table-seed _%tab89366%_)))
          (let* ((_%h89374%_ (fxxor (eqv-hash _%key89367%_) _%seed89372%_))
                 (_%size89377%_ (vector-length _%table89371%_))
                 (_%entries89380%_ (##fxquotient _%size89377%_ '2))
                 (_%start89383%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89374%_ _%entries89380%_)
                   '1)))
            (let _%loop89387%_ ((_%probe89390%_ _%start89383%_)
                                (_%i89392%_ '1)
                                (_%deleted89394%_ '#f))
              (let ((_%k89397%_ (vector-ref _%table89371%_ _%probe89390%_)))
                (if (eq? _%k89397%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89394%_
                          (begin
                            (vector-set!
                             _%table89371%_
                             _%deleted89394%_
                             _%key89367%_)
                            (vector-set!
                             _%table89371%_
                             (##fx+ _%deleted89394%_ '1)
                             _%value89368%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89366%_
                                (##fx+ (&raw-table-count _%tab89366%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89371%_
                             _%probe89390%_
                             _%key89367%_)
                            (vector-set!
                             _%table89371%_
                             (##fx+ _%probe89390%_ '1)
                             _%value89368%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89366%_
                                (##fx- (&raw-table-free _%tab89366%_) '1))
                               (&raw-table-count-set!
                                _%tab89366%_
                                (##fx+ (&raw-table-count _%tab89366%_)
                                       '1)))))))
                    (if (eq? _%k89397%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89387%_
                           (let ((_%next-probe89404%_
                                  (fx+ _%start89383%_
                                       _%i89392%_
                                       (fx* _%i89392%_ _%i89392%_))))
                             (##fxmodulo _%next-probe89404%_ _%size89377%_))
                           (##fx+ _%i89392%_ '1)
                           (let ((_%$e89407%_ _%deleted89394%_))
                             (if _%$e89407%_ _%$e89407%_ _%probe89390%_))))
                        (if (eqv? _%key89367%_ _%k89397%_)
                            (let ()
                              (vector-set!
                               _%table89371%_
                               _%probe89390%_
                               _%key89367%_)
                              (vector-set!
                               _%table89371%_
                               (##fx+ _%probe89390%_ '1)
                               _%value89368%_))
                            (let ()
                              (_%loop89387%_
                               (let ((_%next-probe89412%_
                                      (fx+ _%start89383%_
                                           _%i89392%_
                                           (fx* _%i89392%_ _%i89392%_))))
                                 (##fxmodulo
                                  _%next-probe89412%_
                                  _%size89377%_))
                               (##fx+ _%i89392%_ '1)
                               _%deleted89394%_)))))))))))
    (define eqv-table-update!
      (lambda (_%tab89361%_
               _%key89362%_
               _%eqv-table-update!89363%_
               _%default89364%_)
        (if (##fx< (&raw-table-free _%tab89361%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89361%_))
                    '4))
            (__raw-table-rehash! _%tab89361%_)
            '#!void)
        (__eqv-table-update!
         _%tab89361%_
         _%key89362%_
         _%eqv-table-update!89363%_
         _%default89364%_)))
    (define __eqv-table-update!
      (lambda (_%tab89311%_
               _%key89312%_
               _%eqv-table-update!89313%_
               _%default89314%_)
        (let ((_%table89317%_ (&raw-table-table _%tab89311%_))
              (_%seed89318%_ (&raw-table-seed _%tab89311%_)))
          (let* ((_%h89320%_ (fxxor (eqv-hash _%key89312%_) _%seed89318%_))
                 (_%size89323%_ (vector-length _%table89317%_))
                 (_%entries89326%_ (##fxquotient _%size89323%_ '2))
                 (_%start89329%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89320%_ _%entries89326%_)
                   '1)))
            (let _%loop89333%_ ((_%probe89336%_ _%start89329%_)
                                (_%i89338%_ '1)
                                (_%deleted89340%_ '#f))
              (let ((_%k89343%_ (vector-ref _%table89317%_ _%probe89336%_)))
                (if (eq? _%k89343%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89340%_
                          (begin
                            (vector-set!
                             _%table89317%_
                             _%deleted89340%_
                             _%key89312%_)
                            (vector-set!
                             _%table89317%_
                             (##fx+ _%deleted89340%_ '1)
                             (_%eqv-table-update!89313%_ _%default89314%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89311%_
                                (##fx+ (&raw-table-count _%tab89311%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89317%_
                             _%probe89336%_
                             _%key89312%_)
                            (vector-set!
                             _%table89317%_
                             (##fx+ _%probe89336%_ '1)
                             (_%eqv-table-update!89313%_ _%default89314%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89311%_
                                (##fx- (&raw-table-free _%tab89311%_) '1))
                               (&raw-table-count-set!
                                _%tab89311%_
                                (##fx+ (&raw-table-count _%tab89311%_)
                                       '1)))))))
                    (if (eq? _%k89343%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89333%_
                           (let ((_%next-probe89350%_
                                  (fx+ _%start89329%_
                                       _%i89338%_
                                       (fx* _%i89338%_ _%i89338%_))))
                             (##fxmodulo _%next-probe89350%_ _%size89323%_))
                           (##fx+ _%i89338%_ '1)
                           (let ((_%$e89353%_ _%deleted89340%_))
                             (if _%$e89353%_ _%$e89353%_ _%probe89336%_))))
                        (if (eqv? _%key89312%_ _%k89343%_)
                            (let ()
                              (vector-set!
                               _%table89317%_
                               _%probe89336%_
                               _%key89312%_)
                              (vector-set!
                               _%table89317%_
                               (##fx+ _%probe89336%_ '1)
                               (_%eqv-table-update!89313%_
                                (vector-ref
                                 _%table89317%_
                                 (##fx+ _%probe89336%_ '1)))))
                            (let ()
                              (_%loop89333%_
                               (let ((_%next-probe89358%_
                                      (fx+ _%start89329%_
                                           _%i89338%_
                                           (fx* _%i89338%_ _%i89338%_))))
                                 (##fxmodulo
                                  _%next-probe89358%_
                                  _%size89323%_))
                               (##fx+ _%i89338%_ '1)
                               _%deleted89340%_)))))))))))
    (define eqv-table-delete!
      (lambda (_%tab89266%_ _%key89268%_)
        (let ((_%table89271%_ (&raw-table-table _%tab89266%_))
              (_%seed89273%_ (&raw-table-seed _%tab89266%_)))
          (let* ((_%h89276%_ (fxxor (eqv-hash _%key89268%_) _%seed89273%_))
                 (_%size89279%_ (vector-length _%table89271%_))
                 (_%entries89282%_ (##fxquotient _%size89279%_ '2))
                 (_%start89285%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89276%_ _%entries89282%_)
                   '1)))
            (let _%loop89289%_ ((_%probe89292%_ _%start89285%_)
                                (_%i89294%_ '1))
              (let ((_%k89297%_ (vector-ref _%table89271%_ _%probe89292%_)))
                (if (eq? _%k89297%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89297%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89289%_
                           (let ((_%next-probe89302%_
                                  (fx+ _%start89285%_
                                       _%i89294%_
                                       (fx* _%i89294%_ _%i89294%_))))
                             (##fxmodulo _%next-probe89302%_ _%size89279%_))
                           (##fx+ _%i89294%_ '1)))
                        (if (eqv? _%key89268%_ _%k89297%_)
                            (let ()
                              (vector-set!
                               _%table89271%_
                               _%probe89292%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89271%_
                               (##fx+ _%probe89292%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89266%_
                                  (##fx- (&raw-table-count _%tab89266%_)
                                         '1)))))
                            (let ()
                              (_%loop89289%_
                               (let ((_%next-probe89308%_
                                      (fx+ _%start89285%_
                                           _%i89294%_
                                           (fx* _%i89294%_ _%i89294%_))))
                                 (##fxmodulo
                                  _%next-probe89308%_
                                  _%size89279%_))
                               (##fx+ _%i89294%_ '1))))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint89247%_ _%seed89249%_)
        (make-raw-table__%
         _%size-hint89247%_
         symbolic-hash
         eq?
         _%seed89249%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint89255%_ '#f) (_%seed89257%_ '0))
          (make-symbolic-table__% _%size-hint89255%_ _%seed89257%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint89259%_)
        (let ((_%seed89261%_ '0))
          (make-symbolic-table__% _%size-hint89259%_ _%seed89261%_))))
    (define make-symbolic-table
      (lambda _g90045_
        (let ((_g90044_ (##length _g90045_)))
          (cond ((##fx= _g90044_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g90045_))
                ((##fx= _g90044_ 1)
                 (apply (lambda (_%size-hint89259%_)
                          (make-symbolic-table__1 _%size-hint89259%_))
                        _g90045_))
                ((##fx= _g90044_ 2)
                 (apply (lambda (_%size-hint89263%_ _%seed89264%_)
                          (make-symbolic-table__%
                           _%size-hint89263%_
                           _%seed89264%_))
                        _g90045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90045_))))))
    (define symbolic-table-ref
      (lambda (_%tab89200%_ _%key89201%_ _%default89202%_)
        (let ((_%table89204%_ (&raw-table-table _%tab89200%_))
              (_%seed89205%_ (&raw-table-seed _%tab89200%_)))
          (let* ((_%h89207%_
                  (fxxor (symbolic-hash _%key89201%_) _%seed89205%_))
                 (_%size89210%_ (vector-length _%table89204%_))
                 (_%entries89213%_ (##fxquotient _%size89210%_ '2))
                 (_%start89216%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89207%_ _%entries89213%_)
                   '1)))
            (let _%loop89220%_ ((_%probe89223%_ _%start89216%_)
                                (_%i89225%_ '1)
                                (_%deleted89227%_ '#f))
              (let ((_%k89230%_ (vector-ref _%table89204%_ _%probe89223%_)))
                (if (eq? _%k89230%_ (macro-unused-obj))
                    (let () _%default89202%_)
                    (if (eq? _%k89230%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89220%_
                           (let ((_%next-probe89235%_
                                  (fx+ _%start89216%_
                                       _%i89225%_
                                       (fx* _%i89225%_ _%i89225%_))))
                             (##fxmodulo _%next-probe89235%_ _%size89210%_))
                           (##fx+ _%i89225%_ '1)
                           (let ((_%$e89238%_ _%deleted89227%_))
                             (if _%$e89238%_ _%$e89238%_ _%probe89223%_))))
                        (if (eq? _%key89201%_ _%k89230%_)
                            (let ()
                              (vector-ref
                               _%table89204%_
                               (##fx+ _%probe89223%_ '1)))
                            (let ()
                              (_%loop89220%_
                               (let ((_%next-probe89243%_
                                      (fx+ _%start89216%_
                                           _%i89225%_
                                           (fx* _%i89225%_ _%i89225%_))))
                                 (##fxmodulo
                                  _%next-probe89243%_
                                  _%size89210%_))
                               (##fx+ _%i89225%_ '1)
                               _%deleted89227%_)))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89196%_ _%key89197%_ _%value89198%_)
        (if (##fx< (&raw-table-free _%tab89196%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89196%_))
                    '4))
            (__raw-table-rehash! _%tab89196%_)
            '#!void)
        (__symbolic-table-set! _%tab89196%_ _%key89197%_ _%value89198%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89147%_ _%key89148%_ _%value89149%_)
        (let ((_%table89152%_ (&raw-table-table _%tab89147%_))
              (_%seed89153%_ (&raw-table-seed _%tab89147%_)))
          (let* ((_%h89155%_
                  (fxxor (symbolic-hash _%key89148%_) _%seed89153%_))
                 (_%size89158%_ (vector-length _%table89152%_))
                 (_%entries89161%_ (##fxquotient _%size89158%_ '2))
                 (_%start89164%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89155%_ _%entries89161%_)
                   '1)))
            (let _%loop89168%_ ((_%probe89171%_ _%start89164%_)
                                (_%i89173%_ '1)
                                (_%deleted89175%_ '#f))
              (let ((_%k89178%_ (vector-ref _%table89152%_ _%probe89171%_)))
                (if (eq? _%k89178%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89175%_
                          (begin
                            (vector-set!
                             _%table89152%_
                             _%deleted89175%_
                             _%key89148%_)
                            (vector-set!
                             _%table89152%_
                             (##fx+ _%deleted89175%_ '1)
                             _%value89149%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89147%_
                                (##fx+ (&raw-table-count _%tab89147%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89152%_
                             _%probe89171%_
                             _%key89148%_)
                            (vector-set!
                             _%table89152%_
                             (##fx+ _%probe89171%_ '1)
                             _%value89149%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89147%_
                                (##fx- (&raw-table-free _%tab89147%_) '1))
                               (&raw-table-count-set!
                                _%tab89147%_
                                (##fx+ (&raw-table-count _%tab89147%_)
                                       '1)))))))
                    (if (eq? _%k89178%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89168%_
                           (let ((_%next-probe89185%_
                                  (fx+ _%start89164%_
                                       _%i89173%_
                                       (fx* _%i89173%_ _%i89173%_))))
                             (##fxmodulo _%next-probe89185%_ _%size89158%_))
                           (##fx+ _%i89173%_ '1)
                           (let ((_%$e89188%_ _%deleted89175%_))
                             (if _%$e89188%_ _%$e89188%_ _%probe89171%_))))
                        (if (eq? _%key89148%_ _%k89178%_)
                            (let ()
                              (vector-set!
                               _%table89152%_
                               _%probe89171%_
                               _%key89148%_)
                              (vector-set!
                               _%table89152%_
                               (##fx+ _%probe89171%_ '1)
                               _%value89149%_))
                            (let ()
                              (_%loop89168%_
                               (let ((_%next-probe89193%_
                                      (fx+ _%start89164%_
                                           _%i89173%_
                                           (fx* _%i89173%_ _%i89173%_))))
                                 (##fxmodulo
                                  _%next-probe89193%_
                                  _%size89158%_))
                               (##fx+ _%i89173%_ '1)
                               _%deleted89175%_)))))))))))
    (define symbolic-table-update!
      (lambda (_%tab89142%_
               _%key89143%_
               _%symbolic-table-update!89144%_
               _%default89145%_)
        (if (##fx< (&raw-table-free _%tab89142%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89142%_))
                    '4))
            (__raw-table-rehash! _%tab89142%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89142%_
         _%key89143%_
         _%symbolic-table-update!89144%_
         _%default89145%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89092%_
               _%key89093%_
               _%symbolic-table-update!89094%_
               _%default89095%_)
        (let ((_%table89098%_ (&raw-table-table _%tab89092%_))
              (_%seed89099%_ (&raw-table-seed _%tab89092%_)))
          (let* ((_%h89101%_
                  (fxxor (symbolic-hash _%key89093%_) _%seed89099%_))
                 (_%size89104%_ (vector-length _%table89098%_))
                 (_%entries89107%_ (##fxquotient _%size89104%_ '2))
                 (_%start89110%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89101%_ _%entries89107%_)
                   '1)))
            (let _%loop89114%_ ((_%probe89117%_ _%start89110%_)
                                (_%i89119%_ '1)
                                (_%deleted89121%_ '#f))
              (let ((_%k89124%_ (vector-ref _%table89098%_ _%probe89117%_)))
                (if (eq? _%k89124%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89121%_
                          (begin
                            (vector-set!
                             _%table89098%_
                             _%deleted89121%_
                             _%key89093%_)
                            (vector-set!
                             _%table89098%_
                             (##fx+ _%deleted89121%_ '1)
                             (_%symbolic-table-update!89094%_
                              _%default89095%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89092%_
                                (##fx+ (&raw-table-count _%tab89092%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89098%_
                             _%probe89117%_
                             _%key89093%_)
                            (vector-set!
                             _%table89098%_
                             (##fx+ _%probe89117%_ '1)
                             (_%symbolic-table-update!89094%_
                              _%default89095%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89092%_
                                (##fx- (&raw-table-free _%tab89092%_) '1))
                               (&raw-table-count-set!
                                _%tab89092%_
                                (##fx+ (&raw-table-count _%tab89092%_)
                                       '1)))))))
                    (if (eq? _%k89124%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89114%_
                           (let ((_%next-probe89131%_
                                  (fx+ _%start89110%_
                                       _%i89119%_
                                       (fx* _%i89119%_ _%i89119%_))))
                             (##fxmodulo _%next-probe89131%_ _%size89104%_))
                           (##fx+ _%i89119%_ '1)
                           (let ((_%$e89134%_ _%deleted89121%_))
                             (if _%$e89134%_ _%$e89134%_ _%probe89117%_))))
                        (if (eq? _%key89093%_ _%k89124%_)
                            (let ()
                              (vector-set!
                               _%table89098%_
                               _%probe89117%_
                               _%key89093%_)
                              (vector-set!
                               _%table89098%_
                               (##fx+ _%probe89117%_ '1)
                               (_%symbolic-table-update!89094%_
                                (vector-ref
                                 _%table89098%_
                                 (##fx+ _%probe89117%_ '1)))))
                            (let ()
                              (_%loop89114%_
                               (let ((_%next-probe89139%_
                                      (fx+ _%start89110%_
                                           _%i89119%_
                                           (fx* _%i89119%_ _%i89119%_))))
                                 (##fxmodulo
                                  _%next-probe89139%_
                                  _%size89104%_))
                               (##fx+ _%i89119%_ '1)
                               _%deleted89121%_)))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89047%_ _%key89049%_)
        (let ((_%table89052%_ (&raw-table-table _%tab89047%_))
              (_%seed89054%_ (&raw-table-seed _%tab89047%_)))
          (let* ((_%h89057%_
                  (fxxor (symbolic-hash _%key89049%_) _%seed89054%_))
                 (_%size89060%_ (vector-length _%table89052%_))
                 (_%entries89063%_ (##fxquotient _%size89060%_ '2))
                 (_%start89066%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89057%_ _%entries89063%_)
                   '1)))
            (let _%loop89070%_ ((_%probe89073%_ _%start89066%_)
                                (_%i89075%_ '1))
              (let ((_%k89078%_ (vector-ref _%table89052%_ _%probe89073%_)))
                (if (eq? _%k89078%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89078%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89070%_
                           (let ((_%next-probe89083%_
                                  (fx+ _%start89066%_
                                       _%i89075%_
                                       (fx* _%i89075%_ _%i89075%_))))
                             (##fxmodulo _%next-probe89083%_ _%size89060%_))
                           (##fx+ _%i89075%_ '1)))
                        (if (eq? _%key89049%_ _%k89078%_)
                            (let ()
                              (vector-set!
                               _%table89052%_
                               _%probe89073%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89052%_
                               (##fx+ _%probe89073%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89047%_
                                  (##fx- (&raw-table-count _%tab89047%_)
                                         '1)))))
                            (let ()
                              (_%loop89070%_
                               (let ((_%next-probe89089%_
                                      (fx+ _%start89066%_
                                           _%i89075%_
                                           (fx* _%i89075%_ _%i89075%_))))
                                 (##fxmodulo
                                  _%next-probe89089%_
                                  _%size89060%_))
                               (##fx+ _%i89075%_ '1))))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89028%_ _%seed89030%_)
        (make-raw-table__%
         _%size-hint89028%_
         string-hash
         ##string=?
         _%seed89030%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89036%_ '#f) (_%seed89038%_ '0))
          (make-string-table__% _%size-hint89036%_ _%seed89038%_))))
    (define make-string-table__1
      (lambda (_%size-hint89040%_)
        (let ((_%seed89042%_ '0))
          (make-string-table__% _%size-hint89040%_ _%seed89042%_))))
    (define make-string-table
      (lambda _g90047_
        (let ((_g90046_ (##length _g90047_)))
          (cond ((##fx= _g90046_ 0)
                 (apply (lambda () (make-string-table__0)) _g90047_))
                ((##fx= _g90046_ 1)
                 (apply (lambda (_%size-hint89040%_)
                          (make-string-table__1 _%size-hint89040%_))
                        _g90047_))
                ((##fx= _g90046_ 2)
                 (apply (lambda (_%size-hint89044%_ _%seed89045%_)
                          (make-string-table__%
                           _%size-hint89044%_
                           _%seed89045%_))
                        _g90047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90047_))))))
    (define string-table-ref
      (lambda (_%tab88981%_ _%key88982%_ _%default88983%_)
        (let ((_%table88985%_ (&raw-table-table _%tab88981%_))
              (_%seed88986%_ (&raw-table-seed _%tab88981%_)))
          (let* ((_%h88988%_
                  (fxxor (##string=?-hash _%key88982%_) _%seed88986%_))
                 (_%size88991%_ (vector-length _%table88985%_))
                 (_%entries88994%_ (##fxquotient _%size88991%_ '2))
                 (_%start88997%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88988%_ _%entries88994%_)
                   '1)))
            (let _%loop89001%_ ((_%probe89004%_ _%start88997%_)
                                (_%i89006%_ '1)
                                (_%deleted89008%_ '#f))
              (let ((_%k89011%_ (vector-ref _%table88985%_ _%probe89004%_)))
                (if (eq? _%k89011%_ (macro-unused-obj))
                    (let () _%default88983%_)
                    (if (eq? _%k89011%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89001%_
                           (let ((_%next-probe89016%_
                                  (fx+ _%start88997%_
                                       _%i89006%_
                                       (fx* _%i89006%_ _%i89006%_))))
                             (##fxmodulo _%next-probe89016%_ _%size88991%_))
                           (##fx+ _%i89006%_ '1)
                           (let ((_%$e89019%_ _%deleted89008%_))
                             (if _%$e89019%_ _%$e89019%_ _%probe89004%_))))
                        (if (##string=? _%key88982%_ _%k89011%_)
                            (let ()
                              (vector-ref
                               _%table88985%_
                               (##fx+ _%probe89004%_ '1)))
                            (let ()
                              (_%loop89001%_
                               (let ((_%next-probe89024%_
                                      (fx+ _%start88997%_
                                           _%i89006%_
                                           (fx* _%i89006%_ _%i89006%_))))
                                 (##fxmodulo
                                  _%next-probe89024%_
                                  _%size88991%_))
                               (##fx+ _%i89006%_ '1)
                               _%deleted89008%_)))))))))))
    (define string-table-set!
      (lambda (_%tab88977%_ _%key88978%_ _%value88979%_)
        (if (##fx< (&raw-table-free _%tab88977%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88977%_))
                    '4))
            (__raw-table-rehash! _%tab88977%_)
            '#!void)
        (__string-table-set! _%tab88977%_ _%key88978%_ _%value88979%_)))
    (define __string-table-set!
      (lambda (_%tab88928%_ _%key88929%_ _%value88930%_)
        (let ((_%table88933%_ (&raw-table-table _%tab88928%_))
              (_%seed88934%_ (&raw-table-seed _%tab88928%_)))
          (let* ((_%h88936%_
                  (fxxor (##string=?-hash _%key88929%_) _%seed88934%_))
                 (_%size88939%_ (vector-length _%table88933%_))
                 (_%entries88942%_ (##fxquotient _%size88939%_ '2))
                 (_%start88945%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88936%_ _%entries88942%_)
                   '1)))
            (let _%loop88949%_ ((_%probe88952%_ _%start88945%_)
                                (_%i88954%_ '1)
                                (_%deleted88956%_ '#f))
              (let ((_%k88959%_ (vector-ref _%table88933%_ _%probe88952%_)))
                (if (eq? _%k88959%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88956%_
                          (begin
                            (vector-set!
                             _%table88933%_
                             _%deleted88956%_
                             _%key88929%_)
                            (vector-set!
                             _%table88933%_
                             (##fx+ _%deleted88956%_ '1)
                             _%value88930%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88928%_
                                (##fx+ (&raw-table-count _%tab88928%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88933%_
                             _%probe88952%_
                             _%key88929%_)
                            (vector-set!
                             _%table88933%_
                             (##fx+ _%probe88952%_ '1)
                             _%value88930%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88928%_
                                (##fx- (&raw-table-free _%tab88928%_) '1))
                               (&raw-table-count-set!
                                _%tab88928%_
                                (##fx+ (&raw-table-count _%tab88928%_)
                                       '1)))))))
                    (if (eq? _%k88959%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88949%_
                           (let ((_%next-probe88966%_
                                  (fx+ _%start88945%_
                                       _%i88954%_
                                       (fx* _%i88954%_ _%i88954%_))))
                             (##fxmodulo _%next-probe88966%_ _%size88939%_))
                           (##fx+ _%i88954%_ '1)
                           (let ((_%$e88969%_ _%deleted88956%_))
                             (if _%$e88969%_ _%$e88969%_ _%probe88952%_))))
                        (if (##string=? _%key88929%_ _%k88959%_)
                            (let ()
                              (vector-set!
                               _%table88933%_
                               _%probe88952%_
                               _%key88929%_)
                              (vector-set!
                               _%table88933%_
                               (##fx+ _%probe88952%_ '1)
                               _%value88930%_))
                            (let ()
                              (_%loop88949%_
                               (let ((_%next-probe88974%_
                                      (fx+ _%start88945%_
                                           _%i88954%_
                                           (fx* _%i88954%_ _%i88954%_))))
                                 (##fxmodulo
                                  _%next-probe88974%_
                                  _%size88939%_))
                               (##fx+ _%i88954%_ '1)
                               _%deleted88956%_)))))))))))
    (define string-table-update!
      (lambda (_%tab88923%_
               _%key88924%_
               _%string-table-update!88925%_
               _%default88926%_)
        (if (##fx< (&raw-table-free _%tab88923%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88923%_))
                    '4))
            (__raw-table-rehash! _%tab88923%_)
            '#!void)
        (__string-table-update!
         _%tab88923%_
         _%key88924%_
         _%string-table-update!88925%_
         _%default88926%_)))
    (define __string-table-update!
      (lambda (_%tab88873%_
               _%key88874%_
               _%string-table-update!88875%_
               _%default88876%_)
        (let ((_%table88879%_ (&raw-table-table _%tab88873%_))
              (_%seed88880%_ (&raw-table-seed _%tab88873%_)))
          (let* ((_%h88882%_
                  (fxxor (##string=?-hash _%key88874%_) _%seed88880%_))
                 (_%size88885%_ (vector-length _%table88879%_))
                 (_%entries88888%_ (##fxquotient _%size88885%_ '2))
                 (_%start88891%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88882%_ _%entries88888%_)
                   '1)))
            (let _%loop88895%_ ((_%probe88898%_ _%start88891%_)
                                (_%i88900%_ '1)
                                (_%deleted88902%_ '#f))
              (let ((_%k88905%_ (vector-ref _%table88879%_ _%probe88898%_)))
                (if (eq? _%k88905%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88902%_
                          (begin
                            (vector-set!
                             _%table88879%_
                             _%deleted88902%_
                             _%key88874%_)
                            (vector-set!
                             _%table88879%_
                             (##fx+ _%deleted88902%_ '1)
                             (_%string-table-update!88875%_ _%default88876%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88873%_
                                (##fx+ (&raw-table-count _%tab88873%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88879%_
                             _%probe88898%_
                             _%key88874%_)
                            (vector-set!
                             _%table88879%_
                             (##fx+ _%probe88898%_ '1)
                             (_%string-table-update!88875%_ _%default88876%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88873%_
                                (##fx- (&raw-table-free _%tab88873%_) '1))
                               (&raw-table-count-set!
                                _%tab88873%_
                                (##fx+ (&raw-table-count _%tab88873%_)
                                       '1)))))))
                    (if (eq? _%k88905%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88895%_
                           (let ((_%next-probe88912%_
                                  (fx+ _%start88891%_
                                       _%i88900%_
                                       (fx* _%i88900%_ _%i88900%_))))
                             (##fxmodulo _%next-probe88912%_ _%size88885%_))
                           (##fx+ _%i88900%_ '1)
                           (let ((_%$e88915%_ _%deleted88902%_))
                             (if _%$e88915%_ _%$e88915%_ _%probe88898%_))))
                        (if (##string=? _%key88874%_ _%k88905%_)
                            (let ()
                              (vector-set!
                               _%table88879%_
                               _%probe88898%_
                               _%key88874%_)
                              (vector-set!
                               _%table88879%_
                               (##fx+ _%probe88898%_ '1)
                               (_%string-table-update!88875%_
                                (vector-ref
                                 _%table88879%_
                                 (##fx+ _%probe88898%_ '1)))))
                            (let ()
                              (_%loop88895%_
                               (let ((_%next-probe88920%_
                                      (fx+ _%start88891%_
                                           _%i88900%_
                                           (fx* _%i88900%_ _%i88900%_))))
                                 (##fxmodulo
                                  _%next-probe88920%_
                                  _%size88885%_))
                               (##fx+ _%i88900%_ '1)
                               _%deleted88902%_)))))))))))
    (define string-table-delete!
      (lambda (_%tab88828%_ _%key88830%_)
        (let ((_%table88833%_ (&raw-table-table _%tab88828%_))
              (_%seed88835%_ (&raw-table-seed _%tab88828%_)))
          (let* ((_%h88838%_
                  (fxxor (##string=?-hash _%key88830%_) _%seed88835%_))
                 (_%size88841%_ (vector-length _%table88833%_))
                 (_%entries88844%_ (##fxquotient _%size88841%_ '2))
                 (_%start88847%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88838%_ _%entries88844%_)
                   '1)))
            (let _%loop88851%_ ((_%probe88854%_ _%start88847%_)
                                (_%i88856%_ '1))
              (let ((_%k88859%_ (vector-ref _%table88833%_ _%probe88854%_)))
                (if (eq? _%k88859%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k88859%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88851%_
                           (let ((_%next-probe88864%_
                                  (fx+ _%start88847%_
                                       _%i88856%_
                                       (fx* _%i88856%_ _%i88856%_))))
                             (##fxmodulo _%next-probe88864%_ _%size88841%_))
                           (##fx+ _%i88856%_ '1)))
                        (if (##string=? _%key88830%_ _%k88859%_)
                            (let ()
                              (vector-set!
                               _%table88833%_
                               _%probe88854%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88833%_
                               (##fx+ _%probe88854%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88828%_
                                  (##fx- (&raw-table-count _%tab88828%_)
                                         '1)))))
                            (let ()
                              (_%loop88851%_
                               (let ((_%next-probe88870%_
                                      (fx+ _%start88847%_
                                           _%i88856%_
                                           (fx* _%i88856%_ _%i88856%_))))
                                 (##fxmodulo
                                  _%next-probe88870%_
                                  _%size88841%_))
                               (##fx+ _%i88856%_ '1))))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint88809%_ _%seed88811%_)
        (make-raw-table__%
         _%size-hint88809%_
         immediate-hash
         eq?
         _%seed88811%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint88817%_ '#f) (_%seed88819%_ '0))
          (make-immediate-table__% _%size-hint88817%_ _%seed88819%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint88821%_)
        (let ((_%seed88823%_ '0))
          (make-immediate-table__% _%size-hint88821%_ _%seed88823%_))))
    (define make-immediate-table
      (lambda _g90049_
        (let ((_g90048_ (##length _g90049_)))
          (cond ((##fx= _g90048_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g90049_))
                ((##fx= _g90048_ 1)
                 (apply (lambda (_%size-hint88821%_)
                          (make-immediate-table__1 _%size-hint88821%_))
                        _g90049_))
                ((##fx= _g90048_ 2)
                 (apply (lambda (_%size-hint88825%_ _%seed88826%_)
                          (make-immediate-table__%
                           _%size-hint88825%_
                           _%seed88826%_))
                        _g90049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90049_))))))
    (define immediate-table-ref
      (lambda (_%tab88762%_ _%key88763%_ _%default88764%_)
        (let ((_%table88766%_ (&raw-table-table _%tab88762%_))
              (_%seed88767%_ (&raw-table-seed _%tab88762%_)))
          (let* ((_%h88769%_
                  (fxxor (immediate-hash _%key88763%_) _%seed88767%_))
                 (_%size88772%_ (vector-length _%table88766%_))
                 (_%entries88775%_ (##fxquotient _%size88772%_ '2))
                 (_%start88778%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88769%_ _%entries88775%_)
                   '1)))
            (let _%loop88782%_ ((_%probe88785%_ _%start88778%_)
                                (_%i88787%_ '1)
                                (_%deleted88789%_ '#f))
              (let ((_%k88792%_ (vector-ref _%table88766%_ _%probe88785%_)))
                (if (eq? _%k88792%_ (macro-unused-obj))
                    (let () _%default88764%_)
                    (if (eq? _%k88792%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88782%_
                           (let ((_%next-probe88797%_
                                  (fx+ _%start88778%_
                                       _%i88787%_
                                       (fx* _%i88787%_ _%i88787%_))))
                             (##fxmodulo _%next-probe88797%_ _%size88772%_))
                           (##fx+ _%i88787%_ '1)
                           (let ((_%$e88800%_ _%deleted88789%_))
                             (if _%$e88800%_ _%$e88800%_ _%probe88785%_))))
                        (if (eq? _%key88763%_ _%k88792%_)
                            (let ()
                              (vector-ref
                               _%table88766%_
                               (##fx+ _%probe88785%_ '1)))
                            (let ()
                              (_%loop88782%_
                               (let ((_%next-probe88805%_
                                      (fx+ _%start88778%_
                                           _%i88787%_
                                           (fx* _%i88787%_ _%i88787%_))))
                                 (##fxmodulo
                                  _%next-probe88805%_
                                  _%size88772%_))
                               (##fx+ _%i88787%_ '1)
                               _%deleted88789%_)))))))))))
    (define immediate-table-set!
      (lambda (_%tab88758%_ _%key88759%_ _%value88760%_)
        (if (##fx< (&raw-table-free _%tab88758%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88758%_))
                    '4))
            (__raw-table-rehash! _%tab88758%_)
            '#!void)
        (__immediate-table-set! _%tab88758%_ _%key88759%_ _%value88760%_)))
    (define __immediate-table-set!
      (lambda (_%tab88709%_ _%key88710%_ _%value88711%_)
        (let ((_%table88714%_ (&raw-table-table _%tab88709%_))
              (_%seed88715%_ (&raw-table-seed _%tab88709%_)))
          (let* ((_%h88717%_
                  (fxxor (immediate-hash _%key88710%_) _%seed88715%_))
                 (_%size88720%_ (vector-length _%table88714%_))
                 (_%entries88723%_ (##fxquotient _%size88720%_ '2))
                 (_%start88726%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88717%_ _%entries88723%_)
                   '1)))
            (let _%loop88730%_ ((_%probe88733%_ _%start88726%_)
                                (_%i88735%_ '1)
                                (_%deleted88737%_ '#f))
              (let ((_%k88740%_ (vector-ref _%table88714%_ _%probe88733%_)))
                (if (eq? _%k88740%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88737%_
                          (begin
                            (vector-set!
                             _%table88714%_
                             _%deleted88737%_
                             _%key88710%_)
                            (vector-set!
                             _%table88714%_
                             (##fx+ _%deleted88737%_ '1)
                             _%value88711%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88709%_
                                (##fx+ (&raw-table-count _%tab88709%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88714%_
                             _%probe88733%_
                             _%key88710%_)
                            (vector-set!
                             _%table88714%_
                             (##fx+ _%probe88733%_ '1)
                             _%value88711%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88709%_
                                (##fx- (&raw-table-free _%tab88709%_) '1))
                               (&raw-table-count-set!
                                _%tab88709%_
                                (##fx+ (&raw-table-count _%tab88709%_)
                                       '1)))))))
                    (if (eq? _%k88740%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88730%_
                           (let ((_%next-probe88747%_
                                  (fx+ _%start88726%_
                                       _%i88735%_
                                       (fx* _%i88735%_ _%i88735%_))))
                             (##fxmodulo _%next-probe88747%_ _%size88720%_))
                           (##fx+ _%i88735%_ '1)
                           (let ((_%$e88750%_ _%deleted88737%_))
                             (if _%$e88750%_ _%$e88750%_ _%probe88733%_))))
                        (if (eq? _%key88710%_ _%k88740%_)
                            (let ()
                              (vector-set!
                               _%table88714%_
                               _%probe88733%_
                               _%key88710%_)
                              (vector-set!
                               _%table88714%_
                               (##fx+ _%probe88733%_ '1)
                               _%value88711%_))
                            (let ()
                              (_%loop88730%_
                               (let ((_%next-probe88755%_
                                      (fx+ _%start88726%_
                                           _%i88735%_
                                           (fx* _%i88735%_ _%i88735%_))))
                                 (##fxmodulo
                                  _%next-probe88755%_
                                  _%size88720%_))
                               (##fx+ _%i88735%_ '1)
                               _%deleted88737%_)))))))))))
    (define immediate-table-update!
      (lambda (_%tab88704%_
               _%key88705%_
               _%immediate-table-update!88706%_
               _%default88707%_)
        (if (##fx< (&raw-table-free _%tab88704%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88704%_))
                    '4))
            (__raw-table-rehash! _%tab88704%_)
            '#!void)
        (__immediate-table-update!
         _%tab88704%_
         _%key88705%_
         _%immediate-table-update!88706%_
         _%default88707%_)))
    (define __immediate-table-update!
      (lambda (_%tab88654%_
               _%key88655%_
               _%immediate-table-update!88656%_
               _%default88657%_)
        (let ((_%table88660%_ (&raw-table-table _%tab88654%_))
              (_%seed88661%_ (&raw-table-seed _%tab88654%_)))
          (let* ((_%h88663%_
                  (fxxor (immediate-hash _%key88655%_) _%seed88661%_))
                 (_%size88666%_ (vector-length _%table88660%_))
                 (_%entries88669%_ (##fxquotient _%size88666%_ '2))
                 (_%start88672%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88663%_ _%entries88669%_)
                   '1)))
            (let _%loop88676%_ ((_%probe88679%_ _%start88672%_)
                                (_%i88681%_ '1)
                                (_%deleted88683%_ '#f))
              (let ((_%k88686%_ (vector-ref _%table88660%_ _%probe88679%_)))
                (if (eq? _%k88686%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88683%_
                          (begin
                            (vector-set!
                             _%table88660%_
                             _%deleted88683%_
                             _%key88655%_)
                            (vector-set!
                             _%table88660%_
                             (##fx+ _%deleted88683%_ '1)
                             (_%immediate-table-update!88656%_
                              _%default88657%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88654%_
                                (##fx+ (&raw-table-count _%tab88654%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88660%_
                             _%probe88679%_
                             _%key88655%_)
                            (vector-set!
                             _%table88660%_
                             (##fx+ _%probe88679%_ '1)
                             (_%immediate-table-update!88656%_
                              _%default88657%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88654%_
                                (##fx- (&raw-table-free _%tab88654%_) '1))
                               (&raw-table-count-set!
                                _%tab88654%_
                                (##fx+ (&raw-table-count _%tab88654%_)
                                       '1)))))))
                    (if (eq? _%k88686%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88676%_
                           (let ((_%next-probe88693%_
                                  (fx+ _%start88672%_
                                       _%i88681%_
                                       (fx* _%i88681%_ _%i88681%_))))
                             (##fxmodulo _%next-probe88693%_ _%size88666%_))
                           (##fx+ _%i88681%_ '1)
                           (let ((_%$e88696%_ _%deleted88683%_))
                             (if _%$e88696%_ _%$e88696%_ _%probe88679%_))))
                        (if (eq? _%key88655%_ _%k88686%_)
                            (let ()
                              (vector-set!
                               _%table88660%_
                               _%probe88679%_
                               _%key88655%_)
                              (vector-set!
                               _%table88660%_
                               (##fx+ _%probe88679%_ '1)
                               (_%immediate-table-update!88656%_
                                (vector-ref
                                 _%table88660%_
                                 (##fx+ _%probe88679%_ '1)))))
                            (let ()
                              (_%loop88676%_
                               (let ((_%next-probe88701%_
                                      (fx+ _%start88672%_
                                           _%i88681%_
                                           (fx* _%i88681%_ _%i88681%_))))
                                 (##fxmodulo
                                  _%next-probe88701%_
                                  _%size88666%_))
                               (##fx+ _%i88681%_ '1)
                               _%deleted88683%_)))))))))))
    (define immediate-table-delete!
      (lambda (_%tab88609%_ _%key88611%_)
        (let ((_%table88614%_ (&raw-table-table _%tab88609%_))
              (_%seed88616%_ (&raw-table-seed _%tab88609%_)))
          (let* ((_%h88619%_
                  (fxxor (immediate-hash _%key88611%_) _%seed88616%_))
                 (_%size88622%_ (vector-length _%table88614%_))
                 (_%entries88625%_ (##fxquotient _%size88622%_ '2))
                 (_%start88628%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88619%_ _%entries88625%_)
                   '1)))
            (let _%loop88632%_ ((_%probe88635%_ _%start88628%_)
                                (_%i88637%_ '1))
              (let ((_%k88640%_ (vector-ref _%table88614%_ _%probe88635%_)))
                (if (eq? _%k88640%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k88640%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88632%_
                           (let ((_%next-probe88645%_
                                  (fx+ _%start88628%_
                                       _%i88637%_
                                       (fx* _%i88637%_ _%i88637%_))))
                             (##fxmodulo _%next-probe88645%_ _%size88622%_))
                           (##fx+ _%i88637%_ '1)))
                        (if (eq? _%key88611%_ _%k88640%_)
                            (let ()
                              (vector-set!
                               _%table88614%_
                               _%probe88635%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88614%_
                               (##fx+ _%probe88635%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88609%_
                                  (##fx- (&raw-table-count _%tab88609%_)
                                         '1)))))
                            (let ()
                              (_%loop88632%_
                               (let ((_%next-probe88651%_
                                      (fx+ _%start88628%_
                                           _%i88637%_
                                           (fx* _%i88637%_ _%i88637%_))))
                                 (##fxmodulo
                                  _%next-probe88651%_
                                  _%size88622%_))
                               (##fx+ _%i88637%_ '1))))))))))))
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
      (lambda (_%tab88607%_)
        (##unchecked-structure-ref
         _%tab88607%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab88605%_)
        (##unchecked-structure-ref
         _%tab88605%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab88602%_ _%val88603%_)
        (##unchecked-structure-set!
         _%tab88602%_
         _%val88603%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab88599%_ _%val88600%_)
        (##unchecked-structure-set!
         _%tab88599%_
         _%val88600%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint88575%_ _%klass88576%_ _%flags88577%_)
        (let ((_%gcht88579%_
               (__gc-table-new
                (if (fixnum? _%size-hint88575%_) _%size-hint88575%_ '16)
                _%flags88577%_)))
          (##structure _%klass88576%_ _%gcht88579%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint88584%_)
        (let* ((_%klass88586%_ __gc-table::t) (_%flags88588%_ '0))
          (make-gc-table__%
           _%size-hint88584%_
           _%klass88586%_
           _%flags88588%_))))
    (define make-gc-table__1
      (lambda (_%size-hint88590%_ _%klass88591%_)
        (let ((_%flags88593%_ '0))
          (make-gc-table__%
           _%size-hint88590%_
           _%klass88591%_
           _%flags88593%_))))
    (define make-gc-table
      (lambda _g90051_
        (let ((_g90050_ (##length _g90051_)))
          (cond ((##fx= _g90050_ 1)
                 (apply (lambda (_%size-hint88584%_)
                          (make-gc-table__0 _%size-hint88584%_))
                        _g90051_))
                ((##fx= _g90050_ 2)
                 (apply (lambda (_%size-hint88590%_ _%klass88591%_)
                          (make-gc-table__1 _%size-hint88590%_ _%klass88591%_))
                        _g90051_))
                ((##fx= _g90050_ 3)
                 (apply (lambda (_%size-hint88595%_
                                 _%klass88596%_
                                 _%flags88597%_)
                          (make-gc-table__%
                           _%size-hint88595%_
                           _%klass88596%_
                           _%flags88597%_))
                        _g90051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90051_))))))
    (define __gc-table-immediate
      (lambda (_%tab88566%_)
        (let ((_%$e88568%_ (&gc-table-immediate _%tab88566%_)))
          (if _%$e88568%_
              _%$e88568%_
              (let ()
                (let ((_%immediate88572%_ (make-immediate-table__% '#f '0)))
                  (&gc-table-immediate-set! _%tab88566%_ _%immediate88572%_)
                  _%immediate88572%_))))))
    (define __gc-table-new
      (lambda (_%size88556%_ _%flags88557%_)
        (let* ((_%flags88559%_
                (##fxand _%flags88557%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags88561%_
                (fxior _%flags88559%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht88563%_
                (##gc-hash-table-allocate
                 _%size88556%_
                 _%flags88561%_
                 __gc-table-loads)))
          _%gcht88563%_)))
    (define __gc-table-e
      (lambda (_%tab88551%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht88554%_ (&gc-table-gcht _%tab88551%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht88554%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht88554%_
              (begin
                (__gc-table-rehash! _%tab88551%_)
                (&gc-table-gcht _%tab88551%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab88542%_)
        (let* ((_%old-table88544%_ (&gc-table-gcht _%tab88542%_))
               (_%new-table88546%_
                (##gc-hash-table-resize! _%old-table88544%_ __gc-table-loads))
               (_%gcht88548%_
                (##gc-hash-table-rehash!
                 _%old-table88544%_
                 _%new-table88546%_)))
          (&gc-table-gcht-set! _%tab88542%_ _%gcht88548%_))))
    (define gc-table-ref
      (lambda (_%tab88526%_ _%key88527%_ _%default88528%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88527%_)
            (let ()
              (let* ((_%gcht88532%_ (__gc-table-e _%tab88526%_))
                     (_%value88534%_
                      (##gc-hash-table-ref _%gcht88532%_ _%key88527%_)))
                (if (eq? _%value88534%_ (macro-unused-obj))
                    _%default88528%_
                    _%value88534%_)))
            (let ((_%$e88536%_ (&gc-table-immediate _%tab88526%_)))
              (if _%$e88536%_
                  ((lambda (_%immediate88539%_)
                     (immediate-table-ref
                      _%immediate88539%_
                      _%key88527%_
                      _%default88528%_))
                   _%$e88536%_)
                  (let () _%default88528%_))))))
    (define gc-table-set!
      (lambda (_%tab88519%_ _%key88520%_ _%value88521%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88520%_)
            (let ((_%gcht88524%_ (__gc-table-e _%tab88519%_)))
              (if (##gc-hash-table-set!
                   _%gcht88524%_
                   _%key88520%_
                   _%value88521%_)
                  (begin
                    (__gc-table-rehash! _%tab88519%_)
                    (gc-table-set! _%tab88519%_ _%key88520%_ _%value88521%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab88519%_)
             _%key88520%_
             _%value88521%_))))
    (define gc-table-update!
      (lambda (_%tab88512%_ _%key88513%_ _%update88514%_ _%default88515%_)
        (if (##mem-allocated? _%key88513%_)
            (let ((_%value88517%_
                   (gc-table-ref _%tab88512%_ _%key88513%_ _%default88515%_)))
              (gc-table-set!
               _%tab88512%_
               _%key88513%_
               (_%update88514%_ _%value88517%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab88512%_)
             _%key88513%_
             _%update88514%_
             _%default88515%_))))
    (define gc-table-delete!
      (lambda (_%tab88500%_ _%key88501%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88501%_)
            (let ()
              (let ((_%gcht88505%_ (__gc-table-e _%tab88500%_)))
                (if (##gc-hash-table-set!
                     _%gcht88505%_
                     _%key88501%_
                     (macro-absent-obj))
                    (begin
                      (__gc-table-rehash! _%tab88500%_)
                      (gc-table-delete! _%tab88500%_ _%key88501%_))
                    '#!void)))
            (let ((_%$e88507%_ (&gc-table-immediate _%tab88500%_)))
              (if _%$e88507%_
                  ((lambda (_%immediate88510%_)
                     (immediate-table-delete! _%immediate88510%_ _%key88501%_))
                   _%$e88507%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab88481%_ _%proc88482%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht88485%_ (__gc-table-e _%tab88481%_)))
            (let _%loop88487%_ ((_%i88489%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i88489%_ (##vector-length _%gcht88485%_))
                  (let ((_%key88491%_ (##vector-ref _%gcht88485%_ _%i88489%_)))
                    (if (and (not (eq? _%key88491%_ (macro-unused-obj)))
                             (not (eq? _%key88491%_ (macro-deleted-obj))))
                        (_%proc88482%_
                         _%key88491%_
                         (##vector-ref _%gcht88485%_ (##fx+ _%i88489%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop88487%_ (##fx+ _%i88489%_ '2))))
                  '#!void)))
          (let ((_%$e88495%_ (&gc-table-immediate _%tab88481%_)))
            (if _%$e88495%_
                ((lambda (_%immediate88498%_)
                   (raw-table-for-each _%immediate88498%_ _%proc88482%_))
                 _%$e88495%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab88469%_)
        (let* ((_%gcht88471%_ (__gc-table-e _%tab88469%_))
               (_%new-table88473%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht88471%_)
                 (macro-gc-hash-table-flags _%gcht88471%_)))
               (_%result88475%_
                (##structure
                 (##structure-type _%tab88469%_)
                 _%new-table88473%_
                 '#f)))
          (gc-table-for-each
           _%tab88469%_
           (lambda (_%k88478%_ _%v88479%_)
             (gc-table-set! _%result88475%_ _%k88478%_ _%v88479%_)))
          _%result88475%_)))
    (define gc-table-clear!
      (lambda (_%tab88462%_)
        (let* ((_%gcht88464%_ (__gc-table-e _%tab88462%_))
               (_%new-table88466%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht88464%_))))
          (&gc-table-gcht-set! _%tab88462%_ _%new-table88466%_)
          (&gc-table-immediate-set! _%tab88462%_ '#f))))
    (define gc-table-length
      (lambda (_%tab88454%_)
        (let ((_%gcht88456%_ (__gc-table-e _%tab88454%_)))
          (fx+ (macro-gc-hash-table-count _%gcht88456%_)
               (let ((_%$e88458%_ (&gc-table-immediate _%tab88454%_)))
                 (if _%$e88458%_
                     (&raw-table-count _%$e88458%_)
                     (let () '0)))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj88439%_)
        (declare (not interrupts-enabled))
        (let ((_%val88442%_ (gc-table-ref __object-eq-hash _%obj88439%_ '#f)))
          (if _%val88442%_
              _%val88442%_
              (let* ((_%mix88444%_ __object-eq-hash-next)
                     (_%ptr88446%_ (##type-cast _%obj88439%_ '0))
                     (_%h88448%_
                      (fxand (fxxor _%mix88444%_ _%ptr88446%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e88451%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e88451%_ _%$e88451%_ '0)))
                (gc-table-set! __object-eq-hash _%obj88439%_ _%h88448%_)
                _%h88448%_)))))))
