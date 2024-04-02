(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712093474)
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
      (lambda (_%tab90117%_)
        (##unchecked-structure-ref
         _%tab90117%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90115%_)
        (##unchecked-structure-ref
         _%tab90115%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90113%_)
        (##unchecked-structure-ref
         _%tab90113%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90111%_)
        (##unchecked-structure-ref
         _%tab90111%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90109%_)
        (##unchecked-structure-ref
         _%tab90109%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90107%_)
        (##unchecked-structure-ref
         _%tab90107%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90104%_ _%val90105%_)
        (##unchecked-structure-set!
         _%tab90104%_
         _%val90105%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90101%_ _%val90102%_)
        (##unchecked-structure-set!
         _%tab90101%_
         _%val90102%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90098%_ _%val90099%_)
        (##unchecked-structure-set!
         _%tab90098%_
         _%val90099%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90095%_ _%val90096%_)
        (##unchecked-structure-set!
         _%tab90095%_
         _%val90096%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90092%_ _%val90093%_)
        (##unchecked-structure-set!
         _%tab90092%_
         _%val90093%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90089%_ _%val90090%_)
        (##unchecked-structure-set!
         _%tab90089%_
         _%val90090%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90087%_)
        (if (and (fixnum? _%size-hint90087%_) (##fx> _%size-hint90087%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90087%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint90063%_ _%hash90064%_ _%test90065%_ _%seed90066%_)
        (let* ((_%size90068%_ (raw-table-size-hint->size _%size-hint90063%_))
               (_%table90070%_
                (##make-vector _%size90068%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table90070%_
           '0
           (##fxquotient _%size90068%_ '2)
           _%hash90064%_
           _%test90065%_
           _%seed90066%_))))
    (define make-raw-table__0
      (lambda (_%size-hint90076%_ _%hash90077%_ _%test90078%_)
        (let ((_%seed90080%_ '0))
          (make-raw-table__%
           _%size-hint90076%_
           _%hash90077%_
           _%test90078%_
           _%seed90080%_))))
    (define make-raw-table
      (lambda _g90119_
        (let ((_g90118_ (##length _g90119_)))
          (cond ((##fx= _g90118_ 3)
                 (apply (lambda (_%size-hint90076%_
                                 _%hash90077%_
                                 _%test90078%_)
                          (make-raw-table__0
                           _%size-hint90076%_
                           _%hash90077%_
                           _%test90078%_))
                        _g90119_))
                ((##fx= _g90118_ 4)
                 (apply (lambda (_%size-hint90082%_
                                 _%hash90083%_
                                 _%test90084%_
                                 _%seed90085%_)
                          (make-raw-table__%
                           _%size-hint90082%_
                           _%hash90083%_
                           _%test90084%_
                           _%seed90085%_))
                        _g90119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90119_))))))
    (define raw-table-ref
      (lambda (_%tab90014%_ _%key90015%_ _%default90016%_)
        (let ((_%table90018%_ (&raw-table-table _%tab90014%_))
              (_%seed90019%_ (&raw-table-seed _%tab90014%_))
              (_%hash90020%_ (&raw-table-hash _%tab90014%_))
              (_%test90021%_ (&raw-table-test _%tab90014%_)))
          (let* ((_%h90023%_
                  (fxxor (_%hash90020%_ _%key90015%_) _%seed90019%_))
                 (_%size90026%_ (vector-length _%table90018%_))
                 (_%entries90029%_ (##fxquotient _%size90026%_ '2))
                 (_%start90032%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90023%_ _%entries90029%_)
                   '1)))
            (let _%loop90036%_ ((_%probe90039%_ _%start90032%_)
                                (_%i90041%_ '1)
                                (_%deleted90043%_ '#f))
              (let ((_%k90046%_ (vector-ref _%table90018%_ _%probe90039%_)))
                (if (eq? _%k90046%_ (macro-unused-obj))
                    (let () _%default90016%_)
                    (if (eq? _%k90046%_ (macro-deleted-obj))
                        (let ()
                          (_%loop90036%_
                           (let ((_%next-probe90051%_
                                  (fx+ _%start90032%_
                                       _%i90041%_
                                       (fx* _%i90041%_ _%i90041%_))))
                             (##fxmodulo _%next-probe90051%_ _%size90026%_))
                           (##fx+ _%i90041%_ '1)
                           (let ((_%$e90054%_ _%deleted90043%_))
                             (if _%$e90054%_ _%$e90054%_ _%probe90039%_))))
                        (if (_%test90021%_ _%key90015%_ _%k90046%_)
                            (let ()
                              (vector-ref
                               _%table90018%_
                               (##fx+ _%probe90039%_ '1)))
                            (let ()
                              (_%loop90036%_
                               (let ((_%next-probe90059%_
                                      (fx+ _%start90032%_
                                           _%i90041%_
                                           (fx* _%i90041%_ _%i90041%_))))
                                 (##fxmodulo
                                  _%next-probe90059%_
                                  _%size90026%_))
                               (##fx+ _%i90041%_ '1)
                               _%deleted90043%_)))))))))))
    (define raw-table-set!
      (lambda (_%tab90010%_ _%key90011%_ _%value90012%_)
        (if (##fx< (&raw-table-free _%tab90010%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90010%_))
                    '4))
            (__raw-table-rehash! _%tab90010%_)
            '#!void)
        (__raw-table-set! _%tab90010%_ _%key90011%_ _%value90012%_)))
    (define raw-table-update!
      (lambda (_%tab90005%_ _%key90006%_ _%update90007%_ _%default90008%_)
        (if (##fx< (&raw-table-free _%tab90005%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90005%_))
                    '4))
            (__raw-table-rehash! _%tab90005%_)
            '#!void)
        (__raw-table-update!
         _%tab90005%_
         _%key90006%_
         _%update90007%_
         _%default90008%_)))
    (define raw-table-delete!
      (lambda (_%tab89962%_ _%key89963%_)
        (let ((_%table89965%_ (&raw-table-table _%tab89962%_))
              (_%seed89966%_ (&raw-table-seed _%tab89962%_))
              (_%hash89967%_ (&raw-table-hash _%tab89962%_))
              (_%test89968%_ (&raw-table-test _%tab89962%_)))
          (let* ((_%h89970%_
                  (fxxor (_%hash89967%_ _%key89963%_) _%seed89966%_))
                 (_%size89973%_ (vector-length _%table89965%_))
                 (_%entries89976%_ (##fxquotient _%size89973%_ '2))
                 (_%start89979%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89970%_ _%entries89976%_)
                   '1)))
            (let _%loop89983%_ ((_%probe89986%_ _%start89979%_)
                                (_%i89988%_ '1))
              (let ((_%k89991%_ (vector-ref _%table89965%_ _%probe89986%_)))
                (if (eq? _%k89991%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89991%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89983%_
                           (let ((_%next-probe89996%_
                                  (fx+ _%start89979%_
                                       _%i89988%_
                                       (fx* _%i89988%_ _%i89988%_))))
                             (##fxmodulo _%next-probe89996%_ _%size89973%_))
                           (##fx+ _%i89988%_ '1)))
                        (if (_%test89968%_ _%key89963%_ _%k89991%_)
                            (let ()
                              (vector-set!
                               _%table89965%_
                               _%probe89986%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89965%_
                               (##fx+ _%probe89986%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89962%_
                                  (##fx- (&raw-table-count _%tab89962%_)
                                         '1)))))
                            (let ()
                              (_%loop89983%_
                               (let ((_%next-probe90002%_
                                      (fx+ _%start89979%_
                                           _%i89988%_
                                           (fx* _%i89988%_ _%i89988%_))))
                                 (##fxmodulo
                                  _%next-probe90002%_
                                  _%size89973%_))
                               (##fx+ _%i89988%_ '1))))))))))))
    (define raw-table-for-each
      (lambda (_%tab89946%_ _%proc89947%_)
        (let* ((_%table89949%_ (&raw-table-table _%tab89946%_))
               (_%size89951%_ (vector-length _%table89949%_)))
          (let _%loop89954%_ ((_%i89956%_ '0))
            (if (##fx< _%i89956%_ _%size89951%_)
                (begin
                  (let ((_%key89958%_ (vector-ref _%table89949%_ _%i89956%_)))
                    (if (and (not (eq? _%key89958%_ (macro-unused-obj)))
                             (not (eq? _%key89958%_ (macro-deleted-obj))))
                        (let ((_%value89960%_
                               (vector-ref
                                _%table89949%_
                                (##fx+ _%i89956%_ '1))))
                          (_%proc89947%_ _%key89958%_ _%value89960%_))
                        '#!void))
                  (_%loop89954%_ (##fx+ _%i89956%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab89942%_)
        (let ((_%new-tab89944%_ (##structure-copy _%tab89942%_)))
          (&raw-table-table-set!
           _%new-tab89944%_
           (vector-copy (&raw-table-table _%tab89942%_)))
          _%new-tab89944%_)))
    (define raw-table-clear!
      (lambda (_%tab89940%_)
        (vector-fill! (&raw-table-table _%tab89940%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab89940%_ '0)
        (&raw-table-free-set!
         _%tab89940%_
         (##fxquotient (vector-length (&raw-table-table _%tab89940%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab89890%_ _%key89891%_ _%value89892%_)
        (let ((_%table89894%_ (&raw-table-table _%tab89890%_))
              (_%seed89895%_ (&raw-table-seed _%tab89890%_))
              (_%hash89896%_ (&raw-table-hash _%tab89890%_))
              (_%test89897%_ (&raw-table-test _%tab89890%_)))
          (let* ((_%h89899%_
                  (fxxor (_%hash89896%_ _%key89891%_) _%seed89895%_))
                 (_%size89902%_ (vector-length _%table89894%_))
                 (_%entries89905%_ (##fxquotient _%size89902%_ '2))
                 (_%start89908%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89899%_ _%entries89905%_)
                   '1)))
            (let _%loop89912%_ ((_%probe89915%_ _%start89908%_)
                                (_%i89917%_ '1)
                                (_%deleted89919%_ '#f))
              (let ((_%k89922%_ (vector-ref _%table89894%_ _%probe89915%_)))
                (if (eq? _%k89922%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89919%_
                          (begin
                            (vector-set!
                             _%table89894%_
                             _%deleted89919%_
                             _%key89891%_)
                            (vector-set!
                             _%table89894%_
                             (##fx+ _%deleted89919%_ '1)
                             _%value89892%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89890%_
                                (##fx+ (&raw-table-count _%tab89890%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89894%_
                             _%probe89915%_
                             _%key89891%_)
                            (vector-set!
                             _%table89894%_
                             (##fx+ _%probe89915%_ '1)
                             _%value89892%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89890%_
                                (##fx- (&raw-table-free _%tab89890%_) '1))
                               (&raw-table-count-set!
                                _%tab89890%_
                                (##fx+ (&raw-table-count _%tab89890%_)
                                       '1)))))))
                    (if (eq? _%k89922%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89912%_
                           (let ((_%next-probe89929%_
                                  (fx+ _%start89908%_
                                       _%i89917%_
                                       (fx* _%i89917%_ _%i89917%_))))
                             (##fxmodulo _%next-probe89929%_ _%size89902%_))
                           (##fx+ _%i89917%_ '1)
                           (let ((_%$e89932%_ _%deleted89919%_))
                             (if _%$e89932%_ _%$e89932%_ _%probe89915%_))))
                        (if (_%test89897%_ _%key89891%_ _%k89922%_)
                            (let ()
                              (vector-set!
                               _%table89894%_
                               _%probe89915%_
                               _%key89891%_)
                              (vector-set!
                               _%table89894%_
                               (##fx+ _%probe89915%_ '1)
                               _%value89892%_))
                            (let ()
                              (_%loop89912%_
                               (let ((_%next-probe89937%_
                                      (fx+ _%start89908%_
                                           _%i89917%_
                                           (fx* _%i89917%_ _%i89917%_))))
                                 (##fxmodulo
                                  _%next-probe89937%_
                                  _%size89902%_))
                               (##fx+ _%i89917%_ '1)
                               _%deleted89919%_)))))))))))
    (define __raw-table-update!
      (lambda (_%tab89839%_ _%key89840%_ _%update89841%_ _%default89842%_)
        (let ((_%table89844%_ (&raw-table-table _%tab89839%_))
              (_%seed89845%_ (&raw-table-seed _%tab89839%_))
              (_%hash89846%_ (&raw-table-hash _%tab89839%_))
              (_%test89847%_ (&raw-table-test _%tab89839%_)))
          (let* ((_%h89849%_
                  (fxxor (_%hash89846%_ _%key89840%_) _%seed89845%_))
                 (_%size89852%_ (vector-length _%table89844%_))
                 (_%entries89855%_ (##fxquotient _%size89852%_ '2))
                 (_%start89858%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89849%_ _%entries89855%_)
                   '1)))
            (let _%loop89862%_ ((_%probe89865%_ _%start89858%_)
                                (_%i89867%_ '1)
                                (_%deleted89869%_ '#f))
              (let ((_%k89872%_ (vector-ref _%table89844%_ _%probe89865%_)))
                (if (eq? _%k89872%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89869%_
                          (begin
                            (vector-set!
                             _%table89844%_
                             _%deleted89869%_
                             _%key89840%_)
                            (vector-set!
                             _%table89844%_
                             (##fx+ _%deleted89869%_ '1)
                             (_%update89841%_ _%default89842%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89839%_
                                (##fx+ (&raw-table-count _%tab89839%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89844%_
                             _%probe89865%_
                             _%key89840%_)
                            (vector-set!
                             _%table89844%_
                             (##fx+ _%probe89865%_ '1)
                             (_%update89841%_ _%default89842%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89839%_
                                (##fx- (&raw-table-free _%tab89839%_) '1))
                               (&raw-table-count-set!
                                _%tab89839%_
                                (##fx+ (&raw-table-count _%tab89839%_)
                                       '1)))))))
                    (if (eq? _%k89872%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89862%_
                           (let ((_%next-probe89879%_
                                  (fx+ _%start89858%_
                                       _%i89867%_
                                       (fx* _%i89867%_ _%i89867%_))))
                             (##fxmodulo _%next-probe89879%_ _%size89852%_))
                           (##fx+ _%i89867%_ '1)
                           (let ((_%$e89882%_ _%deleted89869%_))
                             (if _%$e89882%_ _%$e89882%_ _%probe89865%_))))
                        (if (_%test89847%_ _%key89840%_ _%k89872%_)
                            (let ()
                              (vector-set!
                               _%table89844%_
                               _%probe89865%_
                               _%key89840%_)
                              (vector-set!
                               _%table89844%_
                               (##fx+ _%probe89865%_ '1)
                               (_%update89841%_
                                (vector-ref
                                 _%table89844%_
                                 (##fx+ _%probe89865%_ '1)))))
                            (let ()
                              (_%loop89862%_
                               (let ((_%next-probe89887%_
                                      (fx+ _%start89858%_
                                           _%i89867%_
                                           (fx* _%i89867%_ _%i89867%_))))
                                 (##fxmodulo
                                  _%next-probe89887%_
                                  _%size89852%_))
                               (##fx+ _%i89867%_ '1)
                               _%deleted89869%_)))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab89820%_)
        (let* ((_%old-table89822%_ (&raw-table-table _%tab89820%_))
               (_%old-size89824%_ (vector-length _%old-table89822%_))
               (_%new-size89826%_
                (if (##fx< (&raw-table-count _%tab89820%_)
                           (##fxquotient _%old-size89824%_ '4))
                    (vector-length _%old-table89822%_)
                    (##fx* '2 (vector-length _%old-table89822%_))))
               (_%new-table89828%_
                (##make-vector _%new-size89826%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab89820%_ _%new-table89828%_)
          (&raw-table-count-set! _%tab89820%_ '0)
          (&raw-table-free-set!
           _%tab89820%_
           (##fxquotient _%new-size89826%_ '2))
          (let _%lp89831%_ ((_%i89833%_ '0))
            (if (##fx< _%i89833%_ _%old-size89824%_)
                (begin
                  (let ((_%key89835%_
                         (vector-ref _%old-table89822%_ _%i89833%_)))
                    (if (and (not (eq? _%key89835%_ (macro-unused-obj)))
                             (not (eq? _%key89835%_ (macro-deleted-obj))))
                        (let ((_%value89837%_
                               (vector-ref
                                _%old-table89822%_
                                (##fx+ _%i89833%_ '1))))
                          (__raw-table-set!
                           _%tab89820%_
                           _%key89835%_
                           _%value89837%_))
                        '#!void))
                  (_%lp89831%_ (##fx+ _%i89833%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj89812%_)
        (let ((_%t89814%_ (##type _%obj89812%_)))
          (if (##fx= (##fxand _%t89814%_ '1) '0)
              (let ()
                (fxand (##type-cast _%obj89812%_ (macro-type-fixnum))
                       (macro-max-fixnum32)))
              (if (symbolic? _%obj89812%_)
                  (let () (symbolic-hash _%obj89812%_))
                  (if (procedure? _%obj89812%_)
                      (let () (procedure-hash _%obj89812%_))
                      (let ()
                        (fxand (__eq-hash _%obj89812%_)
                               (macro-max-fixnum32)))))))))
    (define procedure-hash
      (lambda (_%obj89808%_)
        (let ((_%h89810%_
               (if (##closure? _%obj89808%_)
                   (__eq-hash _%obj89808%_)
                   (##type-cast _%obj89808%_ '0))))
          (fxand _%h89810%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj89805%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj89805%_)))
    (define eqv-hash
      (lambda (_%obj89795%_)
        (letrec ((_%combine89797%_
                  (lambda (_%a89802%_ _%b89803%_)
                    (fxand (##fx* (##fx+ _%a89802%_
                                         (fxarithmetic-shift-left
                                          _%b89803%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash89798%_
                  (lambda (_%obj89800%_)
                    (macro-number-dispatch
                     _%obj89800%_
                     (eq-hash _%obj89800%_)
                     (fxand _%obj89800%_ (macro-max-fixnum32))
                     (modulo _%obj89800%_ '331804481)
                     (_%combine89797%_
                      (_%hash89798%_ (macro-ratnum-numerator _%obj89800%_))
                      (_%hash89798%_ (macro-ratnum-denominator _%obj89800%_)))
                     (_%combine89797%_
                      (##u16vector-ref _%obj89800%_ '0)
                      (_%combine89797%_
                       (##u16vector-ref _%obj89800%_ '1)
                       (_%combine89797%_
                        (##u16vector-ref _%obj89800%_ '2)
                        (##u16vector-ref _%obj89800%_ '3))))
                     (_%combine89797%_
                      (_%hash89798%_ (macro-cpxnum-real _%obj89800%_))
                      (_%hash89798%_ (macro-cpxnum-imag _%obj89800%_)))))))
          (_%hash89798%_ _%obj89795%_))))
    (define symbolic?
      (lambda (_%obj89790%_)
        (let ((_%$e89792%_ (symbol? _%obj89790%_)))
          (if _%$e89792%_ _%$e89792%_ (keyword? _%obj89790%_)))))
    (define symbolic-hash (lambda (_%obj89788%_) (macro-slot '1 _%obj89788%_)))
    (define string-hash (lambda (_%obj89786%_) (##string=?-hash _%obj89786%_)))
    (define immediate-hash
      (lambda (_%obj89784%_) (##type-cast _%obj89784%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint89765%_ _%seed89767%_)
        (make-raw-table__% _%size-hint89765%_ eq-hash eq? _%seed89767%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint89773%_ '#f) (_%seed89775%_ '0))
          (make-eq-table__% _%size-hint89773%_ _%seed89775%_))))
    (define make-eq-table__1
      (lambda (_%size-hint89777%_)
        (let ((_%seed89779%_ '0))
          (make-eq-table__% _%size-hint89777%_ _%seed89779%_))))
    (define make-eq-table
      (lambda _g90121_
        (let ((_g90120_ (##length _g90121_)))
          (cond ((##fx= _g90120_ 0)
                 (apply (lambda () (make-eq-table__0)) _g90121_))
                ((##fx= _g90120_ 1)
                 (apply (lambda (_%size-hint89777%_)
                          (make-eq-table__1 _%size-hint89777%_))
                        _g90121_))
                ((##fx= _g90120_ 2)
                 (apply (lambda (_%size-hint89781%_ _%seed89782%_)
                          (make-eq-table__% _%size-hint89781%_ _%seed89782%_))
                        _g90121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90121_))))))
    (define eq-table-ref
      (lambda (_%tab89718%_ _%key89719%_ _%default89720%_)
        (let ((_%table89722%_ (&raw-table-table _%tab89718%_))
              (_%seed89723%_ (&raw-table-seed _%tab89718%_)))
          (let* ((_%h89725%_ (fxxor (eq-hash _%key89719%_) _%seed89723%_))
                 (_%size89728%_ (vector-length _%table89722%_))
                 (_%entries89731%_ (##fxquotient _%size89728%_ '2))
                 (_%start89734%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89725%_ _%entries89731%_)
                   '1)))
            (let _%loop89738%_ ((_%probe89741%_ _%start89734%_)
                                (_%i89743%_ '1)
                                (_%deleted89745%_ '#f))
              (let ((_%k89748%_ (vector-ref _%table89722%_ _%probe89741%_)))
                (if (eq? _%k89748%_ (macro-unused-obj))
                    (let () _%default89720%_)
                    (if (eq? _%k89748%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89738%_
                           (let ((_%next-probe89753%_
                                  (fx+ _%start89734%_
                                       _%i89743%_
                                       (fx* _%i89743%_ _%i89743%_))))
                             (##fxmodulo _%next-probe89753%_ _%size89728%_))
                           (##fx+ _%i89743%_ '1)
                           (let ((_%$e89756%_ _%deleted89745%_))
                             (if _%$e89756%_ _%$e89756%_ _%probe89741%_))))
                        (if (eq? _%key89719%_ _%k89748%_)
                            (let ()
                              (vector-ref
                               _%table89722%_
                               (##fx+ _%probe89741%_ '1)))
                            (let ()
                              (_%loop89738%_
                               (let ((_%next-probe89761%_
                                      (fx+ _%start89734%_
                                           _%i89743%_
                                           (fx* _%i89743%_ _%i89743%_))))
                                 (##fxmodulo
                                  _%next-probe89761%_
                                  _%size89728%_))
                               (##fx+ _%i89743%_ '1)
                               _%deleted89745%_)))))))))))
    (define eq-table-set!
      (lambda (_%tab89714%_ _%key89715%_ _%value89716%_)
        (if (##fx< (&raw-table-free _%tab89714%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89714%_))
                    '4))
            (__raw-table-rehash! _%tab89714%_)
            '#!void)
        (__eq-table-set! _%tab89714%_ _%key89715%_ _%value89716%_)))
    (define __eq-table-set!
      (lambda (_%tab89665%_ _%key89666%_ _%value89667%_)
        (let ((_%table89670%_ (&raw-table-table _%tab89665%_))
              (_%seed89671%_ (&raw-table-seed _%tab89665%_)))
          (let* ((_%h89673%_ (fxxor (eq-hash _%key89666%_) _%seed89671%_))
                 (_%size89676%_ (vector-length _%table89670%_))
                 (_%entries89679%_ (##fxquotient _%size89676%_ '2))
                 (_%start89682%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89673%_ _%entries89679%_)
                   '1)))
            (let _%loop89686%_ ((_%probe89689%_ _%start89682%_)
                                (_%i89691%_ '1)
                                (_%deleted89693%_ '#f))
              (let ((_%k89696%_ (vector-ref _%table89670%_ _%probe89689%_)))
                (if (eq? _%k89696%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89693%_
                          (begin
                            (vector-set!
                             _%table89670%_
                             _%deleted89693%_
                             _%key89666%_)
                            (vector-set!
                             _%table89670%_
                             (##fx+ _%deleted89693%_ '1)
                             _%value89667%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89665%_
                                (##fx+ (&raw-table-count _%tab89665%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89670%_
                             _%probe89689%_
                             _%key89666%_)
                            (vector-set!
                             _%table89670%_
                             (##fx+ _%probe89689%_ '1)
                             _%value89667%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89665%_
                                (##fx- (&raw-table-free _%tab89665%_) '1))
                               (&raw-table-count-set!
                                _%tab89665%_
                                (##fx+ (&raw-table-count _%tab89665%_)
                                       '1)))))))
                    (if (eq? _%k89696%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89686%_
                           (let ((_%next-probe89703%_
                                  (fx+ _%start89682%_
                                       _%i89691%_
                                       (fx* _%i89691%_ _%i89691%_))))
                             (##fxmodulo _%next-probe89703%_ _%size89676%_))
                           (##fx+ _%i89691%_ '1)
                           (let ((_%$e89706%_ _%deleted89693%_))
                             (if _%$e89706%_ _%$e89706%_ _%probe89689%_))))
                        (if (eq? _%key89666%_ _%k89696%_)
                            (let ()
                              (vector-set!
                               _%table89670%_
                               _%probe89689%_
                               _%key89666%_)
                              (vector-set!
                               _%table89670%_
                               (##fx+ _%probe89689%_ '1)
                               _%value89667%_))
                            (let ()
                              (_%loop89686%_
                               (let ((_%next-probe89711%_
                                      (fx+ _%start89682%_
                                           _%i89691%_
                                           (fx* _%i89691%_ _%i89691%_))))
                                 (##fxmodulo
                                  _%next-probe89711%_
                                  _%size89676%_))
                               (##fx+ _%i89691%_ '1)
                               _%deleted89693%_)))))))))))
    (define eq-table-update!
      (lambda (_%tab89660%_
               _%key89661%_
               _%eq-table-update!89662%_
               _%default89663%_)
        (if (##fx< (&raw-table-free _%tab89660%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89660%_))
                    '4))
            (__raw-table-rehash! _%tab89660%_)
            '#!void)
        (__eq-table-update!
         _%tab89660%_
         _%key89661%_
         _%eq-table-update!89662%_
         _%default89663%_)))
    (define __eq-table-update!
      (lambda (_%tab89610%_
               _%key89611%_
               _%eq-table-update!89612%_
               _%default89613%_)
        (let ((_%table89616%_ (&raw-table-table _%tab89610%_))
              (_%seed89617%_ (&raw-table-seed _%tab89610%_)))
          (let* ((_%h89619%_ (fxxor (eq-hash _%key89611%_) _%seed89617%_))
                 (_%size89622%_ (vector-length _%table89616%_))
                 (_%entries89625%_ (##fxquotient _%size89622%_ '2))
                 (_%start89628%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89619%_ _%entries89625%_)
                   '1)))
            (let _%loop89632%_ ((_%probe89635%_ _%start89628%_)
                                (_%i89637%_ '1)
                                (_%deleted89639%_ '#f))
              (let ((_%k89642%_ (vector-ref _%table89616%_ _%probe89635%_)))
                (if (eq? _%k89642%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89639%_
                          (begin
                            (vector-set!
                             _%table89616%_
                             _%deleted89639%_
                             _%key89611%_)
                            (vector-set!
                             _%table89616%_
                             (##fx+ _%deleted89639%_ '1)
                             (_%eq-table-update!89612%_ _%default89613%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89610%_
                                (##fx+ (&raw-table-count _%tab89610%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89616%_
                             _%probe89635%_
                             _%key89611%_)
                            (vector-set!
                             _%table89616%_
                             (##fx+ _%probe89635%_ '1)
                             (_%eq-table-update!89612%_ _%default89613%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89610%_
                                (##fx- (&raw-table-free _%tab89610%_) '1))
                               (&raw-table-count-set!
                                _%tab89610%_
                                (##fx+ (&raw-table-count _%tab89610%_)
                                       '1)))))))
                    (if (eq? _%k89642%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89632%_
                           (let ((_%next-probe89649%_
                                  (fx+ _%start89628%_
                                       _%i89637%_
                                       (fx* _%i89637%_ _%i89637%_))))
                             (##fxmodulo _%next-probe89649%_ _%size89622%_))
                           (##fx+ _%i89637%_ '1)
                           (let ((_%$e89652%_ _%deleted89639%_))
                             (if _%$e89652%_ _%$e89652%_ _%probe89635%_))))
                        (if (eq? _%key89611%_ _%k89642%_)
                            (let ()
                              (vector-set!
                               _%table89616%_
                               _%probe89635%_
                               _%key89611%_)
                              (vector-set!
                               _%table89616%_
                               (##fx+ _%probe89635%_ '1)
                               (_%eq-table-update!89612%_
                                (vector-ref
                                 _%table89616%_
                                 (##fx+ _%probe89635%_ '1)))))
                            (let ()
                              (_%loop89632%_
                               (let ((_%next-probe89657%_
                                      (fx+ _%start89628%_
                                           _%i89637%_
                                           (fx* _%i89637%_ _%i89637%_))))
                                 (##fxmodulo
                                  _%next-probe89657%_
                                  _%size89622%_))
                               (##fx+ _%i89637%_ '1)
                               _%deleted89639%_)))))))))))
    (define eq-table-delete!
      (lambda (_%tab89565%_ _%key89567%_)
        (let ((_%table89570%_ (&raw-table-table _%tab89565%_))
              (_%seed89572%_ (&raw-table-seed _%tab89565%_)))
          (let* ((_%h89575%_ (fxxor (eq-hash _%key89567%_) _%seed89572%_))
                 (_%size89578%_ (vector-length _%table89570%_))
                 (_%entries89581%_ (##fxquotient _%size89578%_ '2))
                 (_%start89584%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89575%_ _%entries89581%_)
                   '1)))
            (let _%loop89588%_ ((_%probe89591%_ _%start89584%_)
                                (_%i89593%_ '1))
              (let ((_%k89596%_ (vector-ref _%table89570%_ _%probe89591%_)))
                (if (eq? _%k89596%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89596%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89588%_
                           (let ((_%next-probe89601%_
                                  (fx+ _%start89584%_
                                       _%i89593%_
                                       (fx* _%i89593%_ _%i89593%_))))
                             (##fxmodulo _%next-probe89601%_ _%size89578%_))
                           (##fx+ _%i89593%_ '1)))
                        (if (eq? _%key89567%_ _%k89596%_)
                            (let ()
                              (vector-set!
                               _%table89570%_
                               _%probe89591%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89570%_
                               (##fx+ _%probe89591%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89565%_
                                  (##fx- (&raw-table-count _%tab89565%_)
                                         '1)))))
                            (let ()
                              (_%loop89588%_
                               (let ((_%next-probe89607%_
                                      (fx+ _%start89584%_
                                           _%i89593%_
                                           (fx* _%i89593%_ _%i89593%_))))
                                 (##fxmodulo
                                  _%next-probe89607%_
                                  _%size89578%_))
                               (##fx+ _%i89593%_ '1))))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint89546%_ _%seed89548%_)
        (make-raw-table__% _%size-hint89546%_ eqv-hash eqv? _%seed89548%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint89554%_ '#f) (_%seed89556%_ '0))
          (make-eqv-table__% _%size-hint89554%_ _%seed89556%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint89558%_)
        (let ((_%seed89560%_ '0))
          (make-eqv-table__% _%size-hint89558%_ _%seed89560%_))))
    (define make-eqv-table
      (lambda _g90123_
        (let ((_g90122_ (##length _g90123_)))
          (cond ((##fx= _g90122_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g90123_))
                ((##fx= _g90122_ 1)
                 (apply (lambda (_%size-hint89558%_)
                          (make-eqv-table__1 _%size-hint89558%_))
                        _g90123_))
                ((##fx= _g90122_ 2)
                 (apply (lambda (_%size-hint89562%_ _%seed89563%_)
                          (make-eqv-table__% _%size-hint89562%_ _%seed89563%_))
                        _g90123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90123_))))))
    (define eqv-table-ref
      (lambda (_%tab89499%_ _%key89500%_ _%default89501%_)
        (let ((_%table89503%_ (&raw-table-table _%tab89499%_))
              (_%seed89504%_ (&raw-table-seed _%tab89499%_)))
          (let* ((_%h89506%_ (fxxor (eqv-hash _%key89500%_) _%seed89504%_))
                 (_%size89509%_ (vector-length _%table89503%_))
                 (_%entries89512%_ (##fxquotient _%size89509%_ '2))
                 (_%start89515%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89506%_ _%entries89512%_)
                   '1)))
            (let _%loop89519%_ ((_%probe89522%_ _%start89515%_)
                                (_%i89524%_ '1)
                                (_%deleted89526%_ '#f))
              (let ((_%k89529%_ (vector-ref _%table89503%_ _%probe89522%_)))
                (if (eq? _%k89529%_ (macro-unused-obj))
                    (let () _%default89501%_)
                    (if (eq? _%k89529%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89519%_
                           (let ((_%next-probe89534%_
                                  (fx+ _%start89515%_
                                       _%i89524%_
                                       (fx* _%i89524%_ _%i89524%_))))
                             (##fxmodulo _%next-probe89534%_ _%size89509%_))
                           (##fx+ _%i89524%_ '1)
                           (let ((_%$e89537%_ _%deleted89526%_))
                             (if _%$e89537%_ _%$e89537%_ _%probe89522%_))))
                        (if (eqv? _%key89500%_ _%k89529%_)
                            (let ()
                              (vector-ref
                               _%table89503%_
                               (##fx+ _%probe89522%_ '1)))
                            (let ()
                              (_%loop89519%_
                               (let ((_%next-probe89542%_
                                      (fx+ _%start89515%_
                                           _%i89524%_
                                           (fx* _%i89524%_ _%i89524%_))))
                                 (##fxmodulo
                                  _%next-probe89542%_
                                  _%size89509%_))
                               (##fx+ _%i89524%_ '1)
                               _%deleted89526%_)))))))))))
    (define eqv-table-set!
      (lambda (_%tab89495%_ _%key89496%_ _%value89497%_)
        (if (##fx< (&raw-table-free _%tab89495%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89495%_))
                    '4))
            (__raw-table-rehash! _%tab89495%_)
            '#!void)
        (__eqv-table-set! _%tab89495%_ _%key89496%_ _%value89497%_)))
    (define __eqv-table-set!
      (lambda (_%tab89446%_ _%key89447%_ _%value89448%_)
        (let ((_%table89451%_ (&raw-table-table _%tab89446%_))
              (_%seed89452%_ (&raw-table-seed _%tab89446%_)))
          (let* ((_%h89454%_ (fxxor (eqv-hash _%key89447%_) _%seed89452%_))
                 (_%size89457%_ (vector-length _%table89451%_))
                 (_%entries89460%_ (##fxquotient _%size89457%_ '2))
                 (_%start89463%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89454%_ _%entries89460%_)
                   '1)))
            (let _%loop89467%_ ((_%probe89470%_ _%start89463%_)
                                (_%i89472%_ '1)
                                (_%deleted89474%_ '#f))
              (let ((_%k89477%_ (vector-ref _%table89451%_ _%probe89470%_)))
                (if (eq? _%k89477%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89474%_
                          (begin
                            (vector-set!
                             _%table89451%_
                             _%deleted89474%_
                             _%key89447%_)
                            (vector-set!
                             _%table89451%_
                             (##fx+ _%deleted89474%_ '1)
                             _%value89448%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89446%_
                                (##fx+ (&raw-table-count _%tab89446%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89451%_
                             _%probe89470%_
                             _%key89447%_)
                            (vector-set!
                             _%table89451%_
                             (##fx+ _%probe89470%_ '1)
                             _%value89448%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89446%_
                                (##fx- (&raw-table-free _%tab89446%_) '1))
                               (&raw-table-count-set!
                                _%tab89446%_
                                (##fx+ (&raw-table-count _%tab89446%_)
                                       '1)))))))
                    (if (eq? _%k89477%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89467%_
                           (let ((_%next-probe89484%_
                                  (fx+ _%start89463%_
                                       _%i89472%_
                                       (fx* _%i89472%_ _%i89472%_))))
                             (##fxmodulo _%next-probe89484%_ _%size89457%_))
                           (##fx+ _%i89472%_ '1)
                           (let ((_%$e89487%_ _%deleted89474%_))
                             (if _%$e89487%_ _%$e89487%_ _%probe89470%_))))
                        (if (eqv? _%key89447%_ _%k89477%_)
                            (let ()
                              (vector-set!
                               _%table89451%_
                               _%probe89470%_
                               _%key89447%_)
                              (vector-set!
                               _%table89451%_
                               (##fx+ _%probe89470%_ '1)
                               _%value89448%_))
                            (let ()
                              (_%loop89467%_
                               (let ((_%next-probe89492%_
                                      (fx+ _%start89463%_
                                           _%i89472%_
                                           (fx* _%i89472%_ _%i89472%_))))
                                 (##fxmodulo
                                  _%next-probe89492%_
                                  _%size89457%_))
                               (##fx+ _%i89472%_ '1)
                               _%deleted89474%_)))))))))))
    (define eqv-table-update!
      (lambda (_%tab89441%_
               _%key89442%_
               _%eqv-table-update!89443%_
               _%default89444%_)
        (if (##fx< (&raw-table-free _%tab89441%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89441%_))
                    '4))
            (__raw-table-rehash! _%tab89441%_)
            '#!void)
        (__eqv-table-update!
         _%tab89441%_
         _%key89442%_
         _%eqv-table-update!89443%_
         _%default89444%_)))
    (define __eqv-table-update!
      (lambda (_%tab89391%_
               _%key89392%_
               _%eqv-table-update!89393%_
               _%default89394%_)
        (let ((_%table89397%_ (&raw-table-table _%tab89391%_))
              (_%seed89398%_ (&raw-table-seed _%tab89391%_)))
          (let* ((_%h89400%_ (fxxor (eqv-hash _%key89392%_) _%seed89398%_))
                 (_%size89403%_ (vector-length _%table89397%_))
                 (_%entries89406%_ (##fxquotient _%size89403%_ '2))
                 (_%start89409%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89400%_ _%entries89406%_)
                   '1)))
            (let _%loop89413%_ ((_%probe89416%_ _%start89409%_)
                                (_%i89418%_ '1)
                                (_%deleted89420%_ '#f))
              (let ((_%k89423%_ (vector-ref _%table89397%_ _%probe89416%_)))
                (if (eq? _%k89423%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89420%_
                          (begin
                            (vector-set!
                             _%table89397%_
                             _%deleted89420%_
                             _%key89392%_)
                            (vector-set!
                             _%table89397%_
                             (##fx+ _%deleted89420%_ '1)
                             (_%eqv-table-update!89393%_ _%default89394%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89391%_
                                (##fx+ (&raw-table-count _%tab89391%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89397%_
                             _%probe89416%_
                             _%key89392%_)
                            (vector-set!
                             _%table89397%_
                             (##fx+ _%probe89416%_ '1)
                             (_%eqv-table-update!89393%_ _%default89394%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89391%_
                                (##fx- (&raw-table-free _%tab89391%_) '1))
                               (&raw-table-count-set!
                                _%tab89391%_
                                (##fx+ (&raw-table-count _%tab89391%_)
                                       '1)))))))
                    (if (eq? _%k89423%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89413%_
                           (let ((_%next-probe89430%_
                                  (fx+ _%start89409%_
                                       _%i89418%_
                                       (fx* _%i89418%_ _%i89418%_))))
                             (##fxmodulo _%next-probe89430%_ _%size89403%_))
                           (##fx+ _%i89418%_ '1)
                           (let ((_%$e89433%_ _%deleted89420%_))
                             (if _%$e89433%_ _%$e89433%_ _%probe89416%_))))
                        (if (eqv? _%key89392%_ _%k89423%_)
                            (let ()
                              (vector-set!
                               _%table89397%_
                               _%probe89416%_
                               _%key89392%_)
                              (vector-set!
                               _%table89397%_
                               (##fx+ _%probe89416%_ '1)
                               (_%eqv-table-update!89393%_
                                (vector-ref
                                 _%table89397%_
                                 (##fx+ _%probe89416%_ '1)))))
                            (let ()
                              (_%loop89413%_
                               (let ((_%next-probe89438%_
                                      (fx+ _%start89409%_
                                           _%i89418%_
                                           (fx* _%i89418%_ _%i89418%_))))
                                 (##fxmodulo
                                  _%next-probe89438%_
                                  _%size89403%_))
                               (##fx+ _%i89418%_ '1)
                               _%deleted89420%_)))))))))))
    (define eqv-table-delete!
      (lambda (_%tab89346%_ _%key89348%_)
        (let ((_%table89351%_ (&raw-table-table _%tab89346%_))
              (_%seed89353%_ (&raw-table-seed _%tab89346%_)))
          (let* ((_%h89356%_ (fxxor (eqv-hash _%key89348%_) _%seed89353%_))
                 (_%size89359%_ (vector-length _%table89351%_))
                 (_%entries89362%_ (##fxquotient _%size89359%_ '2))
                 (_%start89365%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89356%_ _%entries89362%_)
                   '1)))
            (let _%loop89369%_ ((_%probe89372%_ _%start89365%_)
                                (_%i89374%_ '1))
              (let ((_%k89377%_ (vector-ref _%table89351%_ _%probe89372%_)))
                (if (eq? _%k89377%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89377%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89369%_
                           (let ((_%next-probe89382%_
                                  (fx+ _%start89365%_
                                       _%i89374%_
                                       (fx* _%i89374%_ _%i89374%_))))
                             (##fxmodulo _%next-probe89382%_ _%size89359%_))
                           (##fx+ _%i89374%_ '1)))
                        (if (eqv? _%key89348%_ _%k89377%_)
                            (let ()
                              (vector-set!
                               _%table89351%_
                               _%probe89372%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89351%_
                               (##fx+ _%probe89372%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89346%_
                                  (##fx- (&raw-table-count _%tab89346%_)
                                         '1)))))
                            (let ()
                              (_%loop89369%_
                               (let ((_%next-probe89388%_
                                      (fx+ _%start89365%_
                                           _%i89374%_
                                           (fx* _%i89374%_ _%i89374%_))))
                                 (##fxmodulo
                                  _%next-probe89388%_
                                  _%size89359%_))
                               (##fx+ _%i89374%_ '1))))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint89327%_ _%seed89329%_)
        (make-raw-table__%
         _%size-hint89327%_
         symbolic-hash
         eq?
         _%seed89329%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint89335%_ '#f) (_%seed89337%_ '0))
          (make-symbolic-table__% _%size-hint89335%_ _%seed89337%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint89339%_)
        (let ((_%seed89341%_ '0))
          (make-symbolic-table__% _%size-hint89339%_ _%seed89341%_))))
    (define make-symbolic-table
      (lambda _g90125_
        (let ((_g90124_ (##length _g90125_)))
          (cond ((##fx= _g90124_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g90125_))
                ((##fx= _g90124_ 1)
                 (apply (lambda (_%size-hint89339%_)
                          (make-symbolic-table__1 _%size-hint89339%_))
                        _g90125_))
                ((##fx= _g90124_ 2)
                 (apply (lambda (_%size-hint89343%_ _%seed89344%_)
                          (make-symbolic-table__%
                           _%size-hint89343%_
                           _%seed89344%_))
                        _g90125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90125_))))))
    (define symbolic-table-ref
      (lambda (_%tab89280%_ _%key89281%_ _%default89282%_)
        (let ((_%table89284%_ (&raw-table-table _%tab89280%_))
              (_%seed89285%_ (&raw-table-seed _%tab89280%_)))
          (let* ((_%h89287%_
                  (fxxor (symbolic-hash _%key89281%_) _%seed89285%_))
                 (_%size89290%_ (vector-length _%table89284%_))
                 (_%entries89293%_ (##fxquotient _%size89290%_ '2))
                 (_%start89296%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89287%_ _%entries89293%_)
                   '1)))
            (let _%loop89300%_ ((_%probe89303%_ _%start89296%_)
                                (_%i89305%_ '1)
                                (_%deleted89307%_ '#f))
              (let ((_%k89310%_ (vector-ref _%table89284%_ _%probe89303%_)))
                (if (eq? _%k89310%_ (macro-unused-obj))
                    (let () _%default89282%_)
                    (if (eq? _%k89310%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89300%_
                           (let ((_%next-probe89315%_
                                  (fx+ _%start89296%_
                                       _%i89305%_
                                       (fx* _%i89305%_ _%i89305%_))))
                             (##fxmodulo _%next-probe89315%_ _%size89290%_))
                           (##fx+ _%i89305%_ '1)
                           (let ((_%$e89318%_ _%deleted89307%_))
                             (if _%$e89318%_ _%$e89318%_ _%probe89303%_))))
                        (if (eq? _%key89281%_ _%k89310%_)
                            (let ()
                              (vector-ref
                               _%table89284%_
                               (##fx+ _%probe89303%_ '1)))
                            (let ()
                              (_%loop89300%_
                               (let ((_%next-probe89323%_
                                      (fx+ _%start89296%_
                                           _%i89305%_
                                           (fx* _%i89305%_ _%i89305%_))))
                                 (##fxmodulo
                                  _%next-probe89323%_
                                  _%size89290%_))
                               (##fx+ _%i89305%_ '1)
                               _%deleted89307%_)))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89276%_ _%key89277%_ _%value89278%_)
        (if (##fx< (&raw-table-free _%tab89276%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89276%_))
                    '4))
            (__raw-table-rehash! _%tab89276%_)
            '#!void)
        (__symbolic-table-set! _%tab89276%_ _%key89277%_ _%value89278%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89227%_ _%key89228%_ _%value89229%_)
        (let ((_%table89232%_ (&raw-table-table _%tab89227%_))
              (_%seed89233%_ (&raw-table-seed _%tab89227%_)))
          (let* ((_%h89235%_
                  (fxxor (symbolic-hash _%key89228%_) _%seed89233%_))
                 (_%size89238%_ (vector-length _%table89232%_))
                 (_%entries89241%_ (##fxquotient _%size89238%_ '2))
                 (_%start89244%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89235%_ _%entries89241%_)
                   '1)))
            (let _%loop89248%_ ((_%probe89251%_ _%start89244%_)
                                (_%i89253%_ '1)
                                (_%deleted89255%_ '#f))
              (let ((_%k89258%_ (vector-ref _%table89232%_ _%probe89251%_)))
                (if (eq? _%k89258%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89255%_
                          (begin
                            (vector-set!
                             _%table89232%_
                             _%deleted89255%_
                             _%key89228%_)
                            (vector-set!
                             _%table89232%_
                             (##fx+ _%deleted89255%_ '1)
                             _%value89229%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89227%_
                                (##fx+ (&raw-table-count _%tab89227%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89232%_
                             _%probe89251%_
                             _%key89228%_)
                            (vector-set!
                             _%table89232%_
                             (##fx+ _%probe89251%_ '1)
                             _%value89229%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89227%_
                                (##fx- (&raw-table-free _%tab89227%_) '1))
                               (&raw-table-count-set!
                                _%tab89227%_
                                (##fx+ (&raw-table-count _%tab89227%_)
                                       '1)))))))
                    (if (eq? _%k89258%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89248%_
                           (let ((_%next-probe89265%_
                                  (fx+ _%start89244%_
                                       _%i89253%_
                                       (fx* _%i89253%_ _%i89253%_))))
                             (##fxmodulo _%next-probe89265%_ _%size89238%_))
                           (##fx+ _%i89253%_ '1)
                           (let ((_%$e89268%_ _%deleted89255%_))
                             (if _%$e89268%_ _%$e89268%_ _%probe89251%_))))
                        (if (eq? _%key89228%_ _%k89258%_)
                            (let ()
                              (vector-set!
                               _%table89232%_
                               _%probe89251%_
                               _%key89228%_)
                              (vector-set!
                               _%table89232%_
                               (##fx+ _%probe89251%_ '1)
                               _%value89229%_))
                            (let ()
                              (_%loop89248%_
                               (let ((_%next-probe89273%_
                                      (fx+ _%start89244%_
                                           _%i89253%_
                                           (fx* _%i89253%_ _%i89253%_))))
                                 (##fxmodulo
                                  _%next-probe89273%_
                                  _%size89238%_))
                               (##fx+ _%i89253%_ '1)
                               _%deleted89255%_)))))))))))
    (define symbolic-table-update!
      (lambda (_%tab89222%_
               _%key89223%_
               _%symbolic-table-update!89224%_
               _%default89225%_)
        (if (##fx< (&raw-table-free _%tab89222%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89222%_))
                    '4))
            (__raw-table-rehash! _%tab89222%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89222%_
         _%key89223%_
         _%symbolic-table-update!89224%_
         _%default89225%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89172%_
               _%key89173%_
               _%symbolic-table-update!89174%_
               _%default89175%_)
        (let ((_%table89178%_ (&raw-table-table _%tab89172%_))
              (_%seed89179%_ (&raw-table-seed _%tab89172%_)))
          (let* ((_%h89181%_
                  (fxxor (symbolic-hash _%key89173%_) _%seed89179%_))
                 (_%size89184%_ (vector-length _%table89178%_))
                 (_%entries89187%_ (##fxquotient _%size89184%_ '2))
                 (_%start89190%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89181%_ _%entries89187%_)
                   '1)))
            (let _%loop89194%_ ((_%probe89197%_ _%start89190%_)
                                (_%i89199%_ '1)
                                (_%deleted89201%_ '#f))
              (let ((_%k89204%_ (vector-ref _%table89178%_ _%probe89197%_)))
                (if (eq? _%k89204%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89201%_
                          (begin
                            (vector-set!
                             _%table89178%_
                             _%deleted89201%_
                             _%key89173%_)
                            (vector-set!
                             _%table89178%_
                             (##fx+ _%deleted89201%_ '1)
                             (_%symbolic-table-update!89174%_
                              _%default89175%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89172%_
                                (##fx+ (&raw-table-count _%tab89172%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89178%_
                             _%probe89197%_
                             _%key89173%_)
                            (vector-set!
                             _%table89178%_
                             (##fx+ _%probe89197%_ '1)
                             (_%symbolic-table-update!89174%_
                              _%default89175%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89172%_
                                (##fx- (&raw-table-free _%tab89172%_) '1))
                               (&raw-table-count-set!
                                _%tab89172%_
                                (##fx+ (&raw-table-count _%tab89172%_)
                                       '1)))))))
                    (if (eq? _%k89204%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89194%_
                           (let ((_%next-probe89211%_
                                  (fx+ _%start89190%_
                                       _%i89199%_
                                       (fx* _%i89199%_ _%i89199%_))))
                             (##fxmodulo _%next-probe89211%_ _%size89184%_))
                           (##fx+ _%i89199%_ '1)
                           (let ((_%$e89214%_ _%deleted89201%_))
                             (if _%$e89214%_ _%$e89214%_ _%probe89197%_))))
                        (if (eq? _%key89173%_ _%k89204%_)
                            (let ()
                              (vector-set!
                               _%table89178%_
                               _%probe89197%_
                               _%key89173%_)
                              (vector-set!
                               _%table89178%_
                               (##fx+ _%probe89197%_ '1)
                               (_%symbolic-table-update!89174%_
                                (vector-ref
                                 _%table89178%_
                                 (##fx+ _%probe89197%_ '1)))))
                            (let ()
                              (_%loop89194%_
                               (let ((_%next-probe89219%_
                                      (fx+ _%start89190%_
                                           _%i89199%_
                                           (fx* _%i89199%_ _%i89199%_))))
                                 (##fxmodulo
                                  _%next-probe89219%_
                                  _%size89184%_))
                               (##fx+ _%i89199%_ '1)
                               _%deleted89201%_)))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89127%_ _%key89129%_)
        (let ((_%table89132%_ (&raw-table-table _%tab89127%_))
              (_%seed89134%_ (&raw-table-seed _%tab89127%_)))
          (let* ((_%h89137%_
                  (fxxor (symbolic-hash _%key89129%_) _%seed89134%_))
                 (_%size89140%_ (vector-length _%table89132%_))
                 (_%entries89143%_ (##fxquotient _%size89140%_ '2))
                 (_%start89146%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89137%_ _%entries89143%_)
                   '1)))
            (let _%loop89150%_ ((_%probe89153%_ _%start89146%_)
                                (_%i89155%_ '1))
              (let ((_%k89158%_ (vector-ref _%table89132%_ _%probe89153%_)))
                (if (eq? _%k89158%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k89158%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89150%_
                           (let ((_%next-probe89163%_
                                  (fx+ _%start89146%_
                                       _%i89155%_
                                       (fx* _%i89155%_ _%i89155%_))))
                             (##fxmodulo _%next-probe89163%_ _%size89140%_))
                           (##fx+ _%i89155%_ '1)))
                        (if (eq? _%key89129%_ _%k89158%_)
                            (let ()
                              (vector-set!
                               _%table89132%_
                               _%probe89153%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89132%_
                               (##fx+ _%probe89153%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89127%_
                                  (##fx- (&raw-table-count _%tab89127%_)
                                         '1)))))
                            (let ()
                              (_%loop89150%_
                               (let ((_%next-probe89169%_
                                      (fx+ _%start89146%_
                                           _%i89155%_
                                           (fx* _%i89155%_ _%i89155%_))))
                                 (##fxmodulo
                                  _%next-probe89169%_
                                  _%size89140%_))
                               (##fx+ _%i89155%_ '1))))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89108%_ _%seed89110%_)
        (make-raw-table__%
         _%size-hint89108%_
         string-hash
         ##string=?
         _%seed89110%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89116%_ '#f) (_%seed89118%_ '0))
          (make-string-table__% _%size-hint89116%_ _%seed89118%_))))
    (define make-string-table__1
      (lambda (_%size-hint89120%_)
        (let ((_%seed89122%_ '0))
          (make-string-table__% _%size-hint89120%_ _%seed89122%_))))
    (define make-string-table
      (lambda _g90127_
        (let ((_g90126_ (##length _g90127_)))
          (cond ((##fx= _g90126_ 0)
                 (apply (lambda () (make-string-table__0)) _g90127_))
                ((##fx= _g90126_ 1)
                 (apply (lambda (_%size-hint89120%_)
                          (make-string-table__1 _%size-hint89120%_))
                        _g90127_))
                ((##fx= _g90126_ 2)
                 (apply (lambda (_%size-hint89124%_ _%seed89125%_)
                          (make-string-table__%
                           _%size-hint89124%_
                           _%seed89125%_))
                        _g90127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90127_))))))
    (define string-table-ref
      (lambda (_%tab89061%_ _%key89062%_ _%default89063%_)
        (let ((_%table89065%_ (&raw-table-table _%tab89061%_))
              (_%seed89066%_ (&raw-table-seed _%tab89061%_)))
          (let* ((_%h89068%_
                  (fxxor (##string=?-hash _%key89062%_) _%seed89066%_))
                 (_%size89071%_ (vector-length _%table89065%_))
                 (_%entries89074%_ (##fxquotient _%size89071%_ '2))
                 (_%start89077%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89068%_ _%entries89074%_)
                   '1)))
            (let _%loop89081%_ ((_%probe89084%_ _%start89077%_)
                                (_%i89086%_ '1)
                                (_%deleted89088%_ '#f))
              (let ((_%k89091%_ (vector-ref _%table89065%_ _%probe89084%_)))
                (if (eq? _%k89091%_ (macro-unused-obj))
                    (let () _%default89063%_)
                    (if (eq? _%k89091%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89081%_
                           (let ((_%next-probe89096%_
                                  (fx+ _%start89077%_
                                       _%i89086%_
                                       (fx* _%i89086%_ _%i89086%_))))
                             (##fxmodulo _%next-probe89096%_ _%size89071%_))
                           (##fx+ _%i89086%_ '1)
                           (let ((_%$e89099%_ _%deleted89088%_))
                             (if _%$e89099%_ _%$e89099%_ _%probe89084%_))))
                        (if (##string=? _%key89062%_ _%k89091%_)
                            (let ()
                              (vector-ref
                               _%table89065%_
                               (##fx+ _%probe89084%_ '1)))
                            (let ()
                              (_%loop89081%_
                               (let ((_%next-probe89104%_
                                      (fx+ _%start89077%_
                                           _%i89086%_
                                           (fx* _%i89086%_ _%i89086%_))))
                                 (##fxmodulo
                                  _%next-probe89104%_
                                  _%size89071%_))
                               (##fx+ _%i89086%_ '1)
                               _%deleted89088%_)))))))))))
    (define string-table-set!
      (lambda (_%tab89057%_ _%key89058%_ _%value89059%_)
        (if (##fx< (&raw-table-free _%tab89057%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89057%_))
                    '4))
            (__raw-table-rehash! _%tab89057%_)
            '#!void)
        (__string-table-set! _%tab89057%_ _%key89058%_ _%value89059%_)))
    (define __string-table-set!
      (lambda (_%tab89008%_ _%key89009%_ _%value89010%_)
        (let ((_%table89013%_ (&raw-table-table _%tab89008%_))
              (_%seed89014%_ (&raw-table-seed _%tab89008%_)))
          (let* ((_%h89016%_
                  (fxxor (##string=?-hash _%key89009%_) _%seed89014%_))
                 (_%size89019%_ (vector-length _%table89013%_))
                 (_%entries89022%_ (##fxquotient _%size89019%_ '2))
                 (_%start89025%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89016%_ _%entries89022%_)
                   '1)))
            (let _%loop89029%_ ((_%probe89032%_ _%start89025%_)
                                (_%i89034%_ '1)
                                (_%deleted89036%_ '#f))
              (let ((_%k89039%_ (vector-ref _%table89013%_ _%probe89032%_)))
                (if (eq? _%k89039%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted89036%_
                          (begin
                            (vector-set!
                             _%table89013%_
                             _%deleted89036%_
                             _%key89009%_)
                            (vector-set!
                             _%table89013%_
                             (##fx+ _%deleted89036%_ '1)
                             _%value89010%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab89008%_
                                (##fx+ (&raw-table-count _%tab89008%_) '1)))))
                          (begin
                            (vector-set!
                             _%table89013%_
                             _%probe89032%_
                             _%key89009%_)
                            (vector-set!
                             _%table89013%_
                             (##fx+ _%probe89032%_ '1)
                             _%value89010%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab89008%_
                                (##fx- (&raw-table-free _%tab89008%_) '1))
                               (&raw-table-count-set!
                                _%tab89008%_
                                (##fx+ (&raw-table-count _%tab89008%_)
                                       '1)))))))
                    (if (eq? _%k89039%_ (macro-deleted-obj))
                        (let ()
                          (_%loop89029%_
                           (let ((_%next-probe89046%_
                                  (fx+ _%start89025%_
                                       _%i89034%_
                                       (fx* _%i89034%_ _%i89034%_))))
                             (##fxmodulo _%next-probe89046%_ _%size89019%_))
                           (##fx+ _%i89034%_ '1)
                           (let ((_%$e89049%_ _%deleted89036%_))
                             (if _%$e89049%_ _%$e89049%_ _%probe89032%_))))
                        (if (##string=? _%key89009%_ _%k89039%_)
                            (let ()
                              (vector-set!
                               _%table89013%_
                               _%probe89032%_
                               _%key89009%_)
                              (vector-set!
                               _%table89013%_
                               (##fx+ _%probe89032%_ '1)
                               _%value89010%_))
                            (let ()
                              (_%loop89029%_
                               (let ((_%next-probe89054%_
                                      (fx+ _%start89025%_
                                           _%i89034%_
                                           (fx* _%i89034%_ _%i89034%_))))
                                 (##fxmodulo
                                  _%next-probe89054%_
                                  _%size89019%_))
                               (##fx+ _%i89034%_ '1)
                               _%deleted89036%_)))))))))))
    (define string-table-update!
      (lambda (_%tab89003%_
               _%key89004%_
               _%string-table-update!89005%_
               _%default89006%_)
        (if (##fx< (&raw-table-free _%tab89003%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89003%_))
                    '4))
            (__raw-table-rehash! _%tab89003%_)
            '#!void)
        (__string-table-update!
         _%tab89003%_
         _%key89004%_
         _%string-table-update!89005%_
         _%default89006%_)))
    (define __string-table-update!
      (lambda (_%tab88953%_
               _%key88954%_
               _%string-table-update!88955%_
               _%default88956%_)
        (let ((_%table88959%_ (&raw-table-table _%tab88953%_))
              (_%seed88960%_ (&raw-table-seed _%tab88953%_)))
          (let* ((_%h88962%_
                  (fxxor (##string=?-hash _%key88954%_) _%seed88960%_))
                 (_%size88965%_ (vector-length _%table88959%_))
                 (_%entries88968%_ (##fxquotient _%size88965%_ '2))
                 (_%start88971%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88962%_ _%entries88968%_)
                   '1)))
            (let _%loop88975%_ ((_%probe88978%_ _%start88971%_)
                                (_%i88980%_ '1)
                                (_%deleted88982%_ '#f))
              (let ((_%k88985%_ (vector-ref _%table88959%_ _%probe88978%_)))
                (if (eq? _%k88985%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88982%_
                          (begin
                            (vector-set!
                             _%table88959%_
                             _%deleted88982%_
                             _%key88954%_)
                            (vector-set!
                             _%table88959%_
                             (##fx+ _%deleted88982%_ '1)
                             (_%string-table-update!88955%_ _%default88956%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88953%_
                                (##fx+ (&raw-table-count _%tab88953%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88959%_
                             _%probe88978%_
                             _%key88954%_)
                            (vector-set!
                             _%table88959%_
                             (##fx+ _%probe88978%_ '1)
                             (_%string-table-update!88955%_ _%default88956%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88953%_
                                (##fx- (&raw-table-free _%tab88953%_) '1))
                               (&raw-table-count-set!
                                _%tab88953%_
                                (##fx+ (&raw-table-count _%tab88953%_)
                                       '1)))))))
                    (if (eq? _%k88985%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88975%_
                           (let ((_%next-probe88992%_
                                  (fx+ _%start88971%_
                                       _%i88980%_
                                       (fx* _%i88980%_ _%i88980%_))))
                             (##fxmodulo _%next-probe88992%_ _%size88965%_))
                           (##fx+ _%i88980%_ '1)
                           (let ((_%$e88995%_ _%deleted88982%_))
                             (if _%$e88995%_ _%$e88995%_ _%probe88978%_))))
                        (if (##string=? _%key88954%_ _%k88985%_)
                            (let ()
                              (vector-set!
                               _%table88959%_
                               _%probe88978%_
                               _%key88954%_)
                              (vector-set!
                               _%table88959%_
                               (##fx+ _%probe88978%_ '1)
                               (_%string-table-update!88955%_
                                (vector-ref
                                 _%table88959%_
                                 (##fx+ _%probe88978%_ '1)))))
                            (let ()
                              (_%loop88975%_
                               (let ((_%next-probe89000%_
                                      (fx+ _%start88971%_
                                           _%i88980%_
                                           (fx* _%i88980%_ _%i88980%_))))
                                 (##fxmodulo
                                  _%next-probe89000%_
                                  _%size88965%_))
                               (##fx+ _%i88980%_ '1)
                               _%deleted88982%_)))))))))))
    (define string-table-delete!
      (lambda (_%tab88908%_ _%key88910%_)
        (let ((_%table88913%_ (&raw-table-table _%tab88908%_))
              (_%seed88915%_ (&raw-table-seed _%tab88908%_)))
          (let* ((_%h88918%_
                  (fxxor (##string=?-hash _%key88910%_) _%seed88915%_))
                 (_%size88921%_ (vector-length _%table88913%_))
                 (_%entries88924%_ (##fxquotient _%size88921%_ '2))
                 (_%start88927%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88918%_ _%entries88924%_)
                   '1)))
            (let _%loop88931%_ ((_%probe88934%_ _%start88927%_)
                                (_%i88936%_ '1))
              (let ((_%k88939%_ (vector-ref _%table88913%_ _%probe88934%_)))
                (if (eq? _%k88939%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k88939%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88931%_
                           (let ((_%next-probe88944%_
                                  (fx+ _%start88927%_
                                       _%i88936%_
                                       (fx* _%i88936%_ _%i88936%_))))
                             (##fxmodulo _%next-probe88944%_ _%size88921%_))
                           (##fx+ _%i88936%_ '1)))
                        (if (##string=? _%key88910%_ _%k88939%_)
                            (let ()
                              (vector-set!
                               _%table88913%_
                               _%probe88934%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88913%_
                               (##fx+ _%probe88934%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88908%_
                                  (##fx- (&raw-table-count _%tab88908%_)
                                         '1)))))
                            (let ()
                              (_%loop88931%_
                               (let ((_%next-probe88950%_
                                      (fx+ _%start88927%_
                                           _%i88936%_
                                           (fx* _%i88936%_ _%i88936%_))))
                                 (##fxmodulo
                                  _%next-probe88950%_
                                  _%size88921%_))
                               (##fx+ _%i88936%_ '1))))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint88889%_ _%seed88891%_)
        (make-raw-table__%
         _%size-hint88889%_
         immediate-hash
         eq?
         _%seed88891%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint88897%_ '#f) (_%seed88899%_ '0))
          (make-immediate-table__% _%size-hint88897%_ _%seed88899%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint88901%_)
        (let ((_%seed88903%_ '0))
          (make-immediate-table__% _%size-hint88901%_ _%seed88903%_))))
    (define make-immediate-table
      (lambda _g90129_
        (let ((_g90128_ (##length _g90129_)))
          (cond ((##fx= _g90128_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g90129_))
                ((##fx= _g90128_ 1)
                 (apply (lambda (_%size-hint88901%_)
                          (make-immediate-table__1 _%size-hint88901%_))
                        _g90129_))
                ((##fx= _g90128_ 2)
                 (apply (lambda (_%size-hint88905%_ _%seed88906%_)
                          (make-immediate-table__%
                           _%size-hint88905%_
                           _%seed88906%_))
                        _g90129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90129_))))))
    (define immediate-table-ref
      (lambda (_%tab88842%_ _%key88843%_ _%default88844%_)
        (let ((_%table88846%_ (&raw-table-table _%tab88842%_))
              (_%seed88847%_ (&raw-table-seed _%tab88842%_)))
          (let* ((_%h88849%_
                  (fxxor (immediate-hash _%key88843%_) _%seed88847%_))
                 (_%size88852%_ (vector-length _%table88846%_))
                 (_%entries88855%_ (##fxquotient _%size88852%_ '2))
                 (_%start88858%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88849%_ _%entries88855%_)
                   '1)))
            (let _%loop88862%_ ((_%probe88865%_ _%start88858%_)
                                (_%i88867%_ '1)
                                (_%deleted88869%_ '#f))
              (let ((_%k88872%_ (vector-ref _%table88846%_ _%probe88865%_)))
                (if (eq? _%k88872%_ (macro-unused-obj))
                    (let () _%default88844%_)
                    (if (eq? _%k88872%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88862%_
                           (let ((_%next-probe88877%_
                                  (fx+ _%start88858%_
                                       _%i88867%_
                                       (fx* _%i88867%_ _%i88867%_))))
                             (##fxmodulo _%next-probe88877%_ _%size88852%_))
                           (##fx+ _%i88867%_ '1)
                           (let ((_%$e88880%_ _%deleted88869%_))
                             (if _%$e88880%_ _%$e88880%_ _%probe88865%_))))
                        (if (eq? _%key88843%_ _%k88872%_)
                            (let ()
                              (vector-ref
                               _%table88846%_
                               (##fx+ _%probe88865%_ '1)))
                            (let ()
                              (_%loop88862%_
                               (let ((_%next-probe88885%_
                                      (fx+ _%start88858%_
                                           _%i88867%_
                                           (fx* _%i88867%_ _%i88867%_))))
                                 (##fxmodulo
                                  _%next-probe88885%_
                                  _%size88852%_))
                               (##fx+ _%i88867%_ '1)
                               _%deleted88869%_)))))))))))
    (define immediate-table-set!
      (lambda (_%tab88838%_ _%key88839%_ _%value88840%_)
        (if (##fx< (&raw-table-free _%tab88838%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88838%_))
                    '4))
            (__raw-table-rehash! _%tab88838%_)
            '#!void)
        (__immediate-table-set! _%tab88838%_ _%key88839%_ _%value88840%_)))
    (define __immediate-table-set!
      (lambda (_%tab88789%_ _%key88790%_ _%value88791%_)
        (let ((_%table88794%_ (&raw-table-table _%tab88789%_))
              (_%seed88795%_ (&raw-table-seed _%tab88789%_)))
          (let* ((_%h88797%_
                  (fxxor (immediate-hash _%key88790%_) _%seed88795%_))
                 (_%size88800%_ (vector-length _%table88794%_))
                 (_%entries88803%_ (##fxquotient _%size88800%_ '2))
                 (_%start88806%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88797%_ _%entries88803%_)
                   '1)))
            (let _%loop88810%_ ((_%probe88813%_ _%start88806%_)
                                (_%i88815%_ '1)
                                (_%deleted88817%_ '#f))
              (let ((_%k88820%_ (vector-ref _%table88794%_ _%probe88813%_)))
                (if (eq? _%k88820%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88817%_
                          (begin
                            (vector-set!
                             _%table88794%_
                             _%deleted88817%_
                             _%key88790%_)
                            (vector-set!
                             _%table88794%_
                             (##fx+ _%deleted88817%_ '1)
                             _%value88791%_)
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88789%_
                                (##fx+ (&raw-table-count _%tab88789%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88794%_
                             _%probe88813%_
                             _%key88790%_)
                            (vector-set!
                             _%table88794%_
                             (##fx+ _%probe88813%_ '1)
                             _%value88791%_)
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88789%_
                                (##fx- (&raw-table-free _%tab88789%_) '1))
                               (&raw-table-count-set!
                                _%tab88789%_
                                (##fx+ (&raw-table-count _%tab88789%_)
                                       '1)))))))
                    (if (eq? _%k88820%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88810%_
                           (let ((_%next-probe88827%_
                                  (fx+ _%start88806%_
                                       _%i88815%_
                                       (fx* _%i88815%_ _%i88815%_))))
                             (##fxmodulo _%next-probe88827%_ _%size88800%_))
                           (##fx+ _%i88815%_ '1)
                           (let ((_%$e88830%_ _%deleted88817%_))
                             (if _%$e88830%_ _%$e88830%_ _%probe88813%_))))
                        (if (eq? _%key88790%_ _%k88820%_)
                            (let ()
                              (vector-set!
                               _%table88794%_
                               _%probe88813%_
                               _%key88790%_)
                              (vector-set!
                               _%table88794%_
                               (##fx+ _%probe88813%_ '1)
                               _%value88791%_))
                            (let ()
                              (_%loop88810%_
                               (let ((_%next-probe88835%_
                                      (fx+ _%start88806%_
                                           _%i88815%_
                                           (fx* _%i88815%_ _%i88815%_))))
                                 (##fxmodulo
                                  _%next-probe88835%_
                                  _%size88800%_))
                               (##fx+ _%i88815%_ '1)
                               _%deleted88817%_)))))))))))
    (define immediate-table-update!
      (lambda (_%tab88784%_
               _%key88785%_
               _%immediate-table-update!88786%_
               _%default88787%_)
        (if (##fx< (&raw-table-free _%tab88784%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab88784%_))
                    '4))
            (__raw-table-rehash! _%tab88784%_)
            '#!void)
        (__immediate-table-update!
         _%tab88784%_
         _%key88785%_
         _%immediate-table-update!88786%_
         _%default88787%_)))
    (define __immediate-table-update!
      (lambda (_%tab88734%_
               _%key88735%_
               _%immediate-table-update!88736%_
               _%default88737%_)
        (let ((_%table88740%_ (&raw-table-table _%tab88734%_))
              (_%seed88741%_ (&raw-table-seed _%tab88734%_)))
          (let* ((_%h88743%_
                  (fxxor (immediate-hash _%key88735%_) _%seed88741%_))
                 (_%size88746%_ (vector-length _%table88740%_))
                 (_%entries88749%_ (##fxquotient _%size88746%_ '2))
                 (_%start88752%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88743%_ _%entries88749%_)
                   '1)))
            (let _%loop88756%_ ((_%probe88759%_ _%start88752%_)
                                (_%i88761%_ '1)
                                (_%deleted88763%_ '#f))
              (let ((_%k88766%_ (vector-ref _%table88740%_ _%probe88759%_)))
                (if (eq? _%k88766%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted88763%_
                          (begin
                            (vector-set!
                             _%table88740%_
                             _%deleted88763%_
                             _%key88735%_)
                            (vector-set!
                             _%table88740%_
                             (##fx+ _%deleted88763%_ '1)
                             (_%immediate-table-update!88736%_
                              _%default88737%_))
                            ((lambda ()
                               (&raw-table-count-set!
                                _%tab88734%_
                                (##fx+ (&raw-table-count _%tab88734%_) '1)))))
                          (begin
                            (vector-set!
                             _%table88740%_
                             _%probe88759%_
                             _%key88735%_)
                            (vector-set!
                             _%table88740%_
                             (##fx+ _%probe88759%_ '1)
                             (_%immediate-table-update!88736%_
                              _%default88737%_))
                            ((lambda ()
                               (&raw-table-free-set!
                                _%tab88734%_
                                (##fx- (&raw-table-free _%tab88734%_) '1))
                               (&raw-table-count-set!
                                _%tab88734%_
                                (##fx+ (&raw-table-count _%tab88734%_)
                                       '1)))))))
                    (if (eq? _%k88766%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88756%_
                           (let ((_%next-probe88773%_
                                  (fx+ _%start88752%_
                                       _%i88761%_
                                       (fx* _%i88761%_ _%i88761%_))))
                             (##fxmodulo _%next-probe88773%_ _%size88746%_))
                           (##fx+ _%i88761%_ '1)
                           (let ((_%$e88776%_ _%deleted88763%_))
                             (if _%$e88776%_ _%$e88776%_ _%probe88759%_))))
                        (if (eq? _%key88735%_ _%k88766%_)
                            (let ()
                              (vector-set!
                               _%table88740%_
                               _%probe88759%_
                               _%key88735%_)
                              (vector-set!
                               _%table88740%_
                               (##fx+ _%probe88759%_ '1)
                               (_%immediate-table-update!88736%_
                                (vector-ref
                                 _%table88740%_
                                 (##fx+ _%probe88759%_ '1)))))
                            (let ()
                              (_%loop88756%_
                               (let ((_%next-probe88781%_
                                      (fx+ _%start88752%_
                                           _%i88761%_
                                           (fx* _%i88761%_ _%i88761%_))))
                                 (##fxmodulo
                                  _%next-probe88781%_
                                  _%size88746%_))
                               (##fx+ _%i88761%_ '1)
                               _%deleted88763%_)))))))))))
    (define immediate-table-delete!
      (lambda (_%tab88689%_ _%key88691%_)
        (let ((_%table88694%_ (&raw-table-table _%tab88689%_))
              (_%seed88696%_ (&raw-table-seed _%tab88689%_)))
          (let* ((_%h88699%_
                  (fxxor (immediate-hash _%key88691%_) _%seed88696%_))
                 (_%size88702%_ (vector-length _%table88694%_))
                 (_%entries88705%_ (##fxquotient _%size88702%_ '2))
                 (_%start88708%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88699%_ _%entries88705%_)
                   '1)))
            (let _%loop88712%_ ((_%probe88715%_ _%start88708%_)
                                (_%i88717%_ '1))
              (let ((_%k88720%_ (vector-ref _%table88694%_ _%probe88715%_)))
                (if (eq? _%k88720%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k88720%_ (macro-deleted-obj))
                        (let ()
                          (_%loop88712%_
                           (let ((_%next-probe88725%_
                                  (fx+ _%start88708%_
                                       _%i88717%_
                                       (fx* _%i88717%_ _%i88717%_))))
                             (##fxmodulo _%next-probe88725%_ _%size88702%_))
                           (##fx+ _%i88717%_ '1)))
                        (if (eq? _%key88691%_ _%k88720%_)
                            (let ()
                              (vector-set!
                               _%table88694%_
                               _%probe88715%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88694%_
                               (##fx+ _%probe88715%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88689%_
                                  (##fx- (&raw-table-count _%tab88689%_)
                                         '1)))))
                            (let ()
                              (_%loop88712%_
                               (let ((_%next-probe88731%_
                                      (fx+ _%start88708%_
                                           _%i88717%_
                                           (fx* _%i88717%_ _%i88717%_))))
                                 (##fxmodulo
                                  _%next-probe88731%_
                                  _%size88702%_))
                               (##fx+ _%i88717%_ '1))))))))))))
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
      (lambda (_%tab88687%_)
        (##unchecked-structure-ref
         _%tab88687%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab88685%_)
        (##unchecked-structure-ref
         _%tab88685%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab88682%_ _%val88683%_)
        (##unchecked-structure-set!
         _%tab88682%_
         _%val88683%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab88679%_ _%val88680%_)
        (##unchecked-structure-set!
         _%tab88679%_
         _%val88680%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint88655%_ _%klass88656%_ _%flags88657%_)
        (let ((_%gcht88659%_
               (__gc-table-new
                (if (fixnum? _%size-hint88655%_) _%size-hint88655%_ '16)
                _%flags88657%_)))
          (##structure _%klass88656%_ _%gcht88659%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint88664%_)
        (let* ((_%klass88666%_ __gc-table::t) (_%flags88668%_ '0))
          (make-gc-table__%
           _%size-hint88664%_
           _%klass88666%_
           _%flags88668%_))))
    (define make-gc-table__1
      (lambda (_%size-hint88670%_ _%klass88671%_)
        (let ((_%flags88673%_ '0))
          (make-gc-table__%
           _%size-hint88670%_
           _%klass88671%_
           _%flags88673%_))))
    (define make-gc-table
      (lambda _g90131_
        (let ((_g90130_ (##length _g90131_)))
          (cond ((##fx= _g90130_ 1)
                 (apply (lambda (_%size-hint88664%_)
                          (make-gc-table__0 _%size-hint88664%_))
                        _g90131_))
                ((##fx= _g90130_ 2)
                 (apply (lambda (_%size-hint88670%_ _%klass88671%_)
                          (make-gc-table__1 _%size-hint88670%_ _%klass88671%_))
                        _g90131_))
                ((##fx= _g90130_ 3)
                 (apply (lambda (_%size-hint88675%_
                                 _%klass88676%_
                                 _%flags88677%_)
                          (make-gc-table__%
                           _%size-hint88675%_
                           _%klass88676%_
                           _%flags88677%_))
                        _g90131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90131_))))))
    (define __gc-table-immediate
      (lambda (_%tab88646%_)
        (let ((_%$e88648%_ (&gc-table-immediate _%tab88646%_)))
          (if _%$e88648%_
              _%$e88648%_
              (let ()
                (let ((_%immediate88652%_ (make-immediate-table__% '#f '0)))
                  (&gc-table-immediate-set! _%tab88646%_ _%immediate88652%_)
                  _%immediate88652%_))))))
    (define __gc-table-new
      (lambda (_%size88636%_ _%flags88637%_)
        (let* ((_%flags88639%_
                (##fxand _%flags88637%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags88641%_
                (fxior _%flags88639%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht88643%_
                (##gc-hash-table-allocate
                 _%size88636%_
                 _%flags88641%_
                 __gc-table-loads)))
          _%gcht88643%_)))
    (define __gc-table-e
      (lambda (_%tab88631%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht88634%_ (&gc-table-gcht _%tab88631%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht88634%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht88634%_
              (begin
                (__gc-table-rehash! _%tab88631%_)
                (&gc-table-gcht _%tab88631%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab88622%_)
        (let* ((_%old-table88624%_ (&gc-table-gcht _%tab88622%_))
               (_%new-table88626%_
                (##gc-hash-table-resize! _%old-table88624%_ __gc-table-loads))
               (_%gcht88628%_
                (##gc-hash-table-rehash!
                 _%old-table88624%_
                 _%new-table88626%_)))
          (&gc-table-gcht-set! _%tab88622%_ _%gcht88628%_))))
    (define gc-table-ref
      (lambda (_%tab88606%_ _%key88607%_ _%default88608%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88607%_)
            (let ()
              (let* ((_%gcht88612%_ (__gc-table-e _%tab88606%_))
                     (_%value88614%_
                      (##gc-hash-table-ref _%gcht88612%_ _%key88607%_)))
                (if (eq? _%value88614%_ (macro-unused-obj))
                    _%default88608%_
                    _%value88614%_)))
            (let ((_%$e88616%_ (&gc-table-immediate _%tab88606%_)))
              (if _%$e88616%_
                  ((lambda (_%immediate88619%_)
                     (immediate-table-ref
                      _%immediate88619%_
                      _%key88607%_
                      _%default88608%_))
                   _%$e88616%_)
                  (let () _%default88608%_))))))
    (define gc-table-set!
      (lambda (_%tab88599%_ _%key88600%_ _%value88601%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88600%_)
            (let ((_%gcht88604%_ (__gc-table-e _%tab88599%_)))
              (if (##gc-hash-table-set!
                   _%gcht88604%_
                   _%key88600%_
                   _%value88601%_)
                  (begin
                    (__gc-table-rehash! _%tab88599%_)
                    (gc-table-set! _%tab88599%_ _%key88600%_ _%value88601%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab88599%_)
             _%key88600%_
             _%value88601%_))))
    (define gc-table-update!
      (lambda (_%tab88592%_ _%key88593%_ _%update88594%_ _%default88595%_)
        (if (##mem-allocated? _%key88593%_)
            (let ((_%value88597%_
                   (gc-table-ref _%tab88592%_ _%key88593%_ _%default88595%_)))
              (gc-table-set!
               _%tab88592%_
               _%key88593%_
               (_%update88594%_ _%value88597%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab88592%_)
             _%key88593%_
             _%update88594%_
             _%default88595%_))))
    (define gc-table-delete!
      (lambda (_%tab88580%_ _%key88581%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88581%_)
            (let ()
              (let ((_%gcht88585%_ (__gc-table-e _%tab88580%_)))
                (if (##gc-hash-table-set!
                     _%gcht88585%_
                     _%key88581%_
                     (macro-absent-obj))
                    (begin
                      (__gc-table-rehash! _%tab88580%_)
                      (gc-table-delete! _%tab88580%_ _%key88581%_))
                    '#!void)))
            (let ((_%$e88587%_ (&gc-table-immediate _%tab88580%_)))
              (if _%$e88587%_
                  ((lambda (_%immediate88590%_)
                     (immediate-table-delete! _%immediate88590%_ _%key88581%_))
                   _%$e88587%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab88561%_ _%proc88562%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht88565%_ (__gc-table-e _%tab88561%_)))
            (let _%loop88567%_ ((_%i88569%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i88569%_ (##vector-length _%gcht88565%_))
                  (let ((_%key88571%_ (##vector-ref _%gcht88565%_ _%i88569%_)))
                    (if (and (not (eq? _%key88571%_ (macro-unused-obj)))
                             (not (eq? _%key88571%_ (macro-deleted-obj))))
                        (_%proc88562%_
                         _%key88571%_
                         (##vector-ref _%gcht88565%_ (##fx+ _%i88569%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop88567%_ (##fx+ _%i88569%_ '2))))
                  '#!void)))
          (let ((_%$e88575%_ (&gc-table-immediate _%tab88561%_)))
            (if _%$e88575%_
                ((lambda (_%immediate88578%_)
                   (raw-table-for-each _%immediate88578%_ _%proc88562%_))
                 _%$e88575%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab88549%_)
        (let* ((_%gcht88551%_ (__gc-table-e _%tab88549%_))
               (_%new-table88553%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht88551%_)
                 (macro-gc-hash-table-flags _%gcht88551%_)))
               (_%result88555%_
                (##structure
                 (##structure-type _%tab88549%_)
                 _%new-table88553%_
                 '#f)))
          (gc-table-for-each
           _%tab88549%_
           (lambda (_%k88558%_ _%v88559%_)
             (gc-table-set! _%result88555%_ _%k88558%_ _%v88559%_)))
          _%result88555%_)))
    (define gc-table-clear!
      (lambda (_%tab88542%_)
        (let* ((_%gcht88544%_ (__gc-table-e _%tab88542%_))
               (_%new-table88546%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht88544%_))))
          (&gc-table-gcht-set! _%tab88542%_ _%new-table88546%_)
          (&gc-table-immediate-set! _%tab88542%_ '#f))))
    (define gc-table-length
      (lambda (_%tab88534%_)
        (let ((_%gcht88536%_ (__gc-table-e _%tab88534%_)))
          (fx+ (macro-gc-hash-table-count _%gcht88536%_)
               (let ((_%$e88538%_ (&gc-table-immediate _%tab88534%_)))
                 (if _%$e88538%_
                     (&raw-table-count _%$e88538%_)
                     (let () '0)))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj88519%_)
        (declare (not interrupts-enabled))
        (let ((_%val88522%_ (gc-table-ref __object-eq-hash _%obj88519%_ '#f)))
          (if _%val88522%_
              _%val88522%_
              (let* ((_%mix88524%_ __object-eq-hash-next)
                     (_%ptr88526%_ (##type-cast _%obj88519%_ '0))
                     (_%h88528%_
                      (fxand (fxxor _%mix88524%_ _%ptr88526%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e88531%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e88531%_ _%$e88531%_ '0)))
                (gc-table-set! __object-eq-hash _%obj88519%_ _%h88528%_)
                _%h88528%_)))))))
