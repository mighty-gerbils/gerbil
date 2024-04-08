(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27321_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24875%_)
        (letrec ((_%body-opt?24878%_
                  (lambda (_%key24881%_)
                    (let ((__tmp27293 (gx#stx-e _%key24881%_)))
                      (declare (not safe))
                      (##memq __tmp27293
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:))))))
          (gx#stx-plist? _%stx24875%_ _%body-opt?24878%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22641%_
               _%id22643%_
               _%super-ref22644%_
               _%slots22645%_
               _%body22646%_)
        (letrec ((_%wrap22648%_
                  (lambda (_%e-stx24872%_)
                    (gx#stx-wrap-source
                     _%e-stx24872%_
                     (gx#stx-source _%stx22641%_))))
                 (_%make-id22650%_
                  (lambda _%args24869%_
                    (apply gx#stx-identifier _%id22643%_ _%args24869%_)))
                 (_%get-mixin-slots22651%_
                  (lambda (_%super24839%_ _%slots24841%_)
                    (letrec* ((_%tab24843%_ (make-hash-table-eq))
                              (_%dedup24845%_
                               (lambda (_%mixins24856%_)
                                 (let _%lp24859%_ ((_%rest24862%_
                                                    _%mixins24856%_)
                                                   (_%r24864%_ '()))
                                   (if (pair? _%rest24862%_)
                                       (let ((_%slot24866%_
                                              (car _%rest24862%_)))
                                         (if (hash-get
                                              _%tab24843%_
                                              _%slot24866%_)
                                             (_%lp24859%_
                                              (cdr _%rest24862%_)
                                              _%r24864%_)
                                             (begin
                                               (hash-put!
                                                _%tab24843%_
                                                _%slot24866%_
                                                '#t)
                                               (_%lp24859%_
                                                (cdr _%rest24862%_)
                                                (cons _%slot24866%_
                                                      _%r24864%_)))))
                                       (reverse _%r24864%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24847%_)
                         (hash-put! _%tab24843%_ (gx#stx-e _%slot24847%_) '#t))
                       _%slots24841%_)
                      (if (not _%super24839%_)
                          '()
                          (if (gx#identifier? _%super24839%_)
                              (_%dedup24845%_
                               (_%get-mixin-slots-r22652%_ _%super24839%_))
                              (_%dedup24845%_
                               (concatenate
                                (map _%get-mixin-slots-r22652%_
                                     _%super24839%_))))))))
                 (_%get-mixin-slots-r22652%_
                  (lambda (_%type-id24833%_)
                    (let ((_%info24836%_
                           (gx#syntax-local-value _%type-id24833%_)))
                      (let ((__tmp27295
                             (let ((__obj27110 _%info24836%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27110
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27110
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27110
                                    'slots))))
                            (__tmp27294
                             (concatenate
                              (map _%get-mixin-slots-r22652%_
                                   (let ((__obj27111 _%info24836%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27111
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27111
                                            '3
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27111
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27295 __tmp27294))))))
          (gx#check-duplicate-identifiers _%slots22645%_ _%stx22641%_)
          (let* ((_%name22654%_ (symbol->string (gx#stx-e _%id22643%_)))
                 (_%super22657%_
                  (map gx#syntax-local-value _%super-ref22644%_))
                 (_%struct?22660%_ (gx#stx-getq 'struct: _%body22646%_))
                 (_%g2266322671%_
                  (lambda (_%g2266422667%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2266422667%_)))
                 (_%g2266224829%_
                  (lambda (_%g2266422675%_)
                    ((lambda (_%L22678%_)
                       (let* ((_%g2269422702%_
                               (lambda (_%g2269522698%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2269522698%_)))
                              (_%g2269324825%_
                               (lambda (_%g2269522706%_)
                                 ((lambda (_%L22709%_)
                                    (let* ((_%g2272222730%_
                                            (lambda (_%g2272322726%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2272322726%_)))
                                           (_%g2272124821%_
                                            (lambda (_%g2272322734%_)
                                              ((lambda (_%L22737%_)
                                                 (let* ((_%g2275022758%_
                                                         (lambda (_%g2275122754%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2275122754%_)))
                                                        (_%g2274924817%_
                                                         (lambda (_%g2275122762%_)
                                                           ((lambda (_%L22765%_)
                                                              (let* ((_%g2277822786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2277922782%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2277922782%_)))
                             (_%g2277724813%_
                              (lambda (_%g2277922790%_)
                                ((lambda (_%L22793%_)
                                   (let* ((_%g2280622823%_
                                           (lambda (_%g2280722819%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2280722819%_)))
                                          (_%g2280524809%_
                                           (lambda (_%g2280722827%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2280722827%_)
                                                 (let ((_g27296_
                                                        (gx#syntax-split-splice
                                                         _%g2280722827%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27297_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27296_)
                          (##vector-length _g27296_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27297_ 2)))
                   (error "Context expects 2 values" _g27297_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2280922830%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27296_
                                                               0)))
                                                           (_%tl2281122833%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27296_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2281122833%_)
                                                           (letrec ((_%loop2281222836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2281022840%_ _%slot2281622843%_)
                               (if (gx#stx-pair? _%hd2281022840%_)
                                   (let ((_%e2281322846%_
                                          (gx#syntax-e _%hd2281022840%_)))
                                     (let ((_%lp-hd2281422850%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2281322846%_)))
                                           (_%lp-tl2281522853%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2281322846%_))))
                                       (_%loop2281222836%_
                                        _%lp-tl2281522853%_
                                        (cons _%lp-hd2281422850%_
                                              _%slot2281622843%_))))
                                   (let ((_%slot2281722856%_
                                          (reverse _%slot2281622843%_)))
                                     ((lambda (_%L22860%_)
                                        (let* ((_%g2287722894%_
                                                (lambda (_%g2287822890%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2287822890%_)))
                                               (_%g2287624800%_
                                                (lambda (_%g2287822898%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2287822898%_)
                                                      (let ((_g27298_
                                                             (gx#syntax-split-splice
                                                              _%g2287822898%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27298_)
                               (##vector-length _g27298_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27299_ 2)))
                        (error "Context expects 2 values" _g27299_)))
                  (let ((_%target2288022901%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27298_ 0)))
                        (_%tl2288222904%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27298_ 1))))
                    (if (gx#stx-null? _%tl2288222904%_)
                        (letrec ((_%loop2288322907%_
                                  (lambda (_%hd2288122911%_ _%getf2288722914%_)
                                    (if (gx#stx-pair? _%hd2288122911%_)
                                        (let ((_%e2288422917%_
                                               (gx#syntax-e _%hd2288122911%_)))
                                          (let ((_%lp-hd2288522921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2288422917%_)))
                                                (_%lp-tl2288622924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2288422917%_))))
                                            (_%loop2288322907%_
                                             _%lp-tl2288622924%_
                                             (cons _%lp-hd2288522921%_
                                                   _%getf2288722914%_))))
                                        (let ((_%getf2288822927%_
                                               (reverse _%getf2288722914%_)))
                                          ((lambda (_%L22931%_)
                                             (let* ((_%g2294822965%_
                                                     (lambda (_%g2294922961%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2294922961%_)))
                                                    (_%g2294724791%_
                                                     (lambda (_%g2294922969%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2294922969%_)
                                                           (let ((_g27300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2294922969%_ '0)))
                     (begin
                       (let ((_g27301_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27300_)
                                    (##vector-length _g27300_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27301_ 2)))
                             (error "Context expects 2 values" _g27301_)))
                       (let ((_%target2295122972%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27300_ 0)))
                             (_%tl2295322975%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27300_ 1))))
                         (if (gx#stx-null? _%tl2295322975%_)
                             (letrec ((_%loop2295422978%_
                                       (lambda (_%hd2295222982%_
                                                _%setf2295822985%_)
                                         (if (gx#stx-pair? _%hd2295222982%_)
                                             (let ((_%e2295522988%_
                                                    (gx#syntax-e
                                                     _%hd2295222982%_)))
                                               (let ((_%lp-hd2295622992%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2295522988%_)))
                                                     (_%lp-tl2295722995%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2295522988%_))))
                                                 (_%loop2295422978%_
                                                  _%lp-tl2295722995%_
                                                  (cons _%lp-hd2295622992%_
                                                        _%setf2295822985%_))))
                                             (let ((_%setf2295922998%_
                                                    (reverse _%setf2295822985%_)))
                                               ((lambda (_%L23002%_)
                                                  (let* ((_%mixin-slots23019%_
                                                          (_%get-mixin-slots22651%_
                                                           _%super-ref22644%_
                                                           _%slots22645%_))
                                                         (_%g2302223039%_
                                                          (lambda (_%g2302323035%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2302323035%_)))
                                                         (_%g2302124787%_
                                                          (lambda (_%g2302323043%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2302323043%_)
                        (let ((_g27302_
                               (gx#syntax-split-splice _%g2302323043%_ '0)))
                          (begin
                            (let ((_g27303_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27302_)
                                         (##vector-length _g27302_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27303_ 2)))
                                  (error "Context expects 2 values" _g27303_)))
                            (let ((_%target2302523046%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g27302_ 0)))
                                  (_%tl2302723049%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g27302_ 1))))
                              (if (gx#stx-null? _%tl2302723049%_)
                                  (letrec ((_%loop2302823052%_
                                            (lambda (_%hd2302623056%_
                                                     _%mixin-slot2303223059%_)
                                              (if (gx#stx-pair?
                                                   _%hd2302623056%_)
                                                  (let ((_%e2302923062%_
                                                         (gx#syntax-e
                                                          _%hd2302623056%_)))
                                                    (let ((_%lp-hd2303023066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2302923062%_)))
                                                          (_%lp-tl2303123069%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2302923062%_))))
                                                      (_%loop2302823052%_
                                                       _%lp-tl2303123069%_
                                                       (cons _%lp-hd2303023066%_
                                                             _%mixin-slot2303223059%_))))
                                                  (let ((_%mixin-slot2303323072%_
                                                         (reverse _%mixin-slot2303223059%_)))
                                                    ((lambda (_%L23076%_)
                                                       (let* ((_%g2309423111%_
                                                               (lambda (_%g2309523107%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2309523107%_)))
                      (_%g2309324778%_
                       (lambda (_%g2309523115%_)
                         (if (gx#stx-pair/null? _%g2309523115%_)
                             (let ((_g27304_
                                    (gx#syntax-split-splice
                                     _%g2309523115%_
                                     '0)))
                               (begin
                                 (let ((_g27305_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27304_)
                                              (##vector-length _g27304_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27305_ 2)))
                                       (error "Context expects 2 values"
                                              _g27305_)))
                                 (let ((_%target2309723118%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27304_ 0)))
                                       (_%tl2309923121%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g27304_ 1))))
                                   (if (gx#stx-null? _%tl2309923121%_)
                                       (letrec ((_%loop2310023124%_
                                                 (lambda (_%hd2309823128%_
                                                          _%mixin-getf2310423131%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2309823128%_)
                                                       (let ((_%e2310123134%_
                                                              (gx#syntax-e
                                                               _%hd2309823128%_)))
                                                         (let ((_%lp-hd2310223138%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2310123134%_)))
                       (_%lp-tl2310323141%_
                        (let () (declare (not safe)) (##cdr _%e2310123134%_))))
                   (_%loop2310023124%_
                    _%lp-tl2310323141%_
                    (cons _%lp-hd2310223138%_ _%mixin-getf2310423131%_))))
               (let ((_%mixin-getf2310523144%_
                      (reverse _%mixin-getf2310423131%_)))
                 ((lambda (_%L23148%_)
                    (let* ((_%g2316523182%_
                            (lambda (_%g2316623178%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2316623178%_)))
                           (_%g2316424769%_
                            (lambda (_%g2316623186%_)
                              (if (gx#stx-pair/null? _%g2316623186%_)
                                  (let ((_g27306_
                                         (gx#syntax-split-splice
                                          _%g2316623186%_
                                          '0)))
                                    (begin
                                      (let ((_g27307_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27306_)
                                                   (##vector-length _g27306_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27307_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27307_)))
                                      (let ((_%target2316823189%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g27306_ 0)))
                                            (_%tl2317023192%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g27306_ 1))))
                                        (if (gx#stx-null? _%tl2317023192%_)
                                            (letrec ((_%loop2317123195%_
                                                      (lambda (_%hd2316923199%_
                                                               _%mixin-setf2317523202%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2316923199%_)
                                                            (let ((_%e2317223205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2316923199%_)))
                      (let ((_%lp-hd2317323209%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2317223205%_)))
                            (_%lp-tl2317423212%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2317223205%_))))
                        (_%loop2317123195%_
                         _%lp-tl2317423212%_
                         (cons _%lp-hd2317323209%_ _%mixin-setf2317523202%_))))
                    (let ((_%mixin-setf2317623215%_
                           (reverse _%mixin-setf2317523202%_)))
                      ((lambda (_%L23219%_)
                         (let* ((_%g2323623253%_
                                 (lambda (_%g2323723249%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2323723249%_)))
                                (_%g2323524752%_
                                 (lambda (_%g2323723257%_)
                                   (if (gx#stx-pair/null? _%g2323723257%_)
                                       (let ((_g27308_
                                              (gx#syntax-split-splice
                                               _%g2323723257%_
                                               '0)))
                                         (begin
                                           (let ((_g27309_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27308_)
                                                        (##vector-length
                                                         _g27308_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27309_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27309_)))
                                           (let ((_%target2323923260%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g27308_ 0)))
                                                 (_%tl2324123263%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g27308_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2324123263%_)
                                                 (letrec ((_%loop2324223266%_
                                                           (lambda (_%hd2324023270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2324623273%_)
                     (if (gx#stx-pair? _%hd2324023270%_)
                         (let ((_%e2324323276%_
                                (gx#syntax-e _%hd2324023270%_)))
                           (let ((_%lp-hd2324423280%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2324323276%_)))
                                 (_%lp-tl2324523283%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2324323276%_))))
                             (_%loop2324223266%_
                              _%lp-tl2324523283%_
                              (cons _%lp-hd2324423280%_ _%ugetf2324623273%_))))
                         (let ((_%ugetf2324723286%_
                                (reverse _%ugetf2324623273%_)))
                           ((lambda (_%L23290%_)
                              (let* ((_%g2330723324%_
                                      (lambda (_%g2330823320%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2330823320%_)))
                                     (_%g2330624735%_
                                      (lambda (_%g2330823328%_)
                                        (if (gx#stx-pair/null? _%g2330823328%_)
                                            (let ((_g27310_
                                                   (gx#syntax-split-splice
                                                    _%g2330823328%_
                                                    '0)))
                                              (begin
                                                (let ((_g27311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27310_)
                                                             (##vector-length
                                                              _g27310_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27311_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2331023331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g27310_
                                                          0)))
                                                      (_%tl2331223334%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g27310_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2331223334%_)
                                                      (letrec ((_%loop2331323337%_
                                                                (lambda (_%hd2331123341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2331723344%_)
                          (if (gx#stx-pair? _%hd2331123341%_)
                              (let ((_%e2331423347%_
                                     (gx#syntax-e _%hd2331123341%_)))
                                (let ((_%lp-hd2331523351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2331423347%_)))
                                      (_%lp-tl2331623354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2331423347%_))))
                                  (_%loop2331323337%_
                                   _%lp-tl2331623354%_
                                   (cons _%lp-hd2331523351%_
                                         _%usetf2331723344%_))))
                              (let ((_%usetf2331823357%_
                                     (reverse _%usetf2331723344%_)))
                                ((lambda (_%L23361%_)
                                   (let* ((_%g2337823395%_
                                           (lambda (_%g2337923391%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2337923391%_)))
                                          (_%g2337724718%_
                                           (lambda (_%g2337923399%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2337923399%_)
                                                 (let ((_g27312_
                                                        (gx#syntax-split-splice
                                                         _%g2337923399%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27313_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27312_)
                          (##vector-length _g27312_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27313_ 2)))
                   (error "Context expects 2 values" _g27313_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2338123402%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27312_
                                                               0)))
                                                           (_%tl2338323405%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g27312_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2338323405%_)
                                                           (letrec ((_%loop2338423408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2338223412%_
                                      _%mixin-ugetf2338823415%_)
                               (if (gx#stx-pair? _%hd2338223412%_)
                                   (let ((_%e2338523418%_
                                          (gx#syntax-e _%hd2338223412%_)))
                                     (let ((_%lp-hd2338623422%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2338523418%_)))
                                           (_%lp-tl2338723425%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2338523418%_))))
                                       (_%loop2338423408%_
                                        _%lp-tl2338723425%_
                                        (cons _%lp-hd2338623422%_
                                              _%mixin-ugetf2338823415%_))))
                                   (let ((_%mixin-ugetf2338923428%_
                                          (reverse _%mixin-ugetf2338823415%_)))
                                     ((lambda (_%L23432%_)
                                        (let* ((_%g2344923466%_
                                                (lambda (_%g2345023462%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2345023462%_)))
                                               (_%g2344824701%_
                                                (lambda (_%g2345023470%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2345023470%_)
                                                      (let ((_g27314_
                                                             (gx#syntax-split-splice
                                                              _%g2345023470%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27314_)
                               (##vector-length _g27314_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27315_ 2)))
                        (error "Context expects 2 values" _g27315_)))
                  (let ((_%target2345223473%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27314_ 0)))
                        (_%tl2345423476%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g27314_ 1))))
                    (if (gx#stx-null? _%tl2345423476%_)
                        (letrec ((_%loop2345523479%_
                                  (lambda (_%hd2345323483%_
                                           _%mixin-usetf2345923486%_)
                                    (if (gx#stx-pair? _%hd2345323483%_)
                                        (let ((_%e2345623489%_
                                               (gx#syntax-e _%hd2345323483%_)))
                                          (let ((_%lp-hd2345723493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2345623489%_)))
                                                (_%lp-tl2345823496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2345623489%_))))
                                            (_%loop2345523479%_
                                             _%lp-tl2345823496%_
                                             (cons _%lp-hd2345723493%_
                                                   _%mixin-usetf2345923486%_))))
                                        (let ((_%mixin-usetf2346023499%_
                                               (reverse _%mixin-usetf2345923486%_)))
                                          ((lambda (_%L23503%_)
                                             (let* ((_%type-slots23538%_
                                                     (if (gx#stx-null?
                                                          _%slots22645%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23002%_
                                _%L22931%_
                                _%L22860%_)
                               (foldr (lambda (_%g2352323528%_
                                               _%g2352423531%_
                                               _%g2352523533%_
                                               _%g2352623535%_)
                                        (cons (cons _%g2352523533%_
                                                    (cons _%g2352423531%_
                                                          (cons _%g2352323528%_
                                                                '())))
                                              _%g2352623535%_))
                                      '()
                                      _%L23002%_
                                      _%L22931%_
                                      _%L22860%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23559%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots23019%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23219%_
                                _%L23148%_
                                _%L23076%_)
                               (foldr (lambda (_%g2354423549%_
                                               _%g2354523552%_
                                               _%g2354623554%_
                                               _%g2354723556%_)
                                        (cons (cons _%g2354623554%_
                                                    (cons _%g2354523552%_
                                                          (cons _%g2354423549%_
                                                                '())))
                                              _%g2354723556%_))
                                      '()
                                      _%L23219%_
                                      _%L23148%_
                                      _%L23076%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23566%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22646%_)))
                           (if _%$e23562%_ _%$e23562%_ _%id22643%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23573%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22646%_)))
                           (if _%$e23569%_
                               _%$e23569%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%L22678%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23588%_
                                                     (let ((_%$e23584%_
                                                            (let ((_%e2357523577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22646%_)))
                      (if _%e2357523577%_
                          (let ((_%e23581%_ _%e2357523577%_))
                            (cons 'constructor: (cons _%e23581%_ '())))
                          '#f))))
               (if _%$e23584%_ _%$e23584%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23626%_
                                                     (let* ((_%properties23591%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22646%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23606%_
                     (let ((_%$e23594%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22646%_))))
                       (if _%$e23594%_
                           ((lambda (_%print23598%_)
                              (let ((_%print23601%_
                                     (if (eq? _%print23598%_ '#t)
                                         _%slots22645%_
                                         _%print23598%_)))
                                (cons (cons 'print: _%print23601%_)
                                      _%properties23591%_)))
                            _%$e23594%_)
                           _%properties23591%_)))
                    (_%properties23621%_
                     (let ((_%$e23609%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22646%_))))
                       (if _%$e23609%_
                           ((lambda (_%equal23613%_)
                              (let ((_%equal23616%_
                                     (if (eq? _%equal23613%_ '#t)
                                         _%slots22645%_
                                         _%equal23613%_)))
                                (cons (cons 'equal: _%equal23616%_)
                                      _%properties23606%_)))
                            _%$e23609%_)
                           _%properties23606%_))))
               _%properties23621%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23667%_
                                                     (if (null? _%properties23626%_)
                                                         '()
                                                         (let* ((_%g2362923637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2363023633%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2363023633%_)))
                        (_%g2362823663%_
                         (lambda (_%g2363023641%_)
                           ((lambda (_%L23644%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%L23644%_ '()))
                                          '())))
                            _%g2363023641%_))))
                   (_%g2362823663%_ _%properties23626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23679%_
                                                     (let ((_%$e23670%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22646%_)))
                                                       (if _%$e23670%_
                                                           ((lambda (_%metaclass23674%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23674%_)
                          _%metaclass23674%_
                          '#f))
                    _%$e23670%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23682%_
                                                     (if _%metaclass23679%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23685%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22646%_)))
                                                    (_%type-struct23688%_
                                                     (cons 'struct:
                                                           (cons _%struct?22660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23691%_
                                                     (cons 'final:
                                                           (cons _%final?23685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2369423711%_
                                                     (lambda (_%g2369523707%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2369523707%_)))
                                                    (_%g2369324697%_
                                                     (lambda (_%g2369523715%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2369523715%_)
                                                           (let ((_g27316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2369523715%_ '0)))
                     (begin
                       (let ((_g27317_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27316_)
                                    (##vector-length _g27316_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27317_ 2)))
                             (error "Context expects 2 values" _g27317_)))
                       (let ((_%target2369723718%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27316_ 0)))
                             (_%tl2369923721%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g27316_ 1))))
                         (if (gx#stx-null? _%tl2369923721%_)
                             (letrec ((_%loop2370023724%_
                                       (lambda (_%hd2369823728%_
                                                _%type-body2370423731%_)
                                         (if (gx#stx-pair? _%hd2369823728%_)
                                             (let ((_%e2370123734%_
                                                    (gx#syntax-e
                                                     _%hd2369823728%_)))
                                               (let ((_%lp-hd2370223738%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2370123734%_)))
                                                     (_%lp-tl2370323741%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2370123734%_))))
                                                 (_%loop2370023724%_
                                                  _%lp-tl2370323741%_
                                                  (cons _%lp-hd2370223738%_
                                                        _%type-body2370423731%_))))
                                             (let ((_%type-body2370523744%_
                                                    (reverse _%type-body2370423731%_)))
                                               ((lambda (_%L23748%_)
                                                  (let* ((_%g2376923777%_
                                                          (lambda (_%g2377023773%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2377023773%_)))
                                                         (_%g2376824685%_
                                                          (lambda (_%g2377023781%_)
                                                            ((lambda (_%L23784%_)
                                                               (let* ((_%g2379723805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2379823801%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2379823801%_)))
                              (_%g2379624614%_
                               (lambda (_%g2379823809%_)
                                 ((lambda (_%L23812%_)
                                    (let* ((_%g2382523833%_
                                            (lambda (_%g2382623829%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2382623829%_)))
                                           (_%g2382424579%_
                                            (lambda (_%g2382623837%_)
                                              ((lambda (_%L23840%_)
                                                 (let* ((_%g2385323861%_
                                                         (lambda (_%g2385423857%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2385423857%_)))
                                                        (_%g2385224493%_
                                                         (lambda (_%g2385423865%_)
                                                           ((lambda (_%L23868%_)
                                                              (let* ((_%g2388123889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2388223885%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2388223885%_)))
                             (_%g2388024481%_
                              (lambda (_%g2388223893%_)
                                ((lambda (_%L23896%_)
                                   (let* ((_%g2390923917%_
                                           (lambda (_%g2391023913%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2391023913%_)))
                                          (_%g2390824477%_
                                           (lambda (_%g2391023921%_)
                                             ((lambda (_%L23924%_)
                                                (let* ((_%g2393723945%_
                                                        (lambda (_%g2393823941%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2393823941%_)))
                                                       (_%g2393624473%_
                                                        (lambda (_%g2393823949%_)
                                                          ((lambda (_%L23952%_)
                                                             (let* ((_%g2396523973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2396623969%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2396623969%_)))
                            (_%g2396424438%_
                             (lambda (_%g2396623977%_)
                               ((lambda (_%L23980%_)
                                  (let* ((_%g2399324001%_
                                          (lambda (_%g2399423997%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2399423997%_)))
                                         (_%g2399224367%_
                                          (lambda (_%g2399424005%_)
                                            ((lambda (_%L24008%_)
                                               (let* ((_%g2402124029%_
                                                       (lambda (_%g2402224025%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2402224025%_)))
                                                      (_%g2402024363%_
                                                       (lambda (_%g2402224033%_)
                                                         ((lambda (_%L24036%_)
                                                            (let* ((_%g2404924057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2405024053%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2405024053%_)))
                           (_%g2404824359%_
                            (lambda (_%g2405024061%_)
                              ((lambda (_%L24064%_)
                                 (let* ((_%g2407724085%_
                                         (lambda (_%g2407824081%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2407824081%_)))
                                        (_%g2407624355%_
                                         (lambda (_%g2407824089%_)
                                           ((lambda (_%L24092%_)
                                              (let* ((_%g2410524113%_
                                                      (lambda (_%g2410624109%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2410624109%_)))
                                                     (_%g2410424329%_
                                                      (lambda (_%g2410624117%_)
                                                        ((lambda (_%L24120%_)
                                                           (let* ((_%g2413324141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2413424137%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2413424137%_)))
                          (_%g2413224303%_
                           (lambda (_%g2413424145%_)
                             ((lambda (_%L24148%_)
                                (let* ((_%g2416124169%_
                                        (lambda (_%g2416224165%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2416224165%_)))
                                       (_%g2416024277%_
                                        (lambda (_%g2416224173%_)
                                          ((lambda (_%L24176%_)
                                             (let* ((_%g2418924197%_
                                                     (lambda (_%g2419024193%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2419024193%_)))
                                                    (_%g2418824251%_
                                                     (lambda (_%g2419024201%_)
                                                       ((lambda (_%L24204%_)
                                                          (let* ((_%g2421724225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2421824221%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2421824221%_)))
                         (_%g2421624247%_
                          (lambda (_%g2421824229%_)
                            ((lambda (_%L24232%_)
                               (_%wrap22648%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%L23784%_
                                            (cons _%L24232%_ '())))))
                             _%g2421824229%_))))
                    (_%g2421624247%_
                     (_%wrap22648%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%L22678%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%L23812%_
                                                          (cons 'name:
                                                                (cons _%L23840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%L23896%_
                                          (cons 'super:
                                                (cons _%L23868%_
                                                      (cons 'struct?:
                                                            (cons _%L23924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%L23952%_
                                      (cons 'metaclass:
                                            (cons _%L23980%_
                                                  (cons 'constructor-method:
                                                        (cons _%L24008%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L24036%_
                                  (cons 'constructor:
                                        (cons _%L24064%_
                                              (cons 'predicate:
                                                    (cons _%L24092%_
                                                          (cons 'accessors:
                                                                (cons _%L24120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%L24148%_
                                          (cons 'unchecked-accessors:
                                                (cons _%L24176%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%L24204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2419024201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2418824251%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L23361%_
                                                         _%L22860%_)
                                                        (foldr (lambda (_%g2425424261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2425524264%_
                                _%g2425624266%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2425524264%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2425424261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2425624266%_))
                       (begin
                         (gx#syntax-check-splice-targets _%L23503%_ _%L23076%_)
                         (foldr (lambda (_%g2425724269%_
                                         _%g2425824272%_
                                         _%g2425924274%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2425824272%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2425724269%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2425924274%_))
                                '()
                                _%L23503%_
                                _%L23076%_))
                       _%L23361%_
                       _%L22860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2416224173%_))))
                                  (_%g2416024277%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23290%_
                                            _%L22860%_)
                                           (foldr (lambda (_%g2428024287%_
                                                           _%g2428124290%_
                                                           _%g2428224292%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2428124290%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2428024287%_ '()))
                                          '()))))
                  _%g2428224292%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23432%_
                                                     _%L23076%_)
                                                    (foldr (lambda (_%g2428324295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2428424298%_
                            _%g2428524300%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2428424298%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2428324295%_
                                                               '()))
                                                   '()))))
                           _%g2428524300%_))
                   '()
                   _%L23432%_
                   _%L23076%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23290%_
                                                  _%L22860%_))))))
                              _%g2413424145%_))))
                     (_%g2413224303%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%L23002%_
                               _%L22860%_)
                              (foldr (lambda (_%g2430624313%_
                                              _%g2430724316%_
                                              _%g2430824318%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2430724316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2430624313%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2430824318%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%L23219%_
                                        _%L23076%_)
                                       (foldr (lambda (_%g2430924321%_
                                                       _%g2431024324%_
                                                       _%g2431124326%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2431024324%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2430924321%_ '()))
                                      '()))))
              _%g2431124326%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L23219%_
                                              _%L23076%_))
                                     _%L23002%_
                                     _%L22860%_))))))
                 _%g2410624117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2410424329%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%L22931%_
                                                          _%L22860%_)
                                                         (foldr (lambda (_%g2433224339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2433324342%_
                                 _%g2433424344%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2433324342%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2433224339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2433424344%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%L23148%_
                           _%L23076%_)
                          (foldr (lambda (_%g2433524347%_
                                          _%g2433624350%_
                                          _%g2433724352%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2433624350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2433524347%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2433724352%_))
                                 '()
                                 _%L23148%_
                                 _%L23076%_))
                        _%L22931%_
                        _%L22860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2407824089%_))))
                                   (_%g2407624355%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%L22765%_ '())))))
                               _%g2405024061%_))))
                      (_%g2404824359%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%L22737%_ '())))))
                  _%g2402224033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2402024363%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%L22709%_
                                                              '())))))
                                             _%g2399424005%_))))
                                    (_%g2399224367%_
                                     (if (null? _%type-constructor23588%_)
                                         '#f
                                         (let* ((_%g2437124386%_
                                                 (lambda (_%g2437224382%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2437224382%_)))
                                                (_%g2437024434%_
                                                 (lambda (_%g2437224390%_)
                                                   (if (gx#stx-pair?
                                                        _%g2437224390%_)
                                                       (let ((_%e2437424393%_
                                                              (gx#syntax-e
                                                               _%g2437224390%_)))
                                                         (let ((_%hd2437524397%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2437424393%_)))
                       (_%tl2437624400%_
                        (let () (declare (not safe)) (##cdr _%e2437424393%_))))
                   (if (gx#stx-datum? _%hd2437524397%_)
                       (let ((_%e2437724403%_ (gx#stx-e _%hd2437524397%_)))
                         (if (equal? _%e2437724403%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2437624400%_)
                                 (let ((_%e2437824407%_
                                        (gx#syntax-e _%tl2437624400%_)))
                                   (let ((_%hd2437924411%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2437824407%_)))
                                         (_%tl2438024414%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2437824407%_))))
                                     (if (gx#stx-null? _%tl2438024414%_)
                                         ((lambda (_%L24417%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L24417%_ '())))
                                          _%hd2437924411%_)
                                         (_%g2437124386%_ _%g2437224390%_))))
                                 (_%g2437124386%_ _%g2437224390%_))
                             (_%g2437124386%_ _%g2437224390%_)))
                       (_%g2437124386%_ _%g2437224390%_))))
               (_%g2437124386%_ _%g2437224390%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2437024434%_
                                            _%type-constructor23588%_))))))
                                _%g2396623977%_))))
                       (_%g2396424438%_
                        (if _%metaclass23679%_
                            (let* ((_%g2444224450%_
                                    (lambda (_%g2444324446%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2444324446%_)))
                                   (_%g2444124469%_
                                    (lambda (_%g2444324454%_)
                                      ((lambda (_%L24457%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%L24457%_ '())))
                                       _%g2444324454%_))))
                              (_%g2444124469%_ _%metaclass23679%_))
                            '#f))))
                   _%g2393823949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2393624473%_
                                                   _%final?23685%_)))
                                              _%g2391023921%_))))
                                     (_%g2390824477%_ _%struct?22660%_)))
                                 _%g2388223893%_))))
                        (_%g2388024481%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2448424487%_
                                                     _%g2448524490%_)
                                              (cons _%g2448424487%_
                                                    _%g2448524490%_))
                                            '()
                                            _%L22860%_)
                                     '())))))
                    _%g2385423865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2385224493%_
                                                    (let* ((_%g2449724514%_
                                                            (lambda (_%g2449824510%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2449824510%_)))
                                                           (_%g2449624575%_
                                                            (lambda (_%g2449824518%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2449824518%_)
                          (let ((_g27318_
                                 (gx#syntax-split-splice _%g2449824518%_ '0)))
                            (begin
                              (let ((_g27319_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27318_)
                                           (##vector-length _g27318_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27319_ 2)))
                                    (error "Context expects 2 values"
                                           _g27319_)))
                              (let ((_%target2450024521%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27318_ 0)))
                                    (_%tl2450224524%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g27318_ 1))))
                                (if (gx#stx-null? _%tl2450224524%_)
                                    (letrec ((_%loop2450324527%_
                                              (lambda (_%hd2450124531%_
                                                       _%super-id2450724534%_)
                                                (if (gx#stx-pair?
                                                     _%hd2450124531%_)
                                                    (let ((_%e2450424537%_
                                                           (gx#syntax-e
                                                            _%hd2450124531%_)))
                                                      (let ((_%lp-hd2450524541%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2450424537%_)))
                    (_%lp-tl2450624544%_
                     (let () (declare (not safe)) (##cdr _%e2450424537%_))))
                (_%loop2450324527%_
                 _%lp-tl2450624544%_
                 (cons _%lp-hd2450524541%_ _%super-id2450724534%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2450824547%_
                                                           (reverse _%super-id2450724534%_)))
                                                      ((lambda (_%L24551%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2456624569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2456724572%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2456624569%_ '()))
                                      _%g2456724572%_))
                              '()
                              _%L24551%_)))
               _%super-id2450824547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2450324527%_
                                       _%target2450024521%_
                                       '()))
                                    (_%g2449724514%_ _%g2449824518%_)))))
                          (_%g2449724514%_ _%g2449824518%_)))))
              (_%g2449624575%_ _%super-ref22644%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2382623837%_))))
                                      (_%g2382424579%_
                                       (let* ((_%g2458324591%_
                                               (lambda (_%g2458424587%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2458424587%_)))
                                              (_%g2458224610%_
                                               (lambda (_%g2458424595%_)
                                                 ((lambda (_%L24598%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L24598%_
                                                                '())))
                                                  _%g2458424595%_))))
                                         (_%g2458224610%_
                                          (cadr _%type-name23566%_))))))
                                  _%g2379823809%_))))
                         (_%g2379624614%_
                          (let* ((_%g2461824633%_
                                  (lambda (_%g2461924629%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2461924629%_)))
                                 (_%g2461724681%_
                                  (lambda (_%g2461924637%_)
                                    (if (gx#stx-pair? _%g2461924637%_)
                                        (let ((_%e2462124640%_
                                               (gx#syntax-e _%g2461924637%_)))
                                          (let ((_%hd2462224644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2462124640%_)))
                                                (_%tl2462324647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2462124640%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2462224644%_)
                                                (let ((_%e2462424650%_
                                                       (gx#stx-e
                                                        _%hd2462224644%_)))
                                                  (if (equal? _%e2462424650%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2462324647%_)
                                                          (let ((_%e2462524654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2462324647%_)))
                    (let ((_%hd2462624658%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2462524654%_)))
                          (_%tl2462724661%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2462524654%_))))
                      (if (gx#stx-null? _%tl2462724661%_)
                          ((lambda (_%L24664%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%L24664%_ '())))
                           _%hd2462624658%_)
                          (_%g2461824633%_ _%g2461924637%_))))
                  (_%g2461824633%_ _%g2461924637%_))
              (_%g2461824633%_ _%g2461924637%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2461824633%_
                                                 _%g2461924637%_))))
                                        (_%g2461824633%_ _%g2461924637%_)))))
                            (_%g2461724681%_ _%type-id23573%_)))))
                     _%g2377023781%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2376824685%_
                                                     (_%wrap22648%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%L22709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L22793%_
                                (cons _%L22737%_
                                      (cons _%L22765%_
                                            (foldr (lambda (_%g2468824691%_
                                                            _%g2468924694%_)
                                                     (cons _%g2468824691%_
                                                           _%g2468924694%_))
                                                   '()
                                                   _%L23748%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2370523744%_))))))
                               (_%loop2370023724%_ _%target2369723718%_ '()))
                             (_%g2369423711%_ _%g2369523715%_)))))
                   (_%g2369423711%_ _%g2369523715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2369324697%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23559%_
                                                                _%type-slots23538%_)
                                                         _%type-properties23667%_)
                                                  _%type-metaclass23682%_)
                                           _%type-final23691%_)
                                    _%type-struct23688%_)
                             _%type-constructor23588%_)
                      _%type-name23566%_)
               _%type-id23573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2346023499%_))))))
                          (_%loop2345523479%_ _%target2345223473%_ '()))
                        (_%g2344923466%_ _%g2345023470%_)))))
              (_%g2344923466%_ _%g2345023470%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2344824701%_
                                           (gx#stx-map
                                            (lambda (_%g2470424706%_)
                                              (_%make-id22650%_
                                               '"&"
                                               _%g2470424706%_))
                                            (foldr (lambda (_%g2470924712%_
                                                            _%g2471024715%_)
                                                     (cons _%g2470924712%_
                                                           _%g2471024715%_))
                                                   '()
                                                   _%L23219%_)))))
                                      _%mixin-ugetf2338923428%_))))))
                     (_%loop2338423408%_ _%target2338123402%_ '()))
                   (_%g2337823395%_ _%g2337923399%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2337823395%_
                                                  _%g2337923399%_)))))
                                     (_%g2337724718%_
                                      (gx#stx-map
                                       (lambda (_%g2472124723%_)
                                         (_%make-id22650%_
                                          '"&"
                                          _%g2472124723%_))
                                       (foldr (lambda (_%g2472624729%_
                                                       _%g2472724732%_)
                                                (cons _%g2472624729%_
                                                      _%g2472724732%_))
                                              '()
                                              _%L23148%_)))))
                                 _%usetf2331823357%_))))))
                (_%loop2331323337%_ _%target2331023331%_ '()))
              (_%g2330723324%_ _%g2330823328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2330723324%_
                                             _%g2330823328%_)))))
                                (_%g2330624735%_
                                 (gx#stx-map
                                  (lambda (_%g2473824740%_)
                                    (_%make-id22650%_ '"&" _%g2473824740%_))
                                  (foldr (lambda (_%g2474324746%_
                                                  _%g2474424749%_)
                                           (cons _%g2474324746%_
                                                 _%g2474424749%_))
                                         '()
                                         _%L23002%_)))))
                            _%ugetf2324723286%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2324223266%_
                                                    _%target2323923260%_
                                                    '()))
                                                 (_%g2323623253%_
                                                  _%g2323723257%_)))))
                                       (_%g2323623253%_ _%g2323723257%_)))))
                           (_%g2323524752%_
                            (gx#stx-map
                             (lambda (_%g2475524757%_)
                               (_%make-id22650%_ '"&" _%g2475524757%_))
                             (foldr (lambda (_%g2476024763%_ _%g2476124766%_)
                                      (cons _%g2476024763%_ _%g2476124766%_))
                                    '()
                                    _%L22931%_)))))
                       _%mixin-setf2317623215%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2317123195%_
                                               _%target2316823189%_
                                               '()))
                                            (_%g2316523182%_
                                             _%g2316623186%_)))))
                                  (_%g2316523182%_ _%g2316623186%_)))))
                      (_%g2316424769%_
                       (gx#stx-map
                        (lambda (_%g2477224774%_)
                          (_%make-id22650%_
                           _%name22654%_
                           '"-"
                           _%g2477224774%_
                           '"-set!"))
                        _%mixin-slots23019%_))))
                  _%mixin-getf2310523144%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2310023124%_
                                          _%target2309723118%_
                                          '()))
                                       (_%g2309423111%_ _%g2309523115%_)))))
                             (_%g2309423111%_ _%g2309523115%_)))))
                 (_%g2309324778%_
                  (gx#stx-map
                   (lambda (_%g2478124783%_)
                     (_%make-id22650%_ _%name22654%_ '"-" _%g2478124783%_))
                   _%mixin-slots23019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2303323072%_))))))
                                    (_%loop2302823052%_
                                     _%target2302523046%_
                                     '()))
                                  (_%g2302223039%_ _%g2302323043%_)))))
                        (_%g2302223039%_ _%g2302323043%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2302124787%_
                                                     _%mixin-slots23019%_)))
                                                _%setf2295922998%_))))))
                               (_%loop2295422978%_ _%target2295122972%_ '()))
                             (_%g2294822965%_ _%g2294922969%_)))))
                   (_%g2294822965%_ _%g2294922969%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2294724791%_
                                                (gx#stx-map
                                                 (lambda (_%g2479424796%_)
                                                   (_%make-id22650%_
                                                    _%name22654%_
                                                    '"-"
                                                    _%g2479424796%_
                                                    '"-set!"))
                                                 _%slots22645%_))))
                                           _%getf2288822927%_))))))
                          (_%loop2288322907%_ _%target2288022901%_ '()))
                        (_%g2287722894%_ _%g2287822898%_)))))
              (_%g2287722894%_ _%g2287822898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2287624800%_
                                           (gx#stx-map
                                            (lambda (_%g2480324805%_)
                                              (_%make-id22650%_
                                               _%name22654%_
                                               '"-"
                                               _%g2480324805%_))
                                            _%slots22645%_))))
                                      _%slot2281722856%_))))))
                     (_%loop2281222836%_ _%target2280922830%_ '()))
                   (_%g2280622823%_ _%g2280722827%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2280622823%_
                                                  _%g2280722827%_)))))
                                     (_%g2280524809%_ _%slots22645%_)))
                                 _%g2277922790%_))))
                        (_%g2277724813%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22657%_)))))
                    _%g2275122762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2274924817%_
                                                    (_%make-id22650%_
                                                     _%name22654%_
                                                     '"?"))))
                                               _%g2272322734%_))))
                                      (_%g2272124821%_
                                       (_%make-id22650%_
                                        '"make-"
                                        _%name22654%_))))
                                  _%g2269522706%_))))
                         (_%g2269324825%_
                          (_%make-id22650%_ _%name22654%_ '"::t"))))
                     _%g2266422675%_))))
            (_%g2266224829%_ _%id22643%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24896%_)
        (let* ((_%g2490024919%_
                (lambda (_%g2490124915%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2490124915%_)))
               (_%g2489924976%_
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
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24959%_
                                                         (cons _%L24958%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24956%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2491324953%_
                                           _%hd2491224950%_
                                           _%hd2490924940%_)))
                                      (_%g2490024919%_ _%g2490124923%_))))
                              (_%g2490024919%_ _%g2490124923%_))))
                      (_%g2490024919%_ _%g2490124923%_)))))
          (_%g2489924976%_ _%$stx24896%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24980%_)
        (letrec ((_%generate24983%_
                  (lambda (_%hd25067%_ _%slots25069%_ _%body25070%_)
                    (let* ((_%__stx2683526836%_ _%hd25067%_)
                           (_%g2507325085%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2683526836%_))))
                      (let ((_%__kont2683826839%_
                             (lambda (_%L25113%_ _%L25115%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24980%_
                                _%L25115%_
                                (gx#syntax->list _%L25113%_)
                                _%slots25069%_
                                _%body25070%_)))
                            (_%__kont2684026841%_
                             (lambda ()
                               (if (gx#identifier? _%hd25067%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24980%_
                                    _%hd25067%_
                                    '()
                                    _%slots25069%_
                                    _%body25070%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _%stx24980%_
                                    _%hd25067%_)))))
                        (let ((_%__match2684826849%_
                               (lambda (_%e2507725103%_
                                        _%hd2507825107%_
                                        _%tl2507925110%_)
                                 (let ((_%L25113%_ _%tl2507925110%_)
                                       (_%L25115%_ _%hd2507825107%_))
                                   (if (and (gx#stx-list? _%L25113%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25113%_))
                                       (_%__kont2683826839%_
                                        _%L25113%_
                                        _%L25115%_)
                                       (_%__kont2684026841%_))))))
                          (if (gx#stx-pair? _%__stx2683526836%_)
                              (let ((_%e2507725103%_
                                     (gx#syntax-e _%__stx2683526836%_)))
                                (let ((_%tl2507925110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2507725103%_)))
                                      (_%hd2507825107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2507725103%_))))
                                  (_%__match2684826849%_
                                   _%e2507725103%_
                                   _%hd2507825107%_
                                   _%tl2507925110%_)))
                              (_%__kont2684026841%_))))))))
          (let* ((_%g2498625005%_
                  (lambda (_%g2498725001%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2498725001%_)))
                 (_%g2498525063%_
                  (lambda (_%g2498725009%_)
                    (if (gx#stx-pair? _%g2498725009%_)
                        (let ((_%e2499125012%_ (gx#syntax-e _%g2498725009%_)))
                          (let ((_%hd2499225016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2499125012%_)))
                                (_%tl2499325019%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2499125012%_))))
                            (if (gx#stx-pair? _%tl2499325019%_)
                                (let ((_%e2499425022%_
                                       (gx#syntax-e _%tl2499325019%_)))
                                  (let ((_%hd2499525026%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2499425022%_)))
                                        (_%tl2499625029%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2499425022%_))))
                                    (if (gx#stx-pair? _%tl2499625029%_)
                                        (let ((_%e2499725032%_
                                               (gx#syntax-e _%tl2499625029%_)))
                                          (let ((_%hd2499825036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2499725032%_)))
                                                (_%tl2499925039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2499725032%_))))
                                            ((lambda (_%L25042%_
                                                      _%L25044%_
                                                      _%L25045%_)
                                               (if (and (gx#identifier-list?
                                                         _%L25044%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%L25042%_))
                                                   (_%generate24983%_
                                                    _%L25045%_
                                                    _%L25044%_
                                                    _%L25042%_)
                                                   (_%g2498625005%_
                                                    _%g2498725009%_)))
                                             _%tl2499925039%_
                                             _%hd2499825036%_
                                             _%hd2499525026%_)))
                                        (_%g2498625005%_ _%g2498725009%_))))
                                (_%g2498625005%_ _%g2498725009%_))))
                        (_%g2498625005%_ _%g2498725009%_)))))
            (_%g2498525063%_ _%stx24980%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25132%_)
        (letrec ((_%wrap25135%_
                  (lambda (_%e-stx25481%_)
                    (gx#stx-wrap-source
                     _%e-stx25481%_
                     (gx#stx-source _%stx25132%_))))
                 (_%method-opt?25137%_
                  (lambda (_%x25478%_)
                    (let ((__tmp27320 (gx#stx-e _%x25478%_)))
                      (declare (not safe))
                      (##memq __tmp27320 '(rebind:))))))
          (let* ((_%g2513925168%_
                  (lambda (_%g2514025164%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2514025164%_)))
                 (_%g2513825474%_
                  (lambda (_%g2514025172%_)
                    (if (gx#stx-pair? _%g2514025172%_)
                        (let ((_%e2514525175%_ (gx#syntax-e _%g2514025172%_)))
                          (let ((_%hd2514625179%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2514525175%_)))
                                (_%tl2514725182%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2514525175%_))))
                            (if (gx#stx-pair? _%tl2514725182%_)
                                (let ((_%e2514825185%_
                                       (gx#syntax-e _%tl2514725182%_)))
                                  (let ((_%hd2514925189%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2514825185%_)))
                                        (_%tl2515025192%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2514825185%_))))
                                    (if (gx#stx-pair? _%hd2514925189%_)
                                        (let ((_%e2515125195%_
                                               (gx#syntax-e _%hd2514925189%_)))
                                          (let ((_%hd2515225199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2515125195%_)))
                                                (_%tl2515325202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2515125195%_))))
                                            (if (gx#identifier?
                                                 _%hd2515225199%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27321_|
                                                     _%hd2515225199%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2515325202%_)
                                                        (let ((_%e2515425205%_
                                                               (gx#syntax-e
                                                                _%tl2515325202%_)))
                                                          (let ((_%hd2515525209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2515425205%_)))
                        (_%tl2515625212%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2515425205%_))))
                    (if (gx#stx-pair? _%tl2515625212%_)
                        (let ((_%e2515725215%_ (gx#syntax-e _%tl2515625212%_)))
                          (let ((_%hd2515825219%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2515725215%_)))
                                (_%tl2515925222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2515725215%_))))
                            (if (gx#stx-null? _%tl2515925222%_)
                                (if (gx#stx-pair? _%tl2515025192%_)
                                    (let ((_%e2516025225%_
                                           (gx#syntax-e _%tl2515025192%_)))
                                      (let ((_%hd2516125229%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2516025225%_)))
                                            (_%tl2516225232%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2516025225%_))))
                                        ((lambda (_%L25235%_
                                                  _%L25237%_
                                                  _%L25238%_
                                                  _%L25239%_)
                                           (if (and (gx#identifier? _%L25239%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                       _%L25238%_))
                                                    (gx#stx-plist?
                                                     _%L25235%_
                                                     _%method-opt?25137%_))
                                               (let* ((_%klass25266%_
                                                       (gx#syntax-local-value
                                                        _%L25238%_))
                                                      (_%rebind?25269%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%L25235%_)))
                                                      (_%g2527225280%_
                                                       (lambda (_%g2527325276%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2527325276%_)))
                                                      (_%g2527125464%_
                                                       (lambda (_%g2527325284%_)
                                                         ((lambda (_%L25287%_)
                                                            (let* ((_%g2530225310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2530325306%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2530325306%_)))
                           (_%g2530125460%_
                            (lambda (_%g2530325314%_)
                              ((lambda (_%L25317%_)
                                 (let* ((_%g2533025338%_
                                         (lambda (_%g2533125334%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2533125334%_)))
                                        (_%g2532925456%_
                                         (lambda (_%g2533125342%_)
                                           ((lambda (_%L25345%_)
                                              (let* ((_%g2535825366%_
                                                      (lambda (_%g2535925362%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2535925362%_)))
                                                     (_%g2535725452%_
                                                      (lambda (_%g2535925370%_)
                                                        ((lambda (_%L25373%_)
                                                           (let* ((_%g2538625394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2538725390%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2538725390%_)))
                          (_%g2538525448%_
                           (lambda (_%g2538725398%_)
                             ((lambda (_%L25401%_)
                                (let* ((_%g2541425422%_
                                        (lambda (_%g2541525418%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2541525418%_)))
                                       (_%g2541325444%_
                                        (lambda (_%g2541525426%_)
                                          ((lambda (_%L25429%_)
                                             (_%wrap25135%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L25373%_
                                                          (cons _%L25429%_
                                                                '())))))
                                           _%g2541525426%_))))
                                  (_%g2541325444%_
                                   (_%wrap25135%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%L25287%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L25239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%L25317%_ (cons _%L25401%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2538725398%_))))
                     (_%g2538525448%_ _%rebind?25269%_)))
                 _%g2535925370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2535725452%_
                                                 (_%wrap25135%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%L25317%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%L25345%_
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
                                                      (cons _%L25287%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25239%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%L25237%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2533125342%_))))
                                   (_%g2532925456%_
                                    (gx#stx-identifier
                                     _%L25238%_
                                     '@next-method))))
                               _%g2530325314%_))))
                      (_%g2530125460%_
                       (gx#stx-identifier
                        _%L25238%_
                        _%L25238%_
                        '"::"
                        _%L25239%_))))
                  _%g2527325284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2527125464%_
                                                  (let ((__obj27112
                                                         _%klass25266%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27112
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27112
                                                           '12
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj27112
                                                         'type-descriptor)))))
                                               (if (not (gx#identifier?
                                                         _%L25239%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25132%_
                                                    _%L25239%_)
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                               _%L25238%_)))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; expected type identifier"
                                                        _%stx25132%_
                                                        _%L25238%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25132%_)))))
                                         _%tl2516225232%_
                                         _%hd2516125229%_
                                         _%hd2515825219%_
                                         _%hd2515525209%_)))
                                    (_%g2513925168%_ _%g2514025172%_))
                                (_%g2513925168%_ _%g2514025172%_))))
                        (_%g2513925168%_ _%g2514025172%_))))
                (_%g2513925168%_ _%g2514025172%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2513925168%_
                                                     _%g2514025172%_))
                                                (_%g2513925168%_
                                                 _%g2514025172%_))))
                                        (_%g2513925168%_ _%g2514025172%_))))
                                (_%g2513925168%_ _%g2514025172%_))))
                        (_%g2513925168%_ _%g2514025172%_)))))
            (_%g2513825474%_ _%stx25132%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25484%_)
        (letrec ((_%dotted-identifier?25487%_
                  (lambda (_%id26120%_)
                    (if (gx#identifier? _%id26120%_)
                        (let ((_%id-str26123%_
                               (symbol->string (gx#stx-e _%id26120%_))))
                          (if (string-index _%id-str26123%_ '#\.)
                              (let* ((_%split26126%_
                                      (string-split _%id-str26123%_ '#\.))
                                     (__tmp27322 (length _%split26126%_)))
                                (declare (not safe))
                                (##fx= __tmp27322 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25489%_
                  (lambda (_%id26109%_)
                    (let* ((_%id-str26112%_
                            (symbol->string (gx#stx-e _%id26109%_)))
                           (_%split26115%_
                            (string-split _%id-str26112%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26109%_
                             (car _%split26115%_))
                            (cons (gx#stx-identifier
                                   _%id26109%_
                                   (cadr _%split26115%_))
                                  '()))))))
          (let* ((_%__stx2685126852%_ _%stx25484%_)
                 (_%g2549425581%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2685126852%_))))
            (let ((_%__kont2685426855%_
                   (lambda (_%L26002%_ _%L26004%_ _%L26005%_)
                     (let* ((_%g2603326048%_
                             (lambda (_%g2603426044%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2603426044%_)))
                            (_%g2603226101%_
                             (lambda (_%g2603426052%_)
                               (if (gx#stx-pair? _%g2603426052%_)
                                   (let ((_%e2603726055%_
                                          (gx#syntax-e _%g2603426052%_)))
                                     (let ((_%hd2603826059%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2603726055%_)))
                                           (_%tl2603926062%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2603726055%_))))
                                       (if (gx#stx-pair? _%tl2603926062%_)
                                           (let ((_%e2604026065%_
                                                  (gx#syntax-e
                                                   _%tl2603926062%_)))
                                             (let ((_%hd2604126069%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2604026065%_)))
                                                   (_%tl2604226072%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2604026065%_))))
                                               (if (gx#stx-null?
                                                    _%tl2604226072%_)
                                                   ((lambda (_%L26075%_
                                                             _%L26077%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%L26077%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L26075%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2609226095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2609326098%_)
                   (cons _%g2609226095%_ _%g2609326098%_))
                 '()
                 _%L26004%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2604126069%_
                                                    _%hd2603826059%_)
                                                   (_%g2603326048%_
                                                    _%g2603426052%_))))
                                           (_%g2603326048%_ _%g2603426052%_))))
                                   (_%g2603326048%_ _%g2603426052%_)))))
                       (_%g2603226101%_ (_%split-dotted25489%_ _%L26005%_)))))
                  (_%__kont2685826859%_
                   (lambda (_%L25844%_ _%L25846%_)
                     (let* ((_%g2586325878%_
                             (lambda (_%g2586425874%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2586425874%_)))
                            (_%g2586225931%_
                             (lambda (_%g2586425882%_)
                               (if (gx#stx-pair? _%g2586425882%_)
                                   (let ((_%e2586725885%_
                                          (gx#syntax-e _%g2586425882%_)))
                                     (let ((_%hd2586825889%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2586725885%_)))
                                           (_%tl2586925892%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2586725885%_))))
                                       (if (gx#stx-pair? _%tl2586925892%_)
                                           (let ((_%e2587025895%_
                                                  (gx#syntax-e
                                                   _%tl2586925892%_)))
                                             (let ((_%hd2587125899%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2587025895%_)))
                                                   (_%tl2587225902%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2587025895%_))))
                                               (if (gx#stx-null?
                                                    _%tl2587225902%_)
                                                   ((lambda (_%L25905%_
                                                             _%L25907%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%L25907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25905%_ '()))
                                (foldr (lambda (_%g2592225925%_
                                                _%g2592325928%_)
                                         (cons _%g2592225925%_
                                               _%g2592325928%_))
                                       '()
                                       _%L25844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2587125899%_
                                                    _%hd2586825889%_)
                                                   (_%g2586325878%_
                                                    _%g2586425882%_))))
                                           (_%g2586325878%_ _%g2586425882%_))))
                                   (_%g2586325878%_ _%g2586425882%_)))))
                       (_%g2586225931%_ (_%split-dotted25489%_ _%L25846%_)))))
                  (_%__kont2686226863%_
                   (lambda (_%L25748%_ _%L25750%_ _%L25751%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25750%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25751%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2577825781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2577925784%_)
                          (cons _%g2577825781%_ _%g2577925784%_))
                        '()
                        _%L25748%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2686626867%_
                   (lambda (_%L25648%_ _%L25650%_ _%L25651%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25650%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25651%_ '()))
                                       (foldr (lambda (_%g2567225675%_
                                                       _%g2567325678%_)
                                                (cons _%g2567225675%_
                                                      _%g2567325678%_))
                                              '()
                                              _%L25648%_)))))))
              (let* ((_%__match2697026971%_
                      (lambda (_%e2555825588%_
                               _%hd2555925592%_
                               _%tl2556025595%_
                               _%e2556125598%_
                               _%hd2556225602%_
                               _%tl2556325605%_
                               _%e2556425608%_
                               _%hd2556525612%_
                               _%tl2556625615%_
                               _%__splice2686826869%_
                               _%target2556725618%_
                               _%tl2556925621%_)
                        (letrec ((_%loop2557025624%_
                                  (lambda (_%hd2556825628%_ _%arg2557425631%_)
                                    (if (gx#stx-pair? _%hd2556825628%_)
                                        (let ((_%e2557125634%_
                                               (gx#syntax-e _%hd2556825628%_)))
                                          (let ((_%lp-tl2557325641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2557125634%_)))
                                                (_%lp-hd2557225638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2557125634%_))))
                                            (_%loop2557025624%_
                                             _%lp-tl2557325641%_
                                             (cons _%lp-hd2557225638%_
                                                   _%arg2557425631%_))))
                                        (let ((_%arg2557525644%_
                                               (reverse _%arg2557425631%_)))
                                          (let ((_%L25648%_ _%arg2557525644%_)
                                                (_%L25650%_ _%hd2556525612%_)
                                                (_%L25651%_ _%hd2556225602%_))
                                            (if (gx#identifier? _%L25651%_)
                                                (_%__kont2686626867%_
                                                 _%L25648%_
                                                 _%L25650%_
                                                 _%L25651%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2549425581%_)))))))))
                          (_%loop2557025624%_ _%target2556725618%_ '()))))
                     (_%__match2694426945%_
                      (lambda (_%e2553725688%_
                               _%hd2553825692%_
                               _%tl2553925695%_
                               _%e2554025698%_
                               _%hd2554125702%_
                               _%tl2554225705%_
                               _%e2554325708%_
                               _%hd2554425712%_
                               _%tl2554525715%_
                               _%__splice2686426865%_
                               _%target2554625718%_
                               _%tl2554825721%_)
                        (letrec ((_%loop2554925724%_
                                  (lambda (_%hd2554725728%_ _%arg2555325731%_)
                                    (if (gx#stx-pair? _%hd2554725728%_)
                                        (let ((_%e2555025734%_
                                               (gx#syntax-e _%hd2554725728%_)))
                                          (let ((_%lp-tl2555225741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2555025734%_)))
                                                (_%lp-hd2555125738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2555025734%_))))
                                            (_%loop2554925724%_
                                             _%lp-tl2555225741%_
                                             (cons _%lp-hd2555125738%_
                                                   _%arg2555325731%_))))
                                        (let ((_%arg2555425744%_
                                               (reverse _%arg2555325731%_)))
                                          (let ((_%L25748%_ _%arg2555425744%_)
                                                (_%L25750%_ _%hd2554425712%_)
                                                (_%L25751%_ _%hd2554125702%_))
                                            (if (and (gx#identifier?
                                                      _%L25751%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2577025773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2577125776%_)
                       (cons _%g2577025773%_ _%g2577125776%_))
                     '()
                     _%L25748%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2686226863%_
                                                 _%L25748%_
                                                 _%L25750%_
                                                 _%L25751%_)
                                                (_%__match2697026971%_
                                                 _%e2553725688%_
                                                 _%hd2553825692%_
                                                 _%tl2553925695%_
                                                 _%e2554025698%_
                                                 _%hd2554125702%_
                                                 _%tl2554225705%_
                                                 _%e2554325708%_
                                                 _%hd2554425712%_
                                                 _%tl2554525715%_
                                                 _%__splice2686426865%_
                                                 _%target2554625718%_
                                                 _%tl2554825721%_))))))))
                          (_%loop2554925724%_ _%target2554625718%_ '()))))
                     (_%__match2693026931%_
                      (lambda (_%e2553725688%_
                               _%hd2553825692%_
                               _%tl2553925695%_
                               _%e2554025698%_
                               _%hd2554125702%_
                               _%tl2554225705%_)
                        (if (gx#stx-pair? _%tl2554225705%_)
                            (let ((_%e2554325708%_
                                   (gx#syntax-e _%tl2554225705%_)))
                              (let ((_%tl2554525715%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2554325708%_)))
                                    (_%hd2554425712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2554325708%_))))
                                (if (gx#stx-pair/null? _%tl2554525715%_)
                                    (let ((_%__splice2686426865%_
                                           (gx#syntax-split-splice
                                            _%tl2554525715%_
                                            '0)))
                                      (let ((_%tl2554825721%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2686426865%_
                                                '1)))
                                            (_%target2554625718%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2686426865%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2554825721%_)
                                            (_%__match2694426945%_
                                             _%e2553725688%_
                                             _%hd2553825692%_
                                             _%tl2553925695%_
                                             _%e2554025698%_
                                             _%hd2554125702%_
                                             _%tl2554225705%_
                                             _%e2554325708%_
                                             _%hd2554425712%_
                                             _%tl2554525715%_
                                             _%__splice2686426865%_
                                             _%target2554625718%_
                                             _%tl2554825721%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2549425581%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2549425581%_)))))
                            (let () (declare (not safe)) (_%g2549425581%_)))))
                     (_%__match2691826919%_
                      (lambda (_%e2551925794%_
                               _%hd2552025798%_
                               _%tl2552125801%_
                               _%e2552225804%_
                               _%hd2552325808%_
                               _%tl2552425811%_
                               _%__splice2686026861%_
                               _%target2552525814%_
                               _%tl2552725817%_)
                        (letrec ((_%loop2552825820%_
                                  (lambda (_%hd2552625824%_ _%arg2553225827%_)
                                    (if (gx#stx-pair? _%hd2552625824%_)
                                        (let ((_%e2552925830%_
                                               (gx#syntax-e _%hd2552625824%_)))
                                          (let ((_%lp-tl2553125837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2552925830%_)))
                                                (_%lp-hd2553025834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2552925830%_))))
                                            (_%loop2552825820%_
                                             _%lp-tl2553125837%_
                                             (cons _%lp-hd2553025834%_
                                                   _%arg2553225827%_))))
                                        (let ((_%arg2553325840%_
                                               (reverse _%arg2553225827%_)))
                                          (let ((_%L25844%_ _%arg2553325840%_)
                                                (_%L25846%_ _%hd2552325808%_))
                                            (if (_%dotted-identifier?25487%_
                                                 _%L25846%_)
                                                (_%__kont2685826859%_
                                                 _%L25844%_
                                                 _%L25846%_)
                                                (_%__match2693026931%_
                                                 _%e2551925794%_
                                                 _%hd2552025798%_
                                                 _%tl2552125801%_
                                                 _%e2552225804%_
                                                 _%hd2552325808%_
                                                 _%tl2552425811%_))))))))
                          (_%loop2552825820%_ _%target2552525814%_ '()))))
                     (_%__match2691626917%_
                      (lambda (_%e2551925794%_
                               _%hd2552025798%_
                               _%tl2552125801%_
                               _%e2552225804%_
                               _%hd2552325808%_
                               _%tl2552425811%_
                               _%__splice2686026861%_
                               _%target2552525814%_
                               _%tl2552725817%_)
                        (if (gx#stx-null? _%tl2552725817%_)
                            (_%__match2691826919%_
                             _%e2551925794%_
                             _%hd2552025798%_
                             _%tl2552125801%_
                             _%e2552225804%_
                             _%hd2552325808%_
                             _%tl2552425811%_
                             _%__splice2686026861%_
                             _%target2552525814%_
                             _%tl2552725817%_)
                            (if (gx#stx-pair? _%tl2552425811%_)
                                (let ((_%e2554325708%_
                                       (gx#syntax-e _%tl2552425811%_)))
                                  (let ((_%tl2554525715%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2554325708%_)))
                                        (_%hd2554425712%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2554325708%_))))
                                    (if (gx#stx-pair/null? _%tl2554525715%_)
                                        (let ((_%__splice2686426865%_
                                               (gx#syntax-split-splice
                                                _%tl2554525715%_
                                                '0)))
                                          (let ((_%tl2554825721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686426865%_
                                                    '1)))
                                                (_%target2554625718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686426865%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2554825721%_)
                                                (_%__match2694426945%_
                                                 _%e2551925794%_
                                                 _%hd2552025798%_
                                                 _%tl2552125801%_
                                                 _%e2552225804%_
                                                 _%hd2552325808%_
                                                 _%tl2552425811%_
                                                 _%e2554325708%_
                                                 _%hd2554425712%_
                                                 _%tl2554525715%_
                                                 _%__splice2686426865%_
                                                 _%target2554625718%_
                                                 _%tl2554825721%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2549425581%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2549425581%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2549425581%_))))))
                     (_%__match2689826899%_
                      (lambda (_%e2549925942%_
                               _%hd2550025946%_
                               _%tl2550125949%_
                               _%e2550225952%_
                               _%hd2550325956%_
                               _%tl2550425959%_
                               _%__splice2685626857%_
                               _%target2550525962%_
                               _%tl2550725965%_
                               _%e2551425968%_
                               _%hd2551525972%_
                               _%tl2551625975%_)
                        (letrec ((_%loop2550825978%_
                                  (lambda (_%hd2550625982%_ _%arg2551225985%_)
                                    (if (gx#stx-pair? _%hd2550625982%_)
                                        (let ((_%e2550925988%_
                                               (gx#syntax-e _%hd2550625982%_)))
                                          (let ((_%lp-tl2551125995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2550925988%_)))
                                                (_%lp-hd2551025992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2550925988%_))))
                                            (_%loop2550825978%_
                                             _%lp-tl2551125995%_
                                             (cons _%lp-hd2551025992%_
                                                   _%arg2551225985%_))))
                                        (let ((_%arg2551325998%_
                                               (reverse _%arg2551225985%_)))
                                          (let ((_%L26002%_ _%hd2551525972%_)
                                                (_%L26004%_ _%arg2551325998%_)
                                                (_%L26005%_ _%hd2550325956%_))
                                            (if (and (_%dotted-identifier?25487%_
                                                      _%L26005%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2602426027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2602526030%_)
                       (cons _%g2602426027%_ _%g2602526030%_))
                     '()
                     _%L26004%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2685426855%_
                                                 _%L26002%_
                                                 _%L26004%_
                                                 _%L26005%_)
                                                (let ((_%__splice2686026861%_
                                                       (gx#syntax-split-splice
                                                        _%tl2550425959%_
                                                        '0)))
                                                  (let ((_%tl2552725817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686026861%_
                                                            '1)))
                                                        (_%target2552525814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686026861%_
                                                            '0))))
                                                    (_%__match2691626917%_
                                                     _%e2549925942%_
                                                     _%hd2550025946%_
                                                     _%tl2550125949%_
                                                     _%e2550225952%_
                                                     _%hd2550325956%_
                                                     _%tl2550425959%_
                                                     _%__splice2686026861%_
                                                     _%target2552525814%_
                                                     _%tl2552725817%_))))))))))
                          (_%loop2550825978%_ _%target2550525962%_ '())))))
                (if (gx#stx-pair? _%__stx2685126852%_)
                    (let ((_%e2549925942%_ (gx#syntax-e _%__stx2685126852%_)))
                      (let ((_%tl2550125949%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2549925942%_)))
                            (_%hd2550025946%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2549925942%_))))
                        (if (gx#stx-pair? _%tl2550125949%_)
                            (let ((_%e2550225952%_
                                   (gx#syntax-e _%tl2550125949%_)))
                              (let ((_%tl2550425959%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2550225952%_)))
                                    (_%hd2550325956%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2550225952%_))))
                                (if (gx#stx-pair/null? _%tl2550425959%_)
                                    (if (let ((__tmp27323
                                               (gx#stx-length
                                                _%tl2550425959%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27323 '1))
                                        (let ((_%__splice2685626857%_
                                               (gx#syntax-split-splice
                                                _%tl2550425959%_
                                                '1)))
                                          (let ((_%tl2550725965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2685626857%_
                                                    '1)))
                                                (_%target2550525962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2685626857%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2550725965%_)
                                                (let ((_%e2551425968%_
                                                       (gx#syntax-e
                                                        _%tl2550725965%_)))
                                                  (let ((_%tl2551625975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2551425968%_)))
                                                        (_%hd2551525972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2551425968%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2551625975%_)
                                                        (_%__match2689826899%_
                                                         _%e2549925942%_
                                                         _%hd2550025946%_
                                                         _%tl2550125949%_
                                                         _%e2550225952%_
                                                         _%hd2550325956%_
                                                         _%tl2550425959%_
                                                         _%__splice2685626857%_
                                                         _%target2550525962%_
                                                         _%tl2550725965%_
                                                         _%e2551425968%_
                                                         _%hd2551525972%_
                                                         _%tl2551625975%_)
                                                        (let ((_%__splice2686026861%_
                                                               (gx#syntax-split-splice
                                                                _%tl2550425959%_
                                                                '0)))
                                                          (let ((_%tl2552725817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2686026861%_ '1)))
                        (_%target2552525814%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2686026861%_ '0))))
                    (if (gx#stx-null? _%tl2552725817%_)
                        (_%__match2691826919%_
                         _%e2549925942%_
                         _%hd2550025946%_
                         _%tl2550125949%_
                         _%e2550225952%_
                         _%hd2550325956%_
                         _%tl2550425959%_
                         _%__splice2686026861%_
                         _%target2552525814%_
                         _%tl2552725817%_)
                        (if (gx#stx-pair? _%tl2550425959%_)
                            (let ((_%e2554325708%_
                                   (gx#syntax-e _%tl2550425959%_)))
                              (let ((_%tl2554525715%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2554325708%_)))
                                    (_%hd2554425712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2554325708%_))))
                                (if (gx#stx-pair/null? _%tl2554525715%_)
                                    (let ((_%__splice2686426865%_
                                           (gx#syntax-split-splice
                                            _%tl2554525715%_
                                            '0)))
                                      (let ((_%tl2554825721%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2686426865%_
                                                '1)))
                                            (_%target2554625718%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2686426865%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2554825721%_)
                                            (_%__match2694426945%_
                                             _%e2549925942%_
                                             _%hd2550025946%_
                                             _%tl2550125949%_
                                             _%e2550225952%_
                                             _%hd2550325956%_
                                             _%tl2550425959%_
                                             _%e2554325708%_
                                             _%hd2554425712%_
                                             _%tl2554525715%_
                                             _%__splice2686426865%_
                                             _%target2554625718%_
                                             _%tl2554825721%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2549425581%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2549425581%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2549425581%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2686026861%_
                                                       (gx#syntax-split-splice
                                                        _%tl2550425959%_
                                                        '0)))
                                                  (let ((_%tl2552725817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686026861%_
                                                            '1)))
                                                        (_%target2552525814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686026861%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2552725817%_)
                                                        (_%__match2691826919%_
                                                         _%e2549925942%_
                                                         _%hd2550025946%_
                                                         _%tl2550125949%_
                                                         _%e2550225952%_
                                                         _%hd2550325956%_
                                                         _%tl2550425959%_
                                                         _%__splice2686026861%_
                                                         _%target2552525814%_
                                                         _%tl2552725817%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2550425959%_)
                                                            (let ((_%e2554325708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2550425959%_)))
                      (let ((_%tl2554525715%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2554325708%_)))
                            (_%hd2554425712%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2554325708%_))))
                        (if (gx#stx-pair/null? _%tl2554525715%_)
                            (let ((_%__splice2686426865%_
                                   (gx#syntax-split-splice
                                    _%tl2554525715%_
                                    '0)))
                              (let ((_%tl2554825721%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2686426865%_
                                        '1)))
                                    (_%target2554625718%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2686426865%_
                                        '0))))
                                (if (gx#stx-null? _%tl2554825721%_)
                                    (_%__match2694426945%_
                                     _%e2549925942%_
                                     _%hd2550025946%_
                                     _%tl2550125949%_
                                     _%e2550225952%_
                                     _%hd2550325956%_
                                     _%tl2550425959%_
                                     _%e2554325708%_
                                     _%hd2554425712%_
                                     _%tl2554525715%_
                                     _%__splice2686426865%_
                                     _%target2554625718%_
                                     _%tl2554825721%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2549425581%_)))))
                            (let () (declare (not safe)) (_%g2549425581%_)))))
                    (let () (declare (not safe)) (_%g2549425581%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2686026861%_
                                               (gx#syntax-split-splice
                                                _%tl2550425959%_
                                                '0)))
                                          (let ((_%tl2552725817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686026861%_
                                                    '1)))
                                                (_%target2552525814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686026861%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2552725817%_)
                                                (_%__match2691826919%_
                                                 _%e2549925942%_
                                                 _%hd2550025946%_
                                                 _%tl2550125949%_
                                                 _%e2550225952%_
                                                 _%hd2550325956%_
                                                 _%tl2550425959%_
                                                 _%__splice2686026861%_
                                                 _%target2552525814%_
                                                 _%tl2552725817%_)
                                                (if (gx#stx-pair?
                                                     _%tl2550425959%_)
                                                    (let ((_%e2554325708%_
                                                           (gx#syntax-e
                                                            _%tl2550425959%_)))
                                                      (let ((_%tl2554525715%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2554325708%_)))
                    (_%hd2554425712%_
                     (let () (declare (not safe)) (##car _%e2554325708%_))))
                (if (gx#stx-pair/null? _%tl2554525715%_)
                    (let ((_%__splice2686426865%_
                           (gx#syntax-split-splice _%tl2554525715%_ '0)))
                      (let ((_%tl2554825721%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2686426865%_ '1)))
                            (_%target2554625718%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2686426865%_ '0))))
                        (if (gx#stx-null? _%tl2554825721%_)
                            (_%__match2694426945%_
                             _%e2549925942%_
                             _%hd2550025946%_
                             _%tl2550125949%_
                             _%e2550225952%_
                             _%hd2550325956%_
                             _%tl2550425959%_
                             _%e2554325708%_
                             _%hd2554425712%_
                             _%tl2554525715%_
                             _%__splice2686426865%_
                             _%target2554625718%_
                             _%tl2554825721%_)
                            (let () (declare (not safe)) (_%g2549425581%_)))))
                    (let () (declare (not safe)) (_%g2549425581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2549425581%_)))))))
                                    (if (gx#stx-pair? _%tl2550425959%_)
                                        (let ((_%e2554325708%_
                                               (gx#syntax-e _%tl2550425959%_)))
                                          (let ((_%tl2554525715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2554325708%_)))
                                                (_%hd2554425712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2554325708%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2554525715%_)
                                                (let ((_%__splice2686426865%_
                                                       (gx#syntax-split-splice
                                                        _%tl2554525715%_
                                                        '0)))
                                                  (let ((_%tl2554825721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686426865%_
                                                            '1)))
                                                        (_%target2554625718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686426865%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2554825721%_)
                                                        (_%__match2694426945%_
                                                         _%e2549925942%_
                                                         _%hd2550025946%_
                                                         _%tl2550125949%_
                                                         _%e2550225952%_
                                                         _%hd2550325956%_
                                                         _%tl2550425959%_
                                                         _%e2554325708%_
                                                         _%hd2554425712%_
                                                         _%tl2554525715%_
                                                         _%__splice2686426865%_
                                                         _%target2554625718%_
                                                         _%tl2554825721%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2549425581%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2549425581%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2549425581%_))))))
                            (let () (declare (not safe)) (_%g2549425581%_)))))
                    (let () (declare (not safe)) (_%g2549425581%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26133%_)
        (let* ((_%__stx2697326974%_ _%$stx26133%_)
               (_%g2613826178%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2697326974%_))))
          (let ((_%__kont2697626977%_
                 (lambda (_%L26316%_ _%L26318%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26318%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26316%_ '()))
                                     '())))))
                (_%__kont2697826979%_
                 (lambda (_%L26245%_ _%L26247%_ _%L26248%_ _%L26249%_)
                   (cons _%L26249%_
                         (cons (cons _%L26249%_
                                     (cons _%L26248%_ (cons _%L26247%_ '())))
                               (foldr (lambda (_%g2627026273%_ _%g2627126276%_)
                                        (cons _%g2627026273%_ _%g2627126276%_))
                                      '()
                                      _%L26245%_))))))
            (let* ((_%__match2702827029%_
                    (lambda (_%e2615526185%_
                             _%hd2615626189%_
                             _%tl2615726192%_
                             _%e2615826195%_
                             _%hd2615926199%_
                             _%tl2616026202%_
                             _%e2616126205%_
                             _%hd2616226209%_
                             _%tl2616326212%_
                             _%__splice2698026981%_
                             _%target2616426215%_
                             _%tl2616626218%_)
                      (letrec ((_%loop2616726221%_
                                (lambda (_%hd2616526225%_ _%rest2617126228%_)
                                  (if (gx#stx-pair? _%hd2616526225%_)
                                      (let ((_%e2616826231%_
                                             (gx#syntax-e _%hd2616526225%_)))
                                        (let ((_%lp-tl2617026238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2616826231%_)))
                                              (_%lp-hd2616926235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2616826231%_))))
                                          (_%loop2616726221%_
                                           _%lp-tl2617026238%_
                                           (cons _%lp-hd2616926235%_
                                                 _%rest2617126228%_))))
                                      (let ((_%rest2617226241%_
                                             (reverse _%rest2617126228%_)))
                                        (_%__kont2697826979%_
                                         _%rest2617226241%_
                                         _%hd2616226209%_
                                         _%hd2615926199%_
                                         _%hd2615626189%_))))))
                        (_%loop2616726221%_ _%target2616426215%_ '()))))
                   (_%__match2700227003%_
                    (lambda (_%e2614226286%_
                             _%hd2614326290%_
                             _%tl2614426293%_
                             _%e2614526296%_
                             _%hd2614626300%_
                             _%tl2614726303%_
                             _%e2614826306%_
                             _%hd2614926310%_
                             _%tl2615026313%_)
                      (let ((_%L26316%_ _%hd2614926310%_)
                            (_%L26318%_ _%hd2614626300%_))
                        (if (gx#identifier? _%L26316%_)
                            (_%__kont2697626977%_ _%L26316%_ _%L26318%_)
                            (if (gx#stx-pair/null? _%tl2615026313%_)
                                (let ((_%__splice2698026981%_
                                       (gx#syntax-split-splice
                                        _%tl2615026313%_
                                        '0)))
                                  (let ((_%tl2616626218%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2698026981%_
                                            '1)))
                                        (_%target2616426215%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2698026981%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2616626218%_)
                                        (_%__match2702827029%_
                                         _%e2614226286%_
                                         _%hd2614326290%_
                                         _%tl2614426293%_
                                         _%e2614526296%_
                                         _%hd2614626300%_
                                         _%tl2614726303%_
                                         _%e2614826306%_
                                         _%hd2614926310%_
                                         _%tl2615026313%_
                                         _%__splice2698026981%_
                                         _%target2616426215%_
                                         _%tl2616626218%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2613826178%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2613826178%_))))))))
              (if (gx#stx-pair? _%__stx2697326974%_)
                  (let ((_%e2614226286%_ (gx#syntax-e _%__stx2697326974%_)))
                    (let ((_%tl2614426293%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2614226286%_)))
                          (_%hd2614326290%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2614226286%_))))
                      (if (gx#stx-pair? _%tl2614426293%_)
                          (let ((_%e2614526296%_
                                 (gx#syntax-e _%tl2614426293%_)))
                            (let ((_%tl2614726303%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2614526296%_)))
                                  (_%hd2614626300%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2614526296%_))))
                              (if (gx#stx-pair? _%tl2614726303%_)
                                  (let ((_%e2614826306%_
                                         (gx#syntax-e _%tl2614726303%_)))
                                    (let ((_%tl2615026313%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2614826306%_)))
                                          (_%hd2614926310%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2614826306%_))))
                                      (if (gx#stx-null? _%tl2615026313%_)
                                          (_%__match2700227003%_
                                           _%e2614226286%_
                                           _%hd2614326290%_
                                           _%tl2614426293%_
                                           _%e2614526296%_
                                           _%hd2614626300%_
                                           _%tl2614726303%_
                                           _%e2614826306%_
                                           _%hd2614926310%_
                                           _%tl2615026313%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2615026313%_)
                                              (let ((_%__splice2698026981%_
                                                     (gx#syntax-split-splice
                                                      _%tl2615026313%_
                                                      '0)))
                                                (let ((_%tl2616626218%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2698026981%_
                                                          '1)))
                                                      (_%target2616426215%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2698026981%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2616626218%_)
                                                      (_%__match2702827029%_
                                                       _%e2614226286%_
                                                       _%hd2614326290%_
                                                       _%tl2614426293%_
                                                       _%e2614526296%_
                                                       _%hd2614626300%_
                                                       _%tl2614726303%_
                                                       _%e2614826306%_
                                                       _%hd2614926310%_
                                                       _%tl2615026313%_
                                                       _%__splice2698026981%_
                                                       _%target2616426215%_
                                                       _%tl2616626218%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2613826178%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2613826178%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2613826178%_)))))
                          (let () (declare (not safe)) (_%g2613826178%_)))))
                  (let () (declare (not safe)) (_%g2613826178%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26338%_)
        (let* ((_%__stx2703127032%_ _%$stx26338%_)
               (_%g2634326395%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2703127032%_))))
          (let ((_%__kont2703427035%_
                 (lambda (_%L26571%_ _%L26573%_ _%L26574%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26574%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26573%_ '()))
                                     (cons _%L26571%_ '()))))))
                (_%__kont2703627037%_
                 (lambda (_%L26482%_
                          _%L26484%_
                          _%L26485%_
                          _%L26486%_
                          _%L26487%_
                          _%L26488%_)
                   (cons _%L26488%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26487%_
                                           (cons _%L26486%_
                                                 (foldr (lambda (_%g2651526518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2651626521%_)
                  (cons _%g2651526518%_ _%g2651626521%_))
                '()
                _%L26485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26484%_ (cons _%L26482%_ '())))))))
            (let* ((_%__match2710627107%_
                    (lambda (_%e2636626402%_
                             _%hd2636726406%_
                             _%tl2636826409%_
                             _%e2636926412%_
                             _%hd2637026416%_
                             _%tl2637126419%_
                             _%e2637226422%_
                             _%hd2637326426%_
                             _%tl2637426429%_
                             _%__splice2703827039%_
                             _%target2637526432%_
                             _%tl2637726435%_
                             _%e2638426438%_
                             _%hd2638526442%_
                             _%tl2638626445%_
                             _%e2638726448%_
                             _%hd2638826452%_
                             _%tl2638926455%_)
                      (letrec ((_%loop2637826458%_
                                (lambda (_%hd2637626462%_ _%path2638226465%_)
                                  (if (gx#stx-pair? _%hd2637626462%_)
                                      (let ((_%e2637926468%_
                                             (gx#syntax-e _%hd2637626462%_)))
                                        (let ((_%lp-tl2638126475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2637926468%_)))
                                              (_%lp-hd2638026472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2637926468%_))))
                                          (_%loop2637826458%_
                                           _%lp-tl2638126475%_
                                           (cons _%lp-hd2638026472%_
                                                 _%path2638226465%_))))
                                      (let ((_%path2638326478%_
                                             (reverse _%path2638226465%_)))
                                        (_%__kont2703627037%_
                                         _%hd2638826452%_
                                         _%hd2638526442%_
                                         _%path2638326478%_
                                         _%hd2637326426%_
                                         _%hd2637026416%_
                                         _%hd2636726406%_))))))
                        (_%loop2637826458%_ _%target2637526432%_ '()))))
                   (_%__match2706627067%_
                    (lambda (_%e2634826531%_
                             _%hd2634926535%_
                             _%tl2635026538%_
                             _%e2635126541%_
                             _%hd2635226545%_
                             _%tl2635326548%_
                             _%e2635426551%_
                             _%hd2635526555%_
                             _%tl2635626558%_
                             _%e2635726561%_
                             _%hd2635826565%_
                             _%tl2635926568%_)
                      (let ((_%L26571%_ _%hd2635826565%_)
                            (_%L26573%_ _%hd2635526555%_)
                            (_%L26574%_ _%hd2635226545%_))
                        (if (gx#identifier? _%L26573%_)
                            (_%__kont2703427035%_
                             _%L26571%_
                             _%L26573%_
                             _%L26574%_)
                            (if (gx#stx-pair/null? _%tl2635626558%_)
                                (if (let ((__tmp27324
                                           (gx#stx-length _%tl2635626558%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27324 '2))
                                    (let ((_%__splice2703827039%_
                                           (gx#syntax-split-splice
                                            _%tl2635626558%_
                                            '2)))
                                      (let ((_%tl2637726435%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2703827039%_
                                                '1)))
                                            (_%target2637526432%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2703827039%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2637726435%_)
                                            (let ((_%e2638426438%_
                                                   (gx#syntax-e
                                                    _%tl2637726435%_)))
                                              (let ((_%tl2638626445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2638426438%_)))
                                                    (_%hd2638526442%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2638426438%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2638626445%_)
                                                    (let ((_%e2638726448%_
                                                           (gx#syntax-e
                                                            _%tl2638626445%_)))
                                                      (let ((_%tl2638926455%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2638726448%_)))
                    (_%hd2638826452%_
                     (let () (declare (not safe)) (##car _%e2638726448%_))))
                (if (gx#stx-null? _%tl2638926455%_)
                    (_%__match2710627107%_
                     _%e2634826531%_
                     _%hd2634926535%_
                     _%tl2635026538%_
                     _%e2635126541%_
                     _%hd2635226545%_
                     _%tl2635326548%_
                     _%e2635426551%_
                     _%hd2635526555%_
                     _%tl2635626558%_
                     _%__splice2703827039%_
                     _%target2637526432%_
                     _%tl2637726435%_
                     _%e2638426438%_
                     _%hd2638526442%_
                     _%tl2638626445%_
                     _%e2638726448%_
                     _%hd2638826452%_
                     _%tl2638926455%_)
                    (let () (declare (not safe)) (_%g2634326395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2634326395%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2634326395%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2634326395%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2634326395%_))))))))
              (if (gx#stx-pair? _%__stx2703127032%_)
                  (let ((_%e2634826531%_ (gx#syntax-e _%__stx2703127032%_)))
                    (let ((_%tl2635026538%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2634826531%_)))
                          (_%hd2634926535%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2634826531%_))))
                      (if (gx#stx-pair? _%tl2635026538%_)
                          (let ((_%e2635126541%_
                                 (gx#syntax-e _%tl2635026538%_)))
                            (let ((_%tl2635326548%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2635126541%_)))
                                  (_%hd2635226545%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2635126541%_))))
                              (if (gx#stx-pair? _%tl2635326548%_)
                                  (let ((_%e2635426551%_
                                         (gx#syntax-e _%tl2635326548%_)))
                                    (let ((_%tl2635626558%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2635426551%_)))
                                          (_%hd2635526555%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2635426551%_))))
                                      (if (gx#stx-pair? _%tl2635626558%_)
                                          (let ((_%e2635726561%_
                                                 (gx#syntax-e
                                                  _%tl2635626558%_)))
                                            (let ((_%tl2635926568%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2635726561%_)))
                                                  (_%hd2635826565%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2635726561%_))))
                                              (if (gx#stx-null?
                                                   _%tl2635926568%_)
                                                  (_%__match2706627067%_
                                                   _%e2634826531%_
                                                   _%hd2634926535%_
                                                   _%tl2635026538%_
                                                   _%e2635126541%_
                                                   _%hd2635226545%_
                                                   _%tl2635326548%_
                                                   _%e2635426551%_
                                                   _%hd2635526555%_
                                                   _%tl2635626558%_
                                                   _%e2635726561%_
                                                   _%hd2635826565%_
                                                   _%tl2635926568%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2635626558%_)
                                                      (if (let ((__tmp27325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2635626558%_)))
                    (declare (not safe))
                    (##fx>= __tmp27325 '2))
                  (let ((_%__splice2703827039%_
                         (gx#syntax-split-splice _%tl2635626558%_ '2)))
                    (let ((_%tl2637726435%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2703827039%_ '1)))
                          (_%target2637526432%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2703827039%_ '0))))
                      (if (gx#stx-pair? _%tl2637726435%_)
                          (let ((_%e2638426438%_
                                 (gx#syntax-e _%tl2637726435%_)))
                            (let ((_%tl2638626445%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2638426438%_)))
                                  (_%hd2638526442%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2638426438%_))))
                              (if (gx#stx-pair? _%tl2638626445%_)
                                  (let ((_%e2638726448%_
                                         (gx#syntax-e _%tl2638626445%_)))
                                    (let ((_%tl2638926455%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2638726448%_)))
                                          (_%hd2638826452%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2638726448%_))))
                                      (if (gx#stx-null? _%tl2638926455%_)
                                          (_%__match2710627107%_
                                           _%e2634826531%_
                                           _%hd2634926535%_
                                           _%tl2635026538%_
                                           _%e2635126541%_
                                           _%hd2635226545%_
                                           _%tl2635326548%_
                                           _%e2635426551%_
                                           _%hd2635526555%_
                                           _%tl2635626558%_
                                           _%__splice2703827039%_
                                           _%target2637526432%_
                                           _%tl2637726435%_
                                           _%e2638426438%_
                                           _%hd2638526442%_
                                           _%tl2638626445%_
                                           _%e2638726448%_
                                           _%hd2638826452%_
                                           _%tl2638926455%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2634326395%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2634326395%_)))))
                          (let () (declare (not safe)) (_%g2634326395%_)))))
                  (let () (declare (not safe)) (_%g2634326395%_)))
              (let () (declare (not safe)) (_%g2634326395%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2635626558%_)
                                              (if (let ((__tmp27326
                                                         (gx#stx-length
                                                          _%tl2635626558%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27326 '2))
                                                  (let ((_%__splice2703827039%_
                                                         (gx#syntax-split-splice
                                                          _%tl2635626558%_
                                                          '2)))
                                                    (let ((_%tl2637726435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2703827039%_
                                                              '1)))
                                                          (_%target2637526432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2703827039%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2637726435%_)
                                                          (let ((_%e2638426438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2637726435%_)))
                    (let ((_%tl2638626445%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2638426438%_)))
                          (_%hd2638526442%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2638426438%_))))
                      (if (gx#stx-pair? _%tl2638626445%_)
                          (let ((_%e2638726448%_
                                 (gx#syntax-e _%tl2638626445%_)))
                            (let ((_%tl2638926455%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2638726448%_)))
                                  (_%hd2638826452%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2638726448%_))))
                              (if (gx#stx-null? _%tl2638926455%_)
                                  (_%__match2710627107%_
                                   _%e2634826531%_
                                   _%hd2634926535%_
                                   _%tl2635026538%_
                                   _%e2635126541%_
                                   _%hd2635226545%_
                                   _%tl2635326548%_
                                   _%e2635426551%_
                                   _%hd2635526555%_
                                   _%tl2635626558%_
                                   _%__splice2703827039%_
                                   _%target2637526432%_
                                   _%tl2637726435%_
                                   _%e2638426438%_
                                   _%hd2638526442%_
                                   _%tl2638626445%_
                                   _%e2638726448%_
                                   _%hd2638826452%_
                                   _%tl2638926455%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2634326395%_)))))
                          (let () (declare (not safe)) (_%g2634326395%_)))))
                  (let () (declare (not safe)) (_%g2634326395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2634326395%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2634326395%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2634326395%_)))))
                          (let () (declare (not safe)) (_%g2634326395%_)))))
                  (let () (declare (not safe)) (_%g2634326395%_))))))))))
