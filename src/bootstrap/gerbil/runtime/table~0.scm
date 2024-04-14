(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1713453198)
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
      (lambda (_%tab92749%_)
        (##unchecked-structure-ref
         _%tab92749%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab92747%_)
        (##unchecked-structure-ref
         _%tab92747%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab92745%_)
        (##unchecked-structure-ref
         _%tab92745%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab92743%_)
        (##unchecked-structure-ref
         _%tab92743%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab92741%_)
        (##unchecked-structure-ref
         _%tab92741%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab92739%_)
        (##unchecked-structure-ref
         _%tab92739%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab92736%_ _%val92737%_)
        (##unchecked-structure-set!
         _%tab92736%_
         _%val92737%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab92733%_ _%val92734%_)
        (##unchecked-structure-set!
         _%tab92733%_
         _%val92734%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab92730%_ _%val92731%_)
        (##unchecked-structure-set!
         _%tab92730%_
         _%val92731%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab92727%_ _%val92728%_)
        (##unchecked-structure-set!
         _%tab92727%_
         _%val92728%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab92724%_ _%val92725%_)
        (##unchecked-structure-set!
         _%tab92724%_
         _%val92725%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab92721%_ _%val92722%_)
        (##unchecked-structure-set!
         _%tab92721%_
         _%val92722%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint92719%_)
        (if (and (fixnum? _%size-hint92719%_) (##fx> _%size-hint92719%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint92719%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint92695%_ _%hash92696%_ _%test92697%_ _%seed92698%_)
        (let* ((_%size92700%_ (raw-table-size-hint->size _%size-hint92695%_))
               (_%table92702%_
                (##make-vector _%size92700%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table92702%_
           '0
           (##fxquotient _%size92700%_ '2)
           _%hash92696%_
           _%test92697%_
           _%seed92698%_))))
    (define make-raw-table__0
      (lambda (_%size-hint92708%_ _%hash92709%_ _%test92710%_)
        (let ((_%seed92712%_ '0))
          (make-raw-table__%
           _%size-hint92708%_
           _%hash92709%_
           _%test92710%_
           _%seed92712%_))))
    (define make-raw-table
      (lambda _g92751_
        (let ((_g92750_ (##length _g92751_)))
          (cond ((##fx= _g92750_ 3) (apply make-raw-table__0 _g92751_))
                ((##fx= _g92750_ 4) (apply make-raw-table__% _g92751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g92751_))))))
    (define raw-table-ref
      (lambda (_%tab92646%_ _%key92647%_ _%default92648%_)
        (let ((_%table92650%_ (&raw-table-table _%tab92646%_))
              (_%seed92651%_ (&raw-table-seed _%tab92646%_))
              (_%hash92652%_ (&raw-table-hash _%tab92646%_))
              (_%test92653%_ (&raw-table-test _%tab92646%_)))
          (let* ((_%h92655%_
                  (fxxor (_%hash92652%_ _%key92647%_) _%seed92651%_))
                 (_%size92658%_ (vector-length _%table92650%_))
                 (_%entries92661%_ (##fxquotient _%size92658%_ '2))
                 (_%start92664%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92655%_ _%entries92661%_)
                   '1)))
            (let _%loop92668%_ ((_%probe92671%_ _%start92664%_)
                                (_%i92673%_ '1)
                                (_%deleted92675%_ '#f))
              (let ((_%k92678%_ (vector-ref _%table92650%_ _%probe92671%_)))
                (if (eq? _%k92678%_ (macro-unused-obj))
                    _%default92648%_
                    (if (eq? _%k92678%_ (macro-deleted-obj))
                        (_%loop92668%_
                         (let ((_%next-probe92683%_
                                (fx+ _%start92664%_
                                     _%i92673%_
                                     (fx* _%i92673%_ _%i92673%_))))
                           (##fxmodulo _%next-probe92683%_ _%size92658%_))
                         (##fx+ _%i92673%_ '1)
                         (let ((_%$e92686%_ _%deleted92675%_))
                           (if _%$e92686%_ _%$e92686%_ _%probe92671%_)))
                        (if (_%test92653%_ _%key92647%_ _%k92678%_)
                            (vector-ref
                             _%table92650%_
                             (##fx+ _%probe92671%_ '1))
                            (_%loop92668%_
                             (let ((_%next-probe92691%_
                                    (fx+ _%start92664%_
                                         _%i92673%_
                                         (fx* _%i92673%_ _%i92673%_))))
                               (##fxmodulo _%next-probe92691%_ _%size92658%_))
                             (##fx+ _%i92673%_ '1)
                             _%deleted92675%_))))))))))
    (define raw-table-set!
      (lambda (_%tab92642%_ _%key92643%_ _%value92644%_)
        (if (##fx< (&raw-table-free _%tab92642%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92642%_))
                    '4))
            (__raw-table-rehash! _%tab92642%_)
            '#!void)
        (__raw-table-set! _%tab92642%_ _%key92643%_ _%value92644%_)))
    (define raw-table-update!
      (lambda (_%tab92637%_ _%key92638%_ _%update92639%_ _%default92640%_)
        (if (##fx< (&raw-table-free _%tab92637%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92637%_))
                    '4))
            (__raw-table-rehash! _%tab92637%_)
            '#!void)
        (__raw-table-update!
         _%tab92637%_
         _%key92638%_
         _%update92639%_
         _%default92640%_)))
    (define raw-table-delete!
      (lambda (_%tab92594%_ _%key92595%_)
        (let ((_%table92597%_ (&raw-table-table _%tab92594%_))
              (_%seed92598%_ (&raw-table-seed _%tab92594%_))
              (_%hash92599%_ (&raw-table-hash _%tab92594%_))
              (_%test92600%_ (&raw-table-test _%tab92594%_)))
          (let* ((_%h92602%_
                  (fxxor (_%hash92599%_ _%key92595%_) _%seed92598%_))
                 (_%size92605%_ (vector-length _%table92597%_))
                 (_%entries92608%_ (##fxquotient _%size92605%_ '2))
                 (_%start92611%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92602%_ _%entries92608%_)
                   '1)))
            (let _%loop92615%_ ((_%probe92618%_ _%start92611%_)
                                (_%i92620%_ '1))
              (let ((_%k92623%_ (vector-ref _%table92597%_ _%probe92618%_)))
                (if (eq? _%k92623%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92623%_ (macro-deleted-obj))
                        (_%loop92615%_
                         (let ((_%next-probe92628%_
                                (fx+ _%start92611%_
                                     _%i92620%_
                                     (fx* _%i92620%_ _%i92620%_))))
                           (##fxmodulo _%next-probe92628%_ _%size92605%_))
                         (##fx+ _%i92620%_ '1))
                        (if (_%test92600%_ _%key92595%_ _%k92623%_)
                            (let ()
                              (vector-set!
                               _%table92597%_
                               _%probe92618%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92597%_
                               (##fx+ _%probe92618%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92594%_
                                  (##fx- (&raw-table-count _%tab92594%_)
                                         '1)))))
                            (_%loop92615%_
                             (let ((_%next-probe92634%_
                                    (fx+ _%start92611%_
                                         _%i92620%_
                                         (fx* _%i92620%_ _%i92620%_))))
                               (##fxmodulo _%next-probe92634%_ _%size92605%_))
                             (##fx+ _%i92620%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab92578%_ _%proc92579%_)
        (let* ((_%table92581%_ (&raw-table-table _%tab92578%_))
               (_%size92583%_ (vector-length _%table92581%_)))
          (let _%loop92586%_ ((_%i92588%_ '0))
            (if (##fx< _%i92588%_ _%size92583%_)
                (begin
                  (let ((_%key92590%_ (vector-ref _%table92581%_ _%i92588%_)))
                    (if (if (eq? _%key92590%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92590%_ (macro-deleted-obj))))
                        (let ((_%value92592%_
                               (vector-ref
                                _%table92581%_
                                (##fx+ _%i92588%_ '1))))
                          (_%proc92579%_ _%key92590%_ _%value92592%_))
                        '#!void))
                  (_%loop92586%_ (##fx+ _%i92588%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab92574%_)
        (let ((_%new-tab92576%_ (##structure-copy _%tab92574%_)))
          (&raw-table-table-set!
           _%new-tab92576%_
           (vector-copy (&raw-table-table _%tab92574%_)))
          _%new-tab92576%_)))
    (define raw-table-clear!
      (lambda (_%tab92572%_)
        (vector-fill! (&raw-table-table _%tab92572%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab92572%_ '0)
        (&raw-table-free-set!
         _%tab92572%_
         (##fxquotient (vector-length (&raw-table-table _%tab92572%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab92522%_ _%key92523%_ _%value92524%_)
        (let ((_%table92526%_ (&raw-table-table _%tab92522%_))
              (_%seed92527%_ (&raw-table-seed _%tab92522%_))
              (_%hash92528%_ (&raw-table-hash _%tab92522%_))
              (_%test92529%_ (&raw-table-test _%tab92522%_)))
          (let* ((_%h92531%_
                  (fxxor (_%hash92528%_ _%key92523%_) _%seed92527%_))
                 (_%size92534%_ (vector-length _%table92526%_))
                 (_%entries92537%_ (##fxquotient _%size92534%_ '2))
                 (_%start92540%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92531%_ _%entries92537%_)
                   '1)))
            (let _%loop92544%_ ((_%probe92547%_ _%start92540%_)
                                (_%i92549%_ '1)
                                (_%deleted92551%_ '#f))
              (let ((_%k92554%_ (vector-ref _%table92526%_ _%probe92547%_)))
                (if (eq? _%k92554%_ (macro-unused-obj))
                    (if _%deleted92551%_
                        (begin
                          (vector-set!
                           _%table92526%_
                           _%deleted92551%_
                           _%key92523%_)
                          (vector-set!
                           _%table92526%_
                           (##fx+ _%deleted92551%_ '1)
                           _%value92524%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92522%_
                              (##fx+ (&raw-table-count _%tab92522%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92526%_
                           _%probe92547%_
                           _%key92523%_)
                          (vector-set!
                           _%table92526%_
                           (##fx+ _%probe92547%_ '1)
                           _%value92524%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92522%_
                              (##fx- (&raw-table-free _%tab92522%_) '1))
                             (&raw-table-count-set!
                              _%tab92522%_
                              (##fx+ (&raw-table-count _%tab92522%_) '1))))))
                    (if (eq? _%k92554%_ (macro-deleted-obj))
                        (_%loop92544%_
                         (let ((_%next-probe92561%_
                                (fx+ _%start92540%_
                                     _%i92549%_
                                     (fx* _%i92549%_ _%i92549%_))))
                           (##fxmodulo _%next-probe92561%_ _%size92534%_))
                         (##fx+ _%i92549%_ '1)
                         (let ((_%$e92564%_ _%deleted92551%_))
                           (if _%$e92564%_ _%$e92564%_ _%probe92547%_)))
                        (if (_%test92529%_ _%key92523%_ _%k92554%_)
                            (let ()
                              (vector-set!
                               _%table92526%_
                               _%probe92547%_
                               _%key92523%_)
                              (vector-set!
                               _%table92526%_
                               (##fx+ _%probe92547%_ '1)
                               _%value92524%_))
                            (_%loop92544%_
                             (let ((_%next-probe92569%_
                                    (fx+ _%start92540%_
                                         _%i92549%_
                                         (fx* _%i92549%_ _%i92549%_))))
                               (##fxmodulo _%next-probe92569%_ _%size92534%_))
                             (##fx+ _%i92549%_ '1)
                             _%deleted92551%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab92471%_ _%key92472%_ _%update92473%_ _%default92474%_)
        (let ((_%table92476%_ (&raw-table-table _%tab92471%_))
              (_%seed92477%_ (&raw-table-seed _%tab92471%_))
              (_%hash92478%_ (&raw-table-hash _%tab92471%_))
              (_%test92479%_ (&raw-table-test _%tab92471%_)))
          (let* ((_%h92481%_
                  (fxxor (_%hash92478%_ _%key92472%_) _%seed92477%_))
                 (_%size92484%_ (vector-length _%table92476%_))
                 (_%entries92487%_ (##fxquotient _%size92484%_ '2))
                 (_%start92490%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92481%_ _%entries92487%_)
                   '1)))
            (let _%loop92494%_ ((_%probe92497%_ _%start92490%_)
                                (_%i92499%_ '1)
                                (_%deleted92501%_ '#f))
              (let ((_%k92504%_ (vector-ref _%table92476%_ _%probe92497%_)))
                (if (eq? _%k92504%_ (macro-unused-obj))
                    (if _%deleted92501%_
                        (begin
                          (vector-set!
                           _%table92476%_
                           _%deleted92501%_
                           _%key92472%_)
                          (vector-set!
                           _%table92476%_
                           (##fx+ _%deleted92501%_ '1)
                           (_%update92473%_ _%default92474%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92471%_
                              (##fx+ (&raw-table-count _%tab92471%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92476%_
                           _%probe92497%_
                           _%key92472%_)
                          (vector-set!
                           _%table92476%_
                           (##fx+ _%probe92497%_ '1)
                           (_%update92473%_ _%default92474%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92471%_
                              (##fx- (&raw-table-free _%tab92471%_) '1))
                             (&raw-table-count-set!
                              _%tab92471%_
                              (##fx+ (&raw-table-count _%tab92471%_) '1))))))
                    (if (eq? _%k92504%_ (macro-deleted-obj))
                        (_%loop92494%_
                         (let ((_%next-probe92511%_
                                (fx+ _%start92490%_
                                     _%i92499%_
                                     (fx* _%i92499%_ _%i92499%_))))
                           (##fxmodulo _%next-probe92511%_ _%size92484%_))
                         (##fx+ _%i92499%_ '1)
                         (let ((_%$e92514%_ _%deleted92501%_))
                           (if _%$e92514%_ _%$e92514%_ _%probe92497%_)))
                        (if (_%test92479%_ _%key92472%_ _%k92504%_)
                            (let ()
                              (vector-set!
                               _%table92476%_
                               _%probe92497%_
                               _%key92472%_)
                              (vector-set!
                               _%table92476%_
                               (##fx+ _%probe92497%_ '1)
                               (_%update92473%_
                                (vector-ref
                                 _%table92476%_
                                 (##fx+ _%probe92497%_ '1)))))
                            (_%loop92494%_
                             (let ((_%next-probe92519%_
                                    (fx+ _%start92490%_
                                         _%i92499%_
                                         (fx* _%i92499%_ _%i92499%_))))
                               (##fxmodulo _%next-probe92519%_ _%size92484%_))
                             (##fx+ _%i92499%_ '1)
                             _%deleted92501%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab92452%_)
        (let* ((_%old-table92454%_ (&raw-table-table _%tab92452%_))
               (_%old-size92456%_ (vector-length _%old-table92454%_))
               (_%new-size92458%_
                (if (##fx< (&raw-table-count _%tab92452%_)
                           (##fxquotient _%old-size92456%_ '4))
                    (vector-length _%old-table92454%_)
                    (##fx* '2 (vector-length _%old-table92454%_))))
               (_%new-table92460%_
                (##make-vector _%new-size92458%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab92452%_ _%new-table92460%_)
          (&raw-table-count-set! _%tab92452%_ '0)
          (&raw-table-free-set!
           _%tab92452%_
           (##fxquotient _%new-size92458%_ '2))
          (let _%lp92463%_ ((_%i92465%_ '0))
            (if (##fx< _%i92465%_ _%old-size92456%_)
                (begin
                  (let ((_%key92467%_
                         (vector-ref _%old-table92454%_ _%i92465%_)))
                    (if (if (eq? _%key92467%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key92467%_ (macro-deleted-obj))))
                        (let ((_%value92469%_
                               (vector-ref
                                _%old-table92454%_
                                (##fx+ _%i92465%_ '1))))
                          (__raw-table-set!
                           _%tab92452%_
                           _%key92467%_
                           _%value92469%_))
                        '#!void))
                  (_%lp92463%_ (##fx+ _%i92465%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj92444%_)
        (let ((_%t92446%_ (##type _%obj92444%_)))
          (if (##fx= (##fxand _%t92446%_ '1) '0)
              (fxand (##type-cast _%obj92444%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj92444%_)
                  (symbolic-hash _%obj92444%_)
                  (if (procedure? _%obj92444%_)
                      (procedure-hash _%obj92444%_)
                      (fxand (__eq-hash _%obj92444%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj92440%_)
        (let ((_%h92442%_
               (if (##closure? _%obj92440%_)
                   (__eq-hash _%obj92440%_)
                   (##type-cast _%obj92440%_ '0))))
          (fxand _%h92442%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj92437%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj92437%_)))
    (define eqv-hash
      (lambda (_%obj92427%_)
        (letrec ((_%combine92429%_
                  (lambda (_%a92434%_ _%b92435%_)
                    (fxand (##fx* (##fx+ _%a92434%_
                                         (fxarithmetic-shift-left
                                          _%b92435%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash92430%_
                  (lambda (_%obj92432%_)
                    (macro-number-dispatch
                     _%obj92432%_
                     (eq-hash _%obj92432%_)
                     (fxand _%obj92432%_ (macro-max-fixnum32))
                     (modulo _%obj92432%_ '331804481)
                     (_%combine92429%_
                      (_%hash92430%_ (macro-ratnum-numerator _%obj92432%_))
                      (_%hash92430%_ (macro-ratnum-denominator _%obj92432%_)))
                     (_%combine92429%_
                      (##u16vector-ref _%obj92432%_ '0)
                      (_%combine92429%_
                       (##u16vector-ref _%obj92432%_ '1)
                       (_%combine92429%_
                        (##u16vector-ref _%obj92432%_ '2)
                        (##u16vector-ref _%obj92432%_ '3))))
                     (_%combine92429%_
                      (_%hash92430%_ (macro-cpxnum-real _%obj92432%_))
                      (_%hash92430%_ (macro-cpxnum-imag _%obj92432%_)))))))
          (_%hash92430%_ _%obj92427%_))))
    (define symbolic?
      (lambda (_%obj92422%_)
        (let ((_%$e92424%_ (symbol? _%obj92422%_)))
          (if _%$e92424%_ _%$e92424%_ (keyword? _%obj92422%_)))))
    (define symbolic-hash (lambda (_%obj92420%_) (macro-slot '1 _%obj92420%_)))
    (define string-hash (lambda (_%obj92418%_) (##string=?-hash _%obj92418%_)))
    (define immediate-hash
      (lambda (_%obj92416%_) (##type-cast _%obj92416%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint92397%_ _%seed92399%_)
        (make-raw-table__% _%size-hint92397%_ eq-hash eq? _%seed92399%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint92405%_ '#f) (_%seed92407%_ '0))
          (make-eq-table__% _%size-hint92405%_ _%seed92407%_))))
    (define make-eq-table__1
      (lambda (_%size-hint92409%_)
        (let ((_%seed92411%_ '0))
          (make-eq-table__% _%size-hint92409%_ _%seed92411%_))))
    (define make-eq-table
      (lambda _g92753_
        (let ((_g92752_ (##length _g92753_)))
          (cond ((##fx= _g92752_ 0) (apply make-eq-table__0 _g92753_))
                ((##fx= _g92752_ 1) (apply make-eq-table__1 _g92753_))
                ((##fx= _g92752_ 2) (apply make-eq-table__% _g92753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g92753_))))))
    (define eq-table-ref
      (lambda (_%tab92350%_ _%key92351%_ _%default92352%_)
        (let ((_%table92354%_ (&raw-table-table _%tab92350%_))
              (_%seed92355%_ (&raw-table-seed _%tab92350%_)))
          (let* ((_%h92357%_ (fxxor (eq-hash _%key92351%_) _%seed92355%_))
                 (_%size92360%_ (vector-length _%table92354%_))
                 (_%entries92363%_ (##fxquotient _%size92360%_ '2))
                 (_%start92366%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92357%_ _%entries92363%_)
                   '1)))
            (let _%loop92370%_ ((_%probe92373%_ _%start92366%_)
                                (_%i92375%_ '1)
                                (_%deleted92377%_ '#f))
              (let ((_%k92380%_ (vector-ref _%table92354%_ _%probe92373%_)))
                (if (eq? _%k92380%_ (macro-unused-obj))
                    _%default92352%_
                    (if (eq? _%k92380%_ (macro-deleted-obj))
                        (_%loop92370%_
                         (let ((_%next-probe92385%_
                                (fx+ _%start92366%_
                                     _%i92375%_
                                     (fx* _%i92375%_ _%i92375%_))))
                           (##fxmodulo _%next-probe92385%_ _%size92360%_))
                         (##fx+ _%i92375%_ '1)
                         (let ((_%$e92388%_ _%deleted92377%_))
                           (if _%$e92388%_ _%$e92388%_ _%probe92373%_)))
                        (if (eq? _%key92351%_ _%k92380%_)
                            (vector-ref
                             _%table92354%_
                             (##fx+ _%probe92373%_ '1))
                            (_%loop92370%_
                             (let ((_%next-probe92393%_
                                    (fx+ _%start92366%_
                                         _%i92375%_
                                         (fx* _%i92375%_ _%i92375%_))))
                               (##fxmodulo _%next-probe92393%_ _%size92360%_))
                             (##fx+ _%i92375%_ '1)
                             _%deleted92377%_))))))))))
    (define eq-table-set!
      (lambda (_%tab92346%_ _%key92347%_ _%value92348%_)
        (if (##fx< (&raw-table-free _%tab92346%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92346%_))
                    '4))
            (__raw-table-rehash! _%tab92346%_)
            '#!void)
        (__eq-table-set! _%tab92346%_ _%key92347%_ _%value92348%_)))
    (define __eq-table-set!
      (lambda (_%tab92297%_ _%key92298%_ _%value92299%_)
        (let ((_%table92302%_ (&raw-table-table _%tab92297%_))
              (_%seed92303%_ (&raw-table-seed _%tab92297%_)))
          (let* ((_%h92305%_ (fxxor (eq-hash _%key92298%_) _%seed92303%_))
                 (_%size92308%_ (vector-length _%table92302%_))
                 (_%entries92311%_ (##fxquotient _%size92308%_ '2))
                 (_%start92314%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92305%_ _%entries92311%_)
                   '1)))
            (let _%loop92318%_ ((_%probe92321%_ _%start92314%_)
                                (_%i92323%_ '1)
                                (_%deleted92325%_ '#f))
              (let ((_%k92328%_ (vector-ref _%table92302%_ _%probe92321%_)))
                (if (eq? _%k92328%_ (macro-unused-obj))
                    (if _%deleted92325%_
                        (begin
                          (vector-set!
                           _%table92302%_
                           _%deleted92325%_
                           _%key92298%_)
                          (vector-set!
                           _%table92302%_
                           (##fx+ _%deleted92325%_ '1)
                           _%value92299%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92297%_
                              (##fx+ (&raw-table-count _%tab92297%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92302%_
                           _%probe92321%_
                           _%key92298%_)
                          (vector-set!
                           _%table92302%_
                           (##fx+ _%probe92321%_ '1)
                           _%value92299%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92297%_
                              (##fx- (&raw-table-free _%tab92297%_) '1))
                             (&raw-table-count-set!
                              _%tab92297%_
                              (##fx+ (&raw-table-count _%tab92297%_) '1))))))
                    (if (eq? _%k92328%_ (macro-deleted-obj))
                        (_%loop92318%_
                         (let ((_%next-probe92335%_
                                (fx+ _%start92314%_
                                     _%i92323%_
                                     (fx* _%i92323%_ _%i92323%_))))
                           (##fxmodulo _%next-probe92335%_ _%size92308%_))
                         (##fx+ _%i92323%_ '1)
                         (let ((_%$e92338%_ _%deleted92325%_))
                           (if _%$e92338%_ _%$e92338%_ _%probe92321%_)))
                        (if (eq? _%key92298%_ _%k92328%_)
                            (let ()
                              (vector-set!
                               _%table92302%_
                               _%probe92321%_
                               _%key92298%_)
                              (vector-set!
                               _%table92302%_
                               (##fx+ _%probe92321%_ '1)
                               _%value92299%_))
                            (_%loop92318%_
                             (let ((_%next-probe92343%_
                                    (fx+ _%start92314%_
                                         _%i92323%_
                                         (fx* _%i92323%_ _%i92323%_))))
                               (##fxmodulo _%next-probe92343%_ _%size92308%_))
                             (##fx+ _%i92323%_ '1)
                             _%deleted92325%_))))))))))
    (define eq-table-update!
      (lambda (_%tab92292%_
               _%key92293%_
               _%eq-table-update!92294%_
               _%default92295%_)
        (if (##fx< (&raw-table-free _%tab92292%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92292%_))
                    '4))
            (__raw-table-rehash! _%tab92292%_)
            '#!void)
        (__eq-table-update!
         _%tab92292%_
         _%key92293%_
         _%eq-table-update!92294%_
         _%default92295%_)))
    (define __eq-table-update!
      (lambda (_%tab92242%_
               _%key92243%_
               _%eq-table-update!92244%_
               _%default92245%_)
        (let ((_%table92248%_ (&raw-table-table _%tab92242%_))
              (_%seed92249%_ (&raw-table-seed _%tab92242%_)))
          (let* ((_%h92251%_ (fxxor (eq-hash _%key92243%_) _%seed92249%_))
                 (_%size92254%_ (vector-length _%table92248%_))
                 (_%entries92257%_ (##fxquotient _%size92254%_ '2))
                 (_%start92260%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92251%_ _%entries92257%_)
                   '1)))
            (let _%loop92264%_ ((_%probe92267%_ _%start92260%_)
                                (_%i92269%_ '1)
                                (_%deleted92271%_ '#f))
              (let ((_%k92274%_ (vector-ref _%table92248%_ _%probe92267%_)))
                (if (eq? _%k92274%_ (macro-unused-obj))
                    (if _%deleted92271%_
                        (begin
                          (vector-set!
                           _%table92248%_
                           _%deleted92271%_
                           _%key92243%_)
                          (vector-set!
                           _%table92248%_
                           (##fx+ _%deleted92271%_ '1)
                           (_%eq-table-update!92244%_ _%default92245%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92242%_
                              (##fx+ (&raw-table-count _%tab92242%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92248%_
                           _%probe92267%_
                           _%key92243%_)
                          (vector-set!
                           _%table92248%_
                           (##fx+ _%probe92267%_ '1)
                           (_%eq-table-update!92244%_ _%default92245%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92242%_
                              (##fx- (&raw-table-free _%tab92242%_) '1))
                             (&raw-table-count-set!
                              _%tab92242%_
                              (##fx+ (&raw-table-count _%tab92242%_) '1))))))
                    (if (eq? _%k92274%_ (macro-deleted-obj))
                        (_%loop92264%_
                         (let ((_%next-probe92281%_
                                (fx+ _%start92260%_
                                     _%i92269%_
                                     (fx* _%i92269%_ _%i92269%_))))
                           (##fxmodulo _%next-probe92281%_ _%size92254%_))
                         (##fx+ _%i92269%_ '1)
                         (let ((_%$e92284%_ _%deleted92271%_))
                           (if _%$e92284%_ _%$e92284%_ _%probe92267%_)))
                        (if (eq? _%key92243%_ _%k92274%_)
                            (let ()
                              (vector-set!
                               _%table92248%_
                               _%probe92267%_
                               _%key92243%_)
                              (vector-set!
                               _%table92248%_
                               (##fx+ _%probe92267%_ '1)
                               (_%eq-table-update!92244%_
                                (vector-ref
                                 _%table92248%_
                                 (##fx+ _%probe92267%_ '1)))))
                            (_%loop92264%_
                             (let ((_%next-probe92289%_
                                    (fx+ _%start92260%_
                                         _%i92269%_
                                         (fx* _%i92269%_ _%i92269%_))))
                               (##fxmodulo _%next-probe92289%_ _%size92254%_))
                             (##fx+ _%i92269%_ '1)
                             _%deleted92271%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab92197%_ _%key92199%_)
        (let ((_%table92202%_ (&raw-table-table _%tab92197%_))
              (_%seed92204%_ (&raw-table-seed _%tab92197%_)))
          (let* ((_%h92207%_ (fxxor (eq-hash _%key92199%_) _%seed92204%_))
                 (_%size92210%_ (vector-length _%table92202%_))
                 (_%entries92213%_ (##fxquotient _%size92210%_ '2))
                 (_%start92216%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92207%_ _%entries92213%_)
                   '1)))
            (let _%loop92220%_ ((_%probe92223%_ _%start92216%_)
                                (_%i92225%_ '1))
              (let ((_%k92228%_ (vector-ref _%table92202%_ _%probe92223%_)))
                (if (eq? _%k92228%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92228%_ (macro-deleted-obj))
                        (_%loop92220%_
                         (let ((_%next-probe92233%_
                                (fx+ _%start92216%_
                                     _%i92225%_
                                     (fx* _%i92225%_ _%i92225%_))))
                           (##fxmodulo _%next-probe92233%_ _%size92210%_))
                         (##fx+ _%i92225%_ '1))
                        (if (eq? _%key92199%_ _%k92228%_)
                            (let ()
                              (vector-set!
                               _%table92202%_
                               _%probe92223%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92202%_
                               (##fx+ _%probe92223%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab92197%_
                                  (##fx- (&raw-table-count _%tab92197%_)
                                         '1)))))
                            (_%loop92220%_
                             (let ((_%next-probe92239%_
                                    (fx+ _%start92216%_
                                         _%i92225%_
                                         (fx* _%i92225%_ _%i92225%_))))
                               (##fxmodulo _%next-probe92239%_ _%size92210%_))
                             (##fx+ _%i92225%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint92178%_ _%seed92180%_)
        (make-raw-table__% _%size-hint92178%_ eqv-hash eqv? _%seed92180%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint92186%_ '#f) (_%seed92188%_ '0))
          (make-eqv-table__% _%size-hint92186%_ _%seed92188%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint92190%_)
        (let ((_%seed92192%_ '0))
          (make-eqv-table__% _%size-hint92190%_ _%seed92192%_))))
    (define make-eqv-table
      (lambda _g92755_
        (let ((_g92754_ (##length _g92755_)))
          (cond ((##fx= _g92754_ 0) (apply make-eqv-table__0 _g92755_))
                ((##fx= _g92754_ 1) (apply make-eqv-table__1 _g92755_))
                ((##fx= _g92754_ 2) (apply make-eqv-table__% _g92755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g92755_))))))
    (define eqv-table-ref
      (lambda (_%tab92131%_ _%key92132%_ _%default92133%_)
        (let ((_%table92135%_ (&raw-table-table _%tab92131%_))
              (_%seed92136%_ (&raw-table-seed _%tab92131%_)))
          (let* ((_%h92138%_ (fxxor (eqv-hash _%key92132%_) _%seed92136%_))
                 (_%size92141%_ (vector-length _%table92135%_))
                 (_%entries92144%_ (##fxquotient _%size92141%_ '2))
                 (_%start92147%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92138%_ _%entries92144%_)
                   '1)))
            (let _%loop92151%_ ((_%probe92154%_ _%start92147%_)
                                (_%i92156%_ '1)
                                (_%deleted92158%_ '#f))
              (let ((_%k92161%_ (vector-ref _%table92135%_ _%probe92154%_)))
                (if (eq? _%k92161%_ (macro-unused-obj))
                    _%default92133%_
                    (if (eq? _%k92161%_ (macro-deleted-obj))
                        (_%loop92151%_
                         (let ((_%next-probe92166%_
                                (fx+ _%start92147%_
                                     _%i92156%_
                                     (fx* _%i92156%_ _%i92156%_))))
                           (##fxmodulo _%next-probe92166%_ _%size92141%_))
                         (##fx+ _%i92156%_ '1)
                         (let ((_%$e92169%_ _%deleted92158%_))
                           (if _%$e92169%_ _%$e92169%_ _%probe92154%_)))
                        (if (eqv? _%key92132%_ _%k92161%_)
                            (vector-ref
                             _%table92135%_
                             (##fx+ _%probe92154%_ '1))
                            (_%loop92151%_
                             (let ((_%next-probe92174%_
                                    (fx+ _%start92147%_
                                         _%i92156%_
                                         (fx* _%i92156%_ _%i92156%_))))
                               (##fxmodulo _%next-probe92174%_ _%size92141%_))
                             (##fx+ _%i92156%_ '1)
                             _%deleted92158%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab92127%_ _%key92128%_ _%value92129%_)
        (if (##fx< (&raw-table-free _%tab92127%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92127%_))
                    '4))
            (__raw-table-rehash! _%tab92127%_)
            '#!void)
        (__eqv-table-set! _%tab92127%_ _%key92128%_ _%value92129%_)))
    (define __eqv-table-set!
      (lambda (_%tab92078%_ _%key92079%_ _%value92080%_)
        (let ((_%table92083%_ (&raw-table-table _%tab92078%_))
              (_%seed92084%_ (&raw-table-seed _%tab92078%_)))
          (let* ((_%h92086%_ (fxxor (eqv-hash _%key92079%_) _%seed92084%_))
                 (_%size92089%_ (vector-length _%table92083%_))
                 (_%entries92092%_ (##fxquotient _%size92089%_ '2))
                 (_%start92095%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92086%_ _%entries92092%_)
                   '1)))
            (let _%loop92099%_ ((_%probe92102%_ _%start92095%_)
                                (_%i92104%_ '1)
                                (_%deleted92106%_ '#f))
              (let ((_%k92109%_ (vector-ref _%table92083%_ _%probe92102%_)))
                (if (eq? _%k92109%_ (macro-unused-obj))
                    (if _%deleted92106%_
                        (begin
                          (vector-set!
                           _%table92083%_
                           _%deleted92106%_
                           _%key92079%_)
                          (vector-set!
                           _%table92083%_
                           (##fx+ _%deleted92106%_ '1)
                           _%value92080%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92078%_
                              (##fx+ (&raw-table-count _%tab92078%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92083%_
                           _%probe92102%_
                           _%key92079%_)
                          (vector-set!
                           _%table92083%_
                           (##fx+ _%probe92102%_ '1)
                           _%value92080%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92078%_
                              (##fx- (&raw-table-free _%tab92078%_) '1))
                             (&raw-table-count-set!
                              _%tab92078%_
                              (##fx+ (&raw-table-count _%tab92078%_) '1))))))
                    (if (eq? _%k92109%_ (macro-deleted-obj))
                        (_%loop92099%_
                         (let ((_%next-probe92116%_
                                (fx+ _%start92095%_
                                     _%i92104%_
                                     (fx* _%i92104%_ _%i92104%_))))
                           (##fxmodulo _%next-probe92116%_ _%size92089%_))
                         (##fx+ _%i92104%_ '1)
                         (let ((_%$e92119%_ _%deleted92106%_))
                           (if _%$e92119%_ _%$e92119%_ _%probe92102%_)))
                        (if (eqv? _%key92079%_ _%k92109%_)
                            (let ()
                              (vector-set!
                               _%table92083%_
                               _%probe92102%_
                               _%key92079%_)
                              (vector-set!
                               _%table92083%_
                               (##fx+ _%probe92102%_ '1)
                               _%value92080%_))
                            (_%loop92099%_
                             (let ((_%next-probe92124%_
                                    (fx+ _%start92095%_
                                         _%i92104%_
                                         (fx* _%i92104%_ _%i92104%_))))
                               (##fxmodulo _%next-probe92124%_ _%size92089%_))
                             (##fx+ _%i92104%_ '1)
                             _%deleted92106%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab92073%_
               _%key92074%_
               _%eqv-table-update!92075%_
               _%default92076%_)
        (if (##fx< (&raw-table-free _%tab92073%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab92073%_))
                    '4))
            (__raw-table-rehash! _%tab92073%_)
            '#!void)
        (__eqv-table-update!
         _%tab92073%_
         _%key92074%_
         _%eqv-table-update!92075%_
         _%default92076%_)))
    (define __eqv-table-update!
      (lambda (_%tab92023%_
               _%key92024%_
               _%eqv-table-update!92025%_
               _%default92026%_)
        (let ((_%table92029%_ (&raw-table-table _%tab92023%_))
              (_%seed92030%_ (&raw-table-seed _%tab92023%_)))
          (let* ((_%h92032%_ (fxxor (eqv-hash _%key92024%_) _%seed92030%_))
                 (_%size92035%_ (vector-length _%table92029%_))
                 (_%entries92038%_ (##fxquotient _%size92035%_ '2))
                 (_%start92041%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h92032%_ _%entries92038%_)
                   '1)))
            (let _%loop92045%_ ((_%probe92048%_ _%start92041%_)
                                (_%i92050%_ '1)
                                (_%deleted92052%_ '#f))
              (let ((_%k92055%_ (vector-ref _%table92029%_ _%probe92048%_)))
                (if (eq? _%k92055%_ (macro-unused-obj))
                    (if _%deleted92052%_
                        (begin
                          (vector-set!
                           _%table92029%_
                           _%deleted92052%_
                           _%key92024%_)
                          (vector-set!
                           _%table92029%_
                           (##fx+ _%deleted92052%_ '1)
                           (_%eqv-table-update!92025%_ _%default92026%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab92023%_
                              (##fx+ (&raw-table-count _%tab92023%_) '1)))))
                        (begin
                          (vector-set!
                           _%table92029%_
                           _%probe92048%_
                           _%key92024%_)
                          (vector-set!
                           _%table92029%_
                           (##fx+ _%probe92048%_ '1)
                           (_%eqv-table-update!92025%_ _%default92026%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab92023%_
                              (##fx- (&raw-table-free _%tab92023%_) '1))
                             (&raw-table-count-set!
                              _%tab92023%_
                              (##fx+ (&raw-table-count _%tab92023%_) '1))))))
                    (if (eq? _%k92055%_ (macro-deleted-obj))
                        (_%loop92045%_
                         (let ((_%next-probe92062%_
                                (fx+ _%start92041%_
                                     _%i92050%_
                                     (fx* _%i92050%_ _%i92050%_))))
                           (##fxmodulo _%next-probe92062%_ _%size92035%_))
                         (##fx+ _%i92050%_ '1)
                         (let ((_%$e92065%_ _%deleted92052%_))
                           (if _%$e92065%_ _%$e92065%_ _%probe92048%_)))
                        (if (eqv? _%key92024%_ _%k92055%_)
                            (let ()
                              (vector-set!
                               _%table92029%_
                               _%probe92048%_
                               _%key92024%_)
                              (vector-set!
                               _%table92029%_
                               (##fx+ _%probe92048%_ '1)
                               (_%eqv-table-update!92025%_
                                (vector-ref
                                 _%table92029%_
                                 (##fx+ _%probe92048%_ '1)))))
                            (_%loop92045%_
                             (let ((_%next-probe92070%_
                                    (fx+ _%start92041%_
                                         _%i92050%_
                                         (fx* _%i92050%_ _%i92050%_))))
                               (##fxmodulo _%next-probe92070%_ _%size92035%_))
                             (##fx+ _%i92050%_ '1)
                             _%deleted92052%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab91978%_ _%key91980%_)
        (let ((_%table91983%_ (&raw-table-table _%tab91978%_))
              (_%seed91985%_ (&raw-table-seed _%tab91978%_)))
          (let* ((_%h91988%_ (fxxor (eqv-hash _%key91980%_) _%seed91985%_))
                 (_%size91991%_ (vector-length _%table91983%_))
                 (_%entries91994%_ (##fxquotient _%size91991%_ '2))
                 (_%start91997%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91988%_ _%entries91994%_)
                   '1)))
            (let _%loop92001%_ ((_%probe92004%_ _%start91997%_)
                                (_%i92006%_ '1))
              (let ((_%k92009%_ (vector-ref _%table91983%_ _%probe92004%_)))
                (if (eq? _%k92009%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k92009%_ (macro-deleted-obj))
                        (_%loop92001%_
                         (let ((_%next-probe92014%_
                                (fx+ _%start91997%_
                                     _%i92006%_
                                     (fx* _%i92006%_ _%i92006%_))))
                           (##fxmodulo _%next-probe92014%_ _%size91991%_))
                         (##fx+ _%i92006%_ '1))
                        (if (eqv? _%key91980%_ _%k92009%_)
                            (let ()
                              (vector-set!
                               _%table91983%_
                               _%probe92004%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91983%_
                               (##fx+ _%probe92004%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91978%_
                                  (##fx- (&raw-table-count _%tab91978%_)
                                         '1)))))
                            (_%loop92001%_
                             (let ((_%next-probe92020%_
                                    (fx+ _%start91997%_
                                         _%i92006%_
                                         (fx* _%i92006%_ _%i92006%_))))
                               (##fxmodulo _%next-probe92020%_ _%size91991%_))
                             (##fx+ _%i92006%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint91959%_ _%seed91961%_)
        (make-raw-table__%
         _%size-hint91959%_
         symbolic-hash
         eq?
         _%seed91961%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint91967%_ '#f) (_%seed91969%_ '0))
          (make-symbolic-table__% _%size-hint91967%_ _%seed91969%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint91971%_)
        (let ((_%seed91973%_ '0))
          (make-symbolic-table__% _%size-hint91971%_ _%seed91973%_))))
    (define make-symbolic-table
      (lambda _g92757_
        (let ((_g92756_ (##length _g92757_)))
          (cond ((##fx= _g92756_ 0) (apply make-symbolic-table__0 _g92757_))
                ((##fx= _g92756_ 1) (apply make-symbolic-table__1 _g92757_))
                ((##fx= _g92756_ 2) (apply make-symbolic-table__% _g92757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g92757_))))))
    (define symbolic-table-ref
      (lambda (_%tab91912%_ _%key91913%_ _%default91914%_)
        (let ((_%table91916%_ (&raw-table-table _%tab91912%_))
              (_%seed91917%_ (&raw-table-seed _%tab91912%_)))
          (let* ((_%h91919%_
                  (fxxor (symbolic-hash _%key91913%_) _%seed91917%_))
                 (_%size91922%_ (vector-length _%table91916%_))
                 (_%entries91925%_ (##fxquotient _%size91922%_ '2))
                 (_%start91928%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91919%_ _%entries91925%_)
                   '1)))
            (let _%loop91932%_ ((_%probe91935%_ _%start91928%_)
                                (_%i91937%_ '1)
                                (_%deleted91939%_ '#f))
              (let ((_%k91942%_ (vector-ref _%table91916%_ _%probe91935%_)))
                (if (eq? _%k91942%_ (macro-unused-obj))
                    _%default91914%_
                    (if (eq? _%k91942%_ (macro-deleted-obj))
                        (_%loop91932%_
                         (let ((_%next-probe91947%_
                                (fx+ _%start91928%_
                                     _%i91937%_
                                     (fx* _%i91937%_ _%i91937%_))))
                           (##fxmodulo _%next-probe91947%_ _%size91922%_))
                         (##fx+ _%i91937%_ '1)
                         (let ((_%$e91950%_ _%deleted91939%_))
                           (if _%$e91950%_ _%$e91950%_ _%probe91935%_)))
                        (if (eq? _%key91913%_ _%k91942%_)
                            (vector-ref
                             _%table91916%_
                             (##fx+ _%probe91935%_ '1))
                            (_%loop91932%_
                             (let ((_%next-probe91955%_
                                    (fx+ _%start91928%_
                                         _%i91937%_
                                         (fx* _%i91937%_ _%i91937%_))))
                               (##fxmodulo _%next-probe91955%_ _%size91922%_))
                             (##fx+ _%i91937%_ '1)
                             _%deleted91939%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab91908%_ _%key91909%_ _%value91910%_)
        (if (##fx< (&raw-table-free _%tab91908%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91908%_))
                    '4))
            (__raw-table-rehash! _%tab91908%_)
            '#!void)
        (__symbolic-table-set! _%tab91908%_ _%key91909%_ _%value91910%_)))
    (define __symbolic-table-set!
      (lambda (_%tab91859%_ _%key91860%_ _%value91861%_)
        (let ((_%table91864%_ (&raw-table-table _%tab91859%_))
              (_%seed91865%_ (&raw-table-seed _%tab91859%_)))
          (let* ((_%h91867%_
                  (fxxor (symbolic-hash _%key91860%_) _%seed91865%_))
                 (_%size91870%_ (vector-length _%table91864%_))
                 (_%entries91873%_ (##fxquotient _%size91870%_ '2))
                 (_%start91876%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91867%_ _%entries91873%_)
                   '1)))
            (let _%loop91880%_ ((_%probe91883%_ _%start91876%_)
                                (_%i91885%_ '1)
                                (_%deleted91887%_ '#f))
              (let ((_%k91890%_ (vector-ref _%table91864%_ _%probe91883%_)))
                (if (eq? _%k91890%_ (macro-unused-obj))
                    (if _%deleted91887%_
                        (begin
                          (vector-set!
                           _%table91864%_
                           _%deleted91887%_
                           _%key91860%_)
                          (vector-set!
                           _%table91864%_
                           (##fx+ _%deleted91887%_ '1)
                           _%value91861%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91859%_
                              (##fx+ (&raw-table-count _%tab91859%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91864%_
                           _%probe91883%_
                           _%key91860%_)
                          (vector-set!
                           _%table91864%_
                           (##fx+ _%probe91883%_ '1)
                           _%value91861%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91859%_
                              (##fx- (&raw-table-free _%tab91859%_) '1))
                             (&raw-table-count-set!
                              _%tab91859%_
                              (##fx+ (&raw-table-count _%tab91859%_) '1))))))
                    (if (eq? _%k91890%_ (macro-deleted-obj))
                        (_%loop91880%_
                         (let ((_%next-probe91897%_
                                (fx+ _%start91876%_
                                     _%i91885%_
                                     (fx* _%i91885%_ _%i91885%_))))
                           (##fxmodulo _%next-probe91897%_ _%size91870%_))
                         (##fx+ _%i91885%_ '1)
                         (let ((_%$e91900%_ _%deleted91887%_))
                           (if _%$e91900%_ _%$e91900%_ _%probe91883%_)))
                        (if (eq? _%key91860%_ _%k91890%_)
                            (let ()
                              (vector-set!
                               _%table91864%_
                               _%probe91883%_
                               _%key91860%_)
                              (vector-set!
                               _%table91864%_
                               (##fx+ _%probe91883%_ '1)
                               _%value91861%_))
                            (_%loop91880%_
                             (let ((_%next-probe91905%_
                                    (fx+ _%start91876%_
                                         _%i91885%_
                                         (fx* _%i91885%_ _%i91885%_))))
                               (##fxmodulo _%next-probe91905%_ _%size91870%_))
                             (##fx+ _%i91885%_ '1)
                             _%deleted91887%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab91854%_
               _%key91855%_
               _%symbolic-table-update!91856%_
               _%default91857%_)
        (if (##fx< (&raw-table-free _%tab91854%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91854%_))
                    '4))
            (__raw-table-rehash! _%tab91854%_)
            '#!void)
        (__symbolic-table-update!
         _%tab91854%_
         _%key91855%_
         _%symbolic-table-update!91856%_
         _%default91857%_)))
    (define __symbolic-table-update!
      (lambda (_%tab91804%_
               _%key91805%_
               _%symbolic-table-update!91806%_
               _%default91807%_)
        (let ((_%table91810%_ (&raw-table-table _%tab91804%_))
              (_%seed91811%_ (&raw-table-seed _%tab91804%_)))
          (let* ((_%h91813%_
                  (fxxor (symbolic-hash _%key91805%_) _%seed91811%_))
                 (_%size91816%_ (vector-length _%table91810%_))
                 (_%entries91819%_ (##fxquotient _%size91816%_ '2))
                 (_%start91822%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91813%_ _%entries91819%_)
                   '1)))
            (let _%loop91826%_ ((_%probe91829%_ _%start91822%_)
                                (_%i91831%_ '1)
                                (_%deleted91833%_ '#f))
              (let ((_%k91836%_ (vector-ref _%table91810%_ _%probe91829%_)))
                (if (eq? _%k91836%_ (macro-unused-obj))
                    (if _%deleted91833%_
                        (begin
                          (vector-set!
                           _%table91810%_
                           _%deleted91833%_
                           _%key91805%_)
                          (vector-set!
                           _%table91810%_
                           (##fx+ _%deleted91833%_ '1)
                           (_%symbolic-table-update!91806%_ _%default91807%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91804%_
                              (##fx+ (&raw-table-count _%tab91804%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91810%_
                           _%probe91829%_
                           _%key91805%_)
                          (vector-set!
                           _%table91810%_
                           (##fx+ _%probe91829%_ '1)
                           (_%symbolic-table-update!91806%_ _%default91807%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91804%_
                              (##fx- (&raw-table-free _%tab91804%_) '1))
                             (&raw-table-count-set!
                              _%tab91804%_
                              (##fx+ (&raw-table-count _%tab91804%_) '1))))))
                    (if (eq? _%k91836%_ (macro-deleted-obj))
                        (_%loop91826%_
                         (let ((_%next-probe91843%_
                                (fx+ _%start91822%_
                                     _%i91831%_
                                     (fx* _%i91831%_ _%i91831%_))))
                           (##fxmodulo _%next-probe91843%_ _%size91816%_))
                         (##fx+ _%i91831%_ '1)
                         (let ((_%$e91846%_ _%deleted91833%_))
                           (if _%$e91846%_ _%$e91846%_ _%probe91829%_)))
                        (if (eq? _%key91805%_ _%k91836%_)
                            (let ()
                              (vector-set!
                               _%table91810%_
                               _%probe91829%_
                               _%key91805%_)
                              (vector-set!
                               _%table91810%_
                               (##fx+ _%probe91829%_ '1)
                               (_%symbolic-table-update!91806%_
                                (vector-ref
                                 _%table91810%_
                                 (##fx+ _%probe91829%_ '1)))))
                            (_%loop91826%_
                             (let ((_%next-probe91851%_
                                    (fx+ _%start91822%_
                                         _%i91831%_
                                         (fx* _%i91831%_ _%i91831%_))))
                               (##fxmodulo _%next-probe91851%_ _%size91816%_))
                             (##fx+ _%i91831%_ '1)
                             _%deleted91833%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab91759%_ _%key91761%_)
        (let ((_%table91764%_ (&raw-table-table _%tab91759%_))
              (_%seed91766%_ (&raw-table-seed _%tab91759%_)))
          (let* ((_%h91769%_
                  (fxxor (symbolic-hash _%key91761%_) _%seed91766%_))
                 (_%size91772%_ (vector-length _%table91764%_))
                 (_%entries91775%_ (##fxquotient _%size91772%_ '2))
                 (_%start91778%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91769%_ _%entries91775%_)
                   '1)))
            (let _%loop91782%_ ((_%probe91785%_ _%start91778%_)
                                (_%i91787%_ '1))
              (let ((_%k91790%_ (vector-ref _%table91764%_ _%probe91785%_)))
                (if (eq? _%k91790%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91790%_ (macro-deleted-obj))
                        (_%loop91782%_
                         (let ((_%next-probe91795%_
                                (fx+ _%start91778%_
                                     _%i91787%_
                                     (fx* _%i91787%_ _%i91787%_))))
                           (##fxmodulo _%next-probe91795%_ _%size91772%_))
                         (##fx+ _%i91787%_ '1))
                        (if (eq? _%key91761%_ _%k91790%_)
                            (let ()
                              (vector-set!
                               _%table91764%_
                               _%probe91785%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91764%_
                               (##fx+ _%probe91785%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91759%_
                                  (##fx- (&raw-table-count _%tab91759%_)
                                         '1)))))
                            (_%loop91782%_
                             (let ((_%next-probe91801%_
                                    (fx+ _%start91778%_
                                         _%i91787%_
                                         (fx* _%i91787%_ _%i91787%_))))
                               (##fxmodulo _%next-probe91801%_ _%size91772%_))
                             (##fx+ _%i91787%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint91740%_ _%seed91742%_)
        (make-raw-table__%
         _%size-hint91740%_
         string-hash
         ##string=?
         _%seed91742%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint91748%_ '#f) (_%seed91750%_ '0))
          (make-string-table__% _%size-hint91748%_ _%seed91750%_))))
    (define make-string-table__1
      (lambda (_%size-hint91752%_)
        (let ((_%seed91754%_ '0))
          (make-string-table__% _%size-hint91752%_ _%seed91754%_))))
    (define make-string-table
      (lambda _g92759_
        (let ((_g92758_ (##length _g92759_)))
          (cond ((##fx= _g92758_ 0) (apply make-string-table__0 _g92759_))
                ((##fx= _g92758_ 1) (apply make-string-table__1 _g92759_))
                ((##fx= _g92758_ 2) (apply make-string-table__% _g92759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g92759_))))))
    (define string-table-ref
      (lambda (_%tab91693%_ _%key91694%_ _%default91695%_)
        (let ((_%table91697%_ (&raw-table-table _%tab91693%_))
              (_%seed91698%_ (&raw-table-seed _%tab91693%_)))
          (let* ((_%h91700%_
                  (fxxor (##string=?-hash _%key91694%_) _%seed91698%_))
                 (_%size91703%_ (vector-length _%table91697%_))
                 (_%entries91706%_ (##fxquotient _%size91703%_ '2))
                 (_%start91709%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91700%_ _%entries91706%_)
                   '1)))
            (let _%loop91713%_ ((_%probe91716%_ _%start91709%_)
                                (_%i91718%_ '1)
                                (_%deleted91720%_ '#f))
              (let ((_%k91723%_ (vector-ref _%table91697%_ _%probe91716%_)))
                (if (eq? _%k91723%_ (macro-unused-obj))
                    _%default91695%_
                    (if (eq? _%k91723%_ (macro-deleted-obj))
                        (_%loop91713%_
                         (let ((_%next-probe91728%_
                                (fx+ _%start91709%_
                                     _%i91718%_
                                     (fx* _%i91718%_ _%i91718%_))))
                           (##fxmodulo _%next-probe91728%_ _%size91703%_))
                         (##fx+ _%i91718%_ '1)
                         (let ((_%$e91731%_ _%deleted91720%_))
                           (if _%$e91731%_ _%$e91731%_ _%probe91716%_)))
                        (if (##string=? _%key91694%_ _%k91723%_)
                            (vector-ref
                             _%table91697%_
                             (##fx+ _%probe91716%_ '1))
                            (_%loop91713%_
                             (let ((_%next-probe91736%_
                                    (fx+ _%start91709%_
                                         _%i91718%_
                                         (fx* _%i91718%_ _%i91718%_))))
                               (##fxmodulo _%next-probe91736%_ _%size91703%_))
                             (##fx+ _%i91718%_ '1)
                             _%deleted91720%_))))))))))
    (define string-table-set!
      (lambda (_%tab91689%_ _%key91690%_ _%value91691%_)
        (if (##fx< (&raw-table-free _%tab91689%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91689%_))
                    '4))
            (__raw-table-rehash! _%tab91689%_)
            '#!void)
        (__string-table-set! _%tab91689%_ _%key91690%_ _%value91691%_)))
    (define __string-table-set!
      (lambda (_%tab91640%_ _%key91641%_ _%value91642%_)
        (let ((_%table91645%_ (&raw-table-table _%tab91640%_))
              (_%seed91646%_ (&raw-table-seed _%tab91640%_)))
          (let* ((_%h91648%_
                  (fxxor (##string=?-hash _%key91641%_) _%seed91646%_))
                 (_%size91651%_ (vector-length _%table91645%_))
                 (_%entries91654%_ (##fxquotient _%size91651%_ '2))
                 (_%start91657%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91648%_ _%entries91654%_)
                   '1)))
            (let _%loop91661%_ ((_%probe91664%_ _%start91657%_)
                                (_%i91666%_ '1)
                                (_%deleted91668%_ '#f))
              (let ((_%k91671%_ (vector-ref _%table91645%_ _%probe91664%_)))
                (if (eq? _%k91671%_ (macro-unused-obj))
                    (if _%deleted91668%_
                        (begin
                          (vector-set!
                           _%table91645%_
                           _%deleted91668%_
                           _%key91641%_)
                          (vector-set!
                           _%table91645%_
                           (##fx+ _%deleted91668%_ '1)
                           _%value91642%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91640%_
                              (##fx+ (&raw-table-count _%tab91640%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91645%_
                           _%probe91664%_
                           _%key91641%_)
                          (vector-set!
                           _%table91645%_
                           (##fx+ _%probe91664%_ '1)
                           _%value91642%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91640%_
                              (##fx- (&raw-table-free _%tab91640%_) '1))
                             (&raw-table-count-set!
                              _%tab91640%_
                              (##fx+ (&raw-table-count _%tab91640%_) '1))))))
                    (if (eq? _%k91671%_ (macro-deleted-obj))
                        (_%loop91661%_
                         (let ((_%next-probe91678%_
                                (fx+ _%start91657%_
                                     _%i91666%_
                                     (fx* _%i91666%_ _%i91666%_))))
                           (##fxmodulo _%next-probe91678%_ _%size91651%_))
                         (##fx+ _%i91666%_ '1)
                         (let ((_%$e91681%_ _%deleted91668%_))
                           (if _%$e91681%_ _%$e91681%_ _%probe91664%_)))
                        (if (##string=? _%key91641%_ _%k91671%_)
                            (let ()
                              (vector-set!
                               _%table91645%_
                               _%probe91664%_
                               _%key91641%_)
                              (vector-set!
                               _%table91645%_
                               (##fx+ _%probe91664%_ '1)
                               _%value91642%_))
                            (_%loop91661%_
                             (let ((_%next-probe91686%_
                                    (fx+ _%start91657%_
                                         _%i91666%_
                                         (fx* _%i91666%_ _%i91666%_))))
                               (##fxmodulo _%next-probe91686%_ _%size91651%_))
                             (##fx+ _%i91666%_ '1)
                             _%deleted91668%_))))))))))
    (define string-table-update!
      (lambda (_%tab91635%_
               _%key91636%_
               _%string-table-update!91637%_
               _%default91638%_)
        (if (##fx< (&raw-table-free _%tab91635%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91635%_))
                    '4))
            (__raw-table-rehash! _%tab91635%_)
            '#!void)
        (__string-table-update!
         _%tab91635%_
         _%key91636%_
         _%string-table-update!91637%_
         _%default91638%_)))
    (define __string-table-update!
      (lambda (_%tab91585%_
               _%key91586%_
               _%string-table-update!91587%_
               _%default91588%_)
        (let ((_%table91591%_ (&raw-table-table _%tab91585%_))
              (_%seed91592%_ (&raw-table-seed _%tab91585%_)))
          (let* ((_%h91594%_
                  (fxxor (##string=?-hash _%key91586%_) _%seed91592%_))
                 (_%size91597%_ (vector-length _%table91591%_))
                 (_%entries91600%_ (##fxquotient _%size91597%_ '2))
                 (_%start91603%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91594%_ _%entries91600%_)
                   '1)))
            (let _%loop91607%_ ((_%probe91610%_ _%start91603%_)
                                (_%i91612%_ '1)
                                (_%deleted91614%_ '#f))
              (let ((_%k91617%_ (vector-ref _%table91591%_ _%probe91610%_)))
                (if (eq? _%k91617%_ (macro-unused-obj))
                    (if _%deleted91614%_
                        (begin
                          (vector-set!
                           _%table91591%_
                           _%deleted91614%_
                           _%key91586%_)
                          (vector-set!
                           _%table91591%_
                           (##fx+ _%deleted91614%_ '1)
                           (_%string-table-update!91587%_ _%default91588%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91585%_
                              (##fx+ (&raw-table-count _%tab91585%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91591%_
                           _%probe91610%_
                           _%key91586%_)
                          (vector-set!
                           _%table91591%_
                           (##fx+ _%probe91610%_ '1)
                           (_%string-table-update!91587%_ _%default91588%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91585%_
                              (##fx- (&raw-table-free _%tab91585%_) '1))
                             (&raw-table-count-set!
                              _%tab91585%_
                              (##fx+ (&raw-table-count _%tab91585%_) '1))))))
                    (if (eq? _%k91617%_ (macro-deleted-obj))
                        (_%loop91607%_
                         (let ((_%next-probe91624%_
                                (fx+ _%start91603%_
                                     _%i91612%_
                                     (fx* _%i91612%_ _%i91612%_))))
                           (##fxmodulo _%next-probe91624%_ _%size91597%_))
                         (##fx+ _%i91612%_ '1)
                         (let ((_%$e91627%_ _%deleted91614%_))
                           (if _%$e91627%_ _%$e91627%_ _%probe91610%_)))
                        (if (##string=? _%key91586%_ _%k91617%_)
                            (let ()
                              (vector-set!
                               _%table91591%_
                               _%probe91610%_
                               _%key91586%_)
                              (vector-set!
                               _%table91591%_
                               (##fx+ _%probe91610%_ '1)
                               (_%string-table-update!91587%_
                                (vector-ref
                                 _%table91591%_
                                 (##fx+ _%probe91610%_ '1)))))
                            (_%loop91607%_
                             (let ((_%next-probe91632%_
                                    (fx+ _%start91603%_
                                         _%i91612%_
                                         (fx* _%i91612%_ _%i91612%_))))
                               (##fxmodulo _%next-probe91632%_ _%size91597%_))
                             (##fx+ _%i91612%_ '1)
                             _%deleted91614%_))))))))))
    (define string-table-delete!
      (lambda (_%tab91540%_ _%key91542%_)
        (let ((_%table91545%_ (&raw-table-table _%tab91540%_))
              (_%seed91547%_ (&raw-table-seed _%tab91540%_)))
          (let* ((_%h91550%_
                  (fxxor (##string=?-hash _%key91542%_) _%seed91547%_))
                 (_%size91553%_ (vector-length _%table91545%_))
                 (_%entries91556%_ (##fxquotient _%size91553%_ '2))
                 (_%start91559%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91550%_ _%entries91556%_)
                   '1)))
            (let _%loop91563%_ ((_%probe91566%_ _%start91559%_)
                                (_%i91568%_ '1))
              (let ((_%k91571%_ (vector-ref _%table91545%_ _%probe91566%_)))
                (if (eq? _%k91571%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91571%_ (macro-deleted-obj))
                        (_%loop91563%_
                         (let ((_%next-probe91576%_
                                (fx+ _%start91559%_
                                     _%i91568%_
                                     (fx* _%i91568%_ _%i91568%_))))
                           (##fxmodulo _%next-probe91576%_ _%size91553%_))
                         (##fx+ _%i91568%_ '1))
                        (if (##string=? _%key91542%_ _%k91571%_)
                            (let ()
                              (vector-set!
                               _%table91545%_
                               _%probe91566%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91545%_
                               (##fx+ _%probe91566%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91540%_
                                  (##fx- (&raw-table-count _%tab91540%_)
                                         '1)))))
                            (_%loop91563%_
                             (let ((_%next-probe91582%_
                                    (fx+ _%start91559%_
                                         _%i91568%_
                                         (fx* _%i91568%_ _%i91568%_))))
                               (##fxmodulo _%next-probe91582%_ _%size91553%_))
                             (##fx+ _%i91568%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint91521%_ _%seed91523%_)
        (make-raw-table__%
         _%size-hint91521%_
         immediate-hash
         eq?
         _%seed91523%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint91529%_ '#f) (_%seed91531%_ '0))
          (make-immediate-table__% _%size-hint91529%_ _%seed91531%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint91533%_)
        (let ((_%seed91535%_ '0))
          (make-immediate-table__% _%size-hint91533%_ _%seed91535%_))))
    (define make-immediate-table
      (lambda _g92761_
        (let ((_g92760_ (##length _g92761_)))
          (cond ((##fx= _g92760_ 0) (apply make-immediate-table__0 _g92761_))
                ((##fx= _g92760_ 1) (apply make-immediate-table__1 _g92761_))
                ((##fx= _g92760_ 2) (apply make-immediate-table__% _g92761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g92761_))))))
    (define immediate-table-ref
      (lambda (_%tab91474%_ _%key91475%_ _%default91476%_)
        (let ((_%table91478%_ (&raw-table-table _%tab91474%_))
              (_%seed91479%_ (&raw-table-seed _%tab91474%_)))
          (let* ((_%h91481%_
                  (fxxor (immediate-hash _%key91475%_) _%seed91479%_))
                 (_%size91484%_ (vector-length _%table91478%_))
                 (_%entries91487%_ (##fxquotient _%size91484%_ '2))
                 (_%start91490%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91481%_ _%entries91487%_)
                   '1)))
            (let _%loop91494%_ ((_%probe91497%_ _%start91490%_)
                                (_%i91499%_ '1)
                                (_%deleted91501%_ '#f))
              (let ((_%k91504%_ (vector-ref _%table91478%_ _%probe91497%_)))
                (if (eq? _%k91504%_ (macro-unused-obj))
                    _%default91476%_
                    (if (eq? _%k91504%_ (macro-deleted-obj))
                        (_%loop91494%_
                         (let ((_%next-probe91509%_
                                (fx+ _%start91490%_
                                     _%i91499%_
                                     (fx* _%i91499%_ _%i91499%_))))
                           (##fxmodulo _%next-probe91509%_ _%size91484%_))
                         (##fx+ _%i91499%_ '1)
                         (let ((_%$e91512%_ _%deleted91501%_))
                           (if _%$e91512%_ _%$e91512%_ _%probe91497%_)))
                        (if (eq? _%key91475%_ _%k91504%_)
                            (vector-ref
                             _%table91478%_
                             (##fx+ _%probe91497%_ '1))
                            (_%loop91494%_
                             (let ((_%next-probe91517%_
                                    (fx+ _%start91490%_
                                         _%i91499%_
                                         (fx* _%i91499%_ _%i91499%_))))
                               (##fxmodulo _%next-probe91517%_ _%size91484%_))
                             (##fx+ _%i91499%_ '1)
                             _%deleted91501%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab91470%_ _%key91471%_ _%value91472%_)
        (if (##fx< (&raw-table-free _%tab91470%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91470%_))
                    '4))
            (__raw-table-rehash! _%tab91470%_)
            '#!void)
        (__immediate-table-set! _%tab91470%_ _%key91471%_ _%value91472%_)))
    (define __immediate-table-set!
      (lambda (_%tab91421%_ _%key91422%_ _%value91423%_)
        (let ((_%table91426%_ (&raw-table-table _%tab91421%_))
              (_%seed91427%_ (&raw-table-seed _%tab91421%_)))
          (let* ((_%h91429%_
                  (fxxor (immediate-hash _%key91422%_) _%seed91427%_))
                 (_%size91432%_ (vector-length _%table91426%_))
                 (_%entries91435%_ (##fxquotient _%size91432%_ '2))
                 (_%start91438%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91429%_ _%entries91435%_)
                   '1)))
            (let _%loop91442%_ ((_%probe91445%_ _%start91438%_)
                                (_%i91447%_ '1)
                                (_%deleted91449%_ '#f))
              (let ((_%k91452%_ (vector-ref _%table91426%_ _%probe91445%_)))
                (if (eq? _%k91452%_ (macro-unused-obj))
                    (if _%deleted91449%_
                        (begin
                          (vector-set!
                           _%table91426%_
                           _%deleted91449%_
                           _%key91422%_)
                          (vector-set!
                           _%table91426%_
                           (##fx+ _%deleted91449%_ '1)
                           _%value91423%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91421%_
                              (##fx+ (&raw-table-count _%tab91421%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91426%_
                           _%probe91445%_
                           _%key91422%_)
                          (vector-set!
                           _%table91426%_
                           (##fx+ _%probe91445%_ '1)
                           _%value91423%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91421%_
                              (##fx- (&raw-table-free _%tab91421%_) '1))
                             (&raw-table-count-set!
                              _%tab91421%_
                              (##fx+ (&raw-table-count _%tab91421%_) '1))))))
                    (if (eq? _%k91452%_ (macro-deleted-obj))
                        (_%loop91442%_
                         (let ((_%next-probe91459%_
                                (fx+ _%start91438%_
                                     _%i91447%_
                                     (fx* _%i91447%_ _%i91447%_))))
                           (##fxmodulo _%next-probe91459%_ _%size91432%_))
                         (##fx+ _%i91447%_ '1)
                         (let ((_%$e91462%_ _%deleted91449%_))
                           (if _%$e91462%_ _%$e91462%_ _%probe91445%_)))
                        (if (eq? _%key91422%_ _%k91452%_)
                            (let ()
                              (vector-set!
                               _%table91426%_
                               _%probe91445%_
                               _%key91422%_)
                              (vector-set!
                               _%table91426%_
                               (##fx+ _%probe91445%_ '1)
                               _%value91423%_))
                            (_%loop91442%_
                             (let ((_%next-probe91467%_
                                    (fx+ _%start91438%_
                                         _%i91447%_
                                         (fx* _%i91447%_ _%i91447%_))))
                               (##fxmodulo _%next-probe91467%_ _%size91432%_))
                             (##fx+ _%i91447%_ '1)
                             _%deleted91449%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab91416%_
               _%key91417%_
               _%immediate-table-update!91418%_
               _%default91419%_)
        (if (##fx< (&raw-table-free _%tab91416%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91416%_))
                    '4))
            (__raw-table-rehash! _%tab91416%_)
            '#!void)
        (__immediate-table-update!
         _%tab91416%_
         _%key91417%_
         _%immediate-table-update!91418%_
         _%default91419%_)))
    (define __immediate-table-update!
      (lambda (_%tab91366%_
               _%key91367%_
               _%immediate-table-update!91368%_
               _%default91369%_)
        (let ((_%table91372%_ (&raw-table-table _%tab91366%_))
              (_%seed91373%_ (&raw-table-seed _%tab91366%_)))
          (let* ((_%h91375%_
                  (fxxor (immediate-hash _%key91367%_) _%seed91373%_))
                 (_%size91378%_ (vector-length _%table91372%_))
                 (_%entries91381%_ (##fxquotient _%size91378%_ '2))
                 (_%start91384%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91375%_ _%entries91381%_)
                   '1)))
            (let _%loop91388%_ ((_%probe91391%_ _%start91384%_)
                                (_%i91393%_ '1)
                                (_%deleted91395%_ '#f))
              (let ((_%k91398%_ (vector-ref _%table91372%_ _%probe91391%_)))
                (if (eq? _%k91398%_ (macro-unused-obj))
                    (if _%deleted91395%_
                        (begin
                          (vector-set!
                           _%table91372%_
                           _%deleted91395%_
                           _%key91367%_)
                          (vector-set!
                           _%table91372%_
                           (##fx+ _%deleted91395%_ '1)
                           (_%immediate-table-update!91368%_ _%default91369%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91366%_
                              (##fx+ (&raw-table-count _%tab91366%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91372%_
                           _%probe91391%_
                           _%key91367%_)
                          (vector-set!
                           _%table91372%_
                           (##fx+ _%probe91391%_ '1)
                           (_%immediate-table-update!91368%_ _%default91369%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91366%_
                              (##fx- (&raw-table-free _%tab91366%_) '1))
                             (&raw-table-count-set!
                              _%tab91366%_
                              (##fx+ (&raw-table-count _%tab91366%_) '1))))))
                    (if (eq? _%k91398%_ (macro-deleted-obj))
                        (_%loop91388%_
                         (let ((_%next-probe91405%_
                                (fx+ _%start91384%_
                                     _%i91393%_
                                     (fx* _%i91393%_ _%i91393%_))))
                           (##fxmodulo _%next-probe91405%_ _%size91378%_))
                         (##fx+ _%i91393%_ '1)
                         (let ((_%$e91408%_ _%deleted91395%_))
                           (if _%$e91408%_ _%$e91408%_ _%probe91391%_)))
                        (if (eq? _%key91367%_ _%k91398%_)
                            (let ()
                              (vector-set!
                               _%table91372%_
                               _%probe91391%_
                               _%key91367%_)
                              (vector-set!
                               _%table91372%_
                               (##fx+ _%probe91391%_ '1)
                               (_%immediate-table-update!91368%_
                                (vector-ref
                                 _%table91372%_
                                 (##fx+ _%probe91391%_ '1)))))
                            (_%loop91388%_
                             (let ((_%next-probe91413%_
                                    (fx+ _%start91384%_
                                         _%i91393%_
                                         (fx* _%i91393%_ _%i91393%_))))
                               (##fxmodulo _%next-probe91413%_ _%size91378%_))
                             (##fx+ _%i91393%_ '1)
                             _%deleted91395%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab91321%_ _%key91323%_)
        (let ((_%table91326%_ (&raw-table-table _%tab91321%_))
              (_%seed91328%_ (&raw-table-seed _%tab91321%_)))
          (let* ((_%h91331%_
                  (fxxor (immediate-hash _%key91323%_) _%seed91328%_))
                 (_%size91334%_ (vector-length _%table91326%_))
                 (_%entries91337%_ (##fxquotient _%size91334%_ '2))
                 (_%start91340%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91331%_ _%entries91337%_)
                   '1)))
            (let _%loop91344%_ ((_%probe91347%_ _%start91340%_)
                                (_%i91349%_ '1))
              (let ((_%k91352%_ (vector-ref _%table91326%_ _%probe91347%_)))
                (if (eq? _%k91352%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91352%_ (macro-deleted-obj))
                        (_%loop91344%_
                         (let ((_%next-probe91357%_
                                (fx+ _%start91340%_
                                     _%i91349%_
                                     (fx* _%i91349%_ _%i91349%_))))
                           (##fxmodulo _%next-probe91357%_ _%size91334%_))
                         (##fx+ _%i91349%_ '1))
                        (if (eq? _%key91323%_ _%k91352%_)
                            (let ()
                              (vector-set!
                               _%table91326%_
                               _%probe91347%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91326%_
                               (##fx+ _%probe91347%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91321%_
                                  (##fx- (&raw-table-count _%tab91321%_)
                                         '1)))))
                            (_%loop91344%_
                             (let ((_%next-probe91363%_
                                    (fx+ _%start91340%_
                                         _%i91349%_
                                         (fx* _%i91349%_ _%i91349%_))))
                               (##fxmodulo _%next-probe91363%_ _%size91334%_))
                             (##fx+ _%i91349%_ '1)))))))))))
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
      (lambda (_%tab91319%_)
        (##unchecked-structure-ref
         _%tab91319%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab91317%_)
        (##unchecked-structure-ref
         _%tab91317%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab91314%_ _%val91315%_)
        (##unchecked-structure-set!
         _%tab91314%_
         _%val91315%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab91311%_ _%val91312%_)
        (##unchecked-structure-set!
         _%tab91311%_
         _%val91312%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint91287%_ _%klass91288%_ _%flags91289%_)
        (let ((_%gcht91291%_
               (__gc-table-new
                (if (fixnum? _%size-hint91287%_) _%size-hint91287%_ '16)
                _%flags91289%_)))
          (##structure _%klass91288%_ _%gcht91291%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint91296%_)
        (let* ((_%klass91298%_ __gc-table::t) (_%flags91300%_ '0))
          (make-gc-table__%
           _%size-hint91296%_
           _%klass91298%_
           _%flags91300%_))))
    (define make-gc-table__1
      (lambda (_%size-hint91302%_ _%klass91303%_)
        (let ((_%flags91305%_ '0))
          (make-gc-table__%
           _%size-hint91302%_
           _%klass91303%_
           _%flags91305%_))))
    (define make-gc-table
      (lambda _g92763_
        (let ((_g92762_ (##length _g92763_)))
          (cond ((##fx= _g92762_ 1) (apply make-gc-table__0 _g92763_))
                ((##fx= _g92762_ 2) (apply make-gc-table__1 _g92763_))
                ((##fx= _g92762_ 3) (apply make-gc-table__% _g92763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g92763_))))))
    (define __gc-table-immediate
      (lambda (_%tab91278%_)
        (let ((_%$e91280%_ (&gc-table-immediate _%tab91278%_)))
          (if _%$e91280%_
              _%$e91280%_
              (let ((_%immediate91284%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab91278%_ _%immediate91284%_)
                _%immediate91284%_)))))
    (define __gc-table-new
      (lambda (_%size91268%_ _%flags91269%_)
        (let* ((_%flags91271%_
                (##fxand _%flags91269%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags91273%_
                (fxior _%flags91271%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht91275%_
                (##gc-hash-table-allocate
                 _%size91268%_
                 _%flags91273%_
                 __gc-table-loads)))
          _%gcht91275%_)))
    (define __gc-table-e
      (lambda (_%tab91263%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht91266%_ (&gc-table-gcht _%tab91263%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht91266%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht91266%_
              (begin
                (__gc-table-rehash! _%tab91263%_)
                (&gc-table-gcht _%tab91263%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab91254%_)
        (let* ((_%old-table91256%_ (&gc-table-gcht _%tab91254%_))
               (_%new-table91258%_
                (##gc-hash-table-resize! _%old-table91256%_ __gc-table-loads))
               (_%gcht91260%_
                (##gc-hash-table-rehash!
                 _%old-table91256%_
                 _%new-table91258%_)))
          (&gc-table-gcht-set! _%tab91254%_ _%gcht91260%_))))
    (define gc-table-ref
      (lambda (_%tab91238%_ _%key91239%_ _%default91240%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key91239%_)
            (let* ((_%gcht91244%_ (__gc-table-e _%tab91238%_))
                   (_%value91246%_
                    (##gc-hash-table-ref _%gcht91244%_ _%key91239%_)))
              (if (eq? _%value91246%_ (macro-unused-obj))
                  _%default91240%_
                  _%value91246%_))
            (let ((_%$e91248%_ (&gc-table-immediate _%tab91238%_)))
              (if _%$e91248%_
                  ((lambda (_%immediate91251%_)
                     (immediate-table-ref
                      _%immediate91251%_
                      _%key91239%_
                      _%default91240%_))
                   _%$e91248%_)
                  _%default91240%_)))))
    (define gc-table-set!
      (lambda (_%tab91231%_ _%key91232%_ _%value91233%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key91232%_)
            (let ((_%gcht91236%_ (__gc-table-e _%tab91231%_)))
              (if (##gc-hash-table-set!
                   _%gcht91236%_
                   _%key91232%_
                   _%value91233%_)
                  (begin
                    (__gc-table-rehash! _%tab91231%_)
                    (gc-table-set! _%tab91231%_ _%key91232%_ _%value91233%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab91231%_)
             _%key91232%_
             _%value91233%_))))
    (define gc-table-update!
      (lambda (_%tab91224%_ _%key91225%_ _%update91226%_ _%default91227%_)
        (if (##mem-allocated? _%key91225%_)
            (let ((_%value91229%_
                   (gc-table-ref _%tab91224%_ _%key91225%_ _%default91227%_)))
              (gc-table-set!
               _%tab91224%_
               _%key91225%_
               (_%update91226%_ _%value91229%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab91224%_)
             _%key91225%_
             _%update91226%_
             _%default91227%_))))
    (define gc-table-delete!
      (lambda (_%tab91212%_ _%key91213%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key91213%_)
            (let ((_%gcht91217%_ (__gc-table-e _%tab91212%_)))
              (if (##gc-hash-table-set!
                   _%gcht91217%_
                   _%key91213%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab91212%_)
                    (gc-table-delete! _%tab91212%_ _%key91213%_))
                  '#!void))
            (let ((_%$e91219%_ (&gc-table-immediate _%tab91212%_)))
              (if _%$e91219%_
                  ((lambda (_%immediate91222%_)
                     (immediate-table-delete! _%immediate91222%_ _%key91213%_))
                   _%$e91219%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab91193%_ _%proc91194%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht91197%_ (__gc-table-e _%tab91193%_)))
            (let _%loop91199%_ ((_%i91201%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i91201%_ (##vector-length _%gcht91197%_))
                  (let ((_%key91203%_ (##vector-ref _%gcht91197%_ _%i91201%_)))
                    (if (if (eq? _%key91203%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key91203%_ (macro-deleted-obj))))
                        (_%proc91194%_
                         _%key91203%_
                         (##vector-ref _%gcht91197%_ (##fx+ _%i91201%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop91199%_ (##fx+ _%i91201%_ '2))))
                  '#!void)))
          (let ((_%$e91207%_ (&gc-table-immediate _%tab91193%_)))
            (if _%$e91207%_
                ((lambda (_%immediate91210%_)
                   (raw-table-for-each _%immediate91210%_ _%proc91194%_))
                 _%$e91207%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab91181%_)
        (let* ((_%gcht91183%_ (__gc-table-e _%tab91181%_))
               (_%new-table91185%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht91183%_)
                 (macro-gc-hash-table-flags _%gcht91183%_)))
               (_%result91187%_
                (##structure
                 (##structure-type _%tab91181%_)
                 _%new-table91185%_
                 '#f)))
          (gc-table-for-each
           _%tab91181%_
           (lambda (_%k91190%_ _%v91191%_)
             (gc-table-set! _%result91187%_ _%k91190%_ _%v91191%_)))
          _%result91187%_)))
    (define gc-table-clear!
      (lambda (_%tab91174%_)
        (let* ((_%gcht91176%_ (__gc-table-e _%tab91174%_))
               (_%new-table91178%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht91176%_))))
          (&gc-table-gcht-set! _%tab91174%_ _%new-table91178%_)
          (&gc-table-immediate-set! _%tab91174%_ '#f))))
    (define gc-table-length
      (lambda (_%tab91166%_)
        (let ((_%gcht91168%_ (__gc-table-e _%tab91166%_)))
          (fx+ (macro-gc-hash-table-count _%gcht91168%_)
               (let ((_%$e91170%_ (&gc-table-immediate _%tab91166%_)))
                 (if _%$e91170%_ (&raw-table-count _%$e91170%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj91151%_)
        (declare (not interrupts-enabled))
        (let ((_%val91154%_ (gc-table-ref __object-eq-hash _%obj91151%_ '#f)))
          (if _%val91154%_
              _%val91154%_
              (let* ((_%mix91156%_ __object-eq-hash-next)
                     (_%ptr91158%_ (##type-cast _%obj91151%_ '0))
                     (_%h91160%_
                      (fxand (fxxor _%mix91156%_ _%ptr91158%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e91163%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e91163%_ _%$e91163%_ '0)))
                (gc-table-set! __object-eq-hash _%obj91151%_ _%h91160%_)
                _%h91160%_)))))))
