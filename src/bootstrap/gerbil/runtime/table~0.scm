(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1734357959)
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
      (lambda (_%tab94979%_)
        (##unchecked-structure-ref
         _%tab94979%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab94977%_)
        (##unchecked-structure-ref
         _%tab94977%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab94975%_)
        (##unchecked-structure-ref
         _%tab94975%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab94973%_)
        (##unchecked-structure-ref
         _%tab94973%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab94971%_)
        (##unchecked-structure-ref
         _%tab94971%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab94969%_)
        (##unchecked-structure-ref
         _%tab94969%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab94966%_ _%val94967%_)
        (##unchecked-structure-set!
         _%tab94966%_
         _%val94967%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab94963%_ _%val94964%_)
        (##unchecked-structure-set!
         _%tab94963%_
         _%val94964%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab94960%_ _%val94961%_)
        (##unchecked-structure-set!
         _%tab94960%_
         _%val94961%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab94957%_ _%val94958%_)
        (##unchecked-structure-set!
         _%tab94957%_
         _%val94958%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab94954%_ _%val94955%_)
        (##unchecked-structure-set!
         _%tab94954%_
         _%val94955%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab94951%_ _%val94952%_)
        (##unchecked-structure-set!
         _%tab94951%_
         _%val94952%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint94949%_)
        (if (and (fixnum? _%size-hint94949%_) (##fx> _%size-hint94949%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint94949%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint94925%_ _%hash94926%_ _%test94927%_ _%seed94928%_)
        (let* ((_%size94930%_ (raw-table-size-hint->size _%size-hint94925%_))
               (_%table94932%_
                (##make-vector _%size94930%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table94932%_
           '0
           (##fxquotient _%size94930%_ '2)
           _%hash94926%_
           _%test94927%_
           _%seed94928%_))))
    (define make-raw-table__0
      (lambda (_%size-hint94938%_ _%hash94939%_ _%test94940%_)
        (let ((_%seed94942%_ '0))
          (make-raw-table__%
           _%size-hint94938%_
           _%hash94939%_
           _%test94940%_
           _%seed94942%_))))
    (define make-raw-table
      (lambda _g94981_
        (let ((_g94980_ (##length _g94981_)))
          (cond ((##fx= _g94980_ 3) (apply make-raw-table__0 _g94981_))
                ((##fx= _g94980_ 4) (apply make-raw-table__% _g94981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g94981_))))))
    (define raw-table-ref
      (lambda (_%tab94876%_ _%key94877%_ _%default94878%_)
        (let ((_%table94880%_ (&raw-table-table _%tab94876%_))
              (_%seed94881%_ (&raw-table-seed _%tab94876%_))
              (_%hash94882%_ (&raw-table-hash _%tab94876%_))
              (_%test94883%_ (&raw-table-test _%tab94876%_)))
          (let* ((_%h94885%_
                  (fxxor (_%hash94882%_ _%key94877%_) _%seed94881%_))
                 (_%size94888%_ (vector-length _%table94880%_))
                 (_%entries94891%_ (##fxquotient _%size94888%_ '2))
                 (_%start94894%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94885%_ _%entries94891%_)
                   '1)))
            (let _%loop94898%_ ((_%probe94901%_ _%start94894%_)
                                (_%i94903%_ '1)
                                (_%deleted94905%_ '#f))
              (let ((_%k94908%_ (vector-ref _%table94880%_ _%probe94901%_)))
                (if (eq? _%k94908%_ (macro-unused-obj))
                    _%default94878%_
                    (if (eq? _%k94908%_ (macro-deleted-obj))
                        (_%loop94898%_
                         (let ((_%next-probe94913%_
                                (fx+ _%start94894%_
                                     _%i94903%_
                                     (fx* _%i94903%_ _%i94903%_))))
                           (##fxmodulo _%next-probe94913%_ _%size94888%_))
                         (##fx+ _%i94903%_ '1)
                         (let ((_%$e94916%_ _%deleted94905%_))
                           (if _%$e94916%_ _%$e94916%_ _%probe94901%_)))
                        (if (_%test94883%_ _%key94877%_ _%k94908%_)
                            (vector-ref
                             _%table94880%_
                             (##fx+ _%probe94901%_ '1))
                            (_%loop94898%_
                             (let ((_%next-probe94921%_
                                    (fx+ _%start94894%_
                                         _%i94903%_
                                         (fx* _%i94903%_ _%i94903%_))))
                               (##fxmodulo _%next-probe94921%_ _%size94888%_))
                             (##fx+ _%i94903%_ '1)
                             _%deleted94905%_))))))))))
    (define raw-table-set!
      (lambda (_%tab94872%_ _%key94873%_ _%value94874%_)
        (if (##fx< (&raw-table-free _%tab94872%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94872%_))
                    '4))
            (__raw-table-rehash! _%tab94872%_)
            '#!void)
        (__raw-table-set! _%tab94872%_ _%key94873%_ _%value94874%_)))
    (define raw-table-update!
      (lambda (_%tab94867%_ _%key94868%_ _%update94869%_ _%default94870%_)
        (if (##fx< (&raw-table-free _%tab94867%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94867%_))
                    '4))
            (__raw-table-rehash! _%tab94867%_)
            '#!void)
        (__raw-table-update!
         _%tab94867%_
         _%key94868%_
         _%update94869%_
         _%default94870%_)))
    (define raw-table-delete!
      (lambda (_%tab94824%_ _%key94825%_)
        (let ((_%table94827%_ (&raw-table-table _%tab94824%_))
              (_%seed94828%_ (&raw-table-seed _%tab94824%_))
              (_%hash94829%_ (&raw-table-hash _%tab94824%_))
              (_%test94830%_ (&raw-table-test _%tab94824%_)))
          (let* ((_%h94832%_
                  (fxxor (_%hash94829%_ _%key94825%_) _%seed94828%_))
                 (_%size94835%_ (vector-length _%table94827%_))
                 (_%entries94838%_ (##fxquotient _%size94835%_ '2))
                 (_%start94841%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94832%_ _%entries94838%_)
                   '1)))
            (let _%loop94845%_ ((_%probe94848%_ _%start94841%_)
                                (_%i94850%_ '1))
              (let ((_%k94853%_ (vector-ref _%table94827%_ _%probe94848%_)))
                (if (eq? _%k94853%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94853%_ (macro-deleted-obj))
                        (_%loop94845%_
                         (let ((_%next-probe94858%_
                                (fx+ _%start94841%_
                                     _%i94850%_
                                     (fx* _%i94850%_ _%i94850%_))))
                           (##fxmodulo _%next-probe94858%_ _%size94835%_))
                         (##fx+ _%i94850%_ '1))
                        (if (_%test94830%_ _%key94825%_ _%k94853%_)
                            (let ()
                              (vector-set!
                               _%table94827%_
                               _%probe94848%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94827%_
                               (##fx+ _%probe94848%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94824%_
                                  (##fx- (&raw-table-count _%tab94824%_)
                                         '1)))))
                            (_%loop94845%_
                             (let ((_%next-probe94864%_
                                    (fx+ _%start94841%_
                                         _%i94850%_
                                         (fx* _%i94850%_ _%i94850%_))))
                               (##fxmodulo _%next-probe94864%_ _%size94835%_))
                             (##fx+ _%i94850%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab94808%_ _%proc94809%_)
        (let* ((_%table94811%_ (&raw-table-table _%tab94808%_))
               (_%size94813%_ (vector-length _%table94811%_)))
          (let _%loop94816%_ ((_%i94818%_ '0))
            (if (##fx< _%i94818%_ _%size94813%_)
                (begin
                  (let ((_%key94820%_ (vector-ref _%table94811%_ _%i94818%_)))
                    (if (if (eq? _%key94820%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94820%_ (macro-deleted-obj))))
                        (let ((_%value94822%_
                               (vector-ref
                                _%table94811%_
                                (##fx+ _%i94818%_ '1))))
                          (_%proc94809%_ _%key94820%_ _%value94822%_))
                        '#!void))
                  (_%loop94816%_ (##fx+ _%i94818%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab94804%_)
        (let ((_%new-tab94806%_ (##structure-copy _%tab94804%_)))
          (&raw-table-table-set!
           _%new-tab94806%_
           (vector-copy (&raw-table-table _%tab94804%_)))
          _%new-tab94806%_)))
    (define raw-table-clear!
      (lambda (_%tab94802%_)
        (vector-fill! (&raw-table-table _%tab94802%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab94802%_ '0)
        (&raw-table-free-set!
         _%tab94802%_
         (##fxquotient (vector-length (&raw-table-table _%tab94802%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab94752%_ _%key94753%_ _%value94754%_)
        (let ((_%table94756%_ (&raw-table-table _%tab94752%_))
              (_%seed94757%_ (&raw-table-seed _%tab94752%_))
              (_%hash94758%_ (&raw-table-hash _%tab94752%_))
              (_%test94759%_ (&raw-table-test _%tab94752%_)))
          (let* ((_%h94761%_
                  (fxxor (_%hash94758%_ _%key94753%_) _%seed94757%_))
                 (_%size94764%_ (vector-length _%table94756%_))
                 (_%entries94767%_ (##fxquotient _%size94764%_ '2))
                 (_%start94770%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94761%_ _%entries94767%_)
                   '1)))
            (let _%loop94774%_ ((_%probe94777%_ _%start94770%_)
                                (_%i94779%_ '1)
                                (_%deleted94781%_ '#f))
              (let ((_%k94784%_ (vector-ref _%table94756%_ _%probe94777%_)))
                (if (eq? _%k94784%_ (macro-unused-obj))
                    (if _%deleted94781%_
                        (begin
                          (vector-set!
                           _%table94756%_
                           _%deleted94781%_
                           _%key94753%_)
                          (vector-set!
                           _%table94756%_
                           (##fx+ _%deleted94781%_ '1)
                           _%value94754%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94752%_
                              (##fx+ (&raw-table-count _%tab94752%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94756%_
                           _%probe94777%_
                           _%key94753%_)
                          (vector-set!
                           _%table94756%_
                           (##fx+ _%probe94777%_ '1)
                           _%value94754%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94752%_
                              (##fx- (&raw-table-free _%tab94752%_) '1))
                             (&raw-table-count-set!
                              _%tab94752%_
                              (##fx+ (&raw-table-count _%tab94752%_) '1))))))
                    (if (eq? _%k94784%_ (macro-deleted-obj))
                        (_%loop94774%_
                         (let ((_%next-probe94791%_
                                (fx+ _%start94770%_
                                     _%i94779%_
                                     (fx* _%i94779%_ _%i94779%_))))
                           (##fxmodulo _%next-probe94791%_ _%size94764%_))
                         (##fx+ _%i94779%_ '1)
                         (let ((_%$e94794%_ _%deleted94781%_))
                           (if _%$e94794%_ _%$e94794%_ _%probe94777%_)))
                        (if (_%test94759%_ _%key94753%_ _%k94784%_)
                            (let ()
                              (vector-set!
                               _%table94756%_
                               _%probe94777%_
                               _%key94753%_)
                              (vector-set!
                               _%table94756%_
                               (##fx+ _%probe94777%_ '1)
                               _%value94754%_))
                            (_%loop94774%_
                             (let ((_%next-probe94799%_
                                    (fx+ _%start94770%_
                                         _%i94779%_
                                         (fx* _%i94779%_ _%i94779%_))))
                               (##fxmodulo _%next-probe94799%_ _%size94764%_))
                             (##fx+ _%i94779%_ '1)
                             _%deleted94781%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab94701%_ _%key94702%_ _%update94703%_ _%default94704%_)
        (let ((_%table94706%_ (&raw-table-table _%tab94701%_))
              (_%seed94707%_ (&raw-table-seed _%tab94701%_))
              (_%hash94708%_ (&raw-table-hash _%tab94701%_))
              (_%test94709%_ (&raw-table-test _%tab94701%_)))
          (let* ((_%h94711%_
                  (fxxor (_%hash94708%_ _%key94702%_) _%seed94707%_))
                 (_%size94714%_ (vector-length _%table94706%_))
                 (_%entries94717%_ (##fxquotient _%size94714%_ '2))
                 (_%start94720%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94711%_ _%entries94717%_)
                   '1)))
            (let _%loop94724%_ ((_%probe94727%_ _%start94720%_)
                                (_%i94729%_ '1)
                                (_%deleted94731%_ '#f))
              (let ((_%k94734%_ (vector-ref _%table94706%_ _%probe94727%_)))
                (if (eq? _%k94734%_ (macro-unused-obj))
                    (if _%deleted94731%_
                        (begin
                          (vector-set!
                           _%table94706%_
                           _%deleted94731%_
                           _%key94702%_)
                          (vector-set!
                           _%table94706%_
                           (##fx+ _%deleted94731%_ '1)
                           (_%update94703%_ _%default94704%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94701%_
                              (##fx+ (&raw-table-count _%tab94701%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94706%_
                           _%probe94727%_
                           _%key94702%_)
                          (vector-set!
                           _%table94706%_
                           (##fx+ _%probe94727%_ '1)
                           (_%update94703%_ _%default94704%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94701%_
                              (##fx- (&raw-table-free _%tab94701%_) '1))
                             (&raw-table-count-set!
                              _%tab94701%_
                              (##fx+ (&raw-table-count _%tab94701%_) '1))))))
                    (if (eq? _%k94734%_ (macro-deleted-obj))
                        (_%loop94724%_
                         (let ((_%next-probe94741%_
                                (fx+ _%start94720%_
                                     _%i94729%_
                                     (fx* _%i94729%_ _%i94729%_))))
                           (##fxmodulo _%next-probe94741%_ _%size94714%_))
                         (##fx+ _%i94729%_ '1)
                         (let ((_%$e94744%_ _%deleted94731%_))
                           (if _%$e94744%_ _%$e94744%_ _%probe94727%_)))
                        (if (_%test94709%_ _%key94702%_ _%k94734%_)
                            (let ()
                              (vector-set!
                               _%table94706%_
                               _%probe94727%_
                               _%key94702%_)
                              (vector-set!
                               _%table94706%_
                               (##fx+ _%probe94727%_ '1)
                               (_%update94703%_
                                (vector-ref
                                 _%table94706%_
                                 (##fx+ _%probe94727%_ '1)))))
                            (_%loop94724%_
                             (let ((_%next-probe94749%_
                                    (fx+ _%start94720%_
                                         _%i94729%_
                                         (fx* _%i94729%_ _%i94729%_))))
                               (##fxmodulo _%next-probe94749%_ _%size94714%_))
                             (##fx+ _%i94729%_ '1)
                             _%deleted94731%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab94682%_)
        (let* ((_%old-table94684%_ (&raw-table-table _%tab94682%_))
               (_%old-size94686%_ (vector-length _%old-table94684%_))
               (_%new-size94688%_
                (if (##fx< (&raw-table-count _%tab94682%_)
                           (##fxquotient _%old-size94686%_ '4))
                    (vector-length _%old-table94684%_)
                    (##fx* '2 (vector-length _%old-table94684%_))))
               (_%new-table94690%_
                (##make-vector _%new-size94688%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab94682%_ _%new-table94690%_)
          (&raw-table-count-set! _%tab94682%_ '0)
          (&raw-table-free-set!
           _%tab94682%_
           (##fxquotient _%new-size94688%_ '2))
          (let _%lp94693%_ ((_%i94695%_ '0))
            (if (##fx< _%i94695%_ _%old-size94686%_)
                (begin
                  (let ((_%key94697%_
                         (vector-ref _%old-table94684%_ _%i94695%_)))
                    (if (if (eq? _%key94697%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key94697%_ (macro-deleted-obj))))
                        (let ((_%value94699%_
                               (vector-ref
                                _%old-table94684%_
                                (##fx+ _%i94695%_ '1))))
                          (__raw-table-set!
                           _%tab94682%_
                           _%key94697%_
                           _%value94699%_))
                        '#!void))
                  (_%lp94693%_ (##fx+ _%i94695%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj94674%_)
        (let ((_%t94676%_ (##type _%obj94674%_)))
          (if (##fx= (##fxand _%t94676%_ '1) '0)
              (fxand (##type-cast _%obj94674%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj94674%_)
                  (symbolic-hash _%obj94674%_)
                  (if (procedure? _%obj94674%_)
                      (procedure-hash _%obj94674%_)
                      (fxand (__eq-hash _%obj94674%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj94670%_)
        (let ((_%h94672%_
               (if (##closure? _%obj94670%_)
                   (__eq-hash _%obj94670%_)
                   (##type-cast _%obj94670%_ '0))))
          (fxand _%h94672%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj94667%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj94667%_)))
    (define eqv-hash
      (lambda (_%obj94657%_)
        (letrec ((_%combine94659%_
                  (lambda (_%a94664%_ _%b94665%_)
                    (fxand (##fx* (##fx+ _%a94664%_
                                         (fxarithmetic-shift-left
                                          _%b94665%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash94660%_
                  (lambda (_%obj94662%_)
                    (macro-number-dispatch
                     _%obj94662%_
                     (eq-hash _%obj94662%_)
                     (fxand _%obj94662%_ (macro-max-fixnum32))
                     (modulo _%obj94662%_ '331804481)
                     (_%combine94659%_
                      (_%hash94660%_ (macro-ratnum-numerator _%obj94662%_))
                      (_%hash94660%_ (macro-ratnum-denominator _%obj94662%_)))
                     (_%combine94659%_
                      (##u16vector-ref _%obj94662%_ '0)
                      (_%combine94659%_
                       (##u16vector-ref _%obj94662%_ '1)
                       (_%combine94659%_
                        (##u16vector-ref _%obj94662%_ '2)
                        (##u16vector-ref _%obj94662%_ '3))))
                     (_%combine94659%_
                      (_%hash94660%_ (macro-cpxnum-real _%obj94662%_))
                      (_%hash94660%_ (macro-cpxnum-imag _%obj94662%_)))))))
          (_%hash94660%_ _%obj94657%_))))
    (define symbolic?
      (lambda (_%obj94652%_)
        (let ((_%$e94654%_ (symbol? _%obj94652%_)))
          (if _%$e94654%_ _%$e94654%_ (keyword? _%obj94652%_)))))
    (define symbolic-hash (lambda (_%obj94650%_) (macro-slot '1 _%obj94650%_)))
    (define string-hash (lambda (_%obj94648%_) (##string=?-hash _%obj94648%_)))
    (define immediate-hash
      (lambda (_%obj94646%_) (##type-cast _%obj94646%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint94627%_ _%seed94629%_)
        (make-raw-table__% _%size-hint94627%_ eq-hash eq? _%seed94629%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint94635%_ '#f) (_%seed94637%_ '0))
          (make-eq-table__% _%size-hint94635%_ _%seed94637%_))))
    (define make-eq-table__1
      (lambda (_%size-hint94639%_)
        (let ((_%seed94641%_ '0))
          (make-eq-table__% _%size-hint94639%_ _%seed94641%_))))
    (define make-eq-table
      (lambda _g94983_
        (let ((_g94982_ (##length _g94983_)))
          (cond ((##fx= _g94982_ 0) (apply make-eq-table__0 _g94983_))
                ((##fx= _g94982_ 1) (apply make-eq-table__1 _g94983_))
                ((##fx= _g94982_ 2) (apply make-eq-table__% _g94983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g94983_))))))
    (define eq-table-ref
      (lambda (_%tab94580%_ _%key94581%_ _%default94582%_)
        (let ((_%table94584%_ (&raw-table-table _%tab94580%_))
              (_%seed94585%_ (&raw-table-seed _%tab94580%_)))
          (let* ((_%h94587%_ (fxxor (eq-hash _%key94581%_) _%seed94585%_))
                 (_%size94590%_ (vector-length _%table94584%_))
                 (_%entries94593%_ (##fxquotient _%size94590%_ '2))
                 (_%start94596%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94587%_ _%entries94593%_)
                   '1)))
            (let _%loop94600%_ ((_%probe94603%_ _%start94596%_)
                                (_%i94605%_ '1)
                                (_%deleted94607%_ '#f))
              (let ((_%k94610%_ (vector-ref _%table94584%_ _%probe94603%_)))
                (if (eq? _%k94610%_ (macro-unused-obj))
                    _%default94582%_
                    (if (eq? _%k94610%_ (macro-deleted-obj))
                        (_%loop94600%_
                         (let ((_%next-probe94615%_
                                (fx+ _%start94596%_
                                     _%i94605%_
                                     (fx* _%i94605%_ _%i94605%_))))
                           (##fxmodulo _%next-probe94615%_ _%size94590%_))
                         (##fx+ _%i94605%_ '1)
                         (let ((_%$e94618%_ _%deleted94607%_))
                           (if _%$e94618%_ _%$e94618%_ _%probe94603%_)))
                        (if (eq? _%key94581%_ _%k94610%_)
                            (vector-ref
                             _%table94584%_
                             (##fx+ _%probe94603%_ '1))
                            (_%loop94600%_
                             (let ((_%next-probe94623%_
                                    (fx+ _%start94596%_
                                         _%i94605%_
                                         (fx* _%i94605%_ _%i94605%_))))
                               (##fxmodulo _%next-probe94623%_ _%size94590%_))
                             (##fx+ _%i94605%_ '1)
                             _%deleted94607%_))))))))))
    (define eq-table-set!
      (lambda (_%tab94576%_ _%key94577%_ _%value94578%_)
        (if (##fx< (&raw-table-free _%tab94576%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94576%_))
                    '4))
            (__raw-table-rehash! _%tab94576%_)
            '#!void)
        (__eq-table-set! _%tab94576%_ _%key94577%_ _%value94578%_)))
    (define __eq-table-set!
      (lambda (_%tab94527%_ _%key94528%_ _%value94529%_)
        (let ((_%table94532%_ (&raw-table-table _%tab94527%_))
              (_%seed94533%_ (&raw-table-seed _%tab94527%_)))
          (let* ((_%h94535%_ (fxxor (eq-hash _%key94528%_) _%seed94533%_))
                 (_%size94538%_ (vector-length _%table94532%_))
                 (_%entries94541%_ (##fxquotient _%size94538%_ '2))
                 (_%start94544%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94535%_ _%entries94541%_)
                   '1)))
            (let _%loop94548%_ ((_%probe94551%_ _%start94544%_)
                                (_%i94553%_ '1)
                                (_%deleted94555%_ '#f))
              (let ((_%k94558%_ (vector-ref _%table94532%_ _%probe94551%_)))
                (if (eq? _%k94558%_ (macro-unused-obj))
                    (if _%deleted94555%_
                        (begin
                          (vector-set!
                           _%table94532%_
                           _%deleted94555%_
                           _%key94528%_)
                          (vector-set!
                           _%table94532%_
                           (##fx+ _%deleted94555%_ '1)
                           _%value94529%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94527%_
                              (##fx+ (&raw-table-count _%tab94527%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94532%_
                           _%probe94551%_
                           _%key94528%_)
                          (vector-set!
                           _%table94532%_
                           (##fx+ _%probe94551%_ '1)
                           _%value94529%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94527%_
                              (##fx- (&raw-table-free _%tab94527%_) '1))
                             (&raw-table-count-set!
                              _%tab94527%_
                              (##fx+ (&raw-table-count _%tab94527%_) '1))))))
                    (if (eq? _%k94558%_ (macro-deleted-obj))
                        (_%loop94548%_
                         (let ((_%next-probe94565%_
                                (fx+ _%start94544%_
                                     _%i94553%_
                                     (fx* _%i94553%_ _%i94553%_))))
                           (##fxmodulo _%next-probe94565%_ _%size94538%_))
                         (##fx+ _%i94553%_ '1)
                         (let ((_%$e94568%_ _%deleted94555%_))
                           (if _%$e94568%_ _%$e94568%_ _%probe94551%_)))
                        (if (eq? _%key94528%_ _%k94558%_)
                            (let ()
                              (vector-set!
                               _%table94532%_
                               _%probe94551%_
                               _%key94528%_)
                              (vector-set!
                               _%table94532%_
                               (##fx+ _%probe94551%_ '1)
                               _%value94529%_))
                            (_%loop94548%_
                             (let ((_%next-probe94573%_
                                    (fx+ _%start94544%_
                                         _%i94553%_
                                         (fx* _%i94553%_ _%i94553%_))))
                               (##fxmodulo _%next-probe94573%_ _%size94538%_))
                             (##fx+ _%i94553%_ '1)
                             _%deleted94555%_))))))))))
    (define eq-table-update!
      (lambda (_%tab94522%_
               _%key94523%_
               _%eq-table-update!94524%_
               _%default94525%_)
        (if (##fx< (&raw-table-free _%tab94522%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94522%_))
                    '4))
            (__raw-table-rehash! _%tab94522%_)
            '#!void)
        (__eq-table-update!
         _%tab94522%_
         _%key94523%_
         _%eq-table-update!94524%_
         _%default94525%_)))
    (define __eq-table-update!
      (lambda (_%tab94472%_
               _%key94473%_
               _%eq-table-update!94474%_
               _%default94475%_)
        (let ((_%table94478%_ (&raw-table-table _%tab94472%_))
              (_%seed94479%_ (&raw-table-seed _%tab94472%_)))
          (let* ((_%h94481%_ (fxxor (eq-hash _%key94473%_) _%seed94479%_))
                 (_%size94484%_ (vector-length _%table94478%_))
                 (_%entries94487%_ (##fxquotient _%size94484%_ '2))
                 (_%start94490%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94481%_ _%entries94487%_)
                   '1)))
            (let _%loop94494%_ ((_%probe94497%_ _%start94490%_)
                                (_%i94499%_ '1)
                                (_%deleted94501%_ '#f))
              (let ((_%k94504%_ (vector-ref _%table94478%_ _%probe94497%_)))
                (if (eq? _%k94504%_ (macro-unused-obj))
                    (if _%deleted94501%_
                        (begin
                          (vector-set!
                           _%table94478%_
                           _%deleted94501%_
                           _%key94473%_)
                          (vector-set!
                           _%table94478%_
                           (##fx+ _%deleted94501%_ '1)
                           (_%eq-table-update!94474%_ _%default94475%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94472%_
                              (##fx+ (&raw-table-count _%tab94472%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94478%_
                           _%probe94497%_
                           _%key94473%_)
                          (vector-set!
                           _%table94478%_
                           (##fx+ _%probe94497%_ '1)
                           (_%eq-table-update!94474%_ _%default94475%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94472%_
                              (##fx- (&raw-table-free _%tab94472%_) '1))
                             (&raw-table-count-set!
                              _%tab94472%_
                              (##fx+ (&raw-table-count _%tab94472%_) '1))))))
                    (if (eq? _%k94504%_ (macro-deleted-obj))
                        (_%loop94494%_
                         (let ((_%next-probe94511%_
                                (fx+ _%start94490%_
                                     _%i94499%_
                                     (fx* _%i94499%_ _%i94499%_))))
                           (##fxmodulo _%next-probe94511%_ _%size94484%_))
                         (##fx+ _%i94499%_ '1)
                         (let ((_%$e94514%_ _%deleted94501%_))
                           (if _%$e94514%_ _%$e94514%_ _%probe94497%_)))
                        (if (eq? _%key94473%_ _%k94504%_)
                            (let ()
                              (vector-set!
                               _%table94478%_
                               _%probe94497%_
                               _%key94473%_)
                              (vector-set!
                               _%table94478%_
                               (##fx+ _%probe94497%_ '1)
                               (_%eq-table-update!94474%_
                                (vector-ref
                                 _%table94478%_
                                 (##fx+ _%probe94497%_ '1)))))
                            (_%loop94494%_
                             (let ((_%next-probe94519%_
                                    (fx+ _%start94490%_
                                         _%i94499%_
                                         (fx* _%i94499%_ _%i94499%_))))
                               (##fxmodulo _%next-probe94519%_ _%size94484%_))
                             (##fx+ _%i94499%_ '1)
                             _%deleted94501%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab94427%_ _%key94429%_)
        (let ((_%table94432%_ (&raw-table-table _%tab94427%_))
              (_%seed94434%_ (&raw-table-seed _%tab94427%_)))
          (let* ((_%h94437%_ (fxxor (eq-hash _%key94429%_) _%seed94434%_))
                 (_%size94440%_ (vector-length _%table94432%_))
                 (_%entries94443%_ (##fxquotient _%size94440%_ '2))
                 (_%start94446%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94437%_ _%entries94443%_)
                   '1)))
            (let _%loop94450%_ ((_%probe94453%_ _%start94446%_)
                                (_%i94455%_ '1))
              (let ((_%k94458%_ (vector-ref _%table94432%_ _%probe94453%_)))
                (if (eq? _%k94458%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94458%_ (macro-deleted-obj))
                        (_%loop94450%_
                         (let ((_%next-probe94463%_
                                (fx+ _%start94446%_
                                     _%i94455%_
                                     (fx* _%i94455%_ _%i94455%_))))
                           (##fxmodulo _%next-probe94463%_ _%size94440%_))
                         (##fx+ _%i94455%_ '1))
                        (if (eq? _%key94429%_ _%k94458%_)
                            (let ()
                              (vector-set!
                               _%table94432%_
                               _%probe94453%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94432%_
                               (##fx+ _%probe94453%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94427%_
                                  (##fx- (&raw-table-count _%tab94427%_)
                                         '1)))))
                            (_%loop94450%_
                             (let ((_%next-probe94469%_
                                    (fx+ _%start94446%_
                                         _%i94455%_
                                         (fx* _%i94455%_ _%i94455%_))))
                               (##fxmodulo _%next-probe94469%_ _%size94440%_))
                             (##fx+ _%i94455%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint94408%_ _%seed94410%_)
        (make-raw-table__% _%size-hint94408%_ eqv-hash eqv? _%seed94410%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint94416%_ '#f) (_%seed94418%_ '0))
          (make-eqv-table__% _%size-hint94416%_ _%seed94418%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint94420%_)
        (let ((_%seed94422%_ '0))
          (make-eqv-table__% _%size-hint94420%_ _%seed94422%_))))
    (define make-eqv-table
      (lambda _g94985_
        (let ((_g94984_ (##length _g94985_)))
          (cond ((##fx= _g94984_ 0) (apply make-eqv-table__0 _g94985_))
                ((##fx= _g94984_ 1) (apply make-eqv-table__1 _g94985_))
                ((##fx= _g94984_ 2) (apply make-eqv-table__% _g94985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g94985_))))))
    (define eqv-table-ref
      (lambda (_%tab94361%_ _%key94362%_ _%default94363%_)
        (let ((_%table94365%_ (&raw-table-table _%tab94361%_))
              (_%seed94366%_ (&raw-table-seed _%tab94361%_)))
          (let* ((_%h94368%_ (fxxor (eqv-hash _%key94362%_) _%seed94366%_))
                 (_%size94371%_ (vector-length _%table94365%_))
                 (_%entries94374%_ (##fxquotient _%size94371%_ '2))
                 (_%start94377%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94368%_ _%entries94374%_)
                   '1)))
            (let _%loop94381%_ ((_%probe94384%_ _%start94377%_)
                                (_%i94386%_ '1)
                                (_%deleted94388%_ '#f))
              (let ((_%k94391%_ (vector-ref _%table94365%_ _%probe94384%_)))
                (if (eq? _%k94391%_ (macro-unused-obj))
                    _%default94363%_
                    (if (eq? _%k94391%_ (macro-deleted-obj))
                        (_%loop94381%_
                         (let ((_%next-probe94396%_
                                (fx+ _%start94377%_
                                     _%i94386%_
                                     (fx* _%i94386%_ _%i94386%_))))
                           (##fxmodulo _%next-probe94396%_ _%size94371%_))
                         (##fx+ _%i94386%_ '1)
                         (let ((_%$e94399%_ _%deleted94388%_))
                           (if _%$e94399%_ _%$e94399%_ _%probe94384%_)))
                        (if (eqv? _%key94362%_ _%k94391%_)
                            (vector-ref
                             _%table94365%_
                             (##fx+ _%probe94384%_ '1))
                            (_%loop94381%_
                             (let ((_%next-probe94404%_
                                    (fx+ _%start94377%_
                                         _%i94386%_
                                         (fx* _%i94386%_ _%i94386%_))))
                               (##fxmodulo _%next-probe94404%_ _%size94371%_))
                             (##fx+ _%i94386%_ '1)
                             _%deleted94388%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab94357%_ _%key94358%_ _%value94359%_)
        (if (##fx< (&raw-table-free _%tab94357%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94357%_))
                    '4))
            (__raw-table-rehash! _%tab94357%_)
            '#!void)
        (__eqv-table-set! _%tab94357%_ _%key94358%_ _%value94359%_)))
    (define __eqv-table-set!
      (lambda (_%tab94308%_ _%key94309%_ _%value94310%_)
        (let ((_%table94313%_ (&raw-table-table _%tab94308%_))
              (_%seed94314%_ (&raw-table-seed _%tab94308%_)))
          (let* ((_%h94316%_ (fxxor (eqv-hash _%key94309%_) _%seed94314%_))
                 (_%size94319%_ (vector-length _%table94313%_))
                 (_%entries94322%_ (##fxquotient _%size94319%_ '2))
                 (_%start94325%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94316%_ _%entries94322%_)
                   '1)))
            (let _%loop94329%_ ((_%probe94332%_ _%start94325%_)
                                (_%i94334%_ '1)
                                (_%deleted94336%_ '#f))
              (let ((_%k94339%_ (vector-ref _%table94313%_ _%probe94332%_)))
                (if (eq? _%k94339%_ (macro-unused-obj))
                    (if _%deleted94336%_
                        (begin
                          (vector-set!
                           _%table94313%_
                           _%deleted94336%_
                           _%key94309%_)
                          (vector-set!
                           _%table94313%_
                           (##fx+ _%deleted94336%_ '1)
                           _%value94310%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94308%_
                              (##fx+ (&raw-table-count _%tab94308%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94313%_
                           _%probe94332%_
                           _%key94309%_)
                          (vector-set!
                           _%table94313%_
                           (##fx+ _%probe94332%_ '1)
                           _%value94310%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94308%_
                              (##fx- (&raw-table-free _%tab94308%_) '1))
                             (&raw-table-count-set!
                              _%tab94308%_
                              (##fx+ (&raw-table-count _%tab94308%_) '1))))))
                    (if (eq? _%k94339%_ (macro-deleted-obj))
                        (_%loop94329%_
                         (let ((_%next-probe94346%_
                                (fx+ _%start94325%_
                                     _%i94334%_
                                     (fx* _%i94334%_ _%i94334%_))))
                           (##fxmodulo _%next-probe94346%_ _%size94319%_))
                         (##fx+ _%i94334%_ '1)
                         (let ((_%$e94349%_ _%deleted94336%_))
                           (if _%$e94349%_ _%$e94349%_ _%probe94332%_)))
                        (if (eqv? _%key94309%_ _%k94339%_)
                            (let ()
                              (vector-set!
                               _%table94313%_
                               _%probe94332%_
                               _%key94309%_)
                              (vector-set!
                               _%table94313%_
                               (##fx+ _%probe94332%_ '1)
                               _%value94310%_))
                            (_%loop94329%_
                             (let ((_%next-probe94354%_
                                    (fx+ _%start94325%_
                                         _%i94334%_
                                         (fx* _%i94334%_ _%i94334%_))))
                               (##fxmodulo _%next-probe94354%_ _%size94319%_))
                             (##fx+ _%i94334%_ '1)
                             _%deleted94336%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab94303%_
               _%key94304%_
               _%eqv-table-update!94305%_
               _%default94306%_)
        (if (##fx< (&raw-table-free _%tab94303%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94303%_))
                    '4))
            (__raw-table-rehash! _%tab94303%_)
            '#!void)
        (__eqv-table-update!
         _%tab94303%_
         _%key94304%_
         _%eqv-table-update!94305%_
         _%default94306%_)))
    (define __eqv-table-update!
      (lambda (_%tab94253%_
               _%key94254%_
               _%eqv-table-update!94255%_
               _%default94256%_)
        (let ((_%table94259%_ (&raw-table-table _%tab94253%_))
              (_%seed94260%_ (&raw-table-seed _%tab94253%_)))
          (let* ((_%h94262%_ (fxxor (eqv-hash _%key94254%_) _%seed94260%_))
                 (_%size94265%_ (vector-length _%table94259%_))
                 (_%entries94268%_ (##fxquotient _%size94265%_ '2))
                 (_%start94271%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94262%_ _%entries94268%_)
                   '1)))
            (let _%loop94275%_ ((_%probe94278%_ _%start94271%_)
                                (_%i94280%_ '1)
                                (_%deleted94282%_ '#f))
              (let ((_%k94285%_ (vector-ref _%table94259%_ _%probe94278%_)))
                (if (eq? _%k94285%_ (macro-unused-obj))
                    (if _%deleted94282%_
                        (begin
                          (vector-set!
                           _%table94259%_
                           _%deleted94282%_
                           _%key94254%_)
                          (vector-set!
                           _%table94259%_
                           (##fx+ _%deleted94282%_ '1)
                           (_%eqv-table-update!94255%_ _%default94256%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94253%_
                              (##fx+ (&raw-table-count _%tab94253%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94259%_
                           _%probe94278%_
                           _%key94254%_)
                          (vector-set!
                           _%table94259%_
                           (##fx+ _%probe94278%_ '1)
                           (_%eqv-table-update!94255%_ _%default94256%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94253%_
                              (##fx- (&raw-table-free _%tab94253%_) '1))
                             (&raw-table-count-set!
                              _%tab94253%_
                              (##fx+ (&raw-table-count _%tab94253%_) '1))))))
                    (if (eq? _%k94285%_ (macro-deleted-obj))
                        (_%loop94275%_
                         (let ((_%next-probe94292%_
                                (fx+ _%start94271%_
                                     _%i94280%_
                                     (fx* _%i94280%_ _%i94280%_))))
                           (##fxmodulo _%next-probe94292%_ _%size94265%_))
                         (##fx+ _%i94280%_ '1)
                         (let ((_%$e94295%_ _%deleted94282%_))
                           (if _%$e94295%_ _%$e94295%_ _%probe94278%_)))
                        (if (eqv? _%key94254%_ _%k94285%_)
                            (let ()
                              (vector-set!
                               _%table94259%_
                               _%probe94278%_
                               _%key94254%_)
                              (vector-set!
                               _%table94259%_
                               (##fx+ _%probe94278%_ '1)
                               (_%eqv-table-update!94255%_
                                (vector-ref
                                 _%table94259%_
                                 (##fx+ _%probe94278%_ '1)))))
                            (_%loop94275%_
                             (let ((_%next-probe94300%_
                                    (fx+ _%start94271%_
                                         _%i94280%_
                                         (fx* _%i94280%_ _%i94280%_))))
                               (##fxmodulo _%next-probe94300%_ _%size94265%_))
                             (##fx+ _%i94280%_ '1)
                             _%deleted94282%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab94208%_ _%key94210%_)
        (let ((_%table94213%_ (&raw-table-table _%tab94208%_))
              (_%seed94215%_ (&raw-table-seed _%tab94208%_)))
          (let* ((_%h94218%_ (fxxor (eqv-hash _%key94210%_) _%seed94215%_))
                 (_%size94221%_ (vector-length _%table94213%_))
                 (_%entries94224%_ (##fxquotient _%size94221%_ '2))
                 (_%start94227%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94218%_ _%entries94224%_)
                   '1)))
            (let _%loop94231%_ ((_%probe94234%_ _%start94227%_)
                                (_%i94236%_ '1))
              (let ((_%k94239%_ (vector-ref _%table94213%_ _%probe94234%_)))
                (if (eq? _%k94239%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94239%_ (macro-deleted-obj))
                        (_%loop94231%_
                         (let ((_%next-probe94244%_
                                (fx+ _%start94227%_
                                     _%i94236%_
                                     (fx* _%i94236%_ _%i94236%_))))
                           (##fxmodulo _%next-probe94244%_ _%size94221%_))
                         (##fx+ _%i94236%_ '1))
                        (if (eqv? _%key94210%_ _%k94239%_)
                            (let ()
                              (vector-set!
                               _%table94213%_
                               _%probe94234%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94213%_
                               (##fx+ _%probe94234%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab94208%_
                                  (##fx- (&raw-table-count _%tab94208%_)
                                         '1)))))
                            (_%loop94231%_
                             (let ((_%next-probe94250%_
                                    (fx+ _%start94227%_
                                         _%i94236%_
                                         (fx* _%i94236%_ _%i94236%_))))
                               (##fxmodulo _%next-probe94250%_ _%size94221%_))
                             (##fx+ _%i94236%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint94189%_ _%seed94191%_)
        (make-raw-table__%
         _%size-hint94189%_
         symbolic-hash
         eq?
         _%seed94191%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint94197%_ '#f) (_%seed94199%_ '0))
          (make-symbolic-table__% _%size-hint94197%_ _%seed94199%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint94201%_)
        (let ((_%seed94203%_ '0))
          (make-symbolic-table__% _%size-hint94201%_ _%seed94203%_))))
    (define make-symbolic-table
      (lambda _g94987_
        (let ((_g94986_ (##length _g94987_)))
          (cond ((##fx= _g94986_ 0) (apply make-symbolic-table__0 _g94987_))
                ((##fx= _g94986_ 1) (apply make-symbolic-table__1 _g94987_))
                ((##fx= _g94986_ 2) (apply make-symbolic-table__% _g94987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g94987_))))))
    (define symbolic-table-ref
      (lambda (_%tab94142%_ _%key94143%_ _%default94144%_)
        (let ((_%table94146%_ (&raw-table-table _%tab94142%_))
              (_%seed94147%_ (&raw-table-seed _%tab94142%_)))
          (let* ((_%h94149%_
                  (fxxor (symbolic-hash _%key94143%_) _%seed94147%_))
                 (_%size94152%_ (vector-length _%table94146%_))
                 (_%entries94155%_ (##fxquotient _%size94152%_ '2))
                 (_%start94158%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94149%_ _%entries94155%_)
                   '1)))
            (let _%loop94162%_ ((_%probe94165%_ _%start94158%_)
                                (_%i94167%_ '1)
                                (_%deleted94169%_ '#f))
              (let ((_%k94172%_ (vector-ref _%table94146%_ _%probe94165%_)))
                (if (eq? _%k94172%_ (macro-unused-obj))
                    _%default94144%_
                    (if (eq? _%k94172%_ (macro-deleted-obj))
                        (_%loop94162%_
                         (let ((_%next-probe94177%_
                                (fx+ _%start94158%_
                                     _%i94167%_
                                     (fx* _%i94167%_ _%i94167%_))))
                           (##fxmodulo _%next-probe94177%_ _%size94152%_))
                         (##fx+ _%i94167%_ '1)
                         (let ((_%$e94180%_ _%deleted94169%_))
                           (if _%$e94180%_ _%$e94180%_ _%probe94165%_)))
                        (if (eq? _%key94143%_ _%k94172%_)
                            (vector-ref
                             _%table94146%_
                             (##fx+ _%probe94165%_ '1))
                            (_%loop94162%_
                             (let ((_%next-probe94185%_
                                    (fx+ _%start94158%_
                                         _%i94167%_
                                         (fx* _%i94167%_ _%i94167%_))))
                               (##fxmodulo _%next-probe94185%_ _%size94152%_))
                             (##fx+ _%i94167%_ '1)
                             _%deleted94169%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab94138%_ _%key94139%_ _%value94140%_)
        (if (##fx< (&raw-table-free _%tab94138%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94138%_))
                    '4))
            (__raw-table-rehash! _%tab94138%_)
            '#!void)
        (__symbolic-table-set! _%tab94138%_ _%key94139%_ _%value94140%_)))
    (define __symbolic-table-set!
      (lambda (_%tab94089%_ _%key94090%_ _%value94091%_)
        (let ((_%table94094%_ (&raw-table-table _%tab94089%_))
              (_%seed94095%_ (&raw-table-seed _%tab94089%_)))
          (let* ((_%h94097%_
                  (fxxor (symbolic-hash _%key94090%_) _%seed94095%_))
                 (_%size94100%_ (vector-length _%table94094%_))
                 (_%entries94103%_ (##fxquotient _%size94100%_ '2))
                 (_%start94106%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94097%_ _%entries94103%_)
                   '1)))
            (let _%loop94110%_ ((_%probe94113%_ _%start94106%_)
                                (_%i94115%_ '1)
                                (_%deleted94117%_ '#f))
              (let ((_%k94120%_ (vector-ref _%table94094%_ _%probe94113%_)))
                (if (eq? _%k94120%_ (macro-unused-obj))
                    (if _%deleted94117%_
                        (begin
                          (vector-set!
                           _%table94094%_
                           _%deleted94117%_
                           _%key94090%_)
                          (vector-set!
                           _%table94094%_
                           (##fx+ _%deleted94117%_ '1)
                           _%value94091%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94089%_
                              (##fx+ (&raw-table-count _%tab94089%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94094%_
                           _%probe94113%_
                           _%key94090%_)
                          (vector-set!
                           _%table94094%_
                           (##fx+ _%probe94113%_ '1)
                           _%value94091%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94089%_
                              (##fx- (&raw-table-free _%tab94089%_) '1))
                             (&raw-table-count-set!
                              _%tab94089%_
                              (##fx+ (&raw-table-count _%tab94089%_) '1))))))
                    (if (eq? _%k94120%_ (macro-deleted-obj))
                        (_%loop94110%_
                         (let ((_%next-probe94127%_
                                (fx+ _%start94106%_
                                     _%i94115%_
                                     (fx* _%i94115%_ _%i94115%_))))
                           (##fxmodulo _%next-probe94127%_ _%size94100%_))
                         (##fx+ _%i94115%_ '1)
                         (let ((_%$e94130%_ _%deleted94117%_))
                           (if _%$e94130%_ _%$e94130%_ _%probe94113%_)))
                        (if (eq? _%key94090%_ _%k94120%_)
                            (let ()
                              (vector-set!
                               _%table94094%_
                               _%probe94113%_
                               _%key94090%_)
                              (vector-set!
                               _%table94094%_
                               (##fx+ _%probe94113%_ '1)
                               _%value94091%_))
                            (_%loop94110%_
                             (let ((_%next-probe94135%_
                                    (fx+ _%start94106%_
                                         _%i94115%_
                                         (fx* _%i94115%_ _%i94115%_))))
                               (##fxmodulo _%next-probe94135%_ _%size94100%_))
                             (##fx+ _%i94115%_ '1)
                             _%deleted94117%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab94084%_
               _%key94085%_
               _%symbolic-table-update!94086%_
               _%default94087%_)
        (if (##fx< (&raw-table-free _%tab94084%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab94084%_))
                    '4))
            (__raw-table-rehash! _%tab94084%_)
            '#!void)
        (__symbolic-table-update!
         _%tab94084%_
         _%key94085%_
         _%symbolic-table-update!94086%_
         _%default94087%_)))
    (define __symbolic-table-update!
      (lambda (_%tab94034%_
               _%key94035%_
               _%symbolic-table-update!94036%_
               _%default94037%_)
        (let ((_%table94040%_ (&raw-table-table _%tab94034%_))
              (_%seed94041%_ (&raw-table-seed _%tab94034%_)))
          (let* ((_%h94043%_
                  (fxxor (symbolic-hash _%key94035%_) _%seed94041%_))
                 (_%size94046%_ (vector-length _%table94040%_))
                 (_%entries94049%_ (##fxquotient _%size94046%_ '2))
                 (_%start94052%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h94043%_ _%entries94049%_)
                   '1)))
            (let _%loop94056%_ ((_%probe94059%_ _%start94052%_)
                                (_%i94061%_ '1)
                                (_%deleted94063%_ '#f))
              (let ((_%k94066%_ (vector-ref _%table94040%_ _%probe94059%_)))
                (if (eq? _%k94066%_ (macro-unused-obj))
                    (if _%deleted94063%_
                        (begin
                          (vector-set!
                           _%table94040%_
                           _%deleted94063%_
                           _%key94035%_)
                          (vector-set!
                           _%table94040%_
                           (##fx+ _%deleted94063%_ '1)
                           (_%symbolic-table-update!94036%_ _%default94037%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab94034%_
                              (##fx+ (&raw-table-count _%tab94034%_) '1)))))
                        (begin
                          (vector-set!
                           _%table94040%_
                           _%probe94059%_
                           _%key94035%_)
                          (vector-set!
                           _%table94040%_
                           (##fx+ _%probe94059%_ '1)
                           (_%symbolic-table-update!94036%_ _%default94037%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab94034%_
                              (##fx- (&raw-table-free _%tab94034%_) '1))
                             (&raw-table-count-set!
                              _%tab94034%_
                              (##fx+ (&raw-table-count _%tab94034%_) '1))))))
                    (if (eq? _%k94066%_ (macro-deleted-obj))
                        (_%loop94056%_
                         (let ((_%next-probe94073%_
                                (fx+ _%start94052%_
                                     _%i94061%_
                                     (fx* _%i94061%_ _%i94061%_))))
                           (##fxmodulo _%next-probe94073%_ _%size94046%_))
                         (##fx+ _%i94061%_ '1)
                         (let ((_%$e94076%_ _%deleted94063%_))
                           (if _%$e94076%_ _%$e94076%_ _%probe94059%_)))
                        (if (eq? _%key94035%_ _%k94066%_)
                            (let ()
                              (vector-set!
                               _%table94040%_
                               _%probe94059%_
                               _%key94035%_)
                              (vector-set!
                               _%table94040%_
                               (##fx+ _%probe94059%_ '1)
                               (_%symbolic-table-update!94036%_
                                (vector-ref
                                 _%table94040%_
                                 (##fx+ _%probe94059%_ '1)))))
                            (_%loop94056%_
                             (let ((_%next-probe94081%_
                                    (fx+ _%start94052%_
                                         _%i94061%_
                                         (fx* _%i94061%_ _%i94061%_))))
                               (##fxmodulo _%next-probe94081%_ _%size94046%_))
                             (##fx+ _%i94061%_ '1)
                             _%deleted94063%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab93989%_ _%key93991%_)
        (let ((_%table93994%_ (&raw-table-table _%tab93989%_))
              (_%seed93996%_ (&raw-table-seed _%tab93989%_)))
          (let* ((_%h93999%_
                  (fxxor (symbolic-hash _%key93991%_) _%seed93996%_))
                 (_%size94002%_ (vector-length _%table93994%_))
                 (_%entries94005%_ (##fxquotient _%size94002%_ '2))
                 (_%start94008%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93999%_ _%entries94005%_)
                   '1)))
            (let _%loop94012%_ ((_%probe94015%_ _%start94008%_)
                                (_%i94017%_ '1))
              (let ((_%k94020%_ (vector-ref _%table93994%_ _%probe94015%_)))
                (if (eq? _%k94020%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94020%_ (macro-deleted-obj))
                        (_%loop94012%_
                         (let ((_%next-probe94025%_
                                (fx+ _%start94008%_
                                     _%i94017%_
                                     (fx* _%i94017%_ _%i94017%_))))
                           (##fxmodulo _%next-probe94025%_ _%size94002%_))
                         (##fx+ _%i94017%_ '1))
                        (if (eq? _%key93991%_ _%k94020%_)
                            (let ()
                              (vector-set!
                               _%table93994%_
                               _%probe94015%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93994%_
                               (##fx+ _%probe94015%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93989%_
                                  (##fx- (&raw-table-count _%tab93989%_)
                                         '1)))))
                            (_%loop94012%_
                             (let ((_%next-probe94031%_
                                    (fx+ _%start94008%_
                                         _%i94017%_
                                         (fx* _%i94017%_ _%i94017%_))))
                               (##fxmodulo _%next-probe94031%_ _%size94002%_))
                             (##fx+ _%i94017%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint93970%_ _%seed93972%_)
        (make-raw-table__%
         _%size-hint93970%_
         string-hash
         ##string=?
         _%seed93972%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint93978%_ '#f) (_%seed93980%_ '0))
          (make-string-table__% _%size-hint93978%_ _%seed93980%_))))
    (define make-string-table__1
      (lambda (_%size-hint93982%_)
        (let ((_%seed93984%_ '0))
          (make-string-table__% _%size-hint93982%_ _%seed93984%_))))
    (define make-string-table
      (lambda _g94989_
        (let ((_g94988_ (##length _g94989_)))
          (cond ((##fx= _g94988_ 0) (apply make-string-table__0 _g94989_))
                ((##fx= _g94988_ 1) (apply make-string-table__1 _g94989_))
                ((##fx= _g94988_ 2) (apply make-string-table__% _g94989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g94989_))))))
    (define string-table-ref
      (lambda (_%tab93923%_ _%key93924%_ _%default93925%_)
        (let ((_%table93927%_ (&raw-table-table _%tab93923%_))
              (_%seed93928%_ (&raw-table-seed _%tab93923%_)))
          (let* ((_%h93930%_
                  (fxxor (##string=?-hash _%key93924%_) _%seed93928%_))
                 (_%size93933%_ (vector-length _%table93927%_))
                 (_%entries93936%_ (##fxquotient _%size93933%_ '2))
                 (_%start93939%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93930%_ _%entries93936%_)
                   '1)))
            (let _%loop93943%_ ((_%probe93946%_ _%start93939%_)
                                (_%i93948%_ '1)
                                (_%deleted93950%_ '#f))
              (let ((_%k93953%_ (vector-ref _%table93927%_ _%probe93946%_)))
                (if (eq? _%k93953%_ (macro-unused-obj))
                    _%default93925%_
                    (if (eq? _%k93953%_ (macro-deleted-obj))
                        (_%loop93943%_
                         (let ((_%next-probe93958%_
                                (fx+ _%start93939%_
                                     _%i93948%_
                                     (fx* _%i93948%_ _%i93948%_))))
                           (##fxmodulo _%next-probe93958%_ _%size93933%_))
                         (##fx+ _%i93948%_ '1)
                         (let ((_%$e93961%_ _%deleted93950%_))
                           (if _%$e93961%_ _%$e93961%_ _%probe93946%_)))
                        (if (##string=? _%key93924%_ _%k93953%_)
                            (vector-ref
                             _%table93927%_
                             (##fx+ _%probe93946%_ '1))
                            (_%loop93943%_
                             (let ((_%next-probe93966%_
                                    (fx+ _%start93939%_
                                         _%i93948%_
                                         (fx* _%i93948%_ _%i93948%_))))
                               (##fxmodulo _%next-probe93966%_ _%size93933%_))
                             (##fx+ _%i93948%_ '1)
                             _%deleted93950%_))))))))))
    (define string-table-set!
      (lambda (_%tab93919%_ _%key93920%_ _%value93921%_)
        (if (##fx< (&raw-table-free _%tab93919%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93919%_))
                    '4))
            (__raw-table-rehash! _%tab93919%_)
            '#!void)
        (__string-table-set! _%tab93919%_ _%key93920%_ _%value93921%_)))
    (define __string-table-set!
      (lambda (_%tab93870%_ _%key93871%_ _%value93872%_)
        (let ((_%table93875%_ (&raw-table-table _%tab93870%_))
              (_%seed93876%_ (&raw-table-seed _%tab93870%_)))
          (let* ((_%h93878%_
                  (fxxor (##string=?-hash _%key93871%_) _%seed93876%_))
                 (_%size93881%_ (vector-length _%table93875%_))
                 (_%entries93884%_ (##fxquotient _%size93881%_ '2))
                 (_%start93887%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93878%_ _%entries93884%_)
                   '1)))
            (let _%loop93891%_ ((_%probe93894%_ _%start93887%_)
                                (_%i93896%_ '1)
                                (_%deleted93898%_ '#f))
              (let ((_%k93901%_ (vector-ref _%table93875%_ _%probe93894%_)))
                (if (eq? _%k93901%_ (macro-unused-obj))
                    (if _%deleted93898%_
                        (begin
                          (vector-set!
                           _%table93875%_
                           _%deleted93898%_
                           _%key93871%_)
                          (vector-set!
                           _%table93875%_
                           (##fx+ _%deleted93898%_ '1)
                           _%value93872%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93870%_
                              (##fx+ (&raw-table-count _%tab93870%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93875%_
                           _%probe93894%_
                           _%key93871%_)
                          (vector-set!
                           _%table93875%_
                           (##fx+ _%probe93894%_ '1)
                           _%value93872%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93870%_
                              (##fx- (&raw-table-free _%tab93870%_) '1))
                             (&raw-table-count-set!
                              _%tab93870%_
                              (##fx+ (&raw-table-count _%tab93870%_) '1))))))
                    (if (eq? _%k93901%_ (macro-deleted-obj))
                        (_%loop93891%_
                         (let ((_%next-probe93908%_
                                (fx+ _%start93887%_
                                     _%i93896%_
                                     (fx* _%i93896%_ _%i93896%_))))
                           (##fxmodulo _%next-probe93908%_ _%size93881%_))
                         (##fx+ _%i93896%_ '1)
                         (let ((_%$e93911%_ _%deleted93898%_))
                           (if _%$e93911%_ _%$e93911%_ _%probe93894%_)))
                        (if (##string=? _%key93871%_ _%k93901%_)
                            (let ()
                              (vector-set!
                               _%table93875%_
                               _%probe93894%_
                               _%key93871%_)
                              (vector-set!
                               _%table93875%_
                               (##fx+ _%probe93894%_ '1)
                               _%value93872%_))
                            (_%loop93891%_
                             (let ((_%next-probe93916%_
                                    (fx+ _%start93887%_
                                         _%i93896%_
                                         (fx* _%i93896%_ _%i93896%_))))
                               (##fxmodulo _%next-probe93916%_ _%size93881%_))
                             (##fx+ _%i93896%_ '1)
                             _%deleted93898%_))))))))))
    (define string-table-update!
      (lambda (_%tab93865%_
               _%key93866%_
               _%string-table-update!93867%_
               _%default93868%_)
        (if (##fx< (&raw-table-free _%tab93865%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93865%_))
                    '4))
            (__raw-table-rehash! _%tab93865%_)
            '#!void)
        (__string-table-update!
         _%tab93865%_
         _%key93866%_
         _%string-table-update!93867%_
         _%default93868%_)))
    (define __string-table-update!
      (lambda (_%tab93815%_
               _%key93816%_
               _%string-table-update!93817%_
               _%default93818%_)
        (let ((_%table93821%_ (&raw-table-table _%tab93815%_))
              (_%seed93822%_ (&raw-table-seed _%tab93815%_)))
          (let* ((_%h93824%_
                  (fxxor (##string=?-hash _%key93816%_) _%seed93822%_))
                 (_%size93827%_ (vector-length _%table93821%_))
                 (_%entries93830%_ (##fxquotient _%size93827%_ '2))
                 (_%start93833%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93824%_ _%entries93830%_)
                   '1)))
            (let _%loop93837%_ ((_%probe93840%_ _%start93833%_)
                                (_%i93842%_ '1)
                                (_%deleted93844%_ '#f))
              (let ((_%k93847%_ (vector-ref _%table93821%_ _%probe93840%_)))
                (if (eq? _%k93847%_ (macro-unused-obj))
                    (if _%deleted93844%_
                        (begin
                          (vector-set!
                           _%table93821%_
                           _%deleted93844%_
                           _%key93816%_)
                          (vector-set!
                           _%table93821%_
                           (##fx+ _%deleted93844%_ '1)
                           (_%string-table-update!93817%_ _%default93818%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93815%_
                              (##fx+ (&raw-table-count _%tab93815%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93821%_
                           _%probe93840%_
                           _%key93816%_)
                          (vector-set!
                           _%table93821%_
                           (##fx+ _%probe93840%_ '1)
                           (_%string-table-update!93817%_ _%default93818%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93815%_
                              (##fx- (&raw-table-free _%tab93815%_) '1))
                             (&raw-table-count-set!
                              _%tab93815%_
                              (##fx+ (&raw-table-count _%tab93815%_) '1))))))
                    (if (eq? _%k93847%_ (macro-deleted-obj))
                        (_%loop93837%_
                         (let ((_%next-probe93854%_
                                (fx+ _%start93833%_
                                     _%i93842%_
                                     (fx* _%i93842%_ _%i93842%_))))
                           (##fxmodulo _%next-probe93854%_ _%size93827%_))
                         (##fx+ _%i93842%_ '1)
                         (let ((_%$e93857%_ _%deleted93844%_))
                           (if _%$e93857%_ _%$e93857%_ _%probe93840%_)))
                        (if (##string=? _%key93816%_ _%k93847%_)
                            (let ()
                              (vector-set!
                               _%table93821%_
                               _%probe93840%_
                               _%key93816%_)
                              (vector-set!
                               _%table93821%_
                               (##fx+ _%probe93840%_ '1)
                               (_%string-table-update!93817%_
                                (vector-ref
                                 _%table93821%_
                                 (##fx+ _%probe93840%_ '1)))))
                            (_%loop93837%_
                             (let ((_%next-probe93862%_
                                    (fx+ _%start93833%_
                                         _%i93842%_
                                         (fx* _%i93842%_ _%i93842%_))))
                               (##fxmodulo _%next-probe93862%_ _%size93827%_))
                             (##fx+ _%i93842%_ '1)
                             _%deleted93844%_))))))))))
    (define string-table-delete!
      (lambda (_%tab93770%_ _%key93772%_)
        (let ((_%table93775%_ (&raw-table-table _%tab93770%_))
              (_%seed93777%_ (&raw-table-seed _%tab93770%_)))
          (let* ((_%h93780%_
                  (fxxor (##string=?-hash _%key93772%_) _%seed93777%_))
                 (_%size93783%_ (vector-length _%table93775%_))
                 (_%entries93786%_ (##fxquotient _%size93783%_ '2))
                 (_%start93789%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93780%_ _%entries93786%_)
                   '1)))
            (let _%loop93793%_ ((_%probe93796%_ _%start93789%_)
                                (_%i93798%_ '1))
              (let ((_%k93801%_ (vector-ref _%table93775%_ _%probe93796%_)))
                (if (eq? _%k93801%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93801%_ (macro-deleted-obj))
                        (_%loop93793%_
                         (let ((_%next-probe93806%_
                                (fx+ _%start93789%_
                                     _%i93798%_
                                     (fx* _%i93798%_ _%i93798%_))))
                           (##fxmodulo _%next-probe93806%_ _%size93783%_))
                         (##fx+ _%i93798%_ '1))
                        (if (##string=? _%key93772%_ _%k93801%_)
                            (let ()
                              (vector-set!
                               _%table93775%_
                               _%probe93796%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93775%_
                               (##fx+ _%probe93796%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93770%_
                                  (##fx- (&raw-table-count _%tab93770%_)
                                         '1)))))
                            (_%loop93793%_
                             (let ((_%next-probe93812%_
                                    (fx+ _%start93789%_
                                         _%i93798%_
                                         (fx* _%i93798%_ _%i93798%_))))
                               (##fxmodulo _%next-probe93812%_ _%size93783%_))
                             (##fx+ _%i93798%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint93751%_ _%seed93753%_)
        (make-raw-table__%
         _%size-hint93751%_
         immediate-hash
         eq?
         _%seed93753%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint93759%_ '#f) (_%seed93761%_ '0))
          (make-immediate-table__% _%size-hint93759%_ _%seed93761%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint93763%_)
        (let ((_%seed93765%_ '0))
          (make-immediate-table__% _%size-hint93763%_ _%seed93765%_))))
    (define make-immediate-table
      (lambda _g94991_
        (let ((_g94990_ (##length _g94991_)))
          (cond ((##fx= _g94990_ 0) (apply make-immediate-table__0 _g94991_))
                ((##fx= _g94990_ 1) (apply make-immediate-table__1 _g94991_))
                ((##fx= _g94990_ 2) (apply make-immediate-table__% _g94991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g94991_))))))
    (define immediate-table-ref
      (lambda (_%tab93704%_ _%key93705%_ _%default93706%_)
        (let ((_%table93708%_ (&raw-table-table _%tab93704%_))
              (_%seed93709%_ (&raw-table-seed _%tab93704%_)))
          (let* ((_%h93711%_
                  (fxxor (immediate-hash _%key93705%_) _%seed93709%_))
                 (_%size93714%_ (vector-length _%table93708%_))
                 (_%entries93717%_ (##fxquotient _%size93714%_ '2))
                 (_%start93720%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93711%_ _%entries93717%_)
                   '1)))
            (let _%loop93724%_ ((_%probe93727%_ _%start93720%_)
                                (_%i93729%_ '1)
                                (_%deleted93731%_ '#f))
              (let ((_%k93734%_ (vector-ref _%table93708%_ _%probe93727%_)))
                (if (eq? _%k93734%_ (macro-unused-obj))
                    _%default93706%_
                    (if (eq? _%k93734%_ (macro-deleted-obj))
                        (_%loop93724%_
                         (let ((_%next-probe93739%_
                                (fx+ _%start93720%_
                                     _%i93729%_
                                     (fx* _%i93729%_ _%i93729%_))))
                           (##fxmodulo _%next-probe93739%_ _%size93714%_))
                         (##fx+ _%i93729%_ '1)
                         (let ((_%$e93742%_ _%deleted93731%_))
                           (if _%$e93742%_ _%$e93742%_ _%probe93727%_)))
                        (if (eq? _%key93705%_ _%k93734%_)
                            (vector-ref
                             _%table93708%_
                             (##fx+ _%probe93727%_ '1))
                            (_%loop93724%_
                             (let ((_%next-probe93747%_
                                    (fx+ _%start93720%_
                                         _%i93729%_
                                         (fx* _%i93729%_ _%i93729%_))))
                               (##fxmodulo _%next-probe93747%_ _%size93714%_))
                             (##fx+ _%i93729%_ '1)
                             _%deleted93731%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab93700%_ _%key93701%_ _%value93702%_)
        (if (##fx< (&raw-table-free _%tab93700%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93700%_))
                    '4))
            (__raw-table-rehash! _%tab93700%_)
            '#!void)
        (__immediate-table-set! _%tab93700%_ _%key93701%_ _%value93702%_)))
    (define __immediate-table-set!
      (lambda (_%tab93651%_ _%key93652%_ _%value93653%_)
        (let ((_%table93656%_ (&raw-table-table _%tab93651%_))
              (_%seed93657%_ (&raw-table-seed _%tab93651%_)))
          (let* ((_%h93659%_
                  (fxxor (immediate-hash _%key93652%_) _%seed93657%_))
                 (_%size93662%_ (vector-length _%table93656%_))
                 (_%entries93665%_ (##fxquotient _%size93662%_ '2))
                 (_%start93668%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93659%_ _%entries93665%_)
                   '1)))
            (let _%loop93672%_ ((_%probe93675%_ _%start93668%_)
                                (_%i93677%_ '1)
                                (_%deleted93679%_ '#f))
              (let ((_%k93682%_ (vector-ref _%table93656%_ _%probe93675%_)))
                (if (eq? _%k93682%_ (macro-unused-obj))
                    (if _%deleted93679%_
                        (begin
                          (vector-set!
                           _%table93656%_
                           _%deleted93679%_
                           _%key93652%_)
                          (vector-set!
                           _%table93656%_
                           (##fx+ _%deleted93679%_ '1)
                           _%value93653%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93651%_
                              (##fx+ (&raw-table-count _%tab93651%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93656%_
                           _%probe93675%_
                           _%key93652%_)
                          (vector-set!
                           _%table93656%_
                           (##fx+ _%probe93675%_ '1)
                           _%value93653%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93651%_
                              (##fx- (&raw-table-free _%tab93651%_) '1))
                             (&raw-table-count-set!
                              _%tab93651%_
                              (##fx+ (&raw-table-count _%tab93651%_) '1))))))
                    (if (eq? _%k93682%_ (macro-deleted-obj))
                        (_%loop93672%_
                         (let ((_%next-probe93689%_
                                (fx+ _%start93668%_
                                     _%i93677%_
                                     (fx* _%i93677%_ _%i93677%_))))
                           (##fxmodulo _%next-probe93689%_ _%size93662%_))
                         (##fx+ _%i93677%_ '1)
                         (let ((_%$e93692%_ _%deleted93679%_))
                           (if _%$e93692%_ _%$e93692%_ _%probe93675%_)))
                        (if (eq? _%key93652%_ _%k93682%_)
                            (let ()
                              (vector-set!
                               _%table93656%_
                               _%probe93675%_
                               _%key93652%_)
                              (vector-set!
                               _%table93656%_
                               (##fx+ _%probe93675%_ '1)
                               _%value93653%_))
                            (_%loop93672%_
                             (let ((_%next-probe93697%_
                                    (fx+ _%start93668%_
                                         _%i93677%_
                                         (fx* _%i93677%_ _%i93677%_))))
                               (##fxmodulo _%next-probe93697%_ _%size93662%_))
                             (##fx+ _%i93677%_ '1)
                             _%deleted93679%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab93646%_
               _%key93647%_
               _%immediate-table-update!93648%_
               _%default93649%_)
        (if (##fx< (&raw-table-free _%tab93646%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab93646%_))
                    '4))
            (__raw-table-rehash! _%tab93646%_)
            '#!void)
        (__immediate-table-update!
         _%tab93646%_
         _%key93647%_
         _%immediate-table-update!93648%_
         _%default93649%_)))
    (define __immediate-table-update!
      (lambda (_%tab93596%_
               _%key93597%_
               _%immediate-table-update!93598%_
               _%default93599%_)
        (let ((_%table93602%_ (&raw-table-table _%tab93596%_))
              (_%seed93603%_ (&raw-table-seed _%tab93596%_)))
          (let* ((_%h93605%_
                  (fxxor (immediate-hash _%key93597%_) _%seed93603%_))
                 (_%size93608%_ (vector-length _%table93602%_))
                 (_%entries93611%_ (##fxquotient _%size93608%_ '2))
                 (_%start93614%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93605%_ _%entries93611%_)
                   '1)))
            (let _%loop93618%_ ((_%probe93621%_ _%start93614%_)
                                (_%i93623%_ '1)
                                (_%deleted93625%_ '#f))
              (let ((_%k93628%_ (vector-ref _%table93602%_ _%probe93621%_)))
                (if (eq? _%k93628%_ (macro-unused-obj))
                    (if _%deleted93625%_
                        (begin
                          (vector-set!
                           _%table93602%_
                           _%deleted93625%_
                           _%key93597%_)
                          (vector-set!
                           _%table93602%_
                           (##fx+ _%deleted93625%_ '1)
                           (_%immediate-table-update!93598%_ _%default93599%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab93596%_
                              (##fx+ (&raw-table-count _%tab93596%_) '1)))))
                        (begin
                          (vector-set!
                           _%table93602%_
                           _%probe93621%_
                           _%key93597%_)
                          (vector-set!
                           _%table93602%_
                           (##fx+ _%probe93621%_ '1)
                           (_%immediate-table-update!93598%_ _%default93599%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab93596%_
                              (##fx- (&raw-table-free _%tab93596%_) '1))
                             (&raw-table-count-set!
                              _%tab93596%_
                              (##fx+ (&raw-table-count _%tab93596%_) '1))))))
                    (if (eq? _%k93628%_ (macro-deleted-obj))
                        (_%loop93618%_
                         (let ((_%next-probe93635%_
                                (fx+ _%start93614%_
                                     _%i93623%_
                                     (fx* _%i93623%_ _%i93623%_))))
                           (##fxmodulo _%next-probe93635%_ _%size93608%_))
                         (##fx+ _%i93623%_ '1)
                         (let ((_%$e93638%_ _%deleted93625%_))
                           (if _%$e93638%_ _%$e93638%_ _%probe93621%_)))
                        (if (eq? _%key93597%_ _%k93628%_)
                            (let ()
                              (vector-set!
                               _%table93602%_
                               _%probe93621%_
                               _%key93597%_)
                              (vector-set!
                               _%table93602%_
                               (##fx+ _%probe93621%_ '1)
                               (_%immediate-table-update!93598%_
                                (vector-ref
                                 _%table93602%_
                                 (##fx+ _%probe93621%_ '1)))))
                            (_%loop93618%_
                             (let ((_%next-probe93643%_
                                    (fx+ _%start93614%_
                                         _%i93623%_
                                         (fx* _%i93623%_ _%i93623%_))))
                               (##fxmodulo _%next-probe93643%_ _%size93608%_))
                             (##fx+ _%i93623%_ '1)
                             _%deleted93625%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab93551%_ _%key93553%_)
        (let ((_%table93556%_ (&raw-table-table _%tab93551%_))
              (_%seed93558%_ (&raw-table-seed _%tab93551%_)))
          (let* ((_%h93561%_
                  (fxxor (immediate-hash _%key93553%_) _%seed93558%_))
                 (_%size93564%_ (vector-length _%table93556%_))
                 (_%entries93567%_ (##fxquotient _%size93564%_ '2))
                 (_%start93570%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h93561%_ _%entries93567%_)
                   '1)))
            (let _%loop93574%_ ((_%probe93577%_ _%start93570%_)
                                (_%i93579%_ '1))
              (let ((_%k93582%_ (vector-ref _%table93556%_ _%probe93577%_)))
                (if (eq? _%k93582%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93582%_ (macro-deleted-obj))
                        (_%loop93574%_
                         (let ((_%next-probe93587%_
                                (fx+ _%start93570%_
                                     _%i93579%_
                                     (fx* _%i93579%_ _%i93579%_))))
                           (##fxmodulo _%next-probe93587%_ _%size93564%_))
                         (##fx+ _%i93579%_ '1))
                        (if (eq? _%key93553%_ _%k93582%_)
                            (let ()
                              (vector-set!
                               _%table93556%_
                               _%probe93577%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93556%_
                               (##fx+ _%probe93577%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab93551%_
                                  (##fx- (&raw-table-count _%tab93551%_)
                                         '1)))))
                            (_%loop93574%_
                             (let ((_%next-probe93593%_
                                    (fx+ _%start93570%_
                                         _%i93579%_
                                         (fx* _%i93579%_ _%i93579%_))))
                               (##fxmodulo _%next-probe93593%_ _%size93564%_))
                             (##fx+ _%i93579%_ '1)))))))))))
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
      (lambda (_%tab93549%_)
        (##unchecked-structure-ref
         _%tab93549%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab93547%_)
        (##unchecked-structure-ref
         _%tab93547%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab93544%_ _%val93545%_)
        (##unchecked-structure-set!
         _%tab93544%_
         _%val93545%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab93541%_ _%val93542%_)
        (##unchecked-structure-set!
         _%tab93541%_
         _%val93542%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint93517%_ _%klass93518%_ _%flags93519%_)
        (let ((_%gcht93521%_
               (__gc-table-new
                (if (fixnum? _%size-hint93517%_) _%size-hint93517%_ '16)
                _%flags93519%_)))
          (##structure _%klass93518%_ _%gcht93521%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint93526%_)
        (let* ((_%klass93528%_ __gc-table::t) (_%flags93530%_ '0))
          (make-gc-table__%
           _%size-hint93526%_
           _%klass93528%_
           _%flags93530%_))))
    (define make-gc-table__1
      (lambda (_%size-hint93532%_ _%klass93533%_)
        (let ((_%flags93535%_ '0))
          (make-gc-table__%
           _%size-hint93532%_
           _%klass93533%_
           _%flags93535%_))))
    (define make-gc-table
      (lambda _g94993_
        (let ((_g94992_ (##length _g94993_)))
          (cond ((##fx= _g94992_ 1) (apply make-gc-table__0 _g94993_))
                ((##fx= _g94992_ 2) (apply make-gc-table__1 _g94993_))
                ((##fx= _g94992_ 3) (apply make-gc-table__% _g94993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g94993_))))))
    (define __gc-table-immediate
      (lambda (_%tab93508%_)
        (let ((_%$e93510%_ (&gc-table-immediate _%tab93508%_)))
          (if _%$e93510%_
              _%$e93510%_
              (let ((_%immediate93514%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab93508%_ _%immediate93514%_)
                _%immediate93514%_)))))
    (define __gc-table-new
      (lambda (_%size93498%_ _%flags93499%_)
        (let* ((_%flags93501%_
                (##fxand _%flags93499%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags93503%_
                (fxior _%flags93501%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht93505%_
                (##gc-hash-table-allocate
                 _%size93498%_
                 _%flags93503%_
                 __gc-table-loads)))
          _%gcht93505%_)))
    (define __gc-table-e
      (lambda (_%tab93493%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht93496%_ (&gc-table-gcht _%tab93493%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht93496%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht93496%_
              (begin
                (__gc-table-rehash! _%tab93493%_)
                (&gc-table-gcht _%tab93493%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab93484%_)
        (let* ((_%old-table93486%_ (&gc-table-gcht _%tab93484%_))
               (_%new-table93488%_
                (##gc-hash-table-resize! _%old-table93486%_ __gc-table-loads))
               (_%gcht93490%_
                (##gc-hash-table-rehash!
                 _%old-table93486%_
                 _%new-table93488%_)))
          (&gc-table-gcht-set! _%tab93484%_ _%gcht93490%_))))
    (define gc-table-ref
      (lambda (_%tab93468%_ _%key93469%_ _%default93470%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93469%_)
            (let* ((_%gcht93474%_ (__gc-table-e _%tab93468%_))
                   (_%value93476%_
                    (##gc-hash-table-ref _%gcht93474%_ _%key93469%_)))
              (if (eq? _%value93476%_ (macro-unused-obj))
                  _%default93470%_
                  _%value93476%_))
            (let ((_%$e93478%_ (&gc-table-immediate _%tab93468%_)))
              (if _%$e93478%_
                  ((lambda (_%immediate93481%_)
                     (immediate-table-ref
                      _%immediate93481%_
                      _%key93469%_
                      _%default93470%_))
                   _%$e93478%_)
                  _%default93470%_)))))
    (define gc-table-set!
      (lambda (_%tab93461%_ _%key93462%_ _%value93463%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93462%_)
            (let ((_%gcht93466%_ (__gc-table-e _%tab93461%_)))
              (if (##gc-hash-table-set!
                   _%gcht93466%_
                   _%key93462%_
                   _%value93463%_)
                  (begin
                    (__gc-table-rehash! _%tab93461%_)
                    (gc-table-set! _%tab93461%_ _%key93462%_ _%value93463%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab93461%_)
             _%key93462%_
             _%value93463%_))))
    (define gc-table-update!
      (lambda (_%tab93454%_ _%key93455%_ _%update93456%_ _%default93457%_)
        (if (##mem-allocated? _%key93455%_)
            (let ((_%value93459%_
                   (gc-table-ref _%tab93454%_ _%key93455%_ _%default93457%_)))
              (gc-table-set!
               _%tab93454%_
               _%key93455%_
               (_%update93456%_ _%value93459%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab93454%_)
             _%key93455%_
             _%update93456%_
             _%default93457%_))))
    (define gc-table-delete!
      (lambda (_%tab93442%_ _%key93443%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key93443%_)
            (let ((_%gcht93447%_ (__gc-table-e _%tab93442%_)))
              (if (##gc-hash-table-set!
                   _%gcht93447%_
                   _%key93443%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab93442%_)
                    (gc-table-delete! _%tab93442%_ _%key93443%_))
                  '#!void))
            (let ((_%$e93449%_ (&gc-table-immediate _%tab93442%_)))
              (if _%$e93449%_
                  ((lambda (_%immediate93452%_)
                     (immediate-table-delete! _%immediate93452%_ _%key93443%_))
                   _%$e93449%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab93423%_ _%proc93424%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht93427%_ (__gc-table-e _%tab93423%_)))
            (let _%loop93429%_ ((_%i93431%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i93431%_ (##vector-length _%gcht93427%_))
                  (let ((_%key93433%_ (##vector-ref _%gcht93427%_ _%i93431%_)))
                    (if (if (eq? _%key93433%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key93433%_ (macro-deleted-obj))))
                        (_%proc93424%_
                         _%key93433%_
                         (##vector-ref _%gcht93427%_ (##fx+ _%i93431%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop93429%_ (##fx+ _%i93431%_ '2))))
                  '#!void)))
          (let ((_%$e93437%_ (&gc-table-immediate _%tab93423%_)))
            (if _%$e93437%_
                ((lambda (_%immediate93440%_)
                   (raw-table-for-each _%immediate93440%_ _%proc93424%_))
                 _%$e93437%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab93411%_)
        (let* ((_%gcht93413%_ (__gc-table-e _%tab93411%_))
               (_%new-table93415%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht93413%_)
                 (macro-gc-hash-table-flags _%gcht93413%_)))
               (_%result93417%_
                (##structure
                 (##structure-type _%tab93411%_)
                 _%new-table93415%_
                 '#f)))
          (gc-table-for-each
           _%tab93411%_
           (lambda (_%k93420%_ _%v93421%_)
             (gc-table-set! _%result93417%_ _%k93420%_ _%v93421%_)))
          _%result93417%_)))
    (define gc-table-clear!
      (lambda (_%tab93404%_)
        (let* ((_%gcht93406%_ (__gc-table-e _%tab93404%_))
               (_%new-table93408%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht93406%_))))
          (&gc-table-gcht-set! _%tab93404%_ _%new-table93408%_)
          (&gc-table-immediate-set! _%tab93404%_ '#f))))
    (define gc-table-length
      (lambda (_%tab93396%_)
        (let ((_%gcht93398%_ (__gc-table-e _%tab93396%_)))
          (fx+ (macro-gc-hash-table-count _%gcht93398%_)
               (let ((_%$e93400%_ (&gc-table-immediate _%tab93396%_)))
                 (if _%$e93400%_ (&raw-table-count _%$e93400%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj93381%_)
        (declare (not interrupts-enabled))
        (let ((_%val93384%_ (gc-table-ref __object-eq-hash _%obj93381%_ '#f)))
          (if _%val93384%_
              _%val93384%_
              (let* ((_%mix93386%_ __object-eq-hash-next)
                     (_%ptr93388%_ (##type-cast _%obj93381%_ '0))
                     (_%h93390%_
                      (fxand (fxxor _%mix93386%_ _%ptr93388%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e93393%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e93393%_ _%$e93393%_ '0)))
                (gc-table-set! __object-eq-hash _%obj93381%_ _%h93390%_)
                _%h93390%_)))))))
