(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1712773523)
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
      (lambda (_%tab91079%_)
        (##unchecked-structure-ref
         _%tab91079%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab91077%_)
        (##unchecked-structure-ref
         _%tab91077%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab91075%_)
        (##unchecked-structure-ref
         _%tab91075%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab91073%_)
        (##unchecked-structure-ref
         _%tab91073%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab91071%_)
        (##unchecked-structure-ref
         _%tab91071%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab91069%_)
        (##unchecked-structure-ref
         _%tab91069%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_%tab91066%_ _%val91067%_)
        (##unchecked-structure-set!
         _%tab91066%_
         _%val91067%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab91063%_ _%val91064%_)
        (##unchecked-structure-set!
         _%tab91063%_
         _%val91064%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab91060%_ _%val91061%_)
        (##unchecked-structure-set!
         _%tab91060%_
         _%val91061%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab91057%_ _%val91058%_)
        (##unchecked-structure-set!
         _%tab91057%_
         _%val91058%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab91054%_ _%val91055%_)
        (##unchecked-structure-set!
         _%tab91054%_
         _%val91055%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab91051%_ _%val91052%_)
        (##unchecked-structure-set!
         _%tab91051%_
         _%val91052%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint91049%_)
        (if (and (fixnum? _%size-hint91049%_) (##fx> _%size-hint91049%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint91049%_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint91025%_ _%hash91026%_ _%test91027%_ _%seed91028%_)
        (let* ((_%size91030%_ (raw-table-size-hint->size _%size-hint91025%_))
               (_%table91032%_
                (##make-vector _%size91030%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table91032%_
           '0
           (##fxquotient _%size91030%_ '2)
           _%hash91026%_
           _%test91027%_
           _%seed91028%_))))
    (define make-raw-table__0
      (lambda (_%size-hint91038%_ _%hash91039%_ _%test91040%_)
        (let ((_%seed91042%_ '0))
          (make-raw-table__%
           _%size-hint91038%_
           _%hash91039%_
           _%test91040%_
           _%seed91042%_))))
    (define make-raw-table
      (lambda _g91081_
        (let ((_g91080_ (##length _g91081_)))
          (cond ((##fx= _g91080_ 3) (apply make-raw-table__0 _g91081_))
                ((##fx= _g91080_ 4) (apply make-raw-table__% _g91081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g91081_))))))
    (define raw-table-ref
      (lambda (_%tab90976%_ _%key90977%_ _%default90978%_)
        (let ((_%table90980%_ (&raw-table-table _%tab90976%_))
              (_%seed90981%_ (&raw-table-seed _%tab90976%_))
              (_%hash90982%_ (&raw-table-hash _%tab90976%_))
              (_%test90983%_ (&raw-table-test _%tab90976%_)))
          (let* ((_%h90985%_
                  (fxxor (_%hash90982%_ _%key90977%_) _%seed90981%_))
                 (_%size90988%_ (vector-length _%table90980%_))
                 (_%entries90991%_ (##fxquotient _%size90988%_ '2))
                 (_%start90994%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90985%_ _%entries90991%_)
                   '1)))
            (let _%loop90998%_ ((_%probe91001%_ _%start90994%_)
                                (_%i91003%_ '1)
                                (_%deleted91005%_ '#f))
              (let ((_%k91008%_ (vector-ref _%table90980%_ _%probe91001%_)))
                (if (eq? _%k91008%_ (macro-unused-obj))
                    _%default90978%_
                    (if (eq? _%k91008%_ (macro-deleted-obj))
                        (_%loop90998%_
                         (let ((_%next-probe91013%_
                                (fx+ _%start90994%_
                                     _%i91003%_
                                     (fx* _%i91003%_ _%i91003%_))))
                           (##fxmodulo _%next-probe91013%_ _%size90988%_))
                         (##fx+ _%i91003%_ '1)
                         (let ((_%$e91016%_ _%deleted91005%_))
                           (if _%$e91016%_ _%$e91016%_ _%probe91001%_)))
                        (if (_%test90983%_ _%key90977%_ _%k91008%_)
                            (vector-ref
                             _%table90980%_
                             (##fx+ _%probe91001%_ '1))
                            (_%loop90998%_
                             (let ((_%next-probe91021%_
                                    (fx+ _%start90994%_
                                         _%i91003%_
                                         (fx* _%i91003%_ _%i91003%_))))
                               (##fxmodulo _%next-probe91021%_ _%size90988%_))
                             (##fx+ _%i91003%_ '1)
                             _%deleted91005%_))))))))))
    (define raw-table-set!
      (lambda (_%tab90972%_ _%key90973%_ _%value90974%_)
        (if (##fx< (&raw-table-free _%tab90972%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90972%_))
                    '4))
            (__raw-table-rehash! _%tab90972%_)
            '#!void)
        (__raw-table-set! _%tab90972%_ _%key90973%_ _%value90974%_)))
    (define raw-table-update!
      (lambda (_%tab90967%_ _%key90968%_ _%update90969%_ _%default90970%_)
        (if (##fx< (&raw-table-free _%tab90967%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90967%_))
                    '4))
            (__raw-table-rehash! _%tab90967%_)
            '#!void)
        (__raw-table-update!
         _%tab90967%_
         _%key90968%_
         _%update90969%_
         _%default90970%_)))
    (define raw-table-delete!
      (lambda (_%tab90924%_ _%key90925%_)
        (let ((_%table90927%_ (&raw-table-table _%tab90924%_))
              (_%seed90928%_ (&raw-table-seed _%tab90924%_))
              (_%hash90929%_ (&raw-table-hash _%tab90924%_))
              (_%test90930%_ (&raw-table-test _%tab90924%_)))
          (let* ((_%h90932%_
                  (fxxor (_%hash90929%_ _%key90925%_) _%seed90928%_))
                 (_%size90935%_ (vector-length _%table90927%_))
                 (_%entries90938%_ (##fxquotient _%size90935%_ '2))
                 (_%start90941%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90932%_ _%entries90938%_)
                   '1)))
            (let _%loop90945%_ ((_%probe90948%_ _%start90941%_)
                                (_%i90950%_ '1))
              (let ((_%k90953%_ (vector-ref _%table90927%_ _%probe90948%_)))
                (if (eq? _%k90953%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90953%_ (macro-deleted-obj))
                        (_%loop90945%_
                         (let ((_%next-probe90958%_
                                (fx+ _%start90941%_
                                     _%i90950%_
                                     (fx* _%i90950%_ _%i90950%_))))
                           (##fxmodulo _%next-probe90958%_ _%size90935%_))
                         (##fx+ _%i90950%_ '1))
                        (if (_%test90930%_ _%key90925%_ _%k90953%_)
                            (let ()
                              (vector-set!
                               _%table90927%_
                               _%probe90948%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90927%_
                               (##fx+ _%probe90948%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90924%_
                                  (##fx- (&raw-table-count _%tab90924%_)
                                         '1)))))
                            (_%loop90945%_
                             (let ((_%next-probe90964%_
                                    (fx+ _%start90941%_
                                         _%i90950%_
                                         (fx* _%i90950%_ _%i90950%_))))
                               (##fxmodulo _%next-probe90964%_ _%size90935%_))
                             (##fx+ _%i90950%_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_%tab90908%_ _%proc90909%_)
        (let* ((_%table90911%_ (&raw-table-table _%tab90908%_))
               (_%size90913%_ (vector-length _%table90911%_)))
          (let _%loop90916%_ ((_%i90918%_ '0))
            (if (##fx< _%i90918%_ _%size90913%_)
                (begin
                  (let ((_%key90920%_ (vector-ref _%table90911%_ _%i90918%_)))
                    (if (and (not (eq? _%key90920%_ (macro-unused-obj)))
                             (not (eq? _%key90920%_ (macro-deleted-obj))))
                        (let ((_%value90922%_
                               (vector-ref
                                _%table90911%_
                                (##fx+ _%i90918%_ '1))))
                          (_%proc90909%_ _%key90920%_ _%value90922%_))
                        '#!void))
                  (_%loop90916%_ (##fx+ _%i90918%_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_%tab90904%_)
        (let ((_%new-tab90906%_ (##structure-copy _%tab90904%_)))
          (&raw-table-table-set!
           _%new-tab90906%_
           (vector-copy (&raw-table-table _%tab90904%_)))
          _%new-tab90906%_)))
    (define raw-table-clear!
      (lambda (_%tab90902%_)
        (vector-fill! (&raw-table-table _%tab90902%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab90902%_ '0)
        (&raw-table-free-set!
         _%tab90902%_
         (##fxquotient (vector-length (&raw-table-table _%tab90902%_)) '2))))
    (define __raw-table-set!
      (lambda (_%tab90852%_ _%key90853%_ _%value90854%_)
        (let ((_%table90856%_ (&raw-table-table _%tab90852%_))
              (_%seed90857%_ (&raw-table-seed _%tab90852%_))
              (_%hash90858%_ (&raw-table-hash _%tab90852%_))
              (_%test90859%_ (&raw-table-test _%tab90852%_)))
          (let* ((_%h90861%_
                  (fxxor (_%hash90858%_ _%key90853%_) _%seed90857%_))
                 (_%size90864%_ (vector-length _%table90856%_))
                 (_%entries90867%_ (##fxquotient _%size90864%_ '2))
                 (_%start90870%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90861%_ _%entries90867%_)
                   '1)))
            (let _%loop90874%_ ((_%probe90877%_ _%start90870%_)
                                (_%i90879%_ '1)
                                (_%deleted90881%_ '#f))
              (let ((_%k90884%_ (vector-ref _%table90856%_ _%probe90877%_)))
                (if (eq? _%k90884%_ (macro-unused-obj))
                    (if _%deleted90881%_
                        (begin
                          (vector-set!
                           _%table90856%_
                           _%deleted90881%_
                           _%key90853%_)
                          (vector-set!
                           _%table90856%_
                           (##fx+ _%deleted90881%_ '1)
                           _%value90854%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90852%_
                              (##fx+ (&raw-table-count _%tab90852%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90856%_
                           _%probe90877%_
                           _%key90853%_)
                          (vector-set!
                           _%table90856%_
                           (##fx+ _%probe90877%_ '1)
                           _%value90854%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90852%_
                              (##fx- (&raw-table-free _%tab90852%_) '1))
                             (&raw-table-count-set!
                              _%tab90852%_
                              (##fx+ (&raw-table-count _%tab90852%_) '1))))))
                    (if (eq? _%k90884%_ (macro-deleted-obj))
                        (_%loop90874%_
                         (let ((_%next-probe90891%_
                                (fx+ _%start90870%_
                                     _%i90879%_
                                     (fx* _%i90879%_ _%i90879%_))))
                           (##fxmodulo _%next-probe90891%_ _%size90864%_))
                         (##fx+ _%i90879%_ '1)
                         (let ((_%$e90894%_ _%deleted90881%_))
                           (if _%$e90894%_ _%$e90894%_ _%probe90877%_)))
                        (if (_%test90859%_ _%key90853%_ _%k90884%_)
                            (let ()
                              (vector-set!
                               _%table90856%_
                               _%probe90877%_
                               _%key90853%_)
                              (vector-set!
                               _%table90856%_
                               (##fx+ _%probe90877%_ '1)
                               _%value90854%_))
                            (_%loop90874%_
                             (let ((_%next-probe90899%_
                                    (fx+ _%start90870%_
                                         _%i90879%_
                                         (fx* _%i90879%_ _%i90879%_))))
                               (##fxmodulo _%next-probe90899%_ _%size90864%_))
                             (##fx+ _%i90879%_ '1)
                             _%deleted90881%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab90801%_ _%key90802%_ _%update90803%_ _%default90804%_)
        (let ((_%table90806%_ (&raw-table-table _%tab90801%_))
              (_%seed90807%_ (&raw-table-seed _%tab90801%_))
              (_%hash90808%_ (&raw-table-hash _%tab90801%_))
              (_%test90809%_ (&raw-table-test _%tab90801%_)))
          (let* ((_%h90811%_
                  (fxxor (_%hash90808%_ _%key90802%_) _%seed90807%_))
                 (_%size90814%_ (vector-length _%table90806%_))
                 (_%entries90817%_ (##fxquotient _%size90814%_ '2))
                 (_%start90820%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90811%_ _%entries90817%_)
                   '1)))
            (let _%loop90824%_ ((_%probe90827%_ _%start90820%_)
                                (_%i90829%_ '1)
                                (_%deleted90831%_ '#f))
              (let ((_%k90834%_ (vector-ref _%table90806%_ _%probe90827%_)))
                (if (eq? _%k90834%_ (macro-unused-obj))
                    (if _%deleted90831%_
                        (begin
                          (vector-set!
                           _%table90806%_
                           _%deleted90831%_
                           _%key90802%_)
                          (vector-set!
                           _%table90806%_
                           (##fx+ _%deleted90831%_ '1)
                           (_%update90803%_ _%default90804%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90801%_
                              (##fx+ (&raw-table-count _%tab90801%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90806%_
                           _%probe90827%_
                           _%key90802%_)
                          (vector-set!
                           _%table90806%_
                           (##fx+ _%probe90827%_ '1)
                           (_%update90803%_ _%default90804%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90801%_
                              (##fx- (&raw-table-free _%tab90801%_) '1))
                             (&raw-table-count-set!
                              _%tab90801%_
                              (##fx+ (&raw-table-count _%tab90801%_) '1))))))
                    (if (eq? _%k90834%_ (macro-deleted-obj))
                        (_%loop90824%_
                         (let ((_%next-probe90841%_
                                (fx+ _%start90820%_
                                     _%i90829%_
                                     (fx* _%i90829%_ _%i90829%_))))
                           (##fxmodulo _%next-probe90841%_ _%size90814%_))
                         (##fx+ _%i90829%_ '1)
                         (let ((_%$e90844%_ _%deleted90831%_))
                           (if _%$e90844%_ _%$e90844%_ _%probe90827%_)))
                        (if (_%test90809%_ _%key90802%_ _%k90834%_)
                            (let ()
                              (vector-set!
                               _%table90806%_
                               _%probe90827%_
                               _%key90802%_)
                              (vector-set!
                               _%table90806%_
                               (##fx+ _%probe90827%_ '1)
                               (_%update90803%_
                                (vector-ref
                                 _%table90806%_
                                 (##fx+ _%probe90827%_ '1)))))
                            (_%loop90824%_
                             (let ((_%next-probe90849%_
                                    (fx+ _%start90820%_
                                         _%i90829%_
                                         (fx* _%i90829%_ _%i90829%_))))
                               (##fxmodulo _%next-probe90849%_ _%size90814%_))
                             (##fx+ _%i90829%_ '1)
                             _%deleted90831%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab90782%_)
        (let* ((_%old-table90784%_ (&raw-table-table _%tab90782%_))
               (_%old-size90786%_ (vector-length _%old-table90784%_))
               (_%new-size90788%_
                (if (##fx< (&raw-table-count _%tab90782%_)
                           (##fxquotient _%old-size90786%_ '4))
                    (vector-length _%old-table90784%_)
                    (##fx* '2 (vector-length _%old-table90784%_))))
               (_%new-table90790%_
                (##make-vector _%new-size90788%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab90782%_ _%new-table90790%_)
          (&raw-table-count-set! _%tab90782%_ '0)
          (&raw-table-free-set!
           _%tab90782%_
           (##fxquotient _%new-size90788%_ '2))
          (let _%lp90793%_ ((_%i90795%_ '0))
            (if (##fx< _%i90795%_ _%old-size90786%_)
                (begin
                  (let ((_%key90797%_
                         (vector-ref _%old-table90784%_ _%i90795%_)))
                    (if (and (not (eq? _%key90797%_ (macro-unused-obj)))
                             (not (eq? _%key90797%_ (macro-deleted-obj))))
                        (let ((_%value90799%_
                               (vector-ref
                                _%old-table90784%_
                                (##fx+ _%i90795%_ '1))))
                          (__raw-table-set!
                           _%tab90782%_
                           _%key90797%_
                           _%value90799%_))
                        '#!void))
                  (_%lp90793%_ (##fx+ _%i90795%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj90774%_)
        (let ((_%t90776%_ (##type _%obj90774%_)))
          (if (##fx= (##fxand _%t90776%_ '1) '0)
              (fxand (##type-cast _%obj90774%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj90774%_)
                  (symbolic-hash _%obj90774%_)
                  (if (procedure? _%obj90774%_)
                      (procedure-hash _%obj90774%_)
                      (fxand (__eq-hash _%obj90774%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj90770%_)
        (let ((_%h90772%_
               (if (##closure? _%obj90770%_)
                   (__eq-hash _%obj90770%_)
                   (##type-cast _%obj90770%_ '0))))
          (fxand _%h90772%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj90767%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj90767%_)))
    (define eqv-hash
      (lambda (_%obj90757%_)
        (letrec ((_%combine90759%_
                  (lambda (_%a90764%_ _%b90765%_)
                    (fxand (##fx* (##fx+ _%a90764%_
                                         (fxarithmetic-shift-left
                                          _%b90765%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash90760%_
                  (lambda (_%obj90762%_)
                    (macro-number-dispatch
                     _%obj90762%_
                     (eq-hash _%obj90762%_)
                     (fxand _%obj90762%_ (macro-max-fixnum32))
                     (modulo _%obj90762%_ '331804481)
                     (_%combine90759%_
                      (_%hash90760%_ (macro-ratnum-numerator _%obj90762%_))
                      (_%hash90760%_ (macro-ratnum-denominator _%obj90762%_)))
                     (_%combine90759%_
                      (##u16vector-ref _%obj90762%_ '0)
                      (_%combine90759%_
                       (##u16vector-ref _%obj90762%_ '1)
                       (_%combine90759%_
                        (##u16vector-ref _%obj90762%_ '2)
                        (##u16vector-ref _%obj90762%_ '3))))
                     (_%combine90759%_
                      (_%hash90760%_ (macro-cpxnum-real _%obj90762%_))
                      (_%hash90760%_ (macro-cpxnum-imag _%obj90762%_)))))))
          (_%hash90760%_ _%obj90757%_))))
    (define symbolic?
      (lambda (_%obj90752%_)
        (let ((_%$e90754%_ (symbol? _%obj90752%_)))
          (if _%$e90754%_ _%$e90754%_ (keyword? _%obj90752%_)))))
    (define symbolic-hash (lambda (_%obj90750%_) (macro-slot '1 _%obj90750%_)))
    (define string-hash (lambda (_%obj90748%_) (##string=?-hash _%obj90748%_)))
    (define immediate-hash
      (lambda (_%obj90746%_) (##type-cast _%obj90746%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint90727%_ _%seed90729%_)
        (make-raw-table__% _%size-hint90727%_ eq-hash eq? _%seed90729%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint90735%_ '#f) (_%seed90737%_ '0))
          (make-eq-table__% _%size-hint90735%_ _%seed90737%_))))
    (define make-eq-table__1
      (lambda (_%size-hint90739%_)
        (let ((_%seed90741%_ '0))
          (make-eq-table__% _%size-hint90739%_ _%seed90741%_))))
    (define make-eq-table
      (lambda _g91083_
        (let ((_g91082_ (##length _g91083_)))
          (cond ((##fx= _g91082_ 0) (apply make-eq-table__0 _g91083_))
                ((##fx= _g91082_ 1) (apply make-eq-table__1 _g91083_))
                ((##fx= _g91082_ 2) (apply make-eq-table__% _g91083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g91083_))))))
    (define eq-table-ref
      (lambda (_%tab90680%_ _%key90681%_ _%default90682%_)
        (let ((_%table90684%_ (&raw-table-table _%tab90680%_))
              (_%seed90685%_ (&raw-table-seed _%tab90680%_)))
          (let* ((_%h90687%_ (fxxor (eq-hash _%key90681%_) _%seed90685%_))
                 (_%size90690%_ (vector-length _%table90684%_))
                 (_%entries90693%_ (##fxquotient _%size90690%_ '2))
                 (_%start90696%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90687%_ _%entries90693%_)
                   '1)))
            (let _%loop90700%_ ((_%probe90703%_ _%start90696%_)
                                (_%i90705%_ '1)
                                (_%deleted90707%_ '#f))
              (let ((_%k90710%_ (vector-ref _%table90684%_ _%probe90703%_)))
                (if (eq? _%k90710%_ (macro-unused-obj))
                    _%default90682%_
                    (if (eq? _%k90710%_ (macro-deleted-obj))
                        (_%loop90700%_
                         (let ((_%next-probe90715%_
                                (fx+ _%start90696%_
                                     _%i90705%_
                                     (fx* _%i90705%_ _%i90705%_))))
                           (##fxmodulo _%next-probe90715%_ _%size90690%_))
                         (##fx+ _%i90705%_ '1)
                         (let ((_%$e90718%_ _%deleted90707%_))
                           (if _%$e90718%_ _%$e90718%_ _%probe90703%_)))
                        (if (eq? _%key90681%_ _%k90710%_)
                            (vector-ref
                             _%table90684%_
                             (##fx+ _%probe90703%_ '1))
                            (_%loop90700%_
                             (let ((_%next-probe90723%_
                                    (fx+ _%start90696%_
                                         _%i90705%_
                                         (fx* _%i90705%_ _%i90705%_))))
                               (##fxmodulo _%next-probe90723%_ _%size90690%_))
                             (##fx+ _%i90705%_ '1)
                             _%deleted90707%_))))))))))
    (define eq-table-set!
      (lambda (_%tab90676%_ _%key90677%_ _%value90678%_)
        (if (##fx< (&raw-table-free _%tab90676%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90676%_))
                    '4))
            (__raw-table-rehash! _%tab90676%_)
            '#!void)
        (__eq-table-set! _%tab90676%_ _%key90677%_ _%value90678%_)))
    (define __eq-table-set!
      (lambda (_%tab90627%_ _%key90628%_ _%value90629%_)
        (let ((_%table90632%_ (&raw-table-table _%tab90627%_))
              (_%seed90633%_ (&raw-table-seed _%tab90627%_)))
          (let* ((_%h90635%_ (fxxor (eq-hash _%key90628%_) _%seed90633%_))
                 (_%size90638%_ (vector-length _%table90632%_))
                 (_%entries90641%_ (##fxquotient _%size90638%_ '2))
                 (_%start90644%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90635%_ _%entries90641%_)
                   '1)))
            (let _%loop90648%_ ((_%probe90651%_ _%start90644%_)
                                (_%i90653%_ '1)
                                (_%deleted90655%_ '#f))
              (let ((_%k90658%_ (vector-ref _%table90632%_ _%probe90651%_)))
                (if (eq? _%k90658%_ (macro-unused-obj))
                    (if _%deleted90655%_
                        (begin
                          (vector-set!
                           _%table90632%_
                           _%deleted90655%_
                           _%key90628%_)
                          (vector-set!
                           _%table90632%_
                           (##fx+ _%deleted90655%_ '1)
                           _%value90629%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90627%_
                              (##fx+ (&raw-table-count _%tab90627%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90632%_
                           _%probe90651%_
                           _%key90628%_)
                          (vector-set!
                           _%table90632%_
                           (##fx+ _%probe90651%_ '1)
                           _%value90629%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90627%_
                              (##fx- (&raw-table-free _%tab90627%_) '1))
                             (&raw-table-count-set!
                              _%tab90627%_
                              (##fx+ (&raw-table-count _%tab90627%_) '1))))))
                    (if (eq? _%k90658%_ (macro-deleted-obj))
                        (_%loop90648%_
                         (let ((_%next-probe90665%_
                                (fx+ _%start90644%_
                                     _%i90653%_
                                     (fx* _%i90653%_ _%i90653%_))))
                           (##fxmodulo _%next-probe90665%_ _%size90638%_))
                         (##fx+ _%i90653%_ '1)
                         (let ((_%$e90668%_ _%deleted90655%_))
                           (if _%$e90668%_ _%$e90668%_ _%probe90651%_)))
                        (if (eq? _%key90628%_ _%k90658%_)
                            (let ()
                              (vector-set!
                               _%table90632%_
                               _%probe90651%_
                               _%key90628%_)
                              (vector-set!
                               _%table90632%_
                               (##fx+ _%probe90651%_ '1)
                               _%value90629%_))
                            (_%loop90648%_
                             (let ((_%next-probe90673%_
                                    (fx+ _%start90644%_
                                         _%i90653%_
                                         (fx* _%i90653%_ _%i90653%_))))
                               (##fxmodulo _%next-probe90673%_ _%size90638%_))
                             (##fx+ _%i90653%_ '1)
                             _%deleted90655%_))))))))))
    (define eq-table-update!
      (lambda (_%tab90622%_
               _%key90623%_
               _%eq-table-update!90624%_
               _%default90625%_)
        (if (##fx< (&raw-table-free _%tab90622%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90622%_))
                    '4))
            (__raw-table-rehash! _%tab90622%_)
            '#!void)
        (__eq-table-update!
         _%tab90622%_
         _%key90623%_
         _%eq-table-update!90624%_
         _%default90625%_)))
    (define __eq-table-update!
      (lambda (_%tab90572%_
               _%key90573%_
               _%eq-table-update!90574%_
               _%default90575%_)
        (let ((_%table90578%_ (&raw-table-table _%tab90572%_))
              (_%seed90579%_ (&raw-table-seed _%tab90572%_)))
          (let* ((_%h90581%_ (fxxor (eq-hash _%key90573%_) _%seed90579%_))
                 (_%size90584%_ (vector-length _%table90578%_))
                 (_%entries90587%_ (##fxquotient _%size90584%_ '2))
                 (_%start90590%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90581%_ _%entries90587%_)
                   '1)))
            (let _%loop90594%_ ((_%probe90597%_ _%start90590%_)
                                (_%i90599%_ '1)
                                (_%deleted90601%_ '#f))
              (let ((_%k90604%_ (vector-ref _%table90578%_ _%probe90597%_)))
                (if (eq? _%k90604%_ (macro-unused-obj))
                    (if _%deleted90601%_
                        (begin
                          (vector-set!
                           _%table90578%_
                           _%deleted90601%_
                           _%key90573%_)
                          (vector-set!
                           _%table90578%_
                           (##fx+ _%deleted90601%_ '1)
                           (_%eq-table-update!90574%_ _%default90575%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90572%_
                              (##fx+ (&raw-table-count _%tab90572%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90578%_
                           _%probe90597%_
                           _%key90573%_)
                          (vector-set!
                           _%table90578%_
                           (##fx+ _%probe90597%_ '1)
                           (_%eq-table-update!90574%_ _%default90575%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90572%_
                              (##fx- (&raw-table-free _%tab90572%_) '1))
                             (&raw-table-count-set!
                              _%tab90572%_
                              (##fx+ (&raw-table-count _%tab90572%_) '1))))))
                    (if (eq? _%k90604%_ (macro-deleted-obj))
                        (_%loop90594%_
                         (let ((_%next-probe90611%_
                                (fx+ _%start90590%_
                                     _%i90599%_
                                     (fx* _%i90599%_ _%i90599%_))))
                           (##fxmodulo _%next-probe90611%_ _%size90584%_))
                         (##fx+ _%i90599%_ '1)
                         (let ((_%$e90614%_ _%deleted90601%_))
                           (if _%$e90614%_ _%$e90614%_ _%probe90597%_)))
                        (if (eq? _%key90573%_ _%k90604%_)
                            (let ()
                              (vector-set!
                               _%table90578%_
                               _%probe90597%_
                               _%key90573%_)
                              (vector-set!
                               _%table90578%_
                               (##fx+ _%probe90597%_ '1)
                               (_%eq-table-update!90574%_
                                (vector-ref
                                 _%table90578%_
                                 (##fx+ _%probe90597%_ '1)))))
                            (_%loop90594%_
                             (let ((_%next-probe90619%_
                                    (fx+ _%start90590%_
                                         _%i90599%_
                                         (fx* _%i90599%_ _%i90599%_))))
                               (##fxmodulo _%next-probe90619%_ _%size90584%_))
                             (##fx+ _%i90599%_ '1)
                             _%deleted90601%_))))))))))
    (define eq-table-delete!
      (lambda (_%tab90527%_ _%key90529%_)
        (let ((_%table90532%_ (&raw-table-table _%tab90527%_))
              (_%seed90534%_ (&raw-table-seed _%tab90527%_)))
          (let* ((_%h90537%_ (fxxor (eq-hash _%key90529%_) _%seed90534%_))
                 (_%size90540%_ (vector-length _%table90532%_))
                 (_%entries90543%_ (##fxquotient _%size90540%_ '2))
                 (_%start90546%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90537%_ _%entries90543%_)
                   '1)))
            (let _%loop90550%_ ((_%probe90553%_ _%start90546%_)
                                (_%i90555%_ '1))
              (let ((_%k90558%_ (vector-ref _%table90532%_ _%probe90553%_)))
                (if (eq? _%k90558%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90558%_ (macro-deleted-obj))
                        (_%loop90550%_
                         (let ((_%next-probe90563%_
                                (fx+ _%start90546%_
                                     _%i90555%_
                                     (fx* _%i90555%_ _%i90555%_))))
                           (##fxmodulo _%next-probe90563%_ _%size90540%_))
                         (##fx+ _%i90555%_ '1))
                        (if (eq? _%key90529%_ _%k90558%_)
                            (let ()
                              (vector-set!
                               _%table90532%_
                               _%probe90553%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90532%_
                               (##fx+ _%probe90553%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90527%_
                                  (##fx- (&raw-table-count _%tab90527%_)
                                         '1)))))
                            (_%loop90550%_
                             (let ((_%next-probe90569%_
                                    (fx+ _%start90546%_
                                         _%i90555%_
                                         (fx* _%i90555%_ _%i90555%_))))
                               (##fxmodulo _%next-probe90569%_ _%size90540%_))
                             (##fx+ _%i90555%_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_%size-hint90508%_ _%seed90510%_)
        (make-raw-table__% _%size-hint90508%_ eqv-hash eqv? _%seed90510%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint90516%_ '#f) (_%seed90518%_ '0))
          (make-eqv-table__% _%size-hint90516%_ _%seed90518%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint90520%_)
        (let ((_%seed90522%_ '0))
          (make-eqv-table__% _%size-hint90520%_ _%seed90522%_))))
    (define make-eqv-table
      (lambda _g91085_
        (let ((_g91084_ (##length _g91085_)))
          (cond ((##fx= _g91084_ 0) (apply make-eqv-table__0 _g91085_))
                ((##fx= _g91084_ 1) (apply make-eqv-table__1 _g91085_))
                ((##fx= _g91084_ 2) (apply make-eqv-table__% _g91085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g91085_))))))
    (define eqv-table-ref
      (lambda (_%tab90461%_ _%key90462%_ _%default90463%_)
        (let ((_%table90465%_ (&raw-table-table _%tab90461%_))
              (_%seed90466%_ (&raw-table-seed _%tab90461%_)))
          (let* ((_%h90468%_ (fxxor (eqv-hash _%key90462%_) _%seed90466%_))
                 (_%size90471%_ (vector-length _%table90465%_))
                 (_%entries90474%_ (##fxquotient _%size90471%_ '2))
                 (_%start90477%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90468%_ _%entries90474%_)
                   '1)))
            (let _%loop90481%_ ((_%probe90484%_ _%start90477%_)
                                (_%i90486%_ '1)
                                (_%deleted90488%_ '#f))
              (let ((_%k90491%_ (vector-ref _%table90465%_ _%probe90484%_)))
                (if (eq? _%k90491%_ (macro-unused-obj))
                    _%default90463%_
                    (if (eq? _%k90491%_ (macro-deleted-obj))
                        (_%loop90481%_
                         (let ((_%next-probe90496%_
                                (fx+ _%start90477%_
                                     _%i90486%_
                                     (fx* _%i90486%_ _%i90486%_))))
                           (##fxmodulo _%next-probe90496%_ _%size90471%_))
                         (##fx+ _%i90486%_ '1)
                         (let ((_%$e90499%_ _%deleted90488%_))
                           (if _%$e90499%_ _%$e90499%_ _%probe90484%_)))
                        (if (eqv? _%key90462%_ _%k90491%_)
                            (vector-ref
                             _%table90465%_
                             (##fx+ _%probe90484%_ '1))
                            (_%loop90481%_
                             (let ((_%next-probe90504%_
                                    (fx+ _%start90477%_
                                         _%i90486%_
                                         (fx* _%i90486%_ _%i90486%_))))
                               (##fxmodulo _%next-probe90504%_ _%size90471%_))
                             (##fx+ _%i90486%_ '1)
                             _%deleted90488%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab90457%_ _%key90458%_ _%value90459%_)
        (if (##fx< (&raw-table-free _%tab90457%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90457%_))
                    '4))
            (__raw-table-rehash! _%tab90457%_)
            '#!void)
        (__eqv-table-set! _%tab90457%_ _%key90458%_ _%value90459%_)))
    (define __eqv-table-set!
      (lambda (_%tab90408%_ _%key90409%_ _%value90410%_)
        (let ((_%table90413%_ (&raw-table-table _%tab90408%_))
              (_%seed90414%_ (&raw-table-seed _%tab90408%_)))
          (let* ((_%h90416%_ (fxxor (eqv-hash _%key90409%_) _%seed90414%_))
                 (_%size90419%_ (vector-length _%table90413%_))
                 (_%entries90422%_ (##fxquotient _%size90419%_ '2))
                 (_%start90425%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90416%_ _%entries90422%_)
                   '1)))
            (let _%loop90429%_ ((_%probe90432%_ _%start90425%_)
                                (_%i90434%_ '1)
                                (_%deleted90436%_ '#f))
              (let ((_%k90439%_ (vector-ref _%table90413%_ _%probe90432%_)))
                (if (eq? _%k90439%_ (macro-unused-obj))
                    (if _%deleted90436%_
                        (begin
                          (vector-set!
                           _%table90413%_
                           _%deleted90436%_
                           _%key90409%_)
                          (vector-set!
                           _%table90413%_
                           (##fx+ _%deleted90436%_ '1)
                           _%value90410%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90408%_
                              (##fx+ (&raw-table-count _%tab90408%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90413%_
                           _%probe90432%_
                           _%key90409%_)
                          (vector-set!
                           _%table90413%_
                           (##fx+ _%probe90432%_ '1)
                           _%value90410%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90408%_
                              (##fx- (&raw-table-free _%tab90408%_) '1))
                             (&raw-table-count-set!
                              _%tab90408%_
                              (##fx+ (&raw-table-count _%tab90408%_) '1))))))
                    (if (eq? _%k90439%_ (macro-deleted-obj))
                        (_%loop90429%_
                         (let ((_%next-probe90446%_
                                (fx+ _%start90425%_
                                     _%i90434%_
                                     (fx* _%i90434%_ _%i90434%_))))
                           (##fxmodulo _%next-probe90446%_ _%size90419%_))
                         (##fx+ _%i90434%_ '1)
                         (let ((_%$e90449%_ _%deleted90436%_))
                           (if _%$e90449%_ _%$e90449%_ _%probe90432%_)))
                        (if (eqv? _%key90409%_ _%k90439%_)
                            (let ()
                              (vector-set!
                               _%table90413%_
                               _%probe90432%_
                               _%key90409%_)
                              (vector-set!
                               _%table90413%_
                               (##fx+ _%probe90432%_ '1)
                               _%value90410%_))
                            (_%loop90429%_
                             (let ((_%next-probe90454%_
                                    (fx+ _%start90425%_
                                         _%i90434%_
                                         (fx* _%i90434%_ _%i90434%_))))
                               (##fxmodulo _%next-probe90454%_ _%size90419%_))
                             (##fx+ _%i90434%_ '1)
                             _%deleted90436%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab90403%_
               _%key90404%_
               _%eqv-table-update!90405%_
               _%default90406%_)
        (if (##fx< (&raw-table-free _%tab90403%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90403%_))
                    '4))
            (__raw-table-rehash! _%tab90403%_)
            '#!void)
        (__eqv-table-update!
         _%tab90403%_
         _%key90404%_
         _%eqv-table-update!90405%_
         _%default90406%_)))
    (define __eqv-table-update!
      (lambda (_%tab90353%_
               _%key90354%_
               _%eqv-table-update!90355%_
               _%default90356%_)
        (let ((_%table90359%_ (&raw-table-table _%tab90353%_))
              (_%seed90360%_ (&raw-table-seed _%tab90353%_)))
          (let* ((_%h90362%_ (fxxor (eqv-hash _%key90354%_) _%seed90360%_))
                 (_%size90365%_ (vector-length _%table90359%_))
                 (_%entries90368%_ (##fxquotient _%size90365%_ '2))
                 (_%start90371%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90362%_ _%entries90368%_)
                   '1)))
            (let _%loop90375%_ ((_%probe90378%_ _%start90371%_)
                                (_%i90380%_ '1)
                                (_%deleted90382%_ '#f))
              (let ((_%k90385%_ (vector-ref _%table90359%_ _%probe90378%_)))
                (if (eq? _%k90385%_ (macro-unused-obj))
                    (if _%deleted90382%_
                        (begin
                          (vector-set!
                           _%table90359%_
                           _%deleted90382%_
                           _%key90354%_)
                          (vector-set!
                           _%table90359%_
                           (##fx+ _%deleted90382%_ '1)
                           (_%eqv-table-update!90355%_ _%default90356%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90353%_
                              (##fx+ (&raw-table-count _%tab90353%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90359%_
                           _%probe90378%_
                           _%key90354%_)
                          (vector-set!
                           _%table90359%_
                           (##fx+ _%probe90378%_ '1)
                           (_%eqv-table-update!90355%_ _%default90356%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90353%_
                              (##fx- (&raw-table-free _%tab90353%_) '1))
                             (&raw-table-count-set!
                              _%tab90353%_
                              (##fx+ (&raw-table-count _%tab90353%_) '1))))))
                    (if (eq? _%k90385%_ (macro-deleted-obj))
                        (_%loop90375%_
                         (let ((_%next-probe90392%_
                                (fx+ _%start90371%_
                                     _%i90380%_
                                     (fx* _%i90380%_ _%i90380%_))))
                           (##fxmodulo _%next-probe90392%_ _%size90365%_))
                         (##fx+ _%i90380%_ '1)
                         (let ((_%$e90395%_ _%deleted90382%_))
                           (if _%$e90395%_ _%$e90395%_ _%probe90378%_)))
                        (if (eqv? _%key90354%_ _%k90385%_)
                            (let ()
                              (vector-set!
                               _%table90359%_
                               _%probe90378%_
                               _%key90354%_)
                              (vector-set!
                               _%table90359%_
                               (##fx+ _%probe90378%_ '1)
                               (_%eqv-table-update!90355%_
                                (vector-ref
                                 _%table90359%_
                                 (##fx+ _%probe90378%_ '1)))))
                            (_%loop90375%_
                             (let ((_%next-probe90400%_
                                    (fx+ _%start90371%_
                                         _%i90380%_
                                         (fx* _%i90380%_ _%i90380%_))))
                               (##fxmodulo _%next-probe90400%_ _%size90365%_))
                             (##fx+ _%i90380%_ '1)
                             _%deleted90382%_))))))))))
    (define eqv-table-delete!
      (lambda (_%tab90308%_ _%key90310%_)
        (let ((_%table90313%_ (&raw-table-table _%tab90308%_))
              (_%seed90315%_ (&raw-table-seed _%tab90308%_)))
          (let* ((_%h90318%_ (fxxor (eqv-hash _%key90310%_) _%seed90315%_))
                 (_%size90321%_ (vector-length _%table90313%_))
                 (_%entries90324%_ (##fxquotient _%size90321%_ '2))
                 (_%start90327%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90318%_ _%entries90324%_)
                   '1)))
            (let _%loop90331%_ ((_%probe90334%_ _%start90327%_)
                                (_%i90336%_ '1))
              (let ((_%k90339%_ (vector-ref _%table90313%_ _%probe90334%_)))
                (if (eq? _%k90339%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90339%_ (macro-deleted-obj))
                        (_%loop90331%_
                         (let ((_%next-probe90344%_
                                (fx+ _%start90327%_
                                     _%i90336%_
                                     (fx* _%i90336%_ _%i90336%_))))
                           (##fxmodulo _%next-probe90344%_ _%size90321%_))
                         (##fx+ _%i90336%_ '1))
                        (if (eqv? _%key90310%_ _%k90339%_)
                            (let ()
                              (vector-set!
                               _%table90313%_
                               _%probe90334%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90313%_
                               (##fx+ _%probe90334%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90308%_
                                  (##fx- (&raw-table-count _%tab90308%_)
                                         '1)))))
                            (_%loop90331%_
                             (let ((_%next-probe90350%_
                                    (fx+ _%start90327%_
                                         _%i90336%_
                                         (fx* _%i90336%_ _%i90336%_))))
                               (##fxmodulo _%next-probe90350%_ _%size90321%_))
                             (##fx+ _%i90336%_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_%size-hint90289%_ _%seed90291%_)
        (make-raw-table__%
         _%size-hint90289%_
         symbolic-hash
         eq?
         _%seed90291%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint90297%_ '#f) (_%seed90299%_ '0))
          (make-symbolic-table__% _%size-hint90297%_ _%seed90299%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint90301%_)
        (let ((_%seed90303%_ '0))
          (make-symbolic-table__% _%size-hint90301%_ _%seed90303%_))))
    (define make-symbolic-table
      (lambda _g91087_
        (let ((_g91086_ (##length _g91087_)))
          (cond ((##fx= _g91086_ 0) (apply make-symbolic-table__0 _g91087_))
                ((##fx= _g91086_ 1) (apply make-symbolic-table__1 _g91087_))
                ((##fx= _g91086_ 2) (apply make-symbolic-table__% _g91087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g91087_))))))
    (define symbolic-table-ref
      (lambda (_%tab90242%_ _%key90243%_ _%default90244%_)
        (let ((_%table90246%_ (&raw-table-table _%tab90242%_))
              (_%seed90247%_ (&raw-table-seed _%tab90242%_)))
          (let* ((_%h90249%_
                  (fxxor (symbolic-hash _%key90243%_) _%seed90247%_))
                 (_%size90252%_ (vector-length _%table90246%_))
                 (_%entries90255%_ (##fxquotient _%size90252%_ '2))
                 (_%start90258%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90249%_ _%entries90255%_)
                   '1)))
            (let _%loop90262%_ ((_%probe90265%_ _%start90258%_)
                                (_%i90267%_ '1)
                                (_%deleted90269%_ '#f))
              (let ((_%k90272%_ (vector-ref _%table90246%_ _%probe90265%_)))
                (if (eq? _%k90272%_ (macro-unused-obj))
                    _%default90244%_
                    (if (eq? _%k90272%_ (macro-deleted-obj))
                        (_%loop90262%_
                         (let ((_%next-probe90277%_
                                (fx+ _%start90258%_
                                     _%i90267%_
                                     (fx* _%i90267%_ _%i90267%_))))
                           (##fxmodulo _%next-probe90277%_ _%size90252%_))
                         (##fx+ _%i90267%_ '1)
                         (let ((_%$e90280%_ _%deleted90269%_))
                           (if _%$e90280%_ _%$e90280%_ _%probe90265%_)))
                        (if (eq? _%key90243%_ _%k90272%_)
                            (vector-ref
                             _%table90246%_
                             (##fx+ _%probe90265%_ '1))
                            (_%loop90262%_
                             (let ((_%next-probe90285%_
                                    (fx+ _%start90258%_
                                         _%i90267%_
                                         (fx* _%i90267%_ _%i90267%_))))
                               (##fxmodulo _%next-probe90285%_ _%size90252%_))
                             (##fx+ _%i90267%_ '1)
                             _%deleted90269%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab90238%_ _%key90239%_ _%value90240%_)
        (if (##fx< (&raw-table-free _%tab90238%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90238%_))
                    '4))
            (__raw-table-rehash! _%tab90238%_)
            '#!void)
        (__symbolic-table-set! _%tab90238%_ _%key90239%_ _%value90240%_)))
    (define __symbolic-table-set!
      (lambda (_%tab90189%_ _%key90190%_ _%value90191%_)
        (let ((_%table90194%_ (&raw-table-table _%tab90189%_))
              (_%seed90195%_ (&raw-table-seed _%tab90189%_)))
          (let* ((_%h90197%_
                  (fxxor (symbolic-hash _%key90190%_) _%seed90195%_))
                 (_%size90200%_ (vector-length _%table90194%_))
                 (_%entries90203%_ (##fxquotient _%size90200%_ '2))
                 (_%start90206%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90197%_ _%entries90203%_)
                   '1)))
            (let _%loop90210%_ ((_%probe90213%_ _%start90206%_)
                                (_%i90215%_ '1)
                                (_%deleted90217%_ '#f))
              (let ((_%k90220%_ (vector-ref _%table90194%_ _%probe90213%_)))
                (if (eq? _%k90220%_ (macro-unused-obj))
                    (if _%deleted90217%_
                        (begin
                          (vector-set!
                           _%table90194%_
                           _%deleted90217%_
                           _%key90190%_)
                          (vector-set!
                           _%table90194%_
                           (##fx+ _%deleted90217%_ '1)
                           _%value90191%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90189%_
                              (##fx+ (&raw-table-count _%tab90189%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90194%_
                           _%probe90213%_
                           _%key90190%_)
                          (vector-set!
                           _%table90194%_
                           (##fx+ _%probe90213%_ '1)
                           _%value90191%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90189%_
                              (##fx- (&raw-table-free _%tab90189%_) '1))
                             (&raw-table-count-set!
                              _%tab90189%_
                              (##fx+ (&raw-table-count _%tab90189%_) '1))))))
                    (if (eq? _%k90220%_ (macro-deleted-obj))
                        (_%loop90210%_
                         (let ((_%next-probe90227%_
                                (fx+ _%start90206%_
                                     _%i90215%_
                                     (fx* _%i90215%_ _%i90215%_))))
                           (##fxmodulo _%next-probe90227%_ _%size90200%_))
                         (##fx+ _%i90215%_ '1)
                         (let ((_%$e90230%_ _%deleted90217%_))
                           (if _%$e90230%_ _%$e90230%_ _%probe90213%_)))
                        (if (eq? _%key90190%_ _%k90220%_)
                            (let ()
                              (vector-set!
                               _%table90194%_
                               _%probe90213%_
                               _%key90190%_)
                              (vector-set!
                               _%table90194%_
                               (##fx+ _%probe90213%_ '1)
                               _%value90191%_))
                            (_%loop90210%_
                             (let ((_%next-probe90235%_
                                    (fx+ _%start90206%_
                                         _%i90215%_
                                         (fx* _%i90215%_ _%i90215%_))))
                               (##fxmodulo _%next-probe90235%_ _%size90200%_))
                             (##fx+ _%i90215%_ '1)
                             _%deleted90217%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab90184%_
               _%key90185%_
               _%symbolic-table-update!90186%_
               _%default90187%_)
        (if (##fx< (&raw-table-free _%tab90184%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90184%_))
                    '4))
            (__raw-table-rehash! _%tab90184%_)
            '#!void)
        (__symbolic-table-update!
         _%tab90184%_
         _%key90185%_
         _%symbolic-table-update!90186%_
         _%default90187%_)))
    (define __symbolic-table-update!
      (lambda (_%tab90134%_
               _%key90135%_
               _%symbolic-table-update!90136%_
               _%default90137%_)
        (let ((_%table90140%_ (&raw-table-table _%tab90134%_))
              (_%seed90141%_ (&raw-table-seed _%tab90134%_)))
          (let* ((_%h90143%_
                  (fxxor (symbolic-hash _%key90135%_) _%seed90141%_))
                 (_%size90146%_ (vector-length _%table90140%_))
                 (_%entries90149%_ (##fxquotient _%size90146%_ '2))
                 (_%start90152%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90143%_ _%entries90149%_)
                   '1)))
            (let _%loop90156%_ ((_%probe90159%_ _%start90152%_)
                                (_%i90161%_ '1)
                                (_%deleted90163%_ '#f))
              (let ((_%k90166%_ (vector-ref _%table90140%_ _%probe90159%_)))
                (if (eq? _%k90166%_ (macro-unused-obj))
                    (if _%deleted90163%_
                        (begin
                          (vector-set!
                           _%table90140%_
                           _%deleted90163%_
                           _%key90135%_)
                          (vector-set!
                           _%table90140%_
                           (##fx+ _%deleted90163%_ '1)
                           (_%symbolic-table-update!90136%_ _%default90137%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab90134%_
                              (##fx+ (&raw-table-count _%tab90134%_) '1)))))
                        (begin
                          (vector-set!
                           _%table90140%_
                           _%probe90159%_
                           _%key90135%_)
                          (vector-set!
                           _%table90140%_
                           (##fx+ _%probe90159%_ '1)
                           (_%symbolic-table-update!90136%_ _%default90137%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab90134%_
                              (##fx- (&raw-table-free _%tab90134%_) '1))
                             (&raw-table-count-set!
                              _%tab90134%_
                              (##fx+ (&raw-table-count _%tab90134%_) '1))))))
                    (if (eq? _%k90166%_ (macro-deleted-obj))
                        (_%loop90156%_
                         (let ((_%next-probe90173%_
                                (fx+ _%start90152%_
                                     _%i90161%_
                                     (fx* _%i90161%_ _%i90161%_))))
                           (##fxmodulo _%next-probe90173%_ _%size90146%_))
                         (##fx+ _%i90161%_ '1)
                         (let ((_%$e90176%_ _%deleted90163%_))
                           (if _%$e90176%_ _%$e90176%_ _%probe90159%_)))
                        (if (eq? _%key90135%_ _%k90166%_)
                            (let ()
                              (vector-set!
                               _%table90140%_
                               _%probe90159%_
                               _%key90135%_)
                              (vector-set!
                               _%table90140%_
                               (##fx+ _%probe90159%_ '1)
                               (_%symbolic-table-update!90136%_
                                (vector-ref
                                 _%table90140%_
                                 (##fx+ _%probe90159%_ '1)))))
                            (_%loop90156%_
                             (let ((_%next-probe90181%_
                                    (fx+ _%start90152%_
                                         _%i90161%_
                                         (fx* _%i90161%_ _%i90161%_))))
                               (##fxmodulo _%next-probe90181%_ _%size90146%_))
                             (##fx+ _%i90161%_ '1)
                             _%deleted90163%_))))))))))
    (define symbolic-table-delete!
      (lambda (_%tab90089%_ _%key90091%_)
        (let ((_%table90094%_ (&raw-table-table _%tab90089%_))
              (_%seed90096%_ (&raw-table-seed _%tab90089%_)))
          (let* ((_%h90099%_
                  (fxxor (symbolic-hash _%key90091%_) _%seed90096%_))
                 (_%size90102%_ (vector-length _%table90094%_))
                 (_%entries90105%_ (##fxquotient _%size90102%_ '2))
                 (_%start90108%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90099%_ _%entries90105%_)
                   '1)))
            (let _%loop90112%_ ((_%probe90115%_ _%start90108%_)
                                (_%i90117%_ '1))
              (let ((_%k90120%_ (vector-ref _%table90094%_ _%probe90115%_)))
                (if (eq? _%k90120%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k90120%_ (macro-deleted-obj))
                        (_%loop90112%_
                         (let ((_%next-probe90125%_
                                (fx+ _%start90108%_
                                     _%i90117%_
                                     (fx* _%i90117%_ _%i90117%_))))
                           (##fxmodulo _%next-probe90125%_ _%size90102%_))
                         (##fx+ _%i90117%_ '1))
                        (if (eq? _%key90091%_ _%k90120%_)
                            (let ()
                              (vector-set!
                               _%table90094%_
                               _%probe90115%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table90094%_
                               (##fx+ _%probe90115%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab90089%_
                                  (##fx- (&raw-table-count _%tab90089%_)
                                         '1)))))
                            (_%loop90112%_
                             (let ((_%next-probe90131%_
                                    (fx+ _%start90108%_
                                         _%i90117%_
                                         (fx* _%i90117%_ _%i90117%_))))
                               (##fxmodulo _%next-probe90131%_ _%size90102%_))
                             (##fx+ _%i90117%_ '1)))))))))))
    (define make-string-table__%
      (lambda (_%size-hint90070%_ _%seed90072%_)
        (make-raw-table__%
         _%size-hint90070%_
         string-hash
         ##string=?
         _%seed90072%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint90078%_ '#f) (_%seed90080%_ '0))
          (make-string-table__% _%size-hint90078%_ _%seed90080%_))))
    (define make-string-table__1
      (lambda (_%size-hint90082%_)
        (let ((_%seed90084%_ '0))
          (make-string-table__% _%size-hint90082%_ _%seed90084%_))))
    (define make-string-table
      (lambda _g91089_
        (let ((_g91088_ (##length _g91089_)))
          (cond ((##fx= _g91088_ 0) (apply make-string-table__0 _g91089_))
                ((##fx= _g91088_ 1) (apply make-string-table__1 _g91089_))
                ((##fx= _g91088_ 2) (apply make-string-table__% _g91089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g91089_))))))
    (define string-table-ref
      (lambda (_%tab90023%_ _%key90024%_ _%default90025%_)
        (let ((_%table90027%_ (&raw-table-table _%tab90023%_))
              (_%seed90028%_ (&raw-table-seed _%tab90023%_)))
          (let* ((_%h90030%_
                  (fxxor (##string=?-hash _%key90024%_) _%seed90028%_))
                 (_%size90033%_ (vector-length _%table90027%_))
                 (_%entries90036%_ (##fxquotient _%size90033%_ '2))
                 (_%start90039%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h90030%_ _%entries90036%_)
                   '1)))
            (let _%loop90043%_ ((_%probe90046%_ _%start90039%_)
                                (_%i90048%_ '1)
                                (_%deleted90050%_ '#f))
              (let ((_%k90053%_ (vector-ref _%table90027%_ _%probe90046%_)))
                (if (eq? _%k90053%_ (macro-unused-obj))
                    _%default90025%_
                    (if (eq? _%k90053%_ (macro-deleted-obj))
                        (_%loop90043%_
                         (let ((_%next-probe90058%_
                                (fx+ _%start90039%_
                                     _%i90048%_
                                     (fx* _%i90048%_ _%i90048%_))))
                           (##fxmodulo _%next-probe90058%_ _%size90033%_))
                         (##fx+ _%i90048%_ '1)
                         (let ((_%$e90061%_ _%deleted90050%_))
                           (if _%$e90061%_ _%$e90061%_ _%probe90046%_)))
                        (if (##string=? _%key90024%_ _%k90053%_)
                            (vector-ref
                             _%table90027%_
                             (##fx+ _%probe90046%_ '1))
                            (_%loop90043%_
                             (let ((_%next-probe90066%_
                                    (fx+ _%start90039%_
                                         _%i90048%_
                                         (fx* _%i90048%_ _%i90048%_))))
                               (##fxmodulo _%next-probe90066%_ _%size90033%_))
                             (##fx+ _%i90048%_ '1)
                             _%deleted90050%_))))))))))
    (define string-table-set!
      (lambda (_%tab90019%_ _%key90020%_ _%value90021%_)
        (if (##fx< (&raw-table-free _%tab90019%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab90019%_))
                    '4))
            (__raw-table-rehash! _%tab90019%_)
            '#!void)
        (__string-table-set! _%tab90019%_ _%key90020%_ _%value90021%_)))
    (define __string-table-set!
      (lambda (_%tab89970%_ _%key89971%_ _%value89972%_)
        (let ((_%table89975%_ (&raw-table-table _%tab89970%_))
              (_%seed89976%_ (&raw-table-seed _%tab89970%_)))
          (let* ((_%h89978%_
                  (fxxor (##string=?-hash _%key89971%_) _%seed89976%_))
                 (_%size89981%_ (vector-length _%table89975%_))
                 (_%entries89984%_ (##fxquotient _%size89981%_ '2))
                 (_%start89987%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89978%_ _%entries89984%_)
                   '1)))
            (let _%loop89991%_ ((_%probe89994%_ _%start89987%_)
                                (_%i89996%_ '1)
                                (_%deleted89998%_ '#f))
              (let ((_%k90001%_ (vector-ref _%table89975%_ _%probe89994%_)))
                (if (eq? _%k90001%_ (macro-unused-obj))
                    (if _%deleted89998%_
                        (begin
                          (vector-set!
                           _%table89975%_
                           _%deleted89998%_
                           _%key89971%_)
                          (vector-set!
                           _%table89975%_
                           (##fx+ _%deleted89998%_ '1)
                           _%value89972%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89970%_
                              (##fx+ (&raw-table-count _%tab89970%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89975%_
                           _%probe89994%_
                           _%key89971%_)
                          (vector-set!
                           _%table89975%_
                           (##fx+ _%probe89994%_ '1)
                           _%value89972%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89970%_
                              (##fx- (&raw-table-free _%tab89970%_) '1))
                             (&raw-table-count-set!
                              _%tab89970%_
                              (##fx+ (&raw-table-count _%tab89970%_) '1))))))
                    (if (eq? _%k90001%_ (macro-deleted-obj))
                        (_%loop89991%_
                         (let ((_%next-probe90008%_
                                (fx+ _%start89987%_
                                     _%i89996%_
                                     (fx* _%i89996%_ _%i89996%_))))
                           (##fxmodulo _%next-probe90008%_ _%size89981%_))
                         (##fx+ _%i89996%_ '1)
                         (let ((_%$e90011%_ _%deleted89998%_))
                           (if _%$e90011%_ _%$e90011%_ _%probe89994%_)))
                        (if (##string=? _%key89971%_ _%k90001%_)
                            (let ()
                              (vector-set!
                               _%table89975%_
                               _%probe89994%_
                               _%key89971%_)
                              (vector-set!
                               _%table89975%_
                               (##fx+ _%probe89994%_ '1)
                               _%value89972%_))
                            (_%loop89991%_
                             (let ((_%next-probe90016%_
                                    (fx+ _%start89987%_
                                         _%i89996%_
                                         (fx* _%i89996%_ _%i89996%_))))
                               (##fxmodulo _%next-probe90016%_ _%size89981%_))
                             (##fx+ _%i89996%_ '1)
                             _%deleted89998%_))))))))))
    (define string-table-update!
      (lambda (_%tab89965%_
               _%key89966%_
               _%string-table-update!89967%_
               _%default89968%_)
        (if (##fx< (&raw-table-free _%tab89965%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89965%_))
                    '4))
            (__raw-table-rehash! _%tab89965%_)
            '#!void)
        (__string-table-update!
         _%tab89965%_
         _%key89966%_
         _%string-table-update!89967%_
         _%default89968%_)))
    (define __string-table-update!
      (lambda (_%tab89915%_
               _%key89916%_
               _%string-table-update!89917%_
               _%default89918%_)
        (let ((_%table89921%_ (&raw-table-table _%tab89915%_))
              (_%seed89922%_ (&raw-table-seed _%tab89915%_)))
          (let* ((_%h89924%_
                  (fxxor (##string=?-hash _%key89916%_) _%seed89922%_))
                 (_%size89927%_ (vector-length _%table89921%_))
                 (_%entries89930%_ (##fxquotient _%size89927%_ '2))
                 (_%start89933%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89924%_ _%entries89930%_)
                   '1)))
            (let _%loop89937%_ ((_%probe89940%_ _%start89933%_)
                                (_%i89942%_ '1)
                                (_%deleted89944%_ '#f))
              (let ((_%k89947%_ (vector-ref _%table89921%_ _%probe89940%_)))
                (if (eq? _%k89947%_ (macro-unused-obj))
                    (if _%deleted89944%_
                        (begin
                          (vector-set!
                           _%table89921%_
                           _%deleted89944%_
                           _%key89916%_)
                          (vector-set!
                           _%table89921%_
                           (##fx+ _%deleted89944%_ '1)
                           (_%string-table-update!89917%_ _%default89918%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89915%_
                              (##fx+ (&raw-table-count _%tab89915%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89921%_
                           _%probe89940%_
                           _%key89916%_)
                          (vector-set!
                           _%table89921%_
                           (##fx+ _%probe89940%_ '1)
                           (_%string-table-update!89917%_ _%default89918%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89915%_
                              (##fx- (&raw-table-free _%tab89915%_) '1))
                             (&raw-table-count-set!
                              _%tab89915%_
                              (##fx+ (&raw-table-count _%tab89915%_) '1))))))
                    (if (eq? _%k89947%_ (macro-deleted-obj))
                        (_%loop89937%_
                         (let ((_%next-probe89954%_
                                (fx+ _%start89933%_
                                     _%i89942%_
                                     (fx* _%i89942%_ _%i89942%_))))
                           (##fxmodulo _%next-probe89954%_ _%size89927%_))
                         (##fx+ _%i89942%_ '1)
                         (let ((_%$e89957%_ _%deleted89944%_))
                           (if _%$e89957%_ _%$e89957%_ _%probe89940%_)))
                        (if (##string=? _%key89916%_ _%k89947%_)
                            (let ()
                              (vector-set!
                               _%table89921%_
                               _%probe89940%_
                               _%key89916%_)
                              (vector-set!
                               _%table89921%_
                               (##fx+ _%probe89940%_ '1)
                               (_%string-table-update!89917%_
                                (vector-ref
                                 _%table89921%_
                                 (##fx+ _%probe89940%_ '1)))))
                            (_%loop89937%_
                             (let ((_%next-probe89962%_
                                    (fx+ _%start89933%_
                                         _%i89942%_
                                         (fx* _%i89942%_ _%i89942%_))))
                               (##fxmodulo _%next-probe89962%_ _%size89927%_))
                             (##fx+ _%i89942%_ '1)
                             _%deleted89944%_))))))))))
    (define string-table-delete!
      (lambda (_%tab89870%_ _%key89872%_)
        (let ((_%table89875%_ (&raw-table-table _%tab89870%_))
              (_%seed89877%_ (&raw-table-seed _%tab89870%_)))
          (let* ((_%h89880%_
                  (fxxor (##string=?-hash _%key89872%_) _%seed89877%_))
                 (_%size89883%_ (vector-length _%table89875%_))
                 (_%entries89886%_ (##fxquotient _%size89883%_ '2))
                 (_%start89889%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89880%_ _%entries89886%_)
                   '1)))
            (let _%loop89893%_ ((_%probe89896%_ _%start89889%_)
                                (_%i89898%_ '1))
              (let ((_%k89901%_ (vector-ref _%table89875%_ _%probe89896%_)))
                (if (eq? _%k89901%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k89901%_ (macro-deleted-obj))
                        (_%loop89893%_
                         (let ((_%next-probe89906%_
                                (fx+ _%start89889%_
                                     _%i89898%_
                                     (fx* _%i89898%_ _%i89898%_))))
                           (##fxmodulo _%next-probe89906%_ _%size89883%_))
                         (##fx+ _%i89898%_ '1))
                        (if (##string=? _%key89872%_ _%k89901%_)
                            (let ()
                              (vector-set!
                               _%table89875%_
                               _%probe89896%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89875%_
                               (##fx+ _%probe89896%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89870%_
                                  (##fx- (&raw-table-count _%tab89870%_)
                                         '1)))))
                            (_%loop89893%_
                             (let ((_%next-probe89912%_
                                    (fx+ _%start89889%_
                                         _%i89898%_
                                         (fx* _%i89898%_ _%i89898%_))))
                               (##fxmodulo _%next-probe89912%_ _%size89883%_))
                             (##fx+ _%i89898%_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_%size-hint89851%_ _%seed89853%_)
        (make-raw-table__%
         _%size-hint89851%_
         immediate-hash
         eq?
         _%seed89853%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint89859%_ '#f) (_%seed89861%_ '0))
          (make-immediate-table__% _%size-hint89859%_ _%seed89861%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint89863%_)
        (let ((_%seed89865%_ '0))
          (make-immediate-table__% _%size-hint89863%_ _%seed89865%_))))
    (define make-immediate-table
      (lambda _g91091_
        (let ((_g91090_ (##length _g91091_)))
          (cond ((##fx= _g91090_ 0) (apply make-immediate-table__0 _g91091_))
                ((##fx= _g91090_ 1) (apply make-immediate-table__1 _g91091_))
                ((##fx= _g91090_ 2) (apply make-immediate-table__% _g91091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g91091_))))))
    (define immediate-table-ref
      (lambda (_%tab89804%_ _%key89805%_ _%default89806%_)
        (let ((_%table89808%_ (&raw-table-table _%tab89804%_))
              (_%seed89809%_ (&raw-table-seed _%tab89804%_)))
          (let* ((_%h89811%_
                  (fxxor (immediate-hash _%key89805%_) _%seed89809%_))
                 (_%size89814%_ (vector-length _%table89808%_))
                 (_%entries89817%_ (##fxquotient _%size89814%_ '2))
                 (_%start89820%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89811%_ _%entries89817%_)
                   '1)))
            (let _%loop89824%_ ((_%probe89827%_ _%start89820%_)
                                (_%i89829%_ '1)
                                (_%deleted89831%_ '#f))
              (let ((_%k89834%_ (vector-ref _%table89808%_ _%probe89827%_)))
                (if (eq? _%k89834%_ (macro-unused-obj))
                    _%default89806%_
                    (if (eq? _%k89834%_ (macro-deleted-obj))
                        (_%loop89824%_
                         (let ((_%next-probe89839%_
                                (fx+ _%start89820%_
                                     _%i89829%_
                                     (fx* _%i89829%_ _%i89829%_))))
                           (##fxmodulo _%next-probe89839%_ _%size89814%_))
                         (##fx+ _%i89829%_ '1)
                         (let ((_%$e89842%_ _%deleted89831%_))
                           (if _%$e89842%_ _%$e89842%_ _%probe89827%_)))
                        (if (eq? _%key89805%_ _%k89834%_)
                            (vector-ref
                             _%table89808%_
                             (##fx+ _%probe89827%_ '1))
                            (_%loop89824%_
                             (let ((_%next-probe89847%_
                                    (fx+ _%start89820%_
                                         _%i89829%_
                                         (fx* _%i89829%_ _%i89829%_))))
                               (##fxmodulo _%next-probe89847%_ _%size89814%_))
                             (##fx+ _%i89829%_ '1)
                             _%deleted89831%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab89800%_ _%key89801%_ _%value89802%_)
        (if (##fx< (&raw-table-free _%tab89800%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89800%_))
                    '4))
            (__raw-table-rehash! _%tab89800%_)
            '#!void)
        (__immediate-table-set! _%tab89800%_ _%key89801%_ _%value89802%_)))
    (define __immediate-table-set!
      (lambda (_%tab89751%_ _%key89752%_ _%value89753%_)
        (let ((_%table89756%_ (&raw-table-table _%tab89751%_))
              (_%seed89757%_ (&raw-table-seed _%tab89751%_)))
          (let* ((_%h89759%_
                  (fxxor (immediate-hash _%key89752%_) _%seed89757%_))
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
                    (if _%deleted89779%_
                        (begin
                          (vector-set!
                           _%table89756%_
                           _%deleted89779%_
                           _%key89752%_)
                          (vector-set!
                           _%table89756%_
                           (##fx+ _%deleted89779%_ '1)
                           _%value89753%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89751%_
                              (##fx+ (&raw-table-count _%tab89751%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89756%_
                           _%probe89775%_
                           _%key89752%_)
                          (vector-set!
                           _%table89756%_
                           (##fx+ _%probe89775%_ '1)
                           _%value89753%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89751%_
                              (##fx- (&raw-table-free _%tab89751%_) '1))
                             (&raw-table-count-set!
                              _%tab89751%_
                              (##fx+ (&raw-table-count _%tab89751%_) '1))))))
                    (if (eq? _%k89782%_ (macro-deleted-obj))
                        (_%loop89772%_
                         (let ((_%next-probe89789%_
                                (fx+ _%start89768%_
                                     _%i89777%_
                                     (fx* _%i89777%_ _%i89777%_))))
                           (##fxmodulo _%next-probe89789%_ _%size89762%_))
                         (##fx+ _%i89777%_ '1)
                         (let ((_%$e89792%_ _%deleted89779%_))
                           (if _%$e89792%_ _%$e89792%_ _%probe89775%_)))
                        (if (eq? _%key89752%_ _%k89782%_)
                            (let ()
                              (vector-set!
                               _%table89756%_
                               _%probe89775%_
                               _%key89752%_)
                              (vector-set!
                               _%table89756%_
                               (##fx+ _%probe89775%_ '1)
                               _%value89753%_))
                            (_%loop89772%_
                             (let ((_%next-probe89797%_
                                    (fx+ _%start89768%_
                                         _%i89777%_
                                         (fx* _%i89777%_ _%i89777%_))))
                               (##fxmodulo _%next-probe89797%_ _%size89762%_))
                             (##fx+ _%i89777%_ '1)
                             _%deleted89779%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab89746%_
               _%key89747%_
               _%immediate-table-update!89748%_
               _%default89749%_)
        (if (##fx< (&raw-table-free _%tab89746%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab89746%_))
                    '4))
            (__raw-table-rehash! _%tab89746%_)
            '#!void)
        (__immediate-table-update!
         _%tab89746%_
         _%key89747%_
         _%immediate-table-update!89748%_
         _%default89749%_)))
    (define __immediate-table-update!
      (lambda (_%tab89696%_
               _%key89697%_
               _%immediate-table-update!89698%_
               _%default89699%_)
        (let ((_%table89702%_ (&raw-table-table _%tab89696%_))
              (_%seed89703%_ (&raw-table-seed _%tab89696%_)))
          (let* ((_%h89705%_
                  (fxxor (immediate-hash _%key89697%_) _%seed89703%_))
                 (_%size89708%_ (vector-length _%table89702%_))
                 (_%entries89711%_ (##fxquotient _%size89708%_ '2))
                 (_%start89714%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89705%_ _%entries89711%_)
                   '1)))
            (let _%loop89718%_ ((_%probe89721%_ _%start89714%_)
                                (_%i89723%_ '1)
                                (_%deleted89725%_ '#f))
              (let ((_%k89728%_ (vector-ref _%table89702%_ _%probe89721%_)))
                (if (eq? _%k89728%_ (macro-unused-obj))
                    (if _%deleted89725%_
                        (begin
                          (vector-set!
                           _%table89702%_
                           _%deleted89725%_
                           _%key89697%_)
                          (vector-set!
                           _%table89702%_
                           (##fx+ _%deleted89725%_ '1)
                           (_%immediate-table-update!89698%_ _%default89699%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab89696%_
                              (##fx+ (&raw-table-count _%tab89696%_) '1)))))
                        (begin
                          (vector-set!
                           _%table89702%_
                           _%probe89721%_
                           _%key89697%_)
                          (vector-set!
                           _%table89702%_
                           (##fx+ _%probe89721%_ '1)
                           (_%immediate-table-update!89698%_ _%default89699%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab89696%_
                              (##fx- (&raw-table-free _%tab89696%_) '1))
                             (&raw-table-count-set!
                              _%tab89696%_
                              (##fx+ (&raw-table-count _%tab89696%_) '1))))))
                    (if (eq? _%k89728%_ (macro-deleted-obj))
                        (_%loop89718%_
                         (let ((_%next-probe89735%_
                                (fx+ _%start89714%_
                                     _%i89723%_
                                     (fx* _%i89723%_ _%i89723%_))))
                           (##fxmodulo _%next-probe89735%_ _%size89708%_))
                         (##fx+ _%i89723%_ '1)
                         (let ((_%$e89738%_ _%deleted89725%_))
                           (if _%$e89738%_ _%$e89738%_ _%probe89721%_)))
                        (if (eq? _%key89697%_ _%k89728%_)
                            (let ()
                              (vector-set!
                               _%table89702%_
                               _%probe89721%_
                               _%key89697%_)
                              (vector-set!
                               _%table89702%_
                               (##fx+ _%probe89721%_ '1)
                               (_%immediate-table-update!89698%_
                                (vector-ref
                                 _%table89702%_
                                 (##fx+ _%probe89721%_ '1)))))
                            (_%loop89718%_
                             (let ((_%next-probe89743%_
                                    (fx+ _%start89714%_
                                         _%i89723%_
                                         (fx* _%i89723%_ _%i89723%_))))
                               (##fxmodulo _%next-probe89743%_ _%size89708%_))
                             (##fx+ _%i89723%_ '1)
                             _%deleted89725%_))))))))))
    (define immediate-table-delete!
      (lambda (_%tab89651%_ _%key89653%_)
        (let ((_%table89656%_ (&raw-table-table _%tab89651%_))
              (_%seed89658%_ (&raw-table-seed _%tab89651%_)))
          (let* ((_%h89661%_
                  (fxxor (immediate-hash _%key89653%_) _%seed89658%_))
                 (_%size89664%_ (vector-length _%table89656%_))
                 (_%entries89667%_ (##fxquotient _%size89664%_ '2))
                 (_%start89670%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h89661%_ _%entries89667%_)
                   '1)))
            (let _%loop89674%_ ((_%probe89677%_ _%start89670%_)
                                (_%i89679%_ '1))
              (let ((_%k89682%_ (vector-ref _%table89656%_ _%probe89677%_)))
                (if (eq? _%k89682%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k89682%_ (macro-deleted-obj))
                        (_%loop89674%_
                         (let ((_%next-probe89687%_
                                (fx+ _%start89670%_
                                     _%i89679%_
                                     (fx* _%i89679%_ _%i89679%_))))
                           (##fxmodulo _%next-probe89687%_ _%size89664%_))
                         (##fx+ _%i89679%_ '1))
                        (if (eq? _%key89653%_ _%k89682%_)
                            (let ()
                              (vector-set!
                               _%table89656%_
                               _%probe89677%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table89656%_
                               (##fx+ _%probe89677%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab89651%_
                                  (##fx- (&raw-table-count _%tab89651%_)
                                         '1)))))
                            (_%loop89674%_
                             (let ((_%next-probe89693%_
                                    (fx+ _%start89670%_
                                         _%i89679%_
                                         (fx* _%i89679%_ _%i89679%_))))
                               (##fxmodulo _%next-probe89693%_ _%size89664%_))
                             (##fx+ _%i89679%_ '1)))))))))))
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
      (lambda (_%tab89649%_)
        (##unchecked-structure-ref
         _%tab89649%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab89647%_)
        (##unchecked-structure-ref
         _%tab89647%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_%tab89644%_ _%val89645%_)
        (##unchecked-structure-set!
         _%tab89644%_
         _%val89645%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab89641%_ _%val89642%_)
        (##unchecked-structure-set!
         _%tab89641%_
         _%val89642%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint89617%_ _%klass89618%_ _%flags89619%_)
        (let ((_%gcht89621%_
               (__gc-table-new
                (if (fixnum? _%size-hint89617%_) _%size-hint89617%_ '16)
                _%flags89619%_)))
          (##structure _%klass89618%_ _%gcht89621%_ '#f))))
    (define make-gc-table__0
      (lambda (_%size-hint89626%_)
        (let* ((_%klass89628%_ __gc-table::t) (_%flags89630%_ '0))
          (make-gc-table__%
           _%size-hint89626%_
           _%klass89628%_
           _%flags89630%_))))
    (define make-gc-table__1
      (lambda (_%size-hint89632%_ _%klass89633%_)
        (let ((_%flags89635%_ '0))
          (make-gc-table__%
           _%size-hint89632%_
           _%klass89633%_
           _%flags89635%_))))
    (define make-gc-table
      (lambda _g91093_
        (let ((_g91092_ (##length _g91093_)))
          (cond ((##fx= _g91092_ 1) (apply make-gc-table__0 _g91093_))
                ((##fx= _g91092_ 2) (apply make-gc-table__1 _g91093_))
                ((##fx= _g91092_ 3) (apply make-gc-table__% _g91093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g91093_))))))
    (define __gc-table-immediate
      (lambda (_%tab89608%_)
        (let ((_%$e89610%_ (&gc-table-immediate _%tab89608%_)))
          (if _%$e89610%_
              _%$e89610%_
              (let ((_%immediate89614%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab89608%_ _%immediate89614%_)
                _%immediate89614%_)))))
    (define __gc-table-new
      (lambda (_%size89598%_ _%flags89599%_)
        (let* ((_%flags89601%_
                (##fxand _%flags89599%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags89603%_
                (fxior _%flags89601%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht89605%_
                (##gc-hash-table-allocate
                 _%size89598%_
                 _%flags89603%_
                 __gc-table-loads)))
          _%gcht89605%_)))
    (define __gc-table-e
      (lambda (_%tab89593%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht89596%_ (&gc-table-gcht _%tab89593%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht89596%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht89596%_
              (begin
                (__gc-table-rehash! _%tab89593%_)
                (&gc-table-gcht _%tab89593%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab89584%_)
        (let* ((_%old-table89586%_ (&gc-table-gcht _%tab89584%_))
               (_%new-table89588%_
                (##gc-hash-table-resize! _%old-table89586%_ __gc-table-loads))
               (_%gcht89590%_
                (##gc-hash-table-rehash!
                 _%old-table89586%_
                 _%new-table89588%_)))
          (&gc-table-gcht-set! _%tab89584%_ _%gcht89590%_))))
    (define gc-table-ref
      (lambda (_%tab89568%_ _%key89569%_ _%default89570%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89569%_)
            (let* ((_%gcht89574%_ (__gc-table-e _%tab89568%_))
                   (_%value89576%_
                    (##gc-hash-table-ref _%gcht89574%_ _%key89569%_)))
              (if (eq? _%value89576%_ (macro-unused-obj))
                  _%default89570%_
                  _%value89576%_))
            (let ((_%$e89578%_ (&gc-table-immediate _%tab89568%_)))
              (if _%$e89578%_
                  ((lambda (_%immediate89581%_)
                     (immediate-table-ref
                      _%immediate89581%_
                      _%key89569%_
                      _%default89570%_))
                   _%$e89578%_)
                  _%default89570%_)))))
    (define gc-table-set!
      (lambda (_%tab89561%_ _%key89562%_ _%value89563%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89562%_)
            (let ((_%gcht89566%_ (__gc-table-e _%tab89561%_)))
              (if (##gc-hash-table-set!
                   _%gcht89566%_
                   _%key89562%_
                   _%value89563%_)
                  (begin
                    (__gc-table-rehash! _%tab89561%_)
                    (gc-table-set! _%tab89561%_ _%key89562%_ _%value89563%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab89561%_)
             _%key89562%_
             _%value89563%_))))
    (define gc-table-update!
      (lambda (_%tab89554%_ _%key89555%_ _%update89556%_ _%default89557%_)
        (if (##mem-allocated? _%key89555%_)
            (let ((_%value89559%_
                   (gc-table-ref _%tab89554%_ _%key89555%_ _%default89557%_)))
              (gc-table-set!
               _%tab89554%_
               _%key89555%_
               (_%update89556%_ _%value89559%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab89554%_)
             _%key89555%_
             _%update89556%_
             _%default89557%_))))
    (define gc-table-delete!
      (lambda (_%tab89542%_ _%key89543%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key89543%_)
            (let ((_%gcht89547%_ (__gc-table-e _%tab89542%_)))
              (if (##gc-hash-table-set!
                   _%gcht89547%_
                   _%key89543%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab89542%_)
                    (gc-table-delete! _%tab89542%_ _%key89543%_))
                  '#!void))
            (let ((_%$e89549%_ (&gc-table-immediate _%tab89542%_)))
              (if _%$e89549%_
                  ((lambda (_%immediate89552%_)
                     (immediate-table-delete! _%immediate89552%_ _%key89543%_))
                   _%$e89549%_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_%tab89523%_ _%proc89524%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht89527%_ (__gc-table-e _%tab89523%_)))
            (let _%loop89529%_ ((_%i89531%_ (macro-gc-hash-table-key0)))
              (if (##fx< _%i89531%_ (##vector-length _%gcht89527%_))
                  (let ((_%key89533%_ (##vector-ref _%gcht89527%_ _%i89531%_)))
                    (if (and (not (eq? _%key89533%_ (macro-unused-obj)))
                             (not (eq? _%key89533%_ (macro-deleted-obj))))
                        (_%proc89524%_
                         _%key89533%_
                         (##vector-ref _%gcht89527%_ (##fx+ _%i89531%_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_%loop89529%_ (##fx+ _%i89531%_ '2))))
                  '#!void)))
          (let ((_%$e89537%_ (&gc-table-immediate _%tab89523%_)))
            (if _%$e89537%_
                ((lambda (_%immediate89540%_)
                   (raw-table-for-each _%immediate89540%_ _%proc89524%_))
                 _%$e89537%_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_%tab89511%_)
        (let* ((_%gcht89513%_ (__gc-table-e _%tab89511%_))
               (_%new-table89515%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht89513%_)
                 (macro-gc-hash-table-flags _%gcht89513%_)))
               (_%result89517%_
                (##structure
                 (##structure-type _%tab89511%_)
                 _%new-table89515%_
                 '#f)))
          (gc-table-for-each
           _%tab89511%_
           (lambda (_%k89520%_ _%v89521%_)
             (gc-table-set! _%result89517%_ _%k89520%_ _%v89521%_)))
          _%result89517%_)))
    (define gc-table-clear!
      (lambda (_%tab89504%_)
        (let* ((_%gcht89506%_ (__gc-table-e _%tab89504%_))
               (_%new-table89508%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht89506%_))))
          (&gc-table-gcht-set! _%tab89504%_ _%new-table89508%_)
          (&gc-table-immediate-set! _%tab89504%_ '#f))))
    (define gc-table-length
      (lambda (_%tab89496%_)
        (let ((_%gcht89498%_ (__gc-table-e _%tab89496%_)))
          (fx+ (macro-gc-hash-table-count _%gcht89498%_)
               (let ((_%$e89500%_ (&gc-table-immediate _%tab89496%_)))
                 (if _%$e89500%_ (&raw-table-count _%$e89500%_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj89481%_)
        (declare (not interrupts-enabled))
        (let ((_%val89484%_ (gc-table-ref __object-eq-hash _%obj89481%_ '#f)))
          (if _%val89484%_
              _%val89484%_
              (let* ((_%mix89486%_ __object-eq-hash-next)
                     (_%ptr89488%_ (##type-cast _%obj89481%_ '0))
                     (_%h89490%_
                      (fxand (fxxor _%mix89486%_ _%ptr89488%_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_%$e89493%_ (##fx+? __object-eq-hash-next '1)))
                        (if _%$e89493%_ _%$e89493%_ '0)))
                (gc-table-set! __object-eq-hash _%obj89481%_ _%h89490%_)
                _%h89490%_)))))))
