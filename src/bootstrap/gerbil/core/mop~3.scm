(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27235_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24789%_)
        (letrec ((_%body-opt?24792%_
                  (lambda (_%key24795%_)
                    (let ((__tmp27207 (gx#stx-e _%key24795%_)))
                      (declare (not safe))
                      (##memq __tmp27207
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _%stx24789%_ _%body-opt?24792%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22555%_
               _%id22557%_
               _%super-ref22558%_
               _%slots22559%_
               _%body22560%_)
        (letrec ((_%wrap22562%_
                  (lambda (_%e-stx24786%_)
                    (gx#stx-wrap-source
                     _%e-stx24786%_
                     (gx#stx-source _%stx22555%_))))
                 (_%make-id22564%_
                  (lambda _%args24783%_
                    (apply gx#stx-identifier _%id22557%_ _%args24783%_)))
                 (_%get-mixin-slots22565%_
                  (lambda (_%super24753%_ _%slots24755%_)
                    (letrec* ((_%tab24757%_ (make-hash-table-eq))
                              (_%dedup24759%_
                               (lambda (_%mixins24770%_)
                                 (let _%lp24773%_ ((_%rest24776%_
                                                    _%mixins24770%_)
                                                   (_%r24778%_ '()))
                                   (if (pair? _%rest24776%_)
                                       (let ((_%slot24780%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24776%_))))
                                         (if (hash-get
                                              _%tab24757%_
                                              _%slot24780%_)
                                             (_%lp24773%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24776%_))
                                              _%r24778%_)
                                             (begin
                                               (hash-put!
                                                _%tab24757%_
                                                _%slot24780%_
                                                '#t)
                                               (_%lp24773%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24776%_))
                                                (cons _%slot24780%_
                                                      _%r24778%_)))))
                                       (reverse _%r24778%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24761%_)
                         (hash-put! _%tab24757%_ (gx#stx-e _%slot24761%_) '#t))
                       _%slots24755%_)
                      (if (not _%super24753%_)
                          '()
                          (if (gx#identifier? _%super24753%_)
                              (_%dedup24759%_
                               (_%get-mixin-slots-r22566%_ _%super24753%_))
                              (_%dedup24759%_
                               (concatenate
                                (map _%get-mixin-slots-r22566%_
                                     _%super24753%_))))))))
                 (_%get-mixin-slots-r22566%_
                  (lambda (_%type-id24747%_)
                    (let ((_%info24750%_
                           (gx#syntax-local-value _%type-id24747%_)))
                      (let ((__tmp27209
                             (let ((__obj27024 _%info24750%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27024
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27024
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27024
                                    'slots))))
                            (__tmp27208
                             (concatenate
                              (map _%get-mixin-slots-r22566%_
                                   (let ((__obj27025 _%info24750%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27025
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27025
                                            '3
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27025
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27209 __tmp27208))))))
          (gx#check-duplicate-identifiers _%slots22559%_ _%stx22555%_)
          (let* ((_%name22568%_ (symbol->string (gx#stx-e _%id22557%_)))
                 (_%super22571%_
                  (map gx#syntax-local-value _%super-ref22558%_))
                 (_%struct?22574%_ (gx#stx-getq 'struct: _%body22560%_))
                 (_%g2257722585%_
                  (lambda (_%g2257822581%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2257822581%_)))
                 (_%g2257624743%_
                  (lambda (_%g2257822589%_)
                    ((lambda (_%L22592%_)
                       (let* ((_%g2260822616%_
                               (lambda (_%g2260922612%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2260922612%_)))
                              (_%g2260724739%_
                               (lambda (_%g2260922620%_)
                                 ((lambda (_%L22623%_)
                                    (let* ((_%g2263622644%_
                                            (lambda (_%g2263722640%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2263722640%_)))
                                           (_%g2263524735%_
                                            (lambda (_%g2263722648%_)
                                              ((lambda (_%L22651%_)
                                                 (let* ((_%g2266422672%_
                                                         (lambda (_%g2266522668%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2266522668%_)))
                                                        (_%g2266324731%_
                                                         (lambda (_%g2266522676%_)
                                                           ((lambda (_%L22679%_)
                                                              (let* ((_%g2269222700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2269322696%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2269322696%_)))
                             (_%g2269124727%_
                              (lambda (_%g2269322704%_)
                                ((lambda (_%L22707%_)
                                   (let* ((_%g2272022737%_
                                           (lambda (_%g2272122733%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2272122733%_)))
                                          (_%g2271924723%_
                                           (lambda (_%g2272122741%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2272122741%_)
                                                 (let ((_g27210_
                                                        (gx#syntax-split-splice
                                                         _%g2272122741%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27211_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27210_)
                          (##vector-length _g27210_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27211_ 2)))
                   (error "Context expects 2 values" _g27211_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2272322744%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27210_
                                                               0)))
                                                           (_%tl2272522747%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27210_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2272522747%_)
                                                           (letrec ((_%loop2272622750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2272422754%_ _%slot2273022757%_)
                               (if (gx#stx-pair? _%hd2272422754%_)
                                   (let ((_%e2272722760%_
                                          (gx#syntax-e _%hd2272422754%_)))
                                     (let ((_%lp-hd2272822764%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2272722760%_)))
                                           (_%lp-tl2272922767%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2272722760%_))))
                                       (_%loop2272622750%_
                                        _%lp-tl2272922767%_
                                        (cons _%lp-hd2272822764%_
                                              _%slot2273022757%_))))
                                   (let ((_%slot2273122770%_
                                          (reverse _%slot2273022757%_)))
                                     ((lambda (_%L22774%_)
                                        (let* ((_%g2279122808%_
                                                (lambda (_%g2279222804%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2279222804%_)))
                                               (_%g2279024714%_
                                                (lambda (_%g2279222812%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2279222812%_)
                                                      (let ((_g27212_
                                                             (gx#syntax-split-splice
                                                              _%g2279222812%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27212_)
                               (##vector-length _g27212_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27213_ 2)))
                        (error "Context expects 2 values" _g27213_)))
                  (let ((_%target2279422815%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27212_ 0)))
                        (_%tl2279622818%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27212_ 1))))
                    (if (gx#stx-null? _%tl2279622818%_)
                        (letrec ((_%loop2279722821%_
                                  (lambda (_%hd2279522825%_ _%getf2280122828%_)
                                    (if (gx#stx-pair? _%hd2279522825%_)
                                        (let ((_%e2279822831%_
                                               (gx#syntax-e _%hd2279522825%_)))
                                          (let ((_%lp-hd2279922835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2279822831%_)))
                                                (_%lp-tl2280022838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2279822831%_))))
                                            (_%loop2279722821%_
                                             _%lp-tl2280022838%_
                                             (cons _%lp-hd2279922835%_
                                                   _%getf2280122828%_))))
                                        (let ((_%getf2280222841%_
                                               (reverse _%getf2280122828%_)))
                                          ((lambda (_%L22845%_)
                                             (let* ((_%g2286222879%_
                                                     (lambda (_%g2286322875%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2286322875%_)))
                                                    (_%g2286124705%_
                                                     (lambda (_%g2286322883%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2286322883%_)
                                                           (let ((_g27214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2286322883%_ '0)))
                     (begin
                       (let ((_g27215_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27214_)
                                    (##vector-length _g27214_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27215_ 2)))
                             (error "Context expects 2 values" _g27215_)))
                       (let ((_%target2286522886%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27214_ 0)))
                             (_%tl2286722889%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27214_ 1))))
                         (if (gx#stx-null? _%tl2286722889%_)
                             (letrec ((_%loop2286822892%_
                                       (lambda (_%hd2286622896%_
                                                _%setf2287222899%_)
                                         (if (gx#stx-pair? _%hd2286622896%_)
                                             (let ((_%e2286922902%_
                                                    (gx#syntax-e
                                                     _%hd2286622896%_)))
                                               (let ((_%lp-hd2287022906%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2286922902%_)))
                                                     (_%lp-tl2287122909%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2286922902%_))))
                                                 (_%loop2286822892%_
                                                  _%lp-tl2287122909%_
                                                  (cons _%lp-hd2287022906%_
                                                        _%setf2287222899%_))))
                                             (let ((_%setf2287322912%_
                                                    (reverse _%setf2287222899%_)))
                                               ((lambda (_%L22916%_)
                                                  (let* ((_%mixin-slots22933%_
                                                          (_%get-mixin-slots22565%_
                                                           _%super-ref22558%_
                                                           _%slots22559%_))
                                                         (_%g2293622953%_
                                                          (lambda (_%g2293722949%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2293722949%_)))
                                                         (_%g2293524701%_
                                                          (lambda (_%g2293722957%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2293722957%_)
                        (let ((_g27216_
                               (gx#syntax-split-splice _%g2293722957%_ '0)))
                          (begin
                            (let ((_g27217_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27216_)
                                         (##vector-length _g27216_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27217_ 2)))
                                  (error "Context expects 2 values" _g27217_)))
                            (let ((_%target2293922960%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g27216_ 0)))
                                  (_%tl2294122963%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g27216_ 1))))
                              (if (gx#stx-null? _%tl2294122963%_)
                                  (letrec ((_%loop2294222966%_
                                            (lambda (_%hd2294022970%_
                                                     _%mixin-slot2294622973%_)
                                              (if (gx#stx-pair?
                                                   _%hd2294022970%_)
                                                  (let ((_%e2294322976%_
                                                         (gx#syntax-e
                                                          _%hd2294022970%_)))
                                                    (let ((_%lp-hd2294422980%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2294322976%_)))
                                                          (_%lp-tl2294522983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2294322976%_))))
                                                      (_%loop2294222966%_
                                                       _%lp-tl2294522983%_
                                                       (cons _%lp-hd2294422980%_
                                                             _%mixin-slot2294622973%_))))
                                                  (let ((_%mixin-slot2294722986%_
                                                         (reverse _%mixin-slot2294622973%_)))
                                                    ((lambda (_%L22990%_)
                                                       (let* ((_%g2300823025%_
                                                               (lambda (_%g2300923021%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2300923021%_)))
                      (_%g2300724692%_
                       (lambda (_%g2300923029%_)
                         (if (gx#stx-pair/null? _%g2300923029%_)
                             (let ((_g27218_
                                    (gx#syntax-split-splice
                                     _%g2300923029%_
                                     '0)))
                               (begin
                                 (let ((_g27219_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27218_)
                                              (##vector-length _g27218_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27219_ 2)))
                                       (error "Context expects 2 values"
                                              _g27219_)))
                                 (let ((_%target2301123032%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27218_ 0)))
                                       (_%tl2301323035%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27218_ 1))))
                                   (if (gx#stx-null? _%tl2301323035%_)
                                       (letrec ((_%loop2301423038%_
                                                 (lambda (_%hd2301223042%_
                                                          _%mixin-getf2301823045%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2301223042%_)
                                                       (let ((_%e2301523048%_
                                                              (gx#syntax-e
                                                               _%hd2301223042%_)))
                                                         (let ((_%lp-hd2301623052%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2301523048%_)))
                       (_%lp-tl2301723055%_
                        (let () (declare (not safe)) (##cdr _%e2301523048%_))))
                   (_%loop2301423038%_
                    _%lp-tl2301723055%_
                    (cons _%lp-hd2301623052%_ _%mixin-getf2301823045%_))))
               (let ((_%mixin-getf2301923058%_
                      (reverse _%mixin-getf2301823045%_)))
                 ((lambda (_%L23062%_)
                    (let* ((_%g2307923096%_
                            (lambda (_%g2308023092%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2308023092%_)))
                           (_%g2307824683%_
                            (lambda (_%g2308023100%_)
                              (if (gx#stx-pair/null? _%g2308023100%_)
                                  (let ((_g27220_
                                         (gx#syntax-split-splice
                                          _%g2308023100%_
                                          '0)))
                                    (begin
                                      (let ((_g27221_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27220_)
                                                   (##vector-length _g27220_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27221_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27221_)))
                                      (let ((_%target2308223103%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g27220_ 0)))
                                            (_%tl2308423106%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g27220_ 1))))
                                        (if (gx#stx-null? _%tl2308423106%_)
                                            (letrec ((_%loop2308523109%_
                                                      (lambda (_%hd2308323113%_
                                                               _%mixin-setf2308923116%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2308323113%_)
                                                            (let ((_%e2308623119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2308323113%_)))
                      (let ((_%lp-hd2308723123%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2308623119%_)))
                            (_%lp-tl2308823126%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2308623119%_))))
                        (_%loop2308523109%_
                         _%lp-tl2308823126%_
                         (cons _%lp-hd2308723123%_ _%mixin-setf2308923116%_))))
                    (let ((_%mixin-setf2309023129%_
                           (reverse _%mixin-setf2308923116%_)))
                      ((lambda (_%L23133%_)
                         (let* ((_%g2315023167%_
                                 (lambda (_%g2315123163%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2315123163%_)))
                                (_%g2314924666%_
                                 (lambda (_%g2315123171%_)
                                   (if (gx#stx-pair/null? _%g2315123171%_)
                                       (let ((_g27222_
                                              (gx#syntax-split-splice
                                               _%g2315123171%_
                                               '0)))
                                         (begin
                                           (let ((_g27223_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27222_)
                                                        (##vector-length
                                                         _g27222_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27223_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27223_)))
                                           (let ((_%target2315323174%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27222_ 0)))
                                                 (_%tl2315523177%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27222_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2315523177%_)
                                                 (letrec ((_%loop2315623180%_
                                                           (lambda (_%hd2315423184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2316023187%_)
                     (if (gx#stx-pair? _%hd2315423184%_)
                         (let ((_%e2315723190%_
                                (gx#syntax-e _%hd2315423184%_)))
                           (let ((_%lp-hd2315823194%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2315723190%_)))
                                 (_%lp-tl2315923197%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2315723190%_))))
                             (_%loop2315623180%_
                              _%lp-tl2315923197%_
                              (cons _%lp-hd2315823194%_ _%ugetf2316023187%_))))
                         (let ((_%ugetf2316123200%_
                                (reverse _%ugetf2316023187%_)))
                           ((lambda (_%L23204%_)
                              (let* ((_%g2322123238%_
                                      (lambda (_%g2322223234%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2322223234%_)))
                                     (_%g2322024649%_
                                      (lambda (_%g2322223242%_)
                                        (if (gx#stx-pair/null? _%g2322223242%_)
                                            (let ((_g27224_
                                                   (gx#syntax-split-splice
                                                    _%g2322223242%_
                                                    '0)))
                                              (begin
                                                (let ((_g27225_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27224_)
                                                             (##vector-length
                                                              _g27224_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27225_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2322423245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g27224_
                                                          0)))
                                                      (_%tl2322623248%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g27224_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2322623248%_)
                                                      (letrec ((_%loop2322723251%_
                                                                (lambda (_%hd2322523255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2323123258%_)
                          (if (gx#stx-pair? _%hd2322523255%_)
                              (let ((_%e2322823261%_
                                     (gx#syntax-e _%hd2322523255%_)))
                                (let ((_%lp-hd2322923265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2322823261%_)))
                                      (_%lp-tl2323023268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2322823261%_))))
                                  (_%loop2322723251%_
                                   _%lp-tl2323023268%_
                                   (cons _%lp-hd2322923265%_
                                         _%usetf2323123258%_))))
                              (let ((_%usetf2323223271%_
                                     (reverse _%usetf2323123258%_)))
                                ((lambda (_%L23275%_)
                                   (let* ((_%g2329223309%_
                                           (lambda (_%g2329323305%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2329323305%_)))
                                          (_%g2329124632%_
                                           (lambda (_%g2329323313%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2329323313%_)
                                                 (let ((_g27226_
                                                        (gx#syntax-split-splice
                                                         _%g2329323313%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27227_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27226_)
                          (##vector-length _g27226_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27227_ 2)))
                   (error "Context expects 2 values" _g27227_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2329523316%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27226_
                                                               0)))
                                                           (_%tl2329723319%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27226_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2329723319%_)
                                                           (letrec ((_%loop2329823322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2329623326%_
                                      _%mixin-ugetf2330223329%_)
                               (if (gx#stx-pair? _%hd2329623326%_)
                                   (let ((_%e2329923332%_
                                          (gx#syntax-e _%hd2329623326%_)))
                                     (let ((_%lp-hd2330023336%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2329923332%_)))
                                           (_%lp-tl2330123339%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2329923332%_))))
                                       (_%loop2329823322%_
                                        _%lp-tl2330123339%_
                                        (cons _%lp-hd2330023336%_
                                              _%mixin-ugetf2330223329%_))))
                                   (let ((_%mixin-ugetf2330323342%_
                                          (reverse _%mixin-ugetf2330223329%_)))
                                     ((lambda (_%L23346%_)
                                        (let* ((_%g2336323380%_
                                                (lambda (_%g2336423376%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2336423376%_)))
                                               (_%g2336224615%_
                                                (lambda (_%g2336423384%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2336423384%_)
                                                      (let ((_g27228_
                                                             (gx#syntax-split-splice
                                                              _%g2336423384%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27228_)
                               (##vector-length _g27228_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27229_ 2)))
                        (error "Context expects 2 values" _g27229_)))
                  (let ((_%target2336623387%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27228_ 0)))
                        (_%tl2336823390%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27228_ 1))))
                    (if (gx#stx-null? _%tl2336823390%_)
                        (letrec ((_%loop2336923393%_
                                  (lambda (_%hd2336723397%_
                                           _%mixin-usetf2337323400%_)
                                    (if (gx#stx-pair? _%hd2336723397%_)
                                        (let ((_%e2337023403%_
                                               (gx#syntax-e _%hd2336723397%_)))
                                          (let ((_%lp-hd2337123407%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2337023403%_)))
                                                (_%lp-tl2337223410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2337023403%_))))
                                            (_%loop2336923393%_
                                             _%lp-tl2337223410%_
                                             (cons _%lp-hd2337123407%_
                                                   _%mixin-usetf2337323400%_))))
                                        (let ((_%mixin-usetf2337423413%_
                                               (reverse _%mixin-usetf2337323400%_)))
                                          ((lambda (_%L23417%_)
                                             (let* ((_%type-slots23452%_
                                                     (if (gx#stx-null?
                                                          _%slots22559%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L22916%_
                                _%L22845%_
                                _%L22774%_)
                               (foldr (lambda (_%g2343723442%_
                                               _%g2343823445%_
                                               _%g2343923447%_
                                               _%g2344023449%_)
                                        (cons (cons _%g2343923447%_
                                                    (cons _%g2343823445%_
                                                          (cons _%g2343723442%_
                                                                '())))
                                              _%g2344023449%_))
                                      '()
                                      _%L22916%_
                                      _%L22845%_
                                      _%L22774%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23473%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots22933%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23133%_
                                _%L23062%_
                                _%L22990%_)
                               (foldr (lambda (_%g2345823463%_
                                               _%g2345923466%_
                                               _%g2346023468%_
                                               _%g2346123470%_)
                                        (cons (cons _%g2346023468%_
                                                    (cons _%g2345923466%_
                                                          (cons _%g2345823463%_
                                                                '())))
                                              _%g2346123470%_))
                                      '()
                                      _%L23133%_
                                      _%L23062%_
                                      _%L22990%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23480%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22560%_)))
                           (if _%$e23476%_ _%$e23476%_ _%id22557%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23487%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22560%_)))
                           (if _%$e23483%_
                               _%$e23483%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%L22592%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23502%_
                                                     (let ((_%$e23498%_
                                                            (let ((_%e2348923491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22560%_)))
                      (if _%e2348923491%_
                          (let ((_%e23495%_ _%e2348923491%_))
                            (cons 'constructor: (cons _%e23495%_ '())))
                          '#f))))
               (if _%$e23498%_ _%$e23498%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23540%_
                                                     (let* ((_%properties23505%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22560%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23520%_
                     (let ((_%$e23508%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22560%_))))
                       (if _%$e23508%_
                           ((lambda (_%print23512%_)
                              (let ((_%print23515%_
                                     (if (eq? _%print23512%_ '#t)
                                         _%slots22559%_
                                         _%print23512%_)))
                                (cons (cons 'print: _%print23515%_)
                                      _%properties23505%_)))
                            _%$e23508%_)
                           _%properties23505%_)))
                    (_%properties23535%_
                     (let ((_%$e23523%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22560%_))))
                       (if _%$e23523%_
                           ((lambda (_%equal23527%_)
                              (let ((_%equal23530%_
                                     (if (eq? _%equal23527%_ '#t)
                                         _%slots22559%_
                                         _%equal23527%_)))
                                (cons (cons 'equal: _%equal23530%_)
                                      _%properties23520%_)))
                            _%$e23523%_)
                           _%properties23520%_))))
               _%properties23535%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23581%_
                                                     (if (null? _%properties23540%_)
                                                         '()
                                                         (let* ((_%g2354323551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2354423547%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2354423547%_)))
                        (_%g2354223577%_
                         (lambda (_%g2354423555%_)
                           ((lambda (_%L23558%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%L23558%_ '()))
                                          '())))
                            _%g2354423555%_))))
                   (_%g2354223577%_ _%properties23540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23593%_
                                                     (let ((_%$e23584%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22560%_)))
                                                       (if _%$e23584%_
                                                           ((lambda (_%metaclass23588%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23588%_)
                          _%metaclass23588%_
                          '#f))
                    _%$e23584%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23596%_
                                                     (if _%metaclass23593%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23599%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22560%_)))
                                                    (_%type-struct23602%_
                                                     (cons 'struct:
                                                           (cons _%struct?22574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23605%_
                                                     (cons 'final:
                                                           (cons _%final?23599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2360823625%_
                                                     (lambda (_%g2360923621%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2360923621%_)))
                                                    (_%g2360724611%_
                                                     (lambda (_%g2360923629%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2360923629%_)
                                                           (let ((_g27230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2360923629%_ '0)))
                     (begin
                       (let ((_g27231_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27230_)
                                    (##vector-length _g27230_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27231_ 2)))
                             (error "Context expects 2 values" _g27231_)))
                       (let ((_%target2361123632%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27230_ 0)))
                             (_%tl2361323635%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27230_ 1))))
                         (if (gx#stx-null? _%tl2361323635%_)
                             (letrec ((_%loop2361423638%_
                                       (lambda (_%hd2361223642%_
                                                _%type-body2361823645%_)
                                         (if (gx#stx-pair? _%hd2361223642%_)
                                             (let ((_%e2361523648%_
                                                    (gx#syntax-e
                                                     _%hd2361223642%_)))
                                               (let ((_%lp-hd2361623652%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2361523648%_)))
                                                     (_%lp-tl2361723655%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2361523648%_))))
                                                 (_%loop2361423638%_
                                                  _%lp-tl2361723655%_
                                                  (cons _%lp-hd2361623652%_
                                                        _%type-body2361823645%_))))
                                             (let ((_%type-body2361923658%_
                                                    (reverse _%type-body2361823645%_)))
                                               ((lambda (_%L23662%_)
                                                  (let* ((_%g2368323691%_
                                                          (lambda (_%g2368423687%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2368423687%_)))
                                                         (_%g2368224599%_
                                                          (lambda (_%g2368423695%_)
                                                            ((lambda (_%L23698%_)
                                                               (let* ((_%g2371123719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2371223715%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2371223715%_)))
                              (_%g2371024528%_
                               (lambda (_%g2371223723%_)
                                 ((lambda (_%L23726%_)
                                    (let* ((_%g2373923747%_
                                            (lambda (_%g2374023743%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2374023743%_)))
                                           (_%g2373824493%_
                                            (lambda (_%g2374023751%_)
                                              ((lambda (_%L23754%_)
                                                 (let* ((_%g2376723775%_
                                                         (lambda (_%g2376823771%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2376823771%_)))
                                                        (_%g2376624407%_
                                                         (lambda (_%g2376823779%_)
                                                           ((lambda (_%L23782%_)
                                                              (let* ((_%g2379523803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2379623799%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2379623799%_)))
                             (_%g2379424395%_
                              (lambda (_%g2379623807%_)
                                ((lambda (_%L23810%_)
                                   (let* ((_%g2382323831%_
                                           (lambda (_%g2382423827%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2382423827%_)))
                                          (_%g2382224391%_
                                           (lambda (_%g2382423835%_)
                                             ((lambda (_%L23838%_)
                                                (let* ((_%g2385123859%_
                                                        (lambda (_%g2385223855%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2385223855%_)))
                                                       (_%g2385024387%_
                                                        (lambda (_%g2385223863%_)
                                                          ((lambda (_%L23866%_)
                                                             (let* ((_%g2387923887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2388023883%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2388023883%_)))
                            (_%g2387824352%_
                             (lambda (_%g2388023891%_)
                               ((lambda (_%L23894%_)
                                  (let* ((_%g2390723915%_
                                          (lambda (_%g2390823911%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2390823911%_)))
                                         (_%g2390624281%_
                                          (lambda (_%g2390823919%_)
                                            ((lambda (_%L23922%_)
                                               (let* ((_%g2393523943%_
                                                       (lambda (_%g2393623939%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2393623939%_)))
                                                      (_%g2393424277%_
                                                       (lambda (_%g2393623947%_)
                                                         ((lambda (_%L23950%_)
                                                            (let* ((_%g2396323971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2396423967%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2396423967%_)))
                           (_%g2396224273%_
                            (lambda (_%g2396423975%_)
                              ((lambda (_%L23978%_)
                                 (let* ((_%g2399123999%_
                                         (lambda (_%g2399223995%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2399223995%_)))
                                        (_%g2399024269%_
                                         (lambda (_%g2399224003%_)
                                           ((lambda (_%L24006%_)
                                              (let* ((_%g2401924027%_
                                                      (lambda (_%g2402024023%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2402024023%_)))
                                                     (_%g2401824243%_
                                                      (lambda (_%g2402024031%_)
                                                        ((lambda (_%L24034%_)
                                                           (let* ((_%g2404724055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2404824051%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2404824051%_)))
                          (_%g2404624217%_
                           (lambda (_%g2404824059%_)
                             ((lambda (_%L24062%_)
                                (let* ((_%g2407524083%_
                                        (lambda (_%g2407624079%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2407624079%_)))
                                       (_%g2407424191%_
                                        (lambda (_%g2407624087%_)
                                          ((lambda (_%L24090%_)
                                             (let* ((_%g2410324111%_
                                                     (lambda (_%g2410424107%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2410424107%_)))
                                                    (_%g2410224165%_
                                                     (lambda (_%g2410424115%_)
                                                       ((lambda (_%L24118%_)
                                                          (let* ((_%g2413124139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2413224135%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2413224135%_)))
                         (_%g2413024161%_
                          (lambda (_%g2413224143%_)
                            ((lambda (_%L24146%_)
                               (_%wrap22562%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%L23698%_
                                            (cons _%L24146%_ '())))))
                             _%g2413224143%_))))
                    (_%g2413024161%_
                     (_%wrap22562%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%L22592%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%L23726%_
                                                          (cons 'name:
                                                                (cons _%L23754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%L23810%_
                                          (cons 'super:
                                                (cons _%L23782%_
                                                      (cons 'struct?:
                                                            (cons _%L23838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%L23866%_
                                      (cons 'metaclass:
                                            (cons _%L23894%_
                                                  (cons 'constructor-method:
                                                        (cons _%L23922%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L23950%_
                                  (cons 'constructor:
                                        (cons _%L23978%_
                                              (cons 'predicate:
                                                    (cons _%L24006%_
                                                          (cons 'accessors:
                                                                (cons _%L24034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%L24062%_
                                          (cons 'unchecked-accessors:
                                                (cons _%L24090%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%L24118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2410424115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2410224165%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L23275%_
                                                         _%L22774%_)
                                                        (foldr (lambda (_%g2416824175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2416924178%_
                                _%g2417024180%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2416924178%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2416824175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2417024180%_))
                       (begin
                         (gx#syntax-check-splice-targets _%L23417%_ _%L22990%_)
                         (foldr (lambda (_%g2417124183%_
                                         _%g2417224186%_
                                         _%g2417324188%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2417224186%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2417124183%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2417324188%_))
                                '()
                                _%L23417%_
                                _%L22990%_))
                       _%L23275%_
                       _%L22774%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2407624087%_))))
                                  (_%g2407424191%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23204%_
                                            _%L22774%_)
                                           (foldr (lambda (_%g2419424201%_
                                                           _%g2419524204%_
                                                           _%g2419624206%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2419524204%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2419424201%_ '()))
                                          '()))))
                  _%g2419624206%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23346%_
                                                     _%L22990%_)
                                                    (foldr (lambda (_%g2419724209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2419824212%_
                            _%g2419924214%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2419824212%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2419724209%_
                                                               '()))
                                                   '()))))
                           _%g2419924214%_))
                   '()
                   _%L23346%_
                   _%L22990%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23204%_
                                                  _%L22774%_))))))
                              _%g2404824059%_))))
                     (_%g2404624217%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%L22916%_
                               _%L22774%_)
                              (foldr (lambda (_%g2422024227%_
                                              _%g2422124230%_
                                              _%g2422224232%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2422124230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2422024227%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2422224232%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%L23133%_
                                        _%L22990%_)
                                       (foldr (lambda (_%g2422324235%_
                                                       _%g2422424238%_
                                                       _%g2422524240%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2422424238%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2422324235%_ '()))
                                      '()))))
              _%g2422524240%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L23133%_
                                              _%L22990%_))
                                     _%L22916%_
                                     _%L22774%_))))))
                 _%g2402024031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2401824243%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%L22845%_
                                                          _%L22774%_)
                                                         (foldr (lambda (_%g2424624253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2424724256%_
                                 _%g2424824258%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2424724256%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2424624253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2424824258%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%L23062%_
                           _%L22990%_)
                          (foldr (lambda (_%g2424924261%_
                                          _%g2425024264%_
                                          _%g2425124266%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2425024264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2424924261%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2425124266%_))
                                 '()
                                 _%L23062%_
                                 _%L22990%_))
                        _%L22845%_
                        _%L22774%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2399224003%_))))
                                   (_%g2399024269%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%L22679%_ '())))))
                               _%g2396423975%_))))
                      (_%g2396224273%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%L22651%_ '())))))
                  _%g2393623947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2393424277%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%L22623%_
                                                              '())))))
                                             _%g2390823919%_))))
                                    (_%g2390624281%_
                                     (if (null? _%type-constructor23502%_)
                                         '#f
                                         (let* ((_%g2428524300%_
                                                 (lambda (_%g2428624296%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2428624296%_)))
                                                (_%g2428424348%_
                                                 (lambda (_%g2428624304%_)
                                                   (if (gx#stx-pair?
                                                        _%g2428624304%_)
                                                       (let ((_%e2428824307%_
                                                              (gx#syntax-e
                                                               _%g2428624304%_)))
                                                         (let ((_%hd2428924311%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2428824307%_)))
                       (_%tl2429024314%_
                        (let () (declare (not safe)) (##cdr _%e2428824307%_))))
                   (if (gx#stx-datum? _%hd2428924311%_)
                       (let ((_%e2429124317%_ (gx#stx-e _%hd2428924311%_)))
                         (if (equal? _%e2429124317%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2429024314%_)
                                 (let ((_%e2429224321%_
                                        (gx#syntax-e _%tl2429024314%_)))
                                   (let ((_%hd2429324325%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2429224321%_)))
                                         (_%tl2429424328%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2429224321%_))))
                                     (if (gx#stx-null? _%tl2429424328%_)
                                         ((lambda (_%L24331%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L24331%_ '())))
                                          _%hd2429324325%_)
                                         (_%g2428524300%_ _%g2428624304%_))))
                                 (_%g2428524300%_ _%g2428624304%_))
                             (_%g2428524300%_ _%g2428624304%_)))
                       (_%g2428524300%_ _%g2428624304%_))))
               (_%g2428524300%_ _%g2428624304%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2428424348%_
                                            _%type-constructor23502%_))))))
                                _%g2388023891%_))))
                       (_%g2387824352%_
                        (if _%metaclass23593%_
                            (let* ((_%g2435624364%_
                                    (lambda (_%g2435724360%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2435724360%_)))
                                   (_%g2435524383%_
                                    (lambda (_%g2435724368%_)
                                      ((lambda (_%L24371%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%L24371%_ '())))
                                       _%g2435724368%_))))
                              (_%g2435524383%_ _%metaclass23593%_))
                            '#f))))
                   _%g2385223863%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2385024387%_
                                                   _%final?23599%_)))
                                              _%g2382423835%_))))
                                     (_%g2382224391%_ _%struct?22574%_)))
                                 _%g2379623807%_))))
                        (_%g2379424395%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2439824401%_
                                                     _%g2439924404%_)
                                              (cons _%g2439824401%_
                                                    _%g2439924404%_))
                                            '()
                                            _%L22774%_)
                                     '())))))
                    _%g2376823779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2376624407%_
                                                    (let* ((_%g2441124428%_
                                                            (lambda (_%g2441224424%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2441224424%_)))
                                                           (_%g2441024489%_
                                                            (lambda (_%g2441224432%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2441224432%_)
                          (let ((_g27232_
                                 (gx#syntax-split-splice _%g2441224432%_ '0)))
                            (begin
                              (let ((_g27233_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27232_)
                                           (##vector-length _g27232_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27233_ 2)))
                                    (error "Context expects 2 values"
                                           _g27233_)))
                              (let ((_%target2441424435%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27232_ 0)))
                                    (_%tl2441624438%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27232_ 1))))
                                (if (gx#stx-null? _%tl2441624438%_)
                                    (letrec ((_%loop2441724441%_
                                              (lambda (_%hd2441524445%_
                                                       _%super-id2442124448%_)
                                                (if (gx#stx-pair?
                                                     _%hd2441524445%_)
                                                    (let ((_%e2441824451%_
                                                           (gx#syntax-e
                                                            _%hd2441524445%_)))
                                                      (let ((_%lp-hd2441924455%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2441824451%_)))
                    (_%lp-tl2442024458%_
                     (let () (declare (not safe)) (##cdr _%e2441824451%_))))
                (_%loop2441724441%_
                 _%lp-tl2442024458%_
                 (cons _%lp-hd2441924455%_ _%super-id2442124448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2442224461%_
                                                           (reverse _%super-id2442124448%_)))
                                                      ((lambda (_%L24465%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2448024483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2448124486%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2448024483%_ '()))
                                      _%g2448124486%_))
                              '()
                              _%L24465%_)))
               _%super-id2442224461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2441724441%_
                                       _%target2441424435%_
                                       '()))
                                    (_%g2441124428%_ _%g2441224432%_)))))
                          (_%g2441124428%_ _%g2441224432%_)))))
              (_%g2441024489%_ _%super-ref22558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2374023751%_))))
                                      (_%g2373824493%_
                                       (let* ((_%g2449724505%_
                                               (lambda (_%g2449824501%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2449824501%_)))
                                              (_%g2449624524%_
                                               (lambda (_%g2449824509%_)
                                                 ((lambda (_%L24512%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L24512%_
                                                                '())))
                                                  _%g2449824509%_))))
                                         (_%g2449624524%_
                                          (cadr _%type-name23480%_))))))
                                  _%g2371223723%_))))
                         (_%g2371024528%_
                          (let* ((_%g2453224547%_
                                  (lambda (_%g2453324543%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2453324543%_)))
                                 (_%g2453124595%_
                                  (lambda (_%g2453324551%_)
                                    (if (gx#stx-pair? _%g2453324551%_)
                                        (let ((_%e2453524554%_
                                               (gx#syntax-e _%g2453324551%_)))
                                          (let ((_%hd2453624558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2453524554%_)))
                                                (_%tl2453724561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2453524554%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2453624558%_)
                                                (let ((_%e2453824564%_
                                                       (gx#stx-e
                                                        _%hd2453624558%_)))
                                                  (if (equal? _%e2453824564%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2453724561%_)
                                                          (let ((_%e2453924568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2453724561%_)))
                    (let ((_%hd2454024572%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2453924568%_)))
                          (_%tl2454124575%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2453924568%_))))
                      (if (gx#stx-null? _%tl2454124575%_)
                          ((lambda (_%L24578%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%L24578%_ '())))
                           _%hd2454024572%_)
                          (_%g2453224547%_ _%g2453324551%_))))
                  (_%g2453224547%_ _%g2453324551%_))
              (_%g2453224547%_ _%g2453324551%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2453224547%_
                                                 _%g2453324551%_))))
                                        (_%g2453224547%_ _%g2453324551%_)))))
                            (_%g2453124595%_ _%type-id23487%_)))))
                     _%g2368423695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2368224599%_
                                                     (_%wrap22562%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%L22623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L22707%_
                                (cons _%L22651%_
                                      (cons _%L22679%_
                                            (foldr (lambda (_%g2460224605%_
                                                            _%g2460324608%_)
                                                     (cons _%g2460224605%_
                                                           _%g2460324608%_))
                                                   '()
                                                   _%L23662%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2361923658%_))))))
                               (_%loop2361423638%_ _%target2361123632%_ '()))
                             (_%g2360823625%_ _%g2360923629%_)))))
                   (_%g2360823625%_ _%g2360923629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2360724611%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23473%_
                                                                _%type-slots23452%_)
                                                         _%type-properties23581%_)
                                                  _%type-metaclass23596%_)
                                           _%type-final23605%_)
                                    _%type-struct23602%_)
                             _%type-constructor23502%_)
                      _%type-name23480%_)
               _%type-id23487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2337423413%_))))))
                          (_%loop2336923393%_ _%target2336623387%_ '()))
                        (_%g2336323380%_ _%g2336423384%_)))))
              (_%g2336323380%_ _%g2336423384%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2336224615%_
                                           (gx#stx-map
                                            (lambda (_%g2461824620%_)
                                              (_%make-id22564%_
                                               '"&"
                                               _%g2461824620%_))
                                            (foldr (lambda (_%g2462324626%_
                                                            _%g2462424629%_)
                                                     (cons _%g2462324626%_
                                                           _%g2462424629%_))
                                                   '()
                                                   _%L23133%_)))))
                                      _%mixin-ugetf2330323342%_))))))
                     (_%loop2329823322%_ _%target2329523316%_ '()))
                   (_%g2329223309%_ _%g2329323313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2329223309%_
                                                  _%g2329323313%_)))))
                                     (_%g2329124632%_
                                      (gx#stx-map
                                       (lambda (_%g2463524637%_)
                                         (_%make-id22564%_
                                          '"&"
                                          _%g2463524637%_))
                                       (foldr (lambda (_%g2464024643%_
                                                       _%g2464124646%_)
                                                (cons _%g2464024643%_
                                                      _%g2464124646%_))
                                              '()
                                              _%L23062%_)))))
                                 _%usetf2323223271%_))))))
                (_%loop2322723251%_ _%target2322423245%_ '()))
              (_%g2322123238%_ _%g2322223242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2322123238%_
                                             _%g2322223242%_)))))
                                (_%g2322024649%_
                                 (gx#stx-map
                                  (lambda (_%g2465224654%_)
                                    (_%make-id22564%_ '"&" _%g2465224654%_))
                                  (foldr (lambda (_%g2465724660%_
                                                  _%g2465824663%_)
                                           (cons _%g2465724660%_
                                                 _%g2465824663%_))
                                         '()
                                         _%L22916%_)))))
                            _%ugetf2316123200%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2315623180%_
                                                    _%target2315323174%_
                                                    '()))
                                                 (_%g2315023167%_
                                                  _%g2315123171%_)))))
                                       (_%g2315023167%_ _%g2315123171%_)))))
                           (_%g2314924666%_
                            (gx#stx-map
                             (lambda (_%g2466924671%_)
                               (_%make-id22564%_ '"&" _%g2466924671%_))
                             (foldr (lambda (_%g2467424677%_ _%g2467524680%_)
                                      (cons _%g2467424677%_ _%g2467524680%_))
                                    '()
                                    _%L22845%_)))))
                       _%mixin-setf2309023129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2308523109%_
                                               _%target2308223103%_
                                               '()))
                                            (_%g2307923096%_
                                             _%g2308023100%_)))))
                                  (_%g2307923096%_ _%g2308023100%_)))))
                      (_%g2307824683%_
                       (gx#stx-map
                        (lambda (_%g2468624688%_)
                          (_%make-id22564%_
                           _%name22568%_
                           '"-"
                           _%g2468624688%_
                           '"-set!"))
                        _%mixin-slots22933%_))))
                  _%mixin-getf2301923058%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2301423038%_
                                          _%target2301123032%_
                                          '()))
                                       (_%g2300823025%_ _%g2300923029%_)))))
                             (_%g2300823025%_ _%g2300923029%_)))))
                 (_%g2300724692%_
                  (gx#stx-map
                   (lambda (_%g2469524697%_)
                     (_%make-id22564%_ _%name22568%_ '"-" _%g2469524697%_))
                   _%mixin-slots22933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2294722986%_))))))
                                    (_%loop2294222966%_
                                     _%target2293922960%_
                                     '()))
                                  (_%g2293622953%_ _%g2293722957%_)))))
                        (_%g2293622953%_ _%g2293722957%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2293524701%_
                                                     _%mixin-slots22933%_)))
                                                _%setf2287322912%_))))))
                               (_%loop2286822892%_ _%target2286522886%_ '()))
                             (_%g2286222879%_ _%g2286322883%_)))))
                   (_%g2286222879%_ _%g2286322883%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2286124705%_
                                                (gx#stx-map
                                                 (lambda (_%g2470824710%_)
                                                   (_%make-id22564%_
                                                    _%name22568%_
                                                    '"-"
                                                    _%g2470824710%_
                                                    '"-set!"))
                                                 _%slots22559%_))))
                                           _%getf2280222841%_))))))
                          (_%loop2279722821%_ _%target2279422815%_ '()))
                        (_%g2279122808%_ _%g2279222812%_)))))
              (_%g2279122808%_ _%g2279222812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2279024714%_
                                           (gx#stx-map
                                            (lambda (_%g2471724719%_)
                                              (_%make-id22564%_
                                               _%name22568%_
                                               '"-"
                                               _%g2471724719%_))
                                            _%slots22559%_))))
                                      _%slot2273122770%_))))))
                     (_%loop2272622750%_ _%target2272322744%_ '()))
                   (_%g2272022737%_ _%g2272122741%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2272022737%_
                                                  _%g2272122741%_)))))
                                     (_%g2271924723%_ _%slots22559%_)))
                                 _%g2269322704%_))))
                        (_%g2269124727%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22571%_)))))
                    _%g2266522676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2266324731%_
                                                    (_%make-id22564%_
                                                     _%name22568%_
                                                     '"?"))))
                                               _%g2263722648%_))))
                                      (_%g2263524735%_
                                       (_%make-id22564%_
                                        '"make-"
                                        _%name22568%_))))
                                  _%g2260922620%_))))
                         (_%g2260724739%_
                          (_%make-id22564%_ _%name22568%_ '"::t"))))
                     _%g2257822589%_))))
            (_%g2257624743%_ _%id22557%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24810%_)
        (let* ((_%g2481424833%_
                (lambda (_%g2481524829%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2481524829%_)))
               (_%g2481324890%_
                (lambda (_%g2481524837%_)
                  (if (gx#stx-pair? _%g2481524837%_)
                      (let ((_%e2481924840%_ (gx#syntax-e _%g2481524837%_)))
                        (let ((_%hd2482024844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2481924840%_)))
                              (_%tl2482124847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2481924840%_))))
                          (if (gx#stx-pair? _%tl2482124847%_)
                              (let ((_%e2482224850%_
                                     (gx#syntax-e _%tl2482124847%_)))
                                (let ((_%hd2482324854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2482224850%_)))
                                      (_%tl2482424857%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2482224850%_))))
                                  (if (gx#stx-pair? _%tl2482424857%_)
                                      (let ((_%e2482524860%_
                                             (gx#syntax-e _%tl2482424857%_)))
                                        (let ((_%hd2482624864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2482524860%_)))
                                              (_%tl2482724867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2482524860%_))))
                                          ((lambda (_%L24870%_
                                                    _%L24872%_
                                                    _%L24873%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24873%_
                                                         (cons _%L24872%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24870%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2482724867%_
                                           _%hd2482624864%_
                                           _%hd2482324854%_)))
                                      (_%g2481424833%_ _%g2481524837%_))))
                              (_%g2481424833%_ _%g2481524837%_))))
                      (_%g2481424833%_ _%g2481524837%_)))))
          (_%g2481324890%_ _%$stx24810%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24894%_)
        (letrec ((_%generate24897%_
                  (lambda (_%hd24981%_ _%slots24983%_ _%body24984%_)
                    (let* ((_%__stx2674926750%_ _%hd24981%_)
                           (_%g2498724999%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2674926750%_))))
                      (let ((_%__kont2675226753%_
                             (lambda (_%L25027%_ _%L25029%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24894%_
                                _%L25029%_
                                (gx#syntax->list _%L25027%_)
                                _%slots24983%_
                                _%body24984%_)))
                            (_%__kont2675426755%_
                             (lambda ()
                               (if (gx#identifier? _%hd24981%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24894%_
                                    _%hd24981%_
                                    '()
                                    _%slots24983%_
                                    _%body24984%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _%stx24894%_
                                    _%hd24981%_)))))
                        (let ((_%__match2676226763%_
                               (lambda (_%e2499125017%_
                                        _%hd2499225021%_
                                        _%tl2499325024%_)
                                 (let ((_%L25027%_ _%tl2499325024%_)
                                       (_%L25029%_ _%hd2499225021%_))
                                   (if (and (gx#stx-list? _%L25027%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25027%_))
                                       (_%__kont2675226753%_
                                        _%L25027%_
                                        _%L25029%_)
                                       (_%__kont2675426755%_))))))
                          (if (gx#stx-pair? _%__stx2674926750%_)
                              (let ((_%e2499125017%_
                                     (gx#syntax-e _%__stx2674926750%_)))
                                (let ((_%tl2499325024%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2499125017%_)))
                                      (_%hd2499225021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2499125017%_))))
                                  (_%__match2676226763%_
                                   _%e2499125017%_
                                   _%hd2499225021%_
                                   _%tl2499325024%_)))
                              (_%__kont2675426755%_))))))))
          (let* ((_%g2490024919%_
                  (lambda (_%g2490124915%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2490124915%_)))
                 (_%g2489924977%_
                  (lambda (_%g2490124923%_)
                    (if (gx#stx-pair? _%g2490124923%_)
                        (let ((_%e2490524926%_ (gx#syntax-e _%g2490124923%_)))
                          (let ((_%hd2490624930%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2490524926%_)))
                                (_%tl2490724933%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2490524926%_))))
                            (if (gx#stx-pair? _%tl2490724933%_)
                                (let ((_%e2490824936%_
                                       (gx#syntax-e _%tl2490724933%_)))
                                  (let ((_%hd2490924940%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2490824936%_)))
                                        (_%tl2491024943%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2490824936%_))))
                                    (if (gx#stx-pair? _%tl2491024943%_)
                                        (let ((_%e2491124946%_
                                               (gx#syntax-e _%tl2491024943%_)))
                                          (let ((_%hd2491224950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2491124946%_)))
                                                (_%tl2491324953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2491124946%_))))
                                            ((lambda (_%L24956%_
                                                      _%L24958%_
                                                      _%L24959%_)
                                               (if (and (gx#identifier-list?
                                                         _%L24958%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%L24956%_))
                                                   (_%generate24897%_
                                                    _%L24959%_
                                                    _%L24958%_
                                                    _%L24956%_)
                                                   (_%g2490024919%_
                                                    _%g2490124923%_)))
                                             _%tl2491324953%_
                                             _%hd2491224950%_
                                             _%hd2490924940%_)))
                                        (_%g2490024919%_ _%g2490124923%_))))
                                (_%g2490024919%_ _%g2490124923%_))))
                        (_%g2490024919%_ _%g2490124923%_)))))
            (_%g2489924977%_ _%stx24894%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25046%_)
        (letrec ((_%wrap25049%_
                  (lambda (_%e-stx25395%_)
                    (gx#stx-wrap-source
                     _%e-stx25395%_
                     (gx#stx-source _%stx25046%_))))
                 (_%method-opt?25051%_
                  (lambda (_%x25392%_)
                    (let ((__tmp27234 (gx#stx-e _%x25392%_)))
                      (declare (not safe))
                      (##memq __tmp27234 '(rebind:))))))
          (let* ((_%g2505325082%_
                  (lambda (_%g2505425078%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2505425078%_)))
                 (_%g2505225388%_
                  (lambda (_%g2505425086%_)
                    (if (gx#stx-pair? _%g2505425086%_)
                        (let ((_%e2505925089%_ (gx#syntax-e _%g2505425086%_)))
                          (let ((_%hd2506025093%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2505925089%_)))
                                (_%tl2506125096%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2505925089%_))))
                            (if (gx#stx-pair? _%tl2506125096%_)
                                (let ((_%e2506225099%_
                                       (gx#syntax-e _%tl2506125096%_)))
                                  (let ((_%hd2506325103%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2506225099%_)))
                                        (_%tl2506425106%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2506225099%_))))
                                    (if (gx#stx-pair? _%hd2506325103%_)
                                        (let ((_%e2506525109%_
                                               (gx#syntax-e _%hd2506325103%_)))
                                          (let ((_%hd2506625113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2506525109%_)))
                                                (_%tl2506725116%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2506525109%_))))
                                            (if (gx#identifier?
                                                 _%hd2506625113%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27235_|
                                                     _%hd2506625113%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2506725116%_)
                                                        (let ((_%e2506825119%_
                                                               (gx#syntax-e
                                                                _%tl2506725116%_)))
                                                          (let ((_%hd2506925123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2506825119%_)))
                        (_%tl2507025126%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2506825119%_))))
                    (if (gx#stx-pair? _%tl2507025126%_)
                        (let ((_%e2507125129%_ (gx#syntax-e _%tl2507025126%_)))
                          (let ((_%hd2507225133%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2507125129%_)))
                                (_%tl2507325136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2507125129%_))))
                            (if (gx#stx-null? _%tl2507325136%_)
                                (if (gx#stx-pair? _%tl2506425106%_)
                                    (let ((_%e2507425139%_
                                           (gx#syntax-e _%tl2506425106%_)))
                                      (let ((_%hd2507525143%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2507425139%_)))
                                            (_%tl2507625146%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2507425139%_))))
                                        ((lambda (_%L25149%_
                                                  _%L25151%_
                                                  _%L25152%_
                                                  _%L25153%_)
                                           (if (and (gx#identifier? _%L25153%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _%L25152%_))
                                                    (gx#stx-plist?
                                                     _%L25149%_
                                                     _%method-opt?25051%_))
                                               (let* ((_%klass25180%_
                                                       (gx#syntax-local-value
                                                        _%L25152%_))
                                                      (_%rebind?25183%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%L25149%_)))
                                                      (_%g2518625194%_
                                                       (lambda (_%g2518725190%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2518725190%_)))
                                                      (_%g2518525378%_
                                                       (lambda (_%g2518725198%_)
                                                         ((lambda (_%L25201%_)
                                                            (let* ((_%g2521625224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2521725220%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2521725220%_)))
                           (_%g2521525374%_
                            (lambda (_%g2521725228%_)
                              ((lambda (_%L25231%_)
                                 (let* ((_%g2524425252%_
                                         (lambda (_%g2524525248%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2524525248%_)))
                                        (_%g2524325370%_
                                         (lambda (_%g2524525256%_)
                                           ((lambda (_%L25259%_)
                                              (let* ((_%g2527225280%_
                                                      (lambda (_%g2527325276%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2527325276%_)))
                                                     (_%g2527125366%_
                                                      (lambda (_%g2527325284%_)
                                                        ((lambda (_%L25287%_)
                                                           (let* ((_%g2530025308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2530125304%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2530125304%_)))
                          (_%g2529925362%_
                           (lambda (_%g2530125312%_)
                             ((lambda (_%L25315%_)
                                (let* ((_%g2532825336%_
                                        (lambda (_%g2532925332%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2532925332%_)))
                                       (_%g2532725358%_
                                        (lambda (_%g2532925340%_)
                                          ((lambda (_%L25343%_)
                                             (_%wrap25049%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L25287%_
                                                          (cons _%L25343%_
                                                                '())))))
                                           _%g2532925340%_))))
                                  (_%g2532725358%_
                                   (_%wrap25049%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%L25201%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L25153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%L25231%_ (cons _%L25315%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2530125312%_))))
                     (_%g2529925362%_ _%rebind?25183%_)))
                 _%g2527325284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2527125366%_
                                                 (_%wrap25049%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%L25231%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%L25259%_
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
                                                      (cons _%L25201%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25153%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%L25151%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2524525256%_))))
                                   (_%g2524325370%_
                                    (gx#stx-identifier
                                     _%L25152%_
                                     '@next-method))))
                               _%g2521725228%_))))
                      (_%g2521525374%_
                       (gx#stx-identifier
                        _%L25152%_
                        _%L25152%_
                        '"::"
                        _%L25153%_))))
                  _%g2518725198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2518525378%_
                                                  (let ((__obj27026
                                                         _%klass25180%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27026
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27026
                                                           '12
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj27026
                                                         'type-descriptor)))))
                                               (if (gx#identifier? _%L25153%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                          _%L25152%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25046%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; expected type identifier"
                                                        _%stx25046%_
                                                        _%L25152%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25046%_
                                                    _%L25153%_))))
                                         _%tl2507625146%_
                                         _%hd2507525143%_
                                         _%hd2507225133%_
                                         _%hd2506925123%_)))
                                    (_%g2505325082%_ _%g2505425086%_))
                                (_%g2505325082%_ _%g2505425086%_))))
                        (_%g2505325082%_ _%g2505425086%_))))
                (_%g2505325082%_ _%g2505425086%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2505325082%_
                                                     _%g2505425086%_))
                                                (_%g2505325082%_
                                                 _%g2505425086%_))))
                                        (_%g2505325082%_ _%g2505425086%_))))
                                (_%g2505325082%_ _%g2505425086%_))))
                        (_%g2505325082%_ _%g2505425086%_)))))
            (_%g2505225388%_ _%stx25046%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25398%_)
        (letrec ((_%dotted-identifier?25401%_
                  (lambda (_%id26034%_)
                    (if (gx#identifier? _%id26034%_)
                        (let ((_%id-str26037%_
                               (symbol->string (gx#stx-e _%id26034%_))))
                          (if (string-index _%id-str26037%_ '#\.)
                              (let* ((_%split26040%_
                                      (string-split _%id-str26037%_ '#\.))
                                     (__tmp27236 (length _%split26040%_)))
                                (declare (not safe))
                                (##fx= __tmp27236 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25403%_
                  (lambda (_%id26023%_)
                    (let* ((_%id-str26026%_
                            (symbol->string (gx#stx-e _%id26023%_)))
                           (_%split26029%_
                            (string-split _%id-str26026%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26023%_
                             (car _%split26029%_))
                            (cons (gx#stx-identifier
                                   _%id26023%_
                                   (cadr _%split26029%_))
                                  '()))))))
          (let* ((_%__stx2676526766%_ _%stx25398%_)
                 (_%g2540825495%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2676526766%_))))
            (let ((_%__kont2676826769%_
                   (lambda (_%L25916%_ _%L25918%_ _%L25919%_)
                     (let* ((_%g2594725962%_
                             (lambda (_%g2594825958%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2594825958%_)))
                            (_%g2594626015%_
                             (lambda (_%g2594825966%_)
                               (if (gx#stx-pair? _%g2594825966%_)
                                   (let ((_%e2595125969%_
                                          (gx#syntax-e _%g2594825966%_)))
                                     (let ((_%hd2595225973%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2595125969%_)))
                                           (_%tl2595325976%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2595125969%_))))
                                       (if (gx#stx-pair? _%tl2595325976%_)
                                           (let ((_%e2595425979%_
                                                  (gx#syntax-e
                                                   _%tl2595325976%_)))
                                             (let ((_%hd2595525983%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2595425979%_)))
                                                   (_%tl2595625986%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2595425979%_))))
                                               (if (gx#stx-null?
                                                    _%tl2595625986%_)
                                                   ((lambda (_%L25989%_
                                                             _%L25991%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%L25991%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L25989%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2600626009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2600726012%_)
                   (cons _%g2600626009%_ _%g2600726012%_))
                 '()
                 _%L25918%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2595525983%_
                                                    _%hd2595225973%_)
                                                   (_%g2594725962%_
                                                    _%g2594825966%_))))
                                           (_%g2594725962%_ _%g2594825966%_))))
                                   (_%g2594725962%_ _%g2594825966%_)))))
                       (_%g2594626015%_ (_%split-dotted25403%_ _%L25919%_)))))
                  (_%__kont2677226773%_
                   (lambda (_%L25758%_ _%L25760%_)
                     (let* ((_%g2577725792%_
                             (lambda (_%g2577825788%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2577825788%_)))
                            (_%g2577625845%_
                             (lambda (_%g2577825796%_)
                               (if (gx#stx-pair? _%g2577825796%_)
                                   (let ((_%e2578125799%_
                                          (gx#syntax-e _%g2577825796%_)))
                                     (let ((_%hd2578225803%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2578125799%_)))
                                           (_%tl2578325806%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2578125799%_))))
                                       (if (gx#stx-pair? _%tl2578325806%_)
                                           (let ((_%e2578425809%_
                                                  (gx#syntax-e
                                                   _%tl2578325806%_)))
                                             (let ((_%hd2578525813%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2578425809%_)))
                                                   (_%tl2578625816%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2578425809%_))))
                                               (if (gx#stx-null?
                                                    _%tl2578625816%_)
                                                   ((lambda (_%L25819%_
                                                             _%L25821%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%L25821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25819%_ '()))
                                (foldr (lambda (_%g2583625839%_
                                                _%g2583725842%_)
                                         (cons _%g2583625839%_
                                               _%g2583725842%_))
                                       '()
                                       _%L25758%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2578525813%_
                                                    _%hd2578225803%_)
                                                   (_%g2577725792%_
                                                    _%g2577825796%_))))
                                           (_%g2577725792%_ _%g2577825796%_))))
                                   (_%g2577725792%_ _%g2577825796%_)))))
                       (_%g2577625845%_ (_%split-dotted25403%_ _%L25760%_)))))
                  (_%__kont2677626777%_
                   (lambda (_%L25662%_ _%L25664%_ _%L25665%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25664%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25665%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2569225695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2569325698%_)
                          (cons _%g2569225695%_ _%g2569325698%_))
                        '()
                        _%L25662%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2678026781%_
                   (lambda (_%L25562%_ _%L25564%_ _%L25565%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25564%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25565%_ '()))
                                       (foldr (lambda (_%g2558625589%_
                                                       _%g2558725592%_)
                                                (cons _%g2558625589%_
                                                      _%g2558725592%_))
                                              '()
                                              _%L25562%_)))))))
              (let* ((_%__match2688426885%_
                      (lambda (_%e2547225502%_
                               _%hd2547325506%_
                               _%tl2547425509%_
                               _%e2547525512%_
                               _%hd2547625516%_
                               _%tl2547725519%_
                               _%e2547825522%_
                               _%hd2547925526%_
                               _%tl2548025529%_
                               _%__splice2678226783%_
                               _%target2548125532%_
                               _%tl2548325535%_)
                        (letrec ((_%loop2548425538%_
                                  (lambda (_%hd2548225542%_ _%arg2548825545%_)
                                    (if (gx#stx-pair? _%hd2548225542%_)
                                        (let ((_%e2548525548%_
                                               (gx#syntax-e _%hd2548225542%_)))
                                          (let ((_%lp-tl2548725555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2548525548%_)))
                                                (_%lp-hd2548625552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2548525548%_))))
                                            (_%loop2548425538%_
                                             _%lp-tl2548725555%_
                                             (cons _%lp-hd2548625552%_
                                                   _%arg2548825545%_))))
                                        (let ((_%arg2548925558%_
                                               (reverse _%arg2548825545%_)))
                                          (let ((_%L25562%_ _%arg2548925558%_)
                                                (_%L25564%_ _%hd2547925526%_)
                                                (_%L25565%_ _%hd2547625516%_))
                                            (if (gx#identifier? _%L25565%_)
                                                (_%__kont2678026781%_
                                                 _%L25562%_
                                                 _%L25564%_
                                                 _%L25565%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2540825495%_)))))))))
                          (_%loop2548425538%_ _%target2548125532%_ '()))))
                     (_%__match2685826859%_
                      (lambda (_%e2545125602%_
                               _%hd2545225606%_
                               _%tl2545325609%_
                               _%e2545425612%_
                               _%hd2545525616%_
                               _%tl2545625619%_
                               _%e2545725622%_
                               _%hd2545825626%_
                               _%tl2545925629%_
                               _%__splice2677826779%_
                               _%target2546025632%_
                               _%tl2546225635%_)
                        (letrec ((_%loop2546325638%_
                                  (lambda (_%hd2546125642%_ _%arg2546725645%_)
                                    (if (gx#stx-pair? _%hd2546125642%_)
                                        (let ((_%e2546425648%_
                                               (gx#syntax-e _%hd2546125642%_)))
                                          (let ((_%lp-tl2546625655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2546425648%_)))
                                                (_%lp-hd2546525652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2546425648%_))))
                                            (_%loop2546325638%_
                                             _%lp-tl2546625655%_
                                             (cons _%lp-hd2546525652%_
                                                   _%arg2546725645%_))))
                                        (let ((_%arg2546825658%_
                                               (reverse _%arg2546725645%_)))
                                          (let ((_%L25662%_ _%arg2546825658%_)
                                                (_%L25664%_ _%hd2545825626%_)
                                                (_%L25665%_ _%hd2545525616%_))
                                            (if (and (gx#identifier?
                                                      _%L25665%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2568425687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2568525690%_)
                       (cons _%g2568425687%_ _%g2568525690%_))
                     '()
                     _%L25662%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2677626777%_
                                                 _%L25662%_
                                                 _%L25664%_
                                                 _%L25665%_)
                                                (_%__match2688426885%_
                                                 _%e2545125602%_
                                                 _%hd2545225606%_
                                                 _%tl2545325609%_
                                                 _%e2545425612%_
                                                 _%hd2545525616%_
                                                 _%tl2545625619%_
                                                 _%e2545725622%_
                                                 _%hd2545825626%_
                                                 _%tl2545925629%_
                                                 _%__splice2677826779%_
                                                 _%target2546025632%_
                                                 _%tl2546225635%_))))))))
                          (_%loop2546325638%_ _%target2546025632%_ '()))))
                     (_%__match2684426845%_
                      (lambda (_%e2545125602%_
                               _%hd2545225606%_
                               _%tl2545325609%_
                               _%e2545425612%_
                               _%hd2545525616%_
                               _%tl2545625619%_)
                        (if (gx#stx-pair? _%tl2545625619%_)
                            (let ((_%e2545725622%_
                                   (gx#syntax-e _%tl2545625619%_)))
                              (let ((_%tl2545925629%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2545725622%_)))
                                    (_%hd2545825626%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2545725622%_))))
                                (if (gx#stx-pair/null? _%tl2545925629%_)
                                    (let ((_%__splice2677826779%_
                                           (gx#syntax-split-splice
                                            _%tl2545925629%_
                                            '0)))
                                      (let ((_%tl2546225635%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2677826779%_
                                                '1)))
                                            (_%target2546025632%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2677826779%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2546225635%_)
                                            (_%__match2685826859%_
                                             _%e2545125602%_
                                             _%hd2545225606%_
                                             _%tl2545325609%_
                                             _%e2545425612%_
                                             _%hd2545525616%_
                                             _%tl2545625619%_
                                             _%e2545725622%_
                                             _%hd2545825626%_
                                             _%tl2545925629%_
                                             _%__splice2677826779%_
                                             _%target2546025632%_
                                             _%tl2546225635%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2540825495%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2540825495%_)))))
                            (let () (declare (not safe)) (_%g2540825495%_)))))
                     (_%__match2683226833%_
                      (lambda (_%e2543325708%_
                               _%hd2543425712%_
                               _%tl2543525715%_
                               _%e2543625718%_
                               _%hd2543725722%_
                               _%tl2543825725%_
                               _%__splice2677426775%_
                               _%target2543925728%_
                               _%tl2544125731%_)
                        (letrec ((_%loop2544225734%_
                                  (lambda (_%hd2544025738%_ _%arg2544625741%_)
                                    (if (gx#stx-pair? _%hd2544025738%_)
                                        (let ((_%e2544325744%_
                                               (gx#syntax-e _%hd2544025738%_)))
                                          (let ((_%lp-tl2544525751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2544325744%_)))
                                                (_%lp-hd2544425748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2544325744%_))))
                                            (_%loop2544225734%_
                                             _%lp-tl2544525751%_
                                             (cons _%lp-hd2544425748%_
                                                   _%arg2544625741%_))))
                                        (let ((_%arg2544725754%_
                                               (reverse _%arg2544625741%_)))
                                          (let ((_%L25758%_ _%arg2544725754%_)
                                                (_%L25760%_ _%hd2543725722%_))
                                            (if (_%dotted-identifier?25401%_
                                                 _%L25760%_)
                                                (_%__kont2677226773%_
                                                 _%L25758%_
                                                 _%L25760%_)
                                                (_%__match2684426845%_
                                                 _%e2543325708%_
                                                 _%hd2543425712%_
                                                 _%tl2543525715%_
                                                 _%e2543625718%_
                                                 _%hd2543725722%_
                                                 _%tl2543825725%_))))))))
                          (_%loop2544225734%_ _%target2543925728%_ '()))))
                     (_%__match2683026831%_
                      (lambda (_%e2543325708%_
                               _%hd2543425712%_
                               _%tl2543525715%_
                               _%e2543625718%_
                               _%hd2543725722%_
                               _%tl2543825725%_
                               _%__splice2677426775%_
                               _%target2543925728%_
                               _%tl2544125731%_)
                        (if (gx#stx-null? _%tl2544125731%_)
                            (_%__match2683226833%_
                             _%e2543325708%_
                             _%hd2543425712%_
                             _%tl2543525715%_
                             _%e2543625718%_
                             _%hd2543725722%_
                             _%tl2543825725%_
                             _%__splice2677426775%_
                             _%target2543925728%_
                             _%tl2544125731%_)
                            (if (gx#stx-pair? _%tl2543825725%_)
                                (let ((_%e2545725622%_
                                       (gx#syntax-e _%tl2543825725%_)))
                                  (let ((_%tl2545925629%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2545725622%_)))
                                        (_%hd2545825626%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2545725622%_))))
                                    (if (gx#stx-pair/null? _%tl2545925629%_)
                                        (let ((_%__splice2677826779%_
                                               (gx#syntax-split-splice
                                                _%tl2545925629%_
                                                '0)))
                                          (let ((_%tl2546225635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677826779%_
                                                    '1)))
                                                (_%target2546025632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677826779%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2546225635%_)
                                                (_%__match2685826859%_
                                                 _%e2543325708%_
                                                 _%hd2543425712%_
                                                 _%tl2543525715%_
                                                 _%e2543625718%_
                                                 _%hd2543725722%_
                                                 _%tl2543825725%_
                                                 _%e2545725622%_
                                                 _%hd2545825626%_
                                                 _%tl2545925629%_
                                                 _%__splice2677826779%_
                                                 _%target2546025632%_
                                                 _%tl2546225635%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2540825495%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2540825495%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2540825495%_))))))
                     (_%__match2681226813%_
                      (lambda (_%e2541325856%_
                               _%hd2541425860%_
                               _%tl2541525863%_
                               _%e2541625866%_
                               _%hd2541725870%_
                               _%tl2541825873%_
                               _%__splice2677026771%_
                               _%target2541925876%_
                               _%tl2542125879%_
                               _%e2542825882%_
                               _%hd2542925886%_
                               _%tl2543025889%_)
                        (letrec ((_%loop2542225892%_
                                  (lambda (_%hd2542025896%_ _%arg2542625899%_)
                                    (if (gx#stx-pair? _%hd2542025896%_)
                                        (let ((_%e2542325902%_
                                               (gx#syntax-e _%hd2542025896%_)))
                                          (let ((_%lp-tl2542525909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2542325902%_)))
                                                (_%lp-hd2542425906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2542325902%_))))
                                            (_%loop2542225892%_
                                             _%lp-tl2542525909%_
                                             (cons _%lp-hd2542425906%_
                                                   _%arg2542625899%_))))
                                        (let ((_%arg2542725912%_
                                               (reverse _%arg2542625899%_)))
                                          (let ((_%L25916%_ _%hd2542925886%_)
                                                (_%L25918%_ _%arg2542725912%_)
                                                (_%L25919%_ _%hd2541725870%_))
                                            (if (and (_%dotted-identifier?25401%_
                                                      _%L25919%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2593825941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2593925944%_)
                       (cons _%g2593825941%_ _%g2593925944%_))
                     '()
                     _%L25918%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2676826769%_
                                                 _%L25916%_
                                                 _%L25918%_
                                                 _%L25919%_)
                                                (let ((_%__splice2677426775%_
                                                       (gx#syntax-split-splice
                                                        _%tl2541825873%_
                                                        '0)))
                                                  (let ((_%tl2544125731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677426775%_
                                                            '1)))
                                                        (_%target2543925728%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677426775%_
                                                            '0))))
                                                    (_%__match2683026831%_
                                                     _%e2541325856%_
                                                     _%hd2541425860%_
                                                     _%tl2541525863%_
                                                     _%e2541625866%_
                                                     _%hd2541725870%_
                                                     _%tl2541825873%_
                                                     _%__splice2677426775%_
                                                     _%target2543925728%_
                                                     _%tl2544125731%_))))))))))
                          (_%loop2542225892%_ _%target2541925876%_ '())))))
                (if (gx#stx-pair? _%__stx2676526766%_)
                    (let ((_%e2541325856%_ (gx#syntax-e _%__stx2676526766%_)))
                      (let ((_%tl2541525863%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2541325856%_)))
                            (_%hd2541425860%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2541325856%_))))
                        (if (gx#stx-pair? _%tl2541525863%_)
                            (let ((_%e2541625866%_
                                   (gx#syntax-e _%tl2541525863%_)))
                              (let ((_%tl2541825873%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2541625866%_)))
                                    (_%hd2541725870%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2541625866%_))))
                                (if (gx#stx-pair/null? _%tl2541825873%_)
                                    (if (let ((__tmp27237
                                               (gx#stx-length
                                                _%tl2541825873%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27237 '1))
                                        (let ((_%__splice2677026771%_
                                               (gx#syntax-split-splice
                                                _%tl2541825873%_
                                                '1)))
                                          (let ((_%tl2542125879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677026771%_
                                                    '1)))
                                                (_%target2541925876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677026771%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2542125879%_)
                                                (let ((_%e2542825882%_
                                                       (gx#syntax-e
                                                        _%tl2542125879%_)))
                                                  (let ((_%tl2543025889%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2542825882%_)))
                                                        (_%hd2542925886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2542825882%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2543025889%_)
                                                        (_%__match2681226813%_
                                                         _%e2541325856%_
                                                         _%hd2541425860%_
                                                         _%tl2541525863%_
                                                         _%e2541625866%_
                                                         _%hd2541725870%_
                                                         _%tl2541825873%_
                                                         _%__splice2677026771%_
                                                         _%target2541925876%_
                                                         _%tl2542125879%_
                                                         _%e2542825882%_
                                                         _%hd2542925886%_
                                                         _%tl2543025889%_)
                                                        (let ((_%__splice2677426775%_
                                                               (gx#syntax-split-splice
                                                                _%tl2541825873%_
                                                                '0)))
                                                          (let ((_%tl2544125731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2677426775%_ '1)))
                        (_%target2543925728%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2677426775%_ '0))))
                    (if (gx#stx-null? _%tl2544125731%_)
                        (_%__match2683226833%_
                         _%e2541325856%_
                         _%hd2541425860%_
                         _%tl2541525863%_
                         _%e2541625866%_
                         _%hd2541725870%_
                         _%tl2541825873%_
                         _%__splice2677426775%_
                         _%target2543925728%_
                         _%tl2544125731%_)
                        (if (gx#stx-pair? _%tl2541825873%_)
                            (let ((_%e2545725622%_
                                   (gx#syntax-e _%tl2541825873%_)))
                              (let ((_%tl2545925629%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2545725622%_)))
                                    (_%hd2545825626%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2545725622%_))))
                                (if (gx#stx-pair/null? _%tl2545925629%_)
                                    (let ((_%__splice2677826779%_
                                           (gx#syntax-split-splice
                                            _%tl2545925629%_
                                            '0)))
                                      (let ((_%tl2546225635%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2677826779%_
                                                '1)))
                                            (_%target2546025632%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2677826779%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2546225635%_)
                                            (_%__match2685826859%_
                                             _%e2541325856%_
                                             _%hd2541425860%_
                                             _%tl2541525863%_
                                             _%e2541625866%_
                                             _%hd2541725870%_
                                             _%tl2541825873%_
                                             _%e2545725622%_
                                             _%hd2545825626%_
                                             _%tl2545925629%_
                                             _%__splice2677826779%_
                                             _%target2546025632%_
                                             _%tl2546225635%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2540825495%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2540825495%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2540825495%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2677426775%_
                                                       (gx#syntax-split-splice
                                                        _%tl2541825873%_
                                                        '0)))
                                                  (let ((_%tl2544125731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677426775%_
                                                            '1)))
                                                        (_%target2543925728%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677426775%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2544125731%_)
                                                        (_%__match2683226833%_
                                                         _%e2541325856%_
                                                         _%hd2541425860%_
                                                         _%tl2541525863%_
                                                         _%e2541625866%_
                                                         _%hd2541725870%_
                                                         _%tl2541825873%_
                                                         _%__splice2677426775%_
                                                         _%target2543925728%_
                                                         _%tl2544125731%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2541825873%_)
                                                            (let ((_%e2545725622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2541825873%_)))
                      (let ((_%tl2545925629%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2545725622%_)))
                            (_%hd2545825626%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2545725622%_))))
                        (if (gx#stx-pair/null? _%tl2545925629%_)
                            (let ((_%__splice2677826779%_
                                   (gx#syntax-split-splice
                                    _%tl2545925629%_
                                    '0)))
                              (let ((_%tl2546225635%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2677826779%_
                                        '1)))
                                    (_%target2546025632%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2677826779%_
                                        '0))))
                                (if (gx#stx-null? _%tl2546225635%_)
                                    (_%__match2685826859%_
                                     _%e2541325856%_
                                     _%hd2541425860%_
                                     _%tl2541525863%_
                                     _%e2541625866%_
                                     _%hd2541725870%_
                                     _%tl2541825873%_
                                     _%e2545725622%_
                                     _%hd2545825626%_
                                     _%tl2545925629%_
                                     _%__splice2677826779%_
                                     _%target2546025632%_
                                     _%tl2546225635%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2540825495%_)))))
                            (let () (declare (not safe)) (_%g2540825495%_)))))
                    (let () (declare (not safe)) (_%g2540825495%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2677426775%_
                                               (gx#syntax-split-splice
                                                _%tl2541825873%_
                                                '0)))
                                          (let ((_%tl2544125731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677426775%_
                                                    '1)))
                                                (_%target2543925728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2677426775%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2544125731%_)
                                                (_%__match2683226833%_
                                                 _%e2541325856%_
                                                 _%hd2541425860%_
                                                 _%tl2541525863%_
                                                 _%e2541625866%_
                                                 _%hd2541725870%_
                                                 _%tl2541825873%_
                                                 _%__splice2677426775%_
                                                 _%target2543925728%_
                                                 _%tl2544125731%_)
                                                (if (gx#stx-pair?
                                                     _%tl2541825873%_)
                                                    (let ((_%e2545725622%_
                                                           (gx#syntax-e
                                                            _%tl2541825873%_)))
                                                      (let ((_%tl2545925629%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2545725622%_)))
                    (_%hd2545825626%_
                     (let () (declare (not safe)) (##car _%e2545725622%_))))
                (if (gx#stx-pair/null? _%tl2545925629%_)
                    (let ((_%__splice2677826779%_
                           (gx#syntax-split-splice _%tl2545925629%_ '0)))
                      (let ((_%tl2546225635%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2677826779%_ '1)))
                            (_%target2546025632%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2677826779%_ '0))))
                        (if (gx#stx-null? _%tl2546225635%_)
                            (_%__match2685826859%_
                             _%e2541325856%_
                             _%hd2541425860%_
                             _%tl2541525863%_
                             _%e2541625866%_
                             _%hd2541725870%_
                             _%tl2541825873%_
                             _%e2545725622%_
                             _%hd2545825626%_
                             _%tl2545925629%_
                             _%__splice2677826779%_
                             _%target2546025632%_
                             _%tl2546225635%_)
                            (let () (declare (not safe)) (_%g2540825495%_)))))
                    (let () (declare (not safe)) (_%g2540825495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2540825495%_)))))))
                                    (if (gx#stx-pair? _%tl2541825873%_)
                                        (let ((_%e2545725622%_
                                               (gx#syntax-e _%tl2541825873%_)))
                                          (let ((_%tl2545925629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2545725622%_)))
                                                (_%hd2545825626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2545725622%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2545925629%_)
                                                (let ((_%__splice2677826779%_
                                                       (gx#syntax-split-splice
                                                        _%tl2545925629%_
                                                        '0)))
                                                  (let ((_%tl2546225635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677826779%_
                                                            '1)))
                                                        (_%target2546025632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2677826779%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2546225635%_)
                                                        (_%__match2685826859%_
                                                         _%e2541325856%_
                                                         _%hd2541425860%_
                                                         _%tl2541525863%_
                                                         _%e2541625866%_
                                                         _%hd2541725870%_
                                                         _%tl2541825873%_
                                                         _%e2545725622%_
                                                         _%hd2545825626%_
                                                         _%tl2545925629%_
                                                         _%__splice2677826779%_
                                                         _%target2546025632%_
                                                         _%tl2546225635%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2540825495%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2540825495%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2540825495%_))))))
                            (let () (declare (not safe)) (_%g2540825495%_)))))
                    (let () (declare (not safe)) (_%g2540825495%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26047%_)
        (let* ((_%__stx2688726888%_ _%$stx26047%_)
               (_%g2605226092%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2688726888%_))))
          (let ((_%__kont2689026891%_
                 (lambda (_%L26230%_ _%L26232%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26232%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26230%_ '()))
                                     '())))))
                (_%__kont2689226893%_
                 (lambda (_%L26159%_ _%L26161%_ _%L26162%_ _%L26163%_)
                   (cons _%L26163%_
                         (cons (cons _%L26163%_
                                     (cons _%L26162%_ (cons _%L26161%_ '())))
                               (foldr (lambda (_%g2618426187%_ _%g2618526190%_)
                                        (cons _%g2618426187%_ _%g2618526190%_))
                                      '()
                                      _%L26159%_))))))
            (let* ((_%__match2694226943%_
                    (lambda (_%e2606926099%_
                             _%hd2607026103%_
                             _%tl2607126106%_
                             _%e2607226109%_
                             _%hd2607326113%_
                             _%tl2607426116%_
                             _%e2607526119%_
                             _%hd2607626123%_
                             _%tl2607726126%_
                             _%__splice2689426895%_
                             _%target2607826129%_
                             _%tl2608026132%_)
                      (letrec ((_%loop2608126135%_
                                (lambda (_%hd2607926139%_ _%rest2608526142%_)
                                  (if (gx#stx-pair? _%hd2607926139%_)
                                      (let ((_%e2608226145%_
                                             (gx#syntax-e _%hd2607926139%_)))
                                        (let ((_%lp-tl2608426152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2608226145%_)))
                                              (_%lp-hd2608326149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2608226145%_))))
                                          (_%loop2608126135%_
                                           _%lp-tl2608426152%_
                                           (cons _%lp-hd2608326149%_
                                                 _%rest2608526142%_))))
                                      (let ((_%rest2608626155%_
                                             (reverse _%rest2608526142%_)))
                                        (_%__kont2689226893%_
                                         _%rest2608626155%_
                                         _%hd2607626123%_
                                         _%hd2607326113%_
                                         _%hd2607026103%_))))))
                        (_%loop2608126135%_ _%target2607826129%_ '()))))
                   (_%__match2691626917%_
                    (lambda (_%e2605626200%_
                             _%hd2605726204%_
                             _%tl2605826207%_
                             _%e2605926210%_
                             _%hd2606026214%_
                             _%tl2606126217%_
                             _%e2606226220%_
                             _%hd2606326224%_
                             _%tl2606426227%_)
                      (let ((_%L26230%_ _%hd2606326224%_)
                            (_%L26232%_ _%hd2606026214%_))
                        (if (gx#identifier? _%L26230%_)
                            (_%__kont2689026891%_ _%L26230%_ _%L26232%_)
                            (if (gx#stx-pair/null? _%tl2606426227%_)
                                (let ((_%__splice2689426895%_
                                       (gx#syntax-split-splice
                                        _%tl2606426227%_
                                        '0)))
                                  (let ((_%tl2608026132%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2689426895%_
                                            '1)))
                                        (_%target2607826129%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2689426895%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2608026132%_)
                                        (_%__match2694226943%_
                                         _%e2605626200%_
                                         _%hd2605726204%_
                                         _%tl2605826207%_
                                         _%e2605926210%_
                                         _%hd2606026214%_
                                         _%tl2606126217%_
                                         _%e2606226220%_
                                         _%hd2606326224%_
                                         _%tl2606426227%_
                                         _%__splice2689426895%_
                                         _%target2607826129%_
                                         _%tl2608026132%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2605226092%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2605226092%_))))))))
              (if (gx#stx-pair? _%__stx2688726888%_)
                  (let ((_%e2605626200%_ (gx#syntax-e _%__stx2688726888%_)))
                    (let ((_%tl2605826207%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2605626200%_)))
                          (_%hd2605726204%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2605626200%_))))
                      (if (gx#stx-pair? _%tl2605826207%_)
                          (let ((_%e2605926210%_
                                 (gx#syntax-e _%tl2605826207%_)))
                            (let ((_%tl2606126217%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2605926210%_)))
                                  (_%hd2606026214%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2605926210%_))))
                              (if (gx#stx-pair? _%tl2606126217%_)
                                  (let ((_%e2606226220%_
                                         (gx#syntax-e _%tl2606126217%_)))
                                    (let ((_%tl2606426227%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2606226220%_)))
                                          (_%hd2606326224%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2606226220%_))))
                                      (if (gx#stx-null? _%tl2606426227%_)
                                          (_%__match2691626917%_
                                           _%e2605626200%_
                                           _%hd2605726204%_
                                           _%tl2605826207%_
                                           _%e2605926210%_
                                           _%hd2606026214%_
                                           _%tl2606126217%_
                                           _%e2606226220%_
                                           _%hd2606326224%_
                                           _%tl2606426227%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2606426227%_)
                                              (let ((_%__splice2689426895%_
                                                     (gx#syntax-split-splice
                                                      _%tl2606426227%_
                                                      '0)))
                                                (let ((_%tl2608026132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2689426895%_
                                                          '1)))
                                                      (_%target2607826129%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2689426895%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2608026132%_)
                                                      (_%__match2694226943%_
                                                       _%e2605626200%_
                                                       _%hd2605726204%_
                                                       _%tl2605826207%_
                                                       _%e2605926210%_
                                                       _%hd2606026214%_
                                                       _%tl2606126217%_
                                                       _%e2606226220%_
                                                       _%hd2606326224%_
                                                       _%tl2606426227%_
                                                       _%__splice2689426895%_
                                                       _%target2607826129%_
                                                       _%tl2608026132%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2605226092%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2605226092%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2605226092%_)))))
                          (let () (declare (not safe)) (_%g2605226092%_)))))
                  (let () (declare (not safe)) (_%g2605226092%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26252%_)
        (let* ((_%__stx2694526946%_ _%$stx26252%_)
               (_%g2625726309%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2694526946%_))))
          (let ((_%__kont2694826949%_
                 (lambda (_%L26485%_ _%L26487%_ _%L26488%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26488%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26487%_ '()))
                                     (cons _%L26485%_ '()))))))
                (_%__kont2695026951%_
                 (lambda (_%L26396%_
                          _%L26398%_
                          _%L26399%_
                          _%L26400%_
                          _%L26401%_
                          _%L26402%_)
                   (cons _%L26402%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26401%_
                                           (cons _%L26400%_
                                                 (foldr (lambda (_%g2642926432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2643026435%_)
                  (cons _%g2642926432%_ _%g2643026435%_))
                '()
                _%L26399%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26398%_ (cons _%L26396%_ '())))))))
            (let* ((_%__match2702027021%_
                    (lambda (_%e2628026316%_
                             _%hd2628126320%_
                             _%tl2628226323%_
                             _%e2628326326%_
                             _%hd2628426330%_
                             _%tl2628526333%_
                             _%e2628626336%_
                             _%hd2628726340%_
                             _%tl2628826343%_
                             _%__splice2695226953%_
                             _%target2628926346%_
                             _%tl2629126349%_
                             _%e2629826352%_
                             _%hd2629926356%_
                             _%tl2630026359%_
                             _%e2630126362%_
                             _%hd2630226366%_
                             _%tl2630326369%_)
                      (letrec ((_%loop2629226372%_
                                (lambda (_%hd2629026376%_ _%path2629626379%_)
                                  (if (gx#stx-pair? _%hd2629026376%_)
                                      (let ((_%e2629326382%_
                                             (gx#syntax-e _%hd2629026376%_)))
                                        (let ((_%lp-tl2629526389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2629326382%_)))
                                              (_%lp-hd2629426386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2629326382%_))))
                                          (_%loop2629226372%_
                                           _%lp-tl2629526389%_
                                           (cons _%lp-hd2629426386%_
                                                 _%path2629626379%_))))
                                      (let ((_%path2629726392%_
                                             (reverse _%path2629626379%_)))
                                        (_%__kont2695026951%_
                                         _%hd2630226366%_
                                         _%hd2629926356%_
                                         _%path2629726392%_
                                         _%hd2628726340%_
                                         _%hd2628426330%_
                                         _%hd2628126320%_))))))
                        (_%loop2629226372%_ _%target2628926346%_ '()))))
                   (_%__match2698026981%_
                    (lambda (_%e2626226445%_
                             _%hd2626326449%_
                             _%tl2626426452%_
                             _%e2626526455%_
                             _%hd2626626459%_
                             _%tl2626726462%_
                             _%e2626826465%_
                             _%hd2626926469%_
                             _%tl2627026472%_
                             _%e2627126475%_
                             _%hd2627226479%_
                             _%tl2627326482%_)
                      (let ((_%L26485%_ _%hd2627226479%_)
                            (_%L26487%_ _%hd2626926469%_)
                            (_%L26488%_ _%hd2626626459%_))
                        (if (gx#identifier? _%L26487%_)
                            (_%__kont2694826949%_
                             _%L26485%_
                             _%L26487%_
                             _%L26488%_)
                            (if (gx#stx-pair/null? _%tl2627026472%_)
                                (if (let ((__tmp27238
                                           (gx#stx-length _%tl2627026472%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27238 '2))
                                    (let ((_%__splice2695226953%_
                                           (gx#syntax-split-splice
                                            _%tl2627026472%_
                                            '2)))
                                      (let ((_%tl2629126349%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2695226953%_
                                                '1)))
                                            (_%target2628926346%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2695226953%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2629126349%_)
                                            (let ((_%e2629826352%_
                                                   (gx#syntax-e
                                                    _%tl2629126349%_)))
                                              (let ((_%tl2630026359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2629826352%_)))
                                                    (_%hd2629926356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2629826352%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2630026359%_)
                                                    (let ((_%e2630126362%_
                                                           (gx#syntax-e
                                                            _%tl2630026359%_)))
                                                      (let ((_%tl2630326369%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2630126362%_)))
                    (_%hd2630226366%_
                     (let () (declare (not safe)) (##car _%e2630126362%_))))
                (if (gx#stx-null? _%tl2630326369%_)
                    (_%__match2702027021%_
                     _%e2626226445%_
                     _%hd2626326449%_
                     _%tl2626426452%_
                     _%e2626526455%_
                     _%hd2626626459%_
                     _%tl2626726462%_
                     _%e2626826465%_
                     _%hd2626926469%_
                     _%tl2627026472%_
                     _%__splice2695226953%_
                     _%target2628926346%_
                     _%tl2629126349%_
                     _%e2629826352%_
                     _%hd2629926356%_
                     _%tl2630026359%_
                     _%e2630126362%_
                     _%hd2630226366%_
                     _%tl2630326369%_)
                    (let () (declare (not safe)) (_%g2625726309%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2625726309%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2625726309%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2625726309%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2625726309%_))))))))
              (if (gx#stx-pair? _%__stx2694526946%_)
                  (let ((_%e2626226445%_ (gx#syntax-e _%__stx2694526946%_)))
                    (let ((_%tl2626426452%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2626226445%_)))
                          (_%hd2626326449%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2626226445%_))))
                      (if (gx#stx-pair? _%tl2626426452%_)
                          (let ((_%e2626526455%_
                                 (gx#syntax-e _%tl2626426452%_)))
                            (let ((_%tl2626726462%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2626526455%_)))
                                  (_%hd2626626459%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2626526455%_))))
                              (if (gx#stx-pair? _%tl2626726462%_)
                                  (let ((_%e2626826465%_
                                         (gx#syntax-e _%tl2626726462%_)))
                                    (let ((_%tl2627026472%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2626826465%_)))
                                          (_%hd2626926469%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2626826465%_))))
                                      (if (gx#stx-pair? _%tl2627026472%_)
                                          (let ((_%e2627126475%_
                                                 (gx#syntax-e
                                                  _%tl2627026472%_)))
                                            (let ((_%tl2627326482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2627126475%_)))
                                                  (_%hd2627226479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2627126475%_))))
                                              (if (gx#stx-null?
                                                   _%tl2627326482%_)
                                                  (_%__match2698026981%_
                                                   _%e2626226445%_
                                                   _%hd2626326449%_
                                                   _%tl2626426452%_
                                                   _%e2626526455%_
                                                   _%hd2626626459%_
                                                   _%tl2626726462%_
                                                   _%e2626826465%_
                                                   _%hd2626926469%_
                                                   _%tl2627026472%_
                                                   _%e2627126475%_
                                                   _%hd2627226479%_
                                                   _%tl2627326482%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2627026472%_)
                                                      (if (let ((__tmp27239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2627026472%_)))
                    (declare (not safe))
                    (##fx>= __tmp27239 '2))
                  (let ((_%__splice2695226953%_
                         (gx#syntax-split-splice _%tl2627026472%_ '2)))
                    (let ((_%tl2629126349%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2695226953%_ '1)))
                          (_%target2628926346%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2695226953%_ '0))))
                      (if (gx#stx-pair? _%tl2629126349%_)
                          (let ((_%e2629826352%_
                                 (gx#syntax-e _%tl2629126349%_)))
                            (let ((_%tl2630026359%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2629826352%_)))
                                  (_%hd2629926356%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2629826352%_))))
                              (if (gx#stx-pair? _%tl2630026359%_)
                                  (let ((_%e2630126362%_
                                         (gx#syntax-e _%tl2630026359%_)))
                                    (let ((_%tl2630326369%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2630126362%_)))
                                          (_%hd2630226366%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2630126362%_))))
                                      (if (gx#stx-null? _%tl2630326369%_)
                                          (_%__match2702027021%_
                                           _%e2626226445%_
                                           _%hd2626326449%_
                                           _%tl2626426452%_
                                           _%e2626526455%_
                                           _%hd2626626459%_
                                           _%tl2626726462%_
                                           _%e2626826465%_
                                           _%hd2626926469%_
                                           _%tl2627026472%_
                                           _%__splice2695226953%_
                                           _%target2628926346%_
                                           _%tl2629126349%_
                                           _%e2629826352%_
                                           _%hd2629926356%_
                                           _%tl2630026359%_
                                           _%e2630126362%_
                                           _%hd2630226366%_
                                           _%tl2630326369%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2625726309%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2625726309%_)))))
                          (let () (declare (not safe)) (_%g2625726309%_)))))
                  (let () (declare (not safe)) (_%g2625726309%_)))
              (let () (declare (not safe)) (_%g2625726309%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2627026472%_)
                                              (if (let ((__tmp27240
                                                         (gx#stx-length
                                                          _%tl2627026472%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27240 '2))
                                                  (let ((_%__splice2695226953%_
                                                         (gx#syntax-split-splice
                                                          _%tl2627026472%_
                                                          '2)))
                                                    (let ((_%tl2629126349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2695226953%_
                                                              '1)))
                                                          (_%target2628926346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2695226953%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2629126349%_)
                                                          (let ((_%e2629826352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2629126349%_)))
                    (let ((_%tl2630026359%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2629826352%_)))
                          (_%hd2629926356%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2629826352%_))))
                      (if (gx#stx-pair? _%tl2630026359%_)
                          (let ((_%e2630126362%_
                                 (gx#syntax-e _%tl2630026359%_)))
                            (let ((_%tl2630326369%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2630126362%_)))
                                  (_%hd2630226366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2630126362%_))))
                              (if (gx#stx-null? _%tl2630326369%_)
                                  (_%__match2702027021%_
                                   _%e2626226445%_
                                   _%hd2626326449%_
                                   _%tl2626426452%_
                                   _%e2626526455%_
                                   _%hd2626626459%_
                                   _%tl2626726462%_
                                   _%e2626826465%_
                                   _%hd2626926469%_
                                   _%tl2627026472%_
                                   _%__splice2695226953%_
                                   _%target2628926346%_
                                   _%tl2629126349%_
                                   _%e2629826352%_
                                   _%hd2629926356%_
                                   _%tl2630026359%_
                                   _%e2630126362%_
                                   _%hd2630226366%_
                                   _%tl2630326369%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2625726309%_)))))
                          (let () (declare (not safe)) (_%g2625726309%_)))))
                  (let () (declare (not safe)) (_%g2625726309%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2625726309%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2625726309%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2625726309%_)))))
                          (let () (declare (not safe)) (_%g2625726309%_)))))
                  (let () (declare (not safe)) (_%g2625726309%_))))))))))
