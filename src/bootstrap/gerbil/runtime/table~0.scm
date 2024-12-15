(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1734280444)
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
      (lambda (_%tab94880%_)
        (##unchecked-structure-ref
         _%tab94880%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab94878%_)
        (##unchecked-structure-ref
         _%tab94878%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab94876%_)
        (##unchecked-structure-ref
         _%tab94876%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab94874%_)
        (##unchecked-structure-ref
         _%tab94874%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab94872%_)
        (##unchecked-structure-ref
         _%tab94872%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab94870%_)
        (##unchecked-structure-ref
         _%tab94870%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab94867%_ _%val94868%_)
        (##unchecked-structure-set!
         _%tab94867%_
         _%val94868%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab94864%_ _%val94865%_)
        (##unchecked-structure-set!
         _%tab94864%_
         _%val94865%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab94861%_ _%val94862%_)
        (##unchecked-structure-set!
         _%tab94861%_
         _%val94862%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab94858%_ _%val94859%_)
        (##unchecked-structure-set!
         _%tab94858%_
         _%val94859%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab94855%_ _%val94856%_)
        (##unchecked-structure-set!
         _%tab94855%_
         _%val94856%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab94852%_ _%val94853%_)
        (##unchecked-structure-set!
         _%tab94852%_
         _%val94853%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint94850%_)
        (if (and (fixnum? _%size-hint94850%_) (##fx> _%size-hint94850%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint94850%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint94826%_ _%hash94827%_ _%test94828%_ _%seed94829%_)
        (let* ((_%size94831%_ (raw-table-size-hint->size _%size-hint94826%_))
               (_%table94833%_
                (##make-vector _%size94831%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table94833%_
           '0
           (##fxquotient _%size94831%_ '2)
           _%hash94827%_
           _%test94828%_
           _%seed94829%_))))
    (define make-raw-table__0
      (lambda (_%size-hint94839%_ _%hash94840%_ _%test94841%_)
        (let ((_%seed94843%_ '0))
          (make-raw-table__%
           _%size-hint94839%_
           _%hash94840%_
           _%test94841%_
           _%seed94843%_))))
    (define make-raw-table
      (lambda _g94882_
        (let ((_g94881_ (##length _g94882_)))
          (cond ((##fx= _g94881_ 3) (apply make-raw-table__0 _g94882_))
                ((##fx= _g94881_ 4) (apply make-raw-table__% _g94882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g94882_))))))
    (define raw-table-ref
      (lambda (_%tab94777%_ _%key94778%_ _%default94779%_)
        (let ((_%table94781%_ (&raw-table-table _%tab94777%_))
              (_%seed94782%_ (&raw-table-seed _%tab94777%_))
              (_%hash94783%_ (&raw-table-hash _%tab94777%_))
              (_%test94784%_ (&raw-table-test _%tab94777%_)))
          (let* ((_%h94786%_
                  (fxxor (_%hash94783%_ _%key94778%_) _%seed94782%_))
                 (_%size94789%_ (vector-length _%table94781%_))
                 (_%entries94792%_ (##fxquotient _%size94789%_ '2))
                 (_%start94795%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94786%_ _%entries94792%_)
                   '1)))
            (let _%loop94799%_ ((_%probe94802%_ _%start94795%_)
                                (_%i94804%_ '1)
                                (_%deleted94806%_ '#f))
              (let ((_%k94809%_ (vector-ref _%table94781%_ _%probe94802%_)))
                (if (eq? _%k94809%_ (macro-unused-obj))
                    _%default94779%_
                    (if (eq? _%k94809%_ (macro-deleted-obj))
                        (_%loop94799%_
                         (let ((_%next-probe94814%_
                                (fx+ _%start94795%_
                                     _%i94804%_
                                     (fx* _%i94804%_ _%i94804%_))))
                           (##fxmodulo _%next-probe94814%_ _%size94789%_))
                         (##fx+ _%i94804%_ '1)
                         (let ((_%$e94817%_ _%deleted94806%_))
                           (if _%$e94817%_ _%$e94817%_ _%probe94802%_)))
                        (if (_%test94784%_ _%key94778%_ _%k94809%_)
                            (vector-ref
                             _%table94781%_
                             (##fx+ _%probe94802%_ '1))
                            (_%loop94799%_
                             (let ((_%next-probe94822%_
                                    (fx+ _%start94795%_
                                         _%i94804%_
                                         (fx* _%i94804%_ _%i94804%_))))
                               (##fxmodulo _%next-probe94822%_ _%size94789%_))
                             (##fx+ _%i94804%_ '1)
                             _%deleted94806%_))))))))))
    (define raw-table-set!
      (lambda (_%tab94773%_ _%key94774%_ _%value94775%_)
        (if (##fx< (&raw-table-free _%tab94773%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94773%_))
                    '4))
            (__raw-table-rehash! _%tab94773%_)
            '#!void)
        (__raw-table-set! _%tab94773%_ _%key94774%_ _%value94775%_)))
    (define raw-table-update!
      (lambda (_%tab94768%_ _%key94769%_ _%update94770%_ _%default94771%_)
        (if (##fx< (&raw-table-free _%tab94768%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94768%_))
                    '4))
            (__raw-table-rehash! _%tab94768%_)
            '#!void)
        (__raw-table-update!
         _%tab94768%_
         _%key94769%_
         _%update94770%_
         _%default94771%_)))
    (define raw-table-delete!
      (lambda (_%tab94725%_ _%key94726%_)
        (let ((_%table94728%_ (&raw-table-table _%tab94725%_))
              (_%seed94729%_ (&raw-table-seed _%tab94725%_))
              (_%hash94730%_ (&raw-table-hash _%tab94725%_))
              (_%test94731%_ (&raw-table-test _%tab94725%_)))
          (let* ((_%h94733%_
                  (fxxor (_%hash94730%_ _%key94726%_) _%seed94729%_))
                 (_%size94736%_ (vector-length _%table94728%_))
                 (_%entries94739%_ (##fxquotient _%size94736%_ '2))
                 (_%start94742%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94733%_ _%entries94739%_)
                   '1)))
            (let _%loop94746%_ ((_%probe94749%_ _%start94742%_)
                                (_%i94751%_ '1))
              (let ((_%k94754%_ (vector-ref _%table94728%_ _%probe94749%_)))
                (if (eq? _%k94754%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94754%_ (macro-deleted-obj))
                        (_%loop94746%_
                         (let ((_%next-probe94759%_
                                (fx+ _%start94742%_
                                     _%i94751%_
                                     (fx* _%i94751%_ _%i94751%_))))
                           (##fxmodulo _%next-probe94759%_ _%size94736%_))
                         (##fx+ _%i94751%_ '1))
                        (if (_%test94731%_ _%key94726%_ _%k94754%_)
                            (let ()
                              (vector-set!
                               _%table94728%_
                               _%probe94749%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94728%_
                               (##fx+ _%probe94749%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94725%_
                                  (##fx- (&raw-table-count _%tab94725%_)
                                         '1)))))
                            (_%loop94746%_
                             (let ((_%next-probe94765%_
                                    (fx+ _%start94742%_
                                         _%i94751%_
                                         (fx* _%i94751%_ _%i94751%_))))
                               (##fxmodulo _%next-probe94765%_ _%size94736%_))
                             (##fx+ _%i94751%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab94709%_ _%proc94710%_)
        (let* ((_%table94712%_ (&raw-table-table _%tab94709%_))
               (_%size94714%_ (vector-length _%table94712%_)))
          (let _%loop94717%_ ((_%i94719%_ '0))
            (if (##fx< _%i94719%_ _%size94714%_)
                (begin
                  (let ((_%key94721%_ (vector-ref _%table94712%_ _%i94719%_)))
                    (if (if (eq? _%key94721%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94721%_ (macro-deleted-obj))))
                        (let ((_%value94723%_
                               (vector-ref
                                _%table94712%_
                                (##fx+ _%i94719%_ '1))))
                          (_%proc94710%_ _%key94721%_ _%value94723%_))
                        '#!void))
                  (_%loop94717%_ (##fx+ _%i94719%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab94705%_)
        (let ((_%new-tab94707%_ (##structure-copy _%tab94705%_)))
          (&raw-table-table-set!
           _%new-tab94707%_
           (vector-copy (&raw-table-table _%tab94705%_)))
          _%new-tab94707%_)))
    (define raw-table-clear!
      (lambda (_%tab94703%_)
        (vector-fill! (&raw-table-table _%tab94703%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab94703%_ '0)
        (&raw-table-free-set!
         _%tab94703%_
         (##fxquotient (vector-length (&raw-table-table _%tab94703%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab94653%_ _%key94654%_ _%value94655%_)
        (let ((_%table94657%_ (&raw-table-table _%tab94653%_))
              (_%seed94658%_ (&raw-table-seed _%tab94653%_))
              (_%hash94659%_ (&raw-table-hash _%tab94653%_))
              (_%test94660%_ (&raw-table-test _%tab94653%_)))
          (let* ((_%h94662%_
                  (fxxor (_%hash94659%_ _%key94654%_) _%seed94658%_))
                 (_%size94665%_ (vector-length _%table94657%_))
                 (_%entries94668%_ (##fxquotient _%size94665%_ '2))
                 (_%start94671%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94662%_ _%entries94668%_)
                   '1)))
            (let _%loop94675%_ ((_%probe94678%_ _%start94671%_)
                                (_%i94680%_ '1)
                                (_%deleted94682%_ '#f))
              (let ((_%k94685%_ (vector-ref _%table94657%_ _%probe94678%_)))
                (if (eq? _%k94685%_ (macro-unused-obj))
                    (if _%deleted94682%_
                        (begin
                          (vector-set!
                           _%table94657%_
                           _%deleted94682%_
                           _%key94654%_)
                          (vector-set!
                           _%table94657%_
                           (##fx+ _%deleted94682%_ '1)
                           _%value94655%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94653%_
                              (##fx+ (&raw-table-count _%tab94653%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94657%_
                           _%probe94678%_
                           _%key94654%_)
                          (vector-set!
                           _%table94657%_
                           (##fx+ _%probe94678%_ '1)
                           _%value94655%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94653%_
                              (##fx- (&raw-table-free _%tab94653%_) '1))
                             (&raw-table-count-set!
                              _%tab94653%_
                              (##fx+ (&raw-table-count _%tab94653%_) '1))))))
                    (if (eq? _%k94685%_ (macro-deleted-obj))
                        (_%loop94675%_
                         (let ((_%next-probe94692%_
                                (fx+ _%start94671%_
                                     _%i94680%_
                                     (fx* _%i94680%_ _%i94680%_))))
                           (##fxmodulo _%next-probe94692%_ _%size94665%_))
                         (##fx+ _%i94680%_ '1)
                         (let ((_%$e94695%_ _%deleted94682%_))
                           (if _%$e94695%_ _%$e94695%_ _%probe94678%_)))
                        (if (_%test94660%_ _%key94654%_ _%k94685%_)
                            (let ()
                              (vector-set!
                               _%table94657%_
                               _%probe94678%_
                               _%key94654%_)
                              (vector-set!
                               _%table94657%_
                               (##fx+ _%probe94678%_ '1)
                               _%value94655%_))
                            (_%loop94675%_
                             (let ((_%next-probe94700%_
                                    (fx+ _%start94671%_
                                         _%i94680%_
                                         (fx* _%i94680%_ _%i94680%_))))
                               (##fxmodulo _%next-probe94700%_ _%size94665%_))
                             (##fx+ _%i94680%_ '1)
                             _%deleted94682%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab94602%_ _%key94603%_ _%update94604%_ _%default94605%_)
        (let ((_%table94607%_ (&raw-table-table _%tab94602%_))
              (_%seed94608%_ (&raw-table-seed _%tab94602%_))
              (_%hash94609%_ (&raw-table-hash _%tab94602%_))
              (_%test94610%_ (&raw-table-test _%tab94602%_)))
          (let* ((_%h94612%_
                  (fxxor (_%hash94609%_ _%key94603%_) _%seed94608%_))
                 (_%size94615%_ (vector-length _%table94607%_))
                 (_%entries94618%_ (##fxquotient _%size94615%_ '2))
                 (_%start94621%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94612%_ _%entries94618%_)
                   '1)))
            (let _%loop94625%_ ((_%probe94628%_ _%start94621%_)
                                (_%i94630%_ '1)
                                (_%deleted94632%_ '#f))
              (let ((_%k94635%_ (vector-ref _%table94607%_ _%probe94628%_)))
                (if (eq? _%k94635%_ (macro-unused-obj))
                    (if _%deleted94632%_
                        (begin
                          (vector-set!
                           _%table94607%_
                           _%deleted94632%_
                           _%key94603%_)
                          (vector-set!
                           _%table94607%_
                           (##fx+ _%deleted94632%_ '1)
                           (_%update94604%_ _%default94605%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94602%_
                              (##fx+ (&raw-table-count _%tab94602%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94607%_
                           _%probe94628%_
                           _%key94603%_)
                          (vector-set!
                           _%table94607%_
                           (##fx+ _%probe94628%_ '1)
                           (_%update94604%_ _%default94605%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94602%_
                              (##fx- (&raw-table-free _%tab94602%_) '1))
                             (&raw-table-count-set!
                              _%tab94602%_
                              (##fx+ (&raw-table-count _%tab94602%_) '1))))))
                    (if (eq? _%k94635%_ (macro-deleted-obj))
                        (_%loop94625%_
                         (let ((_%next-probe94642%_
                                (fx+ _%start94621%_
                                     _%i94630%_
                                     (fx* _%i94630%_ _%i94630%_))))
                           (##fxmodulo _%next-probe94642%_ _%size94615%_))
                         (##fx+ _%i94630%_ '1)
                         (let ((_%$e94645%_ _%deleted94632%_))
                           (if _%$e94645%_ _%$e94645%_ _%probe94628%_)))
                        (if (_%test94610%_ _%key94603%_ _%k94635%_)
                            (let ()
                              (vector-set!
                               _%table94607%_
                               _%probe94628%_
                               _%key94603%_)
                              (vector-set!
                               _%table94607%_
                               (##fx+ _%probe94628%_ '1)
                               (_%update94604%_
                                (vector-ref
                                 _%table94607%_
                                 (##fx+ _%probe94628%_ '1)))))
                            (_%loop94625%_
                             (let ((_%next-probe94650%_
                                    (fx+ _%start94621%_
                                         _%i94630%_
                                         (fx* _%i94630%_ _%i94630%_))))
                               (##fxmodulo _%next-probe94650%_ _%size94615%_))
                             (##fx+ _%i94630%_ '1)
                             _%deleted94632%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab94583%_)
        (let* ((_%old-table94585%_ (&raw-table-table _%tab94583%_))
               (_%old-size94587%_ (vector-length _%old-table94585%_))
               (_%new-size94589%_
                (if (##fx< (&raw-table-count _%tab94583%_)
                           (##fxquotient _%old-size94587%_ '4))
                    (vector-length _%old-table94585%_)
                    (##fx* '2 (vector-length _%old-table94585%_))))
               (_%new-table94591%_
                (##make-vector _%new-size94589%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab94583%_ _%new-table94591%_)
          (&raw-table-count-set! _%tab94583%_ '0)
          (&raw-table-free-set!
           _%tab94583%_
           (##fxquotient _%new-size94589%_ '2))
          (let _%lp94594%_ ((_%i94596%_ '0))
            (if (##fx< _%i94596%_ _%old-size94587%_)
                (begin
                  (let ((_%key94598%_
                         (vector-ref _%old-table94585%_ _%i94596%_)))
                    (if (if (eq? _%key94598%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94598%_ (macro-deleted-obj))))
                        (let ((_%value94600%_
                               (vector-ref
                                _%old-table94585%_
                                (##fx+ _%i94596%_ '1))))
                          (__raw-table-set!
                           _%tab94583%_
                           _%key94598%_
                           _%value94600%_))
                        '#!void))
                  (_%lp94594%_ (##fx+ _%i94596%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj94575%_)
        (let ((_%t94577%_ (##type _%obj94575%_)))
          (if (##fx= (##fxand _%t94577%_ '1) '0)
              (fxand (##type-cast _%obj94575%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj94575%_)
                  (symbolic-hash _%obj94575%_)
                  (if (procedure? _%obj94575%_)
                      (procedure-hash _%obj94575%_)
                      (fxand (__eq-hash _%obj94575%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj94571%_)
        (let ((_%h94573%_
               (if (##closure? _%obj94571%_)
                   (__eq-hash _%obj94571%_)
                   (##type-cast _%obj94571%_ '0))))
          (fxand _%h94573%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj94568%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj94568%_)))
    (define eqv-hash
      (lambda (_%obj94558%_)
        (letrec ((_%combine94560%_
                  (lambda (_%a94565%_ _%b94566%_)
                    (fxand (##fx* (##fx+ _%a94565%_
                                         (fxarithmetic-shift-left
                                          _%b94566%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash94561%_
                  (lambda (_%obj94563%_)
                    (macro-number-dispatch
                     _%obj94563%_
                     (eq-hash _%obj94563%_)
                     (fxand _%obj94563%_ (macro-max-fixnum32))
                     (modulo _%obj94563%_ '331804481)
                     (_%combine94560%_
                      (_%hash94561%_ (macro-ratnum-numerator _%obj94563%_))
                      (_%hash94561%_ (macro-ratnum-denominator _%obj94563%_)))
                     (_%combine94560%_
                      (##u16vector-ref _%obj94563%_ '0)
                      (_%combine94560%_
                       (##u16vector-ref _%obj94563%_ '1)
                       (_%combine94560%_
                        (##u16vector-ref _%obj94563%_ '2)
                        (##u16vector-ref _%obj94563%_ '3))))
                     (_%combine94560%_
                      (_%hash94561%_ (macro-cpxnum-real _%obj94563%_))
                      (_%hash94561%_ (macro-cpxnum-imag _%obj94563%_)))))))
          (_%hash94561%_ _%obj94558%_))))
    (define symbolic?
      (lambda (_%obj94553%_)
        (let ((_%$e94555%_ (symbol? _%obj94553%_)))
          (if _%$e94555%_ _%$e94555%_ (keyword? _%obj94553%_)))))
    (define symbolic-hash (lambda (_%obj94551%_) (macro-slot '1 _%obj94551%_)))
    (define string-hash (lambda (_%obj94549%_) (##string=?-hash _%obj94549%_)))
    (define immediate-hash
      (lambda (_%obj94547%_) (##type-cast _%obj94547%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint94528%_ _%seed94530%_)
        (make-raw-table__% _%size-hint94528%_ eq-hash eq? _%seed94530%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint94536%_ '#f) (_%seed94538%_ '0))
          (make-eq-table__% _%size-hint94536%_ _%seed94538%_))))
    (define make-eq-table__1
      (lambda (_%size-hint94540%_)
        (let ((_%seed94542%_ '0))
          (make-eq-table__% _%size-hint94540%_ _%seed94542%_))))
    (define make-eq-table
      (lambda _g94884_
        (let ((_g94883_ (##length _g94884_)))
          (cond ((##fx= _g94883_ 0) (apply make-eq-table__0 _g94884_))
                ((##fx= _g94883_ 1) (apply make-eq-table__1 _g94884_))
                ((##fx= _g94883_ 2) (apply make-eq-table__% _g94884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g94884_))))))
    (define eq-table-ref
      (lambda (_%tab94481%_ _%key94482%_ _%default94483%_)
        (let ((_%table94485%_ (&raw-table-table _%tab94481%_))
              (_%seed94486%_ (&raw-table-seed _%tab94481%_)))
          (let* ((_%h94488%_ (fxxor (eq-hash _%key94482%_) _%seed94486%_))
                 (_%size94491%_ (vector-length _%table94485%_))
                 (_%entries94494%_ (##fxquotient _%size94491%_ '2))
                 (_%start94497%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94488%_ _%entries94494%_)
                   '1)))
            (let _%loop94501%_ ((_%probe94504%_ _%start94497%_)
                                (_%i94506%_ '1)
                                (_%deleted94508%_ '#f))
              (let ((_%k94511%_ (vector-ref _%table94485%_ _%probe94504%_)))
                (if (eq? _%k94511%_ (macro-unused-obj))
                    _%default94483%_
                    (if (eq? _%k94511%_ (macro-deleted-obj))
                        (_%loop94501%_
                         (let ((_%next-probe94516%_
                                (fx+ _%start94497%_
                                     _%i94506%_
                                     (fx* _%i94506%_ _%i94506%_))))
                           (##fxmodulo _%next-probe94516%_ _%size94491%_))
                         (##fx+ _%i94506%_ '1)
                         (let ((_%$e94519%_ _%deleted94508%_))
                           (if _%$e94519%_ _%$e94519%_ _%probe94504%_)))
                        (if (eq? _%key94482%_ _%k94511%_)
                            (vector-ref
                             _%table94485%_
                             (##fx+ _%probe94504%_ '1))
                            (_%loop94501%_
                             (let ((_%next-probe94524%_
                                    (fx+ _%start94497%_
                                         _%i94506%_
                                         (fx* _%i94506%_ _%i94506%_))))
                               (##fxmodulo _%next-probe94524%_ _%size94491%_))
                             (##fx+ _%i94506%_ '1)
                             _%deleted94508%_))))))))))
    (define eq-table-set!
      (lambda (_%tab94477%_ _%key94478%_ _%value94479%_)
        (if (##fx< (&raw-table-free _%tab94477%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94477%_))
                    '4))
            (__raw-table-rehash! _%tab94477%_)
            '#!void)
        (__eq-table-set! _%tab94477%_ _%key94478%_ _%value94479%_)))
    (define __eq-table-set!
      (lambda (_%tab94428%_ _%key94429%_ _%value94430%_)
        (let ((_%table94433%_ (&raw-table-table _%tab94428%_))
              (_%seed94434%_ (&raw-table-seed _%tab94428%_)))
          (let* ((_%h94436%_ (fxxor (eq-hash _%key94429%_) _%seed94434%_))
                 (_%size94439%_ (vector-length _%table94433%_))
                 (_%entries94442%_ (##fxquotient _%size94439%_ '2))
                 (_%start94445%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94436%_ _%entries94442%_)
                   '1)))
            (let _%loop94449%_ ((_%probe94452%_ _%start94445%_)
                                (_%i94454%_ '1)
                                (_%deleted94456%_ '#f))
              (let ((_%k94459%_ (vector-ref _%table94433%_ _%probe94452%_)))
                (if (eq? _%k94459%_ (macro-unused-obj))
                    (if _%deleted94456%_
                        (begin
                          (vector-set!
                           _%table94433%_
                           _%deleted94456%_
                           _%key94429%_)
                          (vector-set!
                           _%table94433%_
                           (##fx+ _%deleted94456%_ '1)
                           _%value94430%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94428%_
                              (##fx+ (&raw-table-count _%tab94428%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94433%_
                           _%probe94452%_
                           _%key94429%_)
                          (vector-set!
                           _%table94433%_
                           (##fx+ _%probe94452%_ '1)
                           _%value94430%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94428%_
                              (##fx- (&raw-table-free _%tab94428%_) '1))
                             (&raw-table-count-set!
                              _%tab94428%_
                              (##fx+ (&raw-table-count _%tab94428%_) '1))))))
                    (if (eq? _%k94459%_ (macro-deleted-obj))
                        (_%loop94449%_
                         (let ((_%next-probe94466%_
                                (fx+ _%start94445%_
                                     _%i94454%_
                                     (fx* _%i94454%_ _%i94454%_))))
                           (##fxmodulo _%next-probe94466%_ _%size94439%_))
                         (##fx+ _%i94454%_ '1)
                         (let ((_%$e94469%_ _%deleted94456%_))
                           (if _%$e94469%_ _%$e94469%_ _%probe94452%_)))
                        (if (eq? _%key94429%_ _%k94459%_)
                            (let ()
                              (vector-set!
                               _%table94433%_
                               _%probe94452%_
                               _%key94429%_)
                              (vector-set!
                               _%table94433%_
                               (##fx+ _%probe94452%_ '1)
                               _%value94430%_))
                            (_%loop94449%_
                             (let ((_%next-probe94474%_
                                    (fx+ _%start94445%_
                                         _%i94454%_
                                         (fx* _%i94454%_ _%i94454%_))))
                               (##fxmodulo _%next-probe94474%_ _%size94439%_))
                             (##fx+ _%i94454%_ '1)
                             _%deleted94456%_))))))))))
    (define eq-table-update!
      (lambda (_%tab94423%_
               _%key94424%_
               _%eq-table-update!94425%_
               _%default94426%_)
        (if (##fx< (&raw-table-free _%tab94423%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94423%_))
                    '4))
            (__raw-table-rehash! _%tab94423%_)
            '#!void)
        (__eq-table-update!
         _%tab94423%_
         _%key94424%_
         _%eq-table-update!94425%_
         _%default94426%_)))
    (define __eq-table-update!
      (lambda (_%tab94373%_
               _%key94374%_
               _%eq-table-update!94375%_
               _%default94376%_)
        (let ((_%table94379%_ (&raw-table-table _%tab94373%_))
              (_%seed94380%_ (&raw-table-seed _%tab94373%_)))
          (let* ((_%h94382%_ (fxxor (eq-hash _%key94374%_) _%seed94380%_))
                 (_%size94385%_ (vector-length _%table94379%_))
                 (_%entries94388%_ (##fxquotient _%size94385%_ '2))
                 (_%start94391%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94382%_ _%entries94388%_)
                   '1)))
            (let _%loop94395%_ ((_%probe94398%_ _%start94391%_)
                                (_%i94400%_ '1)
                                (_%deleted94402%_ '#f))
              (let ((_%k94405%_ (vector-ref _%table94379%_ _%probe94398%_)))
                (if (eq? _%k94405%_ (macro-unused-obj))
                    (if _%deleted94402%_
                        (begin
                          (vector-set!
                           _%table94379%_
                           _%deleted94402%_
                           _%key94374%_)
                          (vector-set!
                           _%table94379%_
                           (##fx+ _%deleted94402%_ '1)
                           (_%eq-table-update!94375%_ _%default94376%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94373%_
                              (##fx+ (&raw-table-count _%tab94373%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94379%_
                           _%probe94398%_
                           _%key94374%_)
                          (vector-set!
                           _%table94379%_
                           (##fx+ _%probe94398%_ '1)
                           (_%eq-table-update!94375%_ _%default94376%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94373%_
                              (##fx- (&raw-table-free _%tab94373%_) '1))
                             (&raw-table-count-set!
                              _%tab94373%_
                              (##fx+ (&raw-table-count _%tab94373%_) '1))))))
                    (if (eq? _%k94405%_ (macro-deleted-obj))
                        (_%loop94395%_
                         (let ((_%next-probe94412%_
                                (fx+ _%start94391%_
                                     _%i94400%_
                                     (fx* _%i94400%_ _%i94400%_))))
                           (##fxmodulo _%next-probe94412%_ _%size94385%_))
                         (##fx+ _%i94400%_ '1)
                         (let ((_%$e94415%_ _%deleted94402%_))
                           (if _%$e94415%_ _%$e94415%_ _%probe94398%_)))
                        (if (eq? _%key94374%_ _%k94405%_)
                            (let ()
                              (vector-set!
                               _%table94379%_
                               _%probe94398%_
                               _%key94374%_)
                              (vector-set!
                               _%table94379%_
                               (##fx+ _%probe94398%_ '1)
                               (_%eq-table-update!94375%_
                                (vector-ref
                                 _%table94379%_
                                 (##fx+ _%probe94398%_ '1)))))
                            (_%loop94395%_
                             (let ((_%next-probe94420%_
                                    (fx+ _%start94391%_
                                         _%i94400%_
                                         (fx* _%i94400%_ _%i94400%_))))
                               (##fxmodulo _%next-probe94420%_ _%size94385%_))
                             (##fx+ _%i94400%_ '1)
                             _%deleted94402%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab94328%_ _%key94330%_)
        (let ((_%table94333%_ (&raw-table-table _%tab94328%_))
              (_%seed94335%_ (&raw-table-seed _%tab94328%_)))
          (let* ((_%h94338%_ (fxxor (eq-hash _%key94330%_) _%seed94335%_))
                 (_%size94341%_ (vector-length _%table94333%_))
                 (_%entries94344%_ (##fxquotient _%size94341%_ '2))
                 (_%start94347%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94338%_ _%entries94344%_)
                   '1)))
            (let _%loop94351%_ ((_%probe94354%_ _%start94347%_)
                                (_%i94356%_ '1))
              (let ((_%k94359%_ (vector-ref _%table94333%_ _%probe94354%_)))
                (if (eq? _%k94359%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94359%_ (macro-deleted-obj))
                        (_%loop94351%_
                         (let ((_%next-probe94364%_
                                (fx+ _%start94347%_
                                     _%i94356%_
                                     (fx* _%i94356%_ _%i94356%_))))
                           (##fxmodulo _%next-probe94364%_ _%size94341%_))
                         (##fx+ _%i94356%_ '1))
                        (if (eq? _%key94330%_ _%k94359%_)
                            (let ()
                              (vector-set!
                               _%table94333%_
                               _%probe94354%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94333%_
                               (##fx+ _%probe94354%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94328%_
                                  (##fx- (&raw-table-count _%tab94328%_)
                                         '1)))))
                            (_%loop94351%_
                             (let ((_%next-probe94370%_
                                    (fx+ _%start94347%_
                                         _%i94356%_
                                         (fx* _%i94356%_ _%i94356%_))))
                               (##fxmodulo _%next-probe94370%_ _%size94341%_))
                             (##fx+ _%i94356%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint94309%_ _%seed94311%_)
        (make-raw-table__% _%size-hint94309%_ eqv-hash eqv? _%seed94311%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint94317%_ '#f) (_%seed94319%_ '0))
          (make-eqv-table__% _%size-hint94317%_ _%seed94319%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint94321%_)
        (let ((_%seed94323%_ '0))
          (make-eqv-table__% _%size-hint94321%_ _%seed94323%_))))
    (define make-eqv-table
      (lambda _g94886_
        (let ((_g94885_ (##length _g94886_)))
          (cond ((##fx= _g94885_ 0) (apply make-eqv-table__0 _g94886_))
                ((##fx= _g94885_ 1) (apply make-eqv-table__1 _g94886_))
                ((##fx= _g94885_ 2) (apply make-eqv-table__% _g94886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g94886_))))))
    (define eqv-table-ref
      (lambda (_%tab94262%_ _%key94263%_ _%default94264%_)
        (let ((_%table94266%_ (&raw-table-table _%tab94262%_))
              (_%seed94267%_ (&raw-table-seed _%tab94262%_)))
          (let* ((_%h94269%_ (fxxor (eqv-hash _%key94263%_) _%seed94267%_))
                 (_%size94272%_ (vector-length _%table94266%_))
                 (_%entries94275%_ (##fxquotient _%size94272%_ '2))
                 (_%start94278%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94269%_ _%entries94275%_)
                   '1)))
            (let _%loop94282%_ ((_%probe94285%_ _%start94278%_)
                                (_%i94287%_ '1)
                                (_%deleted94289%_ '#f))
              (let ((_%k94292%_ (vector-ref _%table94266%_ _%probe94285%_)))
                (if (eq? _%k94292%_ (macro-unused-obj))
                    _%default94264%_
                    (if (eq? _%k94292%_ (macro-deleted-obj))
                        (_%loop94282%_
                         (let ((_%next-probe94297%_
                                (fx+ _%start94278%_
                                     _%i94287%_
                                     (fx* _%i94287%_ _%i94287%_))))
                           (##fxmodulo _%next-probe94297%_ _%size94272%_))
                         (##fx+ _%i94287%_ '1)
                         (let ((_%$e94300%_ _%deleted94289%_))
                           (if _%$e94300%_ _%$e94300%_ _%probe94285%_)))
                        (if (eqv? _%key94263%_ _%k94292%_)
                            (vector-ref
                             _%table94266%_
                             (##fx+ _%probe94285%_ '1))
                            (_%loop94282%_
                             (let ((_%next-probe94305%_
                                    (fx+ _%start94278%_
                                         _%i94287%_
                                         (fx* _%i94287%_ _%i94287%_))))
                               (##fxmodulo _%next-probe94305%_ _%size94272%_))
                             (##fx+ _%i94287%_ '1)
                             _%deleted94289%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab94258%_ _%key94259%_ _%value94260%_)
        (if (##fx< (&raw-table-free _%tab94258%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94258%_))
                    '4))
            (__raw-table-rehash! _%tab94258%_)
            '#!void)
        (__eqv-table-set! _%tab94258%_ _%key94259%_ _%value94260%_)))
    (define __eqv-table-set!
      (lambda (_%tab94209%_ _%key94210%_ _%value94211%_)
        (let ((_%table94214%_ (&raw-table-table _%tab94209%_))
              (_%seed94215%_ (&raw-table-seed _%tab94209%_)))
          (let* ((_%h94217%_ (fxxor (eqv-hash _%key94210%_) _%seed94215%_))
                 (_%size94220%_ (vector-length _%table94214%_))
                 (_%entries94223%_ (##fxquotient _%size94220%_ '2))
                 (_%start94226%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94217%_ _%entries94223%_)
                   '1)))
            (let _%loop94230%_ ((_%probe94233%_ _%start94226%_)
                                (_%i94235%_ '1)
                                (_%deleted94237%_ '#f))
              (let ((_%k94240%_ (vector-ref _%table94214%_ _%probe94233%_)))
                (if (eq? _%k94240%_ (macro-unused-obj))
                    (if _%deleted94237%_
                        (begin
                          (vector-set!
                           _%table94214%_
                           _%deleted94237%_
                           _%key94210%_)
                          (vector-set!
                           _%table94214%_
                           (##fx+ _%deleted94237%_ '1)
                           _%value94211%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94209%_
                              (##fx+ (&raw-table-count _%tab94209%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94214%_
                           _%probe94233%_
                           _%key94210%_)
                          (vector-set!
                           _%table94214%_
                           (##fx+ _%probe94233%_ '1)
                           _%value94211%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94209%_
                              (##fx- (&raw-table-free _%tab94209%_) '1))
                             (&raw-table-count-set!
                              _%tab94209%_
                              (##fx+ (&raw-table-count _%tab94209%_) '1))))))
                    (if (eq? _%k94240%_ (macro-deleted-obj))
                        (_%loop94230%_
                         (let ((_%next-probe94247%_
                                (fx+ _%start94226%_
                                     _%i94235%_
                                     (fx* _%i94235%_ _%i94235%_))))
                           (##fxmodulo _%next-probe94247%_ _%size94220%_))
                         (##fx+ _%i94235%_ '1)
                         (let ((_%$e94250%_ _%deleted94237%_))
                           (if _%$e94250%_ _%$e94250%_ _%probe94233%_)))
                        (if (eqv? _%key94210%_ _%k94240%_)
                            (let ()
                              (vector-set!
                               _%table94214%_
                               _%probe94233%_
                               _%key94210%_)
                              (vector-set!
                               _%table94214%_
                               (##fx+ _%probe94233%_ '1)
                               _%value94211%_))
                            (_%loop94230%_
                             (let ((_%next-probe94255%_
                                    (fx+ _%start94226%_
                                         _%i94235%_
                                         (fx* _%i94235%_ _%i94235%_))))
                               (##fxmodulo _%next-probe94255%_ _%size94220%_))
                             (##fx+ _%i94235%_ '1)
                             _%deleted94237%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab94204%_
               _%key94205%_
               _%eqv-table-update!94206%_
               _%default94207%_)
        (if (##fx< (&raw-table-free _%tab94204%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94204%_))
                    '4))
            (__raw-table-rehash! _%tab94204%_)
            '#!void)
        (__eqv-table-update!
         _%tab94204%_
         _%key94205%_
         _%eqv-table-update!94206%_
         _%default94207%_)))
    (define __eqv-table-update!
      (lambda (_%tab94154%_
               _%key94155%_
               _%eqv-table-update!94156%_
               _%default94157%_)
        (let ((_%table94160%_ (&raw-table-table _%tab94154%_))
              (_%seed94161%_ (&raw-table-seed _%tab94154%_)))
          (let* ((_%h94163%_ (fxxor (eqv-hash _%key94155%_) _%seed94161%_))
                 (_%size94166%_ (vector-length _%table94160%_))
                 (_%entries94169%_ (##fxquotient _%size94166%_ '2))
                 (_%start94172%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94163%_ _%entries94169%_)
                   '1)))
            (let _%loop94176%_ ((_%probe94179%_ _%start94172%_)
                                (_%i94181%_ '1)
                                (_%deleted94183%_ '#f))
              (let ((_%k94186%_ (vector-ref _%table94160%_ _%probe94179%_)))
                (if (eq? _%k94186%_ (macro-unused-obj))
                    (if _%deleted94183%_
                        (begin
                          (vector-set!
                           _%table94160%_
                           _%deleted94183%_
                           _%key94155%_)
                          (vector-set!
                           _%table94160%_
                           (##fx+ _%deleted94183%_ '1)
                           (_%eqv-table-update!94156%_ _%default94157%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94154%_
                              (##fx+ (&raw-table-count _%tab94154%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94160%_
                           _%probe94179%_
                           _%key94155%_)
                          (vector-set!
                           _%table94160%_
                           (##fx+ _%probe94179%_ '1)
                           (_%eqv-table-update!94156%_ _%default94157%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94154%_
                              (##fx- (&raw-table-free _%tab94154%_) '1))
                             (&raw-table-count-set!
                              _%tab94154%_
                              (##fx+ (&raw-table-count _%tab94154%_) '1))))))
                    (if (eq? _%k94186%_ (macro-deleted-obj))
                        (_%loop94176%_
                         (let ((_%next-probe94193%_
                                (fx+ _%start94172%_
                                     _%i94181%_
                                     (fx* _%i94181%_ _%i94181%_))))
                           (##fxmodulo _%next-probe94193%_ _%size94166%_))
                         (##fx+ _%i94181%_ '1)
                         (let ((_%$e94196%_ _%deleted94183%_))
                           (if _%$e94196%_ _%$e94196%_ _%probe94179%_)))
                        (if (eqv? _%key94155%_ _%k94186%_)
                            (let ()
                              (vector-set!
                               _%table94160%_
                               _%probe94179%_
                               _%key94155%_)
                              (vector-set!
                               _%table94160%_
                               (##fx+ _%probe94179%_ '1)
                               (_%eqv-table-update!94156%_
                                (vector-ref
                                 _%table94160%_
                                 (##fx+ _%probe94179%_ '1)))))
                            (_%loop94176%_
                             (let ((_%next-probe94201%_
                                    (fx+ _%start94172%_
                                         _%i94181%_
                                         (fx* _%i94181%_ _%i94181%_))))
                               (##fxmodulo _%next-probe94201%_ _%size94166%_))
                             (##fx+ _%i94181%_ '1)
                             _%deleted94183%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab94109%_ _%key94111%_)
        (let ((_%table94114%_ (&raw-table-table _%tab94109%_))
              (_%seed94116%_ (&raw-table-seed _%tab94109%_)))
          (let* ((_%h94119%_ (fxxor (eqv-hash _%key94111%_) _%seed94116%_))
                 (_%size94122%_ (vector-length _%table94114%_))
                 (_%entries94125%_ (##fxquotient _%size94122%_ '2))
                 (_%start94128%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94119%_ _%entries94125%_)
                   '1)))
            (let _%loop94132%_ ((_%probe94135%_ _%start94128%_)
                                (_%i94137%_ '1))
              (let ((_%k94140%_ (vector-ref _%table94114%_ _%probe94135%_)))
                (if (eq? _%k94140%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94140%_ (macro-deleted-obj))
                        (_%loop94132%_
                         (let ((_%next-probe94145%_
                                (fx+ _%start94128%_
                                     _%i94137%_
                                     (fx* _%i94137%_ _%i94137%_))))
                           (##fxmodulo _%next-probe94145%_ _%size94122%_))
                         (##fx+ _%i94137%_ '1))
                        (if (eqv? _%key94111%_ _%k94140%_)
                            (let ()
                              (vector-set!
                               _%table94114%_
                               _%probe94135%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94114%_
                               (##fx+ _%probe94135%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94109%_
                                  (##fx- (&raw-table-count _%tab94109%_)
                                         '1)))))
                            (_%loop94132%_
                             (let ((_%next-probe94151%_
                                    (fx+ _%start94128%_
                                         _%i94137%_
                                         (fx* _%i94137%_ _%i94137%_))))
                               (##fxmodulo _%next-probe94151%_ _%size94122%_))
                             (##fx+ _%i94137%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint94090%_ _%seed94092%_)
        (make-raw-table__%
         _%size-hint94090%_
         symbolic-hash
         eq?
         _%seed94092%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint94098%_ '#f) (_%seed94100%_ '0))
          (make-symbolic-table__% _%size-hint94098%_ _%seed94100%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint94102%_)
        (let ((_%seed94104%_ '0))
          (make-symbolic-table__% _%size-hint94102%_ _%seed94104%_))))
    (define make-symbolic-table
      (lambda _g94888_
        (let ((_g94887_ (##length _g94888_)))
          (cond ((##fx= _g94887_ 0) (apply make-symbolic-table__0 _g94888_))
                ((##fx= _g94887_ 1) (apply make-symbolic-table__1 _g94888_))
                ((##fx= _g94887_ 2) (apply make-symbolic-table__% _g94888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g94888_))))))
    (define symbolic-table-ref
      (lambda (_%tab94043%_ _%key94044%_ _%default94045%_)
        (let ((_%table94047%_ (&raw-table-table _%tab94043%_))
              (_%seed94048%_ (&raw-table-seed _%tab94043%_)))
          (let* ((_%h94050%_
                  (fxxor (symbolic-hash _%key94044%_) _%seed94048%_))
                 (_%size94053%_ (vector-length _%table94047%_))
                 (_%entries94056%_ (##fxquotient _%size94053%_ '2))
                 (_%start94059%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94050%_ _%entries94056%_)
                   '1)))
            (let _%loop94063%_ ((_%probe94066%_ _%start94059%_)
                                (_%i94068%_ '1)
                                (_%deleted94070%_ '#f))
              (let ((_%k94073%_ (vector-ref _%table94047%_ _%probe94066%_)))
                (if (eq? _%k94073%_ (macro-unused-obj))
                    _%default94045%_
                    (if (eq? _%k94073%_ (macro-deleted-obj))
                        (_%loop94063%_
                         (let ((_%next-probe94078%_
                                (fx+ _%start94059%_
                                     _%i94068%_
                                     (fx* _%i94068%_ _%i94068%_))))
                           (##fxmodulo _%next-probe94078%_ _%size94053%_))
                         (##fx+ _%i94068%_ '1)
                         (let ((_%$e94081%_ _%deleted94070%_))
                           (if _%$e94081%_ _%$e94081%_ _%probe94066%_)))
                        (if (eq? _%key94044%_ _%k94073%_)
                            (vector-ref
                             _%table94047%_
                             (##fx+ _%probe94066%_ '1))
                            (_%loop94063%_
                             (let ((_%next-probe94086%_
                                    (fx+ _%start94059%_
                                         _%i94068%_
                                         (fx* _%i94068%_ _%i94068%_))))
                               (##fxmodulo _%next-probe94086%_ _%size94053%_))
                             (##fx+ _%i94068%_ '1)
                             _%deleted94070%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab94039%_ _%key94040%_ _%value94041%_)
        (if (##fx< (&raw-table-free _%tab94039%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94039%_))
                    '4))
            (__raw-table-rehash! _%tab94039%_)
            '#!void)
        (__symbolic-table-set! _%tab94039%_ _%key94040%_ _%value94041%_)))
    (define __symbolic-table-set!
      (lambda (_%tab93990%_ _%key93991%_ _%value93992%_)
        (let ((_%table93995%_ (&raw-table-table _%tab93990%_))
              (_%seed93996%_ (&raw-table-seed _%tab93990%_)))
          (let* ((_%h93998%_
                  (fxxor (symbolic-hash _%key93991%_) _%seed93996%_))
                 (_%size94001%_ (vector-length _%table93995%_))
                 (_%entries94004%_ (##fxquotient _%size94001%_ '2))
                 (_%start94007%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93998%_ _%entries94004%_)
                   '1)))
            (let _%loop94011%_ ((_%probe94014%_ _%start94007%_)
                                (_%i94016%_ '1)
                                (_%deleted94018%_ '#f))
              (let ((_%k94021%_ (vector-ref _%table93995%_ _%probe94014%_)))
                (if (eq? _%k94021%_ (macro-unused-obj))
                    (if _%deleted94018%_
                        (begin
                          (vector-set!
                           _%table93995%_
                           _%deleted94018%_
                           _%key93991%_)
                          (vector-set!
                           _%table93995%_
                           (##fx+ _%deleted94018%_ '1)
                           _%value93992%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93990%_
                              (##fx+ (&raw-table-count _%tab93990%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93995%_
                           _%probe94014%_
                           _%key93991%_)
                          (vector-set!
                           _%table93995%_
                           (##fx+ _%probe94014%_ '1)
                           _%value93992%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93990%_
                              (##fx- (&raw-table-free _%tab93990%_) '1))
                             (&raw-table-count-set!
                              _%tab93990%_
                              (##fx+ (&raw-table-count _%tab93990%_) '1))))))
                    (if (eq? _%k94021%_ (macro-deleted-obj))
                        (_%loop94011%_
                         (let ((_%next-probe94028%_
                                (fx+ _%start94007%_
                                     _%i94016%_
                                     (fx* _%i94016%_ _%i94016%_))))
                           (##fxmodulo _%next-probe94028%_ _%size94001%_))
                         (##fx+ _%i94016%_ '1)
                         (let ((_%$e94031%_ _%deleted94018%_))
                           (if _%$e94031%_ _%$e94031%_ _%probe94014%_)))
                        (if (eq? _%key93991%_ _%k94021%_)
                            (let ()
                              (vector-set!
                               _%table93995%_
                               _%probe94014%_
                               _%key93991%_)
                              (vector-set!
                               _%table93995%_
                               (##fx+ _%probe94014%_ '1)
                               _%value93992%_))
                            (_%loop94011%_
                             (let ((_%next-probe94036%_
                                    (fx+ _%start94007%_
                                         _%i94016%_
                                         (fx* _%i94016%_ _%i94016%_))))
                               (##fxmodulo _%next-probe94036%_ _%size94001%_))
                             (##fx+ _%i94016%_ '1)
                             _%deleted94018%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab93985%_
               _%key93986%_
               _%symbolic-table-update!93987%_
               _%default93988%_)
        (if (##fx< (&raw-table-free _%tab93985%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93985%_))
                    '4))
            (__raw-table-rehash! _%tab93985%_)
            '#!void)
        (__symbolic-table-update!
         _%tab93985%_
         _%key93986%_
         _%symbolic-table-update!93987%_
         _%default93988%_)))
    (define __symbolic-table-update!
      (lambda (_%tab93935%_
               _%key93936%_
               _%symbolic-table-update!93937%_
               _%default93938%_)
        (let ((_%table93941%_ (&raw-table-table _%tab93935%_))
              (_%seed93942%_ (&raw-table-seed _%tab93935%_)))
          (let* ((_%h93944%_
                  (fxxor (symbolic-hash _%key93936%_) _%seed93942%_))
                 (_%size93947%_ (vector-length _%table93941%_))
                 (_%entries93950%_ (##fxquotient _%size93947%_ '2))
                 (_%start93953%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93944%_ _%entries93950%_)
                   '1)))
            (let _%loop93957%_ ((_%probe93960%_ _%start93953%_)
                                (_%i93962%_ '1)
                                (_%deleted93964%_ '#f))
              (let ((_%k93967%_ (vector-ref _%table93941%_ _%probe93960%_)))
                (if (eq? _%k93967%_ (macro-unused-obj))
                    (if _%deleted93964%_
                        (begin
                          (vector-set!
                           _%table93941%_
                           _%deleted93964%_
                           _%key93936%_)
                          (vector-set!
                           _%table93941%_
                           (##fx+ _%deleted93964%_ '1)
                           (_%symbolic-table-update!93937%_ _%default93938%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93935%_
                              (##fx+ (&raw-table-count _%tab93935%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93941%_
                           _%probe93960%_
                           _%key93936%_)
                          (vector-set!
                           _%table93941%_
                           (##fx+ _%probe93960%_ '1)
                           (_%symbolic-table-update!93937%_ _%default93938%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93935%_
                              (##fx- (&raw-table-free _%tab93935%_) '1))
                             (&raw-table-count-set!
                              _%tab93935%_
                              (##fx+ (&raw-table-count _%tab93935%_) '1))))))
                    (if (eq? _%k93967%_ (macro-deleted-obj))
                        (_%loop93957%_
                         (let ((_%next-probe93974%_
                                (fx+ _%start93953%_
                                     _%i93962%_
                                     (fx* _%i93962%_ _%i93962%_))))
                           (##fxmodulo _%next-probe93974%_ _%size93947%_))
                         (##fx+ _%i93962%_ '1)
                         (let ((_%$e93977%_ _%deleted93964%_))
                           (if _%$e93977%_ _%$e93977%_ _%probe93960%_)))
                        (if (eq? _%key93936%_ _%k93967%_)
                            (let ()
                              (vector-set!
                               _%table93941%_
                               _%probe93960%_
                               _%key93936%_)
                              (vector-set!
                               _%table93941%_
                               (##fx+ _%probe93960%_ '1)
                               (_%symbolic-table-update!93937%_
                                (vector-ref
                                 _%table93941%_
                                 (##fx+ _%probe93960%_ '1)))))
                            (_%loop93957%_
                             (let ((_%next-probe93982%_
                                    (fx+ _%start93953%_
                                         _%i93962%_
                                         (fx* _%i93962%_ _%i93962%_))))
                               (##fxmodulo _%next-probe93982%_ _%size93947%_))
                             (##fx+ _%i93962%_ '1)
                             _%deleted93964%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab93890%_ _%key93892%_)
        (let ((_%table93895%_ (&raw-table-table _%tab93890%_))
              (_%seed93897%_ (&raw-table-seed _%tab93890%_)))
          (let* ((_%h93900%_
                  (fxxor (symbolic-hash _%key93892%_) _%seed93897%_))
                 (_%size93903%_ (vector-length _%table93895%_))
                 (_%entries93906%_ (##fxquotient _%size93903%_ '2))
                 (_%start93909%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93900%_ _%entries93906%_)
                   '1)))
            (let _%loop93913%_ ((_%probe93916%_ _%start93909%_)
                                (_%i93918%_ '1))
              (let ((_%k93921%_ (vector-ref _%table93895%_ _%probe93916%_)))
                (if (eq? _%k93921%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93921%_ (macro-deleted-obj))
                        (_%loop93913%_
                         (let ((_%next-probe93926%_
                                (fx+ _%start93909%_
                                     _%i93918%_
                                     (fx* _%i93918%_ _%i93918%_))))
                           (##fxmodulo _%next-probe93926%_ _%size93903%_))
                         (##fx+ _%i93918%_ '1))
                        (if (eq? _%key93892%_ _%k93921%_)
                            (let ()
                              (vector-set!
                               _%table93895%_
                               _%probe93916%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93895%_
                               (##fx+ _%probe93916%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93890%_
                                  (##fx- (&raw-table-count _%tab93890%_)
                                         '1)))))
                            (_%loop93913%_
                             (let ((_%next-probe93932%_
                                    (fx+ _%start93909%_
                                         _%i93918%_
                                         (fx* _%i93918%_ _%i93918%_))))
                               (##fxmodulo _%next-probe93932%_ _%size93903%_))
                             (##fx+ _%i93918%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint93871%_ _%seed93873%_)
        (make-raw-table__%
         _%size-hint93871%_
         string-hash
         ##string=?
         _%seed93873%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint93879%_ '#f) (_%seed93881%_ '0))
          (make-string-table__% _%size-hint93879%_ _%seed93881%_))))
    (define make-string-table__1
      (lambda (_%size-hint93883%_)
        (let ((_%seed93885%_ '0))
          (make-string-table__% _%size-hint93883%_ _%seed93885%_))))
    (define make-string-table
      (lambda _g94890_
        (let ((_g94889_ (##length _g94890_)))
          (cond ((##fx= _g94889_ 0) (apply make-string-table__0 _g94890_))
                ((##fx= _g94889_ 1) (apply make-string-table__1 _g94890_))
                ((##fx= _g94889_ 2) (apply make-string-table__% _g94890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g94890_))))))
    (define string-table-ref
      (lambda (_%tab93824%_ _%key93825%_ _%default93826%_)
        (let ((_%table93828%_ (&raw-table-table _%tab93824%_))
              (_%seed93829%_ (&raw-table-seed _%tab93824%_)))
          (let* ((_%h93831%_
                  (fxxor (##string=?-hash _%key93825%_) _%seed93829%_))
                 (_%size93834%_ (vector-length _%table93828%_))
                 (_%entries93837%_ (##fxquotient _%size93834%_ '2))
                 (_%start93840%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93831%_ _%entries93837%_)
                   '1)))
            (let _%loop93844%_ ((_%probe93847%_ _%start93840%_)
                                (_%i93849%_ '1)
                                (_%deleted93851%_ '#f))
              (let ((_%k93854%_ (vector-ref _%table93828%_ _%probe93847%_)))
                (if (eq? _%k93854%_ (macro-unused-obj))
                    _%default93826%_
                    (if (eq? _%k93854%_ (macro-deleted-obj))
                        (_%loop93844%_
                         (let ((_%next-probe93859%_
                                (fx+ _%start93840%_
                                     _%i93849%_
                                     (fx* _%i93849%_ _%i93849%_))))
                           (##fxmodulo _%next-probe93859%_ _%size93834%_))
                         (##fx+ _%i93849%_ '1)
                         (let ((_%$e93862%_ _%deleted93851%_))
                           (if _%$e93862%_ _%$e93862%_ _%probe93847%_)))
                        (if (##string=? _%key93825%_ _%k93854%_)
                            (vector-ref
                             _%table93828%_
                             (##fx+ _%probe93847%_ '1))
                            (_%loop93844%_
                             (let ((_%next-probe93867%_
                                    (fx+ _%start93840%_
                                         _%i93849%_
                                         (fx* _%i93849%_ _%i93849%_))))
                               (##fxmodulo _%next-probe93867%_ _%size93834%_))
                             (##fx+ _%i93849%_ '1)
                             _%deleted93851%_))))))))))
    (define string-table-set!
      (lambda (_%tab93820%_ _%key93821%_ _%value93822%_)
        (if (##fx< (&raw-table-free _%tab93820%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93820%_))
                    '4))
            (__raw-table-rehash! _%tab93820%_)
            '#!void)
        (__string-table-set! _%tab93820%_ _%key93821%_ _%value93822%_)))
    (define __string-table-set!
      (lambda (_%tab93771%_ _%key93772%_ _%value93773%_)
        (let ((_%table93776%_ (&raw-table-table _%tab93771%_))
              (_%seed93777%_ (&raw-table-seed _%tab93771%_)))
          (let* ((_%h93779%_
                  (fxxor (##string=?-hash _%key93772%_) _%seed93777%_))
                 (_%size93782%_ (vector-length _%table93776%_))
                 (_%entries93785%_ (##fxquotient _%size93782%_ '2))
                 (_%start93788%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93779%_ _%entries93785%_)
                   '1)))
            (let _%loop93792%_ ((_%probe93795%_ _%start93788%_)
                                (_%i93797%_ '1)
                                (_%deleted93799%_ '#f))
              (let ((_%k93802%_ (vector-ref _%table93776%_ _%probe93795%_)))
                (if (eq? _%k93802%_ (macro-unused-obj))
                    (if _%deleted93799%_
                        (begin
                          (vector-set!
                           _%table93776%_
                           _%deleted93799%_
                           _%key93772%_)
                          (vector-set!
                           _%table93776%_
                           (##fx+ _%deleted93799%_ '1)
                           _%value93773%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93771%_
                              (##fx+ (&raw-table-count _%tab93771%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93776%_
                           _%probe93795%_
                           _%key93772%_)
                          (vector-set!
                           _%table93776%_
                           (##fx+ _%probe93795%_ '1)
                           _%value93773%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93771%_
                              (##fx- (&raw-table-free _%tab93771%_) '1))
                             (&raw-table-count-set!
                              _%tab93771%_
                              (##fx+ (&raw-table-count _%tab93771%_) '1))))))
                    (if (eq? _%k93802%_ (macro-deleted-obj))
                        (_%loop93792%_
                         (let ((_%next-probe93809%_
                                (fx+ _%start93788%_
                                     _%i93797%_
                                     (fx* _%i93797%_ _%i93797%_))))
                           (##fxmodulo _%next-probe93809%_ _%size93782%_))
                         (##fx+ _%i93797%_ '1)
                         (let ((_%$e93812%_ _%deleted93799%_))
                           (if _%$e93812%_ _%$e93812%_ _%probe93795%_)))
                        (if (##string=? _%key93772%_ _%k93802%_)
                            (let ()
                              (vector-set!
                               _%table93776%_
                               _%probe93795%_
                               _%key93772%_)
                              (vector-set!
                               _%table93776%_
                               (##fx+ _%probe93795%_ '1)
                               _%value93773%_))
                            (_%loop93792%_
                             (let ((_%next-probe93817%_
                                    (fx+ _%start93788%_
                                         _%i93797%_
                                         (fx* _%i93797%_ _%i93797%_))))
                               (##fxmodulo _%next-probe93817%_ _%size93782%_))
                             (##fx+ _%i93797%_ '1)
                             _%deleted93799%_))))))))))
    (define string-table-update!
      (lambda (_%tab93766%_
               _%key93767%_
               _%string-table-update!93768%_
               _%default93769%_)
        (if (##fx< (&raw-table-free _%tab93766%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93766%_))
                    '4))
            (__raw-table-rehash! _%tab93766%_)
            '#!void)
        (__string-table-update!
         _%tab93766%_
         _%key93767%_
         _%string-table-update!93768%_
         _%default93769%_)))
    (define __string-table-update!
      (lambda (_%tab93716%_
               _%key93717%_
               _%string-table-update!93718%_
               _%default93719%_)
        (let ((_%table93722%_ (&raw-table-table _%tab93716%_))
              (_%seed93723%_ (&raw-table-seed _%tab93716%_)))
          (let* ((_%h93725%_
                  (fxxor (##string=?-hash _%key93717%_) _%seed93723%_))
                 (_%size93728%_ (vector-length _%table93722%_))
                 (_%entries93731%_ (##fxquotient _%size93728%_ '2))
                 (_%start93734%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93725%_ _%entries93731%_)
                   '1)))
            (let _%loop93738%_ ((_%probe93741%_ _%start93734%_)
                                (_%i93743%_ '1)
                                (_%deleted93745%_ '#f))
              (let ((_%k93748%_ (vector-ref _%table93722%_ _%probe93741%_)))
                (if (eq? _%k93748%_ (macro-unused-obj))
                    (if _%deleted93745%_
                        (begin
                          (vector-set!
                           _%table93722%_
                           _%deleted93745%_
                           _%key93717%_)
                          (vector-set!
                           _%table93722%_
                           (##fx+ _%deleted93745%_ '1)
                           (_%string-table-update!93718%_ _%default93719%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93716%_
                              (##fx+ (&raw-table-count _%tab93716%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93722%_
                           _%probe93741%_
                           _%key93717%_)
                          (vector-set!
                           _%table93722%_
                           (##fx+ _%probe93741%_ '1)
                           (_%string-table-update!93718%_ _%default93719%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93716%_
                              (##fx- (&raw-table-free _%tab93716%_) '1))
                             (&raw-table-count-set!
                              _%tab93716%_
                              (##fx+ (&raw-table-count _%tab93716%_) '1))))))
                    (if (eq? _%k93748%_ (macro-deleted-obj))
                        (_%loop93738%_
                         (let ((_%next-probe93755%_
                                (fx+ _%start93734%_
                                     _%i93743%_
                                     (fx* _%i93743%_ _%i93743%_))))
                           (##fxmodulo _%next-probe93755%_ _%size93728%_))
                         (##fx+ _%i93743%_ '1)
                         (let ((_%$e93758%_ _%deleted93745%_))
                           (if _%$e93758%_ _%$e93758%_ _%probe93741%_)))
                        (if (##string=? _%key93717%_ _%k93748%_)
                            (let ()
                              (vector-set!
                               _%table93722%_
                               _%probe93741%_
                               _%key93717%_)
                              (vector-set!
                               _%table93722%_
                               (##fx+ _%probe93741%_ '1)
                               (_%string-table-update!93718%_
                                (vector-ref
                                 _%table93722%_
                                 (##fx+ _%probe93741%_ '1)))))
                            (_%loop93738%_
                             (let ((_%next-probe93763%_
                                    (fx+ _%start93734%_
                                         _%i93743%_
                                         (fx* _%i93743%_ _%i93743%_))))
                               (##fxmodulo _%next-probe93763%_ _%size93728%_))
                             (##fx+ _%i93743%_ '1)
                             _%deleted93745%_))))))))))
    (define string-table-delete!
      (lambda (_%tab93671%_ _%key93673%_)
        (let ((_%table93676%_ (&raw-table-table _%tab93671%_))
              (_%seed93678%_ (&raw-table-seed _%tab93671%_)))
          (let* ((_%h93681%_
                  (fxxor (##string=?-hash _%key93673%_) _%seed93678%_))
                 (_%size93684%_ (vector-length _%table93676%_))
                 (_%entries93687%_ (##fxquotient _%size93684%_ '2))
                 (_%start93690%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93681%_ _%entries93687%_)
                   '1)))
            (let _%loop93694%_ ((_%probe93697%_ _%start93690%_)
                                (_%i93699%_ '1))
              (let ((_%k93702%_ (vector-ref _%table93676%_ _%probe93697%_)))
                (if (eq? _%k93702%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93702%_ (macro-deleted-obj))
                        (_%loop93694%_
                         (let ((_%next-probe93707%_
                                (fx+ _%start93690%_
                                     _%i93699%_
                                     (fx* _%i93699%_ _%i93699%_))))
                           (##fxmodulo _%next-probe93707%_ _%size93684%_))
                         (##fx+ _%i93699%_ '1))
                        (if (##string=? _%key93673%_ _%k93702%_)
                            (let ()
                              (vector-set!
                               _%table93676%_
                               _%probe93697%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93676%_
                               (##fx+ _%probe93697%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93671%_
                                  (##fx- (&raw-table-count _%tab93671%_)
                                         '1)))))
                            (_%loop93694%_
                             (let ((_%next-probe93713%_
                                    (fx+ _%start93690%_
                                         _%i93699%_
                                         (fx* _%i93699%_ _%i93699%_))))
                               (##fxmodulo _%next-probe93713%_ _%size93684%_))
                             (##fx+ _%i93699%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint93652%_ _%seed93654%_)
        (make-raw-table__%
         _%size-hint93652%_
         immediate-hash
         eq?
         _%seed93654%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint93660%_ '#f) (_%seed93662%_ '0))
          (make-immediate-table__% _%size-hint93660%_ _%seed93662%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint93664%_)
        (let ((_%seed93666%_ '0))
          (make-immediate-table__% _%size-hint93664%_ _%seed93666%_))))
    (define make-immediate-table
      (lambda _g94892_
        (let ((_g94891_ (##length _g94892_)))
          (cond ((##fx= _g94891_ 0) (apply make-immediate-table__0 _g94892_))
                ((##fx= _g94891_ 1) (apply make-immediate-table__1 _g94892_))
                ((##fx= _g94891_ 2) (apply make-immediate-table__% _g94892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g94892_))))))
    (define immediate-table-ref
      (lambda (_%tab93605%_ _%key93606%_ _%default93607%_)
        (let ((_%table93609%_ (&raw-table-table _%tab93605%_))
              (_%seed93610%_ (&raw-table-seed _%tab93605%_)))
          (let* ((_%h93612%_
                  (fxxor (immediate-hash _%key93606%_) _%seed93610%_))
                 (_%size93615%_ (vector-length _%table93609%_))
                 (_%entries93618%_ (##fxquotient _%size93615%_ '2))
                 (_%start93621%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93612%_ _%entries93618%_)
                   '1)))
            (let _%loop93625%_ ((_%probe93628%_ _%start93621%_)
                                (_%i93630%_ '1)
                                (_%deleted93632%_ '#f))
              (let ((_%k93635%_ (vector-ref _%table93609%_ _%probe93628%_)))
                (if (eq? _%k93635%_ (macro-unused-obj))
                    _%default93607%_
                    (if (eq? _%k93635%_ (macro-deleted-obj))
                        (_%loop93625%_
                         (let ((_%next-probe93640%_
                                (fx+ _%start93621%_
                                     _%i93630%_
                                     (fx* _%i93630%_ _%i93630%_))))
                           (##fxmodulo _%next-probe93640%_ _%size93615%_))
                         (##fx+ _%i93630%_ '1)
                         (let ((_%$e93643%_ _%deleted93632%_))
                           (if _%$e93643%_ _%$e93643%_ _%probe93628%_)))
                        (if (eq? _%key93606%_ _%k93635%_)
                            (vector-ref
                             _%table93609%_
                             (##fx+ _%probe93628%_ '1))
                            (_%loop93625%_
                             (let ((_%next-probe93648%_
                                    (fx+ _%start93621%_
                                         _%i93630%_
                                         (fx* _%i93630%_ _%i93630%_))))
                               (##fxmodulo _%next-probe93648%_ _%size93615%_))
                             (##fx+ _%i93630%_ '1)
                             _%deleted93632%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab93601%_ _%key93602%_ _%value93603%_)
        (if (##fx< (&raw-table-free _%tab93601%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93601%_))
                    '4))
            (__raw-table-rehash! _%tab93601%_)
            '#!void)
        (__immediate-table-set! _%tab93601%_ _%key93602%_ _%value93603%_)))
    (define __immediate-table-set!
      (lambda (_%tab93552%_ _%key93553%_ _%value93554%_)
        (let ((_%table93557%_ (&raw-table-table _%tab93552%_))
              (_%seed93558%_ (&raw-table-seed _%tab93552%_)))
          (let* ((_%h93560%_
                  (fxxor (immediate-hash _%key93553%_) _%seed93558%_))
                 (_%size93563%_ (vector-length _%table93557%_))
                 (_%entries93566%_ (##fxquotient _%size93563%_ '2))
                 (_%start93569%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93560%_ _%entries93566%_)
                   '1)))
            (let _%loop93573%_ ((_%probe93576%_ _%start93569%_)
                                (_%i93578%_ '1)
                                (_%deleted93580%_ '#f))
              (let ((_%k93583%_ (vector-ref _%table93557%_ _%probe93576%_)))
                (if (eq? _%k93583%_ (macro-unused-obj))
                    (if _%deleted93580%_
                        (begin
                          (vector-set!
                           _%table93557%_
                           _%deleted93580%_
                           _%key93553%_)
                          (vector-set!
                           _%table93557%_
                           (##fx+ _%deleted93580%_ '1)
                           _%value93554%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93552%_
                              (##fx+ (&raw-table-count _%tab93552%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93557%_
                           _%probe93576%_
                           _%key93553%_)
                          (vector-set!
                           _%table93557%_
                           (##fx+ _%probe93576%_ '1)
                           _%value93554%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93552%_
                              (##fx- (&raw-table-free _%tab93552%_) '1))
                             (&raw-table-count-set!
                              _%tab93552%_
                              (##fx+ (&raw-table-count _%tab93552%_) '1))))))
                    (if (eq? _%k93583%_ (macro-deleted-obj))
                        (_%loop93573%_
                         (let ((_%next-probe93590%_
                                (fx+ _%start93569%_
                                     _%i93578%_
                                     (fx* _%i93578%_ _%i93578%_))))
                           (##fxmodulo _%next-probe93590%_ _%size93563%_))
                         (##fx+ _%i93578%_ '1)
                         (let ((_%$e93593%_ _%deleted93580%_))
                           (if _%$e93593%_ _%$e93593%_ _%probe93576%_)))
                        (if (eq? _%key93553%_ _%k93583%_)
                            (let ()
                              (vector-set!
                               _%table93557%_
                               _%probe93576%_
                               _%key93553%_)
                              (vector-set!
                               _%table93557%_
                               (##fx+ _%probe93576%_ '1)
                               _%value93554%_))
                            (_%loop93573%_
                             (let ((_%next-probe93598%_
                                    (fx+ _%start93569%_
                                         _%i93578%_
                                         (fx* _%i93578%_ _%i93578%_))))
                               (##fxmodulo _%next-probe93598%_ _%size93563%_))
                             (##fx+ _%i93578%_ '1)
                             _%deleted93580%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab93547%_
               _%key93548%_
               _%immediate-table-update!93549%_
               _%default93550%_)
        (if (##fx< (&raw-table-free _%tab93547%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93547%_))
                    '4))
            (__raw-table-rehash! _%tab93547%_)
            '#!void)
        (__immediate-table-update!
         _%tab93547%_
         _%key93548%_
         _%immediate-table-update!93549%_
         _%default93550%_)))
    (define __immediate-table-update!
      (lambda (_%tab93497%_
               _%key93498%_
               _%immediate-table-update!93499%_
               _%default93500%_)
        (let ((_%table93503%_ (&raw-table-table _%tab93497%_))
              (_%seed93504%_ (&raw-table-seed _%tab93497%_)))
          (let* ((_%h93506%_
                  (fxxor (immediate-hash _%key93498%_) _%seed93504%_))
                 (_%size93509%_ (vector-length _%table93503%_))
                 (_%entries93512%_ (##fxquotient _%size93509%_ '2))
                 (_%start93515%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93506%_ _%entries93512%_)
                   '1)))
            (let _%loop93519%_ ((_%probe93522%_ _%start93515%_)
                                (_%i93524%_ '1)
                                (_%deleted93526%_ '#f))
              (let ((_%k93529%_ (vector-ref _%table93503%_ _%probe93522%_)))
                (if (eq? _%k93529%_ (macro-unused-obj))
                    (if _%deleted93526%_
                        (begin
                          (vector-set!
                           _%table93503%_
                           _%deleted93526%_
                           _%key93498%_)
                          (vector-set!
                           _%table93503%_
                           (##fx+ _%deleted93526%_ '1)
                           (_%immediate-table-update!93499%_ _%default93500%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93497%_
                              (##fx+ (&raw-table-count _%tab93497%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93503%_
                           _%probe93522%_
                           _%key93498%_)
                          (vector-set!
                           _%table93503%_
                           (##fx+ _%probe93522%_ '1)
                           (_%immediate-table-update!93499%_ _%default93500%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93497%_
                              (##fx- (&raw-table-free _%tab93497%_) '1))
                             (&raw-table-count-set!
                              _%tab93497%_
                              (##fx+ (&raw-table-count _%tab93497%_) '1))))))
                    (if (eq? _%k93529%_ (macro-deleted-obj))
                        (_%loop93519%_
                         (let ((_%next-probe93536%_
                                (fx+ _%start93515%_
                                     _%i93524%_
                                     (fx* _%i93524%_ _%i93524%_))))
                           (##fxmodulo _%next-probe93536%_ _%size93509%_))
                         (##fx+ _%i93524%_ '1)
                         (let ((_%$e93539%_ _%deleted93526%_))
                           (if _%$e93539%_ _%$e93539%_ _%probe93522%_)))
                        (if (eq? _%key93498%_ _%k93529%_)
                            (let ()
                              (vector-set!
                               _%table93503%_
                               _%probe93522%_
                               _%key93498%_)
                              (vector-set!
                               _%table93503%_
                               (##fx+ _%probe93522%_ '1)
                               (_%immediate-table-update!93499%_
                                (vector-ref
                                 _%table93503%_
                                 (##fx+ _%probe93522%_ '1)))))
                            (_%loop93519%_
                             (let ((_%next-probe93544%_
                                    (fx+ _%start93515%_
                                         _%i93524%_
                                         (fx* _%i93524%_ _%i93524%_))))
                               (##fxmodulo _%next-probe93544%_ _%size93509%_))
                             (##fx+ _%i93524%_ '1)
                             _%deleted93526%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab93452%_ _%key93454%_)
        (let ((_%table93457%_ (&raw-table-table _%tab93452%_))
              (_%seed93459%_ (&raw-table-seed _%tab93452%_)))
          (let* ((_%h93462%_
                  (fxxor (immediate-hash _%key93454%_) _%seed93459%_))
                 (_%size93465%_ (vector-length _%table93457%_))
                 (_%entries93468%_ (##fxquotient _%size93465%_ '2))
                 (_%start93471%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93462%_ _%entries93468%_)
                   '1)))
            (let _%loop93475%_ ((_%probe93478%_ _%start93471%_)
                                (_%i93480%_ '1))
              (let ((_%k93483%_ (vector-ref _%table93457%_ _%probe93478%_)))
                (if (eq? _%k93483%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93483%_ (macro-deleted-obj))
                        (_%loop93475%_
                         (let ((_%next-probe93488%_
                                (fx+ _%start93471%_
                                     _%i93480%_
                                     (fx* _%i93480%_ _%i93480%_))))
                           (##fxmodulo _%next-probe93488%_ _%size93465%_))
                         (##fx+ _%i93480%_ '1))
                        (if (eq? _%key93454%_ _%k93483%_)
                            (let ()
                              (vector-set!
                               _%table93457%_
                               _%probe93478%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93457%_
                               (##fx+ _%probe93478%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93452%_
                                  (##fx- (&raw-table-count _%tab93452%_)
                                         '1)))))
                            (_%loop93475%_
                             (let ((_%next-probe93494%_
                                    (fx+ _%start93471%_
                                         _%i93480%_
                                         (fx* _%i93480%_ _%i93480%_))))
                               (##fxmodulo _%next-probe93494%_ _%size93465%_))
                             (##fx+ _%i93480%_ '1)))))))))))
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
      (lambda (_%tab93450%_)
        (##unchecked-structure-ref
         _%tab93450%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab93448%_)
        (##unchecked-structure-ref
         _%tab93448%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab93445%_ _%val93446%_)
        (##unchecked-structure-set!
         _%tab93445%_
         _%val93446%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab93442%_ _%val93443%_)
        (##unchecked-structure-set!
         _%tab93442%_
         _%val93443%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint93418%_ _%klass93419%_ _%flags93420%_)
        (let ((_%gcht93422%_
               (__gc-table-new
                (if (fixnum? _%size-hint93418%_) _%size-hint93418%_ '16)
                _%flags93420%_)))
          (##structure _%klass93419%_ _%gcht93422%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint93427%_)
        (let* ((_%klass93429%_ __gc-table::t) (_%flags93431%_ '0))
          (make-gc-table__%
           _%size-hint93427%_
           _%klass93429%_
           _%flags93431%_))))
    (define make-gc-table__1
      (lambda (_%size-hint93433%_ _%klass93434%_)
        (let ((_%flags93436%_ '0))
          (make-gc-table__%
           _%size-hint93433%_
           _%klass93434%_
           _%flags93436%_))))
    (define make-gc-table
      (lambda _g94894_
        (let ((_g94893_ (##length _g94894_)))
          (cond ((##fx= _g94893_ 1) (apply make-gc-table__0 _g94894_))
                ((##fx= _g94893_ 2) (apply make-gc-table__1 _g94894_))
                ((##fx= _g94893_ 3) (apply make-gc-table__% _g94894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g94894_))))))
    (define __gc-table-immediate
      (lambda (_%tab93409%_)
        (let ((_%$e93411%_ (&gc-table-immediate _%tab93409%_)))
          (if _%$e93411%_
              _%$e93411%_
              (let ((_%immediate93415%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab93409%_ _%immediate93415%_)
                _%immediate93415%_)))))
    (define __gc-table-new
      (lambda (_%size93399%_ _%flags93400%_)
        (let* ((_%flags93402%_
                (##fxand _%flags93400%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags93404%_
                (fxior _%flags93402%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht93406%_
                (##gc-hash-table-allocate
                 _%size93399%_
                 _%flags93404%_
                 __gc-table-loads)))
          _%gcht93406%_)))
    (define __gc-table-e
      (lambda (_%tab93394%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht93397%_ (&gc-table-gcht _%tab93394%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht93397%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht93397%_
              (begin
                (__gc-table-rehash! _%tab93394%_)
                (&gc-table-gcht _%tab93394%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab93385%_)
        (let* ((_%old-table93387%_ (&gc-table-gcht _%tab93385%_))
               (_%new-table93389%_
                (##gc-hash-table-resize! _%old-table93387%_ __gc-table-loads))
               (_%gcht93391%_
                (##gc-hash-table-rehash!
                 _%old-table93387%_
                 _%new-table93389%_)))
          (&gc-table-gcht-set! _%tab93385%_ _%gcht93391%_))))
    (define gc-table-ref
      (lambda (_%tab93369%_ _%key93370%_ _%default93371%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93370%_)
            (let* ((_%gcht93375%_ (__gc-table-e _%tab93369%_))
                   (_%value93377%_
                    (##gc-hash-table-ref _%gcht93375%_ _%key93370%_)))
              (if (eq? _%value93377%_ (macro-unused-obj))
                  _%default93371%_
                  _%value93377%_))
            (let ((_%$e93379%_ (&gc-table-immediate _%tab93369%_)))
              (if _%$e93379%_
                  ((lambda (_%immediate93382%_)
                     (immediate-table-ref
                      _%immediate93382%_
                      _%key93370%_
                      _%default93371%_))
                   _%$e93379%_)
                  _%default93371%_)))))
    (define gc-table-set!
      (lambda (_%tab93362%_ _%key93363%_ _%value93364%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93363%_)
            (let ((_%gcht93367%_ (__gc-table-e _%tab93362%_)))
              (if (##gc-hash-table-set!
                   _%gcht93367%_
                   _%key93363%_
                   _%value93364%_)
                  (begin
                    (__gc-table-rehash! _%tab93362%_)
                    (gc-table-set! _%tab93362%_ _%key93363%_ _%value93364%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab93362%_)
             _%key93363%_
             _%value93364%_))))
    (define gc-table-update!
      (lambda (_%tab93355%_ _%key93356%_ _%update93357%_ _%default93358%_)
        (if (##mem-allocated? _%key93356%_)
            (let ((_%value93360%_
                   (gc-table-ref _%tab93355%_ _%key93356%_ _%default93358%_)))
              (gc-table-set!
               _%tab93355%_
               _%key93356%_
               (_%update93357%_ _%value93360%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab93355%_)
             _%key93356%_
             _%update93357%_
             _%default93358%_))))
    (define gc-table-delete!
      (lambda (_%tab93343%_ _%key93344%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93344%_)
            (let ((_%gcht93348%_ (__gc-table-e _%tab93343%_)))
              (if (##gc-hash-table-set!
                   _%gcht93348%_
                   _%key93344%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab93343%_)
                    (gc-table-delete! _%tab93343%_ _%key93344%_))
                  '#!void))
            (let ((_%$e93350%_ (&gc-table-immediate _%tab93343%_)))
              (if _%$e93350%_
                  ((lambda (_%immediate93353%_)
                     (immediate-table-delete! _%immediate93353%_ _%key93344%_))
                   _%$e93350%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab93324%_ _%proc93325%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht93328%_ (__gc-table-e _%tab93324%_)))
            (let _%loop93330%_ ((_%i93332%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i93332%_ (##vector-length _%gcht93328%_))
                  (let ((_%key93334%_ (##vector-ref _%gcht93328%_ _%i93332%_)))
                    (if (if (eq? _%key93334%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key93334%_ (macro-deleted-obj))))
                        (_%proc93325%_
                         _%key93334%_
                         (##vector-ref _%gcht93328%_ (##fx+ _%i93332%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop93330%_ (##fx+ _%i93332%_ '2))))
                  '#!void)))
          (let ((_%$e93338%_ (&gc-table-immediate _%tab93324%_)))
            (if _%$e93338%_
                ((lambda (_%immediate93341%_)
                   (raw-table-for-each _%immediate93341%_ _%proc93325%_))
                 _%$e93338%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab93312%_)
        (let* ((_%gcht93314%_ (__gc-table-e _%tab93312%_))
               (_%new-table93316%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht93314%_)
                 (macro-gc-hash-table-flags _%gcht93314%_)))
               (_%result93318%_
                (##structure
                 (##structure-type _%tab93312%_)
                 _%new-table93316%_
                 '#f)))
          (gc-table-for-each
           _%tab93312%_
           (lambda (_%k93321%_ _%v93322%_)
             (gc-table-set! _%result93318%_ _%k93321%_ _%v93322%_)))
          _%result93318%_)))
    (define gc-table-clear!
      (lambda (_%tab93305%_)
        (let* ((_%gcht93307%_ (__gc-table-e _%tab93305%_))
               (_%new-table93309%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht93307%_))))
          (&gc-table-gcht-set! _%tab93305%_ _%new-table93309%_)
          (&gc-table-immediate-set! _%tab93305%_ '#f))))
    (define gc-table-length
      (lambda (_%tab93297%_)
        (let ((_%gcht93299%_ (__gc-table-e _%tab93297%_)))
          (fx+ (macro-gc-hash-table-count _%gcht93299%_)
               (let ((_%$e93301%_ (&gc-table-immediate _%tab93297%_)))
                 (if _%$e93301%_ (&raw-table-count _%$e93301%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj93282%_)
        (declare (not interrupts-enabled))
        (let ((_%val93285%_ (gc-table-ref __object-eq-hash _%obj93282%_ '#f)))
          (if _%val93285%_
              _%val93285%_
              (let* ((_%mix93287%_ __object-eq-hash-next)
                     (_%ptr93289%_ (##type-cast _%obj93282%_ '0))
                     (_%h93291%_
                      (fxand (fxxor _%mix93287%_ _%ptr93289%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e93294%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e93294%_ _%$e93294%_ '0)))
                (gc-table-set! __object-eq-hash _%obj93282%_ _%h93291%_)
                _%h93291%_)))))))
