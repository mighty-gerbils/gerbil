(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1756156298)
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
      (lambda (_%tab101400%_)
        (##unchecked-structure-ref
         _%tab101400%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab101398%_)
        (##unchecked-structure-ref
         _%tab101398%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab101396%_)
        (##unchecked-structure-ref
         _%tab101396%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab101394%_)
        (##unchecked-structure-ref
         _%tab101394%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab101392%_)
        (##unchecked-structure-ref
         _%tab101392%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab101390%_)
        (##unchecked-structure-ref
         _%tab101390%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab101387%_ _%val101388%_)
        (##unchecked-structure-set!
         _%tab101387%_
         _%val101388%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab101384%_ _%val101385%_)
        (##unchecked-structure-set!
         _%tab101384%_
         _%val101385%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab101381%_ _%val101382%_)
        (##unchecked-structure-set!
         _%tab101381%_
         _%val101382%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab101378%_ _%val101379%_)
        (##unchecked-structure-set!
         _%tab101378%_
         _%val101379%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab101375%_ _%val101376%_)
        (##unchecked-structure-set!
         _%tab101375%_
         _%val101376%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab101372%_ _%val101373%_)
        (##unchecked-structure-set!
         _%tab101372%_
         _%val101373%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint101370%_)
        (if (and (fixnum? _%size-hint101370%_) (##fx> _%size-hint101370%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint101370%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint101346%_
               _%hash101347%_
               _%test101348%_
               _%seed101349%_)
        (let* ((_%size101351%_ (raw-table-size-hint->size _%size-hint101346%_))
               (_%table101353%_
                (##make-vector _%size101351%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table101353%_
           '0
           (##fxquotient _%size101351%_ '2)
           _%hash101347%_
           _%test101348%_
           _%seed101349%_))))
    (define make-raw-table__0
      (lambda (_%size-hint101359%_ _%hash101360%_ _%test101361%_)
        (let ((_%seed101363%_ '0))
          (make-raw-table__%
           _%size-hint101359%_
           _%hash101360%_
           _%test101361%_
           _%seed101363%_))))
    (define make-raw-table
      (lambda _g101401_
        (let ((_g101402_ (##length _g101401_)))
          (cond ((##fx= _g101402_ 3) (apply make-raw-table__0 _g101401_))
                ((##fx= _g101402_ 4) (apply make-raw-table__% _g101401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g101401_))))))
    (define raw-table-ref
      (lambda (_%tab101297%_ _%key101298%_ _%default101299%_)
        (let ((_%table101301%_ (&raw-table-table _%tab101297%_))
              (_%seed101302%_ (&raw-table-seed _%tab101297%_))
              (_%hash101303%_ (&raw-table-hash _%tab101297%_))
              (_%test101304%_ (&raw-table-test _%tab101297%_)))
          (let* ((_%h101306%_
                  (fxxor (_%hash101303%_ _%key101298%_) _%seed101302%_))
                 (_%size101309%_ (vector-length _%table101301%_))
                 (_%entries101312%_ (##fxquotient _%size101309%_ '2))
                 (_%start101315%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101306%_ _%entries101312%_)
                   '1)))
            (let _%loop101319%_ ((_%probe101322%_ _%start101315%_)
                                 (_%i101324%_ '1)
                                 (_%deleted101326%_ '#f))
              (let ((_%k101329%_ (vector-ref _%table101301%_ _%probe101322%_)))
                (if (eq? _%k101329%_ (macro-unused-obj))
                    _%default101299%_
                    (if (eq? _%k101329%_ (macro-deleted-obj))
                        (_%loop101319%_
                         (let ((_%next-probe101334%_
                                (fx+ _%start101315%_
                                     _%i101324%_
                                     (fx* _%i101324%_ _%i101324%_))))
                           (##fxmodulo _%next-probe101334%_ _%size101309%_))
                         (##fx+ _%i101324%_ '1)
                         (let ((_%$e101337%_ _%deleted101326%_))
                           (if _%$e101337%_ _%$e101337%_ _%probe101322%_)))
                        (if (_%test101304%_ _%key101298%_ _%k101329%_)
                            (vector-ref
                             _%table101301%_
                             (##fx+ _%probe101322%_ '1))
                            (_%loop101319%_
                             (let ((_%next-probe101342%_
                                    (fx+ _%start101315%_
                                         _%i101324%_
                                         (fx* _%i101324%_ _%i101324%_))))
                               (##fxmodulo
                                _%next-probe101342%_
                                _%size101309%_))
                             (##fx+ _%i101324%_ '1)
                             _%deleted101326%_))))))))))
    (define raw-table-set!
      (lambda (_%tab101293%_ _%key101294%_ _%value101295%_)
        (if (##fx< (&raw-table-free _%tab101293%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101293%_))
                    '4))
            (__raw-table-rehash! _%tab101293%_)
            '#!void)
        (__raw-table-set! _%tab101293%_ _%key101294%_ _%value101295%_)))
    (define raw-table-update!
      (lambda (_%tab101288%_ _%key101289%_ _%update101290%_ _%default101291%_)
        (if (##fx< (&raw-table-free _%tab101288%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab101288%_))
                    '4))
            (__raw-table-rehash! _%tab101288%_)
            '#!void)
        (__raw-table-update!
         _%tab101288%_
         _%key101289%_
         _%update101290%_
         _%default101291%_)))
    (define raw-table-delete!
      (lambda (_%tab101245%_ _%key101246%_)
        (let ((_%table101248%_ (&raw-table-table _%tab101245%_))
              (_%seed101249%_ (&raw-table-seed _%tab101245%_))
              (_%hash101250%_ (&raw-table-hash _%tab101245%_))
              (_%test101251%_ (&raw-table-test _%tab101245%_)))
          (let* ((_%h101253%_
                  (fxxor (_%hash101250%_ _%key101246%_) _%seed101249%_))
                 (_%size101256%_ (vector-length _%table101248%_))
                 (_%entries101259%_ (##fxquotient _%size101256%_ '2))
                 (_%start101262%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101253%_ _%entries101259%_)
                   '1)))
            (let _%loop101266%_ ((_%probe101269%_ _%start101262%_)
                                 (_%i101271%_ '1))
              (let ((_%k101274%_ (vector-ref _%table101248%_ _%probe101269%_)))
                (if (eq? _%k101274%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101274%_ (macro-deleted-obj))
                        (_%loop101266%_
                         (let ((_%next-probe101279%_
                                (fx+ _%start101262%_
                                     _%i101271%_
                                     (fx* _%i101271%_ _%i101271%_))))
                           (##fxmodulo _%next-probe101279%_ _%size101256%_))
                         (##fx+ _%i101271%_ '1))
                        (if (_%test101251%_ _%key101246%_ _%k101274%_)
                            (let ()
                              (vector-set!
                               _%table101248%_
                               _%probe101269%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101248%_
                               (##fx+ _%probe101269%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101245%_
                                  (##fx- (&raw-table-count _%tab101245%_)
                                         '1)))))
                            (_%loop101266%_
                             (let ((_%next-probe101285%_
                                    (fx+ _%start101262%_
                                         _%i101271%_
                                         (fx* _%i101271%_ _%i101271%_))))
                               (##fxmodulo
                                _%next-probe101285%_
                                _%size101256%_))
                             (##fx+ _%i101271%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab101229%_ _%proc101230%_)
        (let* ((_%table101232%_ (&raw-table-table _%tab101229%_))
               (_%size101234%_ (vector-length _%table101232%_)))
          (let _%loop101237%_ ((_%i101239%_ '0))
            (if (##fx< _%i101239%_ _%size101234%_)
                (begin
                  (let ((_%key101241%_
                         (vector-ref _%table101232%_ _%i101239%_)))
                    (if (if (eq? _%key101241%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key101241%_ (macro-deleted-obj))))
                        (let ((_%value101243%_
                               (vector-ref
                                _%table101232%_
                                (##fx+ _%i101239%_ '1))))
                          (_%proc101230%_ _%key101241%_ _%value101243%_))
                        '#!void))
                  (_%loop101237%_ (##fx+ _%i101239%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab101225%_)
        (let ((_%new-tab101227%_ (##structure-copy _%tab101225%_)))
          (&raw-table-table-set!
           _%new-tab101227%_
           (vector-copy (&raw-table-table _%tab101225%_)))
          _%new-tab101227%_)))
    (define raw-table-clear!
      (lambda (_%tab101223%_)
        (vector-fill! (&raw-table-table _%tab101223%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab101223%_ '0)
        (&raw-table-free-set!
         _%tab101223%_
         (##fxquotient (vector-length (&raw-table-table _%tab101223%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab101173%_ _%key101174%_ _%value101175%_)
        (let ((_%table101177%_ (&raw-table-table _%tab101173%_))
              (_%seed101178%_ (&raw-table-seed _%tab101173%_))
              (_%hash101179%_ (&raw-table-hash _%tab101173%_))
              (_%test101180%_ (&raw-table-test _%tab101173%_)))
          (let* ((_%h101182%_
                  (fxxor (_%hash101179%_ _%key101174%_) _%seed101178%_))
                 (_%size101185%_ (vector-length _%table101177%_))
                 (_%entries101188%_ (##fxquotient _%size101185%_ '2))
                 (_%start101191%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101182%_ _%entries101188%_)
                   '1)))
            (let _%loop101195%_ ((_%probe101198%_ _%start101191%_)
                                 (_%i101200%_ '1)
                                 (_%deleted101202%_ '#f))
              (let ((_%k101205%_ (vector-ref _%table101177%_ _%probe101198%_)))
                (if (eq? _%k101205%_ (macro-unused-obj))
                    (if _%deleted101202%_
                        (begin
                          (vector-set!
                           _%table101177%_
                           _%deleted101202%_
                           _%key101174%_)
                          (vector-set!
                           _%table101177%_
                           (##fx+ _%deleted101202%_ '1)
                           _%value101175%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101173%_
                              (##fx+ (&raw-table-count _%tab101173%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101177%_
                           _%probe101198%_
                           _%key101174%_)
                          (vector-set!
                           _%table101177%_
                           (##fx+ _%probe101198%_ '1)
                           _%value101175%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101173%_
                              (##fx- (&raw-table-free _%tab101173%_) '1))
                             (&raw-table-count-set!
                              _%tab101173%_
                              (##fx+ (&raw-table-count _%tab101173%_) '1))))))
                    (if (eq? _%k101205%_ (macro-deleted-obj))
                        (_%loop101195%_
                         (let ((_%next-probe101212%_
                                (fx+ _%start101191%_
                                     _%i101200%_
                                     (fx* _%i101200%_ _%i101200%_))))
                           (##fxmodulo _%next-probe101212%_ _%size101185%_))
                         (##fx+ _%i101200%_ '1)
                         (let ((_%$e101215%_ _%deleted101202%_))
                           (if _%$e101215%_ _%$e101215%_ _%probe101198%_)))
                        (if (_%test101180%_ _%key101174%_ _%k101205%_)
                            (let ()
                              (vector-set!
                               _%table101177%_
                               _%probe101198%_
                               _%key101174%_)
                              (vector-set!
                               _%table101177%_
                               (##fx+ _%probe101198%_ '1)
                               _%value101175%_))
                            (_%loop101195%_
                             (let ((_%next-probe101220%_
                                    (fx+ _%start101191%_
                                         _%i101200%_
                                         (fx* _%i101200%_ _%i101200%_))))
                               (##fxmodulo
                                _%next-probe101220%_
                                _%size101185%_))
                             (##fx+ _%i101200%_ '1)
                             _%deleted101202%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab101122%_ _%key101123%_ _%update101124%_ _%default101125%_)
        (let ((_%table101127%_ (&raw-table-table _%tab101122%_))
              (_%seed101128%_ (&raw-table-seed _%tab101122%_))
              (_%hash101129%_ (&raw-table-hash _%tab101122%_))
              (_%test101130%_ (&raw-table-test _%tab101122%_)))
          (let* ((_%h101132%_
                  (fxxor (_%hash101129%_ _%key101123%_) _%seed101128%_))
                 (_%size101135%_ (vector-length _%table101127%_))
                 (_%entries101138%_ (##fxquotient _%size101135%_ '2))
                 (_%start101141%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101132%_ _%entries101138%_)
                   '1)))
            (let _%loop101145%_ ((_%probe101148%_ _%start101141%_)
                                 (_%i101150%_ '1)
                                 (_%deleted101152%_ '#f))
              (let ((_%k101155%_ (vector-ref _%table101127%_ _%probe101148%_)))
                (if (eq? _%k101155%_ (macro-unused-obj))
                    (if _%deleted101152%_
                        (begin
                          (vector-set!
                           _%table101127%_
                           _%deleted101152%_
                           _%key101123%_)
                          (vector-set!
                           _%table101127%_
                           (##fx+ _%deleted101152%_ '1)
                           (_%update101124%_ _%default101125%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101122%_
                              (##fx+ (&raw-table-count _%tab101122%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101127%_
                           _%probe101148%_
                           _%key101123%_)
                          (vector-set!
                           _%table101127%_
                           (##fx+ _%probe101148%_ '1)
                           (_%update101124%_ _%default101125%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101122%_
                              (##fx- (&raw-table-free _%tab101122%_) '1))
                             (&raw-table-count-set!
                              _%tab101122%_
                              (##fx+ (&raw-table-count _%tab101122%_) '1))))))
                    (if (eq? _%k101155%_ (macro-deleted-obj))
                        (_%loop101145%_
                         (let ((_%next-probe101162%_
                                (fx+ _%start101141%_
                                     _%i101150%_
                                     (fx* _%i101150%_ _%i101150%_))))
                           (##fxmodulo _%next-probe101162%_ _%size101135%_))
                         (##fx+ _%i101150%_ '1)
                         (let ((_%$e101165%_ _%deleted101152%_))
                           (if _%$e101165%_ _%$e101165%_ _%probe101148%_)))
                        (if (_%test101130%_ _%key101123%_ _%k101155%_)
                            (let ()
                              (vector-set!
                               _%table101127%_
                               _%probe101148%_
                               _%key101123%_)
                              (vector-set!
                               _%table101127%_
                               (##fx+ _%probe101148%_ '1)
                               (_%update101124%_
                                (vector-ref
                                 _%table101127%_
                                 (##fx+ _%probe101148%_ '1)))))
                            (_%loop101145%_
                             (let ((_%next-probe101170%_
                                    (fx+ _%start101141%_
                                         _%i101150%_
                                         (fx* _%i101150%_ _%i101150%_))))
                               (##fxmodulo
                                _%next-probe101170%_
                                _%size101135%_))
                             (##fx+ _%i101150%_ '1)
                             _%deleted101152%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab101103%_)
        (let* ((_%old-table101105%_ (&raw-table-table _%tab101103%_))
               (_%old-size101107%_ (vector-length _%old-table101105%_))
               (_%new-size101109%_
                (if (##fx< (&raw-table-count _%tab101103%_)
                           (##fxquotient _%old-size101107%_ '4))
                    (vector-length _%old-table101105%_)
                    (##fx* '2 (vector-length _%old-table101105%_))))
               (_%new-table101111%_
                (##make-vector _%new-size101109%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab101103%_ _%new-table101111%_)
          (&raw-table-count-set! _%tab101103%_ '0)
          (&raw-table-free-set!
           _%tab101103%_
           (##fxquotient _%new-size101109%_ '2))
          (let _%lp101114%_ ((_%i101116%_ '0))
            (if (##fx< _%i101116%_ _%old-size101107%_)
                (begin
                  (let ((_%key101118%_
                         (vector-ref _%old-table101105%_ _%i101116%_)))
                    (if (if (eq? _%key101118%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key101118%_ (macro-deleted-obj))))
                        (let ((_%value101120%_
                               (vector-ref
                                _%old-table101105%_
                                (##fx+ _%i101116%_ '1))))
                          (__raw-table-set!
                           _%tab101103%_
                           _%key101118%_
                           _%value101120%_))
                        '#!void))
                  (_%lp101114%_ (##fx+ _%i101116%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj101095%_)
        (let ((_%t101097%_ (##type _%obj101095%_)))
          (if (##fx= (##fxand _%t101097%_ '1) '0)
              (fxand (##type-cast _%obj101095%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj101095%_)
                  (##symbol-hash _%obj101095%_)
                  (if (procedure? _%obj101095%_)
                      (procedure-hash _%obj101095%_)
                      (fxand (__eq-hash _%obj101095%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj101091%_)
        (let ((_%h101093%_
               (if (##closure? _%obj101091%_)
                   (__eq-hash _%obj101091%_)
                   (##type-cast _%obj101091%_ '0))))
          (fxand _%h101093%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj101088%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj101088%_)))
    (define eqv-hash
      (lambda (_%obj101078%_)
        (letrec ((_%combine101080%_
                  (lambda (_%a101085%_ _%b101086%_)
                    (fxand (##fx* (##fx+ _%a101085%_
                                         (fxarithmetic-shift-left
                                          _%b101086%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash101081%_
                  (lambda (_%obj101083%_)
                    (macro-number-dispatch
                     _%obj101083%_
                     (eq-hash _%obj101083%_)
                     (fxand _%obj101083%_ (macro-max-fixnum32))
                     (modulo _%obj101083%_ '331804481)
                     (_%combine101080%_
                      (_%hash101081%_ (macro-ratnum-numerator _%obj101083%_))
                      (_%hash101081%_
                       (macro-ratnum-denominator _%obj101083%_)))
                     (_%combine101080%_
                      (##u16vector-ref _%obj101083%_ '0)
                      (_%combine101080%_
                       (##u16vector-ref _%obj101083%_ '1)
                       (_%combine101080%_
                        (##u16vector-ref _%obj101083%_ '2)
                        (##u16vector-ref _%obj101083%_ '3))))
                     (_%combine101080%_
                      (_%hash101081%_ (macro-cpxnum-real _%obj101083%_))
                      (_%hash101081%_ (macro-cpxnum-imag _%obj101083%_)))))))
          (_%hash101081%_ _%obj101078%_))))
    (define symbolic?
      (lambda (_%obj101073%_)
        (let ((_%$e101075%_ (symbol? _%obj101073%_)))
          (if _%$e101075%_ _%$e101075%_ (keyword? _%obj101073%_)))))
    (define symbolic-hash
      (lambda (_%obj101071%_) (##symbol-hash _%obj101071%_)))
    (define string-hash
      (lambda (_%obj101069%_) (##string=?-hash _%obj101069%_)))
    (define immediate-hash
      (lambda (_%obj101067%_) (##type-cast _%obj101067%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint101048%_ _%seed101050%_)
        (make-raw-table__% _%size-hint101048%_ eq-hash eq? _%seed101050%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint101056%_ '#f) (_%seed101058%_ '0))
          (make-eq-table__% _%size-hint101056%_ _%seed101058%_))))
    (define make-eq-table__1
      (lambda (_%size-hint101060%_)
        (let ((_%seed101062%_ '0))
          (make-eq-table__% _%size-hint101060%_ _%seed101062%_))))
    (define make-eq-table
      (lambda _g101403_
        (let ((_g101404_ (##length _g101403_)))
          (cond ((##fx= _g101404_ 0) (apply make-eq-table__0 _g101403_))
                ((##fx= _g101404_ 1) (apply make-eq-table__1 _g101403_))
                ((##fx= _g101404_ 2) (apply make-eq-table__% _g101403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g101403_))))))
    (define eq-table-ref
      (lambda (_%tab101001%_ _%key101002%_ _%default101003%_)
        (let ((_%table101005%_ (&raw-table-table _%tab101001%_))
              (_%seed101006%_ (&raw-table-seed _%tab101001%_)))
          (let* ((_%h101008%_ (fxxor (eq-hash _%key101002%_) _%seed101006%_))
                 (_%size101011%_ (vector-length _%table101005%_))
                 (_%entries101014%_ (##fxquotient _%size101011%_ '2))
                 (_%start101017%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h101008%_ _%entries101014%_)
                   '1)))
            (let _%loop101021%_ ((_%probe101024%_ _%start101017%_)
                                 (_%i101026%_ '1)
                                 (_%deleted101028%_ '#f))
              (let ((_%k101031%_ (vector-ref _%table101005%_ _%probe101024%_)))
                (if (eq? _%k101031%_ (macro-unused-obj))
                    _%default101003%_
                    (if (eq? _%k101031%_ (macro-deleted-obj))
                        (_%loop101021%_
                         (let ((_%next-probe101036%_
                                (fx+ _%start101017%_
                                     _%i101026%_
                                     (fx* _%i101026%_ _%i101026%_))))
                           (##fxmodulo _%next-probe101036%_ _%size101011%_))
                         (##fx+ _%i101026%_ '1)
                         (let ((_%$e101039%_ _%deleted101028%_))
                           (if _%$e101039%_ _%$e101039%_ _%probe101024%_)))
                        (if (eq? _%key101002%_ _%k101031%_)
                            (vector-ref
                             _%table101005%_
                             (##fx+ _%probe101024%_ '1))
                            (_%loop101021%_
                             (let ((_%next-probe101044%_
                                    (fx+ _%start101017%_
                                         _%i101026%_
                                         (fx* _%i101026%_ _%i101026%_))))
                               (##fxmodulo
                                _%next-probe101044%_
                                _%size101011%_))
                             (##fx+ _%i101026%_ '1)
                             _%deleted101028%_))))))))))
    (define eq-table-set!
      (lambda (_%tab100997%_ _%key100998%_ _%value100999%_)
        (if (##fx< (&raw-table-free _%tab100997%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100997%_))
                    '4))
            (__raw-table-rehash! _%tab100997%_)
            '#!void)
        (__eq-table-set! _%tab100997%_ _%key100998%_ _%value100999%_)))
    (define __eq-table-set!
      (lambda (_%tab100948%_ _%key100949%_ _%value100950%_)
        (let ((_%table100953%_ (&raw-table-table _%tab100948%_))
              (_%seed100954%_ (&raw-table-seed _%tab100948%_)))
          (let* ((_%h100956%_ (fxxor (eq-hash _%key100949%_) _%seed100954%_))
                 (_%size100959%_ (vector-length _%table100953%_))
                 (_%entries100962%_ (##fxquotient _%size100959%_ '2))
                 (_%start100965%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100956%_ _%entries100962%_)
                   '1)))
            (let _%loop100969%_ ((_%probe100972%_ _%start100965%_)
                                 (_%i100974%_ '1)
                                 (_%deleted100976%_ '#f))
              (let ((_%k100979%_ (vector-ref _%table100953%_ _%probe100972%_)))
                (if (eq? _%k100979%_ (macro-unused-obj))
                    (if _%deleted100976%_
                        (begin
                          (vector-set!
                           _%table100953%_
                           _%deleted100976%_
                           _%key100949%_)
                          (vector-set!
                           _%table100953%_
                           (##fx+ _%deleted100976%_ '1)
                           _%value100950%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100948%_
                              (##fx+ (&raw-table-count _%tab100948%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100953%_
                           _%probe100972%_
                           _%key100949%_)
                          (vector-set!
                           _%table100953%_
                           (##fx+ _%probe100972%_ '1)
                           _%value100950%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100948%_
                              (##fx- (&raw-table-free _%tab100948%_) '1))
                             (&raw-table-count-set!
                              _%tab100948%_
                              (##fx+ (&raw-table-count _%tab100948%_) '1))))))
                    (if (eq? _%k100979%_ (macro-deleted-obj))
                        (_%loop100969%_
                         (let ((_%next-probe100986%_
                                (fx+ _%start100965%_
                                     _%i100974%_
                                     (fx* _%i100974%_ _%i100974%_))))
                           (##fxmodulo _%next-probe100986%_ _%size100959%_))
                         (##fx+ _%i100974%_ '1)
                         (let ((_%$e100989%_ _%deleted100976%_))
                           (if _%$e100989%_ _%$e100989%_ _%probe100972%_)))
                        (if (eq? _%key100949%_ _%k100979%_)
                            (let ()
                              (vector-set!
                               _%table100953%_
                               _%probe100972%_
                               _%key100949%_)
                              (vector-set!
                               _%table100953%_
                               (##fx+ _%probe100972%_ '1)
                               _%value100950%_))
                            (_%loop100969%_
                             (let ((_%next-probe100994%_
                                    (fx+ _%start100965%_
                                         _%i100974%_
                                         (fx* _%i100974%_ _%i100974%_))))
                               (##fxmodulo
                                _%next-probe100994%_
                                _%size100959%_))
                             (##fx+ _%i100974%_ '1)
                             _%deleted100976%_))))))))))
    (define eq-table-update!
      (lambda (_%tab100943%_
               _%key100944%_
               _%eq-table-update!100945%_
               _%default100946%_)
        (if (##fx< (&raw-table-free _%tab100943%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100943%_))
                    '4))
            (__raw-table-rehash! _%tab100943%_)
            '#!void)
        (__eq-table-update!
         _%tab100943%_
         _%key100944%_
         _%eq-table-update!100945%_
         _%default100946%_)))
    (define __eq-table-update!
      (lambda (_%tab100893%_
               _%key100894%_
               _%eq-table-update!100895%_
               _%default100896%_)
        (let ((_%table100899%_ (&raw-table-table _%tab100893%_))
              (_%seed100900%_ (&raw-table-seed _%tab100893%_)))
          (let* ((_%h100902%_ (fxxor (eq-hash _%key100894%_) _%seed100900%_))
                 (_%size100905%_ (vector-length _%table100899%_))
                 (_%entries100908%_ (##fxquotient _%size100905%_ '2))
                 (_%start100911%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100902%_ _%entries100908%_)
                   '1)))
            (let _%loop100915%_ ((_%probe100918%_ _%start100911%_)
                                 (_%i100920%_ '1)
                                 (_%deleted100922%_ '#f))
              (let ((_%k100925%_ (vector-ref _%table100899%_ _%probe100918%_)))
                (if (eq? _%k100925%_ (macro-unused-obj))
                    (if _%deleted100922%_
                        (begin
                          (vector-set!
                           _%table100899%_
                           _%deleted100922%_
                           _%key100894%_)
                          (vector-set!
                           _%table100899%_
                           (##fx+ _%deleted100922%_ '1)
                           (_%eq-table-update!100895%_ _%default100896%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100893%_
                              (##fx+ (&raw-table-count _%tab100893%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100899%_
                           _%probe100918%_
                           _%key100894%_)
                          (vector-set!
                           _%table100899%_
                           (##fx+ _%probe100918%_ '1)
                           (_%eq-table-update!100895%_ _%default100896%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100893%_
                              (##fx- (&raw-table-free _%tab100893%_) '1))
                             (&raw-table-count-set!
                              _%tab100893%_
                              (##fx+ (&raw-table-count _%tab100893%_) '1))))))
                    (if (eq? _%k100925%_ (macro-deleted-obj))
                        (_%loop100915%_
                         (let ((_%next-probe100932%_
                                (fx+ _%start100911%_
                                     _%i100920%_
                                     (fx* _%i100920%_ _%i100920%_))))
                           (##fxmodulo _%next-probe100932%_ _%size100905%_))
                         (##fx+ _%i100920%_ '1)
                         (let ((_%$e100935%_ _%deleted100922%_))
                           (if _%$e100935%_ _%$e100935%_ _%probe100918%_)))
                        (if (eq? _%key100894%_ _%k100925%_)
                            (let ()
                              (vector-set!
                               _%table100899%_
                               _%probe100918%_
                               _%key100894%_)
                              (vector-set!
                               _%table100899%_
                               (##fx+ _%probe100918%_ '1)
                               (_%eq-table-update!100895%_
                                (vector-ref
                                 _%table100899%_
                                 (##fx+ _%probe100918%_ '1)))))
                            (_%loop100915%_
                             (let ((_%next-probe100940%_
                                    (fx+ _%start100911%_
                                         _%i100920%_
                                         (fx* _%i100920%_ _%i100920%_))))
                               (##fxmodulo
                                _%next-probe100940%_
                                _%size100905%_))
                             (##fx+ _%i100920%_ '1)
                             _%deleted100922%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab100848%_ _%key100850%_)
        (let ((_%table100853%_ (&raw-table-table _%tab100848%_))
              (_%seed100855%_ (&raw-table-seed _%tab100848%_)))
          (let* ((_%h100858%_ (fxxor (eq-hash _%key100850%_) _%seed100855%_))
                 (_%size100861%_ (vector-length _%table100853%_))
                 (_%entries100864%_ (##fxquotient _%size100861%_ '2))
                 (_%start100867%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100858%_ _%entries100864%_)
                   '1)))
            (let _%loop100871%_ ((_%probe100874%_ _%start100867%_)
                                 (_%i100876%_ '1))
              (let ((_%k100879%_ (vector-ref _%table100853%_ _%probe100874%_)))
                (if (eq? _%k100879%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100879%_ (macro-deleted-obj))
                        (_%loop100871%_
                         (let ((_%next-probe100884%_
                                (fx+ _%start100867%_
                                     _%i100876%_
                                     (fx* _%i100876%_ _%i100876%_))))
                           (##fxmodulo _%next-probe100884%_ _%size100861%_))
                         (##fx+ _%i100876%_ '1))
                        (if (eq? _%key100850%_ _%k100879%_)
                            (let ()
                              (vector-set!
                               _%table100853%_
                               _%probe100874%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100853%_
                               (##fx+ _%probe100874%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab100848%_
                                  (##fx- (&raw-table-count _%tab100848%_)
                                         '1)))))
                            (_%loop100871%_
                             (let ((_%next-probe100890%_
                                    (fx+ _%start100867%_
                                         _%i100876%_
                                         (fx* _%i100876%_ _%i100876%_))))
                               (##fxmodulo
                                _%next-probe100890%_
                                _%size100861%_))
                             (##fx+ _%i100876%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint100829%_ _%seed100831%_)
        (make-raw-table__% _%size-hint100829%_ eqv-hash eqv? _%seed100831%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint100837%_ '#f) (_%seed100839%_ '0))
          (make-eqv-table__% _%size-hint100837%_ _%seed100839%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint100841%_)
        (let ((_%seed100843%_ '0))
          (make-eqv-table__% _%size-hint100841%_ _%seed100843%_))))
    (define make-eqv-table
      (lambda _g101405_
        (let ((_g101406_ (##length _g101405_)))
          (cond ((##fx= _g101406_ 0) (apply make-eqv-table__0 _g101405_))
                ((##fx= _g101406_ 1) (apply make-eqv-table__1 _g101405_))
                ((##fx= _g101406_ 2) (apply make-eqv-table__% _g101405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g101405_))))))
    (define eqv-table-ref
      (lambda (_%tab100782%_ _%key100783%_ _%default100784%_)
        (let ((_%table100786%_ (&raw-table-table _%tab100782%_))
              (_%seed100787%_ (&raw-table-seed _%tab100782%_)))
          (let* ((_%h100789%_ (fxxor (eqv-hash _%key100783%_) _%seed100787%_))
                 (_%size100792%_ (vector-length _%table100786%_))
                 (_%entries100795%_ (##fxquotient _%size100792%_ '2))
                 (_%start100798%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100789%_ _%entries100795%_)
                   '1)))
            (let _%loop100802%_ ((_%probe100805%_ _%start100798%_)
                                 (_%i100807%_ '1)
                                 (_%deleted100809%_ '#f))
              (let ((_%k100812%_ (vector-ref _%table100786%_ _%probe100805%_)))
                (if (eq? _%k100812%_ (macro-unused-obj))
                    _%default100784%_
                    (if (eq? _%k100812%_ (macro-deleted-obj))
                        (_%loop100802%_
                         (let ((_%next-probe100817%_
                                (fx+ _%start100798%_
                                     _%i100807%_
                                     (fx* _%i100807%_ _%i100807%_))))
                           (##fxmodulo _%next-probe100817%_ _%size100792%_))
                         (##fx+ _%i100807%_ '1)
                         (let ((_%$e100820%_ _%deleted100809%_))
                           (if _%$e100820%_ _%$e100820%_ _%probe100805%_)))
                        (if (eqv? _%key100783%_ _%k100812%_)
                            (vector-ref
                             _%table100786%_
                             (##fx+ _%probe100805%_ '1))
                            (_%loop100802%_
                             (let ((_%next-probe100825%_
                                    (fx+ _%start100798%_
                                         _%i100807%_
                                         (fx* _%i100807%_ _%i100807%_))))
                               (##fxmodulo
                                _%next-probe100825%_
                                _%size100792%_))
                             (##fx+ _%i100807%_ '1)
                             _%deleted100809%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab100778%_ _%key100779%_ _%value100780%_)
        (if (##fx< (&raw-table-free _%tab100778%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100778%_))
                    '4))
            (__raw-table-rehash! _%tab100778%_)
            '#!void)
        (__eqv-table-set! _%tab100778%_ _%key100779%_ _%value100780%_)))
    (define __eqv-table-set!
      (lambda (_%tab100729%_ _%key100730%_ _%value100731%_)
        (let ((_%table100734%_ (&raw-table-table _%tab100729%_))
              (_%seed100735%_ (&raw-table-seed _%tab100729%_)))
          (let* ((_%h100737%_ (fxxor (eqv-hash _%key100730%_) _%seed100735%_))
                 (_%size100740%_ (vector-length _%table100734%_))
                 (_%entries100743%_ (##fxquotient _%size100740%_ '2))
                 (_%start100746%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100737%_ _%entries100743%_)
                   '1)))
            (let _%loop100750%_ ((_%probe100753%_ _%start100746%_)
                                 (_%i100755%_ '1)
                                 (_%deleted100757%_ '#f))
              (let ((_%k100760%_ (vector-ref _%table100734%_ _%probe100753%_)))
                (if (eq? _%k100760%_ (macro-unused-obj))
                    (if _%deleted100757%_
                        (begin
                          (vector-set!
                           _%table100734%_
                           _%deleted100757%_
                           _%key100730%_)
                          (vector-set!
                           _%table100734%_
                           (##fx+ _%deleted100757%_ '1)
                           _%value100731%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100729%_
                              (##fx+ (&raw-table-count _%tab100729%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100734%_
                           _%probe100753%_
                           _%key100730%_)
                          (vector-set!
                           _%table100734%_
                           (##fx+ _%probe100753%_ '1)
                           _%value100731%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100729%_
                              (##fx- (&raw-table-free _%tab100729%_) '1))
                             (&raw-table-count-set!
                              _%tab100729%_
                              (##fx+ (&raw-table-count _%tab100729%_) '1))))))
                    (if (eq? _%k100760%_ (macro-deleted-obj))
                        (_%loop100750%_
                         (let ((_%next-probe100767%_
                                (fx+ _%start100746%_
                                     _%i100755%_
                                     (fx* _%i100755%_ _%i100755%_))))
                           (##fxmodulo _%next-probe100767%_ _%size100740%_))
                         (##fx+ _%i100755%_ '1)
                         (let ((_%$e100770%_ _%deleted100757%_))
                           (if _%$e100770%_ _%$e100770%_ _%probe100753%_)))
                        (if (eqv? _%key100730%_ _%k100760%_)
                            (let ()
                              (vector-set!
                               _%table100734%_
                               _%probe100753%_
                               _%key100730%_)
                              (vector-set!
                               _%table100734%_
                               (##fx+ _%probe100753%_ '1)
                               _%value100731%_))
                            (_%loop100750%_
                             (let ((_%next-probe100775%_
                                    (fx+ _%start100746%_
                                         _%i100755%_
                                         (fx* _%i100755%_ _%i100755%_))))
                               (##fxmodulo
                                _%next-probe100775%_
                                _%size100740%_))
                             (##fx+ _%i100755%_ '1)
                             _%deleted100757%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab100724%_
               _%key100725%_
               _%eqv-table-update!100726%_
               _%default100727%_)
        (if (##fx< (&raw-table-free _%tab100724%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100724%_))
                    '4))
            (__raw-table-rehash! _%tab100724%_)
            '#!void)
        (__eqv-table-update!
         _%tab100724%_
         _%key100725%_
         _%eqv-table-update!100726%_
         _%default100727%_)))
    (define __eqv-table-update!
      (lambda (_%tab100674%_
               _%key100675%_
               _%eqv-table-update!100676%_
               _%default100677%_)
        (let ((_%table100680%_ (&raw-table-table _%tab100674%_))
              (_%seed100681%_ (&raw-table-seed _%tab100674%_)))
          (let* ((_%h100683%_ (fxxor (eqv-hash _%key100675%_) _%seed100681%_))
                 (_%size100686%_ (vector-length _%table100680%_))
                 (_%entries100689%_ (##fxquotient _%size100686%_ '2))
                 (_%start100692%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100683%_ _%entries100689%_)
                   '1)))
            (let _%loop100696%_ ((_%probe100699%_ _%start100692%_)
                                 (_%i100701%_ '1)
                                 (_%deleted100703%_ '#f))
              (let ((_%k100706%_ (vector-ref _%table100680%_ _%probe100699%_)))
                (if (eq? _%k100706%_ (macro-unused-obj))
                    (if _%deleted100703%_
                        (begin
                          (vector-set!
                           _%table100680%_
                           _%deleted100703%_
                           _%key100675%_)
                          (vector-set!
                           _%table100680%_
                           (##fx+ _%deleted100703%_ '1)
                           (_%eqv-table-update!100676%_ _%default100677%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100674%_
                              (##fx+ (&raw-table-count _%tab100674%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100680%_
                           _%probe100699%_
                           _%key100675%_)
                          (vector-set!
                           _%table100680%_
                           (##fx+ _%probe100699%_ '1)
                           (_%eqv-table-update!100676%_ _%default100677%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100674%_
                              (##fx- (&raw-table-free _%tab100674%_) '1))
                             (&raw-table-count-set!
                              _%tab100674%_
                              (##fx+ (&raw-table-count _%tab100674%_) '1))))))
                    (if (eq? _%k100706%_ (macro-deleted-obj))
                        (_%loop100696%_
                         (let ((_%next-probe100713%_
                                (fx+ _%start100692%_
                                     _%i100701%_
                                     (fx* _%i100701%_ _%i100701%_))))
                           (##fxmodulo _%next-probe100713%_ _%size100686%_))
                         (##fx+ _%i100701%_ '1)
                         (let ((_%$e100716%_ _%deleted100703%_))
                           (if _%$e100716%_ _%$e100716%_ _%probe100699%_)))
                        (if (eqv? _%key100675%_ _%k100706%_)
                            (let ()
                              (vector-set!
                               _%table100680%_
                               _%probe100699%_
                               _%key100675%_)
                              (vector-set!
                               _%table100680%_
                               (##fx+ _%probe100699%_ '1)
                               (_%eqv-table-update!100676%_
                                (vector-ref
                                 _%table100680%_
                                 (##fx+ _%probe100699%_ '1)))))
                            (_%loop100696%_
                             (let ((_%next-probe100721%_
                                    (fx+ _%start100692%_
                                         _%i100701%_
                                         (fx* _%i100701%_ _%i100701%_))))
                               (##fxmodulo
                                _%next-probe100721%_
                                _%size100686%_))
                             (##fx+ _%i100701%_ '1)
                             _%deleted100703%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab100629%_ _%key100631%_)
        (let ((_%table100634%_ (&raw-table-table _%tab100629%_))
              (_%seed100636%_ (&raw-table-seed _%tab100629%_)))
          (let* ((_%h100639%_ (fxxor (eqv-hash _%key100631%_) _%seed100636%_))
                 (_%size100642%_ (vector-length _%table100634%_))
                 (_%entries100645%_ (##fxquotient _%size100642%_ '2))
                 (_%start100648%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100639%_ _%entries100645%_)
                   '1)))
            (let _%loop100652%_ ((_%probe100655%_ _%start100648%_)
                                 (_%i100657%_ '1))
              (let ((_%k100660%_ (vector-ref _%table100634%_ _%probe100655%_)))
                (if (eq? _%k100660%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100660%_ (macro-deleted-obj))
                        (_%loop100652%_
                         (let ((_%next-probe100665%_
                                (fx+ _%start100648%_
                                     _%i100657%_
                                     (fx* _%i100657%_ _%i100657%_))))
                           (##fxmodulo _%next-probe100665%_ _%size100642%_))
                         (##fx+ _%i100657%_ '1))
                        (if (eqv? _%key100631%_ _%k100660%_)
                            (let ()
                              (vector-set!
                               _%table100634%_
                               _%probe100655%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100634%_
                               (##fx+ _%probe100655%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab100629%_
                                  (##fx- (&raw-table-count _%tab100629%_)
                                         '1)))))
                            (_%loop100652%_
                             (let ((_%next-probe100671%_
                                    (fx+ _%start100648%_
                                         _%i100657%_
                                         (fx* _%i100657%_ _%i100657%_))))
                               (##fxmodulo
                                _%next-probe100671%_
                                _%size100642%_))
                             (##fx+ _%i100657%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint100610%_ _%seed100612%_)
        (make-raw-table__%
         _%size-hint100610%_
         symbolic-hash
         eq?
         _%seed100612%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint100618%_ '#f) (_%seed100620%_ '0))
          (make-symbolic-table__% _%size-hint100618%_ _%seed100620%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint100622%_)
        (let ((_%seed100624%_ '0))
          (make-symbolic-table__% _%size-hint100622%_ _%seed100624%_))))
    (define make-symbolic-table
      (lambda _g101407_
        (let ((_g101408_ (##length _g101407_)))
          (cond ((##fx= _g101408_ 0) (apply make-symbolic-table__0 _g101407_))
                ((##fx= _g101408_ 1) (apply make-symbolic-table__1 _g101407_))
                ((##fx= _g101408_ 2) (apply make-symbolic-table__% _g101407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g101407_))))))
    (define symbolic-table-ref
      (lambda (_%tab100563%_ _%key100564%_ _%default100565%_)
        (let ((_%table100567%_ (&raw-table-table _%tab100563%_))
              (_%seed100568%_ (&raw-table-seed _%tab100563%_)))
          (let* ((_%h100570%_
                  (fxxor (##symbol-hash _%key100564%_) _%seed100568%_))
                 (_%size100573%_ (vector-length _%table100567%_))
                 (_%entries100576%_ (##fxquotient _%size100573%_ '2))
                 (_%start100579%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100570%_ _%entries100576%_)
                   '1)))
            (let _%loop100583%_ ((_%probe100586%_ _%start100579%_)
                                 (_%i100588%_ '1)
                                 (_%deleted100590%_ '#f))
              (let ((_%k100593%_ (vector-ref _%table100567%_ _%probe100586%_)))
                (if (eq? _%k100593%_ (macro-unused-obj))
                    _%default100565%_
                    (if (eq? _%k100593%_ (macro-deleted-obj))
                        (_%loop100583%_
                         (let ((_%next-probe100598%_
                                (fx+ _%start100579%_
                                     _%i100588%_
                                     (fx* _%i100588%_ _%i100588%_))))
                           (##fxmodulo _%next-probe100598%_ _%size100573%_))
                         (##fx+ _%i100588%_ '1)
                         (let ((_%$e100601%_ _%deleted100590%_))
                           (if _%$e100601%_ _%$e100601%_ _%probe100586%_)))
                        (if (eq? _%key100564%_ _%k100593%_)
                            (vector-ref
                             _%table100567%_
                             (##fx+ _%probe100586%_ '1))
                            (_%loop100583%_
                             (let ((_%next-probe100606%_
                                    (fx+ _%start100579%_
                                         _%i100588%_
                                         (fx* _%i100588%_ _%i100588%_))))
                               (##fxmodulo
                                _%next-probe100606%_
                                _%size100573%_))
                             (##fx+ _%i100588%_ '1)
                             _%deleted100590%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab100559%_ _%key100560%_ _%value100561%_)
        (if (##fx< (&raw-table-free _%tab100559%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100559%_))
                    '4))
            (__raw-table-rehash! _%tab100559%_)
            '#!void)
        (__symbolic-table-set! _%tab100559%_ _%key100560%_ _%value100561%_)))
    (define __symbolic-table-set!
      (lambda (_%tab100510%_ _%key100511%_ _%value100512%_)
        (let ((_%table100515%_ (&raw-table-table _%tab100510%_))
              (_%seed100516%_ (&raw-table-seed _%tab100510%_)))
          (let* ((_%h100518%_
                  (fxxor (##symbol-hash _%key100511%_) _%seed100516%_))
                 (_%size100521%_ (vector-length _%table100515%_))
                 (_%entries100524%_ (##fxquotient _%size100521%_ '2))
                 (_%start100527%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100518%_ _%entries100524%_)
                   '1)))
            (let _%loop100531%_ ((_%probe100534%_ _%start100527%_)
                                 (_%i100536%_ '1)
                                 (_%deleted100538%_ '#f))
              (let ((_%k100541%_ (vector-ref _%table100515%_ _%probe100534%_)))
                (if (eq? _%k100541%_ (macro-unused-obj))
                    (if _%deleted100538%_
                        (begin
                          (vector-set!
                           _%table100515%_
                           _%deleted100538%_
                           _%key100511%_)
                          (vector-set!
                           _%table100515%_
                           (##fx+ _%deleted100538%_ '1)
                           _%value100512%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100510%_
                              (##fx+ (&raw-table-count _%tab100510%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100515%_
                           _%probe100534%_
                           _%key100511%_)
                          (vector-set!
                           _%table100515%_
                           (##fx+ _%probe100534%_ '1)
                           _%value100512%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100510%_
                              (##fx- (&raw-table-free _%tab100510%_) '1))
                             (&raw-table-count-set!
                              _%tab100510%_
                              (##fx+ (&raw-table-count _%tab100510%_) '1))))))
                    (if (eq? _%k100541%_ (macro-deleted-obj))
                        (_%loop100531%_
                         (let ((_%next-probe100548%_
                                (fx+ _%start100527%_
                                     _%i100536%_
                                     (fx* _%i100536%_ _%i100536%_))))
                           (##fxmodulo _%next-probe100548%_ _%size100521%_))
                         (##fx+ _%i100536%_ '1)
                         (let ((_%$e100551%_ _%deleted100538%_))
                           (if _%$e100551%_ _%$e100551%_ _%probe100534%_)))
                        (if (eq? _%key100511%_ _%k100541%_)
                            (let ()
                              (vector-set!
                               _%table100515%_
                               _%probe100534%_
                               _%key100511%_)
                              (vector-set!
                               _%table100515%_
                               (##fx+ _%probe100534%_ '1)
                               _%value100512%_))
                            (_%loop100531%_
                             (let ((_%next-probe100556%_
                                    (fx+ _%start100527%_
                                         _%i100536%_
                                         (fx* _%i100536%_ _%i100536%_))))
                               (##fxmodulo
                                _%next-probe100556%_
                                _%size100521%_))
                             (##fx+ _%i100536%_ '1)
                             _%deleted100538%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab100505%_
               _%key100506%_
               _%symbolic-table-update!100507%_
               _%default100508%_)
        (if (##fx< (&raw-table-free _%tab100505%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100505%_))
                    '4))
            (__raw-table-rehash! _%tab100505%_)
            '#!void)
        (__symbolic-table-update!
         _%tab100505%_
         _%key100506%_
         _%symbolic-table-update!100507%_
         _%default100508%_)))
    (define __symbolic-table-update!
      (lambda (_%tab100455%_
               _%key100456%_
               _%symbolic-table-update!100457%_
               _%default100458%_)
        (let ((_%table100461%_ (&raw-table-table _%tab100455%_))
              (_%seed100462%_ (&raw-table-seed _%tab100455%_)))
          (let* ((_%h100464%_
                  (fxxor (##symbol-hash _%key100456%_) _%seed100462%_))
                 (_%size100467%_ (vector-length _%table100461%_))
                 (_%entries100470%_ (##fxquotient _%size100467%_ '2))
                 (_%start100473%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100464%_ _%entries100470%_)
                   '1)))
            (let _%loop100477%_ ((_%probe100480%_ _%start100473%_)
                                 (_%i100482%_ '1)
                                 (_%deleted100484%_ '#f))
              (let ((_%k100487%_ (vector-ref _%table100461%_ _%probe100480%_)))
                (if (eq? _%k100487%_ (macro-unused-obj))
                    (if _%deleted100484%_
                        (begin
                          (vector-set!
                           _%table100461%_
                           _%deleted100484%_
                           _%key100456%_)
                          (vector-set!
                           _%table100461%_
                           (##fx+ _%deleted100484%_ '1)
                           (_%symbolic-table-update!100457%_
                            _%default100458%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100455%_
                              (##fx+ (&raw-table-count _%tab100455%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100461%_
                           _%probe100480%_
                           _%key100456%_)
                          (vector-set!
                           _%table100461%_
                           (##fx+ _%probe100480%_ '1)
                           (_%symbolic-table-update!100457%_
                            _%default100458%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100455%_
                              (##fx- (&raw-table-free _%tab100455%_) '1))
                             (&raw-table-count-set!
                              _%tab100455%_
                              (##fx+ (&raw-table-count _%tab100455%_) '1))))))
                    (if (eq? _%k100487%_ (macro-deleted-obj))
                        (_%loop100477%_
                         (let ((_%next-probe100494%_
                                (fx+ _%start100473%_
                                     _%i100482%_
                                     (fx* _%i100482%_ _%i100482%_))))
                           (##fxmodulo _%next-probe100494%_ _%size100467%_))
                         (##fx+ _%i100482%_ '1)
                         (let ((_%$e100497%_ _%deleted100484%_))
                           (if _%$e100497%_ _%$e100497%_ _%probe100480%_)))
                        (if (eq? _%key100456%_ _%k100487%_)
                            (let ()
                              (vector-set!
                               _%table100461%_
                               _%probe100480%_
                               _%key100456%_)
                              (vector-set!
                               _%table100461%_
                               (##fx+ _%probe100480%_ '1)
                               (_%symbolic-table-update!100457%_
                                (vector-ref
                                 _%table100461%_
                                 (##fx+ _%probe100480%_ '1)))))
                            (_%loop100477%_
                             (let ((_%next-probe100502%_
                                    (fx+ _%start100473%_
                                         _%i100482%_
                                         (fx* _%i100482%_ _%i100482%_))))
                               (##fxmodulo
                                _%next-probe100502%_
                                _%size100467%_))
                             (##fx+ _%i100482%_ '1)
                             _%deleted100484%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab100410%_ _%key100412%_)
        (let ((_%table100415%_ (&raw-table-table _%tab100410%_))
              (_%seed100417%_ (&raw-table-seed _%tab100410%_)))
          (let* ((_%h100420%_
                  (fxxor (##symbol-hash _%key100412%_) _%seed100417%_))
                 (_%size100423%_ (vector-length _%table100415%_))
                 (_%entries100426%_ (##fxquotient _%size100423%_ '2))
                 (_%start100429%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100420%_ _%entries100426%_)
                   '1)))
            (let _%loop100433%_ ((_%probe100436%_ _%start100429%_)
                                 (_%i100438%_ '1))
              (let ((_%k100441%_ (vector-ref _%table100415%_ _%probe100436%_)))
                (if (eq? _%k100441%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100441%_ (macro-deleted-obj))
                        (_%loop100433%_
                         (let ((_%next-probe100446%_
                                (fx+ _%start100429%_
                                     _%i100438%_
                                     (fx* _%i100438%_ _%i100438%_))))
                           (##fxmodulo _%next-probe100446%_ _%size100423%_))
                         (##fx+ _%i100438%_ '1))
                        (if (eq? _%key100412%_ _%k100441%_)
                            (let ()
                              (vector-set!
                               _%table100415%_
                               _%probe100436%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100415%_
                               (##fx+ _%probe100436%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab100410%_
                                  (##fx- (&raw-table-count _%tab100410%_)
                                         '1)))))
                            (_%loop100433%_
                             (let ((_%next-probe100452%_
                                    (fx+ _%start100429%_
                                         _%i100438%_
                                         (fx* _%i100438%_ _%i100438%_))))
                               (##fxmodulo
                                _%next-probe100452%_
                                _%size100423%_))
                             (##fx+ _%i100438%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint100391%_ _%seed100393%_)
        (make-raw-table__%
         _%size-hint100391%_
         string-hash
         ##string=?
         _%seed100393%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint100399%_ '#f) (_%seed100401%_ '0))
          (make-string-table__% _%size-hint100399%_ _%seed100401%_))))
    (define make-string-table__1
      (lambda (_%size-hint100403%_)
        (let ((_%seed100405%_ '0))
          (make-string-table__% _%size-hint100403%_ _%seed100405%_))))
    (define make-string-table
      (lambda _g101409_
        (let ((_g101410_ (##length _g101409_)))
          (cond ((##fx= _g101410_ 0) (apply make-string-table__0 _g101409_))
                ((##fx= _g101410_ 1) (apply make-string-table__1 _g101409_))
                ((##fx= _g101410_ 2) (apply make-string-table__% _g101409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g101409_))))))
    (define string-table-ref
      (lambda (_%tab100344%_ _%key100345%_ _%default100346%_)
        (let ((_%table100348%_ (&raw-table-table _%tab100344%_))
              (_%seed100349%_ (&raw-table-seed _%tab100344%_)))
          (let* ((_%h100351%_
                  (fxxor (##string=?-hash _%key100345%_) _%seed100349%_))
                 (_%size100354%_ (vector-length _%table100348%_))
                 (_%entries100357%_ (##fxquotient _%size100354%_ '2))
                 (_%start100360%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100351%_ _%entries100357%_)
                   '1)))
            (let _%loop100364%_ ((_%probe100367%_ _%start100360%_)
                                 (_%i100369%_ '1)
                                 (_%deleted100371%_ '#f))
              (let ((_%k100374%_ (vector-ref _%table100348%_ _%probe100367%_)))
                (if (eq? _%k100374%_ (macro-unused-obj))
                    _%default100346%_
                    (if (eq? _%k100374%_ (macro-deleted-obj))
                        (_%loop100364%_
                         (let ((_%next-probe100379%_
                                (fx+ _%start100360%_
                                     _%i100369%_
                                     (fx* _%i100369%_ _%i100369%_))))
                           (##fxmodulo _%next-probe100379%_ _%size100354%_))
                         (##fx+ _%i100369%_ '1)
                         (let ((_%$e100382%_ _%deleted100371%_))
                           (if _%$e100382%_ _%$e100382%_ _%probe100367%_)))
                        (if (##string=? _%key100345%_ _%k100374%_)
                            (vector-ref
                             _%table100348%_
                             (##fx+ _%probe100367%_ '1))
                            (_%loop100364%_
                             (let ((_%next-probe100387%_
                                    (fx+ _%start100360%_
                                         _%i100369%_
                                         (fx* _%i100369%_ _%i100369%_))))
                               (##fxmodulo
                                _%next-probe100387%_
                                _%size100354%_))
                             (##fx+ _%i100369%_ '1)
                             _%deleted100371%_))))))))))
    (define string-table-set!
      (lambda (_%tab100340%_ _%key100341%_ _%value100342%_)
        (if (##fx< (&raw-table-free _%tab100340%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100340%_))
                    '4))
            (__raw-table-rehash! _%tab100340%_)
            '#!void)
        (__string-table-set! _%tab100340%_ _%key100341%_ _%value100342%_)))
    (define __string-table-set!
      (lambda (_%tab100291%_ _%key100292%_ _%value100293%_)
        (let ((_%table100296%_ (&raw-table-table _%tab100291%_))
              (_%seed100297%_ (&raw-table-seed _%tab100291%_)))
          (let* ((_%h100299%_
                  (fxxor (##string=?-hash _%key100292%_) _%seed100297%_))
                 (_%size100302%_ (vector-length _%table100296%_))
                 (_%entries100305%_ (##fxquotient _%size100302%_ '2))
                 (_%start100308%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100299%_ _%entries100305%_)
                   '1)))
            (let _%loop100312%_ ((_%probe100315%_ _%start100308%_)
                                 (_%i100317%_ '1)
                                 (_%deleted100319%_ '#f))
              (let ((_%k100322%_ (vector-ref _%table100296%_ _%probe100315%_)))
                (if (eq? _%k100322%_ (macro-unused-obj))
                    (if _%deleted100319%_
                        (begin
                          (vector-set!
                           _%table100296%_
                           _%deleted100319%_
                           _%key100292%_)
                          (vector-set!
                           _%table100296%_
                           (##fx+ _%deleted100319%_ '1)
                           _%value100293%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100291%_
                              (##fx+ (&raw-table-count _%tab100291%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100296%_
                           _%probe100315%_
                           _%key100292%_)
                          (vector-set!
                           _%table100296%_
                           (##fx+ _%probe100315%_ '1)
                           _%value100293%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100291%_
                              (##fx- (&raw-table-free _%tab100291%_) '1))
                             (&raw-table-count-set!
                              _%tab100291%_
                              (##fx+ (&raw-table-count _%tab100291%_) '1))))))
                    (if (eq? _%k100322%_ (macro-deleted-obj))
                        (_%loop100312%_
                         (let ((_%next-probe100329%_
                                (fx+ _%start100308%_
                                     _%i100317%_
                                     (fx* _%i100317%_ _%i100317%_))))
                           (##fxmodulo _%next-probe100329%_ _%size100302%_))
                         (##fx+ _%i100317%_ '1)
                         (let ((_%$e100332%_ _%deleted100319%_))
                           (if _%$e100332%_ _%$e100332%_ _%probe100315%_)))
                        (if (##string=? _%key100292%_ _%k100322%_)
                            (let ()
                              (vector-set!
                               _%table100296%_
                               _%probe100315%_
                               _%key100292%_)
                              (vector-set!
                               _%table100296%_
                               (##fx+ _%probe100315%_ '1)
                               _%value100293%_))
                            (_%loop100312%_
                             (let ((_%next-probe100337%_
                                    (fx+ _%start100308%_
                                         _%i100317%_
                                         (fx* _%i100317%_ _%i100317%_))))
                               (##fxmodulo
                                _%next-probe100337%_
                                _%size100302%_))
                             (##fx+ _%i100317%_ '1)
                             _%deleted100319%_))))))))))
    (define string-table-update!
      (lambda (_%tab100286%_
               _%key100287%_
               _%string-table-update!100288%_
               _%default100289%_)
        (if (##fx< (&raw-table-free _%tab100286%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100286%_))
                    '4))
            (__raw-table-rehash! _%tab100286%_)
            '#!void)
        (__string-table-update!
         _%tab100286%_
         _%key100287%_
         _%string-table-update!100288%_
         _%default100289%_)))
    (define __string-table-update!
      (lambda (_%tab100236%_
               _%key100237%_
               _%string-table-update!100238%_
               _%default100239%_)
        (let ((_%table100242%_ (&raw-table-table _%tab100236%_))
              (_%seed100243%_ (&raw-table-seed _%tab100236%_)))
          (let* ((_%h100245%_
                  (fxxor (##string=?-hash _%key100237%_) _%seed100243%_))
                 (_%size100248%_ (vector-length _%table100242%_))
                 (_%entries100251%_ (##fxquotient _%size100248%_ '2))
                 (_%start100254%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100245%_ _%entries100251%_)
                   '1)))
            (let _%loop100258%_ ((_%probe100261%_ _%start100254%_)
                                 (_%i100263%_ '1)
                                 (_%deleted100265%_ '#f))
              (let ((_%k100268%_ (vector-ref _%table100242%_ _%probe100261%_)))
                (if (eq? _%k100268%_ (macro-unused-obj))
                    (if _%deleted100265%_
                        (begin
                          (vector-set!
                           _%table100242%_
                           _%deleted100265%_
                           _%key100237%_)
                          (vector-set!
                           _%table100242%_
                           (##fx+ _%deleted100265%_ '1)
                           (_%string-table-update!100238%_ _%default100239%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100236%_
                              (##fx+ (&raw-table-count _%tab100236%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100242%_
                           _%probe100261%_
                           _%key100237%_)
                          (vector-set!
                           _%table100242%_
                           (##fx+ _%probe100261%_ '1)
                           (_%string-table-update!100238%_ _%default100239%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100236%_
                              (##fx- (&raw-table-free _%tab100236%_) '1))
                             (&raw-table-count-set!
                              _%tab100236%_
                              (##fx+ (&raw-table-count _%tab100236%_) '1))))))
                    (if (eq? _%k100268%_ (macro-deleted-obj))
                        (_%loop100258%_
                         (let ((_%next-probe100275%_
                                (fx+ _%start100254%_
                                     _%i100263%_
                                     (fx* _%i100263%_ _%i100263%_))))
                           (##fxmodulo _%next-probe100275%_ _%size100248%_))
                         (##fx+ _%i100263%_ '1)
                         (let ((_%$e100278%_ _%deleted100265%_))
                           (if _%$e100278%_ _%$e100278%_ _%probe100261%_)))
                        (if (##string=? _%key100237%_ _%k100268%_)
                            (let ()
                              (vector-set!
                               _%table100242%_
                               _%probe100261%_
                               _%key100237%_)
                              (vector-set!
                               _%table100242%_
                               (##fx+ _%probe100261%_ '1)
                               (_%string-table-update!100238%_
                                (vector-ref
                                 _%table100242%_
                                 (##fx+ _%probe100261%_ '1)))))
                            (_%loop100258%_
                             (let ((_%next-probe100283%_
                                    (fx+ _%start100254%_
                                         _%i100263%_
                                         (fx* _%i100263%_ _%i100263%_))))
                               (##fxmodulo
                                _%next-probe100283%_
                                _%size100248%_))
                             (##fx+ _%i100263%_ '1)
                             _%deleted100265%_))))))))))
    (define string-table-delete!
      (lambda (_%tab100191%_ _%key100193%_)
        (let ((_%table100196%_ (&raw-table-table _%tab100191%_))
              (_%seed100198%_ (&raw-table-seed _%tab100191%_)))
          (let* ((_%h100201%_
                  (fxxor (##string=?-hash _%key100193%_) _%seed100198%_))
                 (_%size100204%_ (vector-length _%table100196%_))
                 (_%entries100207%_ (##fxquotient _%size100204%_ '2))
                 (_%start100210%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100201%_ _%entries100207%_)
                   '1)))
            (let _%loop100214%_ ((_%probe100217%_ _%start100210%_)
                                 (_%i100219%_ '1))
              (let ((_%k100222%_ (vector-ref _%table100196%_ _%probe100217%_)))
                (if (eq? _%k100222%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100222%_ (macro-deleted-obj))
                        (_%loop100214%_
                         (let ((_%next-probe100227%_
                                (fx+ _%start100210%_
                                     _%i100219%_
                                     (fx* _%i100219%_ _%i100219%_))))
                           (##fxmodulo _%next-probe100227%_ _%size100204%_))
                         (##fx+ _%i100219%_ '1))
                        (if (##string=? _%key100193%_ _%k100222%_)
                            (let ()
                              (vector-set!
                               _%table100196%_
                               _%probe100217%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100196%_
                               (##fx+ _%probe100217%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab100191%_
                                  (##fx- (&raw-table-count _%tab100191%_)
                                         '1)))))
                            (_%loop100214%_
                             (let ((_%next-probe100233%_
                                    (fx+ _%start100210%_
                                         _%i100219%_
                                         (fx* _%i100219%_ _%i100219%_))))
                               (##fxmodulo
                                _%next-probe100233%_
                                _%size100204%_))
                             (##fx+ _%i100219%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint100172%_ _%seed100174%_)
        (make-raw-table__%
         _%size-hint100172%_
         immediate-hash
         eq?
         _%seed100174%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint100180%_ '#f) (_%seed100182%_ '0))
          (make-immediate-table__% _%size-hint100180%_ _%seed100182%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint100184%_)
        (let ((_%seed100186%_ '0))
          (make-immediate-table__% _%size-hint100184%_ _%seed100186%_))))
    (define make-immediate-table
      (lambda _g101411_
        (let ((_g101412_ (##length _g101411_)))
          (cond ((##fx= _g101412_ 0) (apply make-immediate-table__0 _g101411_))
                ((##fx= _g101412_ 1) (apply make-immediate-table__1 _g101411_))
                ((##fx= _g101412_ 2) (apply make-immediate-table__% _g101411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g101411_))))))
    (define immediate-table-ref
      (lambda (_%tab100125%_ _%key100126%_ _%default100127%_)
        (let ((_%table100129%_ (&raw-table-table _%tab100125%_))
              (_%seed100130%_ (&raw-table-seed _%tab100125%_)))
          (let* ((_%h100132%_
                  (fxxor (immediate-hash _%key100126%_) _%seed100130%_))
                 (_%size100135%_ (vector-length _%table100129%_))
                 (_%entries100138%_ (##fxquotient _%size100135%_ '2))
                 (_%start100141%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100132%_ _%entries100138%_)
                   '1)))
            (let _%loop100145%_ ((_%probe100148%_ _%start100141%_)
                                 (_%i100150%_ '1)
                                 (_%deleted100152%_ '#f))
              (let ((_%k100155%_ (vector-ref _%table100129%_ _%probe100148%_)))
                (if (eq? _%k100155%_ (macro-unused-obj))
                    _%default100127%_
                    (if (eq? _%k100155%_ (macro-deleted-obj))
                        (_%loop100145%_
                         (let ((_%next-probe100160%_
                                (fx+ _%start100141%_
                                     _%i100150%_
                                     (fx* _%i100150%_ _%i100150%_))))
                           (##fxmodulo _%next-probe100160%_ _%size100135%_))
                         (##fx+ _%i100150%_ '1)
                         (let ((_%$e100163%_ _%deleted100152%_))
                           (if _%$e100163%_ _%$e100163%_ _%probe100148%_)))
                        (if (eq? _%key100126%_ _%k100155%_)
                            (vector-ref
                             _%table100129%_
                             (##fx+ _%probe100148%_ '1))
                            (_%loop100145%_
                             (let ((_%next-probe100168%_
                                    (fx+ _%start100141%_
                                         _%i100150%_
                                         (fx* _%i100150%_ _%i100150%_))))
                               (##fxmodulo
                                _%next-probe100168%_
                                _%size100135%_))
                             (##fx+ _%i100150%_ '1)
                             _%deleted100152%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab100121%_ _%key100122%_ _%value100123%_)
        (if (##fx< (&raw-table-free _%tab100121%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100121%_))
                    '4))
            (__raw-table-rehash! _%tab100121%_)
            '#!void)
        (__immediate-table-set! _%tab100121%_ _%key100122%_ _%value100123%_)))
    (define __immediate-table-set!
      (lambda (_%tab100072%_ _%key100073%_ _%value100074%_)
        (let ((_%table100077%_ (&raw-table-table _%tab100072%_))
              (_%seed100078%_ (&raw-table-seed _%tab100072%_)))
          (let* ((_%h100080%_
                  (fxxor (immediate-hash _%key100073%_) _%seed100078%_))
                 (_%size100083%_ (vector-length _%table100077%_))
                 (_%entries100086%_ (##fxquotient _%size100083%_ '2))
                 (_%start100089%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100080%_ _%entries100086%_)
                   '1)))
            (let _%loop100093%_ ((_%probe100096%_ _%start100089%_)
                                 (_%i100098%_ '1)
                                 (_%deleted100100%_ '#f))
              (let ((_%k100103%_ (vector-ref _%table100077%_ _%probe100096%_)))
                (if (eq? _%k100103%_ (macro-unused-obj))
                    (if _%deleted100100%_
                        (begin
                          (vector-set!
                           _%table100077%_
                           _%deleted100100%_
                           _%key100073%_)
                          (vector-set!
                           _%table100077%_
                           (##fx+ _%deleted100100%_ '1)
                           _%value100074%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100072%_
                              (##fx+ (&raw-table-count _%tab100072%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100077%_
                           _%probe100096%_
                           _%key100073%_)
                          (vector-set!
                           _%table100077%_
                           (##fx+ _%probe100096%_ '1)
                           _%value100074%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100072%_
                              (##fx- (&raw-table-free _%tab100072%_) '1))
                             (&raw-table-count-set!
                              _%tab100072%_
                              (##fx+ (&raw-table-count _%tab100072%_) '1))))))
                    (if (eq? _%k100103%_ (macro-deleted-obj))
                        (_%loop100093%_
                         (let ((_%next-probe100110%_
                                (fx+ _%start100089%_
                                     _%i100098%_
                                     (fx* _%i100098%_ _%i100098%_))))
                           (##fxmodulo _%next-probe100110%_ _%size100083%_))
                         (##fx+ _%i100098%_ '1)
                         (let ((_%$e100113%_ _%deleted100100%_))
                           (if _%$e100113%_ _%$e100113%_ _%probe100096%_)))
                        (if (eq? _%key100073%_ _%k100103%_)
                            (let ()
                              (vector-set!
                               _%table100077%_
                               _%probe100096%_
                               _%key100073%_)
                              (vector-set!
                               _%table100077%_
                               (##fx+ _%probe100096%_ '1)
                               _%value100074%_))
                            (_%loop100093%_
                             (let ((_%next-probe100118%_
                                    (fx+ _%start100089%_
                                         _%i100098%_
                                         (fx* _%i100098%_ _%i100098%_))))
                               (##fxmodulo
                                _%next-probe100118%_
                                _%size100083%_))
                             (##fx+ _%i100098%_ '1)
                             _%deleted100100%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab100067%_
               _%key100068%_
               _%immediate-table-update!100069%_
               _%default100070%_)
        (if (##fx< (&raw-table-free _%tab100067%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab100067%_))
                    '4))
            (__raw-table-rehash! _%tab100067%_)
            '#!void)
        (__immediate-table-update!
         _%tab100067%_
         _%key100068%_
         _%immediate-table-update!100069%_
         _%default100070%_)))
    (define __immediate-table-update!
      (lambda (_%tab100017%_
               _%key100018%_
               _%immediate-table-update!100019%_
               _%default100020%_)
        (let ((_%table100023%_ (&raw-table-table _%tab100017%_))
              (_%seed100024%_ (&raw-table-seed _%tab100017%_)))
          (let* ((_%h100026%_
                  (fxxor (immediate-hash _%key100018%_) _%seed100024%_))
                 (_%size100029%_ (vector-length _%table100023%_))
                 (_%entries100032%_ (##fxquotient _%size100029%_ '2))
                 (_%start100035%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h100026%_ _%entries100032%_)
                   '1)))
            (let _%loop100039%_ ((_%probe100042%_ _%start100035%_)
                                 (_%i100044%_ '1)
                                 (_%deleted100046%_ '#f))
              (let ((_%k100049%_ (vector-ref _%table100023%_ _%probe100042%_)))
                (if (eq? _%k100049%_ (macro-unused-obj))
                    (if _%deleted100046%_
                        (begin
                          (vector-set!
                           _%table100023%_
                           _%deleted100046%_
                           _%key100018%_)
                          (vector-set!
                           _%table100023%_
                           (##fx+ _%deleted100046%_ '1)
                           (_%immediate-table-update!100019%_
                            _%default100020%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab100017%_
                              (##fx+ (&raw-table-count _%tab100017%_) '1)))))
                        (begin
                          (vector-set!
                           _%table100023%_
                           _%probe100042%_
                           _%key100018%_)
                          (vector-set!
                           _%table100023%_
                           (##fx+ _%probe100042%_ '1)
                           (_%immediate-table-update!100019%_
                            _%default100020%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab100017%_
                              (##fx- (&raw-table-free _%tab100017%_) '1))
                             (&raw-table-count-set!
                              _%tab100017%_
                              (##fx+ (&raw-table-count _%tab100017%_) '1))))))
                    (if (eq? _%k100049%_ (macro-deleted-obj))
                        (_%loop100039%_
                         (let ((_%next-probe100056%_
                                (fx+ _%start100035%_
                                     _%i100044%_
                                     (fx* _%i100044%_ _%i100044%_))))
                           (##fxmodulo _%next-probe100056%_ _%size100029%_))
                         (##fx+ _%i100044%_ '1)
                         (let ((_%$e100059%_ _%deleted100046%_))
                           (if _%$e100059%_ _%$e100059%_ _%probe100042%_)))
                        (if (eq? _%key100018%_ _%k100049%_)
                            (let ()
                              (vector-set!
                               _%table100023%_
                               _%probe100042%_
                               _%key100018%_)
                              (vector-set!
                               _%table100023%_
                               (##fx+ _%probe100042%_ '1)
                               (_%immediate-table-update!100019%_
                                (vector-ref
                                 _%table100023%_
                                 (##fx+ _%probe100042%_ '1)))))
                            (_%loop100039%_
                             (let ((_%next-probe100064%_
                                    (fx+ _%start100035%_
                                         _%i100044%_
                                         (fx* _%i100044%_ _%i100044%_))))
                               (##fxmodulo
                                _%next-probe100064%_
                                _%size100029%_))
                             (##fx+ _%i100044%_ '1)
                             _%deleted100046%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab99972%_ _%key99974%_)
        (let ((_%table99977%_ (&raw-table-table _%tab99972%_))
              (_%seed99979%_ (&raw-table-seed _%tab99972%_)))
          (let* ((_%h99982%_
                  (fxxor (immediate-hash _%key99974%_) _%seed99979%_))
                 (_%size99985%_ (vector-length _%table99977%_))
                 (_%entries99988%_ (##fxquotient _%size99985%_ '2))
                 (_%start99991%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h99982%_ _%entries99988%_)
                   '1)))
            (let _%loop99995%_ ((_%probe99998%_ _%start99991%_)
                                (_%i100000%_ '1))
              (let ((_%k100003%_ (vector-ref _%table99977%_ _%probe99998%_)))
                (if (eq? _%k100003%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100003%_ (macro-deleted-obj))
                        (_%loop99995%_
                         (let ((_%next-probe100008%_
                                (fx+ _%start99991%_
                                     _%i100000%_
                                     (fx* _%i100000%_ _%i100000%_))))
                           (##fxmodulo _%next-probe100008%_ _%size99985%_))
                         (##fx+ _%i100000%_ '1))
                        (if (eq? _%key99974%_ _%k100003%_)
                            (let ()
                              (vector-set!
                               _%table99977%_
                               _%probe99998%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table99977%_
                               (##fx+ _%probe99998%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab99972%_
                                  (##fx- (&raw-table-count _%tab99972%_)
                                         '1)))))
                            (_%loop99995%_
                             (let ((_%next-probe100014%_
                                    (fx+ _%start99991%_
                                         _%i100000%_
                                         (fx* _%i100000%_ _%i100000%_))))
                               (##fxmodulo _%next-probe100014%_ _%size99985%_))
                             (##fx+ _%i100000%_ '1)))))))))))
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
      (lambda (_%tab99970%_)
        (##unchecked-structure-ref
         _%tab99970%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab99968%_)
        (##unchecked-structure-ref
         _%tab99968%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab99965%_ _%val99966%_)
        (##unchecked-structure-set!
         _%tab99965%_
         _%val99966%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab99962%_ _%val99963%_)
        (##unchecked-structure-set!
         _%tab99962%_
         _%val99963%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint99938%_ _%klass99939%_ _%flags99940%_)
        (let ((_%gcht99942%_
               (__gc-table-new
                (if (fixnum? _%size-hint99938%_) _%size-hint99938%_ '16)
                _%flags99940%_)))
          (##structure _%klass99939%_ _%gcht99942%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint99947%_)
        (let* ((_%klass99949%_ __gc-table::t) (_%flags99951%_ '0))
          (make-gc-table__%
           _%size-hint99947%_
           _%klass99949%_
           _%flags99951%_))))
    (define make-gc-table__1
      (lambda (_%size-hint99953%_ _%klass99954%_)
        (let ((_%flags99956%_ '0))
          (make-gc-table__%
           _%size-hint99953%_
           _%klass99954%_
           _%flags99956%_))))
    (define make-gc-table
      (lambda _g101413_
        (let ((_g101414_ (##length _g101413_)))
          (cond ((##fx= _g101414_ 1) (apply make-gc-table__0 _g101413_))
                ((##fx= _g101414_ 2) (apply make-gc-table__1 _g101413_))
                ((##fx= _g101414_ 3) (apply make-gc-table__% _g101413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g101413_))))))
    (define __gc-table-immediate
      (lambda (_%tab99929%_)
        (let ((_%$e99931%_ (&gc-table-immediate _%tab99929%_)))
          (if _%$e99931%_
              _%$e99931%_
              (let ((_%immediate99935%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab99929%_ _%immediate99935%_)
                _%immediate99935%_)))))
    (define __gc-table-new
      (lambda (_%size99919%_ _%flags99920%_)
        (let* ((_%flags99922%_
                (##fxand _%flags99920%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags99924%_
                (fxior _%flags99922%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht99926%_
                (##gc-hash-table-allocate
                 _%size99919%_
                 _%flags99924%_
                 __gc-table-loads)))
          _%gcht99926%_)))
    (define __gc-table-e
      (lambda (_%tab99914%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht99917%_ (&gc-table-gcht _%tab99914%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht99917%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht99917%_
              (begin
                (__gc-table-rehash! _%tab99914%_)
                (&gc-table-gcht _%tab99914%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab99905%_)
        (let* ((_%old-table99907%_ (&gc-table-gcht _%tab99905%_))
               (_%new-table99909%_
                (##gc-hash-table-resize! _%old-table99907%_ __gc-table-loads))
               (_%gcht99911%_
                (##gc-hash-table-rehash!
                 _%old-table99907%_
                 _%new-table99909%_)))
          (&gc-table-gcht-set! _%tab99905%_ _%gcht99911%_))))
    (define gc-table-ref
      (lambda (_%tab99889%_ _%key99890%_ _%default99891%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key99890%_)
            (let* ((_%gcht99895%_ (__gc-table-e _%tab99889%_))
                   (_%value99897%_
                    (##gc-hash-table-ref _%gcht99895%_ _%key99890%_)))
              (if (eq? _%value99897%_ (macro-unused-obj))
                  _%default99891%_
                  _%value99897%_))
            (let ((_%$e99899%_ (&gc-table-immediate _%tab99889%_)))
              (if _%$e99899%_
                  ((lambda (_%immediate99902%_)
                     (immediate-table-ref
                      _%immediate99902%_
                      _%key99890%_
                      _%default99891%_))
                   _%$e99899%_)
                  _%default99891%_)))))
    (define gc-table-set!
      (lambda (_%tab99882%_ _%key99883%_ _%value99884%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key99883%_)
            (let ((_%gcht99887%_ (__gc-table-e _%tab99882%_)))
              (if (##gc-hash-table-set!
                   _%gcht99887%_
                   _%key99883%_
                   _%value99884%_)
                  (begin
                    (__gc-table-rehash! _%tab99882%_)
                    (gc-table-set! _%tab99882%_ _%key99883%_ _%value99884%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab99882%_)
             _%key99883%_
             _%value99884%_))))
    (define gc-table-update!
      (lambda (_%tab99875%_ _%key99876%_ _%update99877%_ _%default99878%_)
        (if (##mem-allocated? _%key99876%_)
            (let ((_%value99880%_
                   (gc-table-ref _%tab99875%_ _%key99876%_ _%default99878%_)))
              (gc-table-set!
               _%tab99875%_
               _%key99876%_
               (_%update99877%_ _%value99880%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab99875%_)
             _%key99876%_
             _%update99877%_
             _%default99878%_))))
    (define gc-table-delete!
      (lambda (_%tab99863%_ _%key99864%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key99864%_)
            (let ((_%gcht99868%_ (__gc-table-e _%tab99863%_)))
              (if (##gc-hash-table-set!
                   _%gcht99868%_
                   _%key99864%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab99863%_)
                    (gc-table-delete! _%tab99863%_ _%key99864%_))
                  '#!void))
            (let ((_%$e99870%_ (&gc-table-immediate _%tab99863%_)))
              (if _%$e99870%_
                  ((lambda (_%immediate99873%_)
                     (immediate-table-delete! _%immediate99873%_ _%key99864%_))
                   _%$e99870%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab99852%_ _%proc99853%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht99856%_ (__gc-table-e _%tab99852%_)))
            (##gc-hash-table-for-each _%proc99853%_ _%gcht99856%_))
          (let ((_%$e99858%_ (&gc-table-immediate _%tab99852%_)))
            (if _%$e99858%_
                ((lambda (_%immediate99861%_)
                   (raw-table-for-each _%immediate99861%_ _%proc99853%_))
                 _%$e99858%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab99840%_)
        (let* ((_%gcht99842%_ (__gc-table-e _%tab99840%_))
               (_%new-table99844%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht99842%_)
                 (macro-gc-hash-table-flags _%gcht99842%_)))
               (_%result99846%_
                (##structure
                 (##structure-type _%tab99840%_)
                 _%new-table99844%_
                 '#f)))
          (gc-table-for-each
           _%tab99840%_
           (lambda (_%k99849%_ _%v99850%_)
             (gc-table-set! _%result99846%_ _%k99849%_ _%v99850%_)))
          _%result99846%_)))
    (define gc-table-clear!
      (lambda (_%tab99833%_)
        (let* ((_%gcht99835%_ (__gc-table-e _%tab99833%_))
               (_%new-table99837%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht99835%_))))
          (&gc-table-gcht-set! _%tab99833%_ _%new-table99837%_)
          (&gc-table-immediate-set! _%tab99833%_ '#f))))
    (define gc-table-length
      (lambda (_%tab99825%_)
        (let ((_%gcht99827%_ (__gc-table-e _%tab99825%_)))
          (fx+ (macro-gc-hash-table-count _%gcht99827%_)
               (let ((_%$e99829%_ (&gc-table-immediate _%tab99825%_)))
                 (if _%$e99829%_ (&raw-table-count _%$e99829%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj99810%_)
        (declare (not interrupts-enabled))
        (let ((_%val99813%_ (gc-table-ref __object-eq-hash _%obj99810%_ '#f)))
          (if _%val99813%_
              _%val99813%_
              (let* ((_%mix99815%_ __object-eq-hash-next)
                     (_%ptr99817%_ (##type-cast _%obj99810%_ '0))
                     (_%h99819%_
                      (fxand (fxxor _%mix99815%_ _%ptr99817%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e99822%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e99822%_ _%$e99822%_ '0)))
                (gc-table-set! __object-eq-hash _%obj99810%_ _%h99819%_)
                _%h99819%_)))))))
