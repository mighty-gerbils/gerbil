(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27071_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24607%_)
        (letrec ((_%body-opt?24610%_
                  (lambda (_%key24613%_)
                    (let ((__tmp27043 (gx#stx-e _%key24613%_)))
                      (declare (not safe))
                      (##memq __tmp27043
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
          (gx#stx-plist? _%stx24607%_ _%body-opt?24610%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22395%_
               _%id22397%_
               _%super-ref22398%_
               _%slots22399%_
               _%body22400%_)
        (letrec ((_%wrap22402%_
                  (lambda (_%e-stx24604%_)
                    (gx#stx-wrap-source
                     _%e-stx24604%_
                     (gx#stx-source _%stx22395%_))))
                 (_%make-id22404%_
                  (lambda _%args24601%_
                    (apply gx#stx-identifier _%id22397%_ _%args24601%_)))
                 (_%get-mixin-slots22405%_
                  (lambda (_%super24571%_ _%slots24573%_)
                    (letrec* ((_%tab24575%_ (make-hash-table-eq))
                              (_%dedup24577%_
                               (lambda (_%mixins24588%_)
                                 (let _%lp24591%_ ((_%rest24594%_
                                                    _%mixins24588%_)
                                                   (_%r24596%_ '()))
                                   (if (pair? _%rest24594%_)
                                       (let ((_%slot24598%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24594%_))))
                                         (if (hash-get
                                              _%tab24575%_
                                              _%slot24598%_)
                                             (_%lp24591%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24594%_))
                                              _%r24596%_)
                                             (begin
                                               (hash-put!
                                                _%tab24575%_
                                                _%slot24598%_
                                                '#t)
                                               (_%lp24591%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24594%_))
                                                (cons _%slot24598%_
                                                      _%r24596%_)))))
                                       (reverse _%r24596%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24579%_)
                         (hash-put! _%tab24575%_ (gx#stx-e _%slot24579%_) '#t))
                       _%slots24573%_)
                      (if (not _%super24571%_)
                          '()
                          (if (gx#identifier? _%super24571%_)
                              (_%dedup24577%_
                               (_%get-mixin-slots-r22406%_ _%super24571%_))
                              (_%dedup24577%_
                               (concatenate
                                (map _%get-mixin-slots-r22406%_
                                     _%super24571%_))))))))
                 (_%get-mixin-slots-r22406%_
                  (lambda (_%type-id24565%_)
                    (let ((_%info24568%_
                           (gx#syntax-local-value _%type-id24565%_)))
                      (let ((__tmp27045
                             (let ((__obj26829 _%info24568%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj26829
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj26829
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj26829
                                    'slots))))
                            (__tmp27044
                             (concatenate
                              (map _%get-mixin-slots-r22406%_
                                   (let ((__obj26830 _%info24568%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj26830
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj26830
                                            '4
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj26830
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27045 __tmp27044))))))
          (gx#check-duplicate-identifiers _%slots22399%_ _%stx22395%_)
          (let* ((_%name22408%_ (symbol->string (gx#stx-e _%id22397%_)))
                 (_%super22411%_
                  (map gx#syntax-local-value _%super-ref22398%_))
                 (_%struct?22414%_ (gx#stx-getq 'struct: _%body22400%_))
                 (_%g2241722425%_
                  (lambda (_%g2241822421%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2241822421%_)))
                 (_%g2241624561%_
                  (lambda (_%g2241822429%_)
                    ((lambda (_%g2241922432%_)
                       (let* ((_%g2244822456%_
                               (lambda (_%g2244922452%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2244922452%_)))
                              (_%g2244724557%_
                               (lambda (_%g2244922460%_)
                                 ((lambda (_%g2245022463%_)
                                    (let* ((_%g2247622484%_
                                            (lambda (_%g2247722480%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2247722480%_)))
                                           (_%g2247524553%_
                                            (lambda (_%g2247722488%_)
                                              ((lambda (_%g2247822491%_)
                                                 (let* ((_%g2250422512%_
                                                         (lambda (_%g2250522508%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2250522508%_)))
                                                        (_%g2250324549%_
                                                         (lambda (_%g2250522516%_)
                                                           ((lambda (_%g2250622519%_)
                                                              (let* ((_%g2253222540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2253322536%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2253322536%_)))
                             (_%g2253124545%_
                              (lambda (_%g2253322544%_)
                                ((lambda (_%g2253422547%_)
                                   (let* ((_%g2256022577%_
                                           (lambda (_%g2256122573%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2256122573%_)))
                                          (_%g2255924541%_
                                           (lambda (_%g2256122581%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2256122581%_)
                                                 (let ((_g27046_
                                                        (gx#syntax-split-splice
                                                         _%g2256122581%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27047_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27046_)
                          (##values-length _g27046_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27047_ 2)))
                   (error "Context expects 2 values" _g27047_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2256322584%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27046_
                                                               0)))
                                                           (_%tl2256522587%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27046_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2256522587%_)
                                                           (letrec ((_%loop2256622590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2256422594%_ _%slot2257022597%_)
                               (if (gx#stx-pair? _%hd2256422594%_)
                                   (let ((_%e2256722599%_
                                          (gx#syntax-e _%hd2256422594%_)))
                                     (let ((_%lp-hd2256822603%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2256722599%_)))
                                           (_%lp-tl2256922606%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2256722599%_))))
                                       (_%loop2256622590%_
                                        _%lp-tl2256922606%_
                                        (cons _%lp-hd2256822603%_
                                              _%slot2257022597%_))))
                                   (let ((_%slot2257122609%_
                                          (reverse _%slot2257022597%_)))
                                     ((lambda (_%g2256222612%_)
                                        (let* ((_%g2262922646%_
                                                (lambda (_%g2263022642%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2263022642%_)))
                                               (_%g2262824532%_
                                                (lambda (_%g2263022650%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2263022650%_)
                                                      (let ((_g27048_
                                                             (gx#syntax-split-splice
                                                              _%g2263022650%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27048_)
                               (##values-length _g27048_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27049_ 2)))
                        (error "Context expects 2 values" _g27049_)))
                  (let ((_%target2263222653%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27048_ 0)))
                        (_%tl2263422656%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27048_ 1))))
                    (if (gx#stx-null? _%tl2263422656%_)
                        (letrec ((_%loop2263522659%_
                                  (lambda (_%hd2263322663%_ _%getf2263922666%_)
                                    (if (gx#stx-pair? _%hd2263322663%_)
                                        (let ((_%e2263622668%_
                                               (gx#syntax-e _%hd2263322663%_)))
                                          (let ((_%lp-hd2263722672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2263622668%_)))
                                                (_%lp-tl2263822675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2263622668%_))))
                                            (_%loop2263522659%_
                                             _%lp-tl2263822675%_
                                             (cons _%lp-hd2263722672%_
                                                   _%getf2263922666%_))))
                                        (let ((_%getf2264022678%_
                                               (reverse _%getf2263922666%_)))
                                          ((lambda (_%g2263122681%_)
                                             (let* ((_%g2269822715%_
                                                     (lambda (_%g2269922711%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2269922711%_)))
                                                    (_%g2269724523%_
                                                     (lambda (_%g2269922719%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2269922719%_)
                                                           (let ((_g27050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2269922719%_ '0)))
                     (begin
                       (let ((_g27051_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27050_)
                                    (##values-length _g27050_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27051_ 2)))
                             (error "Context expects 2 values" _g27051_)))
                       (let ((_%target2270122722%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27050_ 0)))
                             (_%tl2270322725%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27050_ 1))))
                         (if (gx#stx-null? _%tl2270322725%_)
                             (letrec ((_%loop2270422728%_
                                       (lambda (_%hd2270222732%_
                                                _%setf2270822735%_)
                                         (if (gx#stx-pair? _%hd2270222732%_)
                                             (let ((_%e2270522737%_
                                                    (gx#syntax-e
                                                     _%hd2270222732%_)))
                                               (let ((_%lp-hd2270622741%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2270522737%_)))
                                                     (_%lp-tl2270722744%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2270522737%_))))
                                                 (_%loop2270422728%_
                                                  _%lp-tl2270722744%_
                                                  (cons _%lp-hd2270622741%_
                                                        _%setf2270822735%_))))
                                             (let ((_%setf2270922747%_
                                                    (reverse _%setf2270822735%_)))
                                               ((lambda (_%g2270022750%_)
                                                  (let* ((_%mixin-slots22767%_
                                                          (_%get-mixin-slots22405%_
                                                           _%super-ref22398%_
                                                           _%slots22399%_))
                                                         (_%g2277022787%_
                                                          (lambda (_%g2277122783%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2277122783%_)))
                                                         (_%g2276924519%_
                                                          (lambda (_%g2277122791%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2277122791%_)
                        (let ((_g27052_
                               (gx#syntax-split-splice _%g2277122791%_ '0)))
                          (begin
                            (let ((_g27053_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27052_)
                                         (##values-length _g27052_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27053_ 2)))
                                  (error "Context expects 2 values" _g27053_)))
                            (let ((_%target2277322794%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27052_ 0)))
                                  (_%tl2277522797%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27052_ 1))))
                              (if (gx#stx-null? _%tl2277522797%_)
                                  (letrec ((_%loop2277622800%_
                                            (lambda (_%hd2277422804%_
                                                     _%mixin-slot2278022807%_)
                                              (if (gx#stx-pair?
                                                   _%hd2277422804%_)
                                                  (let ((_%e2277722809%_
                                                         (gx#syntax-e
                                                          _%hd2277422804%_)))
                                                    (let ((_%lp-hd2277822813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2277722809%_)))
                                                          (_%lp-tl2277922816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2277722809%_))))
                                                      (_%loop2277622800%_
                                                       _%lp-tl2277922816%_
                                                       (cons _%lp-hd2277822813%_
                                                             _%mixin-slot2278022807%_))))
                                                  (let ((_%mixin-slot2278122819%_
                                                         (reverse _%mixin-slot2278022807%_)))
                                                    ((lambda (_%g2277222822%_)
                                                       (let* ((_%g2284022857%_
                                                               (lambda (_%g2284122853%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2284122853%_)))
                      (_%g2283924510%_
                       (lambda (_%g2284122861%_)
                         (if (gx#stx-pair/null? _%g2284122861%_)
                             (let ((_g27054_
                                    (gx#syntax-split-splice
                                     _%g2284122861%_
                                     '0)))
                               (begin
                                 (let ((_g27055_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27054_)
                                              (##values-length _g27054_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27055_ 2)))
                                       (error "Context expects 2 values"
                                              _g27055_)))
                                 (let ((_%target2284322864%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27054_ 0)))
                                       (_%tl2284522867%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27054_ 1))))
                                   (if (gx#stx-null? _%tl2284522867%_)
                                       (letrec ((_%loop2284622870%_
                                                 (lambda (_%hd2284422874%_
                                                          _%mixin-getf2285022877%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2284422874%_)
                                                       (let ((_%e2284722879%_
                                                              (gx#syntax-e
                                                               _%hd2284422874%_)))
                                                         (let ((_%lp-hd2284822883%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2284722879%_)))
                       (_%lp-tl2284922886%_
                        (let () (declare (not safe)) (##cdr _%e2284722879%_))))
                   (_%loop2284622870%_
                    _%lp-tl2284922886%_
                    (cons _%lp-hd2284822883%_ _%mixin-getf2285022877%_))))
               (let ((_%mixin-getf2285122889%_
                      (reverse _%mixin-getf2285022877%_)))
                 ((lambda (_%g2284222892%_)
                    (let* ((_%g2290922926%_
                            (lambda (_%g2291022922%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2291022922%_)))
                           (_%g2290824501%_
                            (lambda (_%g2291022930%_)
                              (if (gx#stx-pair/null? _%g2291022930%_)
                                  (let ((_g27056_
                                         (gx#syntax-split-splice
                                          _%g2291022930%_
                                          '0)))
                                    (begin
                                      (let ((_g27057_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27056_)
                                                   (##values-length _g27056_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27057_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27057_)))
                                      (let ((_%target2291222933%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27056_ 0)))
                                            (_%tl2291422936%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27056_ 1))))
                                        (if (gx#stx-null? _%tl2291422936%_)
                                            (letrec ((_%loop2291522939%_
                                                      (lambda (_%hd2291322943%_
                                                               _%mixin-setf2291922946%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2291322943%_)
                                                            (let ((_%e2291622948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2291322943%_)))
                      (let ((_%lp-hd2291722952%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2291622948%_)))
                            (_%lp-tl2291822955%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2291622948%_))))
                        (_%loop2291522939%_
                         _%lp-tl2291822955%_
                         (cons _%lp-hd2291722952%_ _%mixin-setf2291922946%_))))
                    (let ((_%mixin-setf2292022958%_
                           (reverse _%mixin-setf2291922946%_)))
                      ((lambda (_%g2291122961%_)
                         (let* ((_%g2297822995%_
                                 (lambda (_%g2297922991%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2297922991%_)))
                                (_%g2297724484%_
                                 (lambda (_%g2297922999%_)
                                   (if (gx#stx-pair/null? _%g2297922999%_)
                                       (let ((_g27058_
                                              (gx#syntax-split-splice
                                               _%g2297922999%_
                                               '0)))
                                         (begin
                                           (let ((_g27059_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27058_)
                                                        (##values-length
                                                         _g27058_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27059_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27059_)))
                                           (let ((_%target2298123002%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27058_ 0)))
                                                 (_%tl2298323005%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27058_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2298323005%_)
                                                 (letrec ((_%loop2298423008%_
                                                           (lambda (_%hd2298223012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2298823015%_)
                     (if (gx#stx-pair? _%hd2298223012%_)
                         (let ((_%e2298523017%_
                                (gx#syntax-e _%hd2298223012%_)))
                           (let ((_%lp-hd2298623021%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2298523017%_)))
                                 (_%lp-tl2298723024%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2298523017%_))))
                             (_%loop2298423008%_
                              _%lp-tl2298723024%_
                              (cons _%lp-hd2298623021%_ _%ugetf2298823015%_))))
                         (let ((_%ugetf2298923027%_
                                (reverse _%ugetf2298823015%_)))
                           ((lambda (_%g2298023030%_)
                              (let* ((_%g2304723064%_
                                      (lambda (_%g2304823060%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2304823060%_)))
                                     (_%g2304624467%_
                                      (lambda (_%g2304823068%_)
                                        (if (gx#stx-pair/null? _%g2304823068%_)
                                            (let ((_g27060_
                                                   (gx#syntax-split-splice
                                                    _%g2304823068%_
                                                    '0)))
                                              (begin
                                                (let ((_g27061_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27060_)
                                                             (##values-length
                                                              _g27060_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27061_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2305023071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27060_
                                                          0)))
                                                      (_%tl2305223074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27060_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2305223074%_)
                                                      (letrec ((_%loop2305323077%_
                                                                (lambda (_%hd2305123081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2305723084%_)
                          (if (gx#stx-pair? _%hd2305123081%_)
                              (let ((_%e2305423086%_
                                     (gx#syntax-e _%hd2305123081%_)))
                                (let ((_%lp-hd2305523090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2305423086%_)))
                                      (_%lp-tl2305623093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2305423086%_))))
                                  (_%loop2305323077%_
                                   _%lp-tl2305623093%_
                                   (cons _%lp-hd2305523090%_
                                         _%usetf2305723084%_))))
                              (let ((_%usetf2305823096%_
                                     (reverse _%usetf2305723084%_)))
                                ((lambda (_%g2304923099%_)
                                   (let* ((_%g2311623133%_
                                           (lambda (_%g2311723129%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2311723129%_)))
                                          (_%g2311524450%_
                                           (lambda (_%g2311723137%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2311723137%_)
                                                 (let ((_g27062_
                                                        (gx#syntax-split-splice
                                                         _%g2311723137%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27063_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27062_)
                          (##values-length _g27062_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27063_ 2)))
                   (error "Context expects 2 values" _g27063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2311923140%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27062_
                                                               0)))
                                                           (_%tl2312123143%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27062_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2312123143%_)
                                                           (letrec ((_%loop2312223146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2312023150%_
                                      _%mixin-ugetf2312623153%_)
                               (if (gx#stx-pair? _%hd2312023150%_)
                                   (let ((_%e2312323155%_
                                          (gx#syntax-e _%hd2312023150%_)))
                                     (let ((_%lp-hd2312423159%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2312323155%_)))
                                           (_%lp-tl2312523162%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2312323155%_))))
                                       (_%loop2312223146%_
                                        _%lp-tl2312523162%_
                                        (cons _%lp-hd2312423159%_
                                              _%mixin-ugetf2312623153%_))))
                                   (let ((_%mixin-ugetf2312723165%_
                                          (reverse _%mixin-ugetf2312623153%_)))
                                     ((lambda (_%g2311823168%_)
                                        (let* ((_%g2318523202%_
                                                (lambda (_%g2318623198%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2318623198%_)))
                                               (_%g2318424433%_
                                                (lambda (_%g2318623206%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2318623206%_)
                                                      (let ((_g27064_
                                                             (gx#syntax-split-splice
                                                              _%g2318623206%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27064_)
                               (##values-length _g27064_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27065_ 2)))
                        (error "Context expects 2 values" _g27065_)))
                  (let ((_%target2318823209%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27064_ 0)))
                        (_%tl2319023212%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27064_ 1))))
                    (if (gx#stx-null? _%tl2319023212%_)
                        (letrec ((_%loop2319123215%_
                                  (lambda (_%hd2318923219%_
                                           _%mixin-usetf2319523222%_)
                                    (if (gx#stx-pair? _%hd2318923219%_)
                                        (let ((_%e2319223224%_
                                               (gx#syntax-e _%hd2318923219%_)))
                                          (let ((_%lp-hd2319323228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2319223224%_)))
                                                (_%lp-tl2319423231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2319223224%_))))
                                            (_%loop2319123215%_
                                             _%lp-tl2319423231%_
                                             (cons _%lp-hd2319323228%_
                                                   _%mixin-usetf2319523222%_))))
                                        (let ((_%mixin-usetf2319623234%_
                                               (reverse _%mixin-usetf2319523222%_)))
                                          ((lambda (_%g2318723237%_)
                                             (let* ((_%type-slots23272%_
                                                     (if (gx#stx-null?
                                                          _%slots22399%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2270022750%_
                                _%g2263122681%_
                                _%g2256222612%_)
                               (foldr (lambda (_%g2325723262%_
                                               _%g2325823265%_
                                               _%g2325923267%_
                                               _%g2326023269%_)
                                        (cons (cons _%g2325923267%_
                                                    (cons _%g2325823265%_
                                                          (cons _%g2325723262%_
                                                                '())))
                                              _%g2326023269%_))
                                      '()
                                      _%g2270022750%_
                                      _%g2263122681%_
                                      _%g2256222612%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23293%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots22767%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2291122961%_
                                _%g2284222892%_
                                _%g2277222822%_)
                               (foldr (lambda (_%g2327823283%_
                                               _%g2327923286%_
                                               _%g2328023288%_
                                               _%g2328123290%_)
                                        (cons (cons _%g2328023288%_
                                                    (cons _%g2327923286%_
                                                          (cons _%g2327823283%_
                                                                '())))
                                              _%g2328123290%_))
                                      '()
                                      _%g2291122961%_
                                      _%g2284222892%_
                                      _%g2277222822%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23300%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22400%_)))
                           (if _%$e23296%_ _%$e23296%_ _%id22397%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23307%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22400%_)))
                           (if _%$e23303%_
                               _%$e23303%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%g2241922432%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23321%_
                                                     (let ((_%$e23317%_
                                                            (let ((_%e2330923311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22400%_)))
                      (if _%e2330923311%_
                          (let ((_%e23314%_ _%e2330923311%_))
                            (cons 'constructor: (cons _%e23314%_ '())))
                          '#f))))
               (if _%$e23317%_ _%$e23317%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23362%_
                                                     (let* ((_%properties23324%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22400%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23339%_
                     (let ((_%$e23327%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22400%_))))
                       (if _%$e23327%_
                           ((lambda (_%print23331%_)
                              (let ((_%print23334%_
                                     (if (eq? _%print23331%_ '#t)
                                         _%slots22399%_
                                         _%print23331%_)))
                                (cons (cons 'print: _%print23334%_)
                                      _%properties23324%_)))
                            _%$e23327%_)
                           _%properties23324%_)))
                    (_%properties23354%_
                     (let ((_%$e23342%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22400%_))))
                       (if _%$e23342%_
                           ((lambda (_%equal23346%_)
                              (let ((_%equal23349%_
                                     (if (eq? _%equal23346%_ '#t)
                                         _%slots22399%_
                                         _%equal23346%_)))
                                (cons (cons 'equal: _%equal23349%_)
                                      _%properties23339%_)))
                            _%$e23342%_)
                           _%properties23339%_)))
                    (_%properties23357%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body22400%_))
                         (cons (cons 'acyclic: '#t) '())
                         '())))
               _%properties23357%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23403%_
                                                     (if (null? _%properties23362%_)
                                                         '()
                                                         (let* ((_%g2336523373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2336623369%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2336623369%_)))
                        (_%g2336423399%_
                         (lambda (_%g2336623377%_)
                           ((lambda (_%g2336723380%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%g2336723380%_ '()))
                                          '())))
                            _%g2336623377%_))))
                   (_%g2336423399%_ _%properties23362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23415%_
                                                     (let ((_%$e23406%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22400%_)))
                                                       (if _%$e23406%_
                                                           ((lambda (_%metaclass23410%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23410%_)
                          _%metaclass23410%_
                          '#f))
                    _%$e23406%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23418%_
                                                     (if _%metaclass23415%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23421%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22400%_)))
                                                    (_%type-struct23424%_
                                                     (cons 'struct:
                                                           (cons _%struct?22414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23427%_
                                                     (cons 'final:
                                                           (cons _%final?23421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2343023447%_
                                                     (lambda (_%g2343123443%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2343123443%_)))
                                                    (_%g2342924429%_
                                                     (lambda (_%g2343123451%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2343123451%_)
                                                           (let ((_g27066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2343123451%_ '0)))
                     (begin
                       (let ((_g27067_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27066_)
                                    (##values-length _g27066_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27067_ 2)))
                             (error "Context expects 2 values" _g27067_)))
                       (let ((_%target2343323454%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27066_ 0)))
                             (_%tl2343523457%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27066_ 1))))
                         (if (gx#stx-null? _%tl2343523457%_)
                             (letrec ((_%loop2343623460%_
                                       (lambda (_%hd2343423464%_
                                                _%type-body2344023467%_)
                                         (if (gx#stx-pair? _%hd2343423464%_)
                                             (let ((_%e2343723469%_
                                                    (gx#syntax-e
                                                     _%hd2343423464%_)))
                                               (let ((_%lp-hd2343823473%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2343723469%_)))
                                                     (_%lp-tl2343923476%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2343723469%_))))
                                                 (_%loop2343623460%_
                                                  _%lp-tl2343923476%_
                                                  (cons _%lp-hd2343823473%_
                                                        _%type-body2344023467%_))))
                                             (let ((_%type-body2344123479%_
                                                    (reverse _%type-body2344023467%_)))
                                               ((lambda (_%g2343223482%_)
                                                  (let* ((_%g2350323511%_
                                                          (lambda (_%g2350423507%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2350423507%_)))
                                                         (_%g2350224417%_
                                                          (lambda (_%g2350423515%_)
                                                            ((lambda (_%g2350523518%_)
                                                               (let* ((_%g2353123539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2353223535%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2353223535%_)))
                              (_%g2353024346%_
                               (lambda (_%g2353223543%_)
                                 ((lambda (_%g2353323546%_)
                                    (let* ((_%g2355923567%_
                                            (lambda (_%g2356023563%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2356023563%_)))
                                           (_%g2355824311%_
                                            (lambda (_%g2356023571%_)
                                              ((lambda (_%g2356123574%_)
                                                 (let* ((_%g2358723595%_
                                                         (lambda (_%g2358823591%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2358823591%_)))
                                                        (_%g2358624227%_
                                                         (lambda (_%g2358823599%_)
                                                           ((lambda (_%g2358923602%_)
                                                              (let* ((_%g2361523623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2361623619%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2361623619%_)))
                             (_%g2361424215%_
                              (lambda (_%g2361623627%_)
                                ((lambda (_%g2361723630%_)
                                   (let* ((_%g2364323651%_
                                           (lambda (_%g2364423647%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2364423647%_)))
                                          (_%g2364224211%_
                                           (lambda (_%g2364423655%_)
                                             ((lambda (_%g2364523658%_)
                                                (let* ((_%g2367123679%_
                                                        (lambda (_%g2367223675%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2367223675%_)))
                                                       (_%g2367024207%_
                                                        (lambda (_%g2367223683%_)
                                                          ((lambda (_%g2367323686%_)
                                                             (let* ((_%g2369923707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2370023703%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2370023703%_)))
                            (_%g2369824172%_
                             (lambda (_%g2370023711%_)
                               ((lambda (_%g2370123714%_)
                                  (let* ((_%g2372723735%_
                                          (lambda (_%g2372823731%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2372823731%_)))
                                         (_%g2372624101%_
                                          (lambda (_%g2372823739%_)
                                            ((lambda (_%g2372923742%_)
                                               (let* ((_%g2375523763%_
                                                       (lambda (_%g2375623759%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2375623759%_)))
                                                      (_%g2375424097%_
                                                       (lambda (_%g2375623767%_)
                                                         ((lambda (_%g2375723770%_)
                                                            (let* ((_%g2378323791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2378423787%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2378423787%_)))
                           (_%g2378224093%_
                            (lambda (_%g2378423795%_)
                              ((lambda (_%g2378523798%_)
                                 (let* ((_%g2381123819%_
                                         (lambda (_%g2381223815%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2381223815%_)))
                                        (_%g2381024089%_
                                         (lambda (_%g2381223823%_)
                                           ((lambda (_%g2381323826%_)
                                              (let* ((_%g2383923847%_
                                                      (lambda (_%g2384023843%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2384023843%_)))
                                                     (_%g2383824063%_
                                                      (lambda (_%g2384023851%_)
                                                        ((lambda (_%g2384123854%_)
                                                           (let* ((_%g2386723875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2386823871%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2386823871%_)))
                          (_%g2386624037%_
                           (lambda (_%g2386823879%_)
                             ((lambda (_%g2386923882%_)
                                (let* ((_%g2389523903%_
                                        (lambda (_%g2389623899%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2389623899%_)))
                                       (_%g2389424011%_
                                        (lambda (_%g2389623907%_)
                                          ((lambda (_%g2389723910%_)
                                             (let* ((_%g2392323931%_
                                                     (lambda (_%g2392423927%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2392423927%_)))
                                                    (_%g2392223985%_
                                                     (lambda (_%g2392423935%_)
                                                       ((lambda (_%g2392523938%_)
                                                          (let* ((_%g2395123959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2395223955%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2395223955%_)))
                         (_%g2395023981%_
                          (lambda (_%g2395223963%_)
                            ((lambda (_%g2395323966%_)
                               (_%wrap22402%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%g2350523518%_
                                            (cons _%g2395323966%_ '())))))
                             _%g2395223963%_))))
                    (_%g2395023981%_
                     (_%wrap22402%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%g2241922432%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%g2353323546%_
                                                          (cons 'name:
                                                                (cons _%g2356123574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%g2361723630%_
                                          (cons 'super:
                                                (cons _%g2358923602%_
                                                      (cons 'struct?:
                                                            (cons _%g2364523658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%g2367323686%_
                                      (cons 'metaclass:
                                            (cons _%g2370123714%_
                                                  (cons 'constructor-method:
                                                        (cons _%g2372923742%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g2375723770%_
                                  (cons 'constructor:
                                        (cons _%g2378523798%_
                                              (cons 'predicate:
                                                    (cons _%g2381323826%_
                                                          (cons 'accessors:
                                                                (cons _%g2384123854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%g2386923882%_
                                          (cons 'unchecked-accessors:
                                                (cons _%g2389723910%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%g2392523938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2392423935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2392223985%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%g2304923099%_
                                                         _%g2256222612%_)
                                                        (foldr (lambda (_%g2398823995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2398923998%_
                                _%g2399024000%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2398923998%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2398823995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2399024000%_))
                       (begin
                         (gx#syntax-check-splice-targets
                          _%g2318723237%_
                          _%g2277222822%_)
                         (foldr (lambda (_%g2399124003%_
                                         _%g2399224006%_
                                         _%g2399324008%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2399224006%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2399124003%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2399324008%_))
                                '()
                                _%g2318723237%_
                                _%g2277222822%_))
                       _%g2304923099%_
                       _%g2256222612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2389623907%_))))
                                  (_%g2389424011%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2298023030%_
                                            _%g2256222612%_)
                                           (foldr (lambda (_%g2401424021%_
                                                           _%g2401524024%_
                                                           _%g2401624026%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2401524024%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2401424021%_ '()))
                                          '()))))
                  _%g2401624026%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g2311823168%_
                                                     _%g2277222822%_)
                                                    (foldr (lambda (_%g2401724029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2401824032%_
                            _%g2401924034%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2401824032%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2401724029%_
                                                               '()))
                                                   '()))))
                           _%g2401924034%_))
                   '()
                   _%g2311823168%_
                   _%g2277222822%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2298023030%_
                                                  _%g2256222612%_))))))
                              _%g2386823879%_))))
                     (_%g2386624037%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%g2270022750%_
                               _%g2256222612%_)
                              (foldr (lambda (_%g2404024047%_
                                              _%g2404124050%_
                                              _%g2404224052%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2404124050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2404024047%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2404224052%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%g2291122961%_
                                        _%g2277222822%_)
                                       (foldr (lambda (_%g2404324055%_
                                                       _%g2404424058%_
                                                       _%g2404524060%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2404424058%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2404324055%_ '()))
                                      '()))))
              _%g2404524060%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g2291122961%_
                                              _%g2277222822%_))
                                     _%g2270022750%_
                                     _%g2256222612%_))))))
                 _%g2384023851%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2383824063%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%g2263122681%_
                                                          _%g2256222612%_)
                                                         (foldr (lambda (_%g2406624073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2406724076%_
                                 _%g2406824078%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2406724076%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2406624073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2406824078%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%g2284222892%_
                           _%g2277222822%_)
                          (foldr (lambda (_%g2406924081%_
                                          _%g2407024084%_
                                          _%g2407124086%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2407024084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2406924081%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2407124086%_))
                                 '()
                                 _%g2284222892%_
                                 _%g2277222822%_))
                        _%g2263122681%_
                        _%g2256222612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2381223823%_))))
                                   (_%g2381024089%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2250622519%_ '())))))
                               _%g2378423795%_))))
                      (_%g2378224093%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%g2247822491%_ '())))))
                  _%g2375623767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2375424097%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%g2245022463%_
                                                              '())))))
                                             _%g2372823739%_))))
                                    (_%g2372624101%_
                                     (if (null? _%type-constructor23321%_)
                                         '#f
                                         (let* ((_%g2410524120%_
                                                 (lambda (_%g2410624116%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2410624116%_)))
                                                (_%g2410424168%_
                                                 (lambda (_%g2410624124%_)
                                                   (if (gx#stx-pair?
                                                        _%g2410624124%_)
                                                       (let ((_%e2410824127%_
                                                              (gx#syntax-e
                                                               _%g2410624124%_)))
                                                         (let ((_%hd2410924131%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2410824127%_)))
                       (_%tl2411024134%_
                        (let () (declare (not safe)) (##cdr _%e2410824127%_))))
                   (if (gx#stx-datum? _%hd2410924131%_)
                       (let ((_%e2411124137%_ (gx#stx-e _%hd2410924131%_)))
                         (if (equal? _%e2411124137%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2411024134%_)
                                 (let ((_%e2411224141%_
                                        (gx#syntax-e _%tl2411024134%_)))
                                   (let ((_%hd2411324145%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2411224141%_)))
                                         (_%tl2411424148%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2411224141%_))))
                                     (if (gx#stx-null? _%tl2411424148%_)
                                         ((lambda (_%g2410724151%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2410724151%_ '())))
                                          _%hd2411324145%_)
                                         (_%g2410524120%_ _%g2410624124%_))))
                                 (_%g2410524120%_ _%g2410624124%_))
                             (_%g2410524120%_ _%g2410624124%_)))
                       (_%g2410524120%_ _%g2410624124%_))))
               (_%g2410524120%_ _%g2410624124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2410424168%_
                                            _%type-constructor23321%_))))))
                                _%g2370023711%_))))
                       (_%g2369824172%_
                        (if _%metaclass23415%_
                            (let* ((_%g2417624184%_
                                    (lambda (_%g2417724180%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2417724180%_)))
                                   (_%g2417524203%_
                                    (lambda (_%g2417724188%_)
                                      ((lambda (_%g2417824191%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%g2417824191%_ '())))
                                       _%g2417724188%_))))
                              (_%g2417524203%_ _%metaclass23415%_))
                            '#f))))
                   _%g2367223683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2367024207%_
                                                   _%final?23421%_)))
                                              _%g2364423655%_))))
                                     (_%g2364224211%_ _%struct?22414%_)))
                                 _%g2361623627%_))))
                        (_%g2361424215%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2421824221%_
                                                     _%g2421924224%_)
                                              (cons _%g2421824221%_
                                                    _%g2421924224%_))
                                            '()
                                            _%g2256222612%_)
                                     '())))))
                    _%g2358823599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2358624227%_
                                                    (let* ((_%g2423124248%_
                                                            (lambda (_%g2423224244%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2423224244%_)))
                                                           (_%g2423024307%_
                                                            (lambda (_%g2423224252%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2423224252%_)
                          (let ((_g27068_
                                 (gx#syntax-split-splice _%g2423224252%_ '0)))
                            (begin
                              (let ((_g27069_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27068_)
                                           (##values-length _g27068_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27069_ 2)))
                                    (error "Context expects 2 values"
                                           _g27069_)))
                              (let ((_%target2423424255%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27068_ 0)))
                                    (_%tl2423624258%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27068_ 1))))
                                (if (gx#stx-null? _%tl2423624258%_)
                                    (letrec ((_%loop2423724261%_
                                              (lambda (_%hd2423524265%_
                                                       _%super-id2424124268%_)
                                                (if (gx#stx-pair?
                                                     _%hd2423524265%_)
                                                    (let ((_%e2423824270%_
                                                           (gx#syntax-e
                                                            _%hd2423524265%_)))
                                                      (let ((_%lp-hd2423924274%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2423824270%_)))
                    (_%lp-tl2424024277%_
                     (let () (declare (not safe)) (##cdr _%e2423824270%_))))
                (_%loop2423724261%_
                 _%lp-tl2424024277%_
                 (cons _%lp-hd2423924274%_ _%super-id2424124268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2424224280%_
                                                           (reverse _%super-id2424124268%_)))
                                                      ((lambda (_%g2423324283%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2429824301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2429924304%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2429824301%_ '()))
                                      _%g2429924304%_))
                              '()
                              _%g2423324283%_)))
               _%super-id2424224280%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2423724261%_
                                       _%target2423424255%_
                                       '()))
                                    (_%g2423124248%_ _%g2423224252%_)))))
                          (_%g2423124248%_ _%g2423224252%_)))))
              (_%g2423024307%_ _%super-ref22398%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2356023571%_))))
                                      (_%g2355824311%_
                                       (let* ((_%g2431524323%_
                                               (lambda (_%g2431624319%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2431624319%_)))
                                              (_%g2431424342%_
                                               (lambda (_%g2431624327%_)
                                                 ((lambda (_%g2431724330%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2431724330%_
                                                                '())))
                                                  _%g2431624327%_))))
                                         (_%g2431424342%_
                                          (cadr _%type-name23300%_))))))
                                  _%g2353223543%_))))
                         (_%g2353024346%_
                          (let* ((_%g2435024365%_
                                  (lambda (_%g2435124361%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2435124361%_)))
                                 (_%g2434924413%_
                                  (lambda (_%g2435124369%_)
                                    (if (gx#stx-pair? _%g2435124369%_)
                                        (let ((_%e2435324372%_
                                               (gx#syntax-e _%g2435124369%_)))
                                          (let ((_%hd2435424376%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2435324372%_)))
                                                (_%tl2435524379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2435324372%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2435424376%_)
                                                (let ((_%e2435624382%_
                                                       (gx#stx-e
                                                        _%hd2435424376%_)))
                                                  (if (equal? _%e2435624382%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2435524379%_)
                                                          (let ((_%e2435724386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2435524379%_)))
                    (let ((_%hd2435824390%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2435724386%_)))
                          (_%tl2435924393%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2435724386%_))))
                      (if (gx#stx-null? _%tl2435924393%_)
                          ((lambda (_%g2435224396%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%g2435224396%_ '())))
                           _%hd2435824390%_)
                          (_%g2435024365%_ _%g2435124369%_))))
                  (_%g2435024365%_ _%g2435124369%_))
              (_%g2435024365%_ _%g2435124369%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2435024365%_
                                                 _%g2435124369%_))))
                                        (_%g2435024365%_ _%g2435124369%_)))))
                            (_%g2434924413%_ _%type-id23307%_)))))
                     _%g2350423515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2350224417%_
                                                     (_%wrap22402%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%g2245022463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g2253422547%_
                                (cons _%g2247822491%_
                                      (cons _%g2250622519%_
                                            (foldr (lambda (_%g2442024423%_
                                                            _%g2442124426%_)
                                                     (cons _%g2442024423%_
                                                           _%g2442124426%_))
                                                   '()
                                                   _%g2343223482%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2344123479%_))))))
                               (_%loop2343623460%_ _%target2343323454%_ '()))
                             (_%g2343023447%_ _%g2343123451%_)))))
                   (_%g2343023447%_ _%g2343123451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2342924429%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23293%_
                                                                _%type-slots23272%_)
                                                         _%type-properties23403%_)
                                                  _%type-metaclass23418%_)
                                           _%type-final23427%_)
                                    _%type-struct23424%_)
                             _%type-constructor23321%_)
                      _%type-name23300%_)
               _%type-id23307%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2319623234%_))))))
                          (_%loop2319123215%_ _%target2318823209%_ '()))
                        (_%g2318523202%_ _%g2318623206%_)))))
              (_%g2318523202%_ _%g2318623206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2318424433%_
                                           (gx#stx-map
                                            (lambda (_%g2443624438%_)
                                              (_%make-id22404%_
                                               '"&"
                                               _%g2443624438%_))
                                            (foldr (lambda (_%g2444124444%_
                                                            _%g2444224447%_)
                                                     (cons _%g2444124444%_
                                                           _%g2444224447%_))
                                                   '()
                                                   _%g2291122961%_)))))
                                      _%mixin-ugetf2312723165%_))))))
                     (_%loop2312223146%_ _%target2311923140%_ '()))
                   (_%g2311623133%_ _%g2311723137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2311623133%_
                                                  _%g2311723137%_)))))
                                     (_%g2311524450%_
                                      (gx#stx-map
                                       (lambda (_%g2445324455%_)
                                         (_%make-id22404%_
                                          '"&"
                                          _%g2445324455%_))
                                       (foldr (lambda (_%g2445824461%_
                                                       _%g2445924464%_)
                                                (cons _%g2445824461%_
                                                      _%g2445924464%_))
                                              '()
                                              _%g2284222892%_)))))
                                 _%usetf2305823096%_))))))
                (_%loop2305323077%_ _%target2305023071%_ '()))
              (_%g2304723064%_ _%g2304823068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2304723064%_
                                             _%g2304823068%_)))))
                                (_%g2304624467%_
                                 (gx#stx-map
                                  (lambda (_%g2447024472%_)
                                    (_%make-id22404%_ '"&" _%g2447024472%_))
                                  (foldr (lambda (_%g2447524478%_
                                                  _%g2447624481%_)
                                           (cons _%g2447524478%_
                                                 _%g2447624481%_))
                                         '()
                                         _%g2270022750%_)))))
                            _%ugetf2298923027%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2298423008%_
                                                    _%target2298123002%_
                                                    '()))
                                                 (_%g2297822995%_
                                                  _%g2297922999%_)))))
                                       (_%g2297822995%_ _%g2297922999%_)))))
                           (_%g2297724484%_
                            (gx#stx-map
                             (lambda (_%g2448724489%_)
                               (_%make-id22404%_ '"&" _%g2448724489%_))
                             (foldr (lambda (_%g2449224495%_ _%g2449324498%_)
                                      (cons _%g2449224495%_ _%g2449324498%_))
                                    '()
                                    _%g2263122681%_)))))
                       _%mixin-setf2292022958%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2291522939%_
                                               _%target2291222933%_
                                               '()))
                                            (_%g2290922926%_
                                             _%g2291022930%_)))))
                                  (_%g2290922926%_ _%g2291022930%_)))))
                      (_%g2290824501%_
                       (gx#stx-map
                        (lambda (_%g2450424506%_)
                          (_%make-id22404%_
                           _%name22408%_
                           '"-"
                           _%g2450424506%_
                           '"-set!"))
                        _%mixin-slots22767%_))))
                  _%mixin-getf2285122889%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2284622870%_
                                          _%target2284322864%_
                                          '()))
                                       (_%g2284022857%_ _%g2284122861%_)))))
                             (_%g2284022857%_ _%g2284122861%_)))))
                 (_%g2283924510%_
                  (gx#stx-map
                   (lambda (_%g2451324515%_)
                     (_%make-id22404%_ _%name22408%_ '"-" _%g2451324515%_))
                   _%mixin-slots22767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2278122819%_))))))
                                    (_%loop2277622800%_
                                     _%target2277322794%_
                                     '()))
                                  (_%g2277022787%_ _%g2277122791%_)))))
                        (_%g2277022787%_ _%g2277122791%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2276924519%_
                                                     _%mixin-slots22767%_)))
                                                _%setf2270922747%_))))))
                               (_%loop2270422728%_ _%target2270122722%_ '()))
                             (_%g2269822715%_ _%g2269922719%_)))))
                   (_%g2269822715%_ _%g2269922719%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2269724523%_
                                                (gx#stx-map
                                                 (lambda (_%g2452624528%_)
                                                   (_%make-id22404%_
                                                    _%name22408%_
                                                    '"-"
                                                    _%g2452624528%_
                                                    '"-set!"))
                                                 _%slots22399%_))))
                                           _%getf2264022678%_))))))
                          (_%loop2263522659%_ _%target2263222653%_ '()))
                        (_%g2262922646%_ _%g2263022650%_)))))
              (_%g2262922646%_ _%g2263022650%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2262824532%_
                                           (gx#stx-map
                                            (lambda (_%g2453524537%_)
                                              (_%make-id22404%_
                                               _%name22408%_
                                               '"-"
                                               _%g2453524537%_))
                                            _%slots22399%_))))
                                      _%slot2257122609%_))))))
                     (_%loop2256622590%_ _%target2256322584%_ '()))
                   (_%g2256022577%_ _%g2256122581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2256022577%_
                                                  _%g2256122581%_)))))
                                     (_%g2255924541%_ _%slots22399%_)))
                                 _%g2253322544%_))))
                        (_%g2253124545%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22411%_)))))
                    _%g2250522516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2250324549%_
                                                    (_%make-id22404%_
                                                     _%name22408%_
                                                     '"?"))))
                                               _%g2247722488%_))))
                                      (_%g2247524553%_
                                       (_%make-id22404%_
                                        '"make-"
                                        _%name22408%_))))
                                  _%g2244922460%_))))
                         (_%g2244724557%_
                          (_%make-id22404%_ _%name22408%_ '"::t"))))
                     _%g2241822429%_))))
            (_%g2241624561%_ _%id22397%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24628%_)
        (let* ((_%g2463224651%_
                (lambda (_%g2463324647%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2463324647%_)))
               (_%g2463124708%_
                (lambda (_%g2463324655%_)
                  (if (gx#stx-pair? _%g2463324655%_)
                      (let ((_%e2463724658%_ (gx#syntax-e _%g2463324655%_)))
                        (let ((_%hd2463824662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2463724658%_)))
                              (_%tl2463924665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2463724658%_))))
                          (if (gx#stx-pair? _%tl2463924665%_)
                              (let ((_%e2464024668%_
                                     (gx#syntax-e _%tl2463924665%_)))
                                (let ((_%hd2464124672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2464024668%_)))
                                      (_%tl2464224675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2464024668%_))))
                                  (if (gx#stx-pair? _%tl2464224675%_)
                                      (let ((_%e2464324678%_
                                             (gx#syntax-e _%tl2464224675%_)))
                                        (let ((_%hd2464424682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2464324678%_)))
                                              (_%tl2464524685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2464324678%_))))
                                          ((lambda (_%g2463424688%_
                                                    _%g2463524690%_
                                                    _%g2463624691%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%g2463624691%_
                                                         (cons _%g2463524690%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%g2463424688%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2464524685%_
                                           _%hd2464424682%_
                                           _%hd2464124672%_)))
                                      (_%g2463224651%_ _%g2463324655%_))))
                              (_%g2463224651%_ _%g2463324655%_))))
                      (_%g2463224651%_ _%g2463324655%_)))))
          (_%g2463124708%_ _%$stx24628%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24712%_)
        (letrec ((_%generate24715%_
                  (lambda (_%hd24799%_ _%slots24801%_ _%body24802%_)
                    (let* ((_%__stx2655326554%_ _%hd24799%_)
                           (_%g2480524817%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2655326554%_))))
                      (let ((_%__kont2655626557%_
                             (lambda (_%g2480724845%_ _%g2480824847%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24712%_
                                _%g2480824847%_
                                (gx#syntax->list _%g2480724845%_)
                                _%slots24801%_
                                _%body24802%_)))
                            (_%__kont2655826559%_
                             (lambda ()
                               (if (gx#identifier? _%hd24799%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24712%_
                                    _%hd24799%_
                                    '()
                                    _%slots24801%_
                                    _%body24802%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx24712%_
                                    _%hd24799%_)))))
                        (let ((_%__match2656626567%_
                               (lambda (_%e2480924835%_
                                        _%hd2481024839%_
                                        _%tl2481124842%_)
                                 (let ((_%g2480724845%_ _%tl2481124842%_)
                                       (_%g2480824847%_ _%hd2481024839%_))
                                   (if (and (gx#stx-list? _%g2480724845%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%g2480724845%_))
                                       (_%__kont2655626557%_
                                        _%g2480724845%_
                                        _%g2480824847%_)
                                       (_%__kont2655826559%_))))))
                          (if (gx#stx-pair? _%__stx2655326554%_)
                              (let ((_%e2480924835%_
                                     (gx#syntax-e _%__stx2655326554%_)))
                                (let ((_%tl2481124842%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2480924835%_)))
                                      (_%hd2481024839%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2480924835%_))))
                                  (_%__match2656626567%_
                                   _%e2480924835%_
                                   _%hd2481024839%_
                                   _%tl2481124842%_)))
                              (_%__kont2655826559%_))))))))
          (let* ((_%g2471824737%_
                  (lambda (_%g2471924733%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2471924733%_)))
                 (_%g2471724795%_
                  (lambda (_%g2471924741%_)
                    (if (gx#stx-pair? _%g2471924741%_)
                        (let ((_%e2472324744%_ (gx#syntax-e _%g2471924741%_)))
                          (let ((_%hd2472424748%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2472324744%_)))
                                (_%tl2472524751%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2472324744%_))))
                            (if (gx#stx-pair? _%tl2472524751%_)
                                (let ((_%e2472624754%_
                                       (gx#syntax-e _%tl2472524751%_)))
                                  (let ((_%hd2472724758%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2472624754%_)))
                                        (_%tl2472824761%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2472624754%_))))
                                    (if (gx#stx-pair? _%tl2472824761%_)
                                        (let ((_%e2472924764%_
                                               (gx#syntax-e _%tl2472824761%_)))
                                          (let ((_%hd2473024768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2472924764%_)))
                                                (_%tl2473124771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2472924764%_))))
                                            ((lambda (_%g2472024774%_
                                                      _%g2472124776%_
                                                      _%g2472224777%_)
                                               (if (and (gx#identifier-list?
                                                         _%g2472124776%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%g2472024774%_))
                                                   (_%generate24715%_
                                                    _%g2472224777%_
                                                    _%g2472124776%_
                                                    _%g2472024774%_)
                                                   (_%g2471824737%_
                                                    _%g2471924741%_)))
                                             _%tl2473124771%_
                                             _%hd2473024768%_
                                             _%hd2472724758%_)))
                                        (_%g2471824737%_ _%g2471924741%_))))
                                (_%g2471824737%_ _%g2471924741%_))))
                        (_%g2471824737%_ _%g2471924741%_)))))
            (_%g2471724795%_ _%stx24712%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx24864%_)
        (letrec ((_%wrap24867%_
                  (lambda (_%e-stx25213%_)
                    (gx#stx-wrap-source
                     _%e-stx25213%_
                     (gx#stx-source _%stx24864%_))))
                 (_%method-opt?24869%_
                  (lambda (_%x25210%_)
                    (let ((__tmp27070 (gx#stx-e _%x25210%_)))
                      (declare (not safe))
                      (##memq __tmp27070 '(rebind:))))))
          (let* ((_%g2487124900%_
                  (lambda (_%g2487224896%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2487224896%_)))
                 (_%g2487025206%_
                  (lambda (_%g2487224904%_)
                    (if (gx#stx-pair? _%g2487224904%_)
                        (let ((_%e2487724907%_ (gx#syntax-e _%g2487224904%_)))
                          (let ((_%hd2487824911%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2487724907%_)))
                                (_%tl2487924914%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2487724907%_))))
                            (if (gx#stx-pair? _%tl2487924914%_)
                                (let ((_%e2488024917%_
                                       (gx#syntax-e _%tl2487924914%_)))
                                  (let ((_%hd2488124921%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2488024917%_)))
                                        (_%tl2488224924%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2488024917%_))))
                                    (if (gx#stx-pair? _%hd2488124921%_)
                                        (let ((_%e2488324927%_
                                               (gx#syntax-e _%hd2488124921%_)))
                                          (let ((_%hd2488424931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2488324927%_)))
                                                (_%tl2488524934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2488324927%_))))
                                            (if (gx#identifier?
                                                 _%hd2488424931%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27071_|
                                                     _%hd2488424931%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2488524934%_)
                                                        (let ((_%e2488624937%_
                                                               (gx#syntax-e
                                                                _%tl2488524934%_)))
                                                          (let ((_%hd2488724941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2488624937%_)))
                        (_%tl2488824944%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2488624937%_))))
                    (if (gx#stx-pair? _%tl2488824944%_)
                        (let ((_%e2488924947%_ (gx#syntax-e _%tl2488824944%_)))
                          (let ((_%hd2489024951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2488924947%_)))
                                (_%tl2489124954%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2488924947%_))))
                            (if (gx#stx-null? _%tl2489124954%_)
                                (if (gx#stx-pair? _%tl2488224924%_)
                                    (let ((_%e2489224957%_
                                           (gx#syntax-e _%tl2488224924%_)))
                                      (let ((_%hd2489324961%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2489224957%_)))
                                            (_%tl2489424964%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2489224957%_))))
                                        ((lambda (_%g2487324967%_
                                                  _%g2487424969%_
                                                  _%g2487524970%_
                                                  _%g2487624971%_)
                                           (if (and (gx#identifier?
                                                     _%g2487624971%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%g2487524970%_))
                                                    (gx#stx-plist?
                                                     _%g2487324967%_
                                                     _%method-opt?24869%_))
                                               (let* ((_%klass24998%_
                                                       (gx#syntax-local-value
                                                        _%g2487524970%_))
                                                      (_%rebind?25001%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%g2487324967%_)))
                                                      (_%g2500425012%_
                                                       (lambda (_%g2500525008%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2500525008%_)))
                                                      (_%g2500325196%_
                                                       (lambda (_%g2500525016%_)
                                                         ((lambda (_%g2500625019%_)
                                                            (let* ((_%g2503425042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2503525038%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2503525038%_)))
                           (_%g2503325192%_
                            (lambda (_%g2503525046%_)
                              ((lambda (_%g2503625049%_)
                                 (let* ((_%g2506225070%_
                                         (lambda (_%g2506325066%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2506325066%_)))
                                        (_%g2506125188%_
                                         (lambda (_%g2506325074%_)
                                           ((lambda (_%g2506425077%_)
                                              (let* ((_%g2509025098%_
                                                      (lambda (_%g2509125094%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2509125094%_)))
                                                     (_%g2508925184%_
                                                      (lambda (_%g2509125102%_)
                                                        ((lambda (_%g2509225105%_)
                                                           (let* ((_%g2511825126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2511925122%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2511925122%_)))
                          (_%g2511725180%_
                           (lambda (_%g2511925130%_)
                             ((lambda (_%g2512025133%_)
                                (let* ((_%g2514625154%_
                                        (lambda (_%g2514725150%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2514725150%_)))
                                       (_%g2514525176%_
                                        (lambda (_%g2514725158%_)
                                          ((lambda (_%g2514825161%_)
                                             (_%wrap24867%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%g2509225105%_
                                                          (cons _%g2514825161%_
                                                                '())))))
                                           _%g2514725158%_))))
                                  (_%g2514525176%_
                                   (_%wrap24867%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%g2500625019%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2487624971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g2503625049%_ (cons _%g2512025133%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2511925130%_))))
                     (_%g2511725180%_ _%rebind?25001%_)))
                 _%g2509125102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2508925184%_
                                                 (_%wrap24867%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%g2503625049%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%g2506425077%_
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
                                                      (cons _%g2500625019%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2487624971%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%g2487424969%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2506325074%_))))
                                   (_%g2506125188%_
                                    (gx#stx-identifier
                                     _%g2487524970%_
                                     '@next-method))))
                               _%g2503525046%_))))
                      (_%g2503325192%_
                       (gx#stx-identifier
                        _%g2487524970%_
                        _%g2487524970%_
                        '"::"
                        _%g2487624971%_))))
                  _%g2500525016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2500325196%_
                                                  (let ((__obj26831
                                                         _%klass24998%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj26831
                                                           'gerbil.core#runtime-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj26831
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#runtime-type-info::t
                                                         __obj26831
                                                         'type-descriptor)))))
                                               (if (gx#identifier?
                                                    _%g2487624971%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                          _%g2487524970%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx24864%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx24864%_
                                                        _%g2487524970%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx24864%_
                                                    _%g2487624971%_))))
                                         _%tl2489424964%_
                                         _%hd2489324961%_
                                         _%hd2489024951%_
                                         _%hd2488724941%_)))
                                    (_%g2487124900%_ _%g2487224904%_))
                                (_%g2487124900%_ _%g2487224904%_))))
                        (_%g2487124900%_ _%g2487224904%_))))
                (_%g2487124900%_ _%g2487224904%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2487124900%_
                                                     _%g2487224904%_))
                                                (_%g2487124900%_
                                                 _%g2487224904%_))))
                                        (_%g2487124900%_ _%g2487224904%_))))
                                (_%g2487124900%_ _%g2487224904%_))))
                        (_%g2487124900%_ _%g2487224904%_)))))
            (_%g2487025206%_ _%stx24864%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25216%_)
        (letrec ((_%dotted-identifier?25219%_
                  (lambda (_%id25844%_)
                    (if (gx#identifier? _%id25844%_)
                        (let ((_%id-str25847%_
                               (symbol->string (gx#stx-e _%id25844%_))))
                          (if (string-index _%id-str25847%_ '#\.)
                              (let* ((_%split25850%_
                                      (string-split _%id-str25847%_ '#\.))
                                     (__tmp27072 (length _%split25850%_)))
                                (declare (not safe))
                                (##fx= __tmp27072 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25221%_
                  (lambda (_%id25833%_)
                    (let* ((_%id-str25836%_
                            (symbol->string (gx#stx-e _%id25833%_)))
                           (_%split25839%_
                            (string-split _%id-str25836%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id25833%_
                             (car _%split25839%_))
                            (cons (gx#stx-identifier
                                   _%id25833%_
                                   (cadr _%split25839%_))
                                  '()))))))
          (let* ((_%__stx2656926570%_ _%stx25216%_)
                 (_%g2522625313%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2656926570%_))))
            (let ((_%__kont2657226573%_
                   (lambda (_%g2522825726%_ _%g2522925728%_ _%g2523025729%_)
                     (let* ((_%g2575725772%_
                             (lambda (_%g2575825768%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2575825768%_)))
                            (_%g2575625825%_
                             (lambda (_%g2575825776%_)
                               (if (gx#stx-pair? _%g2575825776%_)
                                   (let ((_%e2576125779%_
                                          (gx#syntax-e _%g2575825776%_)))
                                     (let ((_%hd2576225783%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2576125779%_)))
                                           (_%tl2576325786%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2576125779%_))))
                                       (if (gx#stx-pair? _%tl2576325786%_)
                                           (let ((_%e2576425789%_
                                                  (gx#syntax-e
                                                   _%tl2576325786%_)))
                                             (let ((_%hd2576525793%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2576425789%_)))
                                                   (_%tl2576625796%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2576425789%_))))
                                               (if (gx#stx-null?
                                                    _%tl2576625796%_)
                                                   ((lambda (_%g2575925799%_
                                                             _%g2576025801%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%g2576025801%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g2575925799%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2581625819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2581725822%_)
                   (cons _%g2581625819%_ _%g2581725822%_))
                 '()
                 _%g2522925728%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2576525793%_
                                                    _%hd2576225783%_)
                                                   (_%g2575725772%_
                                                    _%g2575825776%_))))
                                           (_%g2575725772%_ _%g2575825776%_))))
                                   (_%g2575725772%_ _%g2575825776%_)))))
                       (_%g2575625825%_
                        (_%split-dotted25221%_ _%g2523025729%_)))))
                  (_%__kont2657626577%_
                   (lambda (_%g2524925570%_ _%g2525025572%_)
                     (let* ((_%g2558925604%_
                             (lambda (_%g2559025600%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2559025600%_)))
                            (_%g2558825657%_
                             (lambda (_%g2559025608%_)
                               (if (gx#stx-pair? _%g2559025608%_)
                                   (let ((_%e2559325611%_
                                          (gx#syntax-e _%g2559025608%_)))
                                     (let ((_%hd2559425615%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2559325611%_)))
                                           (_%tl2559525618%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2559325611%_))))
                                       (if (gx#stx-pair? _%tl2559525618%_)
                                           (let ((_%e2559625621%_
                                                  (gx#syntax-e
                                                   _%tl2559525618%_)))
                                             (let ((_%hd2559725625%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2559625621%_)))
                                                   (_%tl2559825628%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2559625621%_))))
                                               (if (gx#stx-null?
                                                    _%tl2559825628%_)
                                                   ((lambda (_%g2559125631%_
                                                             _%g2559225633%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%g2559225633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2559125631%_ '()))
                                (foldr (lambda (_%g2564825651%_
                                                _%g2564925654%_)
                                         (cons _%g2564825651%_
                                               _%g2564925654%_))
                                       '()
                                       _%g2524925570%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2559725625%_
                                                    _%hd2559425615%_)
                                                   (_%g2558925604%_
                                                    _%g2559025608%_))))
                                           (_%g2558925604%_ _%g2559025608%_))))
                                   (_%g2558925604%_ _%g2559025608%_)))))
                       (_%g2558825657%_
                        (_%split-dotted25221%_ _%g2525025572%_)))))
                  (_%__kont2658026581%_
                   (lambda (_%g2526625476%_ _%g2526725478%_ _%g2526825479%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%g2526725478%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2526825479%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2550625509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2550725512%_)
                          (cons _%g2550625509%_ _%g2550725512%_))
                        '()
                        _%g2526625476%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2658426585%_
                   (lambda (_%g2528725378%_ _%g2528825380%_ _%g2528925381%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%g2528825380%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2528925381%_ '()))
                                       (foldr (lambda (_%g2540225405%_
                                                       _%g2540325408%_)
                                                (cons _%g2540225405%_
                                                      _%g2540325408%_))
                                              '()
                                              _%g2528725378%_)))))))
              (let* ((_%__match2668826689%_
                      (lambda (_%e2529025320%_
                               _%hd2529125324%_
                               _%tl2529225327%_
                               _%e2529325330%_
                               _%hd2529425334%_
                               _%tl2529525337%_
                               _%e2529625340%_
                               _%hd2529725344%_
                               _%tl2529825347%_
                               _%__splice2658626587%_
                               _%target2529925350%_
                               _%tl2530125353%_)
                        (letrec ((_%loop2530225356%_
                                  (lambda (_%hd2530025360%_ _%arg2530625363%_)
                                    (if (gx#stx-pair? _%hd2530025360%_)
                                        (let ((_%e2530325365%_
                                               (gx#syntax-e _%hd2530025360%_)))
                                          (let ((_%lp-tl2530525372%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2530325365%_)))
                                                (_%lp-hd2530425369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2530325365%_))))
                                            (_%loop2530225356%_
                                             _%lp-tl2530525372%_
                                             (cons _%lp-hd2530425369%_
                                                   _%arg2530625363%_))))
                                        (let ((_%arg2530725375%_
                                               (reverse _%arg2530625363%_)))
                                          (let ((_%g2528725378%_
                                                 _%arg2530725375%_)
                                                (_%g2528825380%_
                                                 _%hd2529725344%_)
                                                (_%g2528925381%_
                                                 _%hd2529425334%_))
                                            (if (gx#identifier?
                                                 _%g2528925381%_)
                                                (_%__kont2658426585%_
                                                 _%g2528725378%_
                                                 _%g2528825380%_
                                                 _%g2528925381%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2522625313%_)))))))))
                          (_%loop2530225356%_ _%target2529925350%_ '()))))
                     (_%__match2666226663%_
                      (lambda (_%e2526925418%_
                               _%hd2527025422%_
                               _%tl2527125425%_
                               _%e2527225428%_
                               _%hd2527325432%_
                               _%tl2527425435%_
                               _%e2527525438%_
                               _%hd2527625442%_
                               _%tl2527725445%_
                               _%__splice2658226583%_
                               _%target2527825448%_
                               _%tl2528025451%_)
                        (letrec ((_%loop2528125454%_
                                  (lambda (_%hd2527925458%_ _%arg2528525461%_)
                                    (if (gx#stx-pair? _%hd2527925458%_)
                                        (let ((_%e2528225463%_
                                               (gx#syntax-e _%hd2527925458%_)))
                                          (let ((_%lp-tl2528425470%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2528225463%_)))
                                                (_%lp-hd2528325467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2528225463%_))))
                                            (_%loop2528125454%_
                                             _%lp-tl2528425470%_
                                             (cons _%lp-hd2528325467%_
                                                   _%arg2528525461%_))))
                                        (let ((_%arg2528625473%_
                                               (reverse _%arg2528525461%_)))
                                          (let ((_%g2526625476%_
                                                 _%arg2528625473%_)
                                                (_%g2526725478%_
                                                 _%hd2527625442%_)
                                                (_%g2526825479%_
                                                 _%hd2527325432%_))
                                            (if (and (gx#identifier?
                                                      _%g2526825479%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2549825501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2549925504%_)
                       (cons _%g2549825501%_ _%g2549925504%_))
                     '()
                     _%g2526625476%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2658026581%_
                                                 _%g2526625476%_
                                                 _%g2526725478%_
                                                 _%g2526825479%_)
                                                (_%__match2668826689%_
                                                 _%e2526925418%_
                                                 _%hd2527025422%_
                                                 _%tl2527125425%_
                                                 _%e2527225428%_
                                                 _%hd2527325432%_
                                                 _%tl2527425435%_
                                                 _%e2527525438%_
                                                 _%hd2527625442%_
                                                 _%tl2527725445%_
                                                 _%__splice2658226583%_
                                                 _%target2527825448%_
                                                 _%tl2528025451%_))))))))
                          (_%loop2528125454%_ _%target2527825448%_ '()))))
                     (_%__match2664826649%_
                      (lambda (_%e2526925418%_
                               _%hd2527025422%_
                               _%tl2527125425%_
                               _%e2527225428%_
                               _%hd2527325432%_
                               _%tl2527425435%_)
                        (if (gx#stx-pair? _%tl2527425435%_)
                            (let ((_%e2527525438%_
                                   (gx#syntax-e _%tl2527425435%_)))
                              (let ((_%tl2527725445%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2527525438%_)))
                                    (_%hd2527625442%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2527525438%_))))
                                (if (gx#stx-pair/null? _%tl2527725445%_)
                                    (let ((_%__splice2658226583%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2527725445%_
                                            '0)))
                                      (let ((_%tl2528025451%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2658226583%_
                                                '1)))
                                            (_%target2527825448%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2658226583%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2528025451%_)
                                            (_%__match2666226663%_
                                             _%e2526925418%_
                                             _%hd2527025422%_
                                             _%tl2527125425%_
                                             _%e2527225428%_
                                             _%hd2527325432%_
                                             _%tl2527425435%_
                                             _%e2527525438%_
                                             _%hd2527625442%_
                                             _%tl2527725445%_
                                             _%__splice2658226583%_
                                             _%target2527825448%_
                                             _%tl2528025451%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2522625313%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2522625313%_)))))
                            (let () (declare (not safe)) (_%g2522625313%_)))))
                     (_%__match2663626637%_
                      (lambda (_%e2525125522%_
                               _%hd2525225526%_
                               _%tl2525325529%_
                               _%e2525425532%_
                               _%hd2525525536%_
                               _%tl2525625539%_
                               _%__splice2657826579%_
                               _%target2525725542%_
                               _%tl2525925545%_)
                        (letrec ((_%loop2526025548%_
                                  (lambda (_%hd2525825552%_ _%arg2526425555%_)
                                    (if (gx#stx-pair? _%hd2525825552%_)
                                        (let ((_%e2526125557%_
                                               (gx#syntax-e _%hd2525825552%_)))
                                          (let ((_%lp-tl2526325564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2526125557%_)))
                                                (_%lp-hd2526225561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2526125557%_))))
                                            (_%loop2526025548%_
                                             _%lp-tl2526325564%_
                                             (cons _%lp-hd2526225561%_
                                                   _%arg2526425555%_))))
                                        (let ((_%arg2526525567%_
                                               (reverse _%arg2526425555%_)))
                                          (let ((_%g2524925570%_
                                                 _%arg2526525567%_)
                                                (_%g2525025572%_
                                                 _%hd2525525536%_))
                                            (if (_%dotted-identifier?25219%_
                                                 _%g2525025572%_)
                                                (_%__kont2657626577%_
                                                 _%g2524925570%_
                                                 _%g2525025572%_)
                                                (_%__match2664826649%_
                                                 _%e2525125522%_
                                                 _%hd2525225526%_
                                                 _%tl2525325529%_
                                                 _%e2525425532%_
                                                 _%hd2525525536%_
                                                 _%tl2525625539%_))))))))
                          (_%loop2526025548%_ _%target2525725542%_ '()))))
                     (_%__match2663426635%_
                      (lambda (_%e2525125522%_
                               _%hd2525225526%_
                               _%tl2525325529%_
                               _%e2525425532%_
                               _%hd2525525536%_
                               _%tl2525625539%_
                               _%__splice2657826579%_
                               _%target2525725542%_
                               _%tl2525925545%_)
                        (if (gx#stx-null? _%tl2525925545%_)
                            (_%__match2663626637%_
                             _%e2525125522%_
                             _%hd2525225526%_
                             _%tl2525325529%_
                             _%e2525425532%_
                             _%hd2525525536%_
                             _%tl2525625539%_
                             _%__splice2657826579%_
                             _%target2525725542%_
                             _%tl2525925545%_)
                            (if (gx#stx-pair? _%tl2525625539%_)
                                (let ((_%e2527525438%_
                                       (gx#syntax-e _%tl2525625539%_)))
                                  (let ((_%tl2527725445%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2527525438%_)))
                                        (_%hd2527625442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2527525438%_))))
                                    (if (gx#stx-pair/null? _%tl2527725445%_)
                                        (let ((_%__splice2658226583%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2527725445%_
                                                '0)))
                                          (let ((_%tl2528025451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2658226583%_
                                                    '1)))
                                                (_%target2527825448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2658226583%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2528025451%_)
                                                (_%__match2666226663%_
                                                 _%e2525125522%_
                                                 _%hd2525225526%_
                                                 _%tl2525325529%_
                                                 _%e2525425532%_
                                                 _%hd2525525536%_
                                                 _%tl2525625539%_
                                                 _%e2527525438%_
                                                 _%hd2527625442%_
                                                 _%tl2527725445%_
                                                 _%__splice2658226583%_
                                                 _%target2527825448%_
                                                 _%tl2528025451%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2522625313%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2522625313%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2522625313%_))))))
                     (_%__match2661626617%_
                      (lambda (_%e2523125668%_
                               _%hd2523225672%_
                               _%tl2523325675%_
                               _%e2523425678%_
                               _%hd2523525682%_
                               _%tl2523625685%_
                               _%__splice2657426575%_
                               _%target2523725688%_
                               _%tl2523925691%_
                               _%e2524625694%_
                               _%hd2524725698%_
                               _%tl2524825701%_)
                        (letrec ((_%loop2524025704%_
                                  (lambda (_%hd2523825708%_ _%arg2524425711%_)
                                    (if (gx#stx-pair? _%hd2523825708%_)
                                        (let ((_%e2524125713%_
                                               (gx#syntax-e _%hd2523825708%_)))
                                          (let ((_%lp-tl2524325720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2524125713%_)))
                                                (_%lp-hd2524225717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2524125713%_))))
                                            (_%loop2524025704%_
                                             _%lp-tl2524325720%_
                                             (cons _%lp-hd2524225717%_
                                                   _%arg2524425711%_))))
                                        (let ((_%arg2524525723%_
                                               (reverse _%arg2524425711%_)))
                                          (let ((_%g2522825726%_
                                                 _%hd2524725698%_)
                                                (_%g2522925728%_
                                                 _%arg2524525723%_)
                                                (_%g2523025729%_
                                                 _%hd2523525682%_))
                                            (if (and (_%dotted-identifier?25219%_
                                                      _%g2523025729%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2574825751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2574925754%_)
                       (cons _%g2574825751%_ _%g2574925754%_))
                     '()
                     _%g2522925728%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2657226573%_
                                                 _%g2522825726%_
                                                 _%g2522925728%_
                                                 _%g2523025729%_)
                                                (let ((_%__splice2657826579%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2523625685%_
                                                        '0)))
                                                  (let ((_%tl2525925545%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2657826579%_
                                                            '1)))
                                                        (_%target2525725542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2657826579%_
                                                            '0))))
                                                    (_%__match2663426635%_
                                                     _%e2523125668%_
                                                     _%hd2523225672%_
                                                     _%tl2523325675%_
                                                     _%e2523425678%_
                                                     _%hd2523525682%_
                                                     _%tl2523625685%_
                                                     _%__splice2657826579%_
                                                     _%target2525725542%_
                                                     _%tl2525925545%_))))))))))
                          (_%loop2524025704%_ _%target2523725688%_ '())))))
                (if (gx#stx-pair? _%__stx2656926570%_)
                    (let ((_%e2523125668%_ (gx#syntax-e _%__stx2656926570%_)))
                      (let ((_%tl2523325675%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2523125668%_)))
                            (_%hd2523225672%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2523125668%_))))
                        (if (gx#stx-pair? _%tl2523325675%_)
                            (let ((_%e2523425678%_
                                   (gx#syntax-e _%tl2523325675%_)))
                              (let ((_%tl2523625685%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2523425678%_)))
                                    (_%hd2523525682%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2523425678%_))))
                                (if (gx#stx-pair/null? _%tl2523625685%_)
                                    (if (let ((__tmp27073
                                               (gx#stx-length
                                                _%tl2523625685%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27073 '1))
                                        (let ((_%__splice2657426575%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2523625685%_
                                                '1)))
                                          (let ((_%tl2523925691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2657426575%_
                                                    '1)))
                                                (_%target2523725688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2657426575%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2523925691%_)
                                                (let ((_%e2524625694%_
                                                       (gx#syntax-e
                                                        _%tl2523925691%_)))
                                                  (let ((_%tl2524825701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2524625694%_)))
                                                        (_%hd2524725698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2524625694%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2524825701%_)
                                                        (_%__match2661626617%_
                                                         _%e2523125668%_
                                                         _%hd2523225672%_
                                                         _%tl2523325675%_
                                                         _%e2523425678%_
                                                         _%hd2523525682%_
                                                         _%tl2523625685%_
                                                         _%__splice2657426575%_
                                                         _%target2523725688%_
                                                         _%tl2523925691%_
                                                         _%e2524625694%_
                                                         _%hd2524725698%_
                                                         _%tl2524825701%_)
                                                        (let ((_%__splice2657826579%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2523625685%_
                                                                '0)))
                                                          (let ((_%tl2525925545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2657826579%_ '1)))
                        (_%target2525725542%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2657826579%_ '0))))
                    (if (gx#stx-null? _%tl2525925545%_)
                        (_%__match2663626637%_
                         _%e2523125668%_
                         _%hd2523225672%_
                         _%tl2523325675%_
                         _%e2523425678%_
                         _%hd2523525682%_
                         _%tl2523625685%_
                         _%__splice2657826579%_
                         _%target2525725542%_
                         _%tl2525925545%_)
                        (if (gx#stx-pair? _%tl2523625685%_)
                            (let ((_%e2527525438%_
                                   (gx#syntax-e _%tl2523625685%_)))
                              (let ((_%tl2527725445%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2527525438%_)))
                                    (_%hd2527625442%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2527525438%_))))
                                (if (gx#stx-pair/null? _%tl2527725445%_)
                                    (let ((_%__splice2658226583%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2527725445%_
                                            '0)))
                                      (let ((_%tl2528025451%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2658226583%_
                                                '1)))
                                            (_%target2527825448%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2658226583%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2528025451%_)
                                            (_%__match2666226663%_
                                             _%e2523125668%_
                                             _%hd2523225672%_
                                             _%tl2523325675%_
                                             _%e2523425678%_
                                             _%hd2523525682%_
                                             _%tl2523625685%_
                                             _%e2527525438%_
                                             _%hd2527625442%_
                                             _%tl2527725445%_
                                             _%__splice2658226583%_
                                             _%target2527825448%_
                                             _%tl2528025451%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2522625313%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2522625313%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2522625313%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2657826579%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2523625685%_
                                                        '0)))
                                                  (let ((_%tl2525925545%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2657826579%_
                                                            '1)))
                                                        (_%target2525725542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2657826579%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2525925545%_)
                                                        (_%__match2663626637%_
                                                         _%e2523125668%_
                                                         _%hd2523225672%_
                                                         _%tl2523325675%_
                                                         _%e2523425678%_
                                                         _%hd2523525682%_
                                                         _%tl2523625685%_
                                                         _%__splice2657826579%_
                                                         _%target2525725542%_
                                                         _%tl2525925545%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2523625685%_)
                                                            (let ((_%e2527525438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2523625685%_)))
                      (let ((_%tl2527725445%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2527525438%_)))
                            (_%hd2527625442%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2527525438%_))))
                        (if (gx#stx-pair/null? _%tl2527725445%_)
                            (let ((_%__splice2658226583%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2527725445%_
                                    '0)))
                              (let ((_%tl2528025451%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2658226583%_
                                        '1)))
                                    (_%target2527825448%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2658226583%_
                                        '0))))
                                (if (gx#stx-null? _%tl2528025451%_)
                                    (_%__match2666226663%_
                                     _%e2523125668%_
                                     _%hd2523225672%_
                                     _%tl2523325675%_
                                     _%e2523425678%_
                                     _%hd2523525682%_
                                     _%tl2523625685%_
                                     _%e2527525438%_
                                     _%hd2527625442%_
                                     _%tl2527725445%_
                                     _%__splice2658226583%_
                                     _%target2527825448%_
                                     _%tl2528025451%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2522625313%_)))))
                            (let () (declare (not safe)) (_%g2522625313%_)))))
                    (let () (declare (not safe)) (_%g2522625313%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2657826579%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2523625685%_
                                                '0)))
                                          (let ((_%tl2525925545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2657826579%_
                                                    '1)))
                                                (_%target2525725542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2657826579%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2525925545%_)
                                                (_%__match2663626637%_
                                                 _%e2523125668%_
                                                 _%hd2523225672%_
                                                 _%tl2523325675%_
                                                 _%e2523425678%_
                                                 _%hd2523525682%_
                                                 _%tl2523625685%_
                                                 _%__splice2657826579%_
                                                 _%target2525725542%_
                                                 _%tl2525925545%_)
                                                (if (gx#stx-pair?
                                                     _%tl2523625685%_)
                                                    (let ((_%e2527525438%_
                                                           (gx#syntax-e
                                                            _%tl2523625685%_)))
                                                      (let ((_%tl2527725445%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2527525438%_)))
                    (_%hd2527625442%_
                     (let () (declare (not safe)) (##car _%e2527525438%_))))
                (if (gx#stx-pair/null? _%tl2527725445%_)
                    (let ((_%__splice2658226583%_
                           (gx#syntax-split-splice->vector
                            _%tl2527725445%_
                            '0)))
                      (let ((_%tl2528025451%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2658226583%_ '1)))
                            (_%target2527825448%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2658226583%_ '0))))
                        (if (gx#stx-null? _%tl2528025451%_)
                            (_%__match2666226663%_
                             _%e2523125668%_
                             _%hd2523225672%_
                             _%tl2523325675%_
                             _%e2523425678%_
                             _%hd2523525682%_
                             _%tl2523625685%_
                             _%e2527525438%_
                             _%hd2527625442%_
                             _%tl2527725445%_
                             _%__splice2658226583%_
                             _%target2527825448%_
                             _%tl2528025451%_)
                            (let () (declare (not safe)) (_%g2522625313%_)))))
                    (let () (declare (not safe)) (_%g2522625313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2522625313%_)))))))
                                    (if (gx#stx-pair? _%tl2523625685%_)
                                        (let ((_%e2527525438%_
                                               (gx#syntax-e _%tl2523625685%_)))
                                          (let ((_%tl2527725445%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2527525438%_)))
                                                (_%hd2527625442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2527525438%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2527725445%_)
                                                (let ((_%__splice2658226583%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2527725445%_
                                                        '0)))
                                                  (let ((_%tl2528025451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2658226583%_
                                                            '1)))
                                                        (_%target2527825448%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2658226583%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2528025451%_)
                                                        (_%__match2666226663%_
                                                         _%e2523125668%_
                                                         _%hd2523225672%_
                                                         _%tl2523325675%_
                                                         _%e2523425678%_
                                                         _%hd2523525682%_
                                                         _%tl2523625685%_
                                                         _%e2527525438%_
                                                         _%hd2527625442%_
                                                         _%tl2527725445%_
                                                         _%__splice2658226583%_
                                                         _%target2527825448%_
                                                         _%tl2528025451%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2522625313%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2522625313%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2522625313%_))))))
                            (let () (declare (not safe)) (_%g2522625313%_)))))
                    (let () (declare (not safe)) (_%g2522625313%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx25857%_)
        (let* ((_%__stx2669126692%_ _%$stx25857%_)
               (_%g2586225902%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2669126692%_))))
          (let ((_%__kont2669426695%_
                 (lambda (_%g2586426038%_ _%g2586526040%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%g2586526040%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2586426038%_ '()))
                                     '())))))
                (_%__kont2669626697%_
                 (lambda (_%g2587525967%_
                          _%g2587625969%_
                          _%g2587725970%_
                          _%g2587825971%_)
                   (cons _%g2587825971%_
                         (cons (cons _%g2587825971%_
                                     (cons _%g2587725970%_
                                           (cons _%g2587625969%_ '())))
                               (foldr (lambda (_%g2599225995%_ _%g2599325998%_)
                                        (cons _%g2599225995%_ _%g2599325998%_))
                                      '()
                                      _%g2587525967%_))))))
            (let* ((_%__match2674626747%_
                    (lambda (_%e2587925909%_
                             _%hd2588025913%_
                             _%tl2588125916%_
                             _%e2588225919%_
                             _%hd2588325923%_
                             _%tl2588425926%_
                             _%e2588525929%_
                             _%hd2588625933%_
                             _%tl2588725936%_
                             _%__splice2669826699%_
                             _%target2588825939%_
                             _%tl2589025942%_)
                      (letrec ((_%loop2589125945%_
                                (lambda (_%hd2588925949%_ _%rest2589525952%_)
                                  (if (gx#stx-pair? _%hd2588925949%_)
                                      (let ((_%e2589225954%_
                                             (gx#syntax-e _%hd2588925949%_)))
                                        (let ((_%lp-tl2589425961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2589225954%_)))
                                              (_%lp-hd2589325958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2589225954%_))))
                                          (_%loop2589125945%_
                                           _%lp-tl2589425961%_
                                           (cons _%lp-hd2589325958%_
                                                 _%rest2589525952%_))))
                                      (let ((_%rest2589625964%_
                                             (reverse _%rest2589525952%_)))
                                        (_%__kont2669626697%_
                                         _%rest2589625964%_
                                         _%hd2588625933%_
                                         _%hd2588325923%_
                                         _%hd2588025913%_))))))
                        (_%loop2589125945%_ _%target2588825939%_ '()))))
                   (_%__match2672026721%_
                    (lambda (_%e2586626008%_
                             _%hd2586726012%_
                             _%tl2586826015%_
                             _%e2586926018%_
                             _%hd2587026022%_
                             _%tl2587126025%_
                             _%e2587226028%_
                             _%hd2587326032%_
                             _%tl2587426035%_)
                      (let ((_%g2586426038%_ _%hd2587326032%_)
                            (_%g2586526040%_ _%hd2587026022%_))
                        (if (gx#identifier? _%g2586426038%_)
                            (_%__kont2669426695%_
                             _%g2586426038%_
                             _%g2586526040%_)
                            (if (gx#stx-pair/null? _%tl2587426035%_)
                                (let ((_%__splice2669826699%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2587426035%_
                                        '0)))
                                  (let ((_%tl2589025942%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2669826699%_
                                            '1)))
                                        (_%target2588825939%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2669826699%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2589025942%_)
                                        (_%__match2674626747%_
                                         _%e2586626008%_
                                         _%hd2586726012%_
                                         _%tl2586826015%_
                                         _%e2586926018%_
                                         _%hd2587026022%_
                                         _%tl2587126025%_
                                         _%e2587226028%_
                                         _%hd2587326032%_
                                         _%tl2587426035%_
                                         _%__splice2669826699%_
                                         _%target2588825939%_
                                         _%tl2589025942%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2586225902%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2586225902%_))))))))
              (if (gx#stx-pair? _%__stx2669126692%_)
                  (let ((_%e2586626008%_ (gx#syntax-e _%__stx2669126692%_)))
                    (let ((_%tl2586826015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2586626008%_)))
                          (_%hd2586726012%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2586626008%_))))
                      (if (gx#stx-pair? _%tl2586826015%_)
                          (let ((_%e2586926018%_
                                 (gx#syntax-e _%tl2586826015%_)))
                            (let ((_%tl2587126025%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2586926018%_)))
                                  (_%hd2587026022%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2586926018%_))))
                              (if (gx#stx-pair? _%tl2587126025%_)
                                  (let ((_%e2587226028%_
                                         (gx#syntax-e _%tl2587126025%_)))
                                    (let ((_%tl2587426035%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2587226028%_)))
                                          (_%hd2587326032%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2587226028%_))))
                                      (if (gx#stx-null? _%tl2587426035%_)
                                          (_%__match2672026721%_
                                           _%e2586626008%_
                                           _%hd2586726012%_
                                           _%tl2586826015%_
                                           _%e2586926018%_
                                           _%hd2587026022%_
                                           _%tl2587126025%_
                                           _%e2587226028%_
                                           _%hd2587326032%_
                                           _%tl2587426035%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2587426035%_)
                                              (let ((_%__splice2669826699%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2587426035%_
                                                      '0)))
                                                (let ((_%tl2589025942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2669826699%_
                                                          '1)))
                                                      (_%target2588825939%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2669826699%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2589025942%_)
                                                      (_%__match2674626747%_
                                                       _%e2586626008%_
                                                       _%hd2586726012%_
                                                       _%tl2586826015%_
                                                       _%e2586926018%_
                                                       _%hd2587026022%_
                                                       _%tl2587126025%_
                                                       _%e2587226028%_
                                                       _%hd2587326032%_
                                                       _%tl2587426035%_
                                                       _%__splice2669826699%_
                                                       _%target2588825939%_
                                                       _%tl2589025942%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2586225902%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2586225902%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2586225902%_)))))
                          (let () (declare (not safe)) (_%g2586225902%_)))))
                  (let () (declare (not safe)) (_%g2586225902%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26060%_)
        (let* ((_%__stx2674926750%_ _%$stx26060%_)
               (_%g2606526117%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2674926750%_))))
          (let ((_%__kont2675226753%_
                 (lambda (_%g2606726291%_ _%g2606826293%_ _%g2606926294%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%g2606926294%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2606826293%_ '()))
                                     (cons _%g2606726291%_ '()))))))
                (_%__kont2675426755%_
                 (lambda (_%g2608226202%_
                          _%g2608326204%_
                          _%g2608426205%_
                          _%g2608526206%_
                          _%g2608626207%_
                          _%g2608726208%_)
                   (cons _%g2608726208%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%g2608626207%_
                                           (cons _%g2608526206%_
                                                 (foldr (lambda (_%g2623526238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2623626241%_)
                  (cons _%g2623526238%_ _%g2623626241%_))
                '()
                _%g2608426205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g2608326204%_
                                     (cons _%g2608226202%_ '())))))))
            (let* ((_%__match2682426825%_
                    (lambda (_%e2608826124%_
                             _%hd2608926128%_
                             _%tl2609026131%_
                             _%e2609126134%_
                             _%hd2609226138%_
                             _%tl2609326141%_
                             _%e2609426144%_
                             _%hd2609526148%_
                             _%tl2609626151%_
                             _%__splice2675626757%_
                             _%target2609726154%_
                             _%tl2609926157%_
                             _%e2610626160%_
                             _%hd2610726164%_
                             _%tl2610826167%_
                             _%e2610926170%_
                             _%hd2611026174%_
                             _%tl2611126177%_)
                      (letrec ((_%loop2610026180%_
                                (lambda (_%hd2609826184%_ _%path2610426187%_)
                                  (if (gx#stx-pair? _%hd2609826184%_)
                                      (let ((_%e2610126189%_
                                             (gx#syntax-e _%hd2609826184%_)))
                                        (let ((_%lp-tl2610326196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2610126189%_)))
                                              (_%lp-hd2610226193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2610126189%_))))
                                          (_%loop2610026180%_
                                           _%lp-tl2610326196%_
                                           (cons _%lp-hd2610226193%_
                                                 _%path2610426187%_))))
                                      (let ((_%path2610526199%_
                                             (reverse _%path2610426187%_)))
                                        (_%__kont2675426755%_
                                         _%hd2611026174%_
                                         _%hd2610726164%_
                                         _%path2610526199%_
                                         _%hd2609526148%_
                                         _%hd2609226138%_
                                         _%hd2608926128%_))))))
                        (_%loop2610026180%_ _%target2609726154%_ '()))))
                   (_%__match2678426785%_
                    (lambda (_%e2607026251%_
                             _%hd2607126255%_
                             _%tl2607226258%_
                             _%e2607326261%_
                             _%hd2607426265%_
                             _%tl2607526268%_
                             _%e2607626271%_
                             _%hd2607726275%_
                             _%tl2607826278%_
                             _%e2607926281%_
                             _%hd2608026285%_
                             _%tl2608126288%_)
                      (let ((_%g2606726291%_ _%hd2608026285%_)
                            (_%g2606826293%_ _%hd2607726275%_)
                            (_%g2606926294%_ _%hd2607426265%_))
                        (if (gx#identifier? _%g2606826293%_)
                            (_%__kont2675226753%_
                             _%g2606726291%_
                             _%g2606826293%_
                             _%g2606926294%_)
                            (if (gx#stx-pair/null? _%tl2607826278%_)
                                (if (let ((__tmp27074
                                           (gx#stx-length _%tl2607826278%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27074 '2))
                                    (let ((_%__splice2675626757%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2607826278%_
                                            '2)))
                                      (let ((_%tl2609926157%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2675626757%_
                                                '1)))
                                            (_%target2609726154%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2675626757%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2609926157%_)
                                            (let ((_%e2610626160%_
                                                   (gx#syntax-e
                                                    _%tl2609926157%_)))
                                              (let ((_%tl2610826167%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2610626160%_)))
                                                    (_%hd2610726164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2610626160%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2610826167%_)
                                                    (let ((_%e2610926170%_
                                                           (gx#syntax-e
                                                            _%tl2610826167%_)))
                                                      (let ((_%tl2611126177%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2610926170%_)))
                    (_%hd2611026174%_
                     (let () (declare (not safe)) (##car _%e2610926170%_))))
                (if (gx#stx-null? _%tl2611126177%_)
                    (_%__match2682426825%_
                     _%e2607026251%_
                     _%hd2607126255%_
                     _%tl2607226258%_
                     _%e2607326261%_
                     _%hd2607426265%_
                     _%tl2607526268%_
                     _%e2607626271%_
                     _%hd2607726275%_
                     _%tl2607826278%_
                     _%__splice2675626757%_
                     _%target2609726154%_
                     _%tl2609926157%_
                     _%e2610626160%_
                     _%hd2610726164%_
                     _%tl2610826167%_
                     _%e2610926170%_
                     _%hd2611026174%_
                     _%tl2611126177%_)
                    (let () (declare (not safe)) (_%g2606526117%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2606526117%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2606526117%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2606526117%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2606526117%_))))))))
              (if (gx#stx-pair? _%__stx2674926750%_)
                  (let ((_%e2607026251%_ (gx#syntax-e _%__stx2674926750%_)))
                    (let ((_%tl2607226258%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2607026251%_)))
                          (_%hd2607126255%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2607026251%_))))
                      (if (gx#stx-pair? _%tl2607226258%_)
                          (let ((_%e2607326261%_
                                 (gx#syntax-e _%tl2607226258%_)))
                            (let ((_%tl2607526268%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2607326261%_)))
                                  (_%hd2607426265%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2607326261%_))))
                              (if (gx#stx-pair? _%tl2607526268%_)
                                  (let ((_%e2607626271%_
                                         (gx#syntax-e _%tl2607526268%_)))
                                    (let ((_%tl2607826278%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2607626271%_)))
                                          (_%hd2607726275%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2607626271%_))))
                                      (if (gx#stx-pair? _%tl2607826278%_)
                                          (let ((_%e2607926281%_
                                                 (gx#syntax-e
                                                  _%tl2607826278%_)))
                                            (let ((_%tl2608126288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2607926281%_)))
                                                  (_%hd2608026285%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2607926281%_))))
                                              (if (gx#stx-null?
                                                   _%tl2608126288%_)
                                                  (_%__match2678426785%_
                                                   _%e2607026251%_
                                                   _%hd2607126255%_
                                                   _%tl2607226258%_
                                                   _%e2607326261%_
                                                   _%hd2607426265%_
                                                   _%tl2607526268%_
                                                   _%e2607626271%_
                                                   _%hd2607726275%_
                                                   _%tl2607826278%_
                                                   _%e2607926281%_
                                                   _%hd2608026285%_
                                                   _%tl2608126288%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2607826278%_)
                                                      (if (let ((__tmp27075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2607826278%_)))
                    (declare (not safe))
                    (##fx>= __tmp27075 '2))
                  (let ((_%__splice2675626757%_
                         (gx#syntax-split-splice->vector _%tl2607826278%_ '2)))
                    (let ((_%tl2609926157%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2675626757%_ '1)))
                          (_%target2609726154%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2675626757%_ '0))))
                      (if (gx#stx-pair? _%tl2609926157%_)
                          (let ((_%e2610626160%_
                                 (gx#syntax-e _%tl2609926157%_)))
                            (let ((_%tl2610826167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2610626160%_)))
                                  (_%hd2610726164%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2610626160%_))))
                              (if (gx#stx-pair? _%tl2610826167%_)
                                  (let ((_%e2610926170%_
                                         (gx#syntax-e _%tl2610826167%_)))
                                    (let ((_%tl2611126177%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2610926170%_)))
                                          (_%hd2611026174%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2610926170%_))))
                                      (if (gx#stx-null? _%tl2611126177%_)
                                          (_%__match2682426825%_
                                           _%e2607026251%_
                                           _%hd2607126255%_
                                           _%tl2607226258%_
                                           _%e2607326261%_
                                           _%hd2607426265%_
                                           _%tl2607526268%_
                                           _%e2607626271%_
                                           _%hd2607726275%_
                                           _%tl2607826278%_
                                           _%__splice2675626757%_
                                           _%target2609726154%_
                                           _%tl2609926157%_
                                           _%e2610626160%_
                                           _%hd2610726164%_
                                           _%tl2610826167%_
                                           _%e2610926170%_
                                           _%hd2611026174%_
                                           _%tl2611126177%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2606526117%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2606526117%_)))))
                          (let () (declare (not safe)) (_%g2606526117%_)))))
                  (let () (declare (not safe)) (_%g2606526117%_)))
              (let () (declare (not safe)) (_%g2606526117%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2607826278%_)
                                              (if (let ((__tmp27076
                                                         (gx#stx-length
                                                          _%tl2607826278%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27076 '2))
                                                  (let ((_%__splice2675626757%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2607826278%_
                                                          '2)))
                                                    (let ((_%tl2609926157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2675626757%_
                                                              '1)))
                                                          (_%target2609726154%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2675626757%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2609926157%_)
                                                          (let ((_%e2610626160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2609926157%_)))
                    (let ((_%tl2610826167%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2610626160%_)))
                          (_%hd2610726164%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2610626160%_))))
                      (if (gx#stx-pair? _%tl2610826167%_)
                          (let ((_%e2610926170%_
                                 (gx#syntax-e _%tl2610826167%_)))
                            (let ((_%tl2611126177%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2610926170%_)))
                                  (_%hd2611026174%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2610926170%_))))
                              (if (gx#stx-null? _%tl2611126177%_)
                                  (_%__match2682426825%_
                                   _%e2607026251%_
                                   _%hd2607126255%_
                                   _%tl2607226258%_
                                   _%e2607326261%_
                                   _%hd2607426265%_
                                   _%tl2607526268%_
                                   _%e2607626271%_
                                   _%hd2607726275%_
                                   _%tl2607826278%_
                                   _%__splice2675626757%_
                                   _%target2609726154%_
                                   _%tl2609926157%_
                                   _%e2610626160%_
                                   _%hd2610726164%_
                                   _%tl2610826167%_
                                   _%e2610926170%_
                                   _%hd2611026174%_
                                   _%tl2611126177%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2606526117%_)))))
                          (let () (declare (not safe)) (_%g2606526117%_)))))
                  (let () (declare (not safe)) (_%g2606526117%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2606526117%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2606526117%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2606526117%_)))))
                          (let () (declare (not safe)) (_%g2606526117%_)))))
                  (let () (declare (not safe)) (_%g2606526117%_))))))))))
