(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27271_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24825%_)
        (letrec ((_%body-opt?24828%_
                  (lambda (_%key24831%_)
                    (let ((__tmp27243 (gx#stx-e _%key24831%_)))
                      (declare (not safe))
                      (##memq __tmp27243
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _%stx24825%_ _%body-opt?24828%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22591%_
               _%id22593%_
               _%super-ref22594%_
               _%slots22595%_
               _%body22596%_)
        (letrec ((_%wrap22598%_
                  (lambda (_%e-stx24822%_)
                    (gx#stx-wrap-source
                     _%e-stx24822%_
                     (gx#stx-source _%stx22591%_))))
                 (_%make-id22600%_
                  (lambda _%args24819%_
                    (apply gx#stx-identifier _%id22593%_ _%args24819%_)))
                 (_%get-mixin-slots22601%_
                  (lambda (_%super24789%_ _%slots24791%_)
                    (letrec* ((_%tab24793%_ (make-hash-table-eq))
                              (_%dedup24795%_
                               (lambda (_%mixins24806%_)
                                 (let _%lp24809%_ ((_%rest24812%_
                                                    _%mixins24806%_)
                                                   (_%r24814%_ '()))
                                   (if (pair? _%rest24812%_)
                                       (let ((_%slot24816%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24812%_))))
                                         (if (hash-get
                                              _%tab24793%_
                                              _%slot24816%_)
                                             (_%lp24809%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24812%_))
                                              _%r24814%_)
                                             (begin
                                               (hash-put!
                                                _%tab24793%_
                                                _%slot24816%_
                                                '#t)
                                               (_%lp24809%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24812%_))
                                                (cons _%slot24816%_
                                                      _%r24814%_)))))
                                       (reverse _%r24814%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24797%_)
                         (hash-put! _%tab24793%_ (gx#stx-e _%slot24797%_) '#t))
                       _%slots24791%_)
                      (if (not _%super24789%_)
                          '()
                          (if (gx#identifier? _%super24789%_)
                              (_%dedup24795%_
                               (_%get-mixin-slots-r22602%_ _%super24789%_))
                              (_%dedup24795%_
                               (concatenate
                                (map _%get-mixin-slots-r22602%_
                                     _%super24789%_))))))))
                 (_%get-mixin-slots-r22602%_
                  (lambda (_%type-id24783%_)
                    (let ((_%info24786%_
                           (gx#syntax-local-value _%type-id24783%_)))
                      (let ((__tmp27245
                             (let ((__obj27060 _%info24786%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27060
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27060
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27060
                                    'slots))))
                            (__tmp27244
                             (concatenate
                              (map _%get-mixin-slots-r22602%_
                                   (let ((__obj27061 _%info24786%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27061
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27061
                                            '3
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27061
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27245 __tmp27244))))))
          (gx#check-duplicate-identifiers _%slots22595%_ _%stx22591%_)
          (let* ((_%name22604%_ (symbol->string (gx#stx-e _%id22593%_)))
                 (_%super22607%_
                  (map gx#syntax-local-value _%super-ref22594%_))
                 (_%struct?22610%_ (gx#stx-getq 'struct: _%body22596%_))
                 (_%g2261322621%_
                  (lambda (_%g2261422617%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2261422617%_)))
                 (_%g2261224779%_
                  (lambda (_%g2261422625%_)
                    ((lambda (_%L22628%_)
                       (let* ((_%g2264422652%_
                               (lambda (_%g2264522648%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2264522648%_)))
                              (_%g2264324775%_
                               (lambda (_%g2264522656%_)
                                 ((lambda (_%L22659%_)
                                    (let* ((_%g2267222680%_
                                            (lambda (_%g2267322676%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2267322676%_)))
                                           (_%g2267124771%_
                                            (lambda (_%g2267322684%_)
                                              ((lambda (_%L22687%_)
                                                 (let* ((_%g2270022708%_
                                                         (lambda (_%g2270122704%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2270122704%_)))
                                                        (_%g2269924767%_
                                                         (lambda (_%g2270122712%_)
                                                           ((lambda (_%L22715%_)
                                                              (let* ((_%g2272822736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2272922732%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2272922732%_)))
                             (_%g2272724763%_
                              (lambda (_%g2272922740%_)
                                ((lambda (_%L22743%_)
                                   (let* ((_%g2275622773%_
                                           (lambda (_%g2275722769%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2275722769%_)))
                                          (_%g2275524759%_
                                           (lambda (_%g2275722777%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2275722777%_)
                                                 (let ((_g27246_
                                                        (gx#syntax-split-splice
                                                         _%g2275722777%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27247_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27246_)
                          (##vector-length _g27246_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27247_ 2)))
                   (error "Context expects 2 values" _g27247_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2275922780%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27246_
                                                               0)))
                                                           (_%tl2276122783%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27246_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2276122783%_)
                                                           (letrec ((_%loop2276222786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2276022790%_ _%slot2276622793%_)
                               (if (gx#stx-pair? _%hd2276022790%_)
                                   (let ((_%e2276322796%_
                                          (gx#syntax-e _%hd2276022790%_)))
                                     (let ((_%lp-hd2276422800%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2276322796%_)))
                                           (_%lp-tl2276522803%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2276322796%_))))
                                       (_%loop2276222786%_
                                        _%lp-tl2276522803%_
                                        (cons _%lp-hd2276422800%_
                                              _%slot2276622793%_))))
                                   (let ((_%slot2276722806%_
                                          (reverse _%slot2276622793%_)))
                                     ((lambda (_%L22810%_)
                                        (let* ((_%g2282722844%_
                                                (lambda (_%g2282822840%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2282822840%_)))
                                               (_%g2282624750%_
                                                (lambda (_%g2282822848%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2282822848%_)
                                                      (let ((_g27248_
                                                             (gx#syntax-split-splice
                                                              _%g2282822848%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27248_)
                               (##vector-length _g27248_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27249_ 2)))
                        (error "Context expects 2 values" _g27249_)))
                  (let ((_%target2283022851%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27248_ 0)))
                        (_%tl2283222854%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27248_ 1))))
                    (if (gx#stx-null? _%tl2283222854%_)
                        (letrec ((_%loop2283322857%_
                                  (lambda (_%hd2283122861%_ _%getf2283722864%_)
                                    (if (gx#stx-pair? _%hd2283122861%_)
                                        (let ((_%e2283422867%_
                                               (gx#syntax-e _%hd2283122861%_)))
                                          (let ((_%lp-hd2283522871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2283422867%_)))
                                                (_%lp-tl2283622874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2283422867%_))))
                                            (_%loop2283322857%_
                                             _%lp-tl2283622874%_
                                             (cons _%lp-hd2283522871%_
                                                   _%getf2283722864%_))))
                                        (let ((_%getf2283822877%_
                                               (reverse _%getf2283722864%_)))
                                          ((lambda (_%L22881%_)
                                             (let* ((_%g2289822915%_
                                                     (lambda (_%g2289922911%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2289922911%_)))
                                                    (_%g2289724741%_
                                                     (lambda (_%g2289922919%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2289922919%_)
                                                           (let ((_g27250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2289922919%_ '0)))
                     (begin
                       (let ((_g27251_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27250_)
                                    (##vector-length _g27250_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27251_ 2)))
                             (error "Context expects 2 values" _g27251_)))
                       (let ((_%target2290122922%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27250_ 0)))
                             (_%tl2290322925%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27250_ 1))))
                         (if (gx#stx-null? _%tl2290322925%_)
                             (letrec ((_%loop2290422928%_
                                       (lambda (_%hd2290222932%_
                                                _%setf2290822935%_)
                                         (if (gx#stx-pair? _%hd2290222932%_)
                                             (let ((_%e2290522938%_
                                                    (gx#syntax-e
                                                     _%hd2290222932%_)))
                                               (let ((_%lp-hd2290622942%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2290522938%_)))
                                                     (_%lp-tl2290722945%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2290522938%_))))
                                                 (_%loop2290422928%_
                                                  _%lp-tl2290722945%_
                                                  (cons _%lp-hd2290622942%_
                                                        _%setf2290822935%_))))
                                             (let ((_%setf2290922948%_
                                                    (reverse _%setf2290822935%_)))
                                               ((lambda (_%L22952%_)
                                                  (let* ((_%mixin-slots22969%_
                                                          (_%get-mixin-slots22601%_
                                                           _%super-ref22594%_
                                                           _%slots22595%_))
                                                         (_%g2297222989%_
                                                          (lambda (_%g2297322985%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2297322985%_)))
                                                         (_%g2297124737%_
                                                          (lambda (_%g2297322993%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2297322993%_)
                        (let ((_g27252_
                               (gx#syntax-split-splice _%g2297322993%_ '0)))
                          (begin
                            (let ((_g27253_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27252_)
                                         (##vector-length _g27252_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27253_ 2)))
                                  (error "Context expects 2 values" _g27253_)))
                            (let ((_%target2297522996%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g27252_ 0)))
                                  (_%tl2297722999%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g27252_ 1))))
                              (if (gx#stx-null? _%tl2297722999%_)
                                  (letrec ((_%loop2297823002%_
                                            (lambda (_%hd2297623006%_
                                                     _%mixin-slot2298223009%_)
                                              (if (gx#stx-pair?
                                                   _%hd2297623006%_)
                                                  (let ((_%e2297923012%_
                                                         (gx#syntax-e
                                                          _%hd2297623006%_)))
                                                    (let ((_%lp-hd2298023016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2297923012%_)))
                                                          (_%lp-tl2298123019%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2297923012%_))))
                                                      (_%loop2297823002%_
                                                       _%lp-tl2298123019%_
                                                       (cons _%lp-hd2298023016%_
                                                             _%mixin-slot2298223009%_))))
                                                  (let ((_%mixin-slot2298323022%_
                                                         (reverse _%mixin-slot2298223009%_)))
                                                    ((lambda (_%L23026%_)
                                                       (let* ((_%g2304423061%_
                                                               (lambda (_%g2304523057%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2304523057%_)))
                      (_%g2304324728%_
                       (lambda (_%g2304523065%_)
                         (if (gx#stx-pair/null? _%g2304523065%_)
                             (let ((_g27254_
                                    (gx#syntax-split-splice
                                     _%g2304523065%_
                                     '0)))
                               (begin
                                 (let ((_g27255_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27254_)
                                              (##vector-length _g27254_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27255_ 2)))
                                       (error "Context expects 2 values"
                                              _g27255_)))
                                 (let ((_%target2304723068%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27254_ 0)))
                                       (_%tl2304923071%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27254_ 1))))
                                   (if (gx#stx-null? _%tl2304923071%_)
                                       (letrec ((_%loop2305023074%_
                                                 (lambda (_%hd2304823078%_
                                                          _%mixin-getf2305423081%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2304823078%_)
                                                       (let ((_%e2305123084%_
                                                              (gx#syntax-e
                                                               _%hd2304823078%_)))
                                                         (let ((_%lp-hd2305223088%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2305123084%_)))
                       (_%lp-tl2305323091%_
                        (let () (declare (not safe)) (##cdr _%e2305123084%_))))
                   (_%loop2305023074%_
                    _%lp-tl2305323091%_
                    (cons _%lp-hd2305223088%_ _%mixin-getf2305423081%_))))
               (let ((_%mixin-getf2305523094%_
                      (reverse _%mixin-getf2305423081%_)))
                 ((lambda (_%L23098%_)
                    (let* ((_%g2311523132%_
                            (lambda (_%g2311623128%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2311623128%_)))
                           (_%g2311424719%_
                            (lambda (_%g2311623136%_)
                              (if (gx#stx-pair/null? _%g2311623136%_)
                                  (let ((_g27256_
                                         (gx#syntax-split-splice
                                          _%g2311623136%_
                                          '0)))
                                    (begin
                                      (let ((_g27257_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27256_)
                                                   (##vector-length _g27256_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27257_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27257_)))
                                      (let ((_%target2311823139%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g27256_ 0)))
                                            (_%tl2312023142%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g27256_ 1))))
                                        (if (gx#stx-null? _%tl2312023142%_)
                                            (letrec ((_%loop2312123145%_
                                                      (lambda (_%hd2311923149%_
                                                               _%mixin-setf2312523152%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2311923149%_)
                                                            (let ((_%e2312223155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2311923149%_)))
                      (let ((_%lp-hd2312323159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2312223155%_)))
                            (_%lp-tl2312423162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2312223155%_))))
                        (_%loop2312123145%_
                         _%lp-tl2312423162%_
                         (cons _%lp-hd2312323159%_ _%mixin-setf2312523152%_))))
                    (let ((_%mixin-setf2312623165%_
                           (reverse _%mixin-setf2312523152%_)))
                      ((lambda (_%L23169%_)
                         (let* ((_%g2318623203%_
                                 (lambda (_%g2318723199%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2318723199%_)))
                                (_%g2318524702%_
                                 (lambda (_%g2318723207%_)
                                   (if (gx#stx-pair/null? _%g2318723207%_)
                                       (let ((_g27258_
                                              (gx#syntax-split-splice
                                               _%g2318723207%_
                                               '0)))
                                         (begin
                                           (let ((_g27259_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27258_)
                                                        (##vector-length
                                                         _g27258_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27259_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27259_)))
                                           (let ((_%target2318923210%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27258_ 0)))
                                                 (_%tl2319123213%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27258_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2319123213%_)
                                                 (letrec ((_%loop2319223216%_
                                                           (lambda (_%hd2319023220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2319623223%_)
                     (if (gx#stx-pair? _%hd2319023220%_)
                         (let ((_%e2319323226%_
                                (gx#syntax-e _%hd2319023220%_)))
                           (let ((_%lp-hd2319423230%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2319323226%_)))
                                 (_%lp-tl2319523233%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2319323226%_))))
                             (_%loop2319223216%_
                              _%lp-tl2319523233%_
                              (cons _%lp-hd2319423230%_ _%ugetf2319623223%_))))
                         (let ((_%ugetf2319723236%_
                                (reverse _%ugetf2319623223%_)))
                           ((lambda (_%L23240%_)
                              (let* ((_%g2325723274%_
                                      (lambda (_%g2325823270%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2325823270%_)))
                                     (_%g2325624685%_
                                      (lambda (_%g2325823278%_)
                                        (if (gx#stx-pair/null? _%g2325823278%_)
                                            (let ((_g27260_
                                                   (gx#syntax-split-splice
                                                    _%g2325823278%_
                                                    '0)))
                                              (begin
                                                (let ((_g27261_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27260_)
                                                             (##vector-length
                                                              _g27260_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27261_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2326023281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g27260_
                                                          0)))
                                                      (_%tl2326223284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g27260_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2326223284%_)
                                                      (letrec ((_%loop2326323287%_
                                                                (lambda (_%hd2326123291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2326723294%_)
                          (if (gx#stx-pair? _%hd2326123291%_)
                              (let ((_%e2326423297%_
                                     (gx#syntax-e _%hd2326123291%_)))
                                (let ((_%lp-hd2326523301%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2326423297%_)))
                                      (_%lp-tl2326623304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2326423297%_))))
                                  (_%loop2326323287%_
                                   _%lp-tl2326623304%_
                                   (cons _%lp-hd2326523301%_
                                         _%usetf2326723294%_))))
                              (let ((_%usetf2326823307%_
                                     (reverse _%usetf2326723294%_)))
                                ((lambda (_%L23311%_)
                                   (let* ((_%g2332823345%_
                                           (lambda (_%g2332923341%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2332923341%_)))
                                          (_%g2332724668%_
                                           (lambda (_%g2332923349%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2332923349%_)
                                                 (let ((_g27262_
                                                        (gx#syntax-split-splice
                                                         _%g2332923349%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27263_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27262_)
                          (##vector-length _g27262_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27263_ 2)))
                   (error "Context expects 2 values" _g27263_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2333123352%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27262_
                                                               0)))
                                                           (_%tl2333323355%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27262_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2333323355%_)
                                                           (letrec ((_%loop2333423358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2333223362%_
                                      _%mixin-ugetf2333823365%_)
                               (if (gx#stx-pair? _%hd2333223362%_)
                                   (let ((_%e2333523368%_
                                          (gx#syntax-e _%hd2333223362%_)))
                                     (let ((_%lp-hd2333623372%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2333523368%_)))
                                           (_%lp-tl2333723375%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2333523368%_))))
                                       (_%loop2333423358%_
                                        _%lp-tl2333723375%_
                                        (cons _%lp-hd2333623372%_
                                              _%mixin-ugetf2333823365%_))))
                                   (let ((_%mixin-ugetf2333923378%_
                                          (reverse _%mixin-ugetf2333823365%_)))
                                     ((lambda (_%L23382%_)
                                        (let* ((_%g2339923416%_
                                                (lambda (_%g2340023412%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2340023412%_)))
                                               (_%g2339824651%_
                                                (lambda (_%g2340023420%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2340023420%_)
                                                      (let ((_g27264_
                                                             (gx#syntax-split-splice
                                                              _%g2340023420%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27264_)
                               (##vector-length _g27264_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27265_ 2)))
                        (error "Context expects 2 values" _g27265_)))
                  (let ((_%target2340223423%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27264_ 0)))
                        (_%tl2340423426%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27264_ 1))))
                    (if (gx#stx-null? _%tl2340423426%_)
                        (letrec ((_%loop2340523429%_
                                  (lambda (_%hd2340323433%_
                                           _%mixin-usetf2340923436%_)
                                    (if (gx#stx-pair? _%hd2340323433%_)
                                        (let ((_%e2340623439%_
                                               (gx#syntax-e _%hd2340323433%_)))
                                          (let ((_%lp-hd2340723443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2340623439%_)))
                                                (_%lp-tl2340823446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2340623439%_))))
                                            (_%loop2340523429%_
                                             _%lp-tl2340823446%_
                                             (cons _%lp-hd2340723443%_
                                                   _%mixin-usetf2340923436%_))))
                                        (let ((_%mixin-usetf2341023449%_
                                               (reverse _%mixin-usetf2340923436%_)))
                                          ((lambda (_%L23453%_)
                                             (let* ((_%type-slots23488%_
                                                     (if (gx#stx-null?
                                                          _%slots22595%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L22952%_
                                _%L22881%_
                                _%L22810%_)
                               (foldr (lambda (_%g2347323478%_
                                               _%g2347423481%_
                                               _%g2347523483%_
                                               _%g2347623485%_)
                                        (cons (cons _%g2347523483%_
                                                    (cons _%g2347423481%_
                                                          (cons _%g2347323478%_
                                                                '())))
                                              _%g2347623485%_))
                                      '()
                                      _%L22952%_
                                      _%L22881%_
                                      _%L22810%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23509%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots22969%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23169%_
                                _%L23098%_
                                _%L23026%_)
                               (foldr (lambda (_%g2349423499%_
                                               _%g2349523502%_
                                               _%g2349623504%_
                                               _%g2349723506%_)
                                        (cons (cons _%g2349623504%_
                                                    (cons _%g2349523502%_
                                                          (cons _%g2349423499%_
                                                                '())))
                                              _%g2349723506%_))
                                      '()
                                      _%L23169%_
                                      _%L23098%_
                                      _%L23026%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23516%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22596%_)))
                           (if _%$e23512%_ _%$e23512%_ _%id22593%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23523%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22596%_)))
                           (if _%$e23519%_
                               _%$e23519%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%L22628%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23538%_
                                                     (let ((_%$e23534%_
                                                            (let ((_%e2352523527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22596%_)))
                      (if _%e2352523527%_
                          (let ((_%e23531%_ _%e2352523527%_))
                            (cons 'constructor: (cons _%e23531%_ '())))
                          '#f))))
               (if _%$e23534%_ _%$e23534%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23576%_
                                                     (let* ((_%properties23541%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22596%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23556%_
                     (let ((_%$e23544%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22596%_))))
                       (if _%$e23544%_
                           ((lambda (_%print23548%_)
                              (let ((_%print23551%_
                                     (if (eq? _%print23548%_ '#t)
                                         _%slots22595%_
                                         _%print23548%_)))
                                (cons (cons 'print: _%print23551%_)
                                      _%properties23541%_)))
                            _%$e23544%_)
                           _%properties23541%_)))
                    (_%properties23571%_
                     (let ((_%$e23559%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22596%_))))
                       (if _%$e23559%_
                           ((lambda (_%equal23563%_)
                              (let ((_%equal23566%_
                                     (if (eq? _%equal23563%_ '#t)
                                         _%slots22595%_
                                         _%equal23563%_)))
                                (cons (cons 'equal: _%equal23566%_)
                                      _%properties23556%_)))
                            _%$e23559%_)
                           _%properties23556%_))))
               _%properties23571%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23617%_
                                                     (if (null? _%properties23576%_)
                                                         '()
                                                         (let* ((_%g2357923587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2358023583%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2358023583%_)))
                        (_%g2357823613%_
                         (lambda (_%g2358023591%_)
                           ((lambda (_%L23594%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%L23594%_ '()))
                                          '())))
                            _%g2358023591%_))))
                   (_%g2357823613%_ _%properties23576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23629%_
                                                     (let ((_%$e23620%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22596%_)))
                                                       (if _%$e23620%_
                                                           ((lambda (_%metaclass23624%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23624%_)
                          _%metaclass23624%_
                          '#f))
                    _%$e23620%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23632%_
                                                     (if _%metaclass23629%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23635%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22596%_)))
                                                    (_%type-struct23638%_
                                                     (cons 'struct:
                                                           (cons _%struct?22610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23641%_
                                                     (cons 'final:
                                                           (cons _%final?23635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2364423661%_
                                                     (lambda (_%g2364523657%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2364523657%_)))
                                                    (_%g2364324647%_
                                                     (lambda (_%g2364523665%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2364523665%_)
                                                           (let ((_g27266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2364523665%_ '0)))
                     (begin
                       (let ((_g27267_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27266_)
                                    (##vector-length _g27266_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27267_ 2)))
                             (error "Context expects 2 values" _g27267_)))
                       (let ((_%target2364723668%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27266_ 0)))
                             (_%tl2364923671%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27266_ 1))))
                         (if (gx#stx-null? _%tl2364923671%_)
                             (letrec ((_%loop2365023674%_
                                       (lambda (_%hd2364823678%_
                                                _%type-body2365423681%_)
                                         (if (gx#stx-pair? _%hd2364823678%_)
                                             (let ((_%e2365123684%_
                                                    (gx#syntax-e
                                                     _%hd2364823678%_)))
                                               (let ((_%lp-hd2365223688%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2365123684%_)))
                                                     (_%lp-tl2365323691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2365123684%_))))
                                                 (_%loop2365023674%_
                                                  _%lp-tl2365323691%_
                                                  (cons _%lp-hd2365223688%_
                                                        _%type-body2365423681%_))))
                                             (let ((_%type-body2365523694%_
                                                    (reverse _%type-body2365423681%_)))
                                               ((lambda (_%L23698%_)
                                                  (let* ((_%g2371923727%_
                                                          (lambda (_%g2372023723%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2372023723%_)))
                                                         (_%g2371824635%_
                                                          (lambda (_%g2372023731%_)
                                                            ((lambda (_%L23734%_)
                                                               (let* ((_%g2374723755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2374823751%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2374823751%_)))
                              (_%g2374624564%_
                               (lambda (_%g2374823759%_)
                                 ((lambda (_%L23762%_)
                                    (let* ((_%g2377523783%_
                                            (lambda (_%g2377623779%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2377623779%_)))
                                           (_%g2377424529%_
                                            (lambda (_%g2377623787%_)
                                              ((lambda (_%L23790%_)
                                                 (let* ((_%g2380323811%_
                                                         (lambda (_%g2380423807%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2380423807%_)))
                                                        (_%g2380224443%_
                                                         (lambda (_%g2380423815%_)
                                                           ((lambda (_%L23818%_)
                                                              (let* ((_%g2383123839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2383223835%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2383223835%_)))
                             (_%g2383024431%_
                              (lambda (_%g2383223843%_)
                                ((lambda (_%L23846%_)
                                   (let* ((_%g2385923867%_
                                           (lambda (_%g2386023863%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2386023863%_)))
                                          (_%g2385824427%_
                                           (lambda (_%g2386023871%_)
                                             ((lambda (_%L23874%_)
                                                (let* ((_%g2388723895%_
                                                        (lambda (_%g2388823891%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2388823891%_)))
                                                       (_%g2388624423%_
                                                        (lambda (_%g2388823899%_)
                                                          ((lambda (_%L23902%_)
                                                             (let* ((_%g2391523923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2391623919%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2391623919%_)))
                            (_%g2391424388%_
                             (lambda (_%g2391623927%_)
                               ((lambda (_%L23930%_)
                                  (let* ((_%g2394323951%_
                                          (lambda (_%g2394423947%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2394423947%_)))
                                         (_%g2394224317%_
                                          (lambda (_%g2394423955%_)
                                            ((lambda (_%L23958%_)
                                               (let* ((_%g2397123979%_
                                                       (lambda (_%g2397223975%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2397223975%_)))
                                                      (_%g2397024313%_
                                                       (lambda (_%g2397223983%_)
                                                         ((lambda (_%L23986%_)
                                                            (let* ((_%g2399924007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2400024003%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2400024003%_)))
                           (_%g2399824309%_
                            (lambda (_%g2400024011%_)
                              ((lambda (_%L24014%_)
                                 (let* ((_%g2402724035%_
                                         (lambda (_%g2402824031%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2402824031%_)))
                                        (_%g2402624305%_
                                         (lambda (_%g2402824039%_)
                                           ((lambda (_%L24042%_)
                                              (let* ((_%g2405524063%_
                                                      (lambda (_%g2405624059%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2405624059%_)))
                                                     (_%g2405424279%_
                                                      (lambda (_%g2405624067%_)
                                                        ((lambda (_%L24070%_)
                                                           (let* ((_%g2408324091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2408424087%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2408424087%_)))
                          (_%g2408224253%_
                           (lambda (_%g2408424095%_)
                             ((lambda (_%L24098%_)
                                (let* ((_%g2411124119%_
                                        (lambda (_%g2411224115%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2411224115%_)))
                                       (_%g2411024227%_
                                        (lambda (_%g2411224123%_)
                                          ((lambda (_%L24126%_)
                                             (let* ((_%g2413924147%_
                                                     (lambda (_%g2414024143%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2414024143%_)))
                                                    (_%g2413824201%_
                                                     (lambda (_%g2414024151%_)
                                                       ((lambda (_%L24154%_)
                                                          (let* ((_%g2416724175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2416824171%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2416824171%_)))
                         (_%g2416624197%_
                          (lambda (_%g2416824179%_)
                            ((lambda (_%L24182%_)
                               (_%wrap22598%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%L23734%_
                                            (cons _%L24182%_ '())))))
                             _%g2416824179%_))))
                    (_%g2416624197%_
                     (_%wrap22598%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%L22628%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%L23762%_
                                                          (cons 'name:
                                                                (cons _%L23790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%L23846%_
                                          (cons 'super:
                                                (cons _%L23818%_
                                                      (cons 'struct?:
                                                            (cons _%L23874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%L23902%_
                                      (cons 'metaclass:
                                            (cons _%L23930%_
                                                  (cons 'constructor-method:
                                                        (cons _%L23958%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L23986%_
                                  (cons 'constructor:
                                        (cons _%L24014%_
                                              (cons 'predicate:
                                                    (cons _%L24042%_
                                                          (cons 'accessors:
                                                                (cons _%L24070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%L24098%_
                                          (cons 'unchecked-accessors:
                                                (cons _%L24126%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%L24154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2414024151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2413824201%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L23311%_
                                                         _%L22810%_)
                                                        (foldr (lambda (_%g2420424211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2420524214%_
                                _%g2420624216%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2420524214%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2420424211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2420624216%_))
                       (begin
                         (gx#syntax-check-splice-targets _%L23453%_ _%L23026%_)
                         (foldr (lambda (_%g2420724219%_
                                         _%g2420824222%_
                                         _%g2420924224%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2420824222%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2420724219%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2420924224%_))
                                '()
                                _%L23453%_
                                _%L23026%_))
                       _%L23311%_
                       _%L22810%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2411224123%_))))
                                  (_%g2411024227%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23240%_
                                            _%L22810%_)
                                           (foldr (lambda (_%g2423024237%_
                                                           _%g2423124240%_
                                                           _%g2423224242%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2423124240%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2423024237%_ '()))
                                          '()))))
                  _%g2423224242%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23382%_
                                                     _%L23026%_)
                                                    (foldr (lambda (_%g2423324245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2423424248%_
                            _%g2423524250%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2423424248%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2423324245%_
                                                               '()))
                                                   '()))))
                           _%g2423524250%_))
                   '()
                   _%L23382%_
                   _%L23026%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23240%_
                                                  _%L22810%_))))))
                              _%g2408424095%_))))
                     (_%g2408224253%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%L22952%_
                               _%L22810%_)
                              (foldr (lambda (_%g2425624263%_
                                              _%g2425724266%_
                                              _%g2425824268%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2425724266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2425624263%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2425824268%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%L23169%_
                                        _%L23026%_)
                                       (foldr (lambda (_%g2425924271%_
                                                       _%g2426024274%_
                                                       _%g2426124276%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2426024274%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2425924271%_ '()))
                                      '()))))
              _%g2426124276%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L23169%_
                                              _%L23026%_))
                                     _%L22952%_
                                     _%L22810%_))))))
                 _%g2405624067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2405424279%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%L22881%_
                                                          _%L22810%_)
                                                         (foldr (lambda (_%g2428224289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2428324292%_
                                 _%g2428424294%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2428324292%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2428224289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2428424294%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%L23098%_
                           _%L23026%_)
                          (foldr (lambda (_%g2428524297%_
                                          _%g2428624300%_
                                          _%g2428724302%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2428624300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2428524297%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2428724302%_))
                                 '()
                                 _%L23098%_
                                 _%L23026%_))
                        _%L22881%_
                        _%L22810%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2402824039%_))))
                                   (_%g2402624305%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%L22715%_ '())))))
                               _%g2400024011%_))))
                      (_%g2399824309%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%L22687%_ '())))))
                  _%g2397223983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2397024313%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%L22659%_
                                                              '())))))
                                             _%g2394423955%_))))
                                    (_%g2394224317%_
                                     (if (null? _%type-constructor23538%_)
                                         '#f
                                         (let* ((_%g2432124336%_
                                                 (lambda (_%g2432224332%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2432224332%_)))
                                                (_%g2432024384%_
                                                 (lambda (_%g2432224340%_)
                                                   (if (gx#stx-pair?
                                                        _%g2432224340%_)
                                                       (let ((_%e2432424343%_
                                                              (gx#syntax-e
                                                               _%g2432224340%_)))
                                                         (let ((_%hd2432524347%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2432424343%_)))
                       (_%tl2432624350%_
                        (let () (declare (not safe)) (##cdr _%e2432424343%_))))
                   (if (gx#stx-datum? _%hd2432524347%_)
                       (let ((_%e2432724353%_ (gx#stx-e _%hd2432524347%_)))
                         (if (equal? _%e2432724353%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2432624350%_)
                                 (let ((_%e2432824357%_
                                        (gx#syntax-e _%tl2432624350%_)))
                                   (let ((_%hd2432924361%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2432824357%_)))
                                         (_%tl2433024364%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2432824357%_))))
                                     (if (gx#stx-null? _%tl2433024364%_)
                                         ((lambda (_%L24367%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L24367%_ '())))
                                          _%hd2432924361%_)
                                         (_%g2432124336%_ _%g2432224340%_))))
                                 (_%g2432124336%_ _%g2432224340%_))
                             (_%g2432124336%_ _%g2432224340%_)))
                       (_%g2432124336%_ _%g2432224340%_))))
               (_%g2432124336%_ _%g2432224340%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2432024384%_
                                            _%type-constructor23538%_))))))
                                _%g2391623927%_))))
                       (_%g2391424388%_
                        (if _%metaclass23629%_
                            (let* ((_%g2439224400%_
                                    (lambda (_%g2439324396%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2439324396%_)))
                                   (_%g2439124419%_
                                    (lambda (_%g2439324404%_)
                                      ((lambda (_%L24407%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%L24407%_ '())))
                                       _%g2439324404%_))))
                              (_%g2439124419%_ _%metaclass23629%_))
                            '#f))))
                   _%g2388823899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2388624423%_
                                                   _%final?23635%_)))
                                              _%g2386023871%_))))
                                     (_%g2385824427%_ _%struct?22610%_)))
                                 _%g2383223843%_))))
                        (_%g2383024431%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2443424437%_
                                                     _%g2443524440%_)
                                              (cons _%g2443424437%_
                                                    _%g2443524440%_))
                                            '()
                                            _%L22810%_)
                                     '())))))
                    _%g2380423815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2380224443%_
                                                    (let* ((_%g2444724464%_
                                                            (lambda (_%g2444824460%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2444824460%_)))
                                                           (_%g2444624525%_
                                                            (lambda (_%g2444824468%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2444824468%_)
                          (let ((_g27268_
                                 (gx#syntax-split-splice _%g2444824468%_ '0)))
                            (begin
                              (let ((_g27269_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27268_)
                                           (##vector-length _g27268_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27269_ 2)))
                                    (error "Context expects 2 values"
                                           _g27269_)))
                              (let ((_%target2445024471%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27268_ 0)))
                                    (_%tl2445224474%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27268_ 1))))
                                (if (gx#stx-null? _%tl2445224474%_)
                                    (letrec ((_%loop2445324477%_
                                              (lambda (_%hd2445124481%_
                                                       _%super-id2445724484%_)
                                                (if (gx#stx-pair?
                                                     _%hd2445124481%_)
                                                    (let ((_%e2445424487%_
                                                           (gx#syntax-e
                                                            _%hd2445124481%_)))
                                                      (let ((_%lp-hd2445524491%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2445424487%_)))
                    (_%lp-tl2445624494%_
                     (let () (declare (not safe)) (##cdr _%e2445424487%_))))
                (_%loop2445324477%_
                 _%lp-tl2445624494%_
                 (cons _%lp-hd2445524491%_ _%super-id2445724484%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2445824497%_
                                                           (reverse _%super-id2445724484%_)))
                                                      ((lambda (_%L24501%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2451624519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2451724522%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2451624519%_ '()))
                                      _%g2451724522%_))
                              '()
                              _%L24501%_)))
               _%super-id2445824497%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2445324477%_
                                       _%target2445024471%_
                                       '()))
                                    (_%g2444724464%_ _%g2444824468%_)))))
                          (_%g2444724464%_ _%g2444824468%_)))))
              (_%g2444624525%_ _%super-ref22594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2377623787%_))))
                                      (_%g2377424529%_
                                       (let* ((_%g2453324541%_
                                               (lambda (_%g2453424537%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2453424537%_)))
                                              (_%g2453224560%_
                                               (lambda (_%g2453424545%_)
                                                 ((lambda (_%L24548%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L24548%_
                                                                '())))
                                                  _%g2453424545%_))))
                                         (_%g2453224560%_
                                          (cadr _%type-name23516%_))))))
                                  _%g2374823759%_))))
                         (_%g2374624564%_
                          (let* ((_%g2456824583%_
                                  (lambda (_%g2456924579%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2456924579%_)))
                                 (_%g2456724631%_
                                  (lambda (_%g2456924587%_)
                                    (if (gx#stx-pair? _%g2456924587%_)
                                        (let ((_%e2457124590%_
                                               (gx#syntax-e _%g2456924587%_)))
                                          (let ((_%hd2457224594%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2457124590%_)))
                                                (_%tl2457324597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2457124590%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2457224594%_)
                                                (let ((_%e2457424600%_
                                                       (gx#stx-e
                                                        _%hd2457224594%_)))
                                                  (if (equal? _%e2457424600%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2457324597%_)
                                                          (let ((_%e2457524604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2457324597%_)))
                    (let ((_%hd2457624608%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2457524604%_)))
                          (_%tl2457724611%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2457524604%_))))
                      (if (gx#stx-null? _%tl2457724611%_)
                          ((lambda (_%L24614%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%L24614%_ '())))
                           _%hd2457624608%_)
                          (_%g2456824583%_ _%g2456924587%_))))
                  (_%g2456824583%_ _%g2456924587%_))
              (_%g2456824583%_ _%g2456924587%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2456824583%_
                                                 _%g2456924587%_))))
                                        (_%g2456824583%_ _%g2456924587%_)))))
                            (_%g2456724631%_ _%type-id23523%_)))))
                     _%g2372023731%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2371824635%_
                                                     (_%wrap22598%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%L22659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L22743%_
                                (cons _%L22687%_
                                      (cons _%L22715%_
                                            (foldr (lambda (_%g2463824641%_
                                                            _%g2463924644%_)
                                                     (cons _%g2463824641%_
                                                           _%g2463924644%_))
                                                   '()
                                                   _%L23698%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2365523694%_))))))
                               (_%loop2365023674%_ _%target2364723668%_ '()))
                             (_%g2364423661%_ _%g2364523665%_)))))
                   (_%g2364423661%_ _%g2364523665%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2364324647%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23509%_
                                                                _%type-slots23488%_)
                                                         _%type-properties23617%_)
                                                  _%type-metaclass23632%_)
                                           _%type-final23641%_)
                                    _%type-struct23638%_)
                             _%type-constructor23538%_)
                      _%type-name23516%_)
               _%type-id23523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2341023449%_))))))
                          (_%loop2340523429%_ _%target2340223423%_ '()))
                        (_%g2339923416%_ _%g2340023420%_)))))
              (_%g2339923416%_ _%g2340023420%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2339824651%_
                                           (gx#stx-map
                                            (lambda (_%g2465424656%_)
                                              (_%make-id22600%_
                                               '"&"
                                               _%g2465424656%_))
                                            (foldr (lambda (_%g2465924662%_
                                                            _%g2466024665%_)
                                                     (cons _%g2465924662%_
                                                           _%g2466024665%_))
                                                   '()
                                                   _%L23169%_)))))
                                      _%mixin-ugetf2333923378%_))))))
                     (_%loop2333423358%_ _%target2333123352%_ '()))
                   (_%g2332823345%_ _%g2332923349%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2332823345%_
                                                  _%g2332923349%_)))))
                                     (_%g2332724668%_
                                      (gx#stx-map
                                       (lambda (_%g2467124673%_)
                                         (_%make-id22600%_
                                          '"&"
                                          _%g2467124673%_))
                                       (foldr (lambda (_%g2467624679%_
                                                       _%g2467724682%_)
                                                (cons _%g2467624679%_
                                                      _%g2467724682%_))
                                              '()
                                              _%L23098%_)))))
                                 _%usetf2326823307%_))))))
                (_%loop2326323287%_ _%target2326023281%_ '()))
              (_%g2325723274%_ _%g2325823278%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2325723274%_
                                             _%g2325823278%_)))))
                                (_%g2325624685%_
                                 (gx#stx-map
                                  (lambda (_%g2468824690%_)
                                    (_%make-id22600%_ '"&" _%g2468824690%_))
                                  (foldr (lambda (_%g2469324696%_
                                                  _%g2469424699%_)
                                           (cons _%g2469324696%_
                                                 _%g2469424699%_))
                                         '()
                                         _%L22952%_)))))
                            _%ugetf2319723236%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2319223216%_
                                                    _%target2318923210%_
                                                    '()))
                                                 (_%g2318623203%_
                                                  _%g2318723207%_)))))
                                       (_%g2318623203%_ _%g2318723207%_)))))
                           (_%g2318524702%_
                            (gx#stx-map
                             (lambda (_%g2470524707%_)
                               (_%make-id22600%_ '"&" _%g2470524707%_))
                             (foldr (lambda (_%g2471024713%_ _%g2471124716%_)
                                      (cons _%g2471024713%_ _%g2471124716%_))
                                    '()
                                    _%L22881%_)))))
                       _%mixin-setf2312623165%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2312123145%_
                                               _%target2311823139%_
                                               '()))
                                            (_%g2311523132%_
                                             _%g2311623136%_)))))
                                  (_%g2311523132%_ _%g2311623136%_)))))
                      (_%g2311424719%_
                       (gx#stx-map
                        (lambda (_%g2472224724%_)
                          (_%make-id22600%_
                           _%name22604%_
                           '"-"
                           _%g2472224724%_
                           '"-set!"))
                        _%mixin-slots22969%_))))
                  _%mixin-getf2305523094%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2305023074%_
                                          _%target2304723068%_
                                          '()))
                                       (_%g2304423061%_ _%g2304523065%_)))))
                             (_%g2304423061%_ _%g2304523065%_)))))
                 (_%g2304324728%_
                  (gx#stx-map
                   (lambda (_%g2473124733%_)
                     (_%make-id22600%_ _%name22604%_ '"-" _%g2473124733%_))
                   _%mixin-slots22969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2298323022%_))))))
                                    (_%loop2297823002%_
                                     _%target2297522996%_
                                     '()))
                                  (_%g2297222989%_ _%g2297322993%_)))))
                        (_%g2297222989%_ _%g2297322993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2297124737%_
                                                     _%mixin-slots22969%_)))
                                                _%setf2290922948%_))))))
                               (_%loop2290422928%_ _%target2290122922%_ '()))
                             (_%g2289822915%_ _%g2289922919%_)))))
                   (_%g2289822915%_ _%g2289922919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2289724741%_
                                                (gx#stx-map
                                                 (lambda (_%g2474424746%_)
                                                   (_%make-id22600%_
                                                    _%name22604%_
                                                    '"-"
                                                    _%g2474424746%_
                                                    '"-set!"))
                                                 _%slots22595%_))))
                                           _%getf2283822877%_))))))
                          (_%loop2283322857%_ _%target2283022851%_ '()))
                        (_%g2282722844%_ _%g2282822848%_)))))
              (_%g2282722844%_ _%g2282822848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2282624750%_
                                           (gx#stx-map
                                            (lambda (_%g2475324755%_)
                                              (_%make-id22600%_
                                               _%name22604%_
                                               '"-"
                                               _%g2475324755%_))
                                            _%slots22595%_))))
                                      _%slot2276722806%_))))))
                     (_%loop2276222786%_ _%target2275922780%_ '()))
                   (_%g2275622773%_ _%g2275722777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2275622773%_
                                                  _%g2275722777%_)))))
                                     (_%g2275524759%_ _%slots22595%_)))
                                 _%g2272922740%_))))
                        (_%g2272724763%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22607%_)))))
                    _%g2270122712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2269924767%_
                                                    (_%make-id22600%_
                                                     _%name22604%_
                                                     '"?"))))
                                               _%g2267322684%_))))
                                      (_%g2267124771%_
                                       (_%make-id22600%_
                                        '"make-"
                                        _%name22604%_))))
                                  _%g2264522656%_))))
                         (_%g2264324775%_
                          (_%make-id22600%_ _%name22604%_ '"::t"))))
                     _%g2261422625%_))))
            (_%g2261224779%_ _%id22593%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24846%_)
        (let* ((_%g2485024869%_
                (lambda (_%g2485124865%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2485124865%_)))
               (_%g2484924926%_
                (lambda (_%g2485124873%_)
                  (if (gx#stx-pair? _%g2485124873%_)
                      (let ((_%e2485524876%_ (gx#syntax-e _%g2485124873%_)))
                        (let ((_%hd2485624880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2485524876%_)))
                              (_%tl2485724883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2485524876%_))))
                          (if (gx#stx-pair? _%tl2485724883%_)
                              (let ((_%e2485824886%_
                                     (gx#syntax-e _%tl2485724883%_)))
                                (let ((_%hd2485924890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2485824886%_)))
                                      (_%tl2486024893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2485824886%_))))
                                  (if (gx#stx-pair? _%tl2486024893%_)
                                      (let ((_%e2486124896%_
                                             (gx#syntax-e _%tl2486024893%_)))
                                        (let ((_%hd2486224900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2486124896%_)))
                                              (_%tl2486324903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2486124896%_))))
                                          ((lambda (_%L24906%_
                                                    _%L24908%_
                                                    _%L24909%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24909%_
                                                         (cons _%L24908%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2486324903%_
                                           _%hd2486224900%_
                                           _%hd2485924890%_)))
                                      (_%g2485024869%_ _%g2485124873%_))))
                              (_%g2485024869%_ _%g2485124873%_))))
                      (_%g2485024869%_ _%g2485124873%_)))))
          (_%g2484924926%_ _%$stx24846%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24930%_)
        (letrec ((_%generate24933%_
                  (lambda (_%hd25017%_ _%slots25019%_ _%body25020%_)
                    (let* ((_%__stx2678526786%_ _%hd25017%_)
                           (_%g2502325035%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2678526786%_))))
                      (let ((_%__kont2678826789%_
                             (lambda (_%L25063%_ _%L25065%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24930%_
                                _%L25065%_
                                (gx#syntax->list _%L25063%_)
                                _%slots25019%_
                                _%body25020%_)))
                            (_%__kont2679026791%_
                             (lambda ()
                               (if (gx#identifier? _%hd25017%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24930%_
                                    _%hd25017%_
                                    '()
                                    _%slots25019%_
                                    _%body25020%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _%stx24930%_
                                    _%hd25017%_)))))
                        (let ((_%__match2679826799%_
                               (lambda (_%e2502725053%_
                                        _%hd2502825057%_
                                        _%tl2502925060%_)
                                 (let ((_%L25063%_ _%tl2502925060%_)
                                       (_%L25065%_ _%hd2502825057%_))
                                   (if (and (gx#stx-list? _%L25063%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25063%_))
                                       (_%__kont2678826789%_
                                        _%L25063%_
                                        _%L25065%_)
                                       (_%__kont2679026791%_))))))
                          (if (gx#stx-pair? _%__stx2678526786%_)
                              (let ((_%e2502725053%_
                                     (gx#syntax-e _%__stx2678526786%_)))
                                (let ((_%tl2502925060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2502725053%_)))
                                      (_%hd2502825057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2502725053%_))))
                                  (_%__match2679826799%_
                                   _%e2502725053%_
                                   _%hd2502825057%_
                                   _%tl2502925060%_)))
                              (_%__kont2679026791%_))))))))
          (let* ((_%g2493624955%_
                  (lambda (_%g2493724951%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2493724951%_)))
                 (_%g2493525013%_
                  (lambda (_%g2493724959%_)
                    (if (gx#stx-pair? _%g2493724959%_)
                        (let ((_%e2494124962%_ (gx#syntax-e _%g2493724959%_)))
                          (let ((_%hd2494224966%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2494124962%_)))
                                (_%tl2494324969%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2494124962%_))))
                            (if (gx#stx-pair? _%tl2494324969%_)
                                (let ((_%e2494424972%_
                                       (gx#syntax-e _%tl2494324969%_)))
                                  (let ((_%hd2494524976%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2494424972%_)))
                                        (_%tl2494624979%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2494424972%_))))
                                    (if (gx#stx-pair? _%tl2494624979%_)
                                        (let ((_%e2494724982%_
                                               (gx#syntax-e _%tl2494624979%_)))
                                          (let ((_%hd2494824986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2494724982%_)))
                                                (_%tl2494924989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2494724982%_))))
                                            ((lambda (_%L24992%_
                                                      _%L24994%_
                                                      _%L24995%_)
                                               (if (and (gx#identifier-list?
                                                         _%L24994%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%L24992%_))
                                                   (_%generate24933%_
                                                    _%L24995%_
                                                    _%L24994%_
                                                    _%L24992%_)
                                                   (_%g2493624955%_
                                                    _%g2493724959%_)))
                                             _%tl2494924989%_
                                             _%hd2494824986%_
                                             _%hd2494524976%_)))
                                        (_%g2493624955%_ _%g2493724959%_))))
                                (_%g2493624955%_ _%g2493724959%_))))
                        (_%g2493624955%_ _%g2493724959%_)))))
            (_%g2493525013%_ _%stx24930%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25082%_)
        (letrec ((_%wrap25085%_
                  (lambda (_%e-stx25431%_)
                    (gx#stx-wrap-source
                     _%e-stx25431%_
                     (gx#stx-source _%stx25082%_))))
                 (_%method-opt?25087%_
                  (lambda (_%x25428%_)
                    (let ((__tmp27270 (gx#stx-e _%x25428%_)))
                      (declare (not safe))
                      (##memq __tmp27270 '(rebind:))))))
          (let* ((_%g2508925118%_
                  (lambda (_%g2509025114%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2509025114%_)))
                 (_%g2508825424%_
                  (lambda (_%g2509025122%_)
                    (if (gx#stx-pair? _%g2509025122%_)
                        (let ((_%e2509525125%_ (gx#syntax-e _%g2509025122%_)))
                          (let ((_%hd2509625129%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2509525125%_)))
                                (_%tl2509725132%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2509525125%_))))
                            (if (gx#stx-pair? _%tl2509725132%_)
                                (let ((_%e2509825135%_
                                       (gx#syntax-e _%tl2509725132%_)))
                                  (let ((_%hd2509925139%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2509825135%_)))
                                        (_%tl2510025142%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2509825135%_))))
                                    (if (gx#stx-pair? _%hd2509925139%_)
                                        (let ((_%e2510125145%_
                                               (gx#syntax-e _%hd2509925139%_)))
                                          (let ((_%hd2510225149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2510125145%_)))
                                                (_%tl2510325152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2510125145%_))))
                                            (if (gx#identifier?
                                                 _%hd2510225149%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27271_|
                                                     _%hd2510225149%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2510325152%_)
                                                        (let ((_%e2510425155%_
                                                               (gx#syntax-e
                                                                _%tl2510325152%_)))
                                                          (let ((_%hd2510525159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2510425155%_)))
                        (_%tl2510625162%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2510425155%_))))
                    (if (gx#stx-pair? _%tl2510625162%_)
                        (let ((_%e2510725165%_ (gx#syntax-e _%tl2510625162%_)))
                          (let ((_%hd2510825169%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2510725165%_)))
                                (_%tl2510925172%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2510725165%_))))
                            (if (gx#stx-null? _%tl2510925172%_)
                                (if (gx#stx-pair? _%tl2510025142%_)
                                    (let ((_%e2511025175%_
                                           (gx#syntax-e _%tl2510025142%_)))
                                      (let ((_%hd2511125179%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2511025175%_)))
                                            (_%tl2511225182%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2511025175%_))))
                                        ((lambda (_%L25185%_
                                                  _%L25187%_
                                                  _%L25188%_
                                                  _%L25189%_)
                                           (if (and (gx#identifier? _%L25189%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _%L25188%_))
                                                    (gx#stx-plist?
                                                     _%L25185%_
                                                     _%method-opt?25087%_))
                                               (let* ((_%klass25216%_
                                                       (gx#syntax-local-value
                                                        _%L25188%_))
                                                      (_%rebind?25219%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%L25185%_)))
                                                      (_%g2522225230%_
                                                       (lambda (_%g2522325226%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2522325226%_)))
                                                      (_%g2522125414%_
                                                       (lambda (_%g2522325234%_)
                                                         ((lambda (_%L25237%_)
                                                            (let* ((_%g2525225260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2525325256%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2525325256%_)))
                           (_%g2525125410%_
                            (lambda (_%g2525325264%_)
                              ((lambda (_%L25267%_)
                                 (let* ((_%g2528025288%_
                                         (lambda (_%g2528125284%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2528125284%_)))
                                        (_%g2527925406%_
                                         (lambda (_%g2528125292%_)
                                           ((lambda (_%L25295%_)
                                              (let* ((_%g2530825316%_
                                                      (lambda (_%g2530925312%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2530925312%_)))
                                                     (_%g2530725402%_
                                                      (lambda (_%g2530925320%_)
                                                        ((lambda (_%L25323%_)
                                                           (let* ((_%g2533625344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2533725340%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2533725340%_)))
                          (_%g2533525398%_
                           (lambda (_%g2533725348%_)
                             ((lambda (_%L25351%_)
                                (let* ((_%g2536425372%_
                                        (lambda (_%g2536525368%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2536525368%_)))
                                       (_%g2536325394%_
                                        (lambda (_%g2536525376%_)
                                          ((lambda (_%L25379%_)
                                             (_%wrap25085%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L25323%_
                                                          (cons _%L25379%_
                                                                '())))))
                                           _%g2536525376%_))))
                                  (_%g2536325394%_
                                   (_%wrap25085%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%L25237%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L25189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%L25267%_ (cons _%L25351%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2533725348%_))))
                     (_%g2533525398%_ _%rebind?25219%_)))
                 _%g2530925320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2530725402%_
                                                 (_%wrap25085%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%L25267%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%L25295%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'syntax-rules)
                        (cons '()
                              (cons (cons (cons (gx#datum->syntax '#f '_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'obj)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'arg)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '...)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'call-next-method)
                                                      (cons _%L25237%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25189%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%L25187%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2528125292%_))))
                                   (_%g2527925406%_
                                    (gx#stx-identifier
                                     _%L25188%_
                                     '@next-method))))
                               _%g2525325264%_))))
                      (_%g2525125410%_
                       (gx#stx-identifier
                        _%L25188%_
                        _%L25188%_
                        '"::"
                        _%L25189%_))))
                  _%g2522325234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2522125414%_
                                                  (let ((__obj27062
                                                         _%klass25216%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27062
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27062
                                                           '12
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj27062
                                                         'type-descriptor)))))
                                               (if (gx#identifier? _%L25189%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                          _%L25188%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25082%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; expected type identifier"
                                                        _%stx25082%_
                                                        _%L25188%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25082%_
                                                    _%L25189%_))))
                                         _%tl2511225182%_
                                         _%hd2511125179%_
                                         _%hd2510825169%_
                                         _%hd2510525159%_)))
                                    (_%g2508925118%_ _%g2509025122%_))
                                (_%g2508925118%_ _%g2509025122%_))))
                        (_%g2508925118%_ _%g2509025122%_))))
                (_%g2508925118%_ _%g2509025122%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2508925118%_
                                                     _%g2509025122%_))
                                                (_%g2508925118%_
                                                 _%g2509025122%_))))
                                        (_%g2508925118%_ _%g2509025122%_))))
                                (_%g2508925118%_ _%g2509025122%_))))
                        (_%g2508925118%_ _%g2509025122%_)))))
            (_%g2508825424%_ _%stx25082%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25434%_)
        (letrec ((_%dotted-identifier?25437%_
                  (lambda (_%id26070%_)
                    (if (gx#identifier? _%id26070%_)
                        (let ((_%id-str26073%_
                               (symbol->string (gx#stx-e _%id26070%_))))
                          (if (string-index _%id-str26073%_ '#\.)
                              (let* ((_%split26076%_
                                      (string-split _%id-str26073%_ '#\.))
                                     (__tmp27272 (length _%split26076%_)))
                                (declare (not safe))
                                (##fx= __tmp27272 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25439%_
                  (lambda (_%id26059%_)
                    (let* ((_%id-str26062%_
                            (symbol->string (gx#stx-e _%id26059%_)))
                           (_%split26065%_
                            (string-split _%id-str26062%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26059%_
                             (car _%split26065%_))
                            (cons (gx#stx-identifier
                                   _%id26059%_
                                   (cadr _%split26065%_))
                                  '()))))))
          (let* ((_%__stx2680126802%_ _%stx25434%_)
                 (_%g2544425531%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2680126802%_))))
            (let ((_%__kont2680426805%_
                   (lambda (_%L25952%_ _%L25954%_ _%L25955%_)
                     (let* ((_%g2598325998%_
                             (lambda (_%g2598425994%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2598425994%_)))
                            (_%g2598226051%_
                             (lambda (_%g2598426002%_)
                               (if (gx#stx-pair? _%g2598426002%_)
                                   (let ((_%e2598726005%_
                                          (gx#syntax-e _%g2598426002%_)))
                                     (let ((_%hd2598826009%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2598726005%_)))
                                           (_%tl2598926012%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2598726005%_))))
                                       (if (gx#stx-pair? _%tl2598926012%_)
                                           (let ((_%e2599026015%_
                                                  (gx#syntax-e
                                                   _%tl2598926012%_)))
                                             (let ((_%hd2599126019%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2599026015%_)))
                                                   (_%tl2599226022%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2599026015%_))))
                                               (if (gx#stx-null?
                                                    _%tl2599226022%_)
                                                   ((lambda (_%L26025%_
                                                             _%L26027%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%L26027%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L26025%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2604226045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2604326048%_)
                   (cons _%g2604226045%_ _%g2604326048%_))
                 '()
                 _%L25954%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2599126019%_
                                                    _%hd2598826009%_)
                                                   (_%g2598325998%_
                                                    _%g2598426002%_))))
                                           (_%g2598325998%_ _%g2598426002%_))))
                                   (_%g2598325998%_ _%g2598426002%_)))))
                       (_%g2598226051%_ (_%split-dotted25439%_ _%L25955%_)))))
                  (_%__kont2680826809%_
                   (lambda (_%L25794%_ _%L25796%_)
                     (let* ((_%g2581325828%_
                             (lambda (_%g2581425824%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2581425824%_)))
                            (_%g2581225881%_
                             (lambda (_%g2581425832%_)
                               (if (gx#stx-pair? _%g2581425832%_)
                                   (let ((_%e2581725835%_
                                          (gx#syntax-e _%g2581425832%_)))
                                     (let ((_%hd2581825839%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2581725835%_)))
                                           (_%tl2581925842%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2581725835%_))))
                                       (if (gx#stx-pair? _%tl2581925842%_)
                                           (let ((_%e2582025845%_
                                                  (gx#syntax-e
                                                   _%tl2581925842%_)))
                                             (let ((_%hd2582125849%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2582025845%_)))
                                                   (_%tl2582225852%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2582025845%_))))
                                               (if (gx#stx-null?
                                                    _%tl2582225852%_)
                                                   ((lambda (_%L25855%_
                                                             _%L25857%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%L25857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25855%_ '()))
                                (foldr (lambda (_%g2587225875%_
                                                _%g2587325878%_)
                                         (cons _%g2587225875%_
                                               _%g2587325878%_))
                                       '()
                                       _%L25794%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2582125849%_
                                                    _%hd2581825839%_)
                                                   (_%g2581325828%_
                                                    _%g2581425832%_))))
                                           (_%g2581325828%_ _%g2581425832%_))))
                                   (_%g2581325828%_ _%g2581425832%_)))))
                       (_%g2581225881%_ (_%split-dotted25439%_ _%L25796%_)))))
                  (_%__kont2681226813%_
                   (lambda (_%L25698%_ _%L25700%_ _%L25701%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25700%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25701%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2572825731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2572925734%_)
                          (cons _%g2572825731%_ _%g2572925734%_))
                        '()
                        _%L25698%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2681626817%_
                   (lambda (_%L25598%_ _%L25600%_ _%L25601%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25600%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25601%_ '()))
                                       (foldr (lambda (_%g2562225625%_
                                                       _%g2562325628%_)
                                                (cons _%g2562225625%_
                                                      _%g2562325628%_))
                                              '()
                                              _%L25598%_)))))))
              (let* ((_%__match2692026921%_
                      (lambda (_%e2550825538%_
                               _%hd2550925542%_
                               _%tl2551025545%_
                               _%e2551125548%_
                               _%hd2551225552%_
                               _%tl2551325555%_
                               _%e2551425558%_
                               _%hd2551525562%_
                               _%tl2551625565%_
                               _%__splice2681826819%_
                               _%target2551725568%_
                               _%tl2551925571%_)
                        (letrec ((_%loop2552025574%_
                                  (lambda (_%hd2551825578%_ _%arg2552425581%_)
                                    (if (gx#stx-pair? _%hd2551825578%_)
                                        (let ((_%e2552125584%_
                                               (gx#syntax-e _%hd2551825578%_)))
                                          (let ((_%lp-tl2552325591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2552125584%_)))
                                                (_%lp-hd2552225588%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2552125584%_))))
                                            (_%loop2552025574%_
                                             _%lp-tl2552325591%_
                                             (cons _%lp-hd2552225588%_
                                                   _%arg2552425581%_))))
                                        (let ((_%arg2552525594%_
                                               (reverse _%arg2552425581%_)))
                                          (let ((_%L25598%_ _%arg2552525594%_)
                                                (_%L25600%_ _%hd2551525562%_)
                                                (_%L25601%_ _%hd2551225552%_))
                                            (if (gx#identifier? _%L25601%_)
                                                (_%__kont2681626817%_
                                                 _%L25598%_
                                                 _%L25600%_
                                                 _%L25601%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2544425531%_)))))))))
                          (_%loop2552025574%_ _%target2551725568%_ '()))))
                     (_%__match2689426895%_
                      (lambda (_%e2548725638%_
                               _%hd2548825642%_
                               _%tl2548925645%_
                               _%e2549025648%_
                               _%hd2549125652%_
                               _%tl2549225655%_
                               _%e2549325658%_
                               _%hd2549425662%_
                               _%tl2549525665%_
                               _%__splice2681426815%_
                               _%target2549625668%_
                               _%tl2549825671%_)
                        (letrec ((_%loop2549925674%_
                                  (lambda (_%hd2549725678%_ _%arg2550325681%_)
                                    (if (gx#stx-pair? _%hd2549725678%_)
                                        (let ((_%e2550025684%_
                                               (gx#syntax-e _%hd2549725678%_)))
                                          (let ((_%lp-tl2550225691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2550025684%_)))
                                                (_%lp-hd2550125688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2550025684%_))))
                                            (_%loop2549925674%_
                                             _%lp-tl2550225691%_
                                             (cons _%lp-hd2550125688%_
                                                   _%arg2550325681%_))))
                                        (let ((_%arg2550425694%_
                                               (reverse _%arg2550325681%_)))
                                          (let ((_%L25698%_ _%arg2550425694%_)
                                                (_%L25700%_ _%hd2549425662%_)
                                                (_%L25701%_ _%hd2549125652%_))
                                            (if (and (gx#identifier?
                                                      _%L25701%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2572025723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2572125726%_)
                       (cons _%g2572025723%_ _%g2572125726%_))
                     '()
                     _%L25698%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2681226813%_
                                                 _%L25698%_
                                                 _%L25700%_
                                                 _%L25701%_)
                                                (_%__match2692026921%_
                                                 _%e2548725638%_
                                                 _%hd2548825642%_
                                                 _%tl2548925645%_
                                                 _%e2549025648%_
                                                 _%hd2549125652%_
                                                 _%tl2549225655%_
                                                 _%e2549325658%_
                                                 _%hd2549425662%_
                                                 _%tl2549525665%_
                                                 _%__splice2681426815%_
                                                 _%target2549625668%_
                                                 _%tl2549825671%_))))))))
                          (_%loop2549925674%_ _%target2549625668%_ '()))))
                     (_%__match2688026881%_
                      (lambda (_%e2548725638%_
                               _%hd2548825642%_
                               _%tl2548925645%_
                               _%e2549025648%_
                               _%hd2549125652%_
                               _%tl2549225655%_)
                        (if (gx#stx-pair? _%tl2549225655%_)
                            (let ((_%e2549325658%_
                                   (gx#syntax-e _%tl2549225655%_)))
                              (let ((_%tl2549525665%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2549325658%_)))
                                    (_%hd2549425662%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2549325658%_))))
                                (if (gx#stx-pair/null? _%tl2549525665%_)
                                    (let ((_%__splice2681426815%_
                                           (gx#syntax-split-splice
                                            _%tl2549525665%_
                                            '0)))
                                      (let ((_%tl2549825671%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2681426815%_
                                                '1)))
                                            (_%target2549625668%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2681426815%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2549825671%_)
                                            (_%__match2689426895%_
                                             _%e2548725638%_
                                             _%hd2548825642%_
                                             _%tl2548925645%_
                                             _%e2549025648%_
                                             _%hd2549125652%_
                                             _%tl2549225655%_
                                             _%e2549325658%_
                                             _%hd2549425662%_
                                             _%tl2549525665%_
                                             _%__splice2681426815%_
                                             _%target2549625668%_
                                             _%tl2549825671%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2544425531%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2544425531%_)))))
                            (let () (declare (not safe)) (_%g2544425531%_)))))
                     (_%__match2686826869%_
                      (lambda (_%e2546925744%_
                               _%hd2547025748%_
                               _%tl2547125751%_
                               _%e2547225754%_
                               _%hd2547325758%_
                               _%tl2547425761%_
                               _%__splice2681026811%_
                               _%target2547525764%_
                               _%tl2547725767%_)
                        (letrec ((_%loop2547825770%_
                                  (lambda (_%hd2547625774%_ _%arg2548225777%_)
                                    (if (gx#stx-pair? _%hd2547625774%_)
                                        (let ((_%e2547925780%_
                                               (gx#syntax-e _%hd2547625774%_)))
                                          (let ((_%lp-tl2548125787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2547925780%_)))
                                                (_%lp-hd2548025784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2547925780%_))))
                                            (_%loop2547825770%_
                                             _%lp-tl2548125787%_
                                             (cons _%lp-hd2548025784%_
                                                   _%arg2548225777%_))))
                                        (let ((_%arg2548325790%_
                                               (reverse _%arg2548225777%_)))
                                          (let ((_%L25794%_ _%arg2548325790%_)
                                                (_%L25796%_ _%hd2547325758%_))
                                            (if (_%dotted-identifier?25437%_
                                                 _%L25796%_)
                                                (_%__kont2680826809%_
                                                 _%L25794%_
                                                 _%L25796%_)
                                                (_%__match2688026881%_
                                                 _%e2546925744%_
                                                 _%hd2547025748%_
                                                 _%tl2547125751%_
                                                 _%e2547225754%_
                                                 _%hd2547325758%_
                                                 _%tl2547425761%_))))))))
                          (_%loop2547825770%_ _%target2547525764%_ '()))))
                     (_%__match2686626867%_
                      (lambda (_%e2546925744%_
                               _%hd2547025748%_
                               _%tl2547125751%_
                               _%e2547225754%_
                               _%hd2547325758%_
                               _%tl2547425761%_
                               _%__splice2681026811%_
                               _%target2547525764%_
                               _%tl2547725767%_)
                        (if (gx#stx-null? _%tl2547725767%_)
                            (_%__match2686826869%_
                             _%e2546925744%_
                             _%hd2547025748%_
                             _%tl2547125751%_
                             _%e2547225754%_
                             _%hd2547325758%_
                             _%tl2547425761%_
                             _%__splice2681026811%_
                             _%target2547525764%_
                             _%tl2547725767%_)
                            (if (gx#stx-pair? _%tl2547425761%_)
                                (let ((_%e2549325658%_
                                       (gx#syntax-e _%tl2547425761%_)))
                                  (let ((_%tl2549525665%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2549325658%_)))
                                        (_%hd2549425662%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2549325658%_))))
                                    (if (gx#stx-pair/null? _%tl2549525665%_)
                                        (let ((_%__splice2681426815%_
                                               (gx#syntax-split-splice
                                                _%tl2549525665%_
                                                '0)))
                                          (let ((_%tl2549825671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2681426815%_
                                                    '1)))
                                                (_%target2549625668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2681426815%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2549825671%_)
                                                (_%__match2689426895%_
                                                 _%e2546925744%_
                                                 _%hd2547025748%_
                                                 _%tl2547125751%_
                                                 _%e2547225754%_
                                                 _%hd2547325758%_
                                                 _%tl2547425761%_
                                                 _%e2549325658%_
                                                 _%hd2549425662%_
                                                 _%tl2549525665%_
                                                 _%__splice2681426815%_
                                                 _%target2549625668%_
                                                 _%tl2549825671%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2544425531%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2544425531%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2544425531%_))))))
                     (_%__match2684826849%_
                      (lambda (_%e2544925892%_
                               _%hd2545025896%_
                               _%tl2545125899%_
                               _%e2545225902%_
                               _%hd2545325906%_
                               _%tl2545425909%_
                               _%__splice2680626807%_
                               _%target2545525912%_
                               _%tl2545725915%_
                               _%e2546425918%_
                               _%hd2546525922%_
                               _%tl2546625925%_)
                        (letrec ((_%loop2545825928%_
                                  (lambda (_%hd2545625932%_ _%arg2546225935%_)
                                    (if (gx#stx-pair? _%hd2545625932%_)
                                        (let ((_%e2545925938%_
                                               (gx#syntax-e _%hd2545625932%_)))
                                          (let ((_%lp-tl2546125945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2545925938%_)))
                                                (_%lp-hd2546025942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2545925938%_))))
                                            (_%loop2545825928%_
                                             _%lp-tl2546125945%_
                                             (cons _%lp-hd2546025942%_
                                                   _%arg2546225935%_))))
                                        (let ((_%arg2546325948%_
                                               (reverse _%arg2546225935%_)))
                                          (let ((_%L25952%_ _%hd2546525922%_)
                                                (_%L25954%_ _%arg2546325948%_)
                                                (_%L25955%_ _%hd2545325906%_))
                                            (if (and (_%dotted-identifier?25437%_
                                                      _%L25955%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2597425977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2597525980%_)
                       (cons _%g2597425977%_ _%g2597525980%_))
                     '()
                     _%L25954%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2680426805%_
                                                 _%L25952%_
                                                 _%L25954%_
                                                 _%L25955%_)
                                                (let ((_%__splice2681026811%_
                                                       (gx#syntax-split-splice
                                                        _%tl2545425909%_
                                                        '0)))
                                                  (let ((_%tl2547725767%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2681026811%_
                                                            '1)))
                                                        (_%target2547525764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2681026811%_
                                                            '0))))
                                                    (_%__match2686626867%_
                                                     _%e2544925892%_
                                                     _%hd2545025896%_
                                                     _%tl2545125899%_
                                                     _%e2545225902%_
                                                     _%hd2545325906%_
                                                     _%tl2545425909%_
                                                     _%__splice2681026811%_
                                                     _%target2547525764%_
                                                     _%tl2547725767%_))))))))))
                          (_%loop2545825928%_ _%target2545525912%_ '())))))
                (if (gx#stx-pair? _%__stx2680126802%_)
                    (let ((_%e2544925892%_ (gx#syntax-e _%__stx2680126802%_)))
                      (let ((_%tl2545125899%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2544925892%_)))
                            (_%hd2545025896%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2544925892%_))))
                        (if (gx#stx-pair? _%tl2545125899%_)
                            (let ((_%e2545225902%_
                                   (gx#syntax-e _%tl2545125899%_)))
                              (let ((_%tl2545425909%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2545225902%_)))
                                    (_%hd2545325906%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2545225902%_))))
                                (if (gx#stx-pair/null? _%tl2545425909%_)
                                    (if (let ((__tmp27273
                                               (gx#stx-length
                                                _%tl2545425909%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27273 '1))
                                        (let ((_%__splice2680626807%_
                                               (gx#syntax-split-splice
                                                _%tl2545425909%_
                                                '1)))
                                          (let ((_%tl2545725915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2680626807%_
                                                    '1)))
                                                (_%target2545525912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2680626807%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2545725915%_)
                                                (let ((_%e2546425918%_
                                                       (gx#syntax-e
                                                        _%tl2545725915%_)))
                                                  (let ((_%tl2546625925%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2546425918%_)))
                                                        (_%hd2546525922%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2546425918%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2546625925%_)
                                                        (_%__match2684826849%_
                                                         _%e2544925892%_
                                                         _%hd2545025896%_
                                                         _%tl2545125899%_
                                                         _%e2545225902%_
                                                         _%hd2545325906%_
                                                         _%tl2545425909%_
                                                         _%__splice2680626807%_
                                                         _%target2545525912%_
                                                         _%tl2545725915%_
                                                         _%e2546425918%_
                                                         _%hd2546525922%_
                                                         _%tl2546625925%_)
                                                        (let ((_%__splice2681026811%_
                                                               (gx#syntax-split-splice
                                                                _%tl2545425909%_
                                                                '0)))
                                                          (let ((_%tl2547725767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2681026811%_ '1)))
                        (_%target2547525764%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2681026811%_ '0))))
                    (if (gx#stx-null? _%tl2547725767%_)
                        (_%__match2686826869%_
                         _%e2544925892%_
                         _%hd2545025896%_
                         _%tl2545125899%_
                         _%e2545225902%_
                         _%hd2545325906%_
                         _%tl2545425909%_
                         _%__splice2681026811%_
                         _%target2547525764%_
                         _%tl2547725767%_)
                        (if (gx#stx-pair? _%tl2545425909%_)
                            (let ((_%e2549325658%_
                                   (gx#syntax-e _%tl2545425909%_)))
                              (let ((_%tl2549525665%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2549325658%_)))
                                    (_%hd2549425662%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2549325658%_))))
                                (if (gx#stx-pair/null? _%tl2549525665%_)
                                    (let ((_%__splice2681426815%_
                                           (gx#syntax-split-splice
                                            _%tl2549525665%_
                                            '0)))
                                      (let ((_%tl2549825671%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2681426815%_
                                                '1)))
                                            (_%target2549625668%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2681426815%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2549825671%_)
                                            (_%__match2689426895%_
                                             _%e2544925892%_
                                             _%hd2545025896%_
                                             _%tl2545125899%_
                                             _%e2545225902%_
                                             _%hd2545325906%_
                                             _%tl2545425909%_
                                             _%e2549325658%_
                                             _%hd2549425662%_
                                             _%tl2549525665%_
                                             _%__splice2681426815%_
                                             _%target2549625668%_
                                             _%tl2549825671%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2544425531%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2544425531%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2544425531%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2681026811%_
                                                       (gx#syntax-split-splice
                                                        _%tl2545425909%_
                                                        '0)))
                                                  (let ((_%tl2547725767%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2681026811%_
                                                            '1)))
                                                        (_%target2547525764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2681026811%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2547725767%_)
                                                        (_%__match2686826869%_
                                                         _%e2544925892%_
                                                         _%hd2545025896%_
                                                         _%tl2545125899%_
                                                         _%e2545225902%_
                                                         _%hd2545325906%_
                                                         _%tl2545425909%_
                                                         _%__splice2681026811%_
                                                         _%target2547525764%_
                                                         _%tl2547725767%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2545425909%_)
                                                            (let ((_%e2549325658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2545425909%_)))
                      (let ((_%tl2549525665%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2549325658%_)))
                            (_%hd2549425662%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2549325658%_))))
                        (if (gx#stx-pair/null? _%tl2549525665%_)
                            (let ((_%__splice2681426815%_
                                   (gx#syntax-split-splice
                                    _%tl2549525665%_
                                    '0)))
                              (let ((_%tl2549825671%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2681426815%_
                                        '1)))
                                    (_%target2549625668%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2681426815%_
                                        '0))))
                                (if (gx#stx-null? _%tl2549825671%_)
                                    (_%__match2689426895%_
                                     _%e2544925892%_
                                     _%hd2545025896%_
                                     _%tl2545125899%_
                                     _%e2545225902%_
                                     _%hd2545325906%_
                                     _%tl2545425909%_
                                     _%e2549325658%_
                                     _%hd2549425662%_
                                     _%tl2549525665%_
                                     _%__splice2681426815%_
                                     _%target2549625668%_
                                     _%tl2549825671%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2544425531%_)))))
                            (let () (declare (not safe)) (_%g2544425531%_)))))
                    (let () (declare (not safe)) (_%g2544425531%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2681026811%_
                                               (gx#syntax-split-splice
                                                _%tl2545425909%_
                                                '0)))
                                          (let ((_%tl2547725767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2681026811%_
                                                    '1)))
                                                (_%target2547525764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2681026811%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2547725767%_)
                                                (_%__match2686826869%_
                                                 _%e2544925892%_
                                                 _%hd2545025896%_
                                                 _%tl2545125899%_
                                                 _%e2545225902%_
                                                 _%hd2545325906%_
                                                 _%tl2545425909%_
                                                 _%__splice2681026811%_
                                                 _%target2547525764%_
                                                 _%tl2547725767%_)
                                                (if (gx#stx-pair?
                                                     _%tl2545425909%_)
                                                    (let ((_%e2549325658%_
                                                           (gx#syntax-e
                                                            _%tl2545425909%_)))
                                                      (let ((_%tl2549525665%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2549325658%_)))
                    (_%hd2549425662%_
                     (let () (declare (not safe)) (##car _%e2549325658%_))))
                (if (gx#stx-pair/null? _%tl2549525665%_)
                    (let ((_%__splice2681426815%_
                           (gx#syntax-split-splice _%tl2549525665%_ '0)))
                      (let ((_%tl2549825671%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2681426815%_ '1)))
                            (_%target2549625668%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2681426815%_ '0))))
                        (if (gx#stx-null? _%tl2549825671%_)
                            (_%__match2689426895%_
                             _%e2544925892%_
                             _%hd2545025896%_
                             _%tl2545125899%_
                             _%e2545225902%_
                             _%hd2545325906%_
                             _%tl2545425909%_
                             _%e2549325658%_
                             _%hd2549425662%_
                             _%tl2549525665%_
                             _%__splice2681426815%_
                             _%target2549625668%_
                             _%tl2549825671%_)
                            (let () (declare (not safe)) (_%g2544425531%_)))))
                    (let () (declare (not safe)) (_%g2544425531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2544425531%_)))))))
                                    (if (gx#stx-pair? _%tl2545425909%_)
                                        (let ((_%e2549325658%_
                                               (gx#syntax-e _%tl2545425909%_)))
                                          (let ((_%tl2549525665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2549325658%_)))
                                                (_%hd2549425662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2549325658%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2549525665%_)
                                                (let ((_%__splice2681426815%_
                                                       (gx#syntax-split-splice
                                                        _%tl2549525665%_
                                                        '0)))
                                                  (let ((_%tl2549825671%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2681426815%_
                                                            '1)))
                                                        (_%target2549625668%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2681426815%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2549825671%_)
                                                        (_%__match2689426895%_
                                                         _%e2544925892%_
                                                         _%hd2545025896%_
                                                         _%tl2545125899%_
                                                         _%e2545225902%_
                                                         _%hd2545325906%_
                                                         _%tl2545425909%_
                                                         _%e2549325658%_
                                                         _%hd2549425662%_
                                                         _%tl2549525665%_
                                                         _%__splice2681426815%_
                                                         _%target2549625668%_
                                                         _%tl2549825671%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2544425531%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2544425531%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2544425531%_))))))
                            (let () (declare (not safe)) (_%g2544425531%_)))))
                    (let () (declare (not safe)) (_%g2544425531%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26083%_)
        (let* ((_%__stx2692326924%_ _%$stx26083%_)
               (_%g2608826128%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2692326924%_))))
          (let ((_%__kont2692626927%_
                 (lambda (_%L26266%_ _%L26268%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26268%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26266%_ '()))
                                     '())))))
                (_%__kont2692826929%_
                 (lambda (_%L26195%_ _%L26197%_ _%L26198%_ _%L26199%_)
                   (cons _%L26199%_
                         (cons (cons _%L26199%_
                                     (cons _%L26198%_ (cons _%L26197%_ '())))
                               (foldr (lambda (_%g2622026223%_ _%g2622126226%_)
                                        (cons _%g2622026223%_ _%g2622126226%_))
                                      '()
                                      _%L26195%_))))))
            (let* ((_%__match2697826979%_
                    (lambda (_%e2610526135%_
                             _%hd2610626139%_
                             _%tl2610726142%_
                             _%e2610826145%_
                             _%hd2610926149%_
                             _%tl2611026152%_
                             _%e2611126155%_
                             _%hd2611226159%_
                             _%tl2611326162%_
                             _%__splice2693026931%_
                             _%target2611426165%_
                             _%tl2611626168%_)
                      (letrec ((_%loop2611726171%_
                                (lambda (_%hd2611526175%_ _%rest2612126178%_)
                                  (if (gx#stx-pair? _%hd2611526175%_)
                                      (let ((_%e2611826181%_
                                             (gx#syntax-e _%hd2611526175%_)))
                                        (let ((_%lp-tl2612026188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2611826181%_)))
                                              (_%lp-hd2611926185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2611826181%_))))
                                          (_%loop2611726171%_
                                           _%lp-tl2612026188%_
                                           (cons _%lp-hd2611926185%_
                                                 _%rest2612126178%_))))
                                      (let ((_%rest2612226191%_
                                             (reverse _%rest2612126178%_)))
                                        (_%__kont2692826929%_
                                         _%rest2612226191%_
                                         _%hd2611226159%_
                                         _%hd2610926149%_
                                         _%hd2610626139%_))))))
                        (_%loop2611726171%_ _%target2611426165%_ '()))))
                   (_%__match2695226953%_
                    (lambda (_%e2609226236%_
                             _%hd2609326240%_
                             _%tl2609426243%_
                             _%e2609526246%_
                             _%hd2609626250%_
                             _%tl2609726253%_
                             _%e2609826256%_
                             _%hd2609926260%_
                             _%tl2610026263%_)
                      (let ((_%L26266%_ _%hd2609926260%_)
                            (_%L26268%_ _%hd2609626250%_))
                        (if (gx#identifier? _%L26266%_)
                            (_%__kont2692626927%_ _%L26266%_ _%L26268%_)
                            (if (gx#stx-pair/null? _%tl2610026263%_)
                                (let ((_%__splice2693026931%_
                                       (gx#syntax-split-splice
                                        _%tl2610026263%_
                                        '0)))
                                  (let ((_%tl2611626168%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2693026931%_
                                            '1)))
                                        (_%target2611426165%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2693026931%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2611626168%_)
                                        (_%__match2697826979%_
                                         _%e2609226236%_
                                         _%hd2609326240%_
                                         _%tl2609426243%_
                                         _%e2609526246%_
                                         _%hd2609626250%_
                                         _%tl2609726253%_
                                         _%e2609826256%_
                                         _%hd2609926260%_
                                         _%tl2610026263%_
                                         _%__splice2693026931%_
                                         _%target2611426165%_
                                         _%tl2611626168%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2608826128%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2608826128%_))))))))
              (if (gx#stx-pair? _%__stx2692326924%_)
                  (let ((_%e2609226236%_ (gx#syntax-e _%__stx2692326924%_)))
                    (let ((_%tl2609426243%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2609226236%_)))
                          (_%hd2609326240%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2609226236%_))))
                      (if (gx#stx-pair? _%tl2609426243%_)
                          (let ((_%e2609526246%_
                                 (gx#syntax-e _%tl2609426243%_)))
                            (let ((_%tl2609726253%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2609526246%_)))
                                  (_%hd2609626250%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2609526246%_))))
                              (if (gx#stx-pair? _%tl2609726253%_)
                                  (let ((_%e2609826256%_
                                         (gx#syntax-e _%tl2609726253%_)))
                                    (let ((_%tl2610026263%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2609826256%_)))
                                          (_%hd2609926260%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2609826256%_))))
                                      (if (gx#stx-null? _%tl2610026263%_)
                                          (_%__match2695226953%_
                                           _%e2609226236%_
                                           _%hd2609326240%_
                                           _%tl2609426243%_
                                           _%e2609526246%_
                                           _%hd2609626250%_
                                           _%tl2609726253%_
                                           _%e2609826256%_
                                           _%hd2609926260%_
                                           _%tl2610026263%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2610026263%_)
                                              (let ((_%__splice2693026931%_
                                                     (gx#syntax-split-splice
                                                      _%tl2610026263%_
                                                      '0)))
                                                (let ((_%tl2611626168%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2693026931%_
                                                          '1)))
                                                      (_%target2611426165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2693026931%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2611626168%_)
                                                      (_%__match2697826979%_
                                                       _%e2609226236%_
                                                       _%hd2609326240%_
                                                       _%tl2609426243%_
                                                       _%e2609526246%_
                                                       _%hd2609626250%_
                                                       _%tl2609726253%_
                                                       _%e2609826256%_
                                                       _%hd2609926260%_
                                                       _%tl2610026263%_
                                                       _%__splice2693026931%_
                                                       _%target2611426165%_
                                                       _%tl2611626168%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2608826128%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2608826128%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2608826128%_)))))
                          (let () (declare (not safe)) (_%g2608826128%_)))))
                  (let () (declare (not safe)) (_%g2608826128%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26288%_)
        (let* ((_%__stx2698126982%_ _%$stx26288%_)
               (_%g2629326345%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2698126982%_))))
          (let ((_%__kont2698426985%_
                 (lambda (_%L26521%_ _%L26523%_ _%L26524%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26524%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26523%_ '()))
                                     (cons _%L26521%_ '()))))))
                (_%__kont2698626987%_
                 (lambda (_%L26432%_
                          _%L26434%_
                          _%L26435%_
                          _%L26436%_
                          _%L26437%_
                          _%L26438%_)
                   (cons _%L26438%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26437%_
                                           (cons _%L26436%_
                                                 (foldr (lambda (_%g2646526468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2646626471%_)
                  (cons _%g2646526468%_ _%g2646626471%_))
                '()
                _%L26435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26434%_ (cons _%L26432%_ '())))))))
            (let* ((_%__match2705627057%_
                    (lambda (_%e2631626352%_
                             _%hd2631726356%_
                             _%tl2631826359%_
                             _%e2631926362%_
                             _%hd2632026366%_
                             _%tl2632126369%_
                             _%e2632226372%_
                             _%hd2632326376%_
                             _%tl2632426379%_
                             _%__splice2698826989%_
                             _%target2632526382%_
                             _%tl2632726385%_
                             _%e2633426388%_
                             _%hd2633526392%_
                             _%tl2633626395%_
                             _%e2633726398%_
                             _%hd2633826402%_
                             _%tl2633926405%_)
                      (letrec ((_%loop2632826408%_
                                (lambda (_%hd2632626412%_ _%path2633226415%_)
                                  (if (gx#stx-pair? _%hd2632626412%_)
                                      (let ((_%e2632926418%_
                                             (gx#syntax-e _%hd2632626412%_)))
                                        (let ((_%lp-tl2633126425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2632926418%_)))
                                              (_%lp-hd2633026422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2632926418%_))))
                                          (_%loop2632826408%_
                                           _%lp-tl2633126425%_
                                           (cons _%lp-hd2633026422%_
                                                 _%path2633226415%_))))
                                      (let ((_%path2633326428%_
                                             (reverse _%path2633226415%_)))
                                        (_%__kont2698626987%_
                                         _%hd2633826402%_
                                         _%hd2633526392%_
                                         _%path2633326428%_
                                         _%hd2632326376%_
                                         _%hd2632026366%_
                                         _%hd2631726356%_))))))
                        (_%loop2632826408%_ _%target2632526382%_ '()))))
                   (_%__match2701627017%_
                    (lambda (_%e2629826481%_
                             _%hd2629926485%_
                             _%tl2630026488%_
                             _%e2630126491%_
                             _%hd2630226495%_
                             _%tl2630326498%_
                             _%e2630426501%_
                             _%hd2630526505%_
                             _%tl2630626508%_
                             _%e2630726511%_
                             _%hd2630826515%_
                             _%tl2630926518%_)
                      (let ((_%L26521%_ _%hd2630826515%_)
                            (_%L26523%_ _%hd2630526505%_)
                            (_%L26524%_ _%hd2630226495%_))
                        (if (gx#identifier? _%L26523%_)
                            (_%__kont2698426985%_
                             _%L26521%_
                             _%L26523%_
                             _%L26524%_)
                            (if (gx#stx-pair/null? _%tl2630626508%_)
                                (if (let ((__tmp27274
                                           (gx#stx-length _%tl2630626508%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27274 '2))
                                    (let ((_%__splice2698826989%_
                                           (gx#syntax-split-splice
                                            _%tl2630626508%_
                                            '2)))
                                      (let ((_%tl2632726385%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2698826989%_
                                                '1)))
                                            (_%target2632526382%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2698826989%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2632726385%_)
                                            (let ((_%e2633426388%_
                                                   (gx#syntax-e
                                                    _%tl2632726385%_)))
                                              (let ((_%tl2633626395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2633426388%_)))
                                                    (_%hd2633526392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2633426388%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2633626395%_)
                                                    (let ((_%e2633726398%_
                                                           (gx#syntax-e
                                                            _%tl2633626395%_)))
                                                      (let ((_%tl2633926405%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2633726398%_)))
                    (_%hd2633826402%_
                     (let () (declare (not safe)) (##car _%e2633726398%_))))
                (if (gx#stx-null? _%tl2633926405%_)
                    (_%__match2705627057%_
                     _%e2629826481%_
                     _%hd2629926485%_
                     _%tl2630026488%_
                     _%e2630126491%_
                     _%hd2630226495%_
                     _%tl2630326498%_
                     _%e2630426501%_
                     _%hd2630526505%_
                     _%tl2630626508%_
                     _%__splice2698826989%_
                     _%target2632526382%_
                     _%tl2632726385%_
                     _%e2633426388%_
                     _%hd2633526392%_
                     _%tl2633626395%_
                     _%e2633726398%_
                     _%hd2633826402%_
                     _%tl2633926405%_)
                    (let () (declare (not safe)) (_%g2629326345%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2629326345%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2629326345%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2629326345%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2629326345%_))))))))
              (if (gx#stx-pair? _%__stx2698126982%_)
                  (let ((_%e2629826481%_ (gx#syntax-e _%__stx2698126982%_)))
                    (let ((_%tl2630026488%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2629826481%_)))
                          (_%hd2629926485%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2629826481%_))))
                      (if (gx#stx-pair? _%tl2630026488%_)
                          (let ((_%e2630126491%_
                                 (gx#syntax-e _%tl2630026488%_)))
                            (let ((_%tl2630326498%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2630126491%_)))
                                  (_%hd2630226495%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2630126491%_))))
                              (if (gx#stx-pair? _%tl2630326498%_)
                                  (let ((_%e2630426501%_
                                         (gx#syntax-e _%tl2630326498%_)))
                                    (let ((_%tl2630626508%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2630426501%_)))
                                          (_%hd2630526505%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2630426501%_))))
                                      (if (gx#stx-pair? _%tl2630626508%_)
                                          (let ((_%e2630726511%_
                                                 (gx#syntax-e
                                                  _%tl2630626508%_)))
                                            (let ((_%tl2630926518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2630726511%_)))
                                                  (_%hd2630826515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2630726511%_))))
                                              (if (gx#stx-null?
                                                   _%tl2630926518%_)
                                                  (_%__match2701627017%_
                                                   _%e2629826481%_
                                                   _%hd2629926485%_
                                                   _%tl2630026488%_
                                                   _%e2630126491%_
                                                   _%hd2630226495%_
                                                   _%tl2630326498%_
                                                   _%e2630426501%_
                                                   _%hd2630526505%_
                                                   _%tl2630626508%_
                                                   _%e2630726511%_
                                                   _%hd2630826515%_
                                                   _%tl2630926518%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2630626508%_)
                                                      (if (let ((__tmp27275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2630626508%_)))
                    (declare (not safe))
                    (##fx>= __tmp27275 '2))
                  (let ((_%__splice2698826989%_
                         (gx#syntax-split-splice _%tl2630626508%_ '2)))
                    (let ((_%tl2632726385%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2698826989%_ '1)))
                          (_%target2632526382%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2698826989%_ '0))))
                      (if (gx#stx-pair? _%tl2632726385%_)
                          (let ((_%e2633426388%_
                                 (gx#syntax-e _%tl2632726385%_)))
                            (let ((_%tl2633626395%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2633426388%_)))
                                  (_%hd2633526392%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2633426388%_))))
                              (if (gx#stx-pair? _%tl2633626395%_)
                                  (let ((_%e2633726398%_
                                         (gx#syntax-e _%tl2633626395%_)))
                                    (let ((_%tl2633926405%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2633726398%_)))
                                          (_%hd2633826402%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2633726398%_))))
                                      (if (gx#stx-null? _%tl2633926405%_)
                                          (_%__match2705627057%_
                                           _%e2629826481%_
                                           _%hd2629926485%_
                                           _%tl2630026488%_
                                           _%e2630126491%_
                                           _%hd2630226495%_
                                           _%tl2630326498%_
                                           _%e2630426501%_
                                           _%hd2630526505%_
                                           _%tl2630626508%_
                                           _%__splice2698826989%_
                                           _%target2632526382%_
                                           _%tl2632726385%_
                                           _%e2633426388%_
                                           _%hd2633526392%_
                                           _%tl2633626395%_
                                           _%e2633726398%_
                                           _%hd2633826402%_
                                           _%tl2633926405%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2629326345%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2629326345%_)))))
                          (let () (declare (not safe)) (_%g2629326345%_)))))
                  (let () (declare (not safe)) (_%g2629326345%_)))
              (let () (declare (not safe)) (_%g2629326345%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2630626508%_)
                                              (if (let ((__tmp27276
                                                         (gx#stx-length
                                                          _%tl2630626508%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27276 '2))
                                                  (let ((_%__splice2698826989%_
                                                         (gx#syntax-split-splice
                                                          _%tl2630626508%_
                                                          '2)))
                                                    (let ((_%tl2632726385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2698826989%_
                                                              '1)))
                                                          (_%target2632526382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2698826989%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2632726385%_)
                                                          (let ((_%e2633426388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2632726385%_)))
                    (let ((_%tl2633626395%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2633426388%_)))
                          (_%hd2633526392%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2633426388%_))))
                      (if (gx#stx-pair? _%tl2633626395%_)
                          (let ((_%e2633726398%_
                                 (gx#syntax-e _%tl2633626395%_)))
                            (let ((_%tl2633926405%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2633726398%_)))
                                  (_%hd2633826402%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2633726398%_))))
                              (if (gx#stx-null? _%tl2633926405%_)
                                  (_%__match2705627057%_
                                   _%e2629826481%_
                                   _%hd2629926485%_
                                   _%tl2630026488%_
                                   _%e2630126491%_
                                   _%hd2630226495%_
                                   _%tl2630326498%_
                                   _%e2630426501%_
                                   _%hd2630526505%_
                                   _%tl2630626508%_
                                   _%__splice2698826989%_
                                   _%target2632526382%_
                                   _%tl2632726385%_
                                   _%e2633426388%_
                                   _%hd2633526392%_
                                   _%tl2633626395%_
                                   _%e2633726398%_
                                   _%hd2633826402%_
                                   _%tl2633926405%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2629326345%_)))))
                          (let () (declare (not safe)) (_%g2629326345%_)))))
                  (let () (declare (not safe)) (_%g2629326345%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2629326345%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2629326345%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2629326345%_)))))
                          (let () (declare (not safe)) (_%g2629326345%_)))))
                  (let () (declare (not safe)) (_%g2629326345%_))))))))))
