(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712697254)
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
      (lambda (_%tab90375%_)
        (##unchecked-structure-ref
         _%tab90375%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab90373%_)
        (##unchecked-structure-ref
         _%tab90373%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab90371%_)
        (##unchecked-structure-ref
         _%tab90371%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab90369%_)
        (##unchecked-structure-ref
         _%tab90369%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab90367%_)
        (##unchecked-structure-ref
         _%tab90367%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab90365%_)
        (##unchecked-structure-ref
         _%tab90365%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab90362%_ _%val90363%_)
        (##unchecked-structure-set!
         _%tab90362%_
         _%val90363%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab90359%_ _%val90360%_)
        (##unchecked-structure-set!
         _%tab90359%_
         _%val90360%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab90356%_ _%val90357%_)
        (##unchecked-structure-set!
         _%tab90356%_
         _%val90357%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab90353%_ _%val90354%_)
        (##unchecked-structure-set!
         _%tab90353%_
         _%val90354%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab90350%_ _%val90351%_)
        (##unchecked-structure-set!
         _%tab90350%_
         _%val90351%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab90347%_ _%val90348%_)
        (##unchecked-structure-set!
         _%tab90347%_
         _%val90348%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint90345%_)
        (if (and (fixnum? _%size-hint90345%_) (##fx> _%size-hint90345%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint90345%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint90321%_ _%hash90322%_ _%test90323%_ _%seed90324%_)
        (let* ((_%size90326%_ (raw-table-size-hint->size _%size-hint90321%_))
               (_%table90328%_
                (##make-vector _%size90326%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table90328%_
           '0
           (##fxquotient _%size90326%_ '2)
           _%hash90322%_
           _%test90323%_
           _%seed90324%_))))
    (define make-raw-table__0
      (lambda (_%size-hint90334%_ _%hash90335%_ _%test90336%_)
        (let ((_%seed90338%_ '0))
          (make-raw-table__%
           _%size-hint90334%_
           _%hash90335%_
           _%test90336%_
           _%seed90338%_))))
    (define make-raw-table
      (lambda _g90377_
        (let ((_g90376_ (##length _g90377_)))
          (cond ((##fx= _g90376_ 3) (apply make-raw-table__0 _g90377_))
                ((##fx= _g90376_ 4) (apply make-raw-table__% _g90377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g90377_))))))
    (define raw-table-ref
      (lambda (_%tab90272%_ _%key90273%_ _%default90274%_)
        (let ((_%table90276%_ (&raw-table-table _%tab90272%_))
              (_%seed90277%_ (&raw-table-seed _%tab90272%_))
              (_%hash90278%_ (&raw-table-hash _%tab90272%_))
              (_%test90279%_ (&raw-table-test _%tab90272%_)))
          (let* ((_%h90281%_
                  (fxxor (_%hash90278%_ _%key90273%_) _%seed90277%_))
                 (_%size90284%_ (vector-length _%table90276%_))
                 (_%entries90287%_ (##fxquotient _%size90284%_ '2))
                 (_%start90290%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90281%_ _%entries90287%_)
                   '1)))
            (let _%loop90294%_ ((_%probe90297%_ _%start90290%_)
                                (_%i90299%_ '1)
                                (_%deleted90301%_ '#f))
              (let ((_%k90304%_ (vector-ref _%table90276%_ _%probe90297%_)))
                (if (eq? _%k90304%_ (macro-unused-obj))
                    _%default90274%_
                    (if (eq? _%k90304%_ (macro-deleted-obj))
                        (_%loop90294%_
                         (let ((_%next-probe90309%_
                                (fx+ _%start90290%_
                                     _%i90299%_
                                     (fx* _%i90299%_ _%i90299%_))))
                           (##fxmodulo _%next-probe90309%_ _%size90284%_))
                         (##fx+ _%i90299%_ '1)
                         (let ((_%$e90312%_ _%deleted90301%_))
                           (if _%$e90312%_ _%$e90312%_ _%probe90297%_)))
                        (if (_%test90279%_ _%key90273%_ _%k90304%_)
                            (vector-ref
                             _%table90276%_
                             (##fx+ _%probe90297%_ '1))
                            (_%loop90294%_
                             (let ((_%next-probe90317%_
                                    (fx+ _%start90290%_
                                         _%i90299%_
                                         (fx* _%i90299%_ _%i90299%_))))
                               (##fxmodulo _%next-probe90317%_ _%size90284%_))
                             (##fx+ _%i90299%_ '1)
                             _%deleted90301%_))))))))))
    (define raw-table-set!
      (lambda (_%tab90268%_ _%key90269%_ _%value90270%_)
        (if (##fx< (&raw-table-free _%tab90268%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90268%_))
                    '4))
            (__raw-table-rehash! _%tab90268%_)
            '#!void)
        (__raw-table-set! _%tab90268%_ _%key90269%_ _%value90270%_)))
    (define raw-table-update!
      (lambda (_%tab90263%_ _%key90264%_ _%update90265%_ _%default90266%_)
        (if (##fx< (&raw-table-free _%tab90263%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90263%_))
                    '4))
            (__raw-table-rehash! _%tab90263%_)
            '#!void)
        (__raw-table-update!
         _%tab90263%_
         _%key90264%_
         _%update90265%_
         _%default90266%_)))
    (define raw-table-delete!
      (lambda (_%tab90220%_ _%key90221%_)
        (let ((_%table90223%_ (&raw-table-table _%tab90220%_))
              (_%seed90224%_ (&raw-table-seed _%tab90220%_))
              (_%hash90225%_ (&raw-table-hash _%tab90220%_))
              (_%test90226%_ (&raw-table-test _%tab90220%_)))
          (let* ((_%h90228%_
                  (fxxor (_%hash90225%_ _%key90221%_) _%seed90224%_))
                 (_%size90231%_ (vector-length _%table90223%_))
                 (_%entries90234%_ (##fxquotient _%size90231%_ '2))
                 (_%start90237%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90228%_ _%entries90234%_)
                   '1)))
            (let _%loop90241%_ ((_%probe90244%_ _%start90237%_)
                                (_%i90246%_ '1))
              (let ((_%k90249%_ (vector-ref _%table90223%_ _%probe90244%_)))
                (if (eq? _%k90249%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90249%_ (macro-deleted-obj))
                        (_%loop90241%_
                         (let ((_%next-probe90254%_
                                (fx+ _%start90237%_
                                     _%i90246%_
                                     (fx* _%i90246%_ _%i90246%_))))
                           (##fxmodulo _%next-probe90254%_ _%size90231%_))
                         (##fx+ _%i90246%_ '1))
                        (if (_%test90226%_ _%key90221%_ _%k90249%_)
                            (let ()
                              (vector-set!
                               _%table90223%_
                               _%probe90244%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90223%_
                               (##fx+ _%probe90244%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90220%_
                                  (##fx- (&raw-table-count _%tab90220%_)
                                         '1)))))
                            (_%loop90241%_
                             (let ((_%next-probe90260%_
                                    (fx+ _%start90237%_
                                         _%i90246%_
                                         (fx* _%i90246%_ _%i90246%_))))
                               (##fxmodulo _%next-probe90260%_ _%size90231%_))
                             (##fx+ _%i90246%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab90204%_ _%proc90205%_)
        (let* ((_%table90207%_ (&raw-table-table _%tab90204%_))
               (_%size90209%_ (vector-length _%table90207%_)))
          (let _%loop90212%_ ((_%i90214%_ '0))
            (if (##fx< _%i90214%_ _%size90209%_)
                (begin
                  (let ((_%key90216%_ (vector-ref _%table90207%_ _%i90214%_)))
                    (if (and (not (eq? _%key90216%_ (macro-unused-obj)))
                             (not (eq? _%key90216%_ (macro-deleted-obj))))
                        (let ((_%value90218%_
                               (vector-ref
                                _%table90207%_
                                (##fx+ _%i90214%_ '1))))
                          (_%proc90205%_ _%key90216%_ _%value90218%_))
                        '#!void))
                  (_%loop90212%_ (##fx+ _%i90214%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab90200%_)
        (let ((_%new-tab90202%_ (##structure-copy _%tab90200%_)))
          (&raw-table-table-set!
           _%new-tab90202%_
           (vector-copy (&raw-table-table _%tab90200%_)))
          _%new-tab90202%_)))
    (define raw-table-clear!
      (lambda (_%tab90198%_)
        (vector-fill! (&raw-table-table _%tab90198%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab90198%_ '0)
        (&raw-table-free-set!
         _%tab90198%_
         (##fxquotient (vector-length (&raw-table-table _%tab90198%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab90148%_ _%key90149%_ _%value90150%_)
        (let ((_%table90152%_ (&raw-table-table _%tab90148%_))
              (_%seed90153%_ (&raw-table-seed _%tab90148%_))
              (_%hash90154%_ (&raw-table-hash _%tab90148%_))
              (_%test90155%_ (&raw-table-test _%tab90148%_)))
          (let* ((_%h90157%_
                  (fxxor (_%hash90154%_ _%key90149%_) _%seed90153%_))
                 (_%size90160%_ (vector-length _%table90152%_))
                 (_%entries90163%_ (##fxquotient _%size90160%_ '2))
                 (_%start90166%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90157%_ _%entries90163%_)
                   '1)))
            (let _%loop90170%_ ((_%probe90173%_ _%start90166%_)
                                (_%i90175%_ '1)
                                (_%deleted90177%_ '#f))
              (let ((_%k90180%_ (vector-ref _%table90152%_ _%probe90173%_)))
                (if (eq? _%k90180%_ (macro-unused-obj))
                    (if _%deleted90177%_
                        (begin
                          (vector-set!
                           _%table90152%_
                           _%deleted90177%_
                           _%key90149%_)
                          (vector-set!
                           _%table90152%_
                           (##fx+ _%deleted90177%_ '1)
                           _%value90150%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90148%_
                              (##fx+ (&raw-table-count _%tab90148%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90152%_
                           _%probe90173%_
                           _%key90149%_)
                          (vector-set!
                           _%table90152%_
                           (##fx+ _%probe90173%_ '1)
                           _%value90150%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90148%_
                              (##fx- (&raw-table-free _%tab90148%_) '1))
                             (&raw-table-count-set!
                              _%tab90148%_
                              (##fx+ (&raw-table-count _%tab90148%_) '1))))))
                    (if (eq? _%k90180%_ (macro-deleted-obj))
                        (_%loop90170%_
                         (let ((_%next-probe90187%_
                                (fx+ _%start90166%_
                                     _%i90175%_
                                     (fx* _%i90175%_ _%i90175%_))))
                           (##fxmodulo _%next-probe90187%_ _%size90160%_))
                         (##fx+ _%i90175%_ '1)
                         (let ((_%$e90190%_ _%deleted90177%_))
                           (if _%$e90190%_ _%$e90190%_ _%probe90173%_)))
                        (if (_%test90155%_ _%key90149%_ _%k90180%_)
                            (let ()
                              (vector-set!
                               _%table90152%_
                               _%probe90173%_
                               _%key90149%_)
                              (vector-set!
                               _%table90152%_
                               (##fx+ _%probe90173%_ '1)
                               _%value90150%_))
                            (_%loop90170%_
                             (let ((_%next-probe90195%_
                                    (fx+ _%start90166%_
                                         _%i90175%_
                                         (fx* _%i90175%_ _%i90175%_))))
                               (##fxmodulo _%next-probe90195%_ _%size90160%_))
                             (##fx+ _%i90175%_ '1)
                             _%deleted90177%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab90097%_ _%key90098%_ _%update90099%_ _%default90100%_)
        (let ((_%table90102%_ (&raw-table-table _%tab90097%_))
              (_%seed90103%_ (&raw-table-seed _%tab90097%_))
              (_%hash90104%_ (&raw-table-hash _%tab90097%_))
              (_%test90105%_ (&raw-table-test _%tab90097%_)))
          (let* ((_%h90107%_
                  (fxxor (_%hash90104%_ _%key90098%_) _%seed90103%_))
                 (_%size90110%_ (vector-length _%table90102%_))
                 (_%entries90113%_ (##fxquotient _%size90110%_ '2))
                 (_%start90116%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90107%_ _%entries90113%_)
                   '1)))
            (let _%loop90120%_ ((_%probe90123%_ _%start90116%_)
                                (_%i90125%_ '1)
                                (_%deleted90127%_ '#f))
              (let ((_%k90130%_ (vector-ref _%table90102%_ _%probe90123%_)))
                (if (eq? _%k90130%_ (macro-unused-obj))
                    (if _%deleted90127%_
                        (begin
                          (vector-set!
                           _%table90102%_
                           _%deleted90127%_
                           _%key90098%_)
                          (vector-set!
                           _%table90102%_
                           (##fx+ _%deleted90127%_ '1)
                           (_%update90099%_ _%default90100%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90097%_
                              (##fx+ (&raw-table-count _%tab90097%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90102%_
                           _%probe90123%_
                           _%key90098%_)
                          (vector-set!
                           _%table90102%_
                           (##fx+ _%probe90123%_ '1)
                           (_%update90099%_ _%default90100%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90097%_
                              (##fx- (&raw-table-free _%tab90097%_) '1))
                             (&raw-table-count-set!
                              _%tab90097%_
                              (##fx+ (&raw-table-count _%tab90097%_) '1))))))
                    (if (eq? _%k90130%_ (macro-deleted-obj))
                        (_%loop90120%_
                         (let ((_%next-probe90137%_
                                (fx+ _%start90116%_
                                     _%i90125%_
                                     (fx* _%i90125%_ _%i90125%_))))
                           (##fxmodulo _%next-probe90137%_ _%size90110%_))
                         (##fx+ _%i90125%_ '1)
                         (let ((_%$e90140%_ _%deleted90127%_))
                           (if _%$e90140%_ _%$e90140%_ _%probe90123%_)))
                        (if (_%test90105%_ _%key90098%_ _%k90130%_)
                            (let ()
                              (vector-set!
                               _%table90102%_
                               _%probe90123%_
                               _%key90098%_)
                              (vector-set!
                               _%table90102%_
                               (##fx+ _%probe90123%_ '1)
                               (_%update90099%_
                                (vector-ref
                                 _%table90102%_
                                 (##fx+ _%probe90123%_ '1)))))
                            (_%loop90120%_
                             (let ((_%next-probe90145%_
                                    (fx+ _%start90116%_
                                         _%i90125%_
                                         (fx* _%i90125%_ _%i90125%_))))
                               (##fxmodulo _%next-probe90145%_ _%size90110%_))
                             (##fx+ _%i90125%_ '1)
                             _%deleted90127%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab90078%_)
        (let* ((_%old-table90080%_ (&raw-table-table _%tab90078%_))
               (_%old-size90082%_ (vector-length _%old-table90080%_))
               (_%new-size90084%_
                (if (##fx< (&raw-table-count _%tab90078%_)
                           (##fxquotient _%old-size90082%_ '4))
                    (vector-length _%old-table90080%_)
                    (##fx* '2 (vector-length _%old-table90080%_))))
               (_%new-table90086%_
                (##make-vector _%new-size90084%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab90078%_ _%new-table90086%_)
          (&raw-table-count-set! _%tab90078%_ '0)
          (&raw-table-free-set!
           _%tab90078%_
           (##fxquotient _%new-size90084%_ '2))
          (let _%lp90089%_ ((_%i90091%_ '0))
            (if (##fx< _%i90091%_ _%old-size90082%_)
                (begin
                  (let ((_%key90093%_
                         (vector-ref _%old-table90080%_ _%i90091%_)))
                    (if (and (not (eq? _%key90093%_ (macro-unused-obj)))
                             (not (eq? _%key90093%_ (macro-deleted-obj))))
                        (let ((_%value90095%_
                               (vector-ref
                                _%old-table90080%_
                                (##fx+ _%i90091%_ '1))))
                          (__raw-table-set!
                           _%tab90078%_
                           _%key90093%_
                           _%value90095%_))
                        '#!void))
                  (_%lp90089%_ (##fx+ _%i90091%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj90070%_)
        (let ((_%t90072%_ (##type _%obj90070%_)))
          (if (##fx= (##fxand _%t90072%_ '1) '0)
              (fxand (##type-cast _%obj90070%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj90070%_)
                  (symbolic-hash _%obj90070%_)
                  (if (procedure? _%obj90070%_)
                      (procedure-hash _%obj90070%_)
                      (fxand (__eq-hash _%obj90070%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj90066%_)
        (let ((_%h90068%_
               (if (##closure? _%obj90066%_)
                   (__eq-hash _%obj90066%_)
                   (##type-cast _%obj90066%_ '0))))
          (fxand _%h90068%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj90063%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj90063%_)))
    (define eqv-hash
      (lambda (_%obj90053%_)
        (letrec ((_%combine90055%_
                  (lambda (_%a90060%_ _%b90061%_)
                    (fxand (##fx* (##fx+ _%a90060%_
                                         (fxarithmetic-shift-left
                                          _%b90061%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash90056%_
                  (lambda (_%obj90058%_)
                    (macro-number-dispatch
                     _%obj90058%_
                     (eq-hash _%obj90058%_)
                     (fxand _%obj90058%_ (macro-max-fixnum32))
                     (modulo _%obj90058%_ '331804481)
                     (_%combine90055%_
                      (_%hash90056%_ (macro-ratnum-numerator _%obj90058%_))
                      (_%hash90056%_ (macro-ratnum-denominator _%obj90058%_)))
                     (_%combine90055%_
                      (##u16vector-ref _%obj90058%_ '0)
                      (_%combine90055%_
                       (##u16vector-ref _%obj90058%_ '1)
                       (_%combine90055%_
                        (##u16vector-ref _%obj90058%_ '2)
                        (##u16vector-ref _%obj90058%_ '3))))
                     (_%combine90055%_
                      (_%hash90056%_ (macro-cpxnum-real _%obj90058%_))
                      (_%hash90056%_ (macro-cpxnum-imag _%obj90058%_)))))))
          (_%hash90056%_ _%obj90053%_))))
    (define symbolic?
      (lambda (_%obj90048%_)
        (let ((_%$e90050%_ (symbol? _%obj90048%_)))
          (if _%$e90050%_ _%$e90050%_ (keyword? _%obj90048%_)))))
    (define symbolic-hash (lambda (_%obj90046%_) (macro-slot '1 _%obj90046%_)))
    (define string-hash (lambda (_%obj90044%_) (##string=?-hash _%obj90044%_)))
    (define immediate-hash
      (lambda (_%obj90042%_) (##type-cast _%obj90042%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint90023%_ _%seed90025%_)
        (make-raw-table__% _%size-hint90023%_ eq-hash eq? _%seed90025%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint90031%_ '#f) (_%seed90033%_ '0))
          (make-eq-table__% _%size-hint90031%_ _%seed90033%_))))
    (define make-eq-table__1
      (lambda (_%size-hint90035%_)
        (let ((_%seed90037%_ '0))
          (make-eq-table__% _%size-hint90035%_ _%seed90037%_))))
    (define make-eq-table
      (lambda _g90379_
        (let ((_g90378_ (##length _g90379_)))
          (cond ((##fx= _g90378_ 0) (apply make-eq-table__0 _g90379_))
                ((##fx= _g90378_ 1) (apply make-eq-table__1 _g90379_))
                ((##fx= _g90378_ 2) (apply make-eq-table__% _g90379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g90379_))))))
    (define eq-table-ref
      (lambda (_%tab89976%_ _%key89977%_ _%default89978%_)
        (let ((_%table89980%_ (&raw-table-table _%tab89976%_))
              (_%seed89981%_ (&raw-table-seed _%tab89976%_)))
          (let* ((_%h89983%_ (fxxor (eq-hash _%key89977%_) _%seed89981%_))
                 (_%size89986%_ (vector-length _%table89980%_))
                 (_%entries89989%_ (##fxquotient _%size89986%_ '2))
                 (_%start89992%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89983%_ _%entries89989%_)
                   '1)))
            (let _%loop89996%_ ((_%probe89999%_ _%start89992%_)
                                (_%i90001%_ '1)
                                (_%deleted90003%_ '#f))
              (let ((_%k90006%_ (vector-ref _%table89980%_ _%probe89999%_)))
                (if (eq? _%k90006%_ (macro-unused-obj))
                    _%default89978%_
                    (if (eq? _%k90006%_ (macro-deleted-obj))
                        (_%loop89996%_
                         (let ((_%next-probe90011%_
                                (fx+ _%start89992%_
                                     _%i90001%_
                                     (fx* _%i90001%_ _%i90001%_))))
                           (##fxmodulo _%next-probe90011%_ _%size89986%_))
                         (##fx+ _%i90001%_ '1)
                         (let ((_%$e90014%_ _%deleted90003%_))
                           (if _%$e90014%_ _%$e90014%_ _%probe89999%_)))
                        (if (eq? _%key89977%_ _%k90006%_)
                            (vector-ref
                             _%table89980%_
                             (##fx+ _%probe89999%_ '1))
                            (_%loop89996%_
                             (let ((_%next-probe90019%_
                                    (fx+ _%start89992%_
                                         _%i90001%_
                                         (fx* _%i90001%_ _%i90001%_))))
                               (##fxmodulo _%next-probe90019%_ _%size89986%_))
                             (##fx+ _%i90001%_ '1)
                             _%deleted90003%_))))))))))
    (define eq-table-set!
      (lambda (_%tab89972%_ _%key89973%_ _%value89974%_)
        (if (##fx< (&raw-table-free _%tab89972%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89972%_))
                    '4))
            (__raw-table-rehash! _%tab89972%_)
            '#!void)
        (__eq-table-set! _%tab89972%_ _%key89973%_ _%value89974%_)))
    (define __eq-table-set!
      (lambda (_%tab89923%_ _%key89924%_ _%value89925%_)
        (let ((_%table89928%_ (&raw-table-table _%tab89923%_))
              (_%seed89929%_ (&raw-table-seed _%tab89923%_)))
          (let* ((_%h89931%_ (fxxor (eq-hash _%key89924%_) _%seed89929%_))
                 (_%size89934%_ (vector-length _%table89928%_))
                 (_%entries89937%_ (##fxquotient _%size89934%_ '2))
                 (_%start89940%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89931%_ _%entries89937%_)
                   '1)))
            (let _%loop89944%_ ((_%probe89947%_ _%start89940%_)
                                (_%i89949%_ '1)
                                (_%deleted89951%_ '#f))
              (let ((_%k89954%_ (vector-ref _%table89928%_ _%probe89947%_)))
                (if (eq? _%k89954%_ (macro-unused-obj))
                    (if _%deleted89951%_
                        (begin
                          (vector-set!
                           _%table89928%_
                           _%deleted89951%_
                           _%key89924%_)
                          (vector-set!
                           _%table89928%_
                           (##fx+ _%deleted89951%_ '1)
                           _%value89925%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89923%_
                              (##fx+ (&raw-table-count _%tab89923%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89928%_
                           _%probe89947%_
                           _%key89924%_)
                          (vector-set!
                           _%table89928%_
                           (##fx+ _%probe89947%_ '1)
                           _%value89925%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89923%_
                              (##fx- (&raw-table-free _%tab89923%_) '1))
                             (&raw-table-count-set!
                              _%tab89923%_
                              (##fx+ (&raw-table-count _%tab89923%_) '1))))))
                    (if (eq? _%k89954%_ (macro-deleted-obj))
                        (_%loop89944%_
                         (let ((_%next-probe89961%_
                                (fx+ _%start89940%_
                                     _%i89949%_
                                     (fx* _%i89949%_ _%i89949%_))))
                           (##fxmodulo _%next-probe89961%_ _%size89934%_))
                         (##fx+ _%i89949%_ '1)
                         (let ((_%$e89964%_ _%deleted89951%_))
                           (if _%$e89964%_ _%$e89964%_ _%probe89947%_)))
                        (if (eq? _%key89924%_ _%k89954%_)
                            (let ()
                              (vector-set!
                               _%table89928%_
                               _%probe89947%_
                               _%key89924%_)
                              (vector-set!
                               _%table89928%_
                               (##fx+ _%probe89947%_ '1)
                               _%value89925%_))
                            (_%loop89944%_
                             (let ((_%next-probe89969%_
                                    (fx+ _%start89940%_
                                         _%i89949%_
                                         (fx* _%i89949%_ _%i89949%_))))
                               (##fxmodulo _%next-probe89969%_ _%size89934%_))
                             (##fx+ _%i89949%_ '1)
                             _%deleted89951%_))))))))))
    (define eq-table-update!
      (lambda (_%tab89918%_
               _%key89919%_
               _%eq-table-update!89920%_
               _%default89921%_)
        (if (##fx< (&raw-table-free _%tab89918%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89918%_))
                    '4))
            (__raw-table-rehash! _%tab89918%_)
            '#!void)
        (__eq-table-update!
         _%tab89918%_
         _%key89919%_
         _%eq-table-update!89920%_
         _%default89921%_)))
    (define __eq-table-update!
      (lambda (_%tab89868%_
               _%key89869%_
               _%eq-table-update!89870%_
               _%default89871%_)
        (let ((_%table89874%_ (&raw-table-table _%tab89868%_))
              (_%seed89875%_ (&raw-table-seed _%tab89868%_)))
          (let* ((_%h89877%_ (fxxor (eq-hash _%key89869%_) _%seed89875%_))
                 (_%size89880%_ (vector-length _%table89874%_))
                 (_%entries89883%_ (##fxquotient _%size89880%_ '2))
                 (_%start89886%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89877%_ _%entries89883%_)
                   '1)))
            (let _%loop89890%_ ((_%probe89893%_ _%start89886%_)
                                (_%i89895%_ '1)
                                (_%deleted89897%_ '#f))
              (let ((_%k89900%_ (vector-ref _%table89874%_ _%probe89893%_)))
                (if (eq? _%k89900%_ (macro-unused-obj))
                    (if _%deleted89897%_
                        (begin
                          (vector-set!
                           _%table89874%_
                           _%deleted89897%_
                           _%key89869%_)
                          (vector-set!
                           _%table89874%_
                           (##fx+ _%deleted89897%_ '1)
                           (_%eq-table-update!89870%_ _%default89871%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89868%_
                              (##fx+ (&raw-table-count _%tab89868%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89874%_
                           _%probe89893%_
                           _%key89869%_)
                          (vector-set!
                           _%table89874%_
                           (##fx+ _%probe89893%_ '1)
                           (_%eq-table-update!89870%_ _%default89871%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89868%_
                              (##fx- (&raw-table-free _%tab89868%_) '1))
                             (&raw-table-count-set!
                              _%tab89868%_
                              (##fx+ (&raw-table-count _%tab89868%_) '1))))))
                    (if (eq? _%k89900%_ (macro-deleted-obj))
                        (_%loop89890%_
                         (let ((_%next-probe89907%_
                                (fx+ _%start89886%_
                                     _%i89895%_
                                     (fx* _%i89895%_ _%i89895%_))))
                           (##fxmodulo _%next-probe89907%_ _%size89880%_))
                         (##fx+ _%i89895%_ '1)
                         (let ((_%$e89910%_ _%deleted89897%_))
                           (if _%$e89910%_ _%$e89910%_ _%probe89893%_)))
                        (if (eq? _%key89869%_ _%k89900%_)
                            (let ()
                              (vector-set!
                               _%table89874%_
                               _%probe89893%_
                               _%key89869%_)
                              (vector-set!
                               _%table89874%_
                               (##fx+ _%probe89893%_ '1)
                               (_%eq-table-update!89870%_
                                (vector-ref
                                 _%table89874%_
                                 (##fx+ _%probe89893%_ '1)))))
                            (_%loop89890%_
                             (let ((_%next-probe89915%_
                                    (fx+ _%start89886%_
                                         _%i89895%_
                                         (fx* _%i89895%_ _%i89895%_))))
                               (##fxmodulo _%next-probe89915%_ _%size89880%_))
                             (##fx+ _%i89895%_ '1)
                             _%deleted89897%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab89823%_ _%key89825%_)
        (let ((_%table89828%_ (&raw-table-table _%tab89823%_))
              (_%seed89830%_ (&raw-table-seed _%tab89823%_)))
          (let* ((_%h89833%_ (fxxor (eq-hash _%key89825%_) _%seed89830%_))
                 (_%size89836%_ (vector-length _%table89828%_))
                 (_%entries89839%_ (##fxquotient _%size89836%_ '2))
                 (_%start89842%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89833%_ _%entries89839%_)
                   '1)))
            (let _%loop89846%_ ((_%probe89849%_ _%start89842%_)
                                (_%i89851%_ '1))
              (let ((_%k89854%_ (vector-ref _%table89828%_ _%probe89849%_)))
                (if (eq? _%k89854%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k89854%_ (macro-deleted-obj))
                        (_%loop89846%_
                         (let ((_%next-probe89859%_
                                (fx+ _%start89842%_
                                     _%i89851%_
                                     (fx* _%i89851%_ _%i89851%_))))
                           (##fxmodulo _%next-probe89859%_ _%size89836%_))
                         (##fx+ _%i89851%_ '1))
                        (if (eq? _%key89825%_ _%k89854%_)
                            (let ()
                              (vector-set!
                               _%table89828%_
                               _%probe89849%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89828%_
                               (##fx+ _%probe89849%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89823%_
                                  (##fx- (&raw-table-count _%tab89823%_)
                                         '1)))))
                            (_%loop89846%_
                             (let ((_%next-probe89865%_
                                    (fx+ _%start89842%_
                                         _%i89851%_
                                         (fx* _%i89851%_ _%i89851%_))))
                               (##fxmodulo _%next-probe89865%_ _%size89836%_))
                             (##fx+ _%i89851%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint89804%_ _%seed89806%_)
        (make-raw-table__% _%size-hint89804%_ eqv-hash eqv? _%seed89806%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint89812%_ '#f) (_%seed89814%_ '0))
          (make-eqv-table__% _%size-hint89812%_ _%seed89814%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint89816%_)
        (let ((_%seed89818%_ '0))
          (make-eqv-table__% _%size-hint89816%_ _%seed89818%_))))
    (define make-eqv-table
      (lambda _g90381_
        (let ((_g90380_ (##length _g90381_)))
          (cond ((##fx= _g90380_ 0) (apply make-eqv-table__0 _g90381_))
                ((##fx= _g90380_ 1) (apply make-eqv-table__1 _g90381_))
                ((##fx= _g90380_ 2) (apply make-eqv-table__% _g90381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g90381_))))))
    (define eqv-table-ref
      (lambda (_%tab89757%_ _%key89758%_ _%default89759%_)
        (let ((_%table89761%_ (&raw-table-table _%tab89757%_))
              (_%seed89762%_ (&raw-table-seed _%tab89757%_)))
          (let* ((_%h89764%_ (fxxor (eqv-hash _%key89758%_) _%seed89762%_))
                 (_%size89767%_ (vector-length _%table89761%_))
                 (_%entries89770%_ (##fxquotient _%size89767%_ '2))
                 (_%start89773%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89764%_ _%entries89770%_)
                   '1)))
            (let _%loop89777%_ ((_%probe89780%_ _%start89773%_)
                                (_%i89782%_ '1)
                                (_%deleted89784%_ '#f))
              (let ((_%k89787%_ (vector-ref _%table89761%_ _%probe89780%_)))
                (if (eq? _%k89787%_ (macro-unused-obj))
                    _%default89759%_
                    (if (eq? _%k89787%_ (macro-deleted-obj))
                        (_%loop89777%_
                         (let ((_%next-probe89792%_
                                (fx+ _%start89773%_
                                     _%i89782%_
                                     (fx* _%i89782%_ _%i89782%_))))
                           (##fxmodulo _%next-probe89792%_ _%size89767%_))
                         (##fx+ _%i89782%_ '1)
                         (let ((_%$e89795%_ _%deleted89784%_))
                           (if _%$e89795%_ _%$e89795%_ _%probe89780%_)))
                        (if (eqv? _%key89758%_ _%k89787%_)
                            (vector-ref
                             _%table89761%_
                             (##fx+ _%probe89780%_ '1))
                            (_%loop89777%_
                             (let ((_%next-probe89800%_
                                    (fx+ _%start89773%_
                                         _%i89782%_
                                         (fx* _%i89782%_ _%i89782%_))))
                               (##fxmodulo _%next-probe89800%_ _%size89767%_))
                             (##fx+ _%i89782%_ '1)
                             _%deleted89784%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab89753%_ _%key89754%_ _%value89755%_)
        (if (##fx< (&raw-table-free _%tab89753%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89753%_))
                    '4))
            (__raw-table-rehash! _%tab89753%_)
            '#!void)
        (__eqv-table-set! _%tab89753%_ _%key89754%_ _%value89755%_)))
    (define __eqv-table-set!
      (lambda (_%tab89704%_ _%key89705%_ _%value89706%_)
        (let ((_%table89709%_ (&raw-table-table _%tab89704%_))
              (_%seed89710%_ (&raw-table-seed _%tab89704%_)))
          (let* ((_%h89712%_ (fxxor (eqv-hash _%key89705%_) _%seed89710%_))
                 (_%size89715%_ (vector-length _%table89709%_))
                 (_%entries89718%_ (##fxquotient _%size89715%_ '2))
                 (_%start89721%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89712%_ _%entries89718%_)
                   '1)))
            (let _%loop89725%_ ((_%probe89728%_ _%start89721%_)
                                (_%i89730%_ '1)
                                (_%deleted89732%_ '#f))
              (let ((_%k89735%_ (vector-ref _%table89709%_ _%probe89728%_)))
                (if (eq? _%k89735%_ (macro-unused-obj))
                    (if _%deleted89732%_
                        (begin
                          (vector-set!
                           _%table89709%_
                           _%deleted89732%_
                           _%key89705%_)
                          (vector-set!
                           _%table89709%_
                           (##fx+ _%deleted89732%_ '1)
                           _%value89706%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89704%_
                              (##fx+ (&raw-table-count _%tab89704%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89709%_
                           _%probe89728%_
                           _%key89705%_)
                          (vector-set!
                           _%table89709%_
                           (##fx+ _%probe89728%_ '1)
                           _%value89706%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89704%_
                              (##fx- (&raw-table-free _%tab89704%_) '1))
                             (&raw-table-count-set!
                              _%tab89704%_
                              (##fx+ (&raw-table-count _%tab89704%_) '1))))))
                    (if (eq? _%k89735%_ (macro-deleted-obj))
                        (_%loop89725%_
                         (let ((_%next-probe89742%_
                                (fx+ _%start89721%_
                                     _%i89730%_
                                     (fx* _%i89730%_ _%i89730%_))))
                           (##fxmodulo _%next-probe89742%_ _%size89715%_))
                         (##fx+ _%i89730%_ '1)
                         (let ((_%$e89745%_ _%deleted89732%_))
                           (if _%$e89745%_ _%$e89745%_ _%probe89728%_)))
                        (if (eqv? _%key89705%_ _%k89735%_)
                            (let ()
                              (vector-set!
                               _%table89709%_
                               _%probe89728%_
                               _%key89705%_)
                              (vector-set!
                               _%table89709%_
                               (##fx+ _%probe89728%_ '1)
                               _%value89706%_))
                            (_%loop89725%_
                             (let ((_%next-probe89750%_
                                    (fx+ _%start89721%_
                                         _%i89730%_
                                         (fx* _%i89730%_ _%i89730%_))))
                               (##fxmodulo _%next-probe89750%_ _%size89715%_))
                             (##fx+ _%i89730%_ '1)
                             _%deleted89732%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab89699%_
               _%key89700%_
               _%eqv-table-update!89701%_
               _%default89702%_)
        (if (##fx< (&raw-table-free _%tab89699%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89699%_))
                    '4))
            (__raw-table-rehash! _%tab89699%_)
            '#!void)
        (__eqv-table-update!
         _%tab89699%_
         _%key89700%_
         _%eqv-table-update!89701%_
         _%default89702%_)))
    (define __eqv-table-update!
      (lambda (_%tab89649%_
               _%key89650%_
               _%eqv-table-update!89651%_
               _%default89652%_)
        (let ((_%table89655%_ (&raw-table-table _%tab89649%_))
              (_%seed89656%_ (&raw-table-seed _%tab89649%_)))
          (let* ((_%h89658%_ (fxxor (eqv-hash _%key89650%_) _%seed89656%_))
                 (_%size89661%_ (vector-length _%table89655%_))
                 (_%entries89664%_ (##fxquotient _%size89661%_ '2))
                 (_%start89667%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89658%_ _%entries89664%_)
                   '1)))
            (let _%loop89671%_ ((_%probe89674%_ _%start89667%_)
                                (_%i89676%_ '1)
                                (_%deleted89678%_ '#f))
              (let ((_%k89681%_ (vector-ref _%table89655%_ _%probe89674%_)))
                (if (eq? _%k89681%_ (macro-unused-obj))
                    (if _%deleted89678%_
                        (begin
                          (vector-set!
                           _%table89655%_
                           _%deleted89678%_
                           _%key89650%_)
                          (vector-set!
                           _%table89655%_
                           (##fx+ _%deleted89678%_ '1)
                           (_%eqv-table-update!89651%_ _%default89652%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89649%_
                              (##fx+ (&raw-table-count _%tab89649%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89655%_
                           _%probe89674%_
                           _%key89650%_)
                          (vector-set!
                           _%table89655%_
                           (##fx+ _%probe89674%_ '1)
                           (_%eqv-table-update!89651%_ _%default89652%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89649%_
                              (##fx- (&raw-table-free _%tab89649%_) '1))
                             (&raw-table-count-set!
                              _%tab89649%_
                              (##fx+ (&raw-table-count _%tab89649%_) '1))))))
                    (if (eq? _%k89681%_ (macro-deleted-obj))
                        (_%loop89671%_
                         (let ((_%next-probe89688%_
                                (fx+ _%start89667%_
                                     _%i89676%_
                                     (fx* _%i89676%_ _%i89676%_))))
                           (##fxmodulo _%next-probe89688%_ _%size89661%_))
                         (##fx+ _%i89676%_ '1)
                         (let ((_%$e89691%_ _%deleted89678%_))
                           (if _%$e89691%_ _%$e89691%_ _%probe89674%_)))
                        (if (eqv? _%key89650%_ _%k89681%_)
                            (let ()
                              (vector-set!
                               _%table89655%_
                               _%probe89674%_
                               _%key89650%_)
                              (vector-set!
                               _%table89655%_
                               (##fx+ _%probe89674%_ '1)
                               (_%eqv-table-update!89651%_
                                (vector-ref
                                 _%table89655%_
                                 (##fx+ _%probe89674%_ '1)))))
                            (_%loop89671%_
                             (let ((_%next-probe89696%_
                                    (fx+ _%start89667%_
                                         _%i89676%_
                                         (fx* _%i89676%_ _%i89676%_))))
                               (##fxmodulo _%next-probe89696%_ _%size89661%_))
                             (##fx+ _%i89676%_ '1)
                             _%deleted89678%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab89604%_ _%key89606%_)
        (let ((_%table89609%_ (&raw-table-table _%tab89604%_))
              (_%seed89611%_ (&raw-table-seed _%tab89604%_)))
          (let* ((_%h89614%_ (fxxor (eqv-hash _%key89606%_) _%seed89611%_))
                 (_%size89617%_ (vector-length _%table89609%_))
                 (_%entries89620%_ (##fxquotient _%size89617%_ '2))
                 (_%start89623%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89614%_ _%entries89620%_)
                   '1)))
            (let _%loop89627%_ ((_%probe89630%_ _%start89623%_)
                                (_%i89632%_ '1))
              (let ((_%k89635%_ (vector-ref _%table89609%_ _%probe89630%_)))
                (if (eq? _%k89635%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k89635%_ (macro-deleted-obj))
                        (_%loop89627%_
                         (let ((_%next-probe89640%_
                                (fx+ _%start89623%_
                                     _%i89632%_
                                     (fx* _%i89632%_ _%i89632%_))))
                           (##fxmodulo _%next-probe89640%_ _%size89617%_))
                         (##fx+ _%i89632%_ '1))
                        (if (eqv? _%key89606%_ _%k89635%_)
                            (let ()
                              (vector-set!
                               _%table89609%_
                               _%probe89630%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89609%_
                               (##fx+ _%probe89630%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89604%_
                                  (##fx- (&raw-table-count _%tab89604%_)
                                         '1)))))
                            (_%loop89627%_
                             (let ((_%next-probe89646%_
                                    (fx+ _%start89623%_
                                         _%i89632%_
                                         (fx* _%i89632%_ _%i89632%_))))
                               (##fxmodulo _%next-probe89646%_ _%size89617%_))
                             (##fx+ _%i89632%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint89585%_ _%seed89587%_)
        (make-raw-table__%
         _%size-hint89585%_
         symbolic-hash
         eq?
         _%seed89587%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint89593%_ '#f) (_%seed89595%_ '0))
          (make-symbolic-table__% _%size-hint89593%_ _%seed89595%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint89597%_)
        (let ((_%seed89599%_ '0))
          (make-symbolic-table__% _%size-hint89597%_ _%seed89599%_))))
    (define make-symbolic-table
      (lambda _g90383_
        (let ((_g90382_ (##length _g90383_)))
          (cond ((##fx= _g90382_ 0) (apply make-symbolic-table__0 _g90383_))
                ((##fx= _g90382_ 1) (apply make-symbolic-table__1 _g90383_))
                ((##fx= _g90382_ 2) (apply make-symbolic-table__% _g90383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g90383_))))))
    (define symbolic-table-ref
      (lambda (_%tab89538%_ _%key89539%_ _%default89540%_)
        (let ((_%table89542%_ (&raw-table-table _%tab89538%_))
              (_%seed89543%_ (&raw-table-seed _%tab89538%_)))
          (let* ((_%h89545%_
                  (fxxor (symbolic-hash _%key89539%_) _%seed89543%_))
                 (_%size89548%_ (vector-length _%table89542%_))
                 (_%entries89551%_ (##fxquotient _%size89548%_ '2))
                 (_%start89554%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89545%_ _%entries89551%_)
                   '1)))
            (let _%loop89558%_ ((_%probe89561%_ _%start89554%_)
                                (_%i89563%_ '1)
                                (_%deleted89565%_ '#f))
              (let ((_%k89568%_ (vector-ref _%table89542%_ _%probe89561%_)))
                (if (eq? _%k89568%_ (macro-unused-obj))
                    _%default89540%_
                    (if (eq? _%k89568%_ (macro-deleted-obj))
                        (_%loop89558%_
                         (let ((_%next-probe89573%_
                                (fx+ _%start89554%_
                                     _%i89563%_
                                     (fx* _%i89563%_ _%i89563%_))))
                           (##fxmodulo _%next-probe89573%_ _%size89548%_))
                         (##fx+ _%i89563%_ '1)
                         (let ((_%$e89576%_ _%deleted89565%_))
                           (if _%$e89576%_ _%$e89576%_ _%probe89561%_)))
                        (if (eq? _%key89539%_ _%k89568%_)
                            (vector-ref
                             _%table89542%_
                             (##fx+ _%probe89561%_ '1))
                            (_%loop89558%_
                             (let ((_%next-probe89581%_
                                    (fx+ _%start89554%_
                                         _%i89563%_
                                         (fx* _%i89563%_ _%i89563%_))))
                               (##fxmodulo _%next-probe89581%_ _%size89548%_))
                             (##fx+ _%i89563%_ '1)
                             _%deleted89565%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab89534%_ _%key89535%_ _%value89536%_)
        (if (##fx< (&raw-table-free _%tab89534%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89534%_))
                    '4))
            (__raw-table-rehash! _%tab89534%_)
            '#!void)
        (__symbolic-table-set! _%tab89534%_ _%key89535%_ _%value89536%_)))
    (define __symbolic-table-set!
      (lambda (_%tab89485%_ _%key89486%_ _%value89487%_)
        (let ((_%table89490%_ (&raw-table-table _%tab89485%_))
              (_%seed89491%_ (&raw-table-seed _%tab89485%_)))
          (let* ((_%h89493%_
                  (fxxor (symbolic-hash _%key89486%_) _%seed89491%_))
                 (_%size89496%_ (vector-length _%table89490%_))
                 (_%entries89499%_ (##fxquotient _%size89496%_ '2))
                 (_%start89502%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89493%_ _%entries89499%_)
                   '1)))
            (let _%loop89506%_ ((_%probe89509%_ _%start89502%_)
                                (_%i89511%_ '1)
                                (_%deleted89513%_ '#f))
              (let ((_%k89516%_ (vector-ref _%table89490%_ _%probe89509%_)))
                (if (eq? _%k89516%_ (macro-unused-obj))
                    (if _%deleted89513%_
                        (begin
                          (vector-set!
                           _%table89490%_
                           _%deleted89513%_
                           _%key89486%_)
                          (vector-set!
                           _%table89490%_
                           (##fx+ _%deleted89513%_ '1)
                           _%value89487%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89485%_
                              (##fx+ (&raw-table-count _%tab89485%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89490%_
                           _%probe89509%_
                           _%key89486%_)
                          (vector-set!
                           _%table89490%_
                           (##fx+ _%probe89509%_ '1)
                           _%value89487%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89485%_
                              (##fx- (&raw-table-free _%tab89485%_) '1))
                             (&raw-table-count-set!
                              _%tab89485%_
                              (##fx+ (&raw-table-count _%tab89485%_) '1))))))
                    (if (eq? _%k89516%_ (macro-deleted-obj))
                        (_%loop89506%_
                         (let ((_%next-probe89523%_
                                (fx+ _%start89502%_
                                     _%i89511%_
                                     (fx* _%i89511%_ _%i89511%_))))
                           (##fxmodulo _%next-probe89523%_ _%size89496%_))
                         (##fx+ _%i89511%_ '1)
                         (let ((_%$e89526%_ _%deleted89513%_))
                           (if _%$e89526%_ _%$e89526%_ _%probe89509%_)))
                        (if (eq? _%key89486%_ _%k89516%_)
                            (let ()
                              (vector-set!
                               _%table89490%_
                               _%probe89509%_
                               _%key89486%_)
                              (vector-set!
                               _%table89490%_
                               (##fx+ _%probe89509%_ '1)
                               _%value89487%_))
                            (_%loop89506%_
                             (let ((_%next-probe89531%_
                                    (fx+ _%start89502%_
                                         _%i89511%_
                                         (fx* _%i89511%_ _%i89511%_))))
                               (##fxmodulo _%next-probe89531%_ _%size89496%_))
                             (##fx+ _%i89511%_ '1)
                             _%deleted89513%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab89480%_
               _%key89481%_
               _%symbolic-table-update!89482%_
               _%default89483%_)
        (if (##fx< (&raw-table-free _%tab89480%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89480%_))
                    '4))
            (__raw-table-rehash! _%tab89480%_)
            '#!void)
        (__symbolic-table-update!
         _%tab89480%_
         _%key89481%_
         _%symbolic-table-update!89482%_
         _%default89483%_)))
    (define __symbolic-table-update!
      (lambda (_%tab89430%_
               _%key89431%_
               _%symbolic-table-update!89432%_
               _%default89433%_)
        (let ((_%table89436%_ (&raw-table-table _%tab89430%_))
              (_%seed89437%_ (&raw-table-seed _%tab89430%_)))
          (let* ((_%h89439%_
                  (fxxor (symbolic-hash _%key89431%_) _%seed89437%_))
                 (_%size89442%_ (vector-length _%table89436%_))
                 (_%entries89445%_ (##fxquotient _%size89442%_ '2))
                 (_%start89448%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89439%_ _%entries89445%_)
                   '1)))
            (let _%loop89452%_ ((_%probe89455%_ _%start89448%_)
                                (_%i89457%_ '1)
                                (_%deleted89459%_ '#f))
              (let ((_%k89462%_ (vector-ref _%table89436%_ _%probe89455%_)))
                (if (eq? _%k89462%_ (macro-unused-obj))
                    (if _%deleted89459%_
                        (begin
                          (vector-set!
                           _%table89436%_
                           _%deleted89459%_
                           _%key89431%_)
                          (vector-set!
                           _%table89436%_
                           (##fx+ _%deleted89459%_ '1)
                           (_%symbolic-table-update!89432%_ _%default89433%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89430%_
                              (##fx+ (&raw-table-count _%tab89430%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89436%_
                           _%probe89455%_
                           _%key89431%_)
                          (vector-set!
                           _%table89436%_
                           (##fx+ _%probe89455%_ '1)
                           (_%symbolic-table-update!89432%_ _%default89433%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89430%_
                              (##fx- (&raw-table-free _%tab89430%_) '1))
                             (&raw-table-count-set!
                              _%tab89430%_
                              (##fx+ (&raw-table-count _%tab89430%_) '1))))))
                    (if (eq? _%k89462%_ (macro-deleted-obj))
                        (_%loop89452%_
                         (let ((_%next-probe89469%_
                                (fx+ _%start89448%_
                                     _%i89457%_
                                     (fx* _%i89457%_ _%i89457%_))))
                           (##fxmodulo _%next-probe89469%_ _%size89442%_))
                         (##fx+ _%i89457%_ '1)
                         (let ((_%$e89472%_ _%deleted89459%_))
                           (if _%$e89472%_ _%$e89472%_ _%probe89455%_)))
                        (if (eq? _%key89431%_ _%k89462%_)
                            (let ()
                              (vector-set!
                               _%table89436%_
                               _%probe89455%_
                               _%key89431%_)
                              (vector-set!
                               _%table89436%_
                               (##fx+ _%probe89455%_ '1)
                               (_%symbolic-table-update!89432%_
                                (vector-ref
                                 _%table89436%_
                                 (##fx+ _%probe89455%_ '1)))))
                            (_%loop89452%_
                             (let ((_%next-probe89477%_
                                    (fx+ _%start89448%_
                                         _%i89457%_
                                         (fx* _%i89457%_ _%i89457%_))))
                               (##fxmodulo _%next-probe89477%_ _%size89442%_))
                             (##fx+ _%i89457%_ '1)
                             _%deleted89459%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab89385%_ _%key89387%_)
        (let ((_%table89390%_ (&raw-table-table _%tab89385%_))
              (_%seed89392%_ (&raw-table-seed _%tab89385%_)))
          (let* ((_%h89395%_
                  (fxxor (symbolic-hash _%key89387%_) _%seed89392%_))
                 (_%size89398%_ (vector-length _%table89390%_))
                 (_%entries89401%_ (##fxquotient _%size89398%_ '2))
                 (_%start89404%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89395%_ _%entries89401%_)
                   '1)))
            (let _%loop89408%_ ((_%probe89411%_ _%start89404%_)
                                (_%i89413%_ '1))
              (let ((_%k89416%_ (vector-ref _%table89390%_ _%probe89411%_)))
                (if (eq? _%k89416%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k89416%_ (macro-deleted-obj))
                        (_%loop89408%_
                         (let ((_%next-probe89421%_
                                (fx+ _%start89404%_
                                     _%i89413%_
                                     (fx* _%i89413%_ _%i89413%_))))
                           (##fxmodulo _%next-probe89421%_ _%size89398%_))
                         (##fx+ _%i89413%_ '1))
                        (if (eq? _%key89387%_ _%k89416%_)
                            (let ()
                              (vector-set!
                               _%table89390%_
                               _%probe89411%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89390%_
                               (##fx+ _%probe89411%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89385%_
                                  (##fx- (&raw-table-count _%tab89385%_)
                                         '1)))))
                            (_%loop89408%_
                             (let ((_%next-probe89427%_
                                    (fx+ _%start89404%_
                                         _%i89413%_
                                         (fx* _%i89413%_ _%i89413%_))))
                               (##fxmodulo _%next-probe89427%_ _%size89398%_))
                             (##fx+ _%i89413%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint89366%_ _%seed89368%_)
        (make-raw-table__%
         _%size-hint89366%_
         string-hash
         ##string=?
         _%seed89368%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint89374%_ '#f) (_%seed89376%_ '0))
          (make-string-table__% _%size-hint89374%_ _%seed89376%_))))
    (define make-string-table__1
      (lambda (_%size-hint89378%_)
        (let ((_%seed89380%_ '0))
          (make-string-table__% _%size-hint89378%_ _%seed89380%_))))
    (define make-string-table
      (lambda _g90385_
        (let ((_g90384_ (##length _g90385_)))
          (cond ((##fx= _g90384_ 0) (apply make-string-table__0 _g90385_))
                ((##fx= _g90384_ 1) (apply make-string-table__1 _g90385_))
                ((##fx= _g90384_ 2) (apply make-string-table__% _g90385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g90385_))))))
    (define string-table-ref
      (lambda (_%tab89319%_ _%key89320%_ _%default89321%_)
        (let ((_%table89323%_ (&raw-table-table _%tab89319%_))
              (_%seed89324%_ (&raw-table-seed _%tab89319%_)))
          (let* ((_%h89326%_
                  (fxxor (##string=?-hash _%key89320%_) _%seed89324%_))
                 (_%size89329%_ (vector-length _%table89323%_))
                 (_%entries89332%_ (##fxquotient _%size89329%_ '2))
                 (_%start89335%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89326%_ _%entries89332%_)
                   '1)))
            (let _%loop89339%_ ((_%probe89342%_ _%start89335%_)
                                (_%i89344%_ '1)
                                (_%deleted89346%_ '#f))
              (let ((_%k89349%_ (vector-ref _%table89323%_ _%probe89342%_)))
                (if (eq? _%k89349%_ (macro-unused-obj))
                    _%default89321%_
                    (if (eq? _%k89349%_ (macro-deleted-obj))
                        (_%loop89339%_
                         (let ((_%next-probe89354%_
                                (fx+ _%start89335%_
                                     _%i89344%_
                                     (fx* _%i89344%_ _%i89344%_))))
                           (##fxmodulo _%next-probe89354%_ _%size89329%_))
                         (##fx+ _%i89344%_ '1)
                         (let ((_%$e89357%_ _%deleted89346%_))
                           (if _%$e89357%_ _%$e89357%_ _%probe89342%_)))
                        (if (##string=? _%key89320%_ _%k89349%_)
                            (vector-ref
                             _%table89323%_
                             (##fx+ _%probe89342%_ '1))
                            (_%loop89339%_
                             (let ((_%next-probe89362%_
                                    (fx+ _%start89335%_
                                         _%i89344%_
                                         (fx* _%i89344%_ _%i89344%_))))
                               (##fxmodulo _%next-probe89362%_ _%size89329%_))
                             (##fx+ _%i89344%_ '1)
                             _%deleted89346%_))))))))))
    (define string-table-set!
      (lambda (_%tab89315%_ _%key89316%_ _%value89317%_)
        (if (##fx< (&raw-table-free _%tab89315%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89315%_))
                    '4))
            (__raw-table-rehash! _%tab89315%_)
            '#!void)
        (__string-table-set! _%tab89315%_ _%key89316%_ _%value89317%_)))
    (define __string-table-set!
      (lambda (_%tab89266%_ _%key89267%_ _%value89268%_)
        (let ((_%table89271%_ (&raw-table-table _%tab89266%_))
              (_%seed89272%_ (&raw-table-seed _%tab89266%_)))
          (let* ((_%h89274%_
                  (fxxor (##string=?-hash _%key89267%_) _%seed89272%_))
                 (_%size89277%_ (vector-length _%table89271%_))
                 (_%entries89280%_ (##fxquotient _%size89277%_ '2))
                 (_%start89283%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89274%_ _%entries89280%_)
                   '1)))
            (let _%loop89287%_ ((_%probe89290%_ _%start89283%_)
                                (_%i89292%_ '1)
                                (_%deleted89294%_ '#f))
              (let ((_%k89297%_ (vector-ref _%table89271%_ _%probe89290%_)))
                (if (eq? _%k89297%_ (macro-unused-obj))
                    (if _%deleted89294%_
                        (begin
                          (vector-set!
                           _%table89271%_
                           _%deleted89294%_
                           _%key89267%_)
                          (vector-set!
                           _%table89271%_
                           (##fx+ _%deleted89294%_ '1)
                           _%value89268%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89266%_
                              (##fx+ (&raw-table-count _%tab89266%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89271%_
                           _%probe89290%_
                           _%key89267%_)
                          (vector-set!
                           _%table89271%_
                           (##fx+ _%probe89290%_ '1)
                           _%value89268%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89266%_
                              (##fx- (&raw-table-free _%tab89266%_) '1))
                             (&raw-table-count-set!
                              _%tab89266%_
                              (##fx+ (&raw-table-count _%tab89266%_) '1))))))
                    (if (eq? _%k89297%_ (macro-deleted-obj))
                        (_%loop89287%_
                         (let ((_%next-probe89304%_
                                (fx+ _%start89283%_
                                     _%i89292%_
                                     (fx* _%i89292%_ _%i89292%_))))
                           (##fxmodulo _%next-probe89304%_ _%size89277%_))
                         (##fx+ _%i89292%_ '1)
                         (let ((_%$e89307%_ _%deleted89294%_))
                           (if _%$e89307%_ _%$e89307%_ _%probe89290%_)))
                        (if (##string=? _%key89267%_ _%k89297%_)
                            (let ()
                              (vector-set!
                               _%table89271%_
                               _%probe89290%_
                               _%key89267%_)
                              (vector-set!
                               _%table89271%_
                               (##fx+ _%probe89290%_ '1)
                               _%value89268%_))
                            (_%loop89287%_
                             (let ((_%next-probe89312%_
                                    (fx+ _%start89283%_
                                         _%i89292%_
                                         (fx* _%i89292%_ _%i89292%_))))
                               (##fxmodulo _%next-probe89312%_ _%size89277%_))
                             (##fx+ _%i89292%_ '1)
                             _%deleted89294%_))))))))))
    (define string-table-update!
      (lambda (_%tab89261%_
               _%key89262%_
               _%string-table-update!89263%_
               _%default89264%_)
        (if (##fx< (&raw-table-free _%tab89261%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89261%_))
                    '4))
            (__raw-table-rehash! _%tab89261%_)
            '#!void)
        (__string-table-update!
         _%tab89261%_
         _%key89262%_
         _%string-table-update!89263%_
         _%default89264%_)))
    (define __string-table-update!
      (lambda (_%tab89211%_
               _%key89212%_
               _%string-table-update!89213%_
               _%default89214%_)
        (let ((_%table89217%_ (&raw-table-table _%tab89211%_))
              (_%seed89218%_ (&raw-table-seed _%tab89211%_)))
          (let* ((_%h89220%_
                  (fxxor (##string=?-hash _%key89212%_) _%seed89218%_))
                 (_%size89223%_ (vector-length _%table89217%_))
                 (_%entries89226%_ (##fxquotient _%size89223%_ '2))
                 (_%start89229%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89220%_ _%entries89226%_)
                   '1)))
            (let _%loop89233%_ ((_%probe89236%_ _%start89229%_)
                                (_%i89238%_ '1)
                                (_%deleted89240%_ '#f))
              (let ((_%k89243%_ (vector-ref _%table89217%_ _%probe89236%_)))
                (if (eq? _%k89243%_ (macro-unused-obj))
                    (if _%deleted89240%_
                        (begin
                          (vector-set!
                           _%table89217%_
                           _%deleted89240%_
                           _%key89212%_)
                          (vector-set!
                           _%table89217%_
                           (##fx+ _%deleted89240%_ '1)
                           (_%string-table-update!89213%_ _%default89214%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89211%_
                              (##fx+ (&raw-table-count _%tab89211%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89217%_
                           _%probe89236%_
                           _%key89212%_)
                          (vector-set!
                           _%table89217%_
                           (##fx+ _%probe89236%_ '1)
                           (_%string-table-update!89213%_ _%default89214%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89211%_
                              (##fx- (&raw-table-free _%tab89211%_) '1))
                             (&raw-table-count-set!
                              _%tab89211%_
                              (##fx+ (&raw-table-count _%tab89211%_) '1))))))
                    (if (eq? _%k89243%_ (macro-deleted-obj))
                        (_%loop89233%_
                         (let ((_%next-probe89250%_
                                (fx+ _%start89229%_
                                     _%i89238%_
                                     (fx* _%i89238%_ _%i89238%_))))
                           (##fxmodulo _%next-probe89250%_ _%size89223%_))
                         (##fx+ _%i89238%_ '1)
                         (let ((_%$e89253%_ _%deleted89240%_))
                           (if _%$e89253%_ _%$e89253%_ _%probe89236%_)))
                        (if (##string=? _%key89212%_ _%k89243%_)
                            (let ()
                              (vector-set!
                               _%table89217%_
                               _%probe89236%_
                               _%key89212%_)
                              (vector-set!
                               _%table89217%_
                               (##fx+ _%probe89236%_ '1)
                               (_%string-table-update!89213%_
                                (vector-ref
                                 _%table89217%_
                                 (##fx+ _%probe89236%_ '1)))))
                            (_%loop89233%_
                             (let ((_%next-probe89258%_
                                    (fx+ _%start89229%_
                                         _%i89238%_
                                         (fx* _%i89238%_ _%i89238%_))))
                               (##fxmodulo _%next-probe89258%_ _%size89223%_))
                             (##fx+ _%i89238%_ '1)
                             _%deleted89240%_))))))))))
    (define string-table-delete!
      (lambda (_%tab89166%_ _%key89168%_)
        (let ((_%table89171%_ (&raw-table-table _%tab89166%_))
              (_%seed89173%_ (&raw-table-seed _%tab89166%_)))
          (let* ((_%h89176%_
                  (fxxor (##string=?-hash _%key89168%_) _%seed89173%_))
                 (_%size89179%_ (vector-length _%table89171%_))
                 (_%entries89182%_ (##fxquotient _%size89179%_ '2))
                 (_%start89185%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89176%_ _%entries89182%_)
                   '1)))
            (let _%loop89189%_ ((_%probe89192%_ _%start89185%_)
                                (_%i89194%_ '1))
              (let ((_%k89197%_ (vector-ref _%table89171%_ _%probe89192%_)))
                (if (eq? _%k89197%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k89197%_ (macro-deleted-obj))
                        (_%loop89189%_
                         (let ((_%next-probe89202%_
                                (fx+ _%start89185%_
                                     _%i89194%_
                                     (fx* _%i89194%_ _%i89194%_))))
                           (##fxmodulo _%next-probe89202%_ _%size89179%_))
                         (##fx+ _%i89194%_ '1))
                        (if (##string=? _%key89168%_ _%k89197%_)
                            (let ()
                              (vector-set!
                               _%table89171%_
                               _%probe89192%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89171%_
                               (##fx+ _%probe89192%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89166%_
                                  (##fx- (&raw-table-count _%tab89166%_)
                                         '1)))))
                            (_%loop89189%_
                             (let ((_%next-probe89208%_
                                    (fx+ _%start89185%_
                                         _%i89194%_
                                         (fx* _%i89194%_ _%i89194%_))))
                               (##fxmodulo _%next-probe89208%_ _%size89179%_))
                             (##fx+ _%i89194%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint89147%_ _%seed89149%_)
        (make-raw-table__%
         _%size-hint89147%_
         immediate-hash
         eq?
         _%seed89149%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint89155%_ '#f) (_%seed89157%_ '0))
          (make-immediate-table__% _%size-hint89155%_ _%seed89157%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint89159%_)
        (let ((_%seed89161%_ '0))
          (make-immediate-table__% _%size-hint89159%_ _%seed89161%_))))
    (define make-immediate-table
      (lambda _g90387_
        (let ((_g90386_ (##length _g90387_)))
          (cond ((##fx= _g90386_ 0) (apply make-immediate-table__0 _g90387_))
                ((##fx= _g90386_ 1) (apply make-immediate-table__1 _g90387_))
                ((##fx= _g90386_ 2) (apply make-immediate-table__% _g90387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g90387_))))))
    (define immediate-table-ref
      (lambda (_%tab89100%_ _%key89101%_ _%default89102%_)
        (let ((_%table89104%_ (&raw-table-table _%tab89100%_))
              (_%seed89105%_ (&raw-table-seed _%tab89100%_)))
          (let* ((_%h89107%_
                  (fxxor (immediate-hash _%key89101%_) _%seed89105%_))
                 (_%size89110%_ (vector-length _%table89104%_))
                 (_%entries89113%_ (##fxquotient _%size89110%_ '2))
                 (_%start89116%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89107%_ _%entries89113%_)
                   '1)))
            (let _%loop89120%_ ((_%probe89123%_ _%start89116%_)
                                (_%i89125%_ '1)
                                (_%deleted89127%_ '#f))
              (let ((_%k89130%_ (vector-ref _%table89104%_ _%probe89123%_)))
                (if (eq? _%k89130%_ (macro-unused-obj))
                    _%default89102%_
                    (if (eq? _%k89130%_ (macro-deleted-obj))
                        (_%loop89120%_
                         (let ((_%next-probe89135%_
                                (fx+ _%start89116%_
                                     _%i89125%_
                                     (fx* _%i89125%_ _%i89125%_))))
                           (##fxmodulo _%next-probe89135%_ _%size89110%_))
                         (##fx+ _%i89125%_ '1)
                         (let ((_%$e89138%_ _%deleted89127%_))
                           (if _%$e89138%_ _%$e89138%_ _%probe89123%_)))
                        (if (eq? _%key89101%_ _%k89130%_)
                            (vector-ref
                             _%table89104%_
                             (##fx+ _%probe89123%_ '1))
                            (_%loop89120%_
                             (let ((_%next-probe89143%_
                                    (fx+ _%start89116%_
                                         _%i89125%_
                                         (fx* _%i89125%_ _%i89125%_))))
                               (##fxmodulo _%next-probe89143%_ _%size89110%_))
                             (##fx+ _%i89125%_ '1)
                             _%deleted89127%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab89096%_ _%key89097%_ _%value89098%_)
        (if (##fx< (&raw-table-free _%tab89096%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89096%_))
                    '4))
            (__raw-table-rehash! _%tab89096%_)
            '#!void)
        (__immediate-table-set! _%tab89096%_ _%key89097%_ _%value89098%_)))
    (define __immediate-table-set!
      (lambda (_%tab89047%_ _%key89048%_ _%value89049%_)
        (let ((_%table89052%_ (&raw-table-table _%tab89047%_))
              (_%seed89053%_ (&raw-table-seed _%tab89047%_)))
          (let* ((_%h89055%_
                  (fxxor (immediate-hash _%key89048%_) _%seed89053%_))
                 (_%size89058%_ (vector-length _%table89052%_))
                 (_%entries89061%_ (##fxquotient _%size89058%_ '2))
                 (_%start89064%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89055%_ _%entries89061%_)
                   '1)))
            (let _%loop89068%_ ((_%probe89071%_ _%start89064%_)
                                (_%i89073%_ '1)
                                (_%deleted89075%_ '#f))
              (let ((_%k89078%_ (vector-ref _%table89052%_ _%probe89071%_)))
                (if (eq? _%k89078%_ (macro-unused-obj))
                    (if _%deleted89075%_
                        (begin
                          (vector-set!
                           _%table89052%_
                           _%deleted89075%_
                           _%key89048%_)
                          (vector-set!
                           _%table89052%_
                           (##fx+ _%deleted89075%_ '1)
                           _%value89049%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89047%_
                              (##fx+ (&raw-table-count _%tab89047%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89052%_
                           _%probe89071%_
                           _%key89048%_)
                          (vector-set!
                           _%table89052%_
                           (##fx+ _%probe89071%_ '1)
                           _%value89049%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89047%_
                              (##fx- (&raw-table-free _%tab89047%_) '1))
                             (&raw-table-count-set!
                              _%tab89047%_
                              (##fx+ (&raw-table-count _%tab89047%_) '1))))))
                    (if (eq? _%k89078%_ (macro-deleted-obj))
                        (_%loop89068%_
                         (let ((_%next-probe89085%_
                                (fx+ _%start89064%_
                                     _%i89073%_
                                     (fx* _%i89073%_ _%i89073%_))))
                           (##fxmodulo _%next-probe89085%_ _%size89058%_))
                         (##fx+ _%i89073%_ '1)
                         (let ((_%$e89088%_ _%deleted89075%_))
                           (if _%$e89088%_ _%$e89088%_ _%probe89071%_)))
                        (if (eq? _%key89048%_ _%k89078%_)
                            (let ()
                              (vector-set!
                               _%table89052%_
                               _%probe89071%_
                               _%key89048%_)
                              (vector-set!
                               _%table89052%_
                               (##fx+ _%probe89071%_ '1)
                               _%value89049%_))
                            (_%loop89068%_
                             (let ((_%next-probe89093%_
                                    (fx+ _%start89064%_
                                         _%i89073%_
                                         (fx* _%i89073%_ _%i89073%_))))
                               (##fxmodulo _%next-probe89093%_ _%size89058%_))
                             (##fx+ _%i89073%_ '1)
                             _%deleted89075%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab89042%_
               _%key89043%_
               _%immediate-table-update!89044%_
               _%default89045%_)
        (if (##fx< (&raw-table-free _%tab89042%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89042%_))
                    '4))
            (__raw-table-rehash! _%tab89042%_)
            '#!void)
        (__immediate-table-update!
         _%tab89042%_
         _%key89043%_
         _%immediate-table-update!89044%_
         _%default89045%_)))
    (define __immediate-table-update!
      (lambda (_%tab88992%_
               _%key88993%_
               _%immediate-table-update!88994%_
               _%default88995%_)
        (let ((_%table88998%_ (&raw-table-table _%tab88992%_))
              (_%seed88999%_ (&raw-table-seed _%tab88992%_)))
          (let* ((_%h89001%_
                  (fxxor (immediate-hash _%key88993%_) _%seed88999%_))
                 (_%size89004%_ (vector-length _%table88998%_))
                 (_%entries89007%_ (##fxquotient _%size89004%_ '2))
                 (_%start89010%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89001%_ _%entries89007%_)
                   '1)))
            (let _%loop89014%_ ((_%probe89017%_ _%start89010%_)
                                (_%i89019%_ '1)
                                (_%deleted89021%_ '#f))
              (let ((_%k89024%_ (vector-ref _%table88998%_ _%probe89017%_)))
                (if (eq? _%k89024%_ (macro-unused-obj))
                    (if _%deleted89021%_
                        (begin
                          (vector-set!
                           _%table88998%_
                           _%deleted89021%_
                           _%key88993%_)
                          (vector-set!
                           _%table88998%_
                           (##fx+ _%deleted89021%_ '1)
                           (_%immediate-table-update!88994%_ _%default88995%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab88992%_
                              (##fx+ (&raw-table-count _%tab88992%_) '1)))))
                        (begin
                          (vector-set!
                           _%table88998%_
                           _%probe89017%_
                           _%key88993%_)
                          (vector-set!
                           _%table88998%_
                           (##fx+ _%probe89017%_ '1)
                           (_%immediate-table-update!88994%_ _%default88995%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab88992%_
                              (##fx- (&raw-table-free _%tab88992%_) '1))
                             (&raw-table-count-set!
                              _%tab88992%_
                              (##fx+ (&raw-table-count _%tab88992%_) '1))))))
                    (if (eq? _%k89024%_ (macro-deleted-obj))
                        (_%loop89014%_
                         (let ((_%next-probe89031%_
                                (fx+ _%start89010%_
                                     _%i89019%_
                                     (fx* _%i89019%_ _%i89019%_))))
                           (##fxmodulo _%next-probe89031%_ _%size89004%_))
                         (##fx+ _%i89019%_ '1)
                         (let ((_%$e89034%_ _%deleted89021%_))
                           (if _%$e89034%_ _%$e89034%_ _%probe89017%_)))
                        (if (eq? _%key88993%_ _%k89024%_)
                            (let ()
                              (vector-set!
                               _%table88998%_
                               _%probe89017%_
                               _%key88993%_)
                              (vector-set!
                               _%table88998%_
                               (##fx+ _%probe89017%_ '1)
                               (_%immediate-table-update!88994%_
                                (vector-ref
                                 _%table88998%_
                                 (##fx+ _%probe89017%_ '1)))))
                            (_%loop89014%_
                             (let ((_%next-probe89039%_
                                    (fx+ _%start89010%_
                                         _%i89019%_
                                         (fx* _%i89019%_ _%i89019%_))))
                               (##fxmodulo _%next-probe89039%_ _%size89004%_))
                             (##fx+ _%i89019%_ '1)
                             _%deleted89021%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab88947%_ _%key88949%_)
        (let ((_%table88952%_ (&raw-table-table _%tab88947%_))
              (_%seed88954%_ (&raw-table-seed _%tab88947%_)))
          (let* ((_%h88957%_
                  (fxxor (immediate-hash _%key88949%_) _%seed88954%_))
                 (_%size88960%_ (vector-length _%table88952%_))
                 (_%entries88963%_ (##fxquotient _%size88960%_ '2))
                 (_%start88966%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h88957%_ _%entries88963%_)
                   '1)))
            (let _%loop88970%_ ((_%probe88973%_ _%start88966%_)
                                (_%i88975%_ '1))
              (let ((_%k88978%_ (vector-ref _%table88952%_ _%probe88973%_)))
                (if (eq? _%k88978%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k88978%_ (macro-deleted-obj))
                        (_%loop88970%_
                         (let ((_%next-probe88983%_
                                (fx+ _%start88966%_
                                     _%i88975%_
                                     (fx* _%i88975%_ _%i88975%_))))
                           (##fxmodulo _%next-probe88983%_ _%size88960%_))
                         (##fx+ _%i88975%_ '1))
                        (if (eq? _%key88949%_ _%k88978%_)
                            (let ()
                              (vector-set!
                               _%table88952%_
                               _%probe88973%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table88952%_
                               (##fx+ _%probe88973%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab88947%_
                                  (##fx- (&raw-table-count _%tab88947%_)
                                         '1)))))
                            (_%loop88970%_
                             (let ((_%next-probe88989%_
                                    (fx+ _%start88966%_
                                         _%i88975%_
                                         (fx* _%i88975%_ _%i88975%_))))
                               (##fxmodulo _%next-probe88989%_ _%size88960%_))
                             (##fx+ _%i88975%_ '1)))))))))))
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
      (lambda (_%tab88945%_)
        (##unchecked-structure-ref
         _%tab88945%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab88943%_)
        (##unchecked-structure-ref
         _%tab88943%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab88940%_ _%val88941%_)
        (##unchecked-structure-set!
         _%tab88940%_
         _%val88941%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab88937%_ _%val88938%_)
        (##unchecked-structure-set!
         _%tab88937%_
         _%val88938%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint88913%_ _%klass88914%_ _%flags88915%_)
        (let ((_%gcht88917%_
               (__gc-table-new
                (if (fixnum? _%size-hint88913%_) _%size-hint88913%_ '16)
                _%flags88915%_)))
          (##structure _%klass88914%_ _%gcht88917%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint88922%_)
        (let* ((_%klass88924%_ __gc-table::t) (_%flags88926%_ '0))
          (make-gc-table__%
           _%size-hint88922%_
           _%klass88924%_
           _%flags88926%_))))
    (define make-gc-table__1
      (lambda (_%size-hint88928%_ _%klass88929%_)
        (let ((_%flags88931%_ '0))
          (make-gc-table__%
           _%size-hint88928%_
           _%klass88929%_
           _%flags88931%_))))
    (define make-gc-table
      (lambda _g90389_
        (let ((_g90388_ (##length _g90389_)))
          (cond ((##fx= _g90388_ 1) (apply make-gc-table__0 _g90389_))
                ((##fx= _g90388_ 2) (apply make-gc-table__1 _g90389_))
                ((##fx= _g90388_ 3) (apply make-gc-table__% _g90389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g90389_))))))
    (define __gc-table-immediate
      (lambda (_%tab88904%_)
        (let ((_%$e88906%_ (&gc-table-immediate _%tab88904%_)))
          (if _%$e88906%_
              _%$e88906%_
              (let ((_%immediate88910%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab88904%_ _%immediate88910%_)
                _%immediate88910%_)))))
    (define __gc-table-new
      (lambda (_%size88894%_ _%flags88895%_)
        (let* ((_%flags88897%_
                (##fxand _%flags88895%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags88899%_
                (fxior _%flags88897%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht88901%_
                (##gc-hash-table-allocate
                 _%size88894%_
                 _%flags88899%_
                 __gc-table-loads)))
          _%gcht88901%_)))
    (define __gc-table-e
      (lambda (_%tab88889%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht88892%_ (&gc-table-gcht _%tab88889%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht88892%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht88892%_
              (begin
                (__gc-table-rehash! _%tab88889%_)
                (&gc-table-gcht _%tab88889%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab88880%_)
        (let* ((_%old-table88882%_ (&gc-table-gcht _%tab88880%_))
               (_%new-table88884%_
                (##gc-hash-table-resize! _%old-table88882%_ __gc-table-loads))
               (_%gcht88886%_
                (##gc-hash-table-rehash!
                 _%old-table88882%_
                 _%new-table88884%_)))
          (&gc-table-gcht-set! _%tab88880%_ _%gcht88886%_))))
    (define gc-table-ref
      (lambda (_%tab88864%_ _%key88865%_ _%default88866%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88865%_)
            (let* ((_%gcht88870%_ (__gc-table-e _%tab88864%_))
                   (_%value88872%_
                    (##gc-hash-table-ref _%gcht88870%_ _%key88865%_)))
              (if (eq? _%value88872%_ (macro-unused-obj))
                  _%default88866%_
                  _%value88872%_))
            (let ((_%$e88874%_ (&gc-table-immediate _%tab88864%_)))
              (if _%$e88874%_
                  ((lambda (_%immediate88877%_)
                     (immediate-table-ref
                      _%immediate88877%_
                      _%key88865%_
                      _%default88866%_))
                   _%$e88874%_)
                  _%default88866%_)))))
    (define gc-table-set!
      (lambda (_%tab88857%_ _%key88858%_ _%value88859%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88858%_)
            (let ((_%gcht88862%_ (__gc-table-e _%tab88857%_)))
              (if (##gc-hash-table-set!
                   _%gcht88862%_
                   _%key88858%_
                   _%value88859%_)
                  (begin
                    (__gc-table-rehash! _%tab88857%_)
                    (gc-table-set! _%tab88857%_ _%key88858%_ _%value88859%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab88857%_)
             _%key88858%_
             _%value88859%_))))
    (define gc-table-update!
      (lambda (_%tab88850%_ _%key88851%_ _%update88852%_ _%default88853%_)
        (if (##mem-allocated? _%key88851%_)
            (let ((_%value88855%_
                   (gc-table-ref _%tab88850%_ _%key88851%_ _%default88853%_)))
              (gc-table-set!
               _%tab88850%_
               _%key88851%_
               (_%update88852%_ _%value88855%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab88850%_)
             _%key88851%_
             _%update88852%_
             _%default88853%_))))
    (define gc-table-delete!
      (lambda (_%tab88838%_ _%key88839%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key88839%_)
            (let ((_%gcht88843%_ (__gc-table-e _%tab88838%_)))
              (if (##gc-hash-table-set!
                   _%gcht88843%_
                   _%key88839%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab88838%_)
                    (gc-table-delete! _%tab88838%_ _%key88839%_))
                  '#!void))
            (let ((_%$e88845%_ (&gc-table-immediate _%tab88838%_)))
              (if _%$e88845%_
                  ((lambda (_%immediate88848%_)
                     (immediate-table-delete! _%immediate88848%_ _%key88839%_))
                   _%$e88845%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab88819%_ _%proc88820%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht88823%_ (__gc-table-e _%tab88819%_)))
            (let _%loop88825%_ ((_%i88827%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i88827%_ (##vector-length _%gcht88823%_))
                  (let ((_%key88829%_ (##vector-ref _%gcht88823%_ _%i88827%_)))
                    (if (and (not (eq? _%key88829%_ (macro-unused-obj)))
                             (not (eq? _%key88829%_ (macro-deleted-obj))))
                        (_%proc88820%_
                         _%key88829%_
                         (##vector-ref _%gcht88823%_ (##fx+ _%i88827%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop88825%_ (##fx+ _%i88827%_ '2))))
                  '#!void)))
          (let ((_%$e88833%_ (&gc-table-immediate _%tab88819%_)))
            (if _%$e88833%_
                ((lambda (_%immediate88836%_)
                   (raw-table-for-each _%immediate88836%_ _%proc88820%_))
                 _%$e88833%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab88807%_)
        (let* ((_%gcht88809%_ (__gc-table-e _%tab88807%_))
               (_%new-table88811%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht88809%_)
                 (macro-gc-hash-table-flags _%gcht88809%_)))
               (_%result88813%_
                (##structure
                 (##structure-type _%tab88807%_)
                 _%new-table88811%_
                 '#f)))
          (gc-table-for-each
           _%tab88807%_
           (lambda (_%k88816%_ _%v88817%_)
             (gc-table-set! _%result88813%_ _%k88816%_ _%v88817%_)))
          _%result88813%_)))
    (define gc-table-clear!
      (lambda (_%tab88800%_)
        (let* ((_%gcht88802%_ (__gc-table-e _%tab88800%_))
               (_%new-table88804%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht88802%_))))
          (&gc-table-gcht-set! _%tab88800%_ _%new-table88804%_)
          (&gc-table-immediate-set! _%tab88800%_ '#f))))
    (define gc-table-length
      (lambda (_%tab88792%_)
        (let ((_%gcht88794%_ (__gc-table-e _%tab88792%_)))
          (fx+ (macro-gc-hash-table-count _%gcht88794%_)
               (let ((_%$e88796%_ (&gc-table-immediate _%tab88792%_)))
                 (if _%$e88796%_ (&raw-table-count _%$e88796%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj88777%_)
        (declare (not interrupts-enabled))
        (let ((_%val88780%_ (gc-table-ref __object-eq-hash _%obj88777%_ '#f)))
          (if _%val88780%_
              _%val88780%_
              (let* ((_%mix88782%_ __object-eq-hash-next)
                     (_%ptr88784%_ (##type-cast _%obj88777%_ '0))
                     (_%h88786%_
                      (fxand (fxxor _%mix88782%_ _%ptr88784%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e88789%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e88789%_ _%$e88789%_ '0)))
                (gc-table-set! __object-eq-hash _%obj88777%_ _%h88786%_)
                _%h88786%_)))))))
