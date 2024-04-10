(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27316_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24870%_)
        (letrec ((_%body-opt?24873%_
                  (lambda (_%key24876%_)
                    (let ((__tmp27288 (gx#stx-e _%key24876%_)))
                      (declare (not safe))
                      (##memq __tmp27288
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _%stx24870%_ _%body-opt?24873%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22636%_
               _%id22638%_
               _%super-ref22639%_
               _%slots22640%_
               _%body22641%_)
        (letrec ((_%wrap22643%_
                  (lambda (_%e-stx24867%_)
                    (gx#stx-wrap-source
                     _%e-stx24867%_
                     (gx#stx-source _%stx22636%_))))
                 (_%make-id22645%_
                  (lambda _%args24864%_
                    (apply gx#stx-identifier _%id22638%_ _%args24864%_)))
                 (_%get-mixin-slots22646%_
                  (lambda (_%super24834%_ _%slots24836%_)
                    (letrec* ((_%tab24838%_ (make-hash-table-eq))
                              (_%dedup24840%_
                               (lambda (_%mixins24851%_)
                                 (let _%lp24854%_ ((_%rest24857%_
                                                    _%mixins24851%_)
                                                   (_%r24859%_ '()))
                                   (if (pair? _%rest24857%_)
                                       (let ((_%slot24861%_
                                              (car _%rest24857%_)))
                                         (if (hash-get
                                              _%tab24838%_
                                              _%slot24861%_)
                                             (_%lp24854%_
                                              (cdr _%rest24857%_)
                                              _%r24859%_)
                                             (begin
                                               (hash-put!
                                                _%tab24838%_
                                                _%slot24861%_
                                                '#t)
                                               (_%lp24854%_
                                                (cdr _%rest24857%_)
                                                (cons _%slot24861%_
                                                      _%r24859%_)))))
                                       (reverse _%r24859%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24842%_)
                         (hash-put! _%tab24838%_ (gx#stx-e _%slot24842%_) '#t))
                       _%slots24836%_)
                      (if (not _%super24834%_)
                          '()
                          (if (gx#identifier? _%super24834%_)
                              (_%dedup24840%_
                               (_%get-mixin-slots-r22647%_ _%super24834%_))
                              (_%dedup24840%_
                               (concatenate
                                (map _%get-mixin-slots-r22647%_
                                     _%super24834%_))))))))
                 (_%get-mixin-slots-r22647%_
                  (lambda (_%type-id24828%_)
                    (let ((_%info24831%_
                           (gx#syntax-local-value _%type-id24828%_)))
                      (let ((__tmp27290
                             (let ((__obj27105 _%info24831%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27105
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27105
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27105
                                    'slots))))
                            (__tmp27289
                             (concatenate
                              (map _%get-mixin-slots-r22647%_
                                   (let ((__obj27106 _%info24831%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27106
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27106
                                            '3
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27106
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27290 __tmp27289))))))
          (gx#check-duplicate-identifiers _%slots22640%_ _%stx22636%_)
          (let* ((_%name22649%_ (symbol->string (gx#stx-e _%id22638%_)))
                 (_%super22652%_
                  (map gx#syntax-local-value _%super-ref22639%_))
                 (_%struct?22655%_ (gx#stx-getq 'struct: _%body22641%_))
                 (_%g2265822666%_
                  (lambda (_%g2265922662%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2265922662%_)))
                 (_%g2265724824%_
                  (lambda (_%g2265922670%_)
                    ((lambda (_%L22673%_)
                       (let* ((_%g2268922697%_
                               (lambda (_%g2269022693%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2269022693%_)))
                              (_%g2268824820%_
                               (lambda (_%g2269022701%_)
                                 ((lambda (_%L22704%_)
                                    (let* ((_%g2271722725%_
                                            (lambda (_%g2271822721%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2271822721%_)))
                                           (_%g2271624816%_
                                            (lambda (_%g2271822729%_)
                                              ((lambda (_%L22732%_)
                                                 (let* ((_%g2274522753%_
                                                         (lambda (_%g2274622749%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2274622749%_)))
                                                        (_%g2274424812%_
                                                         (lambda (_%g2274622757%_)
                                                           ((lambda (_%L22760%_)
                                                              (let* ((_%g2277322781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2277422777%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2277422777%_)))
                             (_%g2277224808%_
                              (lambda (_%g2277422785%_)
                                ((lambda (_%L22788%_)
                                   (let* ((_%g2280122818%_
                                           (lambda (_%g2280222814%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2280222814%_)))
                                          (_%g2280024804%_
                                           (lambda (_%g2280222822%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2280222822%_)
                                                 (let ((_g27291_
                                                        (gx#syntax-split-splice
                                                         _%g2280222822%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27292_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27291_)
                          (##vector-length _g27291_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27292_ 2)))
                   (error "Context expects 2 values" _g27292_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2280422825%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27291_
                                                               0)))
                                                           (_%tl2280622828%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27291_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2280622828%_)
                                                           (letrec ((_%loop2280722831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2280522835%_ _%slot2281122838%_)
                               (if (gx#stx-pair? _%hd2280522835%_)
                                   (let ((_%e2280822841%_
                                          (gx#syntax-e _%hd2280522835%_)))
                                     (let ((_%lp-hd2280922845%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2280822841%_)))
                                           (_%lp-tl2281022848%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2280822841%_))))
                                       (_%loop2280722831%_
                                        _%lp-tl2281022848%_
                                        (cons _%lp-hd2280922845%_
                                              _%slot2281122838%_))))
                                   (let ((_%slot2281222851%_
                                          (reverse _%slot2281122838%_)))
                                     ((lambda (_%L22855%_)
                                        (let* ((_%g2287222889%_
                                                (lambda (_%g2287322885%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2287322885%_)))
                                               (_%g2287124795%_
                                                (lambda (_%g2287322893%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2287322893%_)
                                                      (let ((_g27293_
                                                             (gx#syntax-split-splice
                                                              _%g2287322893%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27293_)
                               (##vector-length _g27293_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27294_ 2)))
                        (error "Context expects 2 values" _g27294_)))
                  (let ((_%target2287522896%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27293_ 0)))
                        (_%tl2287722899%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27293_ 1))))
                    (if (gx#stx-null? _%tl2287722899%_)
                        (letrec ((_%loop2287822902%_
                                  (lambda (_%hd2287622906%_ _%getf2288222909%_)
                                    (if (gx#stx-pair? _%hd2287622906%_)
                                        (let ((_%e2287922912%_
                                               (gx#syntax-e _%hd2287622906%_)))
                                          (let ((_%lp-hd2288022916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2287922912%_)))
                                                (_%lp-tl2288122919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2287922912%_))))
                                            (_%loop2287822902%_
                                             _%lp-tl2288122919%_
                                             (cons _%lp-hd2288022916%_
                                                   _%getf2288222909%_))))
                                        (let ((_%getf2288322922%_
                                               (reverse _%getf2288222909%_)))
                                          ((lambda (_%L22926%_)
                                             (let* ((_%g2294322960%_
                                                     (lambda (_%g2294422956%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2294422956%_)))
                                                    (_%g2294224786%_
                                                     (lambda (_%g2294422964%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2294422964%_)
                                                           (let ((_g27295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2294422964%_ '0)))
                     (begin
                       (let ((_g27296_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27295_)
                                    (##vector-length _g27295_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27296_ 2)))
                             (error "Context expects 2 values" _g27296_)))
                       (let ((_%target2294622967%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27295_ 0)))
                             (_%tl2294822970%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27295_ 1))))
                         (if (gx#stx-null? _%tl2294822970%_)
                             (letrec ((_%loop2294922973%_
                                       (lambda (_%hd2294722977%_
                                                _%setf2295322980%_)
                                         (if (gx#stx-pair? _%hd2294722977%_)
                                             (let ((_%e2295022983%_
                                                    (gx#syntax-e
                                                     _%hd2294722977%_)))
                                               (let ((_%lp-hd2295122987%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2295022983%_)))
                                                     (_%lp-tl2295222990%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2295022983%_))))
                                                 (_%loop2294922973%_
                                                  _%lp-tl2295222990%_
                                                  (cons _%lp-hd2295122987%_
                                                        _%setf2295322980%_))))
                                             (let ((_%setf2295422993%_
                                                    (reverse _%setf2295322980%_)))
                                               ((lambda (_%L22997%_)
                                                  (let* ((_%mixin-slots23014%_
                                                          (_%get-mixin-slots22646%_
                                                           _%super-ref22639%_
                                                           _%slots22640%_))
                                                         (_%g2301723034%_
                                                          (lambda (_%g2301823030%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2301823030%_)))
                                                         (_%g2301624782%_
                                                          (lambda (_%g2301823038%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2301823038%_)
                        (let ((_g27297_
                               (gx#syntax-split-splice _%g2301823038%_ '0)))
                          (begin
                            (let ((_g27298_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27297_)
                                         (##vector-length _g27297_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27298_ 2)))
                                  (error "Context expects 2 values" _g27298_)))
                            (let ((_%target2302023041%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g27297_ 0)))
                                  (_%tl2302223044%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g27297_ 1))))
                              (if (gx#stx-null? _%tl2302223044%_)
                                  (letrec ((_%loop2302323047%_
                                            (lambda (_%hd2302123051%_
                                                     _%mixin-slot2302723054%_)
                                              (if (gx#stx-pair?
                                                   _%hd2302123051%_)
                                                  (let ((_%e2302423057%_
                                                         (gx#syntax-e
                                                          _%hd2302123051%_)))
                                                    (let ((_%lp-hd2302523061%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2302423057%_)))
                                                          (_%lp-tl2302623064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2302423057%_))))
                                                      (_%loop2302323047%_
                                                       _%lp-tl2302623064%_
                                                       (cons _%lp-hd2302523061%_
                                                             _%mixin-slot2302723054%_))))
                                                  (let ((_%mixin-slot2302823067%_
                                                         (reverse _%mixin-slot2302723054%_)))
                                                    ((lambda (_%L23071%_)
                                                       (let* ((_%g2308923106%_
                                                               (lambda (_%g2309023102%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2309023102%_)))
                      (_%g2308824773%_
                       (lambda (_%g2309023110%_)
                         (if (gx#stx-pair/null? _%g2309023110%_)
                             (let ((_g27299_
                                    (gx#syntax-split-splice
                                     _%g2309023110%_
                                     '0)))
                               (begin
                                 (let ((_g27300_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27299_)
                                              (##vector-length _g27299_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27300_ 2)))
                                       (error "Context expects 2 values"
                                              _g27300_)))
                                 (let ((_%target2309223113%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27299_ 0)))
                                       (_%tl2309423116%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27299_ 1))))
                                   (if (gx#stx-null? _%tl2309423116%_)
                                       (letrec ((_%loop2309523119%_
                                                 (lambda (_%hd2309323123%_
                                                          _%mixin-getf2309923126%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2309323123%_)
                                                       (let ((_%e2309623129%_
                                                              (gx#syntax-e
                                                               _%hd2309323123%_)))
                                                         (let ((_%lp-hd2309723133%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2309623129%_)))
                       (_%lp-tl2309823136%_
                        (let () (declare (not safe)) (##cdr _%e2309623129%_))))
                   (_%loop2309523119%_
                    _%lp-tl2309823136%_
                    (cons _%lp-hd2309723133%_ _%mixin-getf2309923126%_))))
               (let ((_%mixin-getf2310023139%_
                      (reverse _%mixin-getf2309923126%_)))
                 ((lambda (_%L23143%_)
                    (let* ((_%g2316023177%_
                            (lambda (_%g2316123173%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2316123173%_)))
                           (_%g2315924764%_
                            (lambda (_%g2316123181%_)
                              (if (gx#stx-pair/null? _%g2316123181%_)
                                  (let ((_g27301_
                                         (gx#syntax-split-splice
                                          _%g2316123181%_
                                          '0)))
                                    (begin
                                      (let ((_g27302_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27301_)
                                                   (##vector-length _g27301_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27302_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27302_)))
                                      (let ((_%target2316323184%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g27301_ 0)))
                                            (_%tl2316523187%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g27301_ 1))))
                                        (if (gx#stx-null? _%tl2316523187%_)
                                            (letrec ((_%loop2316623190%_
                                                      (lambda (_%hd2316423194%_
                                                               _%mixin-setf2317023197%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2316423194%_)
                                                            (let ((_%e2316723200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2316423194%_)))
                      (let ((_%lp-hd2316823204%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2316723200%_)))
                            (_%lp-tl2316923207%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2316723200%_))))
                        (_%loop2316623190%_
                         _%lp-tl2316923207%_
                         (cons _%lp-hd2316823204%_ _%mixin-setf2317023197%_))))
                    (let ((_%mixin-setf2317123210%_
                           (reverse _%mixin-setf2317023197%_)))
                      ((lambda (_%L23214%_)
                         (let* ((_%g2323123248%_
                                 (lambda (_%g2323223244%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2323223244%_)))
                                (_%g2323024747%_
                                 (lambda (_%g2323223252%_)
                                   (if (gx#stx-pair/null? _%g2323223252%_)
                                       (let ((_g27303_
                                              (gx#syntax-split-splice
                                               _%g2323223252%_
                                               '0)))
                                         (begin
                                           (let ((_g27304_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27303_)
                                                        (##vector-length
                                                         _g27303_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27304_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27304_)))
                                           (let ((_%target2323423255%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27303_ 0)))
                                                 (_%tl2323623258%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27303_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2323623258%_)
                                                 (letrec ((_%loop2323723261%_
                                                           (lambda (_%hd2323523265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2324123268%_)
                     (if (gx#stx-pair? _%hd2323523265%_)
                         (let ((_%e2323823271%_
                                (gx#syntax-e _%hd2323523265%_)))
                           (let ((_%lp-hd2323923275%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2323823271%_)))
                                 (_%lp-tl2324023278%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2323823271%_))))
                             (_%loop2323723261%_
                              _%lp-tl2324023278%_
                              (cons _%lp-hd2323923275%_ _%ugetf2324123268%_))))
                         (let ((_%ugetf2324223281%_
                                (reverse _%ugetf2324123268%_)))
                           ((lambda (_%L23285%_)
                              (let* ((_%g2330223319%_
                                      (lambda (_%g2330323315%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2330323315%_)))
                                     (_%g2330124730%_
                                      (lambda (_%g2330323323%_)
                                        (if (gx#stx-pair/null? _%g2330323323%_)
                                            (let ((_g27305_
                                                   (gx#syntax-split-splice
                                                    _%g2330323323%_
                                                    '0)))
                                              (begin
                                                (let ((_g27306_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27305_)
                                                             (##vector-length
                                                              _g27305_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27306_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2330523326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g27305_
                                                          0)))
                                                      (_%tl2330723329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g27305_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2330723329%_)
                                                      (letrec ((_%loop2330823332%_
                                                                (lambda (_%hd2330623336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2331223339%_)
                          (if (gx#stx-pair? _%hd2330623336%_)
                              (let ((_%e2330923342%_
                                     (gx#syntax-e _%hd2330623336%_)))
                                (let ((_%lp-hd2331023346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2330923342%_)))
                                      (_%lp-tl2331123349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2330923342%_))))
                                  (_%loop2330823332%_
                                   _%lp-tl2331123349%_
                                   (cons _%lp-hd2331023346%_
                                         _%usetf2331223339%_))))
                              (let ((_%usetf2331323352%_
                                     (reverse _%usetf2331223339%_)))
                                ((lambda (_%L23356%_)
                                   (let* ((_%g2337323390%_
                                           (lambda (_%g2337423386%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2337423386%_)))
                                          (_%g2337224713%_
                                           (lambda (_%g2337423394%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2337423394%_)
                                                 (let ((_g27307_
                                                        (gx#syntax-split-splice
                                                         _%g2337423394%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27308_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27307_)
                          (##vector-length _g27307_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27308_ 2)))
                   (error "Context expects 2 values" _g27308_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2337623397%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27307_
                                                               0)))
                                                           (_%tl2337823400%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27307_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2337823400%_)
                                                           (letrec ((_%loop2337923403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2337723407%_
                                      _%mixin-ugetf2338323410%_)
                               (if (gx#stx-pair? _%hd2337723407%_)
                                   (let ((_%e2338023413%_
                                          (gx#syntax-e _%hd2337723407%_)))
                                     (let ((_%lp-hd2338123417%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2338023413%_)))
                                           (_%lp-tl2338223420%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2338023413%_))))
                                       (_%loop2337923403%_
                                        _%lp-tl2338223420%_
                                        (cons _%lp-hd2338123417%_
                                              _%mixin-ugetf2338323410%_))))
                                   (let ((_%mixin-ugetf2338423423%_
                                          (reverse _%mixin-ugetf2338323410%_)))
                                     ((lambda (_%L23427%_)
                                        (let* ((_%g2344423461%_
                                                (lambda (_%g2344523457%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2344523457%_)))
                                               (_%g2344324696%_
                                                (lambda (_%g2344523465%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2344523465%_)
                                                      (let ((_g27309_
                                                             (gx#syntax-split-splice
                                                              _%g2344523465%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27309_)
                               (##vector-length _g27309_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27310_ 2)))
                        (error "Context expects 2 values" _g27310_)))
                  (let ((_%target2344723468%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27309_ 0)))
                        (_%tl2344923471%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27309_ 1))))
                    (if (gx#stx-null? _%tl2344923471%_)
                        (letrec ((_%loop2345023474%_
                                  (lambda (_%hd2344823478%_
                                           _%mixin-usetf2345423481%_)
                                    (if (gx#stx-pair? _%hd2344823478%_)
                                        (let ((_%e2345123484%_
                                               (gx#syntax-e _%hd2344823478%_)))
                                          (let ((_%lp-hd2345223488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2345123484%_)))
                                                (_%lp-tl2345323491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2345123484%_))))
                                            (_%loop2345023474%_
                                             _%lp-tl2345323491%_
                                             (cons _%lp-hd2345223488%_
                                                   _%mixin-usetf2345423481%_))))
                                        (let ((_%mixin-usetf2345523494%_
                                               (reverse _%mixin-usetf2345423481%_)))
                                          ((lambda (_%L23498%_)
                                             (let* ((_%type-slots23533%_
                                                     (if (gx#stx-null?
                                                          _%slots22640%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L22997%_
                                _%L22926%_
                                _%L22855%_)
                               (foldr (lambda (_%g2351823523%_
                                               _%g2351923526%_
                                               _%g2352023528%_
                                               _%g2352123530%_)
                                        (cons (cons _%g2352023528%_
                                                    (cons _%g2351923526%_
                                                          (cons _%g2351823523%_
                                                                '())))
                                              _%g2352123530%_))
                                      '()
                                      _%L22997%_
                                      _%L22926%_
                                      _%L22855%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23554%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots23014%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23214%_
                                _%L23143%_
                                _%L23071%_)
                               (foldr (lambda (_%g2353923544%_
                                               _%g2354023547%_
                                               _%g2354123549%_
                                               _%g2354223551%_)
                                        (cons (cons _%g2354123549%_
                                                    (cons _%g2354023547%_
                                                          (cons _%g2353923544%_
                                                                '())))
                                              _%g2354223551%_))
                                      '()
                                      _%L23214%_
                                      _%L23143%_
                                      _%L23071%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23561%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22641%_)))
                           (if _%$e23557%_ _%$e23557%_ _%id22638%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23568%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22641%_)))
                           (if _%$e23564%_
                               _%$e23564%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%L22673%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23583%_
                                                     (let ((_%$e23579%_
                                                            (let ((_%e2357023572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22641%_)))
                      (if _%e2357023572%_
                          (let ((_%e23576%_ _%e2357023572%_))
                            (cons 'constructor: (cons _%e23576%_ '())))
                          '#f))))
               (if _%$e23579%_ _%$e23579%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23621%_
                                                     (let* ((_%properties23586%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22641%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23601%_
                     (let ((_%$e23589%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22641%_))))
                       (if _%$e23589%_
                           ((lambda (_%print23593%_)
                              (let ((_%print23596%_
                                     (if (eq? _%print23593%_ '#t)
                                         _%slots22640%_
                                         _%print23593%_)))
                                (cons (cons 'print: _%print23596%_)
                                      _%properties23586%_)))
                            _%$e23589%_)
                           _%properties23586%_)))
                    (_%properties23616%_
                     (let ((_%$e23604%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22641%_))))
                       (if _%$e23604%_
                           ((lambda (_%equal23608%_)
                              (let ((_%equal23611%_
                                     (if (eq? _%equal23608%_ '#t)
                                         _%slots22640%_
                                         _%equal23608%_)))
                                (cons (cons 'equal: _%equal23611%_)
                                      _%properties23601%_)))
                            _%$e23604%_)
                           _%properties23601%_))))
               _%properties23616%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23662%_
                                                     (if (null? _%properties23621%_)
                                                         '()
                                                         (let* ((_%g2362423632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2362523628%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2362523628%_)))
                        (_%g2362323658%_
                         (lambda (_%g2362523636%_)
                           ((lambda (_%L23639%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%L23639%_ '()))
                                          '())))
                            _%g2362523636%_))))
                   (_%g2362323658%_ _%properties23621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23674%_
                                                     (let ((_%$e23665%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22641%_)))
                                                       (if _%$e23665%_
                                                           ((lambda (_%metaclass23669%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23669%_)
                          _%metaclass23669%_
                          '#f))
                    _%$e23665%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23677%_
                                                     (if _%metaclass23674%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23680%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22641%_)))
                                                    (_%type-struct23683%_
                                                     (cons 'struct:
                                                           (cons _%struct?22655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23686%_
                                                     (cons 'final:
                                                           (cons _%final?23680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2368923706%_
                                                     (lambda (_%g2369023702%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2369023702%_)))
                                                    (_%g2368824692%_
                                                     (lambda (_%g2369023710%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2369023710%_)
                                                           (let ((_g27311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2369023710%_ '0)))
                     (begin
                       (let ((_g27312_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27311_)
                                    (##vector-length _g27311_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27312_ 2)))
                             (error "Context expects 2 values" _g27312_)))
                       (let ((_%target2369223713%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27311_ 0)))
                             (_%tl2369423716%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27311_ 1))))
                         (if (gx#stx-null? _%tl2369423716%_)
                             (letrec ((_%loop2369523719%_
                                       (lambda (_%hd2369323723%_
                                                _%type-body2369923726%_)
                                         (if (gx#stx-pair? _%hd2369323723%_)
                                             (let ((_%e2369623729%_
                                                    (gx#syntax-e
                                                     _%hd2369323723%_)))
                                               (let ((_%lp-hd2369723733%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2369623729%_)))
                                                     (_%lp-tl2369823736%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2369623729%_))))
                                                 (_%loop2369523719%_
                                                  _%lp-tl2369823736%_
                                                  (cons _%lp-hd2369723733%_
                                                        _%type-body2369923726%_))))
                                             (let ((_%type-body2370023739%_
                                                    (reverse _%type-body2369923726%_)))
                                               ((lambda (_%L23743%_)
                                                  (let* ((_%g2376423772%_
                                                          (lambda (_%g2376523768%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2376523768%_)))
                                                         (_%g2376324680%_
                                                          (lambda (_%g2376523776%_)
                                                            ((lambda (_%L23779%_)
                                                               (let* ((_%g2379223800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2379323796%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2379323796%_)))
                              (_%g2379124609%_
                               (lambda (_%g2379323804%_)
                                 ((lambda (_%L23807%_)
                                    (let* ((_%g2382023828%_
                                            (lambda (_%g2382123824%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2382123824%_)))
                                           (_%g2381924574%_
                                            (lambda (_%g2382123832%_)
                                              ((lambda (_%L23835%_)
                                                 (let* ((_%g2384823856%_
                                                         (lambda (_%g2384923852%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2384923852%_)))
                                                        (_%g2384724488%_
                                                         (lambda (_%g2384923860%_)
                                                           ((lambda (_%L23863%_)
                                                              (let* ((_%g2387623884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2387723880%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2387723880%_)))
                             (_%g2387524476%_
                              (lambda (_%g2387723888%_)
                                ((lambda (_%L23891%_)
                                   (let* ((_%g2390423912%_
                                           (lambda (_%g2390523908%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2390523908%_)))
                                          (_%g2390324472%_
                                           (lambda (_%g2390523916%_)
                                             ((lambda (_%L23919%_)
                                                (let* ((_%g2393223940%_
                                                        (lambda (_%g2393323936%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2393323936%_)))
                                                       (_%g2393124468%_
                                                        (lambda (_%g2393323944%_)
                                                          ((lambda (_%L23947%_)
                                                             (let* ((_%g2396023968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2396123964%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2396123964%_)))
                            (_%g2395924433%_
                             (lambda (_%g2396123972%_)
                               ((lambda (_%L23975%_)
                                  (let* ((_%g2398823996%_
                                          (lambda (_%g2398923992%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2398923992%_)))
                                         (_%g2398724362%_
                                          (lambda (_%g2398924000%_)
                                            ((lambda (_%L24003%_)
                                               (let* ((_%g2401624024%_
                                                       (lambda (_%g2401724020%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2401724020%_)))
                                                      (_%g2401524358%_
                                                       (lambda (_%g2401724028%_)
                                                         ((lambda (_%L24031%_)
                                                            (let* ((_%g2404424052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2404524048%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2404524048%_)))
                           (_%g2404324354%_
                            (lambda (_%g2404524056%_)
                              ((lambda (_%L24059%_)
                                 (let* ((_%g2407224080%_
                                         (lambda (_%g2407324076%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2407324076%_)))
                                        (_%g2407124350%_
                                         (lambda (_%g2407324084%_)
                                           ((lambda (_%L24087%_)
                                              (let* ((_%g2410024108%_
                                                      (lambda (_%g2410124104%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2410124104%_)))
                                                     (_%g2409924324%_
                                                      (lambda (_%g2410124112%_)
                                                        ((lambda (_%L24115%_)
                                                           (let* ((_%g2412824136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2412924132%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2412924132%_)))
                          (_%g2412724298%_
                           (lambda (_%g2412924140%_)
                             ((lambda (_%L24143%_)
                                (let* ((_%g2415624164%_
                                        (lambda (_%g2415724160%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2415724160%_)))
                                       (_%g2415524272%_
                                        (lambda (_%g2415724168%_)
                                          ((lambda (_%L24171%_)
                                             (let* ((_%g2418424192%_
                                                     (lambda (_%g2418524188%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2418524188%_)))
                                                    (_%g2418324246%_
                                                     (lambda (_%g2418524196%_)
                                                       ((lambda (_%L24199%_)
                                                          (let* ((_%g2421224220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2421324216%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2421324216%_)))
                         (_%g2421124242%_
                          (lambda (_%g2421324224%_)
                            ((lambda (_%L24227%_)
                               (_%wrap22643%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%L23779%_
                                            (cons _%L24227%_ '())))))
                             _%g2421324224%_))))
                    (_%g2421124242%_
                     (_%wrap22643%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%L22673%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%L23807%_
                                                          (cons 'name:
                                                                (cons _%L23835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%L23891%_
                                          (cons 'super:
                                                (cons _%L23863%_
                                                      (cons 'struct?:
                                                            (cons _%L23919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%L23947%_
                                      (cons 'metaclass:
                                            (cons _%L23975%_
                                                  (cons 'constructor-method:
                                                        (cons _%L24003%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L24031%_
                                  (cons 'constructor:
                                        (cons _%L24059%_
                                              (cons 'predicate:
                                                    (cons _%L24087%_
                                                          (cons 'accessors:
                                                                (cons _%L24115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%L24143%_
                                          (cons 'unchecked-accessors:
                                                (cons _%L24171%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%L24199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2418524196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2418324246%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L23356%_
                                                         _%L22855%_)
                                                        (foldr (lambda (_%g2424924256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2425024259%_
                                _%g2425124261%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2425024259%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2424924256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2425124261%_))
                       (begin
                         (gx#syntax-check-splice-targets _%L23498%_ _%L23071%_)
                         (foldr (lambda (_%g2425224264%_
                                         _%g2425324267%_
                                         _%g2425424269%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2425324267%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2425224264%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2425424269%_))
                                '()
                                _%L23498%_
                                _%L23071%_))
                       _%L23356%_
                       _%L22855%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2415724168%_))))
                                  (_%g2415524272%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23285%_
                                            _%L22855%_)
                                           (foldr (lambda (_%g2427524282%_
                                                           _%g2427624285%_
                                                           _%g2427724287%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2427624285%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2427524282%_ '()))
                                          '()))))
                  _%g2427724287%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23427%_
                                                     _%L23071%_)
                                                    (foldr (lambda (_%g2427824290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2427924293%_
                            _%g2428024295%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2427924293%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2427824290%_
                                                               '()))
                                                   '()))))
                           _%g2428024295%_))
                   '()
                   _%L23427%_
                   _%L23071%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23285%_
                                                  _%L22855%_))))))
                              _%g2412924140%_))))
                     (_%g2412724298%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%L22997%_
                               _%L22855%_)
                              (foldr (lambda (_%g2430124308%_
                                              _%g2430224311%_
                                              _%g2430324313%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2430224311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2430124308%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2430324313%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%L23214%_
                                        _%L23071%_)
                                       (foldr (lambda (_%g2430424316%_
                                                       _%g2430524319%_
                                                       _%g2430624321%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2430524319%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2430424316%_ '()))
                                      '()))))
              _%g2430624321%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L23214%_
                                              _%L23071%_))
                                     _%L22997%_
                                     _%L22855%_))))))
                 _%g2410124112%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2409924324%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%L22926%_
                                                          _%L22855%_)
                                                         (foldr (lambda (_%g2432724334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2432824337%_
                                 _%g2432924339%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2432824337%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2432724334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2432924339%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%L23143%_
                           _%L23071%_)
                          (foldr (lambda (_%g2433024342%_
                                          _%g2433124345%_
                                          _%g2433224347%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2433124345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2433024342%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2433224347%_))
                                 '()
                                 _%L23143%_
                                 _%L23071%_))
                        _%L22926%_
                        _%L22855%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2407324084%_))))
                                   (_%g2407124350%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%L22760%_ '())))))
                               _%g2404524056%_))))
                      (_%g2404324354%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%L22732%_ '())))))
                  _%g2401724028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2401524358%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%L22704%_
                                                              '())))))
                                             _%g2398924000%_))))
                                    (_%g2398724362%_
                                     (if (null? _%type-constructor23583%_)
                                         '#f
                                         (let* ((_%g2436624381%_
                                                 (lambda (_%g2436724377%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2436724377%_)))
                                                (_%g2436524429%_
                                                 (lambda (_%g2436724385%_)
                                                   (if (gx#stx-pair?
                                                        _%g2436724385%_)
                                                       (let ((_%e2436924388%_
                                                              (gx#syntax-e
                                                               _%g2436724385%_)))
                                                         (let ((_%hd2437024392%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2436924388%_)))
                       (_%tl2437124395%_
                        (let () (declare (not safe)) (##cdr _%e2436924388%_))))
                   (if (gx#stx-datum? _%hd2437024392%_)
                       (let ((_%e2437224398%_ (gx#stx-e _%hd2437024392%_)))
                         (if (equal? _%e2437224398%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2437124395%_)
                                 (let ((_%e2437324402%_
                                        (gx#syntax-e _%tl2437124395%_)))
                                   (let ((_%hd2437424406%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2437324402%_)))
                                         (_%tl2437524409%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2437324402%_))))
                                     (if (gx#stx-null? _%tl2437524409%_)
                                         ((lambda (_%L24412%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L24412%_ '())))
                                          _%hd2437424406%_)
                                         (_%g2436624381%_ _%g2436724385%_))))
                                 (_%g2436624381%_ _%g2436724385%_))
                             (_%g2436624381%_ _%g2436724385%_)))
                       (_%g2436624381%_ _%g2436724385%_))))
               (_%g2436624381%_ _%g2436724385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2436524429%_
                                            _%type-constructor23583%_))))))
                                _%g2396123972%_))))
                       (_%g2395924433%_
                        (if _%metaclass23674%_
                            (let* ((_%g2443724445%_
                                    (lambda (_%g2443824441%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2443824441%_)))
                                   (_%g2443624464%_
                                    (lambda (_%g2443824449%_)
                                      ((lambda (_%L24452%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%L24452%_ '())))
                                       _%g2443824449%_))))
                              (_%g2443624464%_ _%metaclass23674%_))
                            '#f))))
                   _%g2393323944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2393124468%_
                                                   _%final?23680%_)))
                                              _%g2390523916%_))))
                                     (_%g2390324472%_ _%struct?22655%_)))
                                 _%g2387723888%_))))
                        (_%g2387524476%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2447924482%_
                                                     _%g2448024485%_)
                                              (cons _%g2447924482%_
                                                    _%g2448024485%_))
                                            '()
                                            _%L22855%_)
                                     '())))))
                    _%g2384923860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2384724488%_
                                                    (let* ((_%g2449224509%_
                                                            (lambda (_%g2449324505%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2449324505%_)))
                                                           (_%g2449124570%_
                                                            (lambda (_%g2449324513%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2449324513%_)
                          (let ((_g27313_
                                 (gx#syntax-split-splice _%g2449324513%_ '0)))
                            (begin
                              (let ((_g27314_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27313_)
                                           (##vector-length _g27313_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27314_ 2)))
                                    (error "Context expects 2 values"
                                           _g27314_)))
                              (let ((_%target2449524516%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27313_ 0)))
                                    (_%tl2449724519%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27313_ 1))))
                                (if (gx#stx-null? _%tl2449724519%_)
                                    (letrec ((_%loop2449824522%_
                                              (lambda (_%hd2449624526%_
                                                       _%super-id2450224529%_)
                                                (if (gx#stx-pair?
                                                     _%hd2449624526%_)
                                                    (let ((_%e2449924532%_
                                                           (gx#syntax-e
                                                            _%hd2449624526%_)))
                                                      (let ((_%lp-hd2450024536%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2449924532%_)))
                    (_%lp-tl2450124539%_
                     (let () (declare (not safe)) (##cdr _%e2449924532%_))))
                (_%loop2449824522%_
                 _%lp-tl2450124539%_
                 (cons _%lp-hd2450024536%_ _%super-id2450224529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2450324542%_
                                                           (reverse _%super-id2450224529%_)))
                                                      ((lambda (_%L24546%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2456124564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2456224567%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2456124564%_ '()))
                                      _%g2456224567%_))
                              '()
                              _%L24546%_)))
               _%super-id2450324542%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2449824522%_
                                       _%target2449524516%_
                                       '()))
                                    (_%g2449224509%_ _%g2449324513%_)))))
                          (_%g2449224509%_ _%g2449324513%_)))))
              (_%g2449124570%_ _%super-ref22639%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2382123832%_))))
                                      (_%g2381924574%_
                                       (let* ((_%g2457824586%_
                                               (lambda (_%g2457924582%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2457924582%_)))
                                              (_%g2457724605%_
                                               (lambda (_%g2457924590%_)
                                                 ((lambda (_%L24593%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L24593%_
                                                                '())))
                                                  _%g2457924590%_))))
                                         (_%g2457724605%_
                                          (cadr _%type-name23561%_))))))
                                  _%g2379323804%_))))
                         (_%g2379124609%_
                          (let* ((_%g2461324628%_
                                  (lambda (_%g2461424624%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2461424624%_)))
                                 (_%g2461224676%_
                                  (lambda (_%g2461424632%_)
                                    (if (gx#stx-pair? _%g2461424632%_)
                                        (let ((_%e2461624635%_
                                               (gx#syntax-e _%g2461424632%_)))
                                          (let ((_%hd2461724639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2461624635%_)))
                                                (_%tl2461824642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2461624635%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2461724639%_)
                                                (let ((_%e2461924645%_
                                                       (gx#stx-e
                                                        _%hd2461724639%_)))
                                                  (if (equal? _%e2461924645%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2461824642%_)
                                                          (let ((_%e2462024649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2461824642%_)))
                    (let ((_%hd2462124653%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2462024649%_)))
                          (_%tl2462224656%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2462024649%_))))
                      (if (gx#stx-null? _%tl2462224656%_)
                          ((lambda (_%L24659%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%L24659%_ '())))
                           _%hd2462124653%_)
                          (_%g2461324628%_ _%g2461424632%_))))
                  (_%g2461324628%_ _%g2461424632%_))
              (_%g2461324628%_ _%g2461424632%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2461324628%_
                                                 _%g2461424632%_))))
                                        (_%g2461324628%_ _%g2461424632%_)))))
                            (_%g2461224676%_ _%type-id23568%_)))))
                     _%g2376523776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2376324680%_
                                                     (_%wrap22643%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%L22704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L22788%_
                                (cons _%L22732%_
                                      (cons _%L22760%_
                                            (foldr (lambda (_%g2468324686%_
                                                            _%g2468424689%_)
                                                     (cons _%g2468324686%_
                                                           _%g2468424689%_))
                                                   '()
                                                   _%L23743%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2370023739%_))))))
                               (_%loop2369523719%_ _%target2369223713%_ '()))
                             (_%g2368923706%_ _%g2369023710%_)))))
                   (_%g2368923706%_ _%g2369023710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2368824692%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23554%_
                                                                _%type-slots23533%_)
                                                         _%type-properties23662%_)
                                                  _%type-metaclass23677%_)
                                           _%type-final23686%_)
                                    _%type-struct23683%_)
                             _%type-constructor23583%_)
                      _%type-name23561%_)
               _%type-id23568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2345523494%_))))))
                          (_%loop2345023474%_ _%target2344723468%_ '()))
                        (_%g2344423461%_ _%g2344523465%_)))))
              (_%g2344423461%_ _%g2344523465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2344324696%_
                                           (gx#stx-map
                                            (lambda (_%g2469924701%_)
                                              (_%make-id22645%_
                                               '"&"
                                               _%g2469924701%_))
                                            (foldr (lambda (_%g2470424707%_
                                                            _%g2470524710%_)
                                                     (cons _%g2470424707%_
                                                           _%g2470524710%_))
                                                   '()
                                                   _%L23214%_)))))
                                      _%mixin-ugetf2338423423%_))))))
                     (_%loop2337923403%_ _%target2337623397%_ '()))
                   (_%g2337323390%_ _%g2337423394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2337323390%_
                                                  _%g2337423394%_)))))
                                     (_%g2337224713%_
                                      (gx#stx-map
                                       (lambda (_%g2471624718%_)
                                         (_%make-id22645%_
                                          '"&"
                                          _%g2471624718%_))
                                       (foldr (lambda (_%g2472124724%_
                                                       _%g2472224727%_)
                                                (cons _%g2472124724%_
                                                      _%g2472224727%_))
                                              '()
                                              _%L23143%_)))))
                                 _%usetf2331323352%_))))))
                (_%loop2330823332%_ _%target2330523326%_ '()))
              (_%g2330223319%_ _%g2330323323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2330223319%_
                                             _%g2330323323%_)))))
                                (_%g2330124730%_
                                 (gx#stx-map
                                  (lambda (_%g2473324735%_)
                                    (_%make-id22645%_ '"&" _%g2473324735%_))
                                  (foldr (lambda (_%g2473824741%_
                                                  _%g2473924744%_)
                                           (cons _%g2473824741%_
                                                 _%g2473924744%_))
                                         '()
                                         _%L22997%_)))))
                            _%ugetf2324223281%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2323723261%_
                                                    _%target2323423255%_
                                                    '()))
                                                 (_%g2323123248%_
                                                  _%g2323223252%_)))))
                                       (_%g2323123248%_ _%g2323223252%_)))))
                           (_%g2323024747%_
                            (gx#stx-map
                             (lambda (_%g2475024752%_)
                               (_%make-id22645%_ '"&" _%g2475024752%_))
                             (foldr (lambda (_%g2475524758%_ _%g2475624761%_)
                                      (cons _%g2475524758%_ _%g2475624761%_))
                                    '()
                                    _%L22926%_)))))
                       _%mixin-setf2317123210%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2316623190%_
                                               _%target2316323184%_
                                               '()))
                                            (_%g2316023177%_
                                             _%g2316123181%_)))))
                                  (_%g2316023177%_ _%g2316123181%_)))))
                      (_%g2315924764%_
                       (gx#stx-map
                        (lambda (_%g2476724769%_)
                          (_%make-id22645%_
                           _%name22649%_
                           '"-"
                           _%g2476724769%_
                           '"-set!"))
                        _%mixin-slots23014%_))))
                  _%mixin-getf2310023139%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2309523119%_
                                          _%target2309223113%_
                                          '()))
                                       (_%g2308923106%_ _%g2309023110%_)))))
                             (_%g2308923106%_ _%g2309023110%_)))))
                 (_%g2308824773%_
                  (gx#stx-map
                   (lambda (_%g2477624778%_)
                     (_%make-id22645%_ _%name22649%_ '"-" _%g2477624778%_))
                   _%mixin-slots23014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2302823067%_))))))
                                    (_%loop2302323047%_
                                     _%target2302023041%_
                                     '()))
                                  (_%g2301723034%_ _%g2301823038%_)))))
                        (_%g2301723034%_ _%g2301823038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2301624782%_
                                                     _%mixin-slots23014%_)))
                                                _%setf2295422993%_))))))
                               (_%loop2294922973%_ _%target2294622967%_ '()))
                             (_%g2294322960%_ _%g2294422964%_)))))
                   (_%g2294322960%_ _%g2294422964%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2294224786%_
                                                (gx#stx-map
                                                 (lambda (_%g2478924791%_)
                                                   (_%make-id22645%_
                                                    _%name22649%_
                                                    '"-"
                                                    _%g2478924791%_
                                                    '"-set!"))
                                                 _%slots22640%_))))
                                           _%getf2288322922%_))))))
                          (_%loop2287822902%_ _%target2287522896%_ '()))
                        (_%g2287222889%_ _%g2287322893%_)))))
              (_%g2287222889%_ _%g2287322893%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2287124795%_
                                           (gx#stx-map
                                            (lambda (_%g2479824800%_)
                                              (_%make-id22645%_
                                               _%name22649%_
                                               '"-"
                                               _%g2479824800%_))
                                            _%slots22640%_))))
                                      _%slot2281222851%_))))))
                     (_%loop2280722831%_ _%target2280422825%_ '()))
                   (_%g2280122818%_ _%g2280222822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2280122818%_
                                                  _%g2280222822%_)))))
                                     (_%g2280024804%_ _%slots22640%_)))
                                 _%g2277422785%_))))
                        (_%g2277224808%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22652%_)))))
                    _%g2274622757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2274424812%_
                                                    (_%make-id22645%_
                                                     _%name22649%_
                                                     '"?"))))
                                               _%g2271822729%_))))
                                      (_%g2271624816%_
                                       (_%make-id22645%_
                                        '"make-"
                                        _%name22649%_))))
                                  _%g2269022701%_))))
                         (_%g2268824820%_
                          (_%make-id22645%_ _%name22649%_ '"::t"))))
                     _%g2265922670%_))))
            (_%g2265724824%_ _%id22638%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24891%_)
        (let* ((_%g2489524914%_
                (lambda (_%g2489624910%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2489624910%_)))
               (_%g2489424971%_
                (lambda (_%g2489624918%_)
                  (if (gx#stx-pair? _%g2489624918%_)
                      (let ((_%e2490024921%_ (gx#syntax-e _%g2489624918%_)))
                        (let ((_%hd2490124925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2490024921%_)))
                              (_%tl2490224928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2490024921%_))))
                          (if (gx#stx-pair? _%tl2490224928%_)
                              (let ((_%e2490324931%_
                                     (gx#syntax-e _%tl2490224928%_)))
                                (let ((_%hd2490424935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2490324931%_)))
                                      (_%tl2490524938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2490324931%_))))
                                  (if (gx#stx-pair? _%tl2490524938%_)
                                      (let ((_%e2490624941%_
                                             (gx#syntax-e _%tl2490524938%_)))
                                        (let ((_%hd2490724945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2490624941%_)))
                                              (_%tl2490824948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2490624941%_))))
                                          ((lambda (_%L24951%_
                                                    _%L24953%_
                                                    _%L24954%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24954%_
                                                         (cons _%L24953%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2490824948%_
                                           _%hd2490724945%_
                                           _%hd2490424935%_)))
                                      (_%g2489524914%_ _%g2489624918%_))))
                              (_%g2489524914%_ _%g2489624918%_))))
                      (_%g2489524914%_ _%g2489624918%_)))))
          (_%g2489424971%_ _%$stx24891%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24975%_)
        (letrec ((_%generate24978%_
                  (lambda (_%hd25062%_ _%slots25064%_ _%body25065%_)
                    (let* ((_%__stx2683026831%_ _%hd25062%_)
                           (_%g2506825080%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2683026831%_))))
                      (let ((_%__kont2683326834%_
                             (lambda (_%L25108%_ _%L25110%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24975%_
                                _%L25110%_
                                (gx#syntax->list _%L25108%_)
                                _%slots25064%_
                                _%body25065%_)))
                            (_%__kont2683526836%_
                             (lambda ()
                               (if (gx#identifier? _%hd25062%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24975%_
                                    _%hd25062%_
                                    '()
                                    _%slots25064%_
                                    _%body25065%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _%stx24975%_
                                    _%hd25062%_)))))
                        (let ((_%__match2684326844%_
                               (lambda (_%e2507225098%_
                                        _%hd2507325102%_
                                        _%tl2507425105%_)
                                 (let ((_%L25108%_ _%tl2507425105%_)
                                       (_%L25110%_ _%hd2507325102%_))
                                   (if (and (gx#stx-list? _%L25108%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25108%_))
                                       (_%__kont2683326834%_
                                        _%L25108%_
                                        _%L25110%_)
                                       (_%__kont2683526836%_))))))
                          (if (gx#stx-pair? _%__stx2683026831%_)
                              (let ((_%e2507225098%_
                                     (gx#syntax-e _%__stx2683026831%_)))
                                (let ((_%tl2507425105%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2507225098%_)))
                                      (_%hd2507325102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2507225098%_))))
                                  (_%__match2684326844%_
                                   _%e2507225098%_
                                   _%hd2507325102%_
                                   _%tl2507425105%_)))
                              (_%__kont2683526836%_))))))))
          (let* ((_%g2498125000%_
                  (lambda (_%g2498224996%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2498224996%_)))
                 (_%g2498025058%_
                  (lambda (_%g2498225004%_)
                    (if (gx#stx-pair? _%g2498225004%_)
                        (let ((_%e2498625007%_ (gx#syntax-e _%g2498225004%_)))
                          (let ((_%hd2498725011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2498625007%_)))
                                (_%tl2498825014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2498625007%_))))
                            (if (gx#stx-pair? _%tl2498825014%_)
                                (let ((_%e2498925017%_
                                       (gx#syntax-e _%tl2498825014%_)))
                                  (let ((_%hd2499025021%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2498925017%_)))
                                        (_%tl2499125024%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2498925017%_))))
                                    (if (gx#stx-pair? _%tl2499125024%_)
                                        (let ((_%e2499225027%_
                                               (gx#syntax-e _%tl2499125024%_)))
                                          (let ((_%hd2499325031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2499225027%_)))
                                                (_%tl2499425034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2499225027%_))))
                                            ((lambda (_%L25037%_
                                                      _%L25039%_
                                                      _%L25040%_)
                                               (if (and (gx#identifier-list?
                                                         _%L25039%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%L25037%_))
                                                   (_%generate24978%_
                                                    _%L25040%_
                                                    _%L25039%_
                                                    _%L25037%_)
                                                   (_%g2498125000%_
                                                    _%g2498225004%_)))
                                             _%tl2499425034%_
                                             _%hd2499325031%_
                                             _%hd2499025021%_)))
                                        (_%g2498125000%_ _%g2498225004%_))))
                                (_%g2498125000%_ _%g2498225004%_))))
                        (_%g2498125000%_ _%g2498225004%_)))))
            (_%g2498025058%_ _%stx24975%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25127%_)
        (letrec ((_%wrap25130%_
                  (lambda (_%e-stx25476%_)
                    (gx#stx-wrap-source
                     _%e-stx25476%_
                     (gx#stx-source _%stx25127%_))))
                 (_%method-opt?25132%_
                  (lambda (_%x25473%_)
                    (let ((__tmp27315 (gx#stx-e _%x25473%_)))
                      (declare (not safe))
                      (##memq __tmp27315 '(rebind:))))))
          (let* ((_%g2513425163%_
                  (lambda (_%g2513525159%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2513525159%_)))
                 (_%g2513325469%_
                  (lambda (_%g2513525167%_)
                    (if (gx#stx-pair? _%g2513525167%_)
                        (let ((_%e2514025170%_ (gx#syntax-e _%g2513525167%_)))
                          (let ((_%hd2514125174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2514025170%_)))
                                (_%tl2514225177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2514025170%_))))
                            (if (gx#stx-pair? _%tl2514225177%_)
                                (let ((_%e2514325180%_
                                       (gx#syntax-e _%tl2514225177%_)))
                                  (let ((_%hd2514425184%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2514325180%_)))
                                        (_%tl2514525187%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2514325180%_))))
                                    (if (gx#stx-pair? _%hd2514425184%_)
                                        (let ((_%e2514625190%_
                                               (gx#syntax-e _%hd2514425184%_)))
                                          (let ((_%hd2514725194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2514625190%_)))
                                                (_%tl2514825197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2514625190%_))))
                                            (if (gx#identifier?
                                                 _%hd2514725194%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27316_|
                                                     _%hd2514725194%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2514825197%_)
                                                        (let ((_%e2514925200%_
                                                               (gx#syntax-e
                                                                _%tl2514825197%_)))
                                                          (let ((_%hd2515025204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2514925200%_)))
                        (_%tl2515125207%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2514925200%_))))
                    (if (gx#stx-pair? _%tl2515125207%_)
                        (let ((_%e2515225210%_ (gx#syntax-e _%tl2515125207%_)))
                          (let ((_%hd2515325214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2515225210%_)))
                                (_%tl2515425217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2515225210%_))))
                            (if (gx#stx-null? _%tl2515425217%_)
                                (if (gx#stx-pair? _%tl2514525187%_)
                                    (let ((_%e2515525220%_
                                           (gx#syntax-e _%tl2514525187%_)))
                                      (let ((_%hd2515625224%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2515525220%_)))
                                            (_%tl2515725227%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2515525220%_))))
                                        ((lambda (_%L25230%_
                                                  _%L25232%_
                                                  _%L25233%_
                                                  _%L25234%_)
                                           (if (and (gx#identifier? _%L25234%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _%L25233%_))
                                                    (gx#stx-plist?
                                                     _%L25230%_
                                                     _%method-opt?25132%_))
                                               (let* ((_%klass25261%_
                                                       (gx#syntax-local-value
                                                        _%L25233%_))
                                                      (_%rebind?25264%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%L25230%_)))
                                                      (_%g2526725275%_
                                                       (lambda (_%g2526825271%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2526825271%_)))
                                                      (_%g2526625459%_
                                                       (lambda (_%g2526825279%_)
                                                         ((lambda (_%L25282%_)
                                                            (let* ((_%g2529725305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2529825301%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2529825301%_)))
                           (_%g2529625455%_
                            (lambda (_%g2529825309%_)
                              ((lambda (_%L25312%_)
                                 (let* ((_%g2532525333%_
                                         (lambda (_%g2532625329%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2532625329%_)))
                                        (_%g2532425451%_
                                         (lambda (_%g2532625337%_)
                                           ((lambda (_%L25340%_)
                                              (let* ((_%g2535325361%_
                                                      (lambda (_%g2535425357%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2535425357%_)))
                                                     (_%g2535225447%_
                                                      (lambda (_%g2535425365%_)
                                                        ((lambda (_%L25368%_)
                                                           (let* ((_%g2538125389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2538225385%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2538225385%_)))
                          (_%g2538025443%_
                           (lambda (_%g2538225393%_)
                             ((lambda (_%L25396%_)
                                (let* ((_%g2540925417%_
                                        (lambda (_%g2541025413%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2541025413%_)))
                                       (_%g2540825439%_
                                        (lambda (_%g2541025421%_)
                                          ((lambda (_%L25424%_)
                                             (_%wrap25130%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L25368%_
                                                          (cons _%L25424%_
                                                                '())))))
                                           _%g2541025421%_))))
                                  (_%g2540825439%_
                                   (_%wrap25130%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%L25282%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L25234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%L25312%_ (cons _%L25396%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2538225393%_))))
                     (_%g2538025443%_ _%rebind?25264%_)))
                 _%g2535425365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2535225447%_
                                                 (_%wrap25130%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%L25312%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%L25340%_
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
                                                      (cons _%L25282%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25234%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%L25232%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2532625337%_))))
                                   (_%g2532425451%_
                                    (gx#stx-identifier
                                     _%L25233%_
                                     '@next-method))))
                               _%g2529825309%_))))
                      (_%g2529625455%_
                       (gx#stx-identifier
                        _%L25233%_
                        _%L25233%_
                        '"::"
                        _%L25234%_))))
                  _%g2526825279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2526625459%_
                                                  (let ((__obj27107
                                                         _%klass25261%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27107
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27107
                                                           '12
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj27107
                                                         'type-descriptor)))))
                                               (if (not (gx#identifier?
                                                         _%L25234%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25127%_
                                                    _%L25234%_)
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                               _%L25233%_)))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; expected type identifier"
                                                        _%stx25127%_
                                                        _%L25233%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25127%_)))))
                                         _%tl2515725227%_
                                         _%hd2515625224%_
                                         _%hd2515325214%_
                                         _%hd2515025204%_)))
                                    (_%g2513425163%_ _%g2513525167%_))
                                (_%g2513425163%_ _%g2513525167%_))))
                        (_%g2513425163%_ _%g2513525167%_))))
                (_%g2513425163%_ _%g2513525167%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2513425163%_
                                                     _%g2513525167%_))
                                                (_%g2513425163%_
                                                 _%g2513525167%_))))
                                        (_%g2513425163%_ _%g2513525167%_))))
                                (_%g2513425163%_ _%g2513525167%_))))
                        (_%g2513425163%_ _%g2513525167%_)))))
            (_%g2513325469%_ _%stx25127%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25479%_)
        (letrec ((_%dotted-identifier?25482%_
                  (lambda (_%id26115%_)
                    (if (gx#identifier? _%id26115%_)
                        (let ((_%id-str26118%_
                               (symbol->string (gx#stx-e _%id26115%_))))
                          (if (string-index _%id-str26118%_ '#\.)
                              (let* ((_%split26121%_
                                      (string-split _%id-str26118%_ '#\.))
                                     (__tmp27317 (length _%split26121%_)))
                                (declare (not safe))
                                (##fx= __tmp27317 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25484%_
                  (lambda (_%id26104%_)
                    (let* ((_%id-str26107%_
                            (symbol->string (gx#stx-e _%id26104%_)))
                           (_%split26110%_
                            (string-split _%id-str26107%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26104%_
                             (car _%split26110%_))
                            (cons (gx#stx-identifier
                                   _%id26104%_
                                   (cadr _%split26110%_))
                                  '()))))))
          (let* ((_%__stx2684626847%_ _%stx25479%_)
                 (_%g2548925576%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2684626847%_))))
            (let ((_%__kont2684926850%_
                   (lambda (_%L25997%_ _%L25999%_ _%L26000%_)
                     (let* ((_%g2602826043%_
                             (lambda (_%g2602926039%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2602926039%_)))
                            (_%g2602726096%_
                             (lambda (_%g2602926047%_)
                               (if (gx#stx-pair? _%g2602926047%_)
                                   (let ((_%e2603226050%_
                                          (gx#syntax-e _%g2602926047%_)))
                                     (let ((_%hd2603326054%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2603226050%_)))
                                           (_%tl2603426057%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2603226050%_))))
                                       (if (gx#stx-pair? _%tl2603426057%_)
                                           (let ((_%e2603526060%_
                                                  (gx#syntax-e
                                                   _%tl2603426057%_)))
                                             (let ((_%hd2603626064%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2603526060%_)))
                                                   (_%tl2603726067%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2603526060%_))))
                                               (if (gx#stx-null?
                                                    _%tl2603726067%_)
                                                   ((lambda (_%L26070%_
                                                             _%L26072%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%L26072%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L26070%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2608726090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2608826093%_)
                   (cons _%g2608726090%_ _%g2608826093%_))
                 '()
                 _%L25999%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2603626064%_
                                                    _%hd2603326054%_)
                                                   (_%g2602826043%_
                                                    _%g2602926047%_))))
                                           (_%g2602826043%_ _%g2602926047%_))))
                                   (_%g2602826043%_ _%g2602926047%_)))))
                       (_%g2602726096%_ (_%split-dotted25484%_ _%L26000%_)))))
                  (_%__kont2685326854%_
                   (lambda (_%L25839%_ _%L25841%_)
                     (let* ((_%g2585825873%_
                             (lambda (_%g2585925869%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2585925869%_)))
                            (_%g2585725926%_
                             (lambda (_%g2585925877%_)
                               (if (gx#stx-pair? _%g2585925877%_)
                                   (let ((_%e2586225880%_
                                          (gx#syntax-e _%g2585925877%_)))
                                     (let ((_%hd2586325884%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2586225880%_)))
                                           (_%tl2586425887%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2586225880%_))))
                                       (if (gx#stx-pair? _%tl2586425887%_)
                                           (let ((_%e2586525890%_
                                                  (gx#syntax-e
                                                   _%tl2586425887%_)))
                                             (let ((_%hd2586625894%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2586525890%_)))
                                                   (_%tl2586725897%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2586525890%_))))
                                               (if (gx#stx-null?
                                                    _%tl2586725897%_)
                                                   ((lambda (_%L25900%_
                                                             _%L25902%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%L25902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25900%_ '()))
                                (foldr (lambda (_%g2591725920%_
                                                _%g2591825923%_)
                                         (cons _%g2591725920%_
                                               _%g2591825923%_))
                                       '()
                                       _%L25839%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2586625894%_
                                                    _%hd2586325884%_)
                                                   (_%g2585825873%_
                                                    _%g2585925877%_))))
                                           (_%g2585825873%_ _%g2585925877%_))))
                                   (_%g2585825873%_ _%g2585925877%_)))))
                       (_%g2585725926%_ (_%split-dotted25484%_ _%L25841%_)))))
                  (_%__kont2685726858%_
                   (lambda (_%L25743%_ _%L25745%_ _%L25746%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25745%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25746%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2577325776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2577425779%_)
                          (cons _%g2577325776%_ _%g2577425779%_))
                        '()
                        _%L25743%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2686126862%_
                   (lambda (_%L25643%_ _%L25645%_ _%L25646%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25645%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25646%_ '()))
                                       (foldr (lambda (_%g2566725670%_
                                                       _%g2566825673%_)
                                                (cons _%g2566725670%_
                                                      _%g2566825673%_))
                                              '()
                                              _%L25643%_)))))))
              (let* ((_%__match2696526966%_
                      (lambda (_%e2555325583%_
                               _%hd2555425587%_
                               _%tl2555525590%_
                               _%e2555625593%_
                               _%hd2555725597%_
                               _%tl2555825600%_
                               _%e2555925603%_
                               _%hd2556025607%_
                               _%tl2556125610%_
                               _%__splice2686326864%_
                               _%target2556225613%_
                               _%tl2556425616%_)
                        (letrec ((_%loop2556525619%_
                                  (lambda (_%hd2556325623%_ _%arg2556925626%_)
                                    (if (gx#stx-pair? _%hd2556325623%_)
                                        (let ((_%e2556625629%_
                                               (gx#syntax-e _%hd2556325623%_)))
                                          (let ((_%lp-tl2556825636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2556625629%_)))
                                                (_%lp-hd2556725633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2556625629%_))))
                                            (_%loop2556525619%_
                                             _%lp-tl2556825636%_
                                             (cons _%lp-hd2556725633%_
                                                   _%arg2556925626%_))))
                                        (let ((_%arg2557025639%_
                                               (reverse _%arg2556925626%_)))
                                          (let ((_%L25643%_ _%arg2557025639%_)
                                                (_%L25645%_ _%hd2556025607%_)
                                                (_%L25646%_ _%hd2555725597%_))
                                            (if (gx#identifier? _%L25646%_)
                                                (_%__kont2686126862%_
                                                 _%L25643%_
                                                 _%L25645%_
                                                 _%L25646%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2548925576%_)))))))))
                          (_%loop2556525619%_ _%target2556225613%_ '()))))
                     (_%__match2693926940%_
                      (lambda (_%e2553225683%_
                               _%hd2553325687%_
                               _%tl2553425690%_
                               _%e2553525693%_
                               _%hd2553625697%_
                               _%tl2553725700%_
                               _%e2553825703%_
                               _%hd2553925707%_
                               _%tl2554025710%_
                               _%__splice2685926860%_
                               _%target2554125713%_
                               _%tl2554325716%_)
                        (letrec ((_%loop2554425719%_
                                  (lambda (_%hd2554225723%_ _%arg2554825726%_)
                                    (if (gx#stx-pair? _%hd2554225723%_)
                                        (let ((_%e2554525729%_
                                               (gx#syntax-e _%hd2554225723%_)))
                                          (let ((_%lp-tl2554725736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2554525729%_)))
                                                (_%lp-hd2554625733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2554525729%_))))
                                            (_%loop2554425719%_
                                             _%lp-tl2554725736%_
                                             (cons _%lp-hd2554625733%_
                                                   _%arg2554825726%_))))
                                        (let ((_%arg2554925739%_
                                               (reverse _%arg2554825726%_)))
                                          (let ((_%L25743%_ _%arg2554925739%_)
                                                (_%L25745%_ _%hd2553925707%_)
                                                (_%L25746%_ _%hd2553625697%_))
                                            (if (and (gx#identifier?
                                                      _%L25746%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2576525768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2576625771%_)
                       (cons _%g2576525768%_ _%g2576625771%_))
                     '()
                     _%L25743%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2685726858%_
                                                 _%L25743%_
                                                 _%L25745%_
                                                 _%L25746%_)
                                                (_%__match2696526966%_
                                                 _%e2553225683%_
                                                 _%hd2553325687%_
                                                 _%tl2553425690%_
                                                 _%e2553525693%_
                                                 _%hd2553625697%_
                                                 _%tl2553725700%_
                                                 _%e2553825703%_
                                                 _%hd2553925707%_
                                                 _%tl2554025710%_
                                                 _%__splice2685926860%_
                                                 _%target2554125713%_
                                                 _%tl2554325716%_))))))))
                          (_%loop2554425719%_ _%target2554125713%_ '()))))
                     (_%__match2692526926%_
                      (lambda (_%e2553225683%_
                               _%hd2553325687%_
                               _%tl2553425690%_
                               _%e2553525693%_
                               _%hd2553625697%_
                               _%tl2553725700%_)
                        (if (gx#stx-pair? _%tl2553725700%_)
                            (let ((_%e2553825703%_
                                   (gx#syntax-e _%tl2553725700%_)))
                              (let ((_%tl2554025710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2553825703%_)))
                                    (_%hd2553925707%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2553825703%_))))
                                (if (gx#stx-pair/null? _%tl2554025710%_)
                                    (let ((_%__splice2685926860%_
                                           (gx#syntax-split-splice
                                            _%tl2554025710%_
                                            '0)))
                                      (let ((_%tl2554325716%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2685926860%_
                                                '1)))
                                            (_%target2554125713%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2685926860%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2554325716%_)
                                            (_%__match2693926940%_
                                             _%e2553225683%_
                                             _%hd2553325687%_
                                             _%tl2553425690%_
                                             _%e2553525693%_
                                             _%hd2553625697%_
                                             _%tl2553725700%_
                                             _%e2553825703%_
                                             _%hd2553925707%_
                                             _%tl2554025710%_
                                             _%__splice2685926860%_
                                             _%target2554125713%_
                                             _%tl2554325716%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2548925576%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2548925576%_)))))
                            (let () (declare (not safe)) (_%g2548925576%_)))))
                     (_%__match2691326914%_
                      (lambda (_%e2551425789%_
                               _%hd2551525793%_
                               _%tl2551625796%_
                               _%e2551725799%_
                               _%hd2551825803%_
                               _%tl2551925806%_
                               _%__splice2685526856%_
                               _%target2552025809%_
                               _%tl2552225812%_)
                        (letrec ((_%loop2552325815%_
                                  (lambda (_%hd2552125819%_ _%arg2552725822%_)
                                    (if (gx#stx-pair? _%hd2552125819%_)
                                        (let ((_%e2552425825%_
                                               (gx#syntax-e _%hd2552125819%_)))
                                          (let ((_%lp-tl2552625832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2552425825%_)))
                                                (_%lp-hd2552525829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2552425825%_))))
                                            (_%loop2552325815%_
                                             _%lp-tl2552625832%_
                                             (cons _%lp-hd2552525829%_
                                                   _%arg2552725822%_))))
                                        (let ((_%arg2552825835%_
                                               (reverse _%arg2552725822%_)))
                                          (let ((_%L25839%_ _%arg2552825835%_)
                                                (_%L25841%_ _%hd2551825803%_))
                                            (if (_%dotted-identifier?25482%_
                                                 _%L25841%_)
                                                (_%__kont2685326854%_
                                                 _%L25839%_
                                                 _%L25841%_)
                                                (_%__match2692526926%_
                                                 _%e2551425789%_
                                                 _%hd2551525793%_
                                                 _%tl2551625796%_
                                                 _%e2551725799%_
                                                 _%hd2551825803%_
                                                 _%tl2551925806%_))))))))
                          (_%loop2552325815%_ _%target2552025809%_ '()))))
                     (_%__match2691126912%_
                      (lambda (_%e2551425789%_
                               _%hd2551525793%_
                               _%tl2551625796%_
                               _%e2551725799%_
                               _%hd2551825803%_
                               _%tl2551925806%_
                               _%__splice2685526856%_
                               _%target2552025809%_
                               _%tl2552225812%_)
                        (if (gx#stx-null? _%tl2552225812%_)
                            (_%__match2691326914%_
                             _%e2551425789%_
                             _%hd2551525793%_
                             _%tl2551625796%_
                             _%e2551725799%_
                             _%hd2551825803%_
                             _%tl2551925806%_
                             _%__splice2685526856%_
                             _%target2552025809%_
                             _%tl2552225812%_)
                            (if (gx#stx-pair? _%tl2551925806%_)
                                (let ((_%e2553825703%_
                                       (gx#syntax-e _%tl2551925806%_)))
                                  (let ((_%tl2554025710%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2553825703%_)))
                                        (_%hd2553925707%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2553825703%_))))
                                    (if (gx#stx-pair/null? _%tl2554025710%_)
                                        (let ((_%__splice2685926860%_
                                               (gx#syntax-split-splice
                                                _%tl2554025710%_
                                                '0)))
                                          (let ((_%tl2554325716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2685926860%_
                                                    '1)))
                                                (_%target2554125713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2685926860%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2554325716%_)
                                                (_%__match2693926940%_
                                                 _%e2551425789%_
                                                 _%hd2551525793%_
                                                 _%tl2551625796%_
                                                 _%e2551725799%_
                                                 _%hd2551825803%_
                                                 _%tl2551925806%_
                                                 _%e2553825703%_
                                                 _%hd2553925707%_
                                                 _%tl2554025710%_
                                                 _%__splice2685926860%_
                                                 _%target2554125713%_
                                                 _%tl2554325716%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2548925576%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2548925576%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2548925576%_))))))
                     (_%__match2689326894%_
                      (lambda (_%e2549425937%_
                               _%hd2549525941%_
                               _%tl2549625944%_
                               _%e2549725947%_
                               _%hd2549825951%_
                               _%tl2549925954%_
                               _%__splice2685126852%_
                               _%target2550025957%_
                               _%tl2550225960%_
                               _%e2550925963%_
                               _%hd2551025967%_
                               _%tl2551125970%_)
                        (letrec ((_%loop2550325973%_
                                  (lambda (_%hd2550125977%_ _%arg2550725980%_)
                                    (if (gx#stx-pair? _%hd2550125977%_)
                                        (let ((_%e2550425983%_
                                               (gx#syntax-e _%hd2550125977%_)))
                                          (let ((_%lp-tl2550625990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2550425983%_)))
                                                (_%lp-hd2550525987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2550425983%_))))
                                            (_%loop2550325973%_
                                             _%lp-tl2550625990%_
                                             (cons _%lp-hd2550525987%_
                                                   _%arg2550725980%_))))
                                        (let ((_%arg2550825993%_
                                               (reverse _%arg2550725980%_)))
                                          (let ((_%L25997%_ _%hd2551025967%_)
                                                (_%L25999%_ _%arg2550825993%_)
                                                (_%L26000%_ _%hd2549825951%_))
                                            (if (and (_%dotted-identifier?25482%_
                                                      _%L26000%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2601926022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2602026025%_)
                       (cons _%g2601926022%_ _%g2602026025%_))
                     '()
                     _%L25999%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2684926850%_
                                                 _%L25997%_
                                                 _%L25999%_
                                                 _%L26000%_)
                                                (let ((_%__splice2685526856%_
                                                       (gx#syntax-split-splice
                                                        _%tl2549925954%_
                                                        '0)))
                                                  (let ((_%tl2552225812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2685526856%_
                                                            '1)))
                                                        (_%target2552025809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2685526856%_
                                                            '0))))
                                                    (_%__match2691126912%_
                                                     _%e2549425937%_
                                                     _%hd2549525941%_
                                                     _%tl2549625944%_
                                                     _%e2549725947%_
                                                     _%hd2549825951%_
                                                     _%tl2549925954%_
                                                     _%__splice2685526856%_
                                                     _%target2552025809%_
                                                     _%tl2552225812%_))))))))))
                          (_%loop2550325973%_ _%target2550025957%_ '())))))
                (if (gx#stx-pair? _%__stx2684626847%_)
                    (let ((_%e2549425937%_ (gx#syntax-e _%__stx2684626847%_)))
                      (let ((_%tl2549625944%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2549425937%_)))
                            (_%hd2549525941%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2549425937%_))))
                        (if (gx#stx-pair? _%tl2549625944%_)
                            (let ((_%e2549725947%_
                                   (gx#syntax-e _%tl2549625944%_)))
                              (let ((_%tl2549925954%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2549725947%_)))
                                    (_%hd2549825951%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2549725947%_))))
                                (if (gx#stx-pair/null? _%tl2549925954%_)
                                    (if (let ((__tmp27318
                                               (gx#stx-length
                                                _%tl2549925954%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27318 '1))
                                        (let ((_%__splice2685126852%_
                                               (gx#syntax-split-splice
                                                _%tl2549925954%_
                                                '1)))
                                          (let ((_%tl2550225960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2685126852%_
                                                    '1)))
                                                (_%target2550025957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2685126852%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2550225960%_)
                                                (let ((_%e2550925963%_
                                                       (gx#syntax-e
                                                        _%tl2550225960%_)))
                                                  (let ((_%tl2551125970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2550925963%_)))
                                                        (_%hd2551025967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2550925963%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2551125970%_)
                                                        (_%__match2689326894%_
                                                         _%e2549425937%_
                                                         _%hd2549525941%_
                                                         _%tl2549625944%_
                                                         _%e2549725947%_
                                                         _%hd2549825951%_
                                                         _%tl2549925954%_
                                                         _%__splice2685126852%_
                                                         _%target2550025957%_
                                                         _%tl2550225960%_
                                                         _%e2550925963%_
                                                         _%hd2551025967%_
                                                         _%tl2551125970%_)
                                                        (let ((_%__splice2685526856%_
                                                               (gx#syntax-split-splice
                                                                _%tl2549925954%_
                                                                '0)))
                                                          (let ((_%tl2552225812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2685526856%_ '1)))
                        (_%target2552025809%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2685526856%_ '0))))
                    (if (gx#stx-null? _%tl2552225812%_)
                        (_%__match2691326914%_
                         _%e2549425937%_
                         _%hd2549525941%_
                         _%tl2549625944%_
                         _%e2549725947%_
                         _%hd2549825951%_
                         _%tl2549925954%_
                         _%__splice2685526856%_
                         _%target2552025809%_
                         _%tl2552225812%_)
                        (if (gx#stx-pair? _%tl2549925954%_)
                            (let ((_%e2553825703%_
                                   (gx#syntax-e _%tl2549925954%_)))
                              (let ((_%tl2554025710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2553825703%_)))
                                    (_%hd2553925707%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2553825703%_))))
                                (if (gx#stx-pair/null? _%tl2554025710%_)
                                    (let ((_%__splice2685926860%_
                                           (gx#syntax-split-splice
                                            _%tl2554025710%_
                                            '0)))
                                      (let ((_%tl2554325716%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2685926860%_
                                                '1)))
                                            (_%target2554125713%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2685926860%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2554325716%_)
                                            (_%__match2693926940%_
                                             _%e2549425937%_
                                             _%hd2549525941%_
                                             _%tl2549625944%_
                                             _%e2549725947%_
                                             _%hd2549825951%_
                                             _%tl2549925954%_
                                             _%e2553825703%_
                                             _%hd2553925707%_
                                             _%tl2554025710%_
                                             _%__splice2685926860%_
                                             _%target2554125713%_
                                             _%tl2554325716%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2548925576%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2548925576%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2548925576%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2685526856%_
                                                       (gx#syntax-split-splice
                                                        _%tl2549925954%_
                                                        '0)))
                                                  (let ((_%tl2552225812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2685526856%_
                                                            '1)))
                                                        (_%target2552025809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2685526856%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2552225812%_)
                                                        (_%__match2691326914%_
                                                         _%e2549425937%_
                                                         _%hd2549525941%_
                                                         _%tl2549625944%_
                                                         _%e2549725947%_
                                                         _%hd2549825951%_
                                                         _%tl2549925954%_
                                                         _%__splice2685526856%_
                                                         _%target2552025809%_
                                                         _%tl2552225812%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2549925954%_)
                                                            (let ((_%e2553825703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2549925954%_)))
                      (let ((_%tl2554025710%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2553825703%_)))
                            (_%hd2553925707%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2553825703%_))))
                        (if (gx#stx-pair/null? _%tl2554025710%_)
                            (let ((_%__splice2685926860%_
                                   (gx#syntax-split-splice
                                    _%tl2554025710%_
                                    '0)))
                              (let ((_%tl2554325716%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2685926860%_
                                        '1)))
                                    (_%target2554125713%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2685926860%_
                                        '0))))
                                (if (gx#stx-null? _%tl2554325716%_)
                                    (_%__match2693926940%_
                                     _%e2549425937%_
                                     _%hd2549525941%_
                                     _%tl2549625944%_
                                     _%e2549725947%_
                                     _%hd2549825951%_
                                     _%tl2549925954%_
                                     _%e2553825703%_
                                     _%hd2553925707%_
                                     _%tl2554025710%_
                                     _%__splice2685926860%_
                                     _%target2554125713%_
                                     _%tl2554325716%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2548925576%_)))))
                            (let () (declare (not safe)) (_%g2548925576%_)))))
                    (let () (declare (not safe)) (_%g2548925576%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2685526856%_
                                               (gx#syntax-split-splice
                                                _%tl2549925954%_
                                                '0)))
                                          (let ((_%tl2552225812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2685526856%_
                                                    '1)))
                                                (_%target2552025809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2685526856%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2552225812%_)
                                                (_%__match2691326914%_
                                                 _%e2549425937%_
                                                 _%hd2549525941%_
                                                 _%tl2549625944%_
                                                 _%e2549725947%_
                                                 _%hd2549825951%_
                                                 _%tl2549925954%_
                                                 _%__splice2685526856%_
                                                 _%target2552025809%_
                                                 _%tl2552225812%_)
                                                (if (gx#stx-pair?
                                                     _%tl2549925954%_)
                                                    (let ((_%e2553825703%_
                                                           (gx#syntax-e
                                                            _%tl2549925954%_)))
                                                      (let ((_%tl2554025710%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2553825703%_)))
                    (_%hd2553925707%_
                     (let () (declare (not safe)) (##car _%e2553825703%_))))
                (if (gx#stx-pair/null? _%tl2554025710%_)
                    (let ((_%__splice2685926860%_
                           (gx#syntax-split-splice _%tl2554025710%_ '0)))
                      (let ((_%tl2554325716%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2685926860%_ '1)))
                            (_%target2554125713%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2685926860%_ '0))))
                        (if (gx#stx-null? _%tl2554325716%_)
                            (_%__match2693926940%_
                             _%e2549425937%_
                             _%hd2549525941%_
                             _%tl2549625944%_
                             _%e2549725947%_
                             _%hd2549825951%_
                             _%tl2549925954%_
                             _%e2553825703%_
                             _%hd2553925707%_
                             _%tl2554025710%_
                             _%__splice2685926860%_
                             _%target2554125713%_
                             _%tl2554325716%_)
                            (let () (declare (not safe)) (_%g2548925576%_)))))
                    (let () (declare (not safe)) (_%g2548925576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2548925576%_)))))))
                                    (if (gx#stx-pair? _%tl2549925954%_)
                                        (let ((_%e2553825703%_
                                               (gx#syntax-e _%tl2549925954%_)))
                                          (let ((_%tl2554025710%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2553825703%_)))
                                                (_%hd2553925707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2553825703%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2554025710%_)
                                                (let ((_%__splice2685926860%_
                                                       (gx#syntax-split-splice
                                                        _%tl2554025710%_
                                                        '0)))
                                                  (let ((_%tl2554325716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2685926860%_
                                                            '1)))
                                                        (_%target2554125713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2685926860%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2554325716%_)
                                                        (_%__match2693926940%_
                                                         _%e2549425937%_
                                                         _%hd2549525941%_
                                                         _%tl2549625944%_
                                                         _%e2549725947%_
                                                         _%hd2549825951%_
                                                         _%tl2549925954%_
                                                         _%e2553825703%_
                                                         _%hd2553925707%_
                                                         _%tl2554025710%_
                                                         _%__splice2685926860%_
                                                         _%target2554125713%_
                                                         _%tl2554325716%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2548925576%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2548925576%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2548925576%_))))))
                            (let () (declare (not safe)) (_%g2548925576%_)))))
                    (let () (declare (not safe)) (_%g2548925576%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26128%_)
        (let* ((_%__stx2696826969%_ _%$stx26128%_)
               (_%g2613326173%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2696826969%_))))
          (let ((_%__kont2697126972%_
                 (lambda (_%L26311%_ _%L26313%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26313%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26311%_ '()))
                                     '())))))
                (_%__kont2697326974%_
                 (lambda (_%L26240%_ _%L26242%_ _%L26243%_ _%L26244%_)
                   (cons _%L26244%_
                         (cons (cons _%L26244%_
                                     (cons _%L26243%_ (cons _%L26242%_ '())))
                               (foldr (lambda (_%g2626526268%_ _%g2626626271%_)
                                        (cons _%g2626526268%_ _%g2626626271%_))
                                      '()
                                      _%L26240%_))))))
            (let* ((_%__match2702327024%_
                    (lambda (_%e2615026180%_
                             _%hd2615126184%_
                             _%tl2615226187%_
                             _%e2615326190%_
                             _%hd2615426194%_
                             _%tl2615526197%_
                             _%e2615626200%_
                             _%hd2615726204%_
                             _%tl2615826207%_
                             _%__splice2697526976%_
                             _%target2615926210%_
                             _%tl2616126213%_)
                      (letrec ((_%loop2616226216%_
                                (lambda (_%hd2616026220%_ _%rest2616626223%_)
                                  (if (gx#stx-pair? _%hd2616026220%_)
                                      (let ((_%e2616326226%_
                                             (gx#syntax-e _%hd2616026220%_)))
                                        (let ((_%lp-tl2616526233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2616326226%_)))
                                              (_%lp-hd2616426230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2616326226%_))))
                                          (_%loop2616226216%_
                                           _%lp-tl2616526233%_
                                           (cons _%lp-hd2616426230%_
                                                 _%rest2616626223%_))))
                                      (let ((_%rest2616726236%_
                                             (reverse _%rest2616626223%_)))
                                        (_%__kont2697326974%_
                                         _%rest2616726236%_
                                         _%hd2615726204%_
                                         _%hd2615426194%_
                                         _%hd2615126184%_))))))
                        (_%loop2616226216%_ _%target2615926210%_ '()))))
                   (_%__match2699726998%_
                    (lambda (_%e2613726281%_
                             _%hd2613826285%_
                             _%tl2613926288%_
                             _%e2614026291%_
                             _%hd2614126295%_
                             _%tl2614226298%_
                             _%e2614326301%_
                             _%hd2614426305%_
                             _%tl2614526308%_)
                      (let ((_%L26311%_ _%hd2614426305%_)
                            (_%L26313%_ _%hd2614126295%_))
                        (if (gx#identifier? _%L26311%_)
                            (_%__kont2697126972%_ _%L26311%_ _%L26313%_)
                            (if (gx#stx-pair/null? _%tl2614526308%_)
                                (let ((_%__splice2697526976%_
                                       (gx#syntax-split-splice
                                        _%tl2614526308%_
                                        '0)))
                                  (let ((_%tl2616126213%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2697526976%_
                                            '1)))
                                        (_%target2615926210%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2697526976%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2616126213%_)
                                        (_%__match2702327024%_
                                         _%e2613726281%_
                                         _%hd2613826285%_
                                         _%tl2613926288%_
                                         _%e2614026291%_
                                         _%hd2614126295%_
                                         _%tl2614226298%_
                                         _%e2614326301%_
                                         _%hd2614426305%_
                                         _%tl2614526308%_
                                         _%__splice2697526976%_
                                         _%target2615926210%_
                                         _%tl2616126213%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2613326173%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2613326173%_))))))))
              (if (gx#stx-pair? _%__stx2696826969%_)
                  (let ((_%e2613726281%_ (gx#syntax-e _%__stx2696826969%_)))
                    (let ((_%tl2613926288%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2613726281%_)))
                          (_%hd2613826285%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2613726281%_))))
                      (if (gx#stx-pair? _%tl2613926288%_)
                          (let ((_%e2614026291%_
                                 (gx#syntax-e _%tl2613926288%_)))
                            (let ((_%tl2614226298%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2614026291%_)))
                                  (_%hd2614126295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2614026291%_))))
                              (if (gx#stx-pair? _%tl2614226298%_)
                                  (let ((_%e2614326301%_
                                         (gx#syntax-e _%tl2614226298%_)))
                                    (let ((_%tl2614526308%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2614326301%_)))
                                          (_%hd2614426305%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2614326301%_))))
                                      (if (gx#stx-null? _%tl2614526308%_)
                                          (_%__match2699726998%_
                                           _%e2613726281%_
                                           _%hd2613826285%_
                                           _%tl2613926288%_
                                           _%e2614026291%_
                                           _%hd2614126295%_
                                           _%tl2614226298%_
                                           _%e2614326301%_
                                           _%hd2614426305%_
                                           _%tl2614526308%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2614526308%_)
                                              (let ((_%__splice2697526976%_
                                                     (gx#syntax-split-splice
                                                      _%tl2614526308%_
                                                      '0)))
                                                (let ((_%tl2616126213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2697526976%_
                                                          '1)))
                                                      (_%target2615926210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2697526976%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2616126213%_)
                                                      (_%__match2702327024%_
                                                       _%e2613726281%_
                                                       _%hd2613826285%_
                                                       _%tl2613926288%_
                                                       _%e2614026291%_
                                                       _%hd2614126295%_
                                                       _%tl2614226298%_
                                                       _%e2614326301%_
                                                       _%hd2614426305%_
                                                       _%tl2614526308%_
                                                       _%__splice2697526976%_
                                                       _%target2615926210%_
                                                       _%tl2616126213%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2613326173%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2613326173%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2613326173%_)))))
                          (let () (declare (not safe)) (_%g2613326173%_)))))
                  (let () (declare (not safe)) (_%g2613326173%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26333%_)
        (let* ((_%__stx2702627027%_ _%$stx26333%_)
               (_%g2633826390%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2702627027%_))))
          (let ((_%__kont2702927030%_
                 (lambda (_%L26566%_ _%L26568%_ _%L26569%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26569%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26568%_ '()))
                                     (cons _%L26566%_ '()))))))
                (_%__kont2703127032%_
                 (lambda (_%L26477%_
                          _%L26479%_
                          _%L26480%_
                          _%L26481%_
                          _%L26482%_
                          _%L26483%_)
                   (cons _%L26483%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26482%_
                                           (cons _%L26481%_
                                                 (foldr (lambda (_%g2651026513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2651126516%_)
                  (cons _%g2651026513%_ _%g2651126516%_))
                '()
                _%L26480%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26479%_ (cons _%L26477%_ '())))))))
            (let* ((_%__match2710127102%_
                    (lambda (_%e2636126397%_
                             _%hd2636226401%_
                             _%tl2636326404%_
                             _%e2636426407%_
                             _%hd2636526411%_
                             _%tl2636626414%_
                             _%e2636726417%_
                             _%hd2636826421%_
                             _%tl2636926424%_
                             _%__splice2703327034%_
                             _%target2637026427%_
                             _%tl2637226430%_
                             _%e2637926433%_
                             _%hd2638026437%_
                             _%tl2638126440%_
                             _%e2638226443%_
                             _%hd2638326447%_
                             _%tl2638426450%_)
                      (letrec ((_%loop2637326453%_
                                (lambda (_%hd2637126457%_ _%path2637726460%_)
                                  (if (gx#stx-pair? _%hd2637126457%_)
                                      (let ((_%e2637426463%_
                                             (gx#syntax-e _%hd2637126457%_)))
                                        (let ((_%lp-tl2637626470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2637426463%_)))
                                              (_%lp-hd2637526467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2637426463%_))))
                                          (_%loop2637326453%_
                                           _%lp-tl2637626470%_
                                           (cons _%lp-hd2637526467%_
                                                 _%path2637726460%_))))
                                      (let ((_%path2637826473%_
                                             (reverse _%path2637726460%_)))
                                        (_%__kont2703127032%_
                                         _%hd2638326447%_
                                         _%hd2638026437%_
                                         _%path2637826473%_
                                         _%hd2636826421%_
                                         _%hd2636526411%_
                                         _%hd2636226401%_))))))
                        (_%loop2637326453%_ _%target2637026427%_ '()))))
                   (_%__match2706127062%_
                    (lambda (_%e2634326526%_
                             _%hd2634426530%_
                             _%tl2634526533%_
                             _%e2634626536%_
                             _%hd2634726540%_
                             _%tl2634826543%_
                             _%e2634926546%_
                             _%hd2635026550%_
                             _%tl2635126553%_
                             _%e2635226556%_
                             _%hd2635326560%_
                             _%tl2635426563%_)
                      (let ((_%L26566%_ _%hd2635326560%_)
                            (_%L26568%_ _%hd2635026550%_)
                            (_%L26569%_ _%hd2634726540%_))
                        (if (gx#identifier? _%L26568%_)
                            (_%__kont2702927030%_
                             _%L26566%_
                             _%L26568%_
                             _%L26569%_)
                            (if (gx#stx-pair/null? _%tl2635126553%_)
                                (if (let ((__tmp27319
                                           (gx#stx-length _%tl2635126553%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27319 '2))
                                    (let ((_%__splice2703327034%_
                                           (gx#syntax-split-splice
                                            _%tl2635126553%_
                                            '2)))
                                      (let ((_%tl2637226430%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2703327034%_
                                                '1)))
                                            (_%target2637026427%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2703327034%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2637226430%_)
                                            (let ((_%e2637926433%_
                                                   (gx#syntax-e
                                                    _%tl2637226430%_)))
                                              (let ((_%tl2638126440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2637926433%_)))
                                                    (_%hd2638026437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2637926433%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2638126440%_)
                                                    (let ((_%e2638226443%_
                                                           (gx#syntax-e
                                                            _%tl2638126440%_)))
                                                      (let ((_%tl2638426450%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2638226443%_)))
                    (_%hd2638326447%_
                     (let () (declare (not safe)) (##car _%e2638226443%_))))
                (if (gx#stx-null? _%tl2638426450%_)
                    (_%__match2710127102%_
                     _%e2634326526%_
                     _%hd2634426530%_
                     _%tl2634526533%_
                     _%e2634626536%_
                     _%hd2634726540%_
                     _%tl2634826543%_
                     _%e2634926546%_
                     _%hd2635026550%_
                     _%tl2635126553%_
                     _%__splice2703327034%_
                     _%target2637026427%_
                     _%tl2637226430%_
                     _%e2637926433%_
                     _%hd2638026437%_
                     _%tl2638126440%_
                     _%e2638226443%_
                     _%hd2638326447%_
                     _%tl2638426450%_)
                    (let () (declare (not safe)) (_%g2633826390%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2633826390%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2633826390%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2633826390%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2633826390%_))))))))
              (if (gx#stx-pair? _%__stx2702627027%_)
                  (let ((_%e2634326526%_ (gx#syntax-e _%__stx2702627027%_)))
                    (let ((_%tl2634526533%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2634326526%_)))
                          (_%hd2634426530%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2634326526%_))))
                      (if (gx#stx-pair? _%tl2634526533%_)
                          (let ((_%e2634626536%_
                                 (gx#syntax-e _%tl2634526533%_)))
                            (let ((_%tl2634826543%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2634626536%_)))
                                  (_%hd2634726540%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2634626536%_))))
                              (if (gx#stx-pair? _%tl2634826543%_)
                                  (let ((_%e2634926546%_
                                         (gx#syntax-e _%tl2634826543%_)))
                                    (let ((_%tl2635126553%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2634926546%_)))
                                          (_%hd2635026550%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2634926546%_))))
                                      (if (gx#stx-pair? _%tl2635126553%_)
                                          (let ((_%e2635226556%_
                                                 (gx#syntax-e
                                                  _%tl2635126553%_)))
                                            (let ((_%tl2635426563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2635226556%_)))
                                                  (_%hd2635326560%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2635226556%_))))
                                              (if (gx#stx-null?
                                                   _%tl2635426563%_)
                                                  (_%__match2706127062%_
                                                   _%e2634326526%_
                                                   _%hd2634426530%_
                                                   _%tl2634526533%_
                                                   _%e2634626536%_
                                                   _%hd2634726540%_
                                                   _%tl2634826543%_
                                                   _%e2634926546%_
                                                   _%hd2635026550%_
                                                   _%tl2635126553%_
                                                   _%e2635226556%_
                                                   _%hd2635326560%_
                                                   _%tl2635426563%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2635126553%_)
                                                      (if (let ((__tmp27320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2635126553%_)))
                    (declare (not safe))
                    (##fx>= __tmp27320 '2))
                  (let ((_%__splice2703327034%_
                         (gx#syntax-split-splice _%tl2635126553%_ '2)))
                    (let ((_%tl2637226430%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2703327034%_ '1)))
                          (_%target2637026427%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2703327034%_ '0))))
                      (if (gx#stx-pair? _%tl2637226430%_)
                          (let ((_%e2637926433%_
                                 (gx#syntax-e _%tl2637226430%_)))
                            (let ((_%tl2638126440%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2637926433%_)))
                                  (_%hd2638026437%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2637926433%_))))
                              (if (gx#stx-pair? _%tl2638126440%_)
                                  (let ((_%e2638226443%_
                                         (gx#syntax-e _%tl2638126440%_)))
                                    (let ((_%tl2638426450%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2638226443%_)))
                                          (_%hd2638326447%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2638226443%_))))
                                      (if (gx#stx-null? _%tl2638426450%_)
                                          (_%__match2710127102%_
                                           _%e2634326526%_
                                           _%hd2634426530%_
                                           _%tl2634526533%_
                                           _%e2634626536%_
                                           _%hd2634726540%_
                                           _%tl2634826543%_
                                           _%e2634926546%_
                                           _%hd2635026550%_
                                           _%tl2635126553%_
                                           _%__splice2703327034%_
                                           _%target2637026427%_
                                           _%tl2637226430%_
                                           _%e2637926433%_
                                           _%hd2638026437%_
                                           _%tl2638126440%_
                                           _%e2638226443%_
                                           _%hd2638326447%_
                                           _%tl2638426450%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2633826390%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2633826390%_)))))
                          (let () (declare (not safe)) (_%g2633826390%_)))))
                  (let () (declare (not safe)) (_%g2633826390%_)))
              (let () (declare (not safe)) (_%g2633826390%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2635126553%_)
                                              (if (let ((__tmp27321
                                                         (gx#stx-length
                                                          _%tl2635126553%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27321 '2))
                                                  (let ((_%__splice2703327034%_
                                                         (gx#syntax-split-splice
                                                          _%tl2635126553%_
                                                          '2)))
                                                    (let ((_%tl2637226430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2703327034%_
                                                              '1)))
                                                          (_%target2637026427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2703327034%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2637226430%_)
                                                          (let ((_%e2637926433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2637226430%_)))
                    (let ((_%tl2638126440%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2637926433%_)))
                          (_%hd2638026437%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2637926433%_))))
                      (if (gx#stx-pair? _%tl2638126440%_)
                          (let ((_%e2638226443%_
                                 (gx#syntax-e _%tl2638126440%_)))
                            (let ((_%tl2638426450%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2638226443%_)))
                                  (_%hd2638326447%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2638226443%_))))
                              (if (gx#stx-null? _%tl2638426450%_)
                                  (_%__match2710127102%_
                                   _%e2634326526%_
                                   _%hd2634426530%_
                                   _%tl2634526533%_
                                   _%e2634626536%_
                                   _%hd2634726540%_
                                   _%tl2634826543%_
                                   _%e2634926546%_
                                   _%hd2635026550%_
                                   _%tl2635126553%_
                                   _%__splice2703327034%_
                                   _%target2637026427%_
                                   _%tl2637226430%_
                                   _%e2637926433%_
                                   _%hd2638026437%_
                                   _%tl2638126440%_
                                   _%e2638226443%_
                                   _%hd2638326447%_
                                   _%tl2638426450%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2633826390%_)))))
                          (let () (declare (not safe)) (_%g2633826390%_)))))
                  (let () (declare (not safe)) (_%g2633826390%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2633826390%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2633826390%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2633826390%_)))))
                          (let () (declare (not safe)) (_%g2633826390%_)))))
                  (let () (declare (not safe)) (_%g2633826390%_))))))))))
