(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27295_|
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
                    (let ((__tmp27267 (gx#stx-e _%key24831%_)))
                      (declare (not safe))
                      (##memq __tmp27267
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:
                                acyclic:))))))
          (gx#stx-plist? _%stx24825%_ _%body-opt?24828%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22613%_
               _%id22615%_
               _%super-ref22616%_
               _%slots22617%_
               _%body22618%_)
        (letrec ((_%wrap22620%_
                  (lambda (_%e-stx24822%_)
                    (gx#stx-wrap-source
                     _%e-stx24822%_
                     (gx#stx-source _%stx22613%_))))
                 (_%make-id22622%_
                  (lambda _%args24819%_
                    (apply gx#stx-identifier _%id22615%_ _%args24819%_)))
                 (_%get-mixin-slots22623%_
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
                               (_%get-mixin-slots-r22624%_ _%super24789%_))
                              (_%dedup24795%_
                               (concatenate
                                (map _%get-mixin-slots-r22624%_
                                     _%super24789%_))))))))
                 (_%get-mixin-slots-r22624%_
                  (lambda (_%type-id24783%_)
                    (let ((_%info24786%_
                           (gx#syntax-local-value _%type-id24783%_)))
                      (let ((__tmp27269
                             (let ((__obj27047 _%info24786%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27047
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27047
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27047
                                    'slots))))
                            (__tmp27268
                             (concatenate
                              (map _%get-mixin-slots-r22624%_
                                   (let ((__obj27048 _%info24786%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27048
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27048
                                            '4
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27048
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27269 __tmp27268))))))
          (gx#check-duplicate-identifiers _%slots22617%_ _%stx22613%_)
          (let* ((_%name22626%_ (symbol->string (gx#stx-e _%id22615%_)))
                 (_%super22629%_
                  (map gx#syntax-local-value _%super-ref22616%_))
                 (_%struct?22632%_ (gx#stx-getq 'struct: _%body22618%_))
                 (_%g2263522643%_
                  (lambda (_%g2263622639%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2263622639%_)))
                 (_%g2263424779%_
                  (lambda (_%g2263622647%_)
                    ((lambda (_%g2263722650%_)
                       (let* ((_%g2266622674%_
                               (lambda (_%g2266722670%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2266722670%_)))
                              (_%g2266524775%_
                               (lambda (_%g2266722678%_)
                                 ((lambda (_%g2266822681%_)
                                    (let* ((_%g2269422702%_
                                            (lambda (_%g2269522698%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2269522698%_)))
                                           (_%g2269324771%_
                                            (lambda (_%g2269522706%_)
                                              ((lambda (_%g2269622709%_)
                                                 (let* ((_%g2272222730%_
                                                         (lambda (_%g2272322726%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2272322726%_)))
                                                        (_%g2272124767%_
                                                         (lambda (_%g2272322734%_)
                                                           ((lambda (_%g2272422737%_)
                                                              (let* ((_%g2275022758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2275122754%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2275122754%_)))
                             (_%g2274924763%_
                              (lambda (_%g2275122762%_)
                                ((lambda (_%g2275222765%_)
                                   (let* ((_%g2277822795%_
                                           (lambda (_%g2277922791%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2277922791%_)))
                                          (_%g2277724759%_
                                           (lambda (_%g2277922799%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2277922799%_)
                                                 (let ((_g27270_
                                                        (gx#syntax-split-splice
                                                         _%g2277922799%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27271_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27270_)
                          (##values-length _g27270_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27271_ 2)))
                   (error "Context expects 2 values" _g27271_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2278122802%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27270_
                                                               0)))
                                                           (_%tl2278322805%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27270_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2278322805%_)
                                                           (letrec ((_%loop2278422808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2278222812%_ _%slot2278822815%_)
                               (if (gx#stx-pair? _%hd2278222812%_)
                                   (let ((_%e2278522817%_
                                          (gx#syntax-e _%hd2278222812%_)))
                                     (let ((_%lp-hd2278622821%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2278522817%_)))
                                           (_%lp-tl2278722824%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2278522817%_))))
                                       (_%loop2278422808%_
                                        _%lp-tl2278722824%_
                                        (cons _%lp-hd2278622821%_
                                              _%slot2278822815%_))))
                                   (let ((_%slot2278922827%_
                                          (reverse _%slot2278822815%_)))
                                     ((lambda (_%g2278022830%_)
                                        (let* ((_%g2284722864%_
                                                (lambda (_%g2284822860%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2284822860%_)))
                                               (_%g2284624750%_
                                                (lambda (_%g2284822868%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2284822868%_)
                                                      (let ((_g27272_
                                                             (gx#syntax-split-splice
                                                              _%g2284822868%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27272_)
                               (##values-length _g27272_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27273_ 2)))
                        (error "Context expects 2 values" _g27273_)))
                  (let ((_%target2285022871%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27272_ 0)))
                        (_%tl2285222874%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27272_ 1))))
                    (if (gx#stx-null? _%tl2285222874%_)
                        (letrec ((_%loop2285322877%_
                                  (lambda (_%hd2285122881%_ _%getf2285722884%_)
                                    (if (gx#stx-pair? _%hd2285122881%_)
                                        (let ((_%e2285422886%_
                                               (gx#syntax-e _%hd2285122881%_)))
                                          (let ((_%lp-hd2285522890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2285422886%_)))
                                                (_%lp-tl2285622893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2285422886%_))))
                                            (_%loop2285322877%_
                                             _%lp-tl2285622893%_
                                             (cons _%lp-hd2285522890%_
                                                   _%getf2285722884%_))))
                                        (let ((_%getf2285822896%_
                                               (reverse _%getf2285722884%_)))
                                          ((lambda (_%g2284922899%_)
                                             (let* ((_%g2291622933%_
                                                     (lambda (_%g2291722929%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2291722929%_)))
                                                    (_%g2291524741%_
                                                     (lambda (_%g2291722937%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2291722937%_)
                                                           (let ((_g27274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2291722937%_ '0)))
                     (begin
                       (let ((_g27275_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27274_)
                                    (##values-length _g27274_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27275_ 2)))
                             (error "Context expects 2 values" _g27275_)))
                       (let ((_%target2291922940%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27274_ 0)))
                             (_%tl2292122943%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27274_ 1))))
                         (if (gx#stx-null? _%tl2292122943%_)
                             (letrec ((_%loop2292222946%_
                                       (lambda (_%hd2292022950%_
                                                _%setf2292622953%_)
                                         (if (gx#stx-pair? _%hd2292022950%_)
                                             (let ((_%e2292322955%_
                                                    (gx#syntax-e
                                                     _%hd2292022950%_)))
                                               (let ((_%lp-hd2292422959%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2292322955%_)))
                                                     (_%lp-tl2292522962%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2292322955%_))))
                                                 (_%loop2292222946%_
                                                  _%lp-tl2292522962%_
                                                  (cons _%lp-hd2292422959%_
                                                        _%setf2292622953%_))))
                                             (let ((_%setf2292722965%_
                                                    (reverse _%setf2292622953%_)))
                                               ((lambda (_%g2291822968%_)
                                                  (let* ((_%mixin-slots22985%_
                                                          (_%get-mixin-slots22623%_
                                                           _%super-ref22616%_
                                                           _%slots22617%_))
                                                         (_%g2298823005%_
                                                          (lambda (_%g2298923001%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2298923001%_)))
                                                         (_%g2298724737%_
                                                          (lambda (_%g2298923009%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2298923009%_)
                        (let ((_g27276_
                               (gx#syntax-split-splice _%g2298923009%_ '0)))
                          (begin
                            (let ((_g27277_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27276_)
                                         (##values-length _g27276_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27277_ 2)))
                                  (error "Context expects 2 values" _g27277_)))
                            (let ((_%target2299123012%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27276_ 0)))
                                  (_%tl2299323015%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27276_ 1))))
                              (if (gx#stx-null? _%tl2299323015%_)
                                  (letrec ((_%loop2299423018%_
                                            (lambda (_%hd2299223022%_
                                                     _%mixin-slot2299823025%_)
                                              (if (gx#stx-pair?
                                                   _%hd2299223022%_)
                                                  (let ((_%e2299523027%_
                                                         (gx#syntax-e
                                                          _%hd2299223022%_)))
                                                    (let ((_%lp-hd2299623031%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2299523027%_)))
                                                          (_%lp-tl2299723034%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2299523027%_))))
                                                      (_%loop2299423018%_
                                                       _%lp-tl2299723034%_
                                                       (cons _%lp-hd2299623031%_
                                                             _%mixin-slot2299823025%_))))
                                                  (let ((_%mixin-slot2299923037%_
                                                         (reverse _%mixin-slot2299823025%_)))
                                                    ((lambda (_%g2299023040%_)
                                                       (let* ((_%g2305823075%_
                                                               (lambda (_%g2305923071%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2305923071%_)))
                      (_%g2305724728%_
                       (lambda (_%g2305923079%_)
                         (if (gx#stx-pair/null? _%g2305923079%_)
                             (let ((_g27278_
                                    (gx#syntax-split-splice
                                     _%g2305923079%_
                                     '0)))
                               (begin
                                 (let ((_g27279_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27278_)
                                              (##values-length _g27278_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27279_ 2)))
                                       (error "Context expects 2 values"
                                              _g27279_)))
                                 (let ((_%target2306123082%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27278_ 0)))
                                       (_%tl2306323085%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27278_ 1))))
                                   (if (gx#stx-null? _%tl2306323085%_)
                                       (letrec ((_%loop2306423088%_
                                                 (lambda (_%hd2306223092%_
                                                          _%mixin-getf2306823095%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2306223092%_)
                                                       (let ((_%e2306523097%_
                                                              (gx#syntax-e
                                                               _%hd2306223092%_)))
                                                         (let ((_%lp-hd2306623101%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2306523097%_)))
                       (_%lp-tl2306723104%_
                        (let () (declare (not safe)) (##cdr _%e2306523097%_))))
                   (_%loop2306423088%_
                    _%lp-tl2306723104%_
                    (cons _%lp-hd2306623101%_ _%mixin-getf2306823095%_))))
               (let ((_%mixin-getf2306923107%_
                      (reverse _%mixin-getf2306823095%_)))
                 ((lambda (_%g2306023110%_)
                    (let* ((_%g2312723144%_
                            (lambda (_%g2312823140%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2312823140%_)))
                           (_%g2312624719%_
                            (lambda (_%g2312823148%_)
                              (if (gx#stx-pair/null? _%g2312823148%_)
                                  (let ((_g27280_
                                         (gx#syntax-split-splice
                                          _%g2312823148%_
                                          '0)))
                                    (begin
                                      (let ((_g27281_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27280_)
                                                   (##values-length _g27280_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27281_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27281_)))
                                      (let ((_%target2313023151%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27280_ 0)))
                                            (_%tl2313223154%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27280_ 1))))
                                        (if (gx#stx-null? _%tl2313223154%_)
                                            (letrec ((_%loop2313323157%_
                                                      (lambda (_%hd2313123161%_
                                                               _%mixin-setf2313723164%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2313123161%_)
                                                            (let ((_%e2313423166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2313123161%_)))
                      (let ((_%lp-hd2313523170%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2313423166%_)))
                            (_%lp-tl2313623173%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2313423166%_))))
                        (_%loop2313323157%_
                         _%lp-tl2313623173%_
                         (cons _%lp-hd2313523170%_ _%mixin-setf2313723164%_))))
                    (let ((_%mixin-setf2313823176%_
                           (reverse _%mixin-setf2313723164%_)))
                      ((lambda (_%g2312923179%_)
                         (let* ((_%g2319623213%_
                                 (lambda (_%g2319723209%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2319723209%_)))
                                (_%g2319524702%_
                                 (lambda (_%g2319723217%_)
                                   (if (gx#stx-pair/null? _%g2319723217%_)
                                       (let ((_g27282_
                                              (gx#syntax-split-splice
                                               _%g2319723217%_
                                               '0)))
                                         (begin
                                           (let ((_g27283_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27282_)
                                                        (##values-length
                                                         _g27282_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27283_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27283_)))
                                           (let ((_%target2319923220%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27282_ 0)))
                                                 (_%tl2320123223%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27282_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2320123223%_)
                                                 (letrec ((_%loop2320223226%_
                                                           (lambda (_%hd2320023230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2320623233%_)
                     (if (gx#stx-pair? _%hd2320023230%_)
                         (let ((_%e2320323235%_
                                (gx#syntax-e _%hd2320023230%_)))
                           (let ((_%lp-hd2320423239%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2320323235%_)))
                                 (_%lp-tl2320523242%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2320323235%_))))
                             (_%loop2320223226%_
                              _%lp-tl2320523242%_
                              (cons _%lp-hd2320423239%_ _%ugetf2320623233%_))))
                         (let ((_%ugetf2320723245%_
                                (reverse _%ugetf2320623233%_)))
                           ((lambda (_%g2319823248%_)
                              (let* ((_%g2326523282%_
                                      (lambda (_%g2326623278%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2326623278%_)))
                                     (_%g2326424685%_
                                      (lambda (_%g2326623286%_)
                                        (if (gx#stx-pair/null? _%g2326623286%_)
                                            (let ((_g27284_
                                                   (gx#syntax-split-splice
                                                    _%g2326623286%_
                                                    '0)))
                                              (begin
                                                (let ((_g27285_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27284_)
                                                             (##values-length
                                                              _g27284_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27285_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2326823289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27284_
                                                          0)))
                                                      (_%tl2327023292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27284_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2327023292%_)
                                                      (letrec ((_%loop2327123295%_
                                                                (lambda (_%hd2326923299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2327523302%_)
                          (if (gx#stx-pair? _%hd2326923299%_)
                              (let ((_%e2327223304%_
                                     (gx#syntax-e _%hd2326923299%_)))
                                (let ((_%lp-hd2327323308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2327223304%_)))
                                      (_%lp-tl2327423311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2327223304%_))))
                                  (_%loop2327123295%_
                                   _%lp-tl2327423311%_
                                   (cons _%lp-hd2327323308%_
                                         _%usetf2327523302%_))))
                              (let ((_%usetf2327623314%_
                                     (reverse _%usetf2327523302%_)))
                                ((lambda (_%g2326723317%_)
                                   (let* ((_%g2333423351%_
                                           (lambda (_%g2333523347%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2333523347%_)))
                                          (_%g2333324668%_
                                           (lambda (_%g2333523355%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2333523355%_)
                                                 (let ((_g27286_
                                                        (gx#syntax-split-splice
                                                         _%g2333523355%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27287_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27286_)
                          (##values-length _g27286_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27287_ 2)))
                   (error "Context expects 2 values" _g27287_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2333723358%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27286_
                                                               0)))
                                                           (_%tl2333923361%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27286_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2333923361%_)
                                                           (letrec ((_%loop2334023364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2333823368%_
                                      _%mixin-ugetf2334423371%_)
                               (if (gx#stx-pair? _%hd2333823368%_)
                                   (let ((_%e2334123373%_
                                          (gx#syntax-e _%hd2333823368%_)))
                                     (let ((_%lp-hd2334223377%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2334123373%_)))
                                           (_%lp-tl2334323380%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2334123373%_))))
                                       (_%loop2334023364%_
                                        _%lp-tl2334323380%_
                                        (cons _%lp-hd2334223377%_
                                              _%mixin-ugetf2334423371%_))))
                                   (let ((_%mixin-ugetf2334523383%_
                                          (reverse _%mixin-ugetf2334423371%_)))
                                     ((lambda (_%g2333623386%_)
                                        (let* ((_%g2340323420%_
                                                (lambda (_%g2340423416%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2340423416%_)))
                                               (_%g2340224651%_
                                                (lambda (_%g2340423424%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2340423424%_)
                                                      (let ((_g27288_
                                                             (gx#syntax-split-splice
                                                              _%g2340423424%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27288_)
                               (##values-length _g27288_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27289_ 2)))
                        (error "Context expects 2 values" _g27289_)))
                  (let ((_%target2340623427%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27288_ 0)))
                        (_%tl2340823430%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27288_ 1))))
                    (if (gx#stx-null? _%tl2340823430%_)
                        (letrec ((_%loop2340923433%_
                                  (lambda (_%hd2340723437%_
                                           _%mixin-usetf2341323440%_)
                                    (if (gx#stx-pair? _%hd2340723437%_)
                                        (let ((_%e2341023442%_
                                               (gx#syntax-e _%hd2340723437%_)))
                                          (let ((_%lp-hd2341123446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2341023442%_)))
                                                (_%lp-tl2341223449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2341023442%_))))
                                            (_%loop2340923433%_
                                             _%lp-tl2341223449%_
                                             (cons _%lp-hd2341123446%_
                                                   _%mixin-usetf2341323440%_))))
                                        (let ((_%mixin-usetf2341423452%_
                                               (reverse _%mixin-usetf2341323440%_)))
                                          ((lambda (_%g2340523455%_)
                                             (let* ((_%type-slots23490%_
                                                     (if (gx#stx-null?
                                                          _%slots22617%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2291822968%_
                                _%g2284922899%_
                                _%g2278022830%_)
                               (foldr (lambda (_%g2347523480%_
                                               _%g2347623483%_
                                               _%g2347723485%_
                                               _%g2347823487%_)
                                        (cons (cons _%g2347723485%_
                                                    (cons _%g2347623483%_
                                                          (cons _%g2347523480%_
                                                                '())))
                                              _%g2347823487%_))
                                      '()
                                      _%g2291822968%_
                                      _%g2284922899%_
                                      _%g2278022830%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23511%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots22985%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2312923179%_
                                _%g2306023110%_
                                _%g2299023040%_)
                               (foldr (lambda (_%g2349623501%_
                                               _%g2349723504%_
                                               _%g2349823506%_
                                               _%g2349923508%_)
                                        (cons (cons _%g2349823506%_
                                                    (cons _%g2349723504%_
                                                          (cons _%g2349623501%_
                                                                '())))
                                              _%g2349923508%_))
                                      '()
                                      _%g2312923179%_
                                      _%g2306023110%_
                                      _%g2299023040%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23518%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22618%_)))
                           (if _%$e23514%_ _%$e23514%_ _%id22615%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23525%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22618%_)))
                           (if _%$e23521%_
                               _%$e23521%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%g2263722650%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23539%_
                                                     (let ((_%$e23535%_
                                                            (let ((_%e2352723529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22618%_)))
                      (if _%e2352723529%_
                          (let ((_%e23532%_ _%e2352723529%_))
                            (cons 'constructor: (cons _%e23532%_ '())))
                          '#f))))
               (if _%$e23535%_ _%$e23535%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23580%_
                                                     (let* ((_%properties23542%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22618%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23557%_
                     (let ((_%$e23545%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22618%_))))
                       (if _%$e23545%_
                           ((lambda (_%print23549%_)
                              (let ((_%print23552%_
                                     (if (eq? _%print23549%_ '#t)
                                         _%slots22617%_
                                         _%print23549%_)))
                                (cons (cons 'print: _%print23552%_)
                                      _%properties23542%_)))
                            _%$e23545%_)
                           _%properties23542%_)))
                    (_%properties23572%_
                     (let ((_%$e23560%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22618%_))))
                       (if _%$e23560%_
                           ((lambda (_%equal23564%_)
                              (let ((_%equal23567%_
                                     (if (eq? _%equal23564%_ '#t)
                                         _%slots22617%_
                                         _%equal23564%_)))
                                (cons (cons 'equal: _%equal23567%_)
                                      _%properties23557%_)))
                            _%$e23560%_)
                           _%properties23557%_)))
                    (_%properties23575%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body22618%_))
                         (cons (cons 'acyclic: '#t) '())
                         '())))
               _%properties23575%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23621%_
                                                     (if (null? _%properties23580%_)
                                                         '()
                                                         (let* ((_%g2358323591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2358423587%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2358423587%_)))
                        (_%g2358223617%_
                         (lambda (_%g2358423595%_)
                           ((lambda (_%g2358523598%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%g2358523598%_ '()))
                                          '())))
                            _%g2358423595%_))))
                   (_%g2358223617%_ _%properties23580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23633%_
                                                     (let ((_%$e23624%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22618%_)))
                                                       (if _%$e23624%_
                                                           ((lambda (_%metaclass23628%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23628%_)
                          _%metaclass23628%_
                          '#f))
                    _%$e23624%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23636%_
                                                     (if _%metaclass23633%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23639%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22618%_)))
                                                    (_%type-struct23642%_
                                                     (cons 'struct:
                                                           (cons _%struct?22632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23645%_
                                                     (cons 'final:
                                                           (cons _%final?23639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2364823665%_
                                                     (lambda (_%g2364923661%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2364923661%_)))
                                                    (_%g2364724647%_
                                                     (lambda (_%g2364923669%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2364923669%_)
                                                           (let ((_g27290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2364923669%_ '0)))
                     (begin
                       (let ((_g27291_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27290_)
                                    (##values-length _g27290_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27291_ 2)))
                             (error "Context expects 2 values" _g27291_)))
                       (let ((_%target2365123672%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27290_ 0)))
                             (_%tl2365323675%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27290_ 1))))
                         (if (gx#stx-null? _%tl2365323675%_)
                             (letrec ((_%loop2365423678%_
                                       (lambda (_%hd2365223682%_
                                                _%type-body2365823685%_)
                                         (if (gx#stx-pair? _%hd2365223682%_)
                                             (let ((_%e2365523687%_
                                                    (gx#syntax-e
                                                     _%hd2365223682%_)))
                                               (let ((_%lp-hd2365623691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2365523687%_)))
                                                     (_%lp-tl2365723694%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2365523687%_))))
                                                 (_%loop2365423678%_
                                                  _%lp-tl2365723694%_
                                                  (cons _%lp-hd2365623691%_
                                                        _%type-body2365823685%_))))
                                             (let ((_%type-body2365923697%_
                                                    (reverse _%type-body2365823685%_)))
                                               ((lambda (_%g2365023700%_)
                                                  (let* ((_%g2372123729%_
                                                          (lambda (_%g2372223725%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2372223725%_)))
                                                         (_%g2372024635%_
                                                          (lambda (_%g2372223733%_)
                                                            ((lambda (_%g2372323736%_)
                                                               (let* ((_%g2374923757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2375023753%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2375023753%_)))
                              (_%g2374824564%_
                               (lambda (_%g2375023761%_)
                                 ((lambda (_%g2375123764%_)
                                    (let* ((_%g2377723785%_
                                            (lambda (_%g2377823781%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2377823781%_)))
                                           (_%g2377624529%_
                                            (lambda (_%g2377823789%_)
                                              ((lambda (_%g2377923792%_)
                                                 (let* ((_%g2380523813%_
                                                         (lambda (_%g2380623809%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2380623809%_)))
                                                        (_%g2380424445%_
                                                         (lambda (_%g2380623817%_)
                                                           ((lambda (_%g2380723820%_)
                                                              (let* ((_%g2383323841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2383423837%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2383423837%_)))
                             (_%g2383224433%_
                              (lambda (_%g2383423845%_)
                                ((lambda (_%g2383523848%_)
                                   (let* ((_%g2386123869%_
                                           (lambda (_%g2386223865%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2386223865%_)))
                                          (_%g2386024429%_
                                           (lambda (_%g2386223873%_)
                                             ((lambda (_%g2386323876%_)
                                                (let* ((_%g2388923897%_
                                                        (lambda (_%g2389023893%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2389023893%_)))
                                                       (_%g2388824425%_
                                                        (lambda (_%g2389023901%_)
                                                          ((lambda (_%g2389123904%_)
                                                             (let* ((_%g2391723925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2391823921%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2391823921%_)))
                            (_%g2391624390%_
                             (lambda (_%g2391823929%_)
                               ((lambda (_%g2391923932%_)
                                  (let* ((_%g2394523953%_
                                          (lambda (_%g2394623949%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2394623949%_)))
                                         (_%g2394424319%_
                                          (lambda (_%g2394623957%_)
                                            ((lambda (_%g2394723960%_)
                                               (let* ((_%g2397323981%_
                                                       (lambda (_%g2397423977%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2397423977%_)))
                                                      (_%g2397224315%_
                                                       (lambda (_%g2397423985%_)
                                                         ((lambda (_%g2397523988%_)
                                                            (let* ((_%g2400124009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2400224005%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2400224005%_)))
                           (_%g2400024311%_
                            (lambda (_%g2400224013%_)
                              ((lambda (_%g2400324016%_)
                                 (let* ((_%g2402924037%_
                                         (lambda (_%g2403024033%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2403024033%_)))
                                        (_%g2402824307%_
                                         (lambda (_%g2403024041%_)
                                           ((lambda (_%g2403124044%_)
                                              (let* ((_%g2405724065%_
                                                      (lambda (_%g2405824061%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2405824061%_)))
                                                     (_%g2405624281%_
                                                      (lambda (_%g2405824069%_)
                                                        ((lambda (_%g2405924072%_)
                                                           (let* ((_%g2408524093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2408624089%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2408624089%_)))
                          (_%g2408424255%_
                           (lambda (_%g2408624097%_)
                             ((lambda (_%g2408724100%_)
                                (let* ((_%g2411324121%_
                                        (lambda (_%g2411424117%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2411424117%_)))
                                       (_%g2411224229%_
                                        (lambda (_%g2411424125%_)
                                          ((lambda (_%g2411524128%_)
                                             (let* ((_%g2414124149%_
                                                     (lambda (_%g2414224145%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2414224145%_)))
                                                    (_%g2414024203%_
                                                     (lambda (_%g2414224153%_)
                                                       ((lambda (_%g2414324156%_)
                                                          (let* ((_%g2416924177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2417024173%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2417024173%_)))
                         (_%g2416824199%_
                          (lambda (_%g2417024181%_)
                            ((lambda (_%g2417124184%_)
                               (_%wrap22620%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%g2372323736%_
                                            (cons _%g2417124184%_ '())))))
                             _%g2417024181%_))))
                    (_%g2416824199%_
                     (_%wrap22620%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%g2263722650%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%g2375123764%_
                                                          (cons 'name:
                                                                (cons _%g2377923792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%g2383523848%_
                                          (cons 'super:
                                                (cons _%g2380723820%_
                                                      (cons 'struct?:
                                                            (cons _%g2386323876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%g2389123904%_
                                      (cons 'metaclass:
                                            (cons _%g2391923932%_
                                                  (cons 'constructor-method:
                                                        (cons _%g2394723960%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g2397523988%_
                                  (cons 'constructor:
                                        (cons _%g2400324016%_
                                              (cons 'predicate:
                                                    (cons _%g2403124044%_
                                                          (cons 'accessors:
                                                                (cons _%g2405924072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%g2408724100%_
                                          (cons 'unchecked-accessors:
                                                (cons _%g2411524128%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%g2414324156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2414224153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2414024203%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%g2326723317%_
                                                         _%g2278022830%_)
                                                        (foldr (lambda (_%g2420624213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2420724216%_
                                _%g2420824218%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2420724216%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2420624213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2420824218%_))
                       (begin
                         (gx#syntax-check-splice-targets
                          _%g2340523455%_
                          _%g2299023040%_)
                         (foldr (lambda (_%g2420924221%_
                                         _%g2421024224%_
                                         _%g2421124226%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2421024224%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2420924221%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2421124226%_))
                                '()
                                _%g2340523455%_
                                _%g2299023040%_))
                       _%g2326723317%_
                       _%g2278022830%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2411424125%_))))
                                  (_%g2411224229%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2319823248%_
                                            _%g2278022830%_)
                                           (foldr (lambda (_%g2423224239%_
                                                           _%g2423324242%_
                                                           _%g2423424244%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2423324242%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2423224239%_ '()))
                                          '()))))
                  _%g2423424244%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g2333623386%_
                                                     _%g2299023040%_)
                                                    (foldr (lambda (_%g2423524247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2423624250%_
                            _%g2423724252%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2423624250%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2423524247%_
                                                               '()))
                                                   '()))))
                           _%g2423724252%_))
                   '()
                   _%g2333623386%_
                   _%g2299023040%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2319823248%_
                                                  _%g2278022830%_))))))
                              _%g2408624097%_))))
                     (_%g2408424255%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%g2291822968%_
                               _%g2278022830%_)
                              (foldr (lambda (_%g2425824265%_
                                              _%g2425924268%_
                                              _%g2426024270%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2425924268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2425824265%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2426024270%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%g2312923179%_
                                        _%g2299023040%_)
                                       (foldr (lambda (_%g2426124273%_
                                                       _%g2426224276%_
                                                       _%g2426324278%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2426224276%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2426124273%_ '()))
                                      '()))))
              _%g2426324278%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g2312923179%_
                                              _%g2299023040%_))
                                     _%g2291822968%_
                                     _%g2278022830%_))))))
                 _%g2405824069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2405624281%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%g2284922899%_
                                                          _%g2278022830%_)
                                                         (foldr (lambda (_%g2428424291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2428524294%_
                                 _%g2428624296%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2428524294%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2428424291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2428624296%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%g2306023110%_
                           _%g2299023040%_)
                          (foldr (lambda (_%g2428724299%_
                                          _%g2428824302%_
                                          _%g2428924304%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2428824302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2428724299%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2428924304%_))
                                 '()
                                 _%g2306023110%_
                                 _%g2299023040%_))
                        _%g2284922899%_
                        _%g2278022830%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2403024041%_))))
                                   (_%g2402824307%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2272422737%_ '())))))
                               _%g2400224013%_))))
                      (_%g2400024311%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%g2269622709%_ '())))))
                  _%g2397423985%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2397224315%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%g2266822681%_
                                                              '())))))
                                             _%g2394623957%_))))
                                    (_%g2394424319%_
                                     (if (null? _%type-constructor23539%_)
                                         '#f
                                         (let* ((_%g2432324338%_
                                                 (lambda (_%g2432424334%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2432424334%_)))
                                                (_%g2432224386%_
                                                 (lambda (_%g2432424342%_)
                                                   (if (gx#stx-pair?
                                                        _%g2432424342%_)
                                                       (let ((_%e2432624345%_
                                                              (gx#syntax-e
                                                               _%g2432424342%_)))
                                                         (let ((_%hd2432724349%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2432624345%_)))
                       (_%tl2432824352%_
                        (let () (declare (not safe)) (##cdr _%e2432624345%_))))
                   (if (gx#stx-datum? _%hd2432724349%_)
                       (let ((_%e2432924355%_ (gx#stx-e _%hd2432724349%_)))
                         (if (equal? _%e2432924355%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2432824352%_)
                                 (let ((_%e2433024359%_
                                        (gx#syntax-e _%tl2432824352%_)))
                                   (let ((_%hd2433124363%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2433024359%_)))
                                         (_%tl2433224366%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2433024359%_))))
                                     (if (gx#stx-null? _%tl2433224366%_)
                                         ((lambda (_%g2432524369%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2432524369%_ '())))
                                          _%hd2433124363%_)
                                         (_%g2432324338%_ _%g2432424342%_))))
                                 (_%g2432324338%_ _%g2432424342%_))
                             (_%g2432324338%_ _%g2432424342%_)))
                       (_%g2432324338%_ _%g2432424342%_))))
               (_%g2432324338%_ _%g2432424342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2432224386%_
                                            _%type-constructor23539%_))))))
                                _%g2391823929%_))))
                       (_%g2391624390%_
                        (if _%metaclass23633%_
                            (let* ((_%g2439424402%_
                                    (lambda (_%g2439524398%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2439524398%_)))
                                   (_%g2439324421%_
                                    (lambda (_%g2439524406%_)
                                      ((lambda (_%g2439624409%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%g2439624409%_ '())))
                                       _%g2439524406%_))))
                              (_%g2439324421%_ _%metaclass23633%_))
                            '#f))))
                   _%g2389023901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2388824425%_
                                                   _%final?23639%_)))
                                              _%g2386223873%_))))
                                     (_%g2386024429%_ _%struct?22632%_)))
                                 _%g2383423845%_))))
                        (_%g2383224433%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2443624439%_
                                                     _%g2443724442%_)
                                              (cons _%g2443624439%_
                                                    _%g2443724442%_))
                                            '()
                                            _%g2278022830%_)
                                     '())))))
                    _%g2380623817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2380424445%_
                                                    (let* ((_%g2444924466%_
                                                            (lambda (_%g2445024462%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2445024462%_)))
                                                           (_%g2444824525%_
                                                            (lambda (_%g2445024470%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2445024470%_)
                          (let ((_g27292_
                                 (gx#syntax-split-splice _%g2445024470%_ '0)))
                            (begin
                              (let ((_g27293_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27292_)
                                           (##values-length _g27292_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27293_ 2)))
                                    (error "Context expects 2 values"
                                           _g27293_)))
                              (let ((_%target2445224473%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27292_ 0)))
                                    (_%tl2445424476%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27292_ 1))))
                                (if (gx#stx-null? _%tl2445424476%_)
                                    (letrec ((_%loop2445524479%_
                                              (lambda (_%hd2445324483%_
                                                       _%super-id2445924486%_)
                                                (if (gx#stx-pair?
                                                     _%hd2445324483%_)
                                                    (let ((_%e2445624488%_
                                                           (gx#syntax-e
                                                            _%hd2445324483%_)))
                                                      (let ((_%lp-hd2445724492%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2445624488%_)))
                    (_%lp-tl2445824495%_
                     (let () (declare (not safe)) (##cdr _%e2445624488%_))))
                (_%loop2445524479%_
                 _%lp-tl2445824495%_
                 (cons _%lp-hd2445724492%_ _%super-id2445924486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2446024498%_
                                                           (reverse _%super-id2445924486%_)))
                                                      ((lambda (_%g2445124501%_)
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
                              _%g2445124501%_)))
               _%super-id2446024498%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2445524479%_
                                       _%target2445224473%_
                                       '()))
                                    (_%g2444924466%_ _%g2445024470%_)))))
                          (_%g2444924466%_ _%g2445024470%_)))))
              (_%g2444824525%_ _%super-ref22616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2377823789%_))))
                                      (_%g2377624529%_
                                       (let* ((_%g2453324541%_
                                               (lambda (_%g2453424537%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2453424537%_)))
                                              (_%g2453224560%_
                                               (lambda (_%g2453424545%_)
                                                 ((lambda (_%g2453524548%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2453524548%_
                                                                '())))
                                                  _%g2453424545%_))))
                                         (_%g2453224560%_
                                          (cadr _%type-name23518%_))))))
                                  _%g2375023761%_))))
                         (_%g2374824564%_
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
                          ((lambda (_%g2457024614%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%g2457024614%_ '())))
                           _%hd2457624608%_)
                          (_%g2456824583%_ _%g2456924587%_))))
                  (_%g2456824583%_ _%g2456924587%_))
              (_%g2456824583%_ _%g2456924587%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2456824583%_
                                                 _%g2456924587%_))))
                                        (_%g2456824583%_ _%g2456924587%_)))))
                            (_%g2456724631%_ _%type-id23525%_)))))
                     _%g2372223733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2372024635%_
                                                     (_%wrap22620%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%g2266822681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g2275222765%_
                                (cons _%g2269622709%_
                                      (cons _%g2272422737%_
                                            (foldr (lambda (_%g2463824641%_
                                                            _%g2463924644%_)
                                                     (cons _%g2463824641%_
                                                           _%g2463924644%_))
                                                   '()
                                                   _%g2365023700%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2365923697%_))))))
                               (_%loop2365423678%_ _%target2365123672%_ '()))
                             (_%g2364823665%_ _%g2364923669%_)))))
                   (_%g2364823665%_ _%g2364923669%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2364724647%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23511%_
                                                                _%type-slots23490%_)
                                                         _%type-properties23621%_)
                                                  _%type-metaclass23636%_)
                                           _%type-final23645%_)
                                    _%type-struct23642%_)
                             _%type-constructor23539%_)
                      _%type-name23518%_)
               _%type-id23525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2341423452%_))))))
                          (_%loop2340923433%_ _%target2340623427%_ '()))
                        (_%g2340323420%_ _%g2340423424%_)))))
              (_%g2340323420%_ _%g2340423424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2340224651%_
                                           (gx#stx-map
                                            (lambda (_%g2465424656%_)
                                              (_%make-id22622%_
                                               '"&"
                                               _%g2465424656%_))
                                            (foldr (lambda (_%g2465924662%_
                                                            _%g2466024665%_)
                                                     (cons _%g2465924662%_
                                                           _%g2466024665%_))
                                                   '()
                                                   _%g2312923179%_)))))
                                      _%mixin-ugetf2334523383%_))))))
                     (_%loop2334023364%_ _%target2333723358%_ '()))
                   (_%g2333423351%_ _%g2333523355%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2333423351%_
                                                  _%g2333523355%_)))))
                                     (_%g2333324668%_
                                      (gx#stx-map
                                       (lambda (_%g2467124673%_)
                                         (_%make-id22622%_
                                          '"&"
                                          _%g2467124673%_))
                                       (foldr (lambda (_%g2467624679%_
                                                       _%g2467724682%_)
                                                (cons _%g2467624679%_
                                                      _%g2467724682%_))
                                              '()
                                              _%g2306023110%_)))))
                                 _%usetf2327623314%_))))))
                (_%loop2327123295%_ _%target2326823289%_ '()))
              (_%g2326523282%_ _%g2326623286%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2326523282%_
                                             _%g2326623286%_)))))
                                (_%g2326424685%_
                                 (gx#stx-map
                                  (lambda (_%g2468824690%_)
                                    (_%make-id22622%_ '"&" _%g2468824690%_))
                                  (foldr (lambda (_%g2469324696%_
                                                  _%g2469424699%_)
                                           (cons _%g2469324696%_
                                                 _%g2469424699%_))
                                         '()
                                         _%g2291822968%_)))))
                            _%ugetf2320723245%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2320223226%_
                                                    _%target2319923220%_
                                                    '()))
                                                 (_%g2319623213%_
                                                  _%g2319723217%_)))))
                                       (_%g2319623213%_ _%g2319723217%_)))))
                           (_%g2319524702%_
                            (gx#stx-map
                             (lambda (_%g2470524707%_)
                               (_%make-id22622%_ '"&" _%g2470524707%_))
                             (foldr (lambda (_%g2471024713%_ _%g2471124716%_)
                                      (cons _%g2471024713%_ _%g2471124716%_))
                                    '()
                                    _%g2284922899%_)))))
                       _%mixin-setf2313823176%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2313323157%_
                                               _%target2313023151%_
                                               '()))
                                            (_%g2312723144%_
                                             _%g2312823148%_)))))
                                  (_%g2312723144%_ _%g2312823148%_)))))
                      (_%g2312624719%_
                       (gx#stx-map
                        (lambda (_%g2472224724%_)
                          (_%make-id22622%_
                           _%name22626%_
                           '"-"
                           _%g2472224724%_
                           '"-set!"))
                        _%mixin-slots22985%_))))
                  _%mixin-getf2306923107%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2306423088%_
                                          _%target2306123082%_
                                          '()))
                                       (_%g2305823075%_ _%g2305923079%_)))))
                             (_%g2305823075%_ _%g2305923079%_)))))
                 (_%g2305724728%_
                  (gx#stx-map
                   (lambda (_%g2473124733%_)
                     (_%make-id22622%_ _%name22626%_ '"-" _%g2473124733%_))
                   _%mixin-slots22985%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2299923037%_))))))
                                    (_%loop2299423018%_
                                     _%target2299123012%_
                                     '()))
                                  (_%g2298823005%_ _%g2298923009%_)))))
                        (_%g2298823005%_ _%g2298923009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2298724737%_
                                                     _%mixin-slots22985%_)))
                                                _%setf2292722965%_))))))
                               (_%loop2292222946%_ _%target2291922940%_ '()))
                             (_%g2291622933%_ _%g2291722937%_)))))
                   (_%g2291622933%_ _%g2291722937%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2291524741%_
                                                (gx#stx-map
                                                 (lambda (_%g2474424746%_)
                                                   (_%make-id22622%_
                                                    _%name22626%_
                                                    '"-"
                                                    _%g2474424746%_
                                                    '"-set!"))
                                                 _%slots22617%_))))
                                           _%getf2285822896%_))))))
                          (_%loop2285322877%_ _%target2285022871%_ '()))
                        (_%g2284722864%_ _%g2284822868%_)))))
              (_%g2284722864%_ _%g2284822868%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2284624750%_
                                           (gx#stx-map
                                            (lambda (_%g2475324755%_)
                                              (_%make-id22622%_
                                               _%name22626%_
                                               '"-"
                                               _%g2475324755%_))
                                            _%slots22617%_))))
                                      _%slot2278922827%_))))))
                     (_%loop2278422808%_ _%target2278122802%_ '()))
                   (_%g2277822795%_ _%g2277922799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2277822795%_
                                                  _%g2277922799%_)))))
                                     (_%g2277724759%_ _%slots22617%_)))
                                 _%g2275122762%_))))
                        (_%g2274924763%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22629%_)))))
                    _%g2272322734%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2272124767%_
                                                    (_%make-id22622%_
                                                     _%name22626%_
                                                     '"?"))))
                                               _%g2269522706%_))))
                                      (_%g2269324771%_
                                       (_%make-id22622%_
                                        '"make-"
                                        _%name22626%_))))
                                  _%g2266722678%_))))
                         (_%g2266524775%_
                          (_%make-id22622%_ _%name22626%_ '"::t"))))
                     _%g2263622647%_))))
            (_%g2263424779%_ _%id22615%_)))))
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
                                          ((lambda (_%g2485224906%_
                                                    _%g2485324908%_
                                                    _%g2485424909%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%g2485424909%_
                                                         (cons _%g2485324908%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%g2485224906%_))))))
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
                    (let* ((_%__stx2677126772%_ _%hd25017%_)
                           (_%g2502325035%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2677126772%_))))
                      (let ((_%__kont2677426775%_
                             (lambda (_%g2502525063%_ _%g2502625065%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24930%_
                                _%g2502625065%_
                                (gx#syntax->list _%g2502525063%_)
                                _%slots25019%_
                                _%body25020%_)))
                            (_%__kont2677626777%_
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
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx24930%_
                                    _%hd25017%_)))))
                        (let ((_%__match2678426785%_
                               (lambda (_%e2502725053%_
                                        _%hd2502825057%_
                                        _%tl2502925060%_)
                                 (let ((_%g2502525063%_ _%tl2502925060%_)
                                       (_%g2502625065%_ _%hd2502825057%_))
                                   (if (and (gx#stx-list? _%g2502525063%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%g2502525063%_))
                                       (_%__kont2677426775%_
                                        _%g2502525063%_
                                        _%g2502625065%_)
                                       (_%__kont2677626777%_))))))
                          (if (gx#stx-pair? _%__stx2677126772%_)
                              (let ((_%e2502725053%_
                                     (gx#syntax-e _%__stx2677126772%_)))
                                (let ((_%tl2502925060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2502725053%_)))
                                      (_%hd2502825057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2502725053%_))))
                                  (_%__match2678426785%_
                                   _%e2502725053%_
                                   _%hd2502825057%_
                                   _%tl2502925060%_)))
                              (_%__kont2677626777%_))))))))
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
                                            ((lambda (_%g2493824992%_
                                                      _%g2493924994%_
                                                      _%g2494024995%_)
                                               (if (and (gx#identifier-list?
                                                         _%g2493924994%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%g2493824992%_))
                                                   (_%generate24933%_
                                                    _%g2494024995%_
                                                    _%g2493924994%_
                                                    _%g2493824992%_)
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
                    (let ((__tmp27294 (gx#stx-e _%x25428%_)))
                      (declare (not safe))
                      (##memq __tmp27294 '(rebind:))))))
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
                                                     |gerbil/core/mop~MOP-4[1]#_g27295_|
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
                                        ((lambda (_%g2509125185%_
                                                  _%g2509225187%_
                                                  _%g2509325188%_
                                                  _%g2509425189%_)
                                           (if (and (gx#identifier?
                                                     _%g2509425189%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%g2509325188%_))
                                                    (gx#stx-plist?
                                                     _%g2509125185%_
                                                     _%method-opt?25087%_))
                                               (let* ((_%klass25216%_
                                                       (gx#syntax-local-value
                                                        _%g2509325188%_))
                                                      (_%rebind?25219%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%g2509125185%_)))
                                                      (_%g2522225230%_
                                                       (lambda (_%g2522325226%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2522325226%_)))
                                                      (_%g2522125414%_
                                                       (lambda (_%g2522325234%_)
                                                         ((lambda (_%g2522425237%_)
                                                            (let* ((_%g2525225260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2525325256%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2525325256%_)))
                           (_%g2525125410%_
                            (lambda (_%g2525325264%_)
                              ((lambda (_%g2525425267%_)
                                 (let* ((_%g2528025288%_
                                         (lambda (_%g2528125284%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2528125284%_)))
                                        (_%g2527925406%_
                                         (lambda (_%g2528125292%_)
                                           ((lambda (_%g2528225295%_)
                                              (let* ((_%g2530825316%_
                                                      (lambda (_%g2530925312%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2530925312%_)))
                                                     (_%g2530725402%_
                                                      (lambda (_%g2530925320%_)
                                                        ((lambda (_%g2531025323%_)
                                                           (let* ((_%g2533625344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2533725340%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2533725340%_)))
                          (_%g2533525398%_
                           (lambda (_%g2533725348%_)
                             ((lambda (_%g2533825351%_)
                                (let* ((_%g2536425372%_
                                        (lambda (_%g2536525368%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2536525368%_)))
                                       (_%g2536325394%_
                                        (lambda (_%g2536525376%_)
                                          ((lambda (_%g2536625379%_)
                                             (_%wrap25085%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%g2531025323%_
                                                          (cons _%g2536625379%_
                                                                '())))))
                                           _%g2536525376%_))))
                                  (_%g2536325394%_
                                   (_%wrap25085%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%g2522425237%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2509425189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g2525425267%_ (cons _%g2533825351%_ '())))))))))
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
                                                        (cons _%g2525425267%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%g2528225295%_
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
                                                      (cons _%g2522425237%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2509425189%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%g2509225187%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2528125292%_))))
                                   (_%g2527925406%_
                                    (gx#stx-identifier
                                     _%g2509325188%_
                                     '@next-method))))
                               _%g2525325264%_))))
                      (_%g2525125410%_
                       (gx#stx-identifier
                        _%g2509325188%_
                        _%g2509325188%_
                        '"::"
                        _%g2509425189%_))))
                  _%g2522325234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2522125414%_
                                                  (let ((__obj27049
                                                         _%klass25216%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27049
                                                           'gerbil.core#runtime-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27049
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#runtime-type-info::t
                                                         __obj27049
                                                         'type-descriptor)))))
                                               (if (gx#identifier?
                                                    _%g2509425189%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                          _%g2509325188%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25082%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx25082%_
                                                        _%g2509325188%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25082%_
                                                    _%g2509425189%_))))
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
                  (lambda (_%id26062%_)
                    (if (gx#identifier? _%id26062%_)
                        (let ((_%id-str26065%_
                               (symbol->string (gx#stx-e _%id26062%_))))
                          (if (string-index _%id-str26065%_ '#\.)
                              (let* ((_%split26068%_
                                      (string-split _%id-str26065%_ '#\.))
                                     (__tmp27296 (length _%split26068%_)))
                                (declare (not safe))
                                (##fx= __tmp27296 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25439%_
                  (lambda (_%id26051%_)
                    (let* ((_%id-str26054%_
                            (symbol->string (gx#stx-e _%id26051%_)))
                           (_%split26057%_
                            (string-split _%id-str26054%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26051%_
                             (car _%split26057%_))
                            (cons (gx#stx-identifier
                                   _%id26051%_
                                   (cadr _%split26057%_))
                                  '()))))))
          (let* ((_%__stx2678726788%_ _%stx25434%_)
                 (_%g2544425531%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2678726788%_))))
            (let ((_%__kont2679026791%_
                   (lambda (_%g2544625944%_ _%g2544725946%_ _%g2544825947%_)
                     (let* ((_%g2597525990%_
                             (lambda (_%g2597625986%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2597625986%_)))
                            (_%g2597426043%_
                             (lambda (_%g2597625994%_)
                               (if (gx#stx-pair? _%g2597625994%_)
                                   (let ((_%e2597925997%_
                                          (gx#syntax-e _%g2597625994%_)))
                                     (let ((_%hd2598026001%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2597925997%_)))
                                           (_%tl2598126004%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2597925997%_))))
                                       (if (gx#stx-pair? _%tl2598126004%_)
                                           (let ((_%e2598226007%_
                                                  (gx#syntax-e
                                                   _%tl2598126004%_)))
                                             (let ((_%hd2598326011%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2598226007%_)))
                                                   (_%tl2598426014%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2598226007%_))))
                                               (if (gx#stx-null?
                                                    _%tl2598426014%_)
                                                   ((lambda (_%g2597726017%_
                                                             _%g2597826019%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%g2597826019%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g2597726017%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2603426037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2603526040%_)
                   (cons _%g2603426037%_ _%g2603526040%_))
                 '()
                 _%g2544725946%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2598326011%_
                                                    _%hd2598026001%_)
                                                   (_%g2597525990%_
                                                    _%g2597625994%_))))
                                           (_%g2597525990%_ _%g2597625994%_))))
                                   (_%g2597525990%_ _%g2597625994%_)))))
                       (_%g2597426043%_
                        (_%split-dotted25439%_ _%g2544825947%_)))))
                  (_%__kont2679426795%_
                   (lambda (_%g2546725788%_ _%g2546825790%_)
                     (let* ((_%g2580725822%_
                             (lambda (_%g2580825818%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2580825818%_)))
                            (_%g2580625875%_
                             (lambda (_%g2580825826%_)
                               (if (gx#stx-pair? _%g2580825826%_)
                                   (let ((_%e2581125829%_
                                          (gx#syntax-e _%g2580825826%_)))
                                     (let ((_%hd2581225833%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2581125829%_)))
                                           (_%tl2581325836%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2581125829%_))))
                                       (if (gx#stx-pair? _%tl2581325836%_)
                                           (let ((_%e2581425839%_
                                                  (gx#syntax-e
                                                   _%tl2581325836%_)))
                                             (let ((_%hd2581525843%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2581425839%_)))
                                                   (_%tl2581625846%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2581425839%_))))
                                               (if (gx#stx-null?
                                                    _%tl2581625846%_)
                                                   ((lambda (_%g2580925849%_
                                                             _%g2581025851%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%g2581025851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2580925849%_ '()))
                                (foldr (lambda (_%g2586625869%_
                                                _%g2586725872%_)
                                         (cons _%g2586625869%_
                                               _%g2586725872%_))
                                       '()
                                       _%g2546725788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2581525843%_
                                                    _%hd2581225833%_)
                                                   (_%g2580725822%_
                                                    _%g2580825826%_))))
                                           (_%g2580725822%_ _%g2580825826%_))))
                                   (_%g2580725822%_ _%g2580825826%_)))))
                       (_%g2580625875%_
                        (_%split-dotted25439%_ _%g2546825790%_)))))
                  (_%__kont2679826799%_
                   (lambda (_%g2548425694%_ _%g2548525696%_ _%g2548625697%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%g2548525696%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2548625697%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2572425727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2572525730%_)
                          (cons _%g2572425727%_ _%g2572525730%_))
                        '()
                        _%g2548425694%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2680226803%_
                   (lambda (_%g2550525596%_ _%g2550625598%_ _%g2550725599%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%g2550625598%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2550725599%_ '()))
                                       (foldr (lambda (_%g2562025623%_
                                                       _%g2562125626%_)
                                                (cons _%g2562025623%_
                                                      _%g2562125626%_))
                                              '()
                                              _%g2550525596%_)))))))
              (let* ((_%__match2690626907%_
                      (lambda (_%e2550825538%_
                               _%hd2550925542%_
                               _%tl2551025545%_
                               _%e2551125548%_
                               _%hd2551225552%_
                               _%tl2551325555%_
                               _%e2551425558%_
                               _%hd2551525562%_
                               _%tl2551625565%_
                               _%__splice2680426805%_
                               _%target2551725568%_
                               _%tl2551925571%_)
                        (letrec ((_%loop2552025574%_
                                  (lambda (_%hd2551825578%_ _%arg2552425581%_)
                                    (if (gx#stx-pair? _%hd2551825578%_)
                                        (let ((_%e2552125583%_
                                               (gx#syntax-e _%hd2551825578%_)))
                                          (let ((_%lp-tl2552325590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2552125583%_)))
                                                (_%lp-hd2552225587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2552125583%_))))
                                            (_%loop2552025574%_
                                             _%lp-tl2552325590%_
                                             (cons _%lp-hd2552225587%_
                                                   _%arg2552425581%_))))
                                        (let ((_%arg2552525593%_
                                               (reverse _%arg2552425581%_)))
                                          (let ((_%g2550525596%_
                                                 _%arg2552525593%_)
                                                (_%g2550625598%_
                                                 _%hd2551525562%_)
                                                (_%g2550725599%_
                                                 _%hd2551225552%_))
                                            (if (gx#identifier?
                                                 _%g2550725599%_)
                                                (_%__kont2680226803%_
                                                 _%g2550525596%_
                                                 _%g2550625598%_
                                                 _%g2550725599%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2544425531%_)))))))))
                          (_%loop2552025574%_ _%target2551725568%_ '()))))
                     (_%__match2688026881%_
                      (lambda (_%e2548725636%_
                               _%hd2548825640%_
                               _%tl2548925643%_
                               _%e2549025646%_
                               _%hd2549125650%_
                               _%tl2549225653%_
                               _%e2549325656%_
                               _%hd2549425660%_
                               _%tl2549525663%_
                               _%__splice2680026801%_
                               _%target2549625666%_
                               _%tl2549825669%_)
                        (letrec ((_%loop2549925672%_
                                  (lambda (_%hd2549725676%_ _%arg2550325679%_)
                                    (if (gx#stx-pair? _%hd2549725676%_)
                                        (let ((_%e2550025681%_
                                               (gx#syntax-e _%hd2549725676%_)))
                                          (let ((_%lp-tl2550225688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2550025681%_)))
                                                (_%lp-hd2550125685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2550025681%_))))
                                            (_%loop2549925672%_
                                             _%lp-tl2550225688%_
                                             (cons _%lp-hd2550125685%_
                                                   _%arg2550325679%_))))
                                        (let ((_%arg2550425691%_
                                               (reverse _%arg2550325679%_)))
                                          (let ((_%g2548425694%_
                                                 _%arg2550425691%_)
                                                (_%g2548525696%_
                                                 _%hd2549425660%_)
                                                (_%g2548625697%_
                                                 _%hd2549125650%_))
                                            (if (and (gx#identifier?
                                                      _%g2548625697%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2571625719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2571725722%_)
                       (cons _%g2571625719%_ _%g2571725722%_))
                     '()
                     _%g2548425694%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2679826799%_
                                                 _%g2548425694%_
                                                 _%g2548525696%_
                                                 _%g2548625697%_)
                                                (_%__match2690626907%_
                                                 _%e2548725636%_
                                                 _%hd2548825640%_
                                                 _%tl2548925643%_
                                                 _%e2549025646%_
                                                 _%hd2549125650%_
                                                 _%tl2549225653%_
                                                 _%e2549325656%_
                                                 _%hd2549425660%_
                                                 _%tl2549525663%_
                                                 _%__splice2680026801%_
                                                 _%target2549625666%_
                                                 _%tl2549825669%_))))))))
                          (_%loop2549925672%_ _%target2549625666%_ '()))))
                     (_%__match2686626867%_
                      (lambda (_%e2548725636%_
                               _%hd2548825640%_
                               _%tl2548925643%_
                               _%e2549025646%_
                               _%hd2549125650%_
                               _%tl2549225653%_)
                        (if (gx#stx-pair? _%tl2549225653%_)
                            (let ((_%e2549325656%_
                                   (gx#syntax-e _%tl2549225653%_)))
                              (let ((_%tl2549525663%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2549325656%_)))
                                    (_%hd2549425660%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2549325656%_))))
                                (if (gx#stx-pair/null? _%tl2549525663%_)
                                    (let ((_%__splice2680026801%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2549525663%_
                                            '0)))
                                      (let ((_%tl2549825669%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2680026801%_
                                                '1)))
                                            (_%target2549625666%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2680026801%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2549825669%_)
                                            (_%__match2688026881%_
                                             _%e2548725636%_
                                             _%hd2548825640%_
                                             _%tl2548925643%_
                                             _%e2549025646%_
                                             _%hd2549125650%_
                                             _%tl2549225653%_
                                             _%e2549325656%_
                                             _%hd2549425660%_
                                             _%tl2549525663%_
                                             _%__splice2680026801%_
                                             _%target2549625666%_
                                             _%tl2549825669%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2544425531%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2544425531%_)))))
                            (let () (declare (not safe)) (_%g2544425531%_)))))
                     (_%__match2685426855%_
                      (lambda (_%e2546925740%_
                               _%hd2547025744%_
                               _%tl2547125747%_
                               _%e2547225750%_
                               _%hd2547325754%_
                               _%tl2547425757%_
                               _%__splice2679626797%_
                               _%target2547525760%_
                               _%tl2547725763%_)
                        (letrec ((_%loop2547825766%_
                                  (lambda (_%hd2547625770%_ _%arg2548225773%_)
                                    (if (gx#stx-pair? _%hd2547625770%_)
                                        (let ((_%e2547925775%_
                                               (gx#syntax-e _%hd2547625770%_)))
                                          (let ((_%lp-tl2548125782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2547925775%_)))
                                                (_%lp-hd2548025779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2547925775%_))))
                                            (_%loop2547825766%_
                                             _%lp-tl2548125782%_
                                             (cons _%lp-hd2548025779%_
                                                   _%arg2548225773%_))))
                                        (let ((_%arg2548325785%_
                                               (reverse _%arg2548225773%_)))
                                          (let ((_%g2546725788%_
                                                 _%arg2548325785%_)
                                                (_%g2546825790%_
                                                 _%hd2547325754%_))
                                            (if (_%dotted-identifier?25437%_
                                                 _%g2546825790%_)
                                                (_%__kont2679426795%_
                                                 _%g2546725788%_
                                                 _%g2546825790%_)
                                                (_%__match2686626867%_
                                                 _%e2546925740%_
                                                 _%hd2547025744%_
                                                 _%tl2547125747%_
                                                 _%e2547225750%_
                                                 _%hd2547325754%_
                                                 _%tl2547425757%_))))))))
                          (_%loop2547825766%_ _%target2547525760%_ '()))))
                     (_%__match2685226853%_
                      (lambda (_%e2546925740%_
                               _%hd2547025744%_
                               _%tl2547125747%_
                               _%e2547225750%_
                               _%hd2547325754%_
                               _%tl2547425757%_
                               _%__splice2679626797%_
                               _%target2547525760%_
                               _%tl2547725763%_)
                        (if (gx#stx-null? _%tl2547725763%_)
                            (_%__match2685426855%_
                             _%e2546925740%_
                             _%hd2547025744%_
                             _%tl2547125747%_
                             _%e2547225750%_
                             _%hd2547325754%_
                             _%tl2547425757%_
                             _%__splice2679626797%_
                             _%target2547525760%_
                             _%tl2547725763%_)
                            (if (gx#stx-pair? _%tl2547425757%_)
                                (let ((_%e2549325656%_
                                       (gx#syntax-e _%tl2547425757%_)))
                                  (let ((_%tl2549525663%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2549325656%_)))
                                        (_%hd2549425660%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2549325656%_))))
                                    (if (gx#stx-pair/null? _%tl2549525663%_)
                                        (let ((_%__splice2680026801%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2549525663%_
                                                '0)))
                                          (let ((_%tl2549825669%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2680026801%_
                                                    '1)))
                                                (_%target2549625666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2680026801%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2549825669%_)
                                                (_%__match2688026881%_
                                                 _%e2546925740%_
                                                 _%hd2547025744%_
                                                 _%tl2547125747%_
                                                 _%e2547225750%_
                                                 _%hd2547325754%_
                                                 _%tl2547425757%_
                                                 _%e2549325656%_
                                                 _%hd2549425660%_
                                                 _%tl2549525663%_
                                                 _%__splice2680026801%_
                                                 _%target2549625666%_
                                                 _%tl2549825669%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2544425531%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2544425531%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2544425531%_))))))
                     (_%__match2683426835%_
                      (lambda (_%e2544925886%_
                               _%hd2545025890%_
                               _%tl2545125893%_
                               _%e2545225896%_
                               _%hd2545325900%_
                               _%tl2545425903%_
                               _%__splice2679226793%_
                               _%target2545525906%_
                               _%tl2545725909%_
                               _%e2546425912%_
                               _%hd2546525916%_
                               _%tl2546625919%_)
                        (letrec ((_%loop2545825922%_
                                  (lambda (_%hd2545625926%_ _%arg2546225929%_)
                                    (if (gx#stx-pair? _%hd2545625926%_)
                                        (let ((_%e2545925931%_
                                               (gx#syntax-e _%hd2545625926%_)))
                                          (let ((_%lp-tl2546125938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2545925931%_)))
                                                (_%lp-hd2546025935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2545925931%_))))
                                            (_%loop2545825922%_
                                             _%lp-tl2546125938%_
                                             (cons _%lp-hd2546025935%_
                                                   _%arg2546225929%_))))
                                        (let ((_%arg2546325941%_
                                               (reverse _%arg2546225929%_)))
                                          (let ((_%g2544625944%_
                                                 _%hd2546525916%_)
                                                (_%g2544725946%_
                                                 _%arg2546325941%_)
                                                (_%g2544825947%_
                                                 _%hd2545325900%_))
                                            (if (and (_%dotted-identifier?25437%_
                                                      _%g2544825947%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2596625969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2596725972%_)
                       (cons _%g2596625969%_ _%g2596725972%_))
                     '()
                     _%g2544725946%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2679026791%_
                                                 _%g2544625944%_
                                                 _%g2544725946%_
                                                 _%g2544825947%_)
                                                (let ((_%__splice2679626797%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2545425903%_
                                                        '0)))
                                                  (let ((_%tl2547725763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679626797%_
                                                            '1)))
                                                        (_%target2547525760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679626797%_
                                                            '0))))
                                                    (_%__match2685226853%_
                                                     _%e2544925886%_
                                                     _%hd2545025890%_
                                                     _%tl2545125893%_
                                                     _%e2545225896%_
                                                     _%hd2545325900%_
                                                     _%tl2545425903%_
                                                     _%__splice2679626797%_
                                                     _%target2547525760%_
                                                     _%tl2547725763%_))))))))))
                          (_%loop2545825922%_ _%target2545525906%_ '())))))
                (if (gx#stx-pair? _%__stx2678726788%_)
                    (let ((_%e2544925886%_ (gx#syntax-e _%__stx2678726788%_)))
                      (let ((_%tl2545125893%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2544925886%_)))
                            (_%hd2545025890%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2544925886%_))))
                        (if (gx#stx-pair? _%tl2545125893%_)
                            (let ((_%e2545225896%_
                                   (gx#syntax-e _%tl2545125893%_)))
                              (let ((_%tl2545425903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2545225896%_)))
                                    (_%hd2545325900%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2545225896%_))))
                                (if (gx#stx-pair/null? _%tl2545425903%_)
                                    (if (let ((__tmp27297
                                               (gx#stx-length
                                                _%tl2545425903%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27297 '1))
                                        (let ((_%__splice2679226793%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2545425903%_
                                                '1)))
                                          (let ((_%tl2545725909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679226793%_
                                                    '1)))
                                                (_%target2545525906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679226793%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2545725909%_)
                                                (let ((_%e2546425912%_
                                                       (gx#syntax-e
                                                        _%tl2545725909%_)))
                                                  (let ((_%tl2546625919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2546425912%_)))
                                                        (_%hd2546525916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2546425912%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2546625919%_)
                                                        (_%__match2683426835%_
                                                         _%e2544925886%_
                                                         _%hd2545025890%_
                                                         _%tl2545125893%_
                                                         _%e2545225896%_
                                                         _%hd2545325900%_
                                                         _%tl2545425903%_
                                                         _%__splice2679226793%_
                                                         _%target2545525906%_
                                                         _%tl2545725909%_
                                                         _%e2546425912%_
                                                         _%hd2546525916%_
                                                         _%tl2546625919%_)
                                                        (let ((_%__splice2679626797%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2545425903%_
                                                                '0)))
                                                          (let ((_%tl2547725763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2679626797%_ '1)))
                        (_%target2547525760%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2679626797%_ '0))))
                    (if (gx#stx-null? _%tl2547725763%_)
                        (_%__match2685426855%_
                         _%e2544925886%_
                         _%hd2545025890%_
                         _%tl2545125893%_
                         _%e2545225896%_
                         _%hd2545325900%_
                         _%tl2545425903%_
                         _%__splice2679626797%_
                         _%target2547525760%_
                         _%tl2547725763%_)
                        (if (gx#stx-pair? _%tl2545425903%_)
                            (let ((_%e2549325656%_
                                   (gx#syntax-e _%tl2545425903%_)))
                              (let ((_%tl2549525663%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2549325656%_)))
                                    (_%hd2549425660%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2549325656%_))))
                                (if (gx#stx-pair/null? _%tl2549525663%_)
                                    (let ((_%__splice2680026801%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2549525663%_
                                            '0)))
                                      (let ((_%tl2549825669%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2680026801%_
                                                '1)))
                                            (_%target2549625666%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2680026801%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2549825669%_)
                                            (_%__match2688026881%_
                                             _%e2544925886%_
                                             _%hd2545025890%_
                                             _%tl2545125893%_
                                             _%e2545225896%_
                                             _%hd2545325900%_
                                             _%tl2545425903%_
                                             _%e2549325656%_
                                             _%hd2549425660%_
                                             _%tl2549525663%_
                                             _%__splice2680026801%_
                                             _%target2549625666%_
                                             _%tl2549825669%_)
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
                                                (let ((_%__splice2679626797%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2545425903%_
                                                        '0)))
                                                  (let ((_%tl2547725763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679626797%_
                                                            '1)))
                                                        (_%target2547525760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679626797%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2547725763%_)
                                                        (_%__match2685426855%_
                                                         _%e2544925886%_
                                                         _%hd2545025890%_
                                                         _%tl2545125893%_
                                                         _%e2545225896%_
                                                         _%hd2545325900%_
                                                         _%tl2545425903%_
                                                         _%__splice2679626797%_
                                                         _%target2547525760%_
                                                         _%tl2547725763%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2545425903%_)
                                                            (let ((_%e2549325656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2545425903%_)))
                      (let ((_%tl2549525663%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2549325656%_)))
                            (_%hd2549425660%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2549325656%_))))
                        (if (gx#stx-pair/null? _%tl2549525663%_)
                            (let ((_%__splice2680026801%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2549525663%_
                                    '0)))
                              (let ((_%tl2549825669%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2680026801%_
                                        '1)))
                                    (_%target2549625666%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2680026801%_
                                        '0))))
                                (if (gx#stx-null? _%tl2549825669%_)
                                    (_%__match2688026881%_
                                     _%e2544925886%_
                                     _%hd2545025890%_
                                     _%tl2545125893%_
                                     _%e2545225896%_
                                     _%hd2545325900%_
                                     _%tl2545425903%_
                                     _%e2549325656%_
                                     _%hd2549425660%_
                                     _%tl2549525663%_
                                     _%__splice2680026801%_
                                     _%target2549625666%_
                                     _%tl2549825669%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2544425531%_)))))
                            (let () (declare (not safe)) (_%g2544425531%_)))))
                    (let () (declare (not safe)) (_%g2544425531%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2679626797%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2545425903%_
                                                '0)))
                                          (let ((_%tl2547725763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679626797%_
                                                    '1)))
                                                (_%target2547525760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679626797%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2547725763%_)
                                                (_%__match2685426855%_
                                                 _%e2544925886%_
                                                 _%hd2545025890%_
                                                 _%tl2545125893%_
                                                 _%e2545225896%_
                                                 _%hd2545325900%_
                                                 _%tl2545425903%_
                                                 _%__splice2679626797%_
                                                 _%target2547525760%_
                                                 _%tl2547725763%_)
                                                (if (gx#stx-pair?
                                                     _%tl2545425903%_)
                                                    (let ((_%e2549325656%_
                                                           (gx#syntax-e
                                                            _%tl2545425903%_)))
                                                      (let ((_%tl2549525663%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2549325656%_)))
                    (_%hd2549425660%_
                     (let () (declare (not safe)) (##car _%e2549325656%_))))
                (if (gx#stx-pair/null? _%tl2549525663%_)
                    (let ((_%__splice2680026801%_
                           (gx#syntax-split-splice->vector
                            _%tl2549525663%_
                            '0)))
                      (let ((_%tl2549825669%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2680026801%_ '1)))
                            (_%target2549625666%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2680026801%_ '0))))
                        (if (gx#stx-null? _%tl2549825669%_)
                            (_%__match2688026881%_
                             _%e2544925886%_
                             _%hd2545025890%_
                             _%tl2545125893%_
                             _%e2545225896%_
                             _%hd2545325900%_
                             _%tl2545425903%_
                             _%e2549325656%_
                             _%hd2549425660%_
                             _%tl2549525663%_
                             _%__splice2680026801%_
                             _%target2549625666%_
                             _%tl2549825669%_)
                            (let () (declare (not safe)) (_%g2544425531%_)))))
                    (let () (declare (not safe)) (_%g2544425531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2544425531%_)))))))
                                    (if (gx#stx-pair? _%tl2545425903%_)
                                        (let ((_%e2549325656%_
                                               (gx#syntax-e _%tl2545425903%_)))
                                          (let ((_%tl2549525663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2549325656%_)))
                                                (_%hd2549425660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2549325656%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2549525663%_)
                                                (let ((_%__splice2680026801%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2549525663%_
                                                        '0)))
                                                  (let ((_%tl2549825669%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2680026801%_
                                                            '1)))
                                                        (_%target2549625666%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2680026801%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2549825669%_)
                                                        (_%__match2688026881%_
                                                         _%e2544925886%_
                                                         _%hd2545025890%_
                                                         _%tl2545125893%_
                                                         _%e2545225896%_
                                                         _%hd2545325900%_
                                                         _%tl2545425903%_
                                                         _%e2549325656%_
                                                         _%hd2549425660%_
                                                         _%tl2549525663%_
                                                         _%__splice2680026801%_
                                                         _%target2549625666%_
                                                         _%tl2549825669%_)
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
      (lambda (_%$stx26075%_)
        (let* ((_%__stx2690926910%_ _%$stx26075%_)
               (_%g2608026120%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2690926910%_))))
          (let ((_%__kont2691226913%_
                 (lambda (_%g2608226256%_ _%g2608326258%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%g2608326258%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2608226256%_ '()))
                                     '())))))
                (_%__kont2691426915%_
                 (lambda (_%g2609326185%_
                          _%g2609426187%_
                          _%g2609526188%_
                          _%g2609626189%_)
                   (cons _%g2609626189%_
                         (cons (cons _%g2609626189%_
                                     (cons _%g2609526188%_
                                           (cons _%g2609426187%_ '())))
                               (foldr (lambda (_%g2621026213%_ _%g2621126216%_)
                                        (cons _%g2621026213%_ _%g2621126216%_))
                                      '()
                                      _%g2609326185%_))))))
            (let* ((_%__match2696426965%_
                    (lambda (_%e2609726127%_
                             _%hd2609826131%_
                             _%tl2609926134%_
                             _%e2610026137%_
                             _%hd2610126141%_
                             _%tl2610226144%_
                             _%e2610326147%_
                             _%hd2610426151%_
                             _%tl2610526154%_
                             _%__splice2691626917%_
                             _%target2610626157%_
                             _%tl2610826160%_)
                      (letrec ((_%loop2610926163%_
                                (lambda (_%hd2610726167%_ _%rest2611326170%_)
                                  (if (gx#stx-pair? _%hd2610726167%_)
                                      (let ((_%e2611026172%_
                                             (gx#syntax-e _%hd2610726167%_)))
                                        (let ((_%lp-tl2611226179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2611026172%_)))
                                              (_%lp-hd2611126176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2611026172%_))))
                                          (_%loop2610926163%_
                                           _%lp-tl2611226179%_
                                           (cons _%lp-hd2611126176%_
                                                 _%rest2611326170%_))))
                                      (let ((_%rest2611426182%_
                                             (reverse _%rest2611326170%_)))
                                        (_%__kont2691426915%_
                                         _%rest2611426182%_
                                         _%hd2610426151%_
                                         _%hd2610126141%_
                                         _%hd2609826131%_))))))
                        (_%loop2610926163%_ _%target2610626157%_ '()))))
                   (_%__match2693826939%_
                    (lambda (_%e2608426226%_
                             _%hd2608526230%_
                             _%tl2608626233%_
                             _%e2608726236%_
                             _%hd2608826240%_
                             _%tl2608926243%_
                             _%e2609026246%_
                             _%hd2609126250%_
                             _%tl2609226253%_)
                      (let ((_%g2608226256%_ _%hd2609126250%_)
                            (_%g2608326258%_ _%hd2608826240%_))
                        (if (gx#identifier? _%g2608226256%_)
                            (_%__kont2691226913%_
                             _%g2608226256%_
                             _%g2608326258%_)
                            (if (gx#stx-pair/null? _%tl2609226253%_)
                                (let ((_%__splice2691626917%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2609226253%_
                                        '0)))
                                  (let ((_%tl2610826160%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2691626917%_
                                            '1)))
                                        (_%target2610626157%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2691626917%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2610826160%_)
                                        (_%__match2696426965%_
                                         _%e2608426226%_
                                         _%hd2608526230%_
                                         _%tl2608626233%_
                                         _%e2608726236%_
                                         _%hd2608826240%_
                                         _%tl2608926243%_
                                         _%e2609026246%_
                                         _%hd2609126250%_
                                         _%tl2609226253%_
                                         _%__splice2691626917%_
                                         _%target2610626157%_
                                         _%tl2610826160%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2608026120%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2608026120%_))))))))
              (if (gx#stx-pair? _%__stx2690926910%_)
                  (let ((_%e2608426226%_ (gx#syntax-e _%__stx2690926910%_)))
                    (let ((_%tl2608626233%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2608426226%_)))
                          (_%hd2608526230%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2608426226%_))))
                      (if (gx#stx-pair? _%tl2608626233%_)
                          (let ((_%e2608726236%_
                                 (gx#syntax-e _%tl2608626233%_)))
                            (let ((_%tl2608926243%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2608726236%_)))
                                  (_%hd2608826240%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2608726236%_))))
                              (if (gx#stx-pair? _%tl2608926243%_)
                                  (let ((_%e2609026246%_
                                         (gx#syntax-e _%tl2608926243%_)))
                                    (let ((_%tl2609226253%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2609026246%_)))
                                          (_%hd2609126250%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2609026246%_))))
                                      (if (gx#stx-null? _%tl2609226253%_)
                                          (_%__match2693826939%_
                                           _%e2608426226%_
                                           _%hd2608526230%_
                                           _%tl2608626233%_
                                           _%e2608726236%_
                                           _%hd2608826240%_
                                           _%tl2608926243%_
                                           _%e2609026246%_
                                           _%hd2609126250%_
                                           _%tl2609226253%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2609226253%_)
                                              (let ((_%__splice2691626917%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2609226253%_
                                                      '0)))
                                                (let ((_%tl2610826160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2691626917%_
                                                          '1)))
                                                      (_%target2610626157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2691626917%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2610826160%_)
                                                      (_%__match2696426965%_
                                                       _%e2608426226%_
                                                       _%hd2608526230%_
                                                       _%tl2608626233%_
                                                       _%e2608726236%_
                                                       _%hd2608826240%_
                                                       _%tl2608926243%_
                                                       _%e2609026246%_
                                                       _%hd2609126250%_
                                                       _%tl2609226253%_
                                                       _%__splice2691626917%_
                                                       _%target2610626157%_
                                                       _%tl2610826160%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2608026120%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2608026120%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2608026120%_)))))
                          (let () (declare (not safe)) (_%g2608026120%_)))))
                  (let () (declare (not safe)) (_%g2608026120%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26278%_)
        (let* ((_%__stx2696726968%_ _%$stx26278%_)
               (_%g2628326335%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2696726968%_))))
          (let ((_%__kont2697026971%_
                 (lambda (_%g2628526509%_ _%g2628626511%_ _%g2628726512%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%g2628726512%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2628626511%_ '()))
                                     (cons _%g2628526509%_ '()))))))
                (_%__kont2697226973%_
                 (lambda (_%g2630026420%_
                          _%g2630126422%_
                          _%g2630226423%_
                          _%g2630326424%_
                          _%g2630426425%_
                          _%g2630526426%_)
                   (cons _%g2630526426%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%g2630426425%_
                                           (cons _%g2630326424%_
                                                 (foldr (lambda (_%g2645326456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2645426459%_)
                  (cons _%g2645326456%_ _%g2645426459%_))
                '()
                _%g2630226423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g2630126422%_
                                     (cons _%g2630026420%_ '())))))))
            (let* ((_%__match2704227043%_
                    (lambda (_%e2630626342%_
                             _%hd2630726346%_
                             _%tl2630826349%_
                             _%e2630926352%_
                             _%hd2631026356%_
                             _%tl2631126359%_
                             _%e2631226362%_
                             _%hd2631326366%_
                             _%tl2631426369%_
                             _%__splice2697426975%_
                             _%target2631526372%_
                             _%tl2631726375%_
                             _%e2632426378%_
                             _%hd2632526382%_
                             _%tl2632626385%_
                             _%e2632726388%_
                             _%hd2632826392%_
                             _%tl2632926395%_)
                      (letrec ((_%loop2631826398%_
                                (lambda (_%hd2631626402%_ _%path2632226405%_)
                                  (if (gx#stx-pair? _%hd2631626402%_)
                                      (let ((_%e2631926407%_
                                             (gx#syntax-e _%hd2631626402%_)))
                                        (let ((_%lp-tl2632126414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2631926407%_)))
                                              (_%lp-hd2632026411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2631926407%_))))
                                          (_%loop2631826398%_
                                           _%lp-tl2632126414%_
                                           (cons _%lp-hd2632026411%_
                                                 _%path2632226405%_))))
                                      (let ((_%path2632326417%_
                                             (reverse _%path2632226405%_)))
                                        (_%__kont2697226973%_
                                         _%hd2632826392%_
                                         _%hd2632526382%_
                                         _%path2632326417%_
                                         _%hd2631326366%_
                                         _%hd2631026356%_
                                         _%hd2630726346%_))))))
                        (_%loop2631826398%_ _%target2631526372%_ '()))))
                   (_%__match2700227003%_
                    (lambda (_%e2628826469%_
                             _%hd2628926473%_
                             _%tl2629026476%_
                             _%e2629126479%_
                             _%hd2629226483%_
                             _%tl2629326486%_
                             _%e2629426489%_
                             _%hd2629526493%_
                             _%tl2629626496%_
                             _%e2629726499%_
                             _%hd2629826503%_
                             _%tl2629926506%_)
                      (let ((_%g2628526509%_ _%hd2629826503%_)
                            (_%g2628626511%_ _%hd2629526493%_)
                            (_%g2628726512%_ _%hd2629226483%_))
                        (if (gx#identifier? _%g2628626511%_)
                            (_%__kont2697026971%_
                             _%g2628526509%_
                             _%g2628626511%_
                             _%g2628726512%_)
                            (if (gx#stx-pair/null? _%tl2629626496%_)
                                (if (let ((__tmp27298
                                           (gx#stx-length _%tl2629626496%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27298 '2))
                                    (let ((_%__splice2697426975%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2629626496%_
                                            '2)))
                                      (let ((_%tl2631726375%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2697426975%_
                                                '1)))
                                            (_%target2631526372%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2697426975%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2631726375%_)
                                            (let ((_%e2632426378%_
                                                   (gx#syntax-e
                                                    _%tl2631726375%_)))
                                              (let ((_%tl2632626385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2632426378%_)))
                                                    (_%hd2632526382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2632426378%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2632626385%_)
                                                    (let ((_%e2632726388%_
                                                           (gx#syntax-e
                                                            _%tl2632626385%_)))
                                                      (let ((_%tl2632926395%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2632726388%_)))
                    (_%hd2632826392%_
                     (let () (declare (not safe)) (##car _%e2632726388%_))))
                (if (gx#stx-null? _%tl2632926395%_)
                    (_%__match2704227043%_
                     _%e2628826469%_
                     _%hd2628926473%_
                     _%tl2629026476%_
                     _%e2629126479%_
                     _%hd2629226483%_
                     _%tl2629326486%_
                     _%e2629426489%_
                     _%hd2629526493%_
                     _%tl2629626496%_
                     _%__splice2697426975%_
                     _%target2631526372%_
                     _%tl2631726375%_
                     _%e2632426378%_
                     _%hd2632526382%_
                     _%tl2632626385%_
                     _%e2632726388%_
                     _%hd2632826392%_
                     _%tl2632926395%_)
                    (let () (declare (not safe)) (_%g2628326335%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2628326335%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2628326335%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2628326335%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2628326335%_))))))))
              (if (gx#stx-pair? _%__stx2696726968%_)
                  (let ((_%e2628826469%_ (gx#syntax-e _%__stx2696726968%_)))
                    (let ((_%tl2629026476%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2628826469%_)))
                          (_%hd2628926473%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2628826469%_))))
                      (if (gx#stx-pair? _%tl2629026476%_)
                          (let ((_%e2629126479%_
                                 (gx#syntax-e _%tl2629026476%_)))
                            (let ((_%tl2629326486%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2629126479%_)))
                                  (_%hd2629226483%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2629126479%_))))
                              (if (gx#stx-pair? _%tl2629326486%_)
                                  (let ((_%e2629426489%_
                                         (gx#syntax-e _%tl2629326486%_)))
                                    (let ((_%tl2629626496%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2629426489%_)))
                                          (_%hd2629526493%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2629426489%_))))
                                      (if (gx#stx-pair? _%tl2629626496%_)
                                          (let ((_%e2629726499%_
                                                 (gx#syntax-e
                                                  _%tl2629626496%_)))
                                            (let ((_%tl2629926506%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2629726499%_)))
                                                  (_%hd2629826503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2629726499%_))))
                                              (if (gx#stx-null?
                                                   _%tl2629926506%_)
                                                  (_%__match2700227003%_
                                                   _%e2628826469%_
                                                   _%hd2628926473%_
                                                   _%tl2629026476%_
                                                   _%e2629126479%_
                                                   _%hd2629226483%_
                                                   _%tl2629326486%_
                                                   _%e2629426489%_
                                                   _%hd2629526493%_
                                                   _%tl2629626496%_
                                                   _%e2629726499%_
                                                   _%hd2629826503%_
                                                   _%tl2629926506%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2629626496%_)
                                                      (if (let ((__tmp27299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2629626496%_)))
                    (declare (not safe))
                    (##fx>= __tmp27299 '2))
                  (let ((_%__splice2697426975%_
                         (gx#syntax-split-splice->vector _%tl2629626496%_ '2)))
                    (let ((_%tl2631726375%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2697426975%_ '1)))
                          (_%target2631526372%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2697426975%_ '0))))
                      (if (gx#stx-pair? _%tl2631726375%_)
                          (let ((_%e2632426378%_
                                 (gx#syntax-e _%tl2631726375%_)))
                            (let ((_%tl2632626385%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2632426378%_)))
                                  (_%hd2632526382%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2632426378%_))))
                              (if (gx#stx-pair? _%tl2632626385%_)
                                  (let ((_%e2632726388%_
                                         (gx#syntax-e _%tl2632626385%_)))
                                    (let ((_%tl2632926395%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2632726388%_)))
                                          (_%hd2632826392%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2632726388%_))))
                                      (if (gx#stx-null? _%tl2632926395%_)
                                          (_%__match2704227043%_
                                           _%e2628826469%_
                                           _%hd2628926473%_
                                           _%tl2629026476%_
                                           _%e2629126479%_
                                           _%hd2629226483%_
                                           _%tl2629326486%_
                                           _%e2629426489%_
                                           _%hd2629526493%_
                                           _%tl2629626496%_
                                           _%__splice2697426975%_
                                           _%target2631526372%_
                                           _%tl2631726375%_
                                           _%e2632426378%_
                                           _%hd2632526382%_
                                           _%tl2632626385%_
                                           _%e2632726388%_
                                           _%hd2632826392%_
                                           _%tl2632926395%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2628326335%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2628326335%_)))))
                          (let () (declare (not safe)) (_%g2628326335%_)))))
                  (let () (declare (not safe)) (_%g2628326335%_)))
              (let () (declare (not safe)) (_%g2628326335%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2629626496%_)
                                              (if (let ((__tmp27300
                                                         (gx#stx-length
                                                          _%tl2629626496%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27300 '2))
                                                  (let ((_%__splice2697426975%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2629626496%_
                                                          '2)))
                                                    (let ((_%tl2631726375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2697426975%_
                                                              '1)))
                                                          (_%target2631526372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2697426975%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2631726375%_)
                                                          (let ((_%e2632426378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2631726375%_)))
                    (let ((_%tl2632626385%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2632426378%_)))
                          (_%hd2632526382%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2632426378%_))))
                      (if (gx#stx-pair? _%tl2632626385%_)
                          (let ((_%e2632726388%_
                                 (gx#syntax-e _%tl2632626385%_)))
                            (let ((_%tl2632926395%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2632726388%_)))
                                  (_%hd2632826392%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2632726388%_))))
                              (if (gx#stx-null? _%tl2632926395%_)
                                  (_%__match2704227043%_
                                   _%e2628826469%_
                                   _%hd2628926473%_
                                   _%tl2629026476%_
                                   _%e2629126479%_
                                   _%hd2629226483%_
                                   _%tl2629326486%_
                                   _%e2629426489%_
                                   _%hd2629526493%_
                                   _%tl2629626496%_
                                   _%__splice2697426975%_
                                   _%target2631526372%_
                                   _%tl2631726375%_
                                   _%e2632426378%_
                                   _%hd2632526382%_
                                   _%tl2632626385%_
                                   _%e2632726388%_
                                   _%hd2632826392%_
                                   _%tl2632926395%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2628326335%_)))))
                          (let () (declare (not safe)) (_%g2628326335%_)))))
                  (let () (declare (not safe)) (_%g2628326335%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2628326335%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2628326335%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2628326335%_)))))
                          (let () (declare (not safe)) (_%g2628326335%_)))))
                  (let () (declare (not safe)) (_%g2628326335%_))))))))))
