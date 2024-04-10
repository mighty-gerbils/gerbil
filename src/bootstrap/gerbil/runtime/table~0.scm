(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712784663)
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
      (lambda (_%tab91521%_)
        (##unchecked-structure-ref
         _%tab91521%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab91519%_)
        (##unchecked-structure-ref
         _%tab91519%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab91517%_)
        (##unchecked-structure-ref
         _%tab91517%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab91515%_)
        (##unchecked-structure-ref
         _%tab91515%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab91513%_)
        (##unchecked-structure-ref
         _%tab91513%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab91511%_)
        (##unchecked-structure-ref
         _%tab91511%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab91508%_ _%val91509%_)
        (##unchecked-structure-set!
         _%tab91508%_
         _%val91509%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab91505%_ _%val91506%_)
        (##unchecked-structure-set!
         _%tab91505%_
         _%val91506%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab91502%_ _%val91503%_)
        (##unchecked-structure-set!
         _%tab91502%_
         _%val91503%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab91499%_ _%val91500%_)
        (##unchecked-structure-set!
         _%tab91499%_
         _%val91500%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab91496%_ _%val91497%_)
        (##unchecked-structure-set!
         _%tab91496%_
         _%val91497%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab91493%_ _%val91494%_)
        (##unchecked-structure-set!
         _%tab91493%_
         _%val91494%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint91491%_)
        (if (and (fixnum? _%size-hint91491%_) (##fx> _%size-hint91491%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint91491%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint91467%_ _%hash91468%_ _%test91469%_ _%seed91470%_)
        (let* ((_%size91472%_ (raw-table-size-hint->size _%size-hint91467%_))
               (_%table91474%_
                (##make-vector _%size91472%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table91474%_
           '0
           (##fxquotient _%size91472%_ '2)
           _%hash91468%_
           _%test91469%_
           _%seed91470%_))))
    (define make-raw-table__0
      (lambda (_%size-hint91480%_ _%hash91481%_ _%test91482%_)
        (let ((_%seed91484%_ '0))
          (make-raw-table__%
           _%size-hint91480%_
           _%hash91481%_
           _%test91482%_
           _%seed91484%_))))
    (define make-raw-table
      (lambda _g91523_
        (let ((_g91522_ (##length _g91523_)))
          (cond ((##fx= _g91522_ 3) (apply make-raw-table__0 _g91523_))
                ((##fx= _g91522_ 4) (apply make-raw-table__% _g91523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g91523_))))))
    (define raw-table-ref
      (lambda (_%tab91418%_ _%key91419%_ _%default91420%_)
        (let ((_%table91422%_ (&raw-table-table _%tab91418%_))
              (_%seed91423%_ (&raw-table-seed _%tab91418%_))
              (_%hash91424%_ (&raw-table-hash _%tab91418%_))
              (_%test91425%_ (&raw-table-test _%tab91418%_)))
          (let* ((_%h91427%_
                  (fxxor (_%hash91424%_ _%key91419%_) _%seed91423%_))
                 (_%size91430%_ (vector-length _%table91422%_))
                 (_%entries91433%_ (##fxquotient _%size91430%_ '2))
                 (_%start91436%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91427%_ _%entries91433%_)
                   '1)))
            (let _%loop91440%_ ((_%probe91443%_ _%start91436%_)
                                (_%i91445%_ '1)
                                (_%deleted91447%_ '#f))
              (let ((_%k91450%_ (vector-ref _%table91422%_ _%probe91443%_)))
                (if (eq? _%k91450%_ (macro-unused-obj))
                    _%default91420%_
                    (if (eq? _%k91450%_ (macro-deleted-obj))
                        (_%loop91440%_
                         (let ((_%next-probe91455%_
                                (fx+ _%start91436%_
                                     _%i91445%_
                                     (fx* _%i91445%_ _%i91445%_))))
                           (##fxmodulo _%next-probe91455%_ _%size91430%_))
                         (##fx+ _%i91445%_ '1)
                         (let ((_%$e91458%_ _%deleted91447%_))
                           (if _%$e91458%_ _%$e91458%_ _%probe91443%_)))
                        (if (_%test91425%_ _%key91419%_ _%k91450%_)
                            (vector-ref
                             _%table91422%_
                             (##fx+ _%probe91443%_ '1))
                            (_%loop91440%_
                             (let ((_%next-probe91463%_
                                    (fx+ _%start91436%_
                                         _%i91445%_
                                         (fx* _%i91445%_ _%i91445%_))))
                               (##fxmodulo _%next-probe91463%_ _%size91430%_))
                             (##fx+ _%i91445%_ '1)
                             _%deleted91447%_))))))))))
    (define raw-table-set!
      (lambda (_%tab91414%_ _%key91415%_ _%value91416%_)
        (if (##fx< (&raw-table-free _%tab91414%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91414%_))
                    '4))
            (__raw-table-rehash! _%tab91414%_)
            '#!void)
        (__raw-table-set! _%tab91414%_ _%key91415%_ _%value91416%_)))
    (define raw-table-update!
      (lambda (_%tab91409%_ _%key91410%_ _%update91411%_ _%default91412%_)
        (if (##fx< (&raw-table-free _%tab91409%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91409%_))
                    '4))
            (__raw-table-rehash! _%tab91409%_)
            '#!void)
        (__raw-table-update!
         _%tab91409%_
         _%key91410%_
         _%update91411%_
         _%default91412%_)))
    (define raw-table-delete!
      (lambda (_%tab91366%_ _%key91367%_)
        (let ((_%table91369%_ (&raw-table-table _%tab91366%_))
              (_%seed91370%_ (&raw-table-seed _%tab91366%_))
              (_%hash91371%_ (&raw-table-hash _%tab91366%_))
              (_%test91372%_ (&raw-table-test _%tab91366%_)))
          (let* ((_%h91374%_
                  (fxxor (_%hash91371%_ _%key91367%_) _%seed91370%_))
                 (_%size91377%_ (vector-length _%table91369%_))
                 (_%entries91380%_ (##fxquotient _%size91377%_ '2))
                 (_%start91383%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91374%_ _%entries91380%_)
                   '1)))
            (let _%loop91387%_ ((_%probe91390%_ _%start91383%_)
                                (_%i91392%_ '1))
              (let ((_%k91395%_ (vector-ref _%table91369%_ _%probe91390%_)))
                (if (eq? _%k91395%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91395%_ (macro-deleted-obj))
                        (_%loop91387%_
                         (let ((_%next-probe91400%_
                                (fx+ _%start91383%_
                                     _%i91392%_
                                     (fx* _%i91392%_ _%i91392%_))))
                           (##fxmodulo _%next-probe91400%_ _%size91377%_))
                         (##fx+ _%i91392%_ '1))
                        (if (_%test91372%_ _%key91367%_ _%k91395%_)
                            (let ()
                              (vector-set!
                               _%table91369%_
                               _%probe91390%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table91369%_
                               (##fx+ _%probe91390%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab91366%_
                                  (##fx- (&raw-table-count _%tab91366%_)
                                         '1)))))
                            (_%loop91387%_
                             (let ((_%next-probe91406%_
                                    (fx+ _%start91383%_
                                         _%i91392%_
                                         (fx* _%i91392%_ _%i91392%_))))
                               (##fxmodulo _%next-probe91406%_ _%size91377%_))
                             (##fx+ _%i91392%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab91350%_ _%proc91351%_)
        (let* ((_%table91353%_ (&raw-table-table _%tab91350%_))
               (_%size91355%_ (vector-length _%table91353%_)))
          (let _%loop91358%_ ((_%i91360%_ '0))
            (if (##fx< _%i91360%_ _%size91355%_)
                (begin
                  (let ((_%key91362%_ (vector-ref _%table91353%_ _%i91360%_)))
                    (if (and (not (eq? _%key91362%_ (macro-unused-obj)))
                             (not (eq? _%key91362%_ (macro-deleted-obj))))
                        (let ((_%value91364%_
                               (vector-ref
                                _%table91353%_
                                (##fx+ _%i91360%_ '1))))
                          (_%proc91351%_ _%key91362%_ _%value91364%_))
                        '#!void))
                  (_%loop91358%_ (##fx+ _%i91360%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab91346%_)
        (let ((_%new-tab91348%_ (##structure-copy _%tab91346%_)))
          (&raw-table-table-set!
           _%new-tab91348%_
           (vector-copy (&raw-table-table _%tab91346%_)))
          _%new-tab91348%_)))
    (define raw-table-clear!
      (lambda (_%tab91344%_)
        (vector-fill! (&raw-table-table _%tab91344%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab91344%_ '0)
        (&raw-table-free-set!
         _%tab91344%_
         (##fxquotient (vector-length (&raw-table-table _%tab91344%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab91294%_ _%key91295%_ _%value91296%_)
        (let ((_%table91298%_ (&raw-table-table _%tab91294%_))
              (_%seed91299%_ (&raw-table-seed _%tab91294%_))
              (_%hash91300%_ (&raw-table-hash _%tab91294%_))
              (_%test91301%_ (&raw-table-test _%tab91294%_)))
          (let* ((_%h91303%_
                  (fxxor (_%hash91300%_ _%key91295%_) _%seed91299%_))
                 (_%size91306%_ (vector-length _%table91298%_))
                 (_%entries91309%_ (##fxquotient _%size91306%_ '2))
                 (_%start91312%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91303%_ _%entries91309%_)
                   '1)))
            (let _%loop91316%_ ((_%probe91319%_ _%start91312%_)
                                (_%i91321%_ '1)
                                (_%deleted91323%_ '#f))
              (let ((_%k91326%_ (vector-ref _%table91298%_ _%probe91319%_)))
                (if (eq? _%k91326%_ (macro-unused-obj))
                    (if _%deleted91323%_
                        (begin
                          (vector-set!
                           _%table91298%_
                           _%deleted91323%_
                           _%key91295%_)
                          (vector-set!
                           _%table91298%_
                           (##fx+ _%deleted91323%_ '1)
                           _%value91296%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91294%_
                              (##fx+ (&raw-table-count _%tab91294%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91298%_
                           _%probe91319%_
                           _%key91295%_)
                          (vector-set!
                           _%table91298%_
                           (##fx+ _%probe91319%_ '1)
                           _%value91296%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91294%_
                              (##fx- (&raw-table-free _%tab91294%_) '1))
                             (&raw-table-count-set!
                              _%tab91294%_
                              (##fx+ (&raw-table-count _%tab91294%_) '1))))))
                    (if (eq? _%k91326%_ (macro-deleted-obj))
                        (_%loop91316%_
                         (let ((_%next-probe91333%_
                                (fx+ _%start91312%_
                                     _%i91321%_
                                     (fx* _%i91321%_ _%i91321%_))))
                           (##fxmodulo _%next-probe91333%_ _%size91306%_))
                         (##fx+ _%i91321%_ '1)
                         (let ((_%$e91336%_ _%deleted91323%_))
                           (if _%$e91336%_ _%$e91336%_ _%probe91319%_)))
                        (if (_%test91301%_ _%key91295%_ _%k91326%_)
                            (let ()
                              (vector-set!
                               _%table91298%_
                               _%probe91319%_
                               _%key91295%_)
                              (vector-set!
                               _%table91298%_
                               (##fx+ _%probe91319%_ '1)
                               _%value91296%_))
                            (_%loop91316%_
                             (let ((_%next-probe91341%_
                                    (fx+ _%start91312%_
                                         _%i91321%_
                                         (fx* _%i91321%_ _%i91321%_))))
                               (##fxmodulo _%next-probe91341%_ _%size91306%_))
                             (##fx+ _%i91321%_ '1)
                             _%deleted91323%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab91243%_ _%key91244%_ _%update91245%_ _%default91246%_)
        (let ((_%table91248%_ (&raw-table-table _%tab91243%_))
              (_%seed91249%_ (&raw-table-seed _%tab91243%_))
              (_%hash91250%_ (&raw-table-hash _%tab91243%_))
              (_%test91251%_ (&raw-table-test _%tab91243%_)))
          (let* ((_%h91253%_
                  (fxxor (_%hash91250%_ _%key91244%_) _%seed91249%_))
                 (_%size91256%_ (vector-length _%table91248%_))
                 (_%entries91259%_ (##fxquotient _%size91256%_ '2))
                 (_%start91262%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91253%_ _%entries91259%_)
                   '1)))
            (let _%loop91266%_ ((_%probe91269%_ _%start91262%_)
                                (_%i91271%_ '1)
                                (_%deleted91273%_ '#f))
              (let ((_%k91276%_ (vector-ref _%table91248%_ _%probe91269%_)))
                (if (eq? _%k91276%_ (macro-unused-obj))
                    (if _%deleted91273%_
                        (begin
                          (vector-set!
                           _%table91248%_
                           _%deleted91273%_
                           _%key91244%_)
                          (vector-set!
                           _%table91248%_
                           (##fx+ _%deleted91273%_ '1)
                           (_%update91245%_ _%default91246%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91243%_
                              (##fx+ (&raw-table-count _%tab91243%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91248%_
                           _%probe91269%_
                           _%key91244%_)
                          (vector-set!
                           _%table91248%_
                           (##fx+ _%probe91269%_ '1)
                           (_%update91245%_ _%default91246%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91243%_
                              (##fx- (&raw-table-free _%tab91243%_) '1))
                             (&raw-table-count-set!
                              _%tab91243%_
                              (##fx+ (&raw-table-count _%tab91243%_) '1))))))
                    (if (eq? _%k91276%_ (macro-deleted-obj))
                        (_%loop91266%_
                         (let ((_%next-probe91283%_
                                (fx+ _%start91262%_
                                     _%i91271%_
                                     (fx* _%i91271%_ _%i91271%_))))
                           (##fxmodulo _%next-probe91283%_ _%size91256%_))
                         (##fx+ _%i91271%_ '1)
                         (let ((_%$e91286%_ _%deleted91273%_))
                           (if _%$e91286%_ _%$e91286%_ _%probe91269%_)))
                        (if (_%test91251%_ _%key91244%_ _%k91276%_)
                            (let ()
                              (vector-set!
                               _%table91248%_
                               _%probe91269%_
                               _%key91244%_)
                              (vector-set!
                               _%table91248%_
                               (##fx+ _%probe91269%_ '1)
                               (_%update91245%_
                                (vector-ref
                                 _%table91248%_
                                 (##fx+ _%probe91269%_ '1)))))
                            (_%loop91266%_
                             (let ((_%next-probe91291%_
                                    (fx+ _%start91262%_
                                         _%i91271%_
                                         (fx* _%i91271%_ _%i91271%_))))
                               (##fxmodulo _%next-probe91291%_ _%size91256%_))
                             (##fx+ _%i91271%_ '1)
                             _%deleted91273%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab91224%_)
        (let* ((_%old-table91226%_ (&raw-table-table _%tab91224%_))
               (_%old-size91228%_ (vector-length _%old-table91226%_))
               (_%new-size91230%_
                (if (##fx< (&raw-table-count _%tab91224%_)
                           (##fxquotient _%old-size91228%_ '4))
                    (vector-length _%old-table91226%_)
                    (##fx* '2 (vector-length _%old-table91226%_))))
               (_%new-table91232%_
                (##make-vector _%new-size91230%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab91224%_ _%new-table91232%_)
          (&raw-table-count-set! _%tab91224%_ '0)
          (&raw-table-free-set!
           _%tab91224%_
           (##fxquotient _%new-size91230%_ '2))
          (let _%lp91235%_ ((_%i91237%_ '0))
            (if (##fx< _%i91237%_ _%old-size91228%_)
                (begin
                  (let ((_%key91239%_
                         (vector-ref _%old-table91226%_ _%i91237%_)))
                    (if (and (not (eq? _%key91239%_ (macro-unused-obj)))
                             (not (eq? _%key91239%_ (macro-deleted-obj))))
                        (let ((_%value91241%_
                               (vector-ref
                                _%old-table91226%_
                                (##fx+ _%i91237%_ '1))))
                          (__raw-table-set!
                           _%tab91224%_
                           _%key91239%_
                           _%value91241%_))
                        '#!void))
                  (_%lp91235%_ (##fx+ _%i91237%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj91216%_)
        (let ((_%t91218%_ (##type _%obj91216%_)))
          (if (##fx= (##fxand _%t91218%_ '1) '0)
              (fxand (##type-cast _%obj91216%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj91216%_)
                  (symbolic-hash _%obj91216%_)
                  (if (procedure? _%obj91216%_)
                      (procedure-hash _%obj91216%_)
                      (fxand (__eq-hash _%obj91216%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj91212%_)
        (let ((_%h91214%_
               (if (##closure? _%obj91212%_)
                   (__eq-hash _%obj91212%_)
                   (##type-cast _%obj91212%_ '0))))
          (fxand _%h91214%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj91209%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj91209%_)))
    (define eqv-hash
      (lambda (_%obj91199%_)
        (letrec ((_%combine91201%_
                  (lambda (_%a91206%_ _%b91207%_)
                    (fxand (##fx* (##fx+ _%a91206%_
                                         (fxarithmetic-shift-left
                                          _%b91207%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash91202%_
                  (lambda (_%obj91204%_)
                    (macro-number-dispatch
                     _%obj91204%_
                     (eq-hash _%obj91204%_)
                     (fxand _%obj91204%_ (macro-max-fixnum32))
                     (modulo _%obj91204%_ '331804481)
                     (_%combine91201%_
                      (_%hash91202%_ (macro-ratnum-numerator _%obj91204%_))
                      (_%hash91202%_ (macro-ratnum-denominator _%obj91204%_)))
                     (_%combine91201%_
                      (##u16vector-ref _%obj91204%_ '0)
                      (_%combine91201%_
                       (##u16vector-ref _%obj91204%_ '1)
                       (_%combine91201%_
                        (##u16vector-ref _%obj91204%_ '2)
                        (##u16vector-ref _%obj91204%_ '3))))
                     (_%combine91201%_
                      (_%hash91202%_ (macro-cpxnum-real _%obj91204%_))
                      (_%hash91202%_ (macro-cpxnum-imag _%obj91204%_)))))))
          (_%hash91202%_ _%obj91199%_))))
    (define symbolic?
      (lambda (_%obj91194%_)
        (let ((_%$e91196%_ (symbol? _%obj91194%_)))
          (if _%$e91196%_ _%$e91196%_ (keyword? _%obj91194%_)))))
    (define symbolic-hash (lambda (_%obj91192%_) (macro-slot '1 _%obj91192%_)))
    (define string-hash (lambda (_%obj91190%_) (##string=?-hash _%obj91190%_)))
    (define immediate-hash
      (lambda (_%obj91188%_) (##type-cast _%obj91188%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint91169%_ _%seed91171%_)
        (make-raw-table__% _%size-hint91169%_ eq-hash eq? _%seed91171%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint91177%_ '#f) (_%seed91179%_ '0))
          (make-eq-table__% _%size-hint91177%_ _%seed91179%_))))
    (define make-eq-table__1
      (lambda (_%size-hint91181%_)
        (let ((_%seed91183%_ '0))
          (make-eq-table__% _%size-hint91181%_ _%seed91183%_))))
    (define make-eq-table
      (lambda _g91525_
        (let ((_g91524_ (##length _g91525_)))
          (cond ((##fx= _g91524_ 0) (apply make-eq-table__0 _g91525_))
                ((##fx= _g91524_ 1) (apply make-eq-table__1 _g91525_))
                ((##fx= _g91524_ 2) (apply make-eq-table__% _g91525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g91525_))))))
    (define eq-table-ref
      (lambda (_%tab91122%_ _%key91123%_ _%default91124%_)
        (let ((_%table91126%_ (&raw-table-table _%tab91122%_))
              (_%seed91127%_ (&raw-table-seed _%tab91122%_)))
          (let* ((_%h91129%_ (fxxor (eq-hash _%key91123%_) _%seed91127%_))
                 (_%size91132%_ (vector-length _%table91126%_))
                 (_%entries91135%_ (##fxquotient _%size91132%_ '2))
                 (_%start91138%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91129%_ _%entries91135%_)
                   '1)))
            (let _%loop91142%_ ((_%probe91145%_ _%start91138%_)
                                (_%i91147%_ '1)
                                (_%deleted91149%_ '#f))
              (let ((_%k91152%_ (vector-ref _%table91126%_ _%probe91145%_)))
                (if (eq? _%k91152%_ (macro-unused-obj))
                    _%default91124%_
                    (if (eq? _%k91152%_ (macro-deleted-obj))
                        (_%loop91142%_
                         (let ((_%next-probe91157%_
                                (fx+ _%start91138%_
                                     _%i91147%_
                                     (fx* _%i91147%_ _%i91147%_))))
                           (##fxmodulo _%next-probe91157%_ _%size91132%_))
                         (##fx+ _%i91147%_ '1)
                         (let ((_%$e91160%_ _%deleted91149%_))
                           (if _%$e91160%_ _%$e91160%_ _%probe91145%_)))
                        (if (eq? _%key91123%_ _%k91152%_)
                            (vector-ref
                             _%table91126%_
                             (##fx+ _%probe91145%_ '1))
                            (_%loop91142%_
                             (let ((_%next-probe91165%_
                                    (fx+ _%start91138%_
                                         _%i91147%_
                                         (fx* _%i91147%_ _%i91147%_))))
                               (##fxmodulo _%next-probe91165%_ _%size91132%_))
                             (##fx+ _%i91147%_ '1)
                             _%deleted91149%_))))))))))
    (define eq-table-set!
      (lambda (_%tab91118%_ _%key91119%_ _%value91120%_)
        (if (##fx< (&raw-table-free _%tab91118%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91118%_))
                    '4))
            (__raw-table-rehash! _%tab91118%_)
            '#!void)
        (__eq-table-set! _%tab91118%_ _%key91119%_ _%value91120%_)))
    (define __eq-table-set!
      (lambda (_%tab91069%_ _%key91070%_ _%value91071%_)
        (let ((_%table91074%_ (&raw-table-table _%tab91069%_))
              (_%seed91075%_ (&raw-table-seed _%tab91069%_)))
          (let* ((_%h91077%_ (fxxor (eq-hash _%key91070%_) _%seed91075%_))
                 (_%size91080%_ (vector-length _%table91074%_))
                 (_%entries91083%_ (##fxquotient _%size91080%_ '2))
                 (_%start91086%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91077%_ _%entries91083%_)
                   '1)))
            (let _%loop91090%_ ((_%probe91093%_ _%start91086%_)
                                (_%i91095%_ '1)
                                (_%deleted91097%_ '#f))
              (let ((_%k91100%_ (vector-ref _%table91074%_ _%probe91093%_)))
                (if (eq? _%k91100%_ (macro-unused-obj))
                    (if _%deleted91097%_
                        (begin
                          (vector-set!
                           _%table91074%_
                           _%deleted91097%_
                           _%key91070%_)
                          (vector-set!
                           _%table91074%_
                           (##fx+ _%deleted91097%_ '1)
                           _%value91071%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91069%_
                              (##fx+ (&raw-table-count _%tab91069%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91074%_
                           _%probe91093%_
                           _%key91070%_)
                          (vector-set!
                           _%table91074%_
                           (##fx+ _%probe91093%_ '1)
                           _%value91071%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91069%_
                              (##fx- (&raw-table-free _%tab91069%_) '1))
                             (&raw-table-count-set!
                              _%tab91069%_
                              (##fx+ (&raw-table-count _%tab91069%_) '1))))))
                    (if (eq? _%k91100%_ (macro-deleted-obj))
                        (_%loop91090%_
                         (let ((_%next-probe91107%_
                                (fx+ _%start91086%_
                                     _%i91095%_
                                     (fx* _%i91095%_ _%i91095%_))))
                           (##fxmodulo _%next-probe91107%_ _%size91080%_))
                         (##fx+ _%i91095%_ '1)
                         (let ((_%$e91110%_ _%deleted91097%_))
                           (if _%$e91110%_ _%$e91110%_ _%probe91093%_)))
                        (if (eq? _%key91070%_ _%k91100%_)
                            (let ()
                              (vector-set!
                               _%table91074%_
                               _%probe91093%_
                               _%key91070%_)
                              (vector-set!
                               _%table91074%_
                               (##fx+ _%probe91093%_ '1)
                               _%value91071%_))
                            (_%loop91090%_
                             (let ((_%next-probe91115%_
                                    (fx+ _%start91086%_
                                         _%i91095%_
                                         (fx* _%i91095%_ _%i91095%_))))
                               (##fxmodulo _%next-probe91115%_ _%size91080%_))
                             (##fx+ _%i91095%_ '1)
                             _%deleted91097%_))))))))))
    (define eq-table-update!
      (lambda (_%tab91064%_
               _%key91065%_
               _%eq-table-update!91066%_
               _%default91067%_)
        (if (##fx< (&raw-table-free _%tab91064%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab91064%_))
                    '4))
            (__raw-table-rehash! _%tab91064%_)
            '#!void)
        (__eq-table-update!
         _%tab91064%_
         _%key91065%_
         _%eq-table-update!91066%_
         _%default91067%_)))
    (define __eq-table-update!
      (lambda (_%tab91014%_
               _%key91015%_
               _%eq-table-update!91016%_
               _%default91017%_)
        (let ((_%table91020%_ (&raw-table-table _%tab91014%_))
              (_%seed91021%_ (&raw-table-seed _%tab91014%_)))
          (let* ((_%h91023%_ (fxxor (eq-hash _%key91015%_) _%seed91021%_))
                 (_%size91026%_ (vector-length _%table91020%_))
                 (_%entries91029%_ (##fxquotient _%size91026%_ '2))
                 (_%start91032%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h91023%_ _%entries91029%_)
                   '1)))
            (let _%loop91036%_ ((_%probe91039%_ _%start91032%_)
                                (_%i91041%_ '1)
                                (_%deleted91043%_ '#f))
              (let ((_%k91046%_ (vector-ref _%table91020%_ _%probe91039%_)))
                (if (eq? _%k91046%_ (macro-unused-obj))
                    (if _%deleted91043%_
                        (begin
                          (vector-set!
                           _%table91020%_
                           _%deleted91043%_
                           _%key91015%_)
                          (vector-set!
                           _%table91020%_
                           (##fx+ _%deleted91043%_ '1)
                           (_%eq-table-update!91016%_ _%default91017%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab91014%_
                              (##fx+ (&raw-table-count _%tab91014%_) '1)))))
                        (begin
                          (vector-set!
                           _%table91020%_
                           _%probe91039%_
                           _%key91015%_)
                          (vector-set!
                           _%table91020%_
                           (##fx+ _%probe91039%_ '1)
                           (_%eq-table-update!91016%_ _%default91017%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab91014%_
                              (##fx- (&raw-table-free _%tab91014%_) '1))
                             (&raw-table-count-set!
                              _%tab91014%_
                              (##fx+ (&raw-table-count _%tab91014%_) '1))))))
                    (if (eq? _%k91046%_ (macro-deleted-obj))
                        (_%loop91036%_
                         (let ((_%next-probe91053%_
                                (fx+ _%start91032%_
                                     _%i91041%_
                                     (fx* _%i91041%_ _%i91041%_))))
                           (##fxmodulo _%next-probe91053%_ _%size91026%_))
                         (##fx+ _%i91041%_ '1)
                         (let ((_%$e91056%_ _%deleted91043%_))
                           (if _%$e91056%_ _%$e91056%_ _%probe91039%_)))
                        (if (eq? _%key91015%_ _%k91046%_)
                            (let ()
                              (vector-set!
                               _%table91020%_
                               _%probe91039%_
                               _%key91015%_)
                              (vector-set!
                               _%table91020%_
                               (##fx+ _%probe91039%_ '1)
                               (_%eq-table-update!91016%_
                                (vector-ref
                                 _%table91020%_
                                 (##fx+ _%probe91039%_ '1)))))
                            (_%loop91036%_
                             (let ((_%next-probe91061%_
                                    (fx+ _%start91032%_
                                         _%i91041%_
                                         (fx* _%i91041%_ _%i91041%_))))
                               (##fxmodulo _%next-probe91061%_ _%size91026%_))
                             (##fx+ _%i91041%_ '1)
                             _%deleted91043%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab90969%_ _%key90971%_)
        (let ((_%table90974%_ (&raw-table-table _%tab90969%_))
              (_%seed90976%_ (&raw-table-seed _%tab90969%_)))
          (let* ((_%h90979%_ (fxxor (eq-hash _%key90971%_) _%seed90976%_))
                 (_%size90982%_ (vector-length _%table90974%_))
                 (_%entries90985%_ (##fxquotient _%size90982%_ '2))
                 (_%start90988%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90979%_ _%entries90985%_)
                   '1)))
            (let _%loop90992%_ ((_%probe90995%_ _%start90988%_)
                                (_%i90997%_ '1))
              (let ((_%k91000%_ (vector-ref _%table90974%_ _%probe90995%_)))
                (if (eq? _%k91000%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k91000%_ (macro-deleted-obj))
                        (_%loop90992%_
                         (let ((_%next-probe91005%_
                                (fx+ _%start90988%_
                                     _%i90997%_
                                     (fx* _%i90997%_ _%i90997%_))))
                           (##fxmodulo _%next-probe91005%_ _%size90982%_))
                         (##fx+ _%i90997%_ '1))
                        (if (eq? _%key90971%_ _%k91000%_)
                            (let ()
                              (vector-set!
                               _%table90974%_
                               _%probe90995%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90974%_
                               (##fx+ _%probe90995%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90969%_
                                  (##fx- (&raw-table-count _%tab90969%_)
                                         '1)))))
                            (_%loop90992%_
                             (let ((_%next-probe91011%_
                                    (fx+ _%start90988%_
                                         _%i90997%_
                                         (fx* _%i90997%_ _%i90997%_))))
                               (##fxmodulo _%next-probe91011%_ _%size90982%_))
                             (##fx+ _%i90997%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint90950%_ _%seed90952%_)
        (make-raw-table__% _%size-hint90950%_ eqv-hash eqv? _%seed90952%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint90958%_ '#f) (_%seed90960%_ '0))
          (make-eqv-table__% _%size-hint90958%_ _%seed90960%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint90962%_)
        (let ((_%seed90964%_ '0))
          (make-eqv-table__% _%size-hint90962%_ _%seed90964%_))))
    (define make-eqv-table
      (lambda _g91527_
        (let ((_g91526_ (##length _g91527_)))
          (cond ((##fx= _g91526_ 0) (apply make-eqv-table__0 _g91527_))
                ((##fx= _g91526_ 1) (apply make-eqv-table__1 _g91527_))
                ((##fx= _g91526_ 2) (apply make-eqv-table__% _g91527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g91527_))))))
    (define eqv-table-ref
      (lambda (_%tab90903%_ _%key90904%_ _%default90905%_)
        (let ((_%table90907%_ (&raw-table-table _%tab90903%_))
              (_%seed90908%_ (&raw-table-seed _%tab90903%_)))
          (let* ((_%h90910%_ (fxxor (eqv-hash _%key90904%_) _%seed90908%_))
                 (_%size90913%_ (vector-length _%table90907%_))
                 (_%entries90916%_ (##fxquotient _%size90913%_ '2))
                 (_%start90919%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90910%_ _%entries90916%_)
                   '1)))
            (let _%loop90923%_ ((_%probe90926%_ _%start90919%_)
                                (_%i90928%_ '1)
                                (_%deleted90930%_ '#f))
              (let ((_%k90933%_ (vector-ref _%table90907%_ _%probe90926%_)))
                (if (eq? _%k90933%_ (macro-unused-obj))
                    _%default90905%_
                    (if (eq? _%k90933%_ (macro-deleted-obj))
                        (_%loop90923%_
                         (let ((_%next-probe90938%_
                                (fx+ _%start90919%_
                                     _%i90928%_
                                     (fx* _%i90928%_ _%i90928%_))))
                           (##fxmodulo _%next-probe90938%_ _%size90913%_))
                         (##fx+ _%i90928%_ '1)
                         (let ((_%$e90941%_ _%deleted90930%_))
                           (if _%$e90941%_ _%$e90941%_ _%probe90926%_)))
                        (if (eqv? _%key90904%_ _%k90933%_)
                            (vector-ref
                             _%table90907%_
                             (##fx+ _%probe90926%_ '1))
                            (_%loop90923%_
                             (let ((_%next-probe90946%_
                                    (fx+ _%start90919%_
                                         _%i90928%_
                                         (fx* _%i90928%_ _%i90928%_))))
                               (##fxmodulo _%next-probe90946%_ _%size90913%_))
                             (##fx+ _%i90928%_ '1)
                             _%deleted90930%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab90899%_ _%key90900%_ _%value90901%_)
        (if (##fx< (&raw-table-free _%tab90899%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90899%_))
                    '4))
            (__raw-table-rehash! _%tab90899%_)
            '#!void)
        (__eqv-table-set! _%tab90899%_ _%key90900%_ _%value90901%_)))
    (define __eqv-table-set!
      (lambda (_%tab90850%_ _%key90851%_ _%value90852%_)
        (let ((_%table90855%_ (&raw-table-table _%tab90850%_))
              (_%seed90856%_ (&raw-table-seed _%tab90850%_)))
          (let* ((_%h90858%_ (fxxor (eqv-hash _%key90851%_) _%seed90856%_))
                 (_%size90861%_ (vector-length _%table90855%_))
                 (_%entries90864%_ (##fxquotient _%size90861%_ '2))
                 (_%start90867%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90858%_ _%entries90864%_)
                   '1)))
            (let _%loop90871%_ ((_%probe90874%_ _%start90867%_)
                                (_%i90876%_ '1)
                                (_%deleted90878%_ '#f))
              (let ((_%k90881%_ (vector-ref _%table90855%_ _%probe90874%_)))
                (if (eq? _%k90881%_ (macro-unused-obj))
                    (if _%deleted90878%_
                        (begin
                          (vector-set!
                           _%table90855%_
                           _%deleted90878%_
                           _%key90851%_)
                          (vector-set!
                           _%table90855%_
                           (##fx+ _%deleted90878%_ '1)
                           _%value90852%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90850%_
                              (##fx+ (&raw-table-count _%tab90850%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90855%_
                           _%probe90874%_
                           _%key90851%_)
                          (vector-set!
                           _%table90855%_
                           (##fx+ _%probe90874%_ '1)
                           _%value90852%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90850%_
                              (##fx- (&raw-table-free _%tab90850%_) '1))
                             (&raw-table-count-set!
                              _%tab90850%_
                              (##fx+ (&raw-table-count _%tab90850%_) '1))))))
                    (if (eq? _%k90881%_ (macro-deleted-obj))
                        (_%loop90871%_
                         (let ((_%next-probe90888%_
                                (fx+ _%start90867%_
                                     _%i90876%_
                                     (fx* _%i90876%_ _%i90876%_))))
                           (##fxmodulo _%next-probe90888%_ _%size90861%_))
                         (##fx+ _%i90876%_ '1)
                         (let ((_%$e90891%_ _%deleted90878%_))
                           (if _%$e90891%_ _%$e90891%_ _%probe90874%_)))
                        (if (eqv? _%key90851%_ _%k90881%_)
                            (let ()
                              (vector-set!
                               _%table90855%_
                               _%probe90874%_
                               _%key90851%_)
                              (vector-set!
                               _%table90855%_
                               (##fx+ _%probe90874%_ '1)
                               _%value90852%_))
                            (_%loop90871%_
                             (let ((_%next-probe90896%_
                                    (fx+ _%start90867%_
                                         _%i90876%_
                                         (fx* _%i90876%_ _%i90876%_))))
                               (##fxmodulo _%next-probe90896%_ _%size90861%_))
                             (##fx+ _%i90876%_ '1)
                             _%deleted90878%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab90845%_
               _%key90846%_
               _%eqv-table-update!90847%_
               _%default90848%_)
        (if (##fx< (&raw-table-free _%tab90845%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90845%_))
                    '4))
            (__raw-table-rehash! _%tab90845%_)
            '#!void)
        (__eqv-table-update!
         _%tab90845%_
         _%key90846%_
         _%eqv-table-update!90847%_
         _%default90848%_)))
    (define __eqv-table-update!
      (lambda (_%tab90795%_
               _%key90796%_
               _%eqv-table-update!90797%_
               _%default90798%_)
        (let ((_%table90801%_ (&raw-table-table _%tab90795%_))
              (_%seed90802%_ (&raw-table-seed _%tab90795%_)))
          (let* ((_%h90804%_ (fxxor (eqv-hash _%key90796%_) _%seed90802%_))
                 (_%size90807%_ (vector-length _%table90801%_))
                 (_%entries90810%_ (##fxquotient _%size90807%_ '2))
                 (_%start90813%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90804%_ _%entries90810%_)
                   '1)))
            (let _%loop90817%_ ((_%probe90820%_ _%start90813%_)
                                (_%i90822%_ '1)
                                (_%deleted90824%_ '#f))
              (let ((_%k90827%_ (vector-ref _%table90801%_ _%probe90820%_)))
                (if (eq? _%k90827%_ (macro-unused-obj))
                    (if _%deleted90824%_
                        (begin
                          (vector-set!
                           _%table90801%_
                           _%deleted90824%_
                           _%key90796%_)
                          (vector-set!
                           _%table90801%_
                           (##fx+ _%deleted90824%_ '1)
                           (_%eqv-table-update!90797%_ _%default90798%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90795%_
                              (##fx+ (&raw-table-count _%tab90795%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90801%_
                           _%probe90820%_
                           _%key90796%_)
                          (vector-set!
                           _%table90801%_
                           (##fx+ _%probe90820%_ '1)
                           (_%eqv-table-update!90797%_ _%default90798%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90795%_
                              (##fx- (&raw-table-free _%tab90795%_) '1))
                             (&raw-table-count-set!
                              _%tab90795%_
                              (##fx+ (&raw-table-count _%tab90795%_) '1))))))
                    (if (eq? _%k90827%_ (macro-deleted-obj))
                        (_%loop90817%_
                         (let ((_%next-probe90834%_
                                (fx+ _%start90813%_
                                     _%i90822%_
                                     (fx* _%i90822%_ _%i90822%_))))
                           (##fxmodulo _%next-probe90834%_ _%size90807%_))
                         (##fx+ _%i90822%_ '1)
                         (let ((_%$e90837%_ _%deleted90824%_))
                           (if _%$e90837%_ _%$e90837%_ _%probe90820%_)))
                        (if (eqv? _%key90796%_ _%k90827%_)
                            (let ()
                              (vector-set!
                               _%table90801%_
                               _%probe90820%_
                               _%key90796%_)
                              (vector-set!
                               _%table90801%_
                               (##fx+ _%probe90820%_ '1)
                               (_%eqv-table-update!90797%_
                                (vector-ref
                                 _%table90801%_
                                 (##fx+ _%probe90820%_ '1)))))
                            (_%loop90817%_
                             (let ((_%next-probe90842%_
                                    (fx+ _%start90813%_
                                         _%i90822%_
                                         (fx* _%i90822%_ _%i90822%_))))
                               (##fxmodulo _%next-probe90842%_ _%size90807%_))
                             (##fx+ _%i90822%_ '1)
                             _%deleted90824%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab90750%_ _%key90752%_)
        (let ((_%table90755%_ (&raw-table-table _%tab90750%_))
              (_%seed90757%_ (&raw-table-seed _%tab90750%_)))
          (let* ((_%h90760%_ (fxxor (eqv-hash _%key90752%_) _%seed90757%_))
                 (_%size90763%_ (vector-length _%table90755%_))
                 (_%entries90766%_ (##fxquotient _%size90763%_ '2))
                 (_%start90769%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90760%_ _%entries90766%_)
                   '1)))
            (let _%loop90773%_ ((_%probe90776%_ _%start90769%_)
                                (_%i90778%_ '1))
              (let ((_%k90781%_ (vector-ref _%table90755%_ _%probe90776%_)))
                (if (eq? _%k90781%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90781%_ (macro-deleted-obj))
                        (_%loop90773%_
                         (let ((_%next-probe90786%_
                                (fx+ _%start90769%_
                                     _%i90778%_
                                     (fx* _%i90778%_ _%i90778%_))))
                           (##fxmodulo _%next-probe90786%_ _%size90763%_))
                         (##fx+ _%i90778%_ '1))
                        (if (eqv? _%key90752%_ _%k90781%_)
                            (let ()
                              (vector-set!
                               _%table90755%_
                               _%probe90776%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90755%_
                               (##fx+ _%probe90776%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90750%_
                                  (##fx- (&raw-table-count _%tab90750%_)
                                         '1)))))
                            (_%loop90773%_
                             (let ((_%next-probe90792%_
                                    (fx+ _%start90769%_
                                         _%i90778%_
                                         (fx* _%i90778%_ _%i90778%_))))
                               (##fxmodulo _%next-probe90792%_ _%size90763%_))
                             (##fx+ _%i90778%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint90731%_ _%seed90733%_)
        (make-raw-table__%
         _%size-hint90731%_
         symbolic-hash
         eq?
         _%seed90733%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint90739%_ '#f) (_%seed90741%_ '0))
          (make-symbolic-table__% _%size-hint90739%_ _%seed90741%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint90743%_)
        (let ((_%seed90745%_ '0))
          (make-symbolic-table__% _%size-hint90743%_ _%seed90745%_))))
    (define make-symbolic-table
      (lambda _g91529_
        (let ((_g91528_ (##length _g91529_)))
          (cond ((##fx= _g91528_ 0) (apply make-symbolic-table__0 _g91529_))
                ((##fx= _g91528_ 1) (apply make-symbolic-table__1 _g91529_))
                ((##fx= _g91528_ 2) (apply make-symbolic-table__% _g91529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g91529_))))))
    (define symbolic-table-ref
      (lambda (_%tab90684%_ _%key90685%_ _%default90686%_)
        (let ((_%table90688%_ (&raw-table-table _%tab90684%_))
              (_%seed90689%_ (&raw-table-seed _%tab90684%_)))
          (let* ((_%h90691%_
                  (fxxor (symbolic-hash _%key90685%_) _%seed90689%_))
                 (_%size90694%_ (vector-length _%table90688%_))
                 (_%entries90697%_ (##fxquotient _%size90694%_ '2))
                 (_%start90700%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90691%_ _%entries90697%_)
                   '1)))
            (let _%loop90704%_ ((_%probe90707%_ _%start90700%_)
                                (_%i90709%_ '1)
                                (_%deleted90711%_ '#f))
              (let ((_%k90714%_ (vector-ref _%table90688%_ _%probe90707%_)))
                (if (eq? _%k90714%_ (macro-unused-obj))
                    _%default90686%_
                    (if (eq? _%k90714%_ (macro-deleted-obj))
                        (_%loop90704%_
                         (let ((_%next-probe90719%_
                                (fx+ _%start90700%_
                                     _%i90709%_
                                     (fx* _%i90709%_ _%i90709%_))))
                           (##fxmodulo _%next-probe90719%_ _%size90694%_))
                         (##fx+ _%i90709%_ '1)
                         (let ((_%$e90722%_ _%deleted90711%_))
                           (if _%$e90722%_ _%$e90722%_ _%probe90707%_)))
                        (if (eq? _%key90685%_ _%k90714%_)
                            (vector-ref
                             _%table90688%_
                             (##fx+ _%probe90707%_ '1))
                            (_%loop90704%_
                             (let ((_%next-probe90727%_
                                    (fx+ _%start90700%_
                                         _%i90709%_
                                         (fx* _%i90709%_ _%i90709%_))))
                               (##fxmodulo _%next-probe90727%_ _%size90694%_))
                             (##fx+ _%i90709%_ '1)
                             _%deleted90711%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab90680%_ _%key90681%_ _%value90682%_)
        (if (##fx< (&raw-table-free _%tab90680%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90680%_))
                    '4))
            (__raw-table-rehash! _%tab90680%_)
            '#!void)
        (__symbolic-table-set! _%tab90680%_ _%key90681%_ _%value90682%_)))
    (define __symbolic-table-set!
      (lambda (_%tab90631%_ _%key90632%_ _%value90633%_)
        (let ((_%table90636%_ (&raw-table-table _%tab90631%_))
              (_%seed90637%_ (&raw-table-seed _%tab90631%_)))
          (let* ((_%h90639%_
                  (fxxor (symbolic-hash _%key90632%_) _%seed90637%_))
                 (_%size90642%_ (vector-length _%table90636%_))
                 (_%entries90645%_ (##fxquotient _%size90642%_ '2))
                 (_%start90648%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90639%_ _%entries90645%_)
                   '1)))
            (let _%loop90652%_ ((_%probe90655%_ _%start90648%_)
                                (_%i90657%_ '1)
                                (_%deleted90659%_ '#f))
              (let ((_%k90662%_ (vector-ref _%table90636%_ _%probe90655%_)))
                (if (eq? _%k90662%_ (macro-unused-obj))
                    (if _%deleted90659%_
                        (begin
                          (vector-set!
                           _%table90636%_
                           _%deleted90659%_
                           _%key90632%_)
                          (vector-set!
                           _%table90636%_
                           (##fx+ _%deleted90659%_ '1)
                           _%value90633%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90631%_
                              (##fx+ (&raw-table-count _%tab90631%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90636%_
                           _%probe90655%_
                           _%key90632%_)
                          (vector-set!
                           _%table90636%_
                           (##fx+ _%probe90655%_ '1)
                           _%value90633%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90631%_
                              (##fx- (&raw-table-free _%tab90631%_) '1))
                             (&raw-table-count-set!
                              _%tab90631%_
                              (##fx+ (&raw-table-count _%tab90631%_) '1))))))
                    (if (eq? _%k90662%_ (macro-deleted-obj))
                        (_%loop90652%_
                         (let ((_%next-probe90669%_
                                (fx+ _%start90648%_
                                     _%i90657%_
                                     (fx* _%i90657%_ _%i90657%_))))
                           (##fxmodulo _%next-probe90669%_ _%size90642%_))
                         (##fx+ _%i90657%_ '1)
                         (let ((_%$e90672%_ _%deleted90659%_))
                           (if _%$e90672%_ _%$e90672%_ _%probe90655%_)))
                        (if (eq? _%key90632%_ _%k90662%_)
                            (let ()
                              (vector-set!
                               _%table90636%_
                               _%probe90655%_
                               _%key90632%_)
                              (vector-set!
                               _%table90636%_
                               (##fx+ _%probe90655%_ '1)
                               _%value90633%_))
                            (_%loop90652%_
                             (let ((_%next-probe90677%_
                                    (fx+ _%start90648%_
                                         _%i90657%_
                                         (fx* _%i90657%_ _%i90657%_))))
                               (##fxmodulo _%next-probe90677%_ _%size90642%_))
                             (##fx+ _%i90657%_ '1)
                             _%deleted90659%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab90626%_
               _%key90627%_
               _%symbolic-table-update!90628%_
               _%default90629%_)
        (if (##fx< (&raw-table-free _%tab90626%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90626%_))
                    '4))
            (__raw-table-rehash! _%tab90626%_)
            '#!void)
        (__symbolic-table-update!
         _%tab90626%_
         _%key90627%_
         _%symbolic-table-update!90628%_
         _%default90629%_)))
    (define __symbolic-table-update!
      (lambda (_%tab90576%_
               _%key90577%_
               _%symbolic-table-update!90578%_
               _%default90579%_)
        (let ((_%table90582%_ (&raw-table-table _%tab90576%_))
              (_%seed90583%_ (&raw-table-seed _%tab90576%_)))
          (let* ((_%h90585%_
                  (fxxor (symbolic-hash _%key90577%_) _%seed90583%_))
                 (_%size90588%_ (vector-length _%table90582%_))
                 (_%entries90591%_ (##fxquotient _%size90588%_ '2))
                 (_%start90594%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90585%_ _%entries90591%_)
                   '1)))
            (let _%loop90598%_ ((_%probe90601%_ _%start90594%_)
                                (_%i90603%_ '1)
                                (_%deleted90605%_ '#f))
              (let ((_%k90608%_ (vector-ref _%table90582%_ _%probe90601%_)))
                (if (eq? _%k90608%_ (macro-unused-obj))
                    (if _%deleted90605%_
                        (begin
                          (vector-set!
                           _%table90582%_
                           _%deleted90605%_
                           _%key90577%_)
                          (vector-set!
                           _%table90582%_
                           (##fx+ _%deleted90605%_ '1)
                           (_%symbolic-table-update!90578%_ _%default90579%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90576%_
                              (##fx+ (&raw-table-count _%tab90576%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90582%_
                           _%probe90601%_
                           _%key90577%_)
                          (vector-set!
                           _%table90582%_
                           (##fx+ _%probe90601%_ '1)
                           (_%symbolic-table-update!90578%_ _%default90579%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90576%_
                              (##fx- (&raw-table-free _%tab90576%_) '1))
                             (&raw-table-count-set!
                              _%tab90576%_
                              (##fx+ (&raw-table-count _%tab90576%_) '1))))))
                    (if (eq? _%k90608%_ (macro-deleted-obj))
                        (_%loop90598%_
                         (let ((_%next-probe90615%_
                                (fx+ _%start90594%_
                                     _%i90603%_
                                     (fx* _%i90603%_ _%i90603%_))))
                           (##fxmodulo _%next-probe90615%_ _%size90588%_))
                         (##fx+ _%i90603%_ '1)
                         (let ((_%$e90618%_ _%deleted90605%_))
                           (if _%$e90618%_ _%$e90618%_ _%probe90601%_)))
                        (if (eq? _%key90577%_ _%k90608%_)
                            (let ()
                              (vector-set!
                               _%table90582%_
                               _%probe90601%_
                               _%key90577%_)
                              (vector-set!
                               _%table90582%_
                               (##fx+ _%probe90601%_ '1)
                               (_%symbolic-table-update!90578%_
                                (vector-ref
                                 _%table90582%_
                                 (##fx+ _%probe90601%_ '1)))))
                            (_%loop90598%_
                             (let ((_%next-probe90623%_
                                    (fx+ _%start90594%_
                                         _%i90603%_
                                         (fx* _%i90603%_ _%i90603%_))))
                               (##fxmodulo _%next-probe90623%_ _%size90588%_))
                             (##fx+ _%i90603%_ '1)
                             _%deleted90605%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab90531%_ _%key90533%_)
        (let ((_%table90536%_ (&raw-table-table _%tab90531%_))
              (_%seed90538%_ (&raw-table-seed _%tab90531%_)))
          (let* ((_%h90541%_
                  (fxxor (symbolic-hash _%key90533%_) _%seed90538%_))
                 (_%size90544%_ (vector-length _%table90536%_))
                 (_%entries90547%_ (##fxquotient _%size90544%_ '2))
                 (_%start90550%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90541%_ _%entries90547%_)
                   '1)))
            (let _%loop90554%_ ((_%probe90557%_ _%start90550%_)
                                (_%i90559%_ '1))
              (let ((_%k90562%_ (vector-ref _%table90536%_ _%probe90557%_)))
                (if (eq? _%k90562%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90562%_ (macro-deleted-obj))
                        (_%loop90554%_
                         (let ((_%next-probe90567%_
                                (fx+ _%start90550%_
                                     _%i90559%_
                                     (fx* _%i90559%_ _%i90559%_))))
                           (##fxmodulo _%next-probe90567%_ _%size90544%_))
                         (##fx+ _%i90559%_ '1))
                        (if (eq? _%key90533%_ _%k90562%_)
                            (let ()
                              (vector-set!
                               _%table90536%_
                               _%probe90557%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90536%_
                               (##fx+ _%probe90557%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90531%_
                                  (##fx- (&raw-table-count _%tab90531%_)
                                         '1)))))
                            (_%loop90554%_
                             (let ((_%next-probe90573%_
                                    (fx+ _%start90550%_
                                         _%i90559%_
                                         (fx* _%i90559%_ _%i90559%_))))
                               (##fxmodulo _%next-probe90573%_ _%size90544%_))
                             (##fx+ _%i90559%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint90512%_ _%seed90514%_)
        (make-raw-table__%
         _%size-hint90512%_
         string-hash
         ##string=?
         _%seed90514%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint90520%_ '#f) (_%seed90522%_ '0))
          (make-string-table__% _%size-hint90520%_ _%seed90522%_))))
    (define make-string-table__1
      (lambda (_%size-hint90524%_)
        (let ((_%seed90526%_ '0))
          (make-string-table__% _%size-hint90524%_ _%seed90526%_))))
    (define make-string-table
      (lambda _g91531_
        (let ((_g91530_ (##length _g91531_)))
          (cond ((##fx= _g91530_ 0) (apply make-string-table__0 _g91531_))
                ((##fx= _g91530_ 1) (apply make-string-table__1 _g91531_))
                ((##fx= _g91530_ 2) (apply make-string-table__% _g91531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g91531_))))))
    (define string-table-ref
      (lambda (_%tab90465%_ _%key90466%_ _%default90467%_)
        (let ((_%table90469%_ (&raw-table-table _%tab90465%_))
              (_%seed90470%_ (&raw-table-seed _%tab90465%_)))
          (let* ((_%h90472%_
                  (fxxor (##string=?-hash _%key90466%_) _%seed90470%_))
                 (_%size90475%_ (vector-length _%table90469%_))
                 (_%entries90478%_ (##fxquotient _%size90475%_ '2))
                 (_%start90481%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90472%_ _%entries90478%_)
                   '1)))
            (let _%loop90485%_ ((_%probe90488%_ _%start90481%_)
                                (_%i90490%_ '1)
                                (_%deleted90492%_ '#f))
              (let ((_%k90495%_ (vector-ref _%table90469%_ _%probe90488%_)))
                (if (eq? _%k90495%_ (macro-unused-obj))
                    _%default90467%_
                    (if (eq? _%k90495%_ (macro-deleted-obj))
                        (_%loop90485%_
                         (let ((_%next-probe90500%_
                                (fx+ _%start90481%_
                                     _%i90490%_
                                     (fx* _%i90490%_ _%i90490%_))))
                           (##fxmodulo _%next-probe90500%_ _%size90475%_))
                         (##fx+ _%i90490%_ '1)
                         (let ((_%$e90503%_ _%deleted90492%_))
                           (if _%$e90503%_ _%$e90503%_ _%probe90488%_)))
                        (if (##string=? _%key90466%_ _%k90495%_)
                            (vector-ref
                             _%table90469%_
                             (##fx+ _%probe90488%_ '1))
                            (_%loop90485%_
                             (let ((_%next-probe90508%_
                                    (fx+ _%start90481%_
                                         _%i90490%_
                                         (fx* _%i90490%_ _%i90490%_))))
                               (##fxmodulo _%next-probe90508%_ _%size90475%_))
                             (##fx+ _%i90490%_ '1)
                             _%deleted90492%_))))))))))
    (define string-table-set!
      (lambda (_%tab90461%_ _%key90462%_ _%value90463%_)
        (if (##fx< (&raw-table-free _%tab90461%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90461%_))
                    '4))
            (__raw-table-rehash! _%tab90461%_)
            '#!void)
        (__string-table-set! _%tab90461%_ _%key90462%_ _%value90463%_)))
    (define __string-table-set!
      (lambda (_%tab90412%_ _%key90413%_ _%value90414%_)
        (let ((_%table90417%_ (&raw-table-table _%tab90412%_))
              (_%seed90418%_ (&raw-table-seed _%tab90412%_)))
          (let* ((_%h90420%_
                  (fxxor (##string=?-hash _%key90413%_) _%seed90418%_))
                 (_%size90423%_ (vector-length _%table90417%_))
                 (_%entries90426%_ (##fxquotient _%size90423%_ '2))
                 (_%start90429%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90420%_ _%entries90426%_)
                   '1)))
            (let _%loop90433%_ ((_%probe90436%_ _%start90429%_)
                                (_%i90438%_ '1)
                                (_%deleted90440%_ '#f))
              (let ((_%k90443%_ (vector-ref _%table90417%_ _%probe90436%_)))
                (if (eq? _%k90443%_ (macro-unused-obj))
                    (if _%deleted90440%_
                        (begin
                          (vector-set!
                           _%table90417%_
                           _%deleted90440%_
                           _%key90413%_)
                          (vector-set!
                           _%table90417%_
                           (##fx+ _%deleted90440%_ '1)
                           _%value90414%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90412%_
                              (##fx+ (&raw-table-count _%tab90412%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90417%_
                           _%probe90436%_
                           _%key90413%_)
                          (vector-set!
                           _%table90417%_
                           (##fx+ _%probe90436%_ '1)
                           _%value90414%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90412%_
                              (##fx- (&raw-table-free _%tab90412%_) '1))
                             (&raw-table-count-set!
                              _%tab90412%_
                              (##fx+ (&raw-table-count _%tab90412%_) '1))))))
                    (if (eq? _%k90443%_ (macro-deleted-obj))
                        (_%loop90433%_
                         (let ((_%next-probe90450%_
                                (fx+ _%start90429%_
                                     _%i90438%_
                                     (fx* _%i90438%_ _%i90438%_))))
                           (##fxmodulo _%next-probe90450%_ _%size90423%_))
                         (##fx+ _%i90438%_ '1)
                         (let ((_%$e90453%_ _%deleted90440%_))
                           (if _%$e90453%_ _%$e90453%_ _%probe90436%_)))
                        (if (##string=? _%key90413%_ _%k90443%_)
                            (let ()
                              (vector-set!
                               _%table90417%_
                               _%probe90436%_
                               _%key90413%_)
                              (vector-set!
                               _%table90417%_
                               (##fx+ _%probe90436%_ '1)
                               _%value90414%_))
                            (_%loop90433%_
                             (let ((_%next-probe90458%_
                                    (fx+ _%start90429%_
                                         _%i90438%_
                                         (fx* _%i90438%_ _%i90438%_))))
                               (##fxmodulo _%next-probe90458%_ _%size90423%_))
                             (##fx+ _%i90438%_ '1)
                             _%deleted90440%_))))))))))
    (define string-table-update!
      (lambda (_%tab90407%_
               _%key90408%_
               _%string-table-update!90409%_
               _%default90410%_)
        (if (##fx< (&raw-table-free _%tab90407%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90407%_))
                    '4))
            (__raw-table-rehash! _%tab90407%_)
            '#!void)
        (__string-table-update!
         _%tab90407%_
         _%key90408%_
         _%string-table-update!90409%_
         _%default90410%_)))
    (define __string-table-update!
      (lambda (_%tab90357%_
               _%key90358%_
               _%string-table-update!90359%_
               _%default90360%_)
        (let ((_%table90363%_ (&raw-table-table _%tab90357%_))
              (_%seed90364%_ (&raw-table-seed _%tab90357%_)))
          (let* ((_%h90366%_
                  (fxxor (##string=?-hash _%key90358%_) _%seed90364%_))
                 (_%size90369%_ (vector-length _%table90363%_))
                 (_%entries90372%_ (##fxquotient _%size90369%_ '2))
                 (_%start90375%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90366%_ _%entries90372%_)
                   '1)))
            (let _%loop90379%_ ((_%probe90382%_ _%start90375%_)
                                (_%i90384%_ '1)
                                (_%deleted90386%_ '#f))
              (let ((_%k90389%_ (vector-ref _%table90363%_ _%probe90382%_)))
                (if (eq? _%k90389%_ (macro-unused-obj))
                    (if _%deleted90386%_
                        (begin
                          (vector-set!
                           _%table90363%_
                           _%deleted90386%_
                           _%key90358%_)
                          (vector-set!
                           _%table90363%_
                           (##fx+ _%deleted90386%_ '1)
                           (_%string-table-update!90359%_ _%default90360%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90357%_
                              (##fx+ (&raw-table-count _%tab90357%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90363%_
                           _%probe90382%_
                           _%key90358%_)
                          (vector-set!
                           _%table90363%_
                           (##fx+ _%probe90382%_ '1)
                           (_%string-table-update!90359%_ _%default90360%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90357%_
                              (##fx- (&raw-table-free _%tab90357%_) '1))
                             (&raw-table-count-set!
                              _%tab90357%_
                              (##fx+ (&raw-table-count _%tab90357%_) '1))))))
                    (if (eq? _%k90389%_ (macro-deleted-obj))
                        (_%loop90379%_
                         (let ((_%next-probe90396%_
                                (fx+ _%start90375%_
                                     _%i90384%_
                                     (fx* _%i90384%_ _%i90384%_))))
                           (##fxmodulo _%next-probe90396%_ _%size90369%_))
                         (##fx+ _%i90384%_ '1)
                         (let ((_%$e90399%_ _%deleted90386%_))
                           (if _%$e90399%_ _%$e90399%_ _%probe90382%_)))
                        (if (##string=? _%key90358%_ _%k90389%_)
                            (let ()
                              (vector-set!
                               _%table90363%_
                               _%probe90382%_
                               _%key90358%_)
                              (vector-set!
                               _%table90363%_
                               (##fx+ _%probe90382%_ '1)
                               (_%string-table-update!90359%_
                                (vector-ref
                                 _%table90363%_
                                 (##fx+ _%probe90382%_ '1)))))
                            (_%loop90379%_
                             (let ((_%next-probe90404%_
                                    (fx+ _%start90375%_
                                         _%i90384%_
                                         (fx* _%i90384%_ _%i90384%_))))
                               (##fxmodulo _%next-probe90404%_ _%size90369%_))
                             (##fx+ _%i90384%_ '1)
                             _%deleted90386%_))))))))))
    (define string-table-delete!
      (lambda (_%tab90312%_ _%key90314%_)
        (let ((_%table90317%_ (&raw-table-table _%tab90312%_))
              (_%seed90319%_ (&raw-table-seed _%tab90312%_)))
          (let* ((_%h90322%_
                  (fxxor (##string=?-hash _%key90314%_) _%seed90319%_))
                 (_%size90325%_ (vector-length _%table90317%_))
                 (_%entries90328%_ (##fxquotient _%size90325%_ '2))
                 (_%start90331%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90322%_ _%entries90328%_)
                   '1)))
            (let _%loop90335%_ ((_%probe90338%_ _%start90331%_)
                                (_%i90340%_ '1))
              (let ((_%k90343%_ (vector-ref _%table90317%_ _%probe90338%_)))
                (if (eq? _%k90343%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90343%_ (macro-deleted-obj))
                        (_%loop90335%_
                         (let ((_%next-probe90348%_
                                (fx+ _%start90331%_
                                     _%i90340%_
                                     (fx* _%i90340%_ _%i90340%_))))
                           (##fxmodulo _%next-probe90348%_ _%size90325%_))
                         (##fx+ _%i90340%_ '1))
                        (if (##string=? _%key90314%_ _%k90343%_)
                            (let ()
                              (vector-set!
                               _%table90317%_
                               _%probe90338%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90317%_
                               (##fx+ _%probe90338%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90312%_
                                  (##fx- (&raw-table-count _%tab90312%_)
                                         '1)))))
                            (_%loop90335%_
                             (let ((_%next-probe90354%_
                                    (fx+ _%start90331%_
                                         _%i90340%_
                                         (fx* _%i90340%_ _%i90340%_))))
                               (##fxmodulo _%next-probe90354%_ _%size90325%_))
                             (##fx+ _%i90340%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint90293%_ _%seed90295%_)
        (make-raw-table__%
         _%size-hint90293%_
         immediate-hash
         eq?
         _%seed90295%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint90301%_ '#f) (_%seed90303%_ '0))
          (make-immediate-table__% _%size-hint90301%_ _%seed90303%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint90305%_)
        (let ((_%seed90307%_ '0))
          (make-immediate-table__% _%size-hint90305%_ _%seed90307%_))))
    (define make-immediate-table
      (lambda _g91533_
        (let ((_g91532_ (##length _g91533_)))
          (cond ((##fx= _g91532_ 0) (apply make-immediate-table__0 _g91533_))
                ((##fx= _g91532_ 1) (apply make-immediate-table__1 _g91533_))
                ((##fx= _g91532_ 2) (apply make-immediate-table__% _g91533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g91533_))))))
    (define immediate-table-ref
      (lambda (_%tab90246%_ _%key90247%_ _%default90248%_)
        (let ((_%table90250%_ (&raw-table-table _%tab90246%_))
              (_%seed90251%_ (&raw-table-seed _%tab90246%_)))
          (let* ((_%h90253%_
                  (fxxor (immediate-hash _%key90247%_) _%seed90251%_))
                 (_%size90256%_ (vector-length _%table90250%_))
                 (_%entries90259%_ (##fxquotient _%size90256%_ '2))
                 (_%start90262%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90253%_ _%entries90259%_)
                   '1)))
            (let _%loop90266%_ ((_%probe90269%_ _%start90262%_)
                                (_%i90271%_ '1)
                                (_%deleted90273%_ '#f))
              (let ((_%k90276%_ (vector-ref _%table90250%_ _%probe90269%_)))
                (if (eq? _%k90276%_ (macro-unused-obj))
                    _%default90248%_
                    (if (eq? _%k90276%_ (macro-deleted-obj))
                        (_%loop90266%_
                         (let ((_%next-probe90281%_
                                (fx+ _%start90262%_
                                     _%i90271%_
                                     (fx* _%i90271%_ _%i90271%_))))
                           (##fxmodulo _%next-probe90281%_ _%size90256%_))
                         (##fx+ _%i90271%_ '1)
                         (let ((_%$e90284%_ _%deleted90273%_))
                           (if _%$e90284%_ _%$e90284%_ _%probe90269%_)))
                        (if (eq? _%key90247%_ _%k90276%_)
                            (vector-ref
                             _%table90250%_
                             (##fx+ _%probe90269%_ '1))
                            (_%loop90266%_
                             (let ((_%next-probe90289%_
                                    (fx+ _%start90262%_
                                         _%i90271%_
                                         (fx* _%i90271%_ _%i90271%_))))
                               (##fxmodulo _%next-probe90289%_ _%size90256%_))
                             (##fx+ _%i90271%_ '1)
                             _%deleted90273%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab90242%_ _%key90243%_ _%value90244%_)
        (if (##fx< (&raw-table-free _%tab90242%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90242%_))
                    '4))
            (__raw-table-rehash! _%tab90242%_)
            '#!void)
        (__immediate-table-set! _%tab90242%_ _%key90243%_ _%value90244%_)))
    (define __immediate-table-set!
      (lambda (_%tab90193%_ _%key90194%_ _%value90195%_)
        (let ((_%table90198%_ (&raw-table-table _%tab90193%_))
              (_%seed90199%_ (&raw-table-seed _%tab90193%_)))
          (let* ((_%h90201%_
                  (fxxor (immediate-hash _%key90194%_) _%seed90199%_))
                 (_%size90204%_ (vector-length _%table90198%_))
                 (_%entries90207%_ (##fxquotient _%size90204%_ '2))
                 (_%start90210%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90201%_ _%entries90207%_)
                   '1)))
            (let _%loop90214%_ ((_%probe90217%_ _%start90210%_)
                                (_%i90219%_ '1)
                                (_%deleted90221%_ '#f))
              (let ((_%k90224%_ (vector-ref _%table90198%_ _%probe90217%_)))
                (if (eq? _%k90224%_ (macro-unused-obj))
                    (if _%deleted90221%_
                        (begin
                          (vector-set!
                           _%table90198%_
                           _%deleted90221%_
                           _%key90194%_)
                          (vector-set!
                           _%table90198%_
                           (##fx+ _%deleted90221%_ '1)
                           _%value90195%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90193%_
                              (##fx+ (&raw-table-count _%tab90193%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90198%_
                           _%probe90217%_
                           _%key90194%_)
                          (vector-set!
                           _%table90198%_
                           (##fx+ _%probe90217%_ '1)
                           _%value90195%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90193%_
                              (##fx- (&raw-table-free _%tab90193%_) '1))
                             (&raw-table-count-set!
                              _%tab90193%_
                              (##fx+ (&raw-table-count _%tab90193%_) '1))))))
                    (if (eq? _%k90224%_ (macro-deleted-obj))
                        (_%loop90214%_
                         (let ((_%next-probe90231%_
                                (fx+ _%start90210%_
                                     _%i90219%_
                                     (fx* _%i90219%_ _%i90219%_))))
                           (##fxmodulo _%next-probe90231%_ _%size90204%_))
                         (##fx+ _%i90219%_ '1)
                         (let ((_%$e90234%_ _%deleted90221%_))
                           (if _%$e90234%_ _%$e90234%_ _%probe90217%_)))
                        (if (eq? _%key90194%_ _%k90224%_)
                            (let ()
                              (vector-set!
                               _%table90198%_
                               _%probe90217%_
                               _%key90194%_)
                              (vector-set!
                               _%table90198%_
                               (##fx+ _%probe90217%_ '1)
                               _%value90195%_))
                            (_%loop90214%_
                             (let ((_%next-probe90239%_
                                    (fx+ _%start90210%_
                                         _%i90219%_
                                         (fx* _%i90219%_ _%i90219%_))))
                               (##fxmodulo _%next-probe90239%_ _%size90204%_))
                             (##fx+ _%i90219%_ '1)
                             _%deleted90221%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab90188%_
               _%key90189%_
               _%immediate-table-update!90190%_
               _%default90191%_)
        (if (##fx< (&raw-table-free _%tab90188%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90188%_))
                    '4))
            (__raw-table-rehash! _%tab90188%_)
            '#!void)
        (__immediate-table-update!
         _%tab90188%_
         _%key90189%_
         _%immediate-table-update!90190%_
         _%default90191%_)))
    (define __immediate-table-update!
      (lambda (_%tab90138%_
               _%key90139%_
               _%immediate-table-update!90140%_
               _%default90141%_)
        (let ((_%table90144%_ (&raw-table-table _%tab90138%_))
              (_%seed90145%_ (&raw-table-seed _%tab90138%_)))
          (let* ((_%h90147%_
                  (fxxor (immediate-hash _%key90139%_) _%seed90145%_))
                 (_%size90150%_ (vector-length _%table90144%_))
                 (_%entries90153%_ (##fxquotient _%size90150%_ '2))
                 (_%start90156%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90147%_ _%entries90153%_)
                   '1)))
            (let _%loop90160%_ ((_%probe90163%_ _%start90156%_)
                                (_%i90165%_ '1)
                                (_%deleted90167%_ '#f))
              (let ((_%k90170%_ (vector-ref _%table90144%_ _%probe90163%_)))
                (if (eq? _%k90170%_ (macro-unused-obj))
                    (if _%deleted90167%_
                        (begin
                          (vector-set!
                           _%table90144%_
                           _%deleted90167%_
                           _%key90139%_)
                          (vector-set!
                           _%table90144%_
                           (##fx+ _%deleted90167%_ '1)
                           (_%immediate-table-update!90140%_ _%default90141%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90138%_
                              (##fx+ (&raw-table-count _%tab90138%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90144%_
                           _%probe90163%_
                           _%key90139%_)
                          (vector-set!
                           _%table90144%_
                           (##fx+ _%probe90163%_ '1)
                           (_%immediate-table-update!90140%_ _%default90141%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90138%_
                              (##fx- (&raw-table-free _%tab90138%_) '1))
                             (&raw-table-count-set!
                              _%tab90138%_
                              (##fx+ (&raw-table-count _%tab90138%_) '1))))))
                    (if (eq? _%k90170%_ (macro-deleted-obj))
                        (_%loop90160%_
                         (let ((_%next-probe90177%_
                                (fx+ _%start90156%_
                                     _%i90165%_
                                     (fx* _%i90165%_ _%i90165%_))))
                           (##fxmodulo _%next-probe90177%_ _%size90150%_))
                         (##fx+ _%i90165%_ '1)
                         (let ((_%$e90180%_ _%deleted90167%_))
                           (if _%$e90180%_ _%$e90180%_ _%probe90163%_)))
                        (if (eq? _%key90139%_ _%k90170%_)
                            (let ()
                              (vector-set!
                               _%table90144%_
                               _%probe90163%_
                               _%key90139%_)
                              (vector-set!
                               _%table90144%_
                               (##fx+ _%probe90163%_ '1)
                               (_%immediate-table-update!90140%_
                                (vector-ref
                                 _%table90144%_
                                 (##fx+ _%probe90163%_ '1)))))
                            (_%loop90160%_
                             (let ((_%next-probe90185%_
                                    (fx+ _%start90156%_
                                         _%i90165%_
                                         (fx* _%i90165%_ _%i90165%_))))
                               (##fxmodulo _%next-probe90185%_ _%size90150%_))
                             (##fx+ _%i90165%_ '1)
                             _%deleted90167%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab90093%_ _%key90095%_)
        (let ((_%table90098%_ (&raw-table-table _%tab90093%_))
              (_%seed90100%_ (&raw-table-seed _%tab90093%_)))
          (let* ((_%h90103%_
                  (fxxor (immediate-hash _%key90095%_) _%seed90100%_))
                 (_%size90106%_ (vector-length _%table90098%_))
                 (_%entries90109%_ (##fxquotient _%size90106%_ '2))
                 (_%start90112%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90103%_ _%entries90109%_)
                   '1)))
            (let _%loop90116%_ ((_%probe90119%_ _%start90112%_)
                                (_%i90121%_ '1))
              (let ((_%k90124%_ (vector-ref _%table90098%_ _%probe90119%_)))
                (if (eq? _%k90124%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90124%_ (macro-deleted-obj))
                        (_%loop90116%_
                         (let ((_%next-probe90129%_
                                (fx+ _%start90112%_
                                     _%i90121%_
                                     (fx* _%i90121%_ _%i90121%_))))
                           (##fxmodulo _%next-probe90129%_ _%size90106%_))
                         (##fx+ _%i90121%_ '1))
                        (if (eq? _%key90095%_ _%k90124%_)
                            (let ()
                              (vector-set!
                               _%table90098%_
                               _%probe90119%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90098%_
                               (##fx+ _%probe90119%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90093%_
                                  (##fx- (&raw-table-count _%tab90093%_)
                                         '1)))))
                            (_%loop90116%_
                             (let ((_%next-probe90135%_
                                    (fx+ _%start90112%_
                                         _%i90121%_
                                         (fx* _%i90121%_ _%i90121%_))))
                               (##fxmodulo _%next-probe90135%_ _%size90106%_))
                             (##fx+ _%i90121%_ '1)))))))))))
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
      (lambda (_%tab90091%_)
        (##unchecked-structure-ref
         _%tab90091%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab90089%_)
        (##unchecked-structure-ref
         _%tab90089%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab90086%_ _%val90087%_)
        (##unchecked-structure-set!
         _%tab90086%_
         _%val90087%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab90083%_ _%val90084%_)
        (##unchecked-structure-set!
         _%tab90083%_
         _%val90084%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint90059%_ _%klass90060%_ _%flags90061%_)
        (let ((_%gcht90063%_
               (__gc-table-new
                (if (fixnum? _%size-hint90059%_) _%size-hint90059%_ '16)
                _%flags90061%_)))
          (##structure _%klass90060%_ _%gcht90063%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint90068%_)
        (let* ((_%klass90070%_ __gc-table::t) (_%flags90072%_ '0))
          (make-gc-table__%
           _%size-hint90068%_
           _%klass90070%_
           _%flags90072%_))))
    (define make-gc-table__1
      (lambda (_%size-hint90074%_ _%klass90075%_)
        (let ((_%flags90077%_ '0))
          (make-gc-table__%
           _%size-hint90074%_
           _%klass90075%_
           _%flags90077%_))))
    (define make-gc-table
      (lambda _g91535_
        (let ((_g91534_ (##length _g91535_)))
          (cond ((##fx= _g91534_ 1) (apply make-gc-table__0 _g91535_))
                ((##fx= _g91534_ 2) (apply make-gc-table__1 _g91535_))
                ((##fx= _g91534_ 3) (apply make-gc-table__% _g91535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g91535_))))))
    (define __gc-table-immediate
      (lambda (_%tab90050%_)
        (let ((_%$e90052%_ (&gc-table-immediate _%tab90050%_)))
          (if _%$e90052%_
              _%$e90052%_
              (let ((_%immediate90056%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab90050%_ _%immediate90056%_)
                _%immediate90056%_)))))
    (define __gc-table-new
      (lambda (_%size90040%_ _%flags90041%_)
        (let* ((_%flags90043%_
                (##fxand _%flags90041%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags90045%_
                (fxior _%flags90043%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht90047%_
                (##gc-hash-table-allocate
                 _%size90040%_
                 _%flags90045%_
                 __gc-table-loads)))
          _%gcht90047%_)))
    (define __gc-table-e
      (lambda (_%tab90035%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht90038%_ (&gc-table-gcht _%tab90035%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht90038%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht90038%_
              (begin
                (__gc-table-rehash! _%tab90035%_)
                (&gc-table-gcht _%tab90035%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab90026%_)
        (let* ((_%old-table90028%_ (&gc-table-gcht _%tab90026%_))
               (_%new-table90030%_
                (##gc-hash-table-resize! _%old-table90028%_ __gc-table-loads))
               (_%gcht90032%_
                (##gc-hash-table-rehash!
                 _%old-table90028%_
                 _%new-table90030%_)))
          (&gc-table-gcht-set! _%tab90026%_ _%gcht90032%_))))
    (define gc-table-ref
      (lambda (_%tab90010%_ _%key90011%_ _%default90012%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90011%_)
            (let* ((_%gcht90016%_ (__gc-table-e _%tab90010%_))
                   (_%value90018%_
                    (##gc-hash-table-ref _%gcht90016%_ _%key90011%_)))
              (if (eq? _%value90018%_ (macro-unused-obj))
                  _%default90012%_
                  _%value90018%_))
            (let ((_%$e90020%_ (&gc-table-immediate _%tab90010%_)))
              (if _%$e90020%_
                  ((lambda (_%immediate90023%_)
                     (immediate-table-ref
                      _%immediate90023%_
                      _%key90011%_
                      _%default90012%_))
                   _%$e90020%_)
                  _%default90012%_)))))
    (define gc-table-set!
      (lambda (_%tab90003%_ _%key90004%_ _%value90005%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key90004%_)
            (let ((_%gcht90008%_ (__gc-table-e _%tab90003%_)))
              (if (##gc-hash-table-set!
                   _%gcht90008%_
                   _%key90004%_
                   _%value90005%_)
                  (begin
                    (__gc-table-rehash! _%tab90003%_)
                    (gc-table-set! _%tab90003%_ _%key90004%_ _%value90005%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab90003%_)
             _%key90004%_
             _%value90005%_))))
    (define gc-table-update!
      (lambda (_%tab89996%_ _%key89997%_ _%update89998%_ _%default89999%_)
        (if (##mem-allocated? _%key89997%_)
            (let ((_%value90001%_
                   (gc-table-ref _%tab89996%_ _%key89997%_ _%default89999%_)))
              (gc-table-set!
               _%tab89996%_
               _%key89997%_
               (_%update89998%_ _%value90001%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab89996%_)
             _%key89997%_
             _%update89998%_
             _%default89999%_))))
    (define gc-table-delete!
      (lambda (_%tab89984%_ _%key89985%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89985%_)
            (let ((_%gcht89989%_ (__gc-table-e _%tab89984%_)))
              (if (##gc-hash-table-set!
                   _%gcht89989%_
                   _%key89985%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab89984%_)
                    (gc-table-delete! _%tab89984%_ _%key89985%_))
                  '#!void))
            (let ((_%$e89991%_ (&gc-table-immediate _%tab89984%_)))
              (if _%$e89991%_
                  ((lambda (_%immediate89994%_)
                     (immediate-table-delete! _%immediate89994%_ _%key89985%_))
                   _%$e89991%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab89965%_ _%proc89966%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht89969%_ (__gc-table-e _%tab89965%_)))
            (let _%loop89971%_ ((_%i89973%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i89973%_ (##vector-length _%gcht89969%_))
                  (let ((_%key89975%_ (##vector-ref _%gcht89969%_ _%i89973%_)))
                    (if (and (not (eq? _%key89975%_ (macro-unused-obj)))
                             (not (eq? _%key89975%_ (macro-deleted-obj))))
                        (_%proc89966%_
                         _%key89975%_
                         (##vector-ref _%gcht89969%_ (##fx+ _%i89973%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop89971%_ (##fx+ _%i89973%_ '2))))
                  '#!void)))
          (let ((_%$e89979%_ (&gc-table-immediate _%tab89965%_)))
            (if _%$e89979%_
                ((lambda (_%immediate89982%_)
                   (raw-table-for-each _%immediate89982%_ _%proc89966%_))
                 _%$e89979%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab89953%_)
        (let* ((_%gcht89955%_ (__gc-table-e _%tab89953%_))
               (_%new-table89957%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht89955%_)
                 (macro-gc-hash-table-flags _%gcht89955%_)))
               (_%result89959%_
                (##structure
                 (##structure-type _%tab89953%_)
                 _%new-table89957%_
                 '#f)))
          (gc-table-for-each
           _%tab89953%_
           (lambda (_%k89962%_ _%v89963%_)
             (gc-table-set! _%result89959%_ _%k89962%_ _%v89963%_)))
          _%result89959%_)))
    (define gc-table-clear!
      (lambda (_%tab89946%_)
        (let* ((_%gcht89948%_ (__gc-table-e _%tab89946%_))
               (_%new-table89950%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht89948%_))))
          (&gc-table-gcht-set! _%tab89946%_ _%new-table89950%_)
          (&gc-table-immediate-set! _%tab89946%_ '#f))))
    (define gc-table-length
      (lambda (_%tab89938%_)
        (let ((_%gcht89940%_ (__gc-table-e _%tab89938%_)))
          (fx+ (macro-gc-hash-table-count _%gcht89940%_)
               (let ((_%$e89942%_ (&gc-table-immediate _%tab89938%_)))
                 (if _%$e89942%_ (&raw-table-count _%$e89942%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj89923%_)
        (declare (not interrupts-enabled))
        (let ((_%val89926%_ (gc-table-ref __object-eq-hash _%obj89923%_ '#f)))
          (if _%val89926%_
              _%val89926%_
              (let* ((_%mix89928%_ __object-eq-hash-next)
                     (_%ptr89930%_ (##type-cast _%obj89923%_ '0))
                     (_%h89932%_
                      (fxand (fxxor _%mix89928%_ _%ptr89930%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e89935%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e89935%_ _%$e89935%_ '0)))
                (gc-table-set! __object-eq-hash _%obj89923%_ _%h89932%_)
                _%h89932%_)))))))
