(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27369_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24898%_)
        (letrec ((_%body-opt?24901%_
                  (lambda (_%key24904%_)
                    (let ((__tmp27341 (gx#stx-e _%key24904%_)))
                      (declare (not safe))
                      (##memq __tmp27341
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
          (gx#stx-plist? _%stx24898%_ _%body-opt?24901%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22686%_
               _%id22688%_
               _%super-ref22689%_
               _%slots22690%_
               _%body22691%_)
        (letrec ((_%wrap22693%_
                  (lambda (_%e-stx24895%_)
                    (gx#stx-wrap-source
                     _%e-stx24895%_
                     (gx#stx-source _%stx22686%_))))
                 (_%make-id22695%_
                  (lambda _%args24892%_
                    (apply gx#stx-identifier _%id22688%_ _%args24892%_)))
                 (_%get-mixin-slots22696%_
                  (lambda (_%super24862%_ _%slots24864%_)
                    (letrec* ((_%tab24866%_ (make-hash-table-eq))
                              (_%dedup24868%_
                               (lambda (_%mixins24879%_)
                                 (let _%lp24882%_ ((_%rest24885%_
                                                    _%mixins24879%_)
                                                   (_%r24887%_ '()))
                                   (if (pair? _%rest24885%_)
                                       (let ((_%slot24889%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24885%_))))
                                         (if (hash-get
                                              _%tab24866%_
                                              _%slot24889%_)
                                             (_%lp24882%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24885%_))
                                              _%r24887%_)
                                             (begin
                                               (hash-put!
                                                _%tab24866%_
                                                _%slot24889%_
                                                '#t)
                                               (_%lp24882%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24885%_))
                                                (cons _%slot24889%_
                                                      _%r24887%_)))))
                                       (reverse _%r24887%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24870%_)
                         (hash-put! _%tab24866%_ (gx#stx-e _%slot24870%_) '#t))
                       _%slots24864%_)
                      (if (not _%super24862%_)
                          '()
                          (if (gx#identifier? _%super24862%_)
                              (_%dedup24868%_
                               (_%get-mixin-slots-r22697%_ _%super24862%_))
                              (_%dedup24868%_
                               (concatenate
                                (map _%get-mixin-slots-r22697%_
                                     _%super24862%_))))))))
                 (_%get-mixin-slots-r22697%_
                  (lambda (_%type-id24856%_)
                    (let ((_%info24859%_
                           (gx#syntax-local-value _%type-id24856%_)))
                      (let ((__tmp27343
                             (let ((__obj27120 _%info24859%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27120
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27120
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27120
                                    'slots))))
                            (__tmp27342
                             (concatenate
                              (map _%get-mixin-slots-r22697%_
                                   (let ((__obj27121 _%info24859%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27121
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27121
                                            '4
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27121
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27343 __tmp27342))))))
          (gx#check-duplicate-identifiers _%slots22690%_ _%stx22686%_)
          (let* ((_%name22699%_ (symbol->string (gx#stx-e _%id22688%_)))
                 (_%super22702%_
                  (map gx#syntax-local-value _%super-ref22689%_))
                 (_%struct?22705%_ (gx#stx-getq 'struct: _%body22691%_))
                 (_%g2270822716%_
                  (lambda (_%g2270922712%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2270922712%_)))
                 (_%g2270724852%_
                  (lambda (_%g2270922720%_)
                    ((lambda (_%g2271022723%_)
                       (let* ((_%g2273922747%_
                               (lambda (_%g2274022743%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2274022743%_)))
                              (_%g2273824848%_
                               (lambda (_%g2274022751%_)
                                 ((lambda (_%g2274122754%_)
                                    (let* ((_%g2276722775%_
                                            (lambda (_%g2276822771%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2276822771%_)))
                                           (_%g2276624844%_
                                            (lambda (_%g2276822779%_)
                                              ((lambda (_%g2276922782%_)
                                                 (let* ((_%g2279522803%_
                                                         (lambda (_%g2279622799%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2279622799%_)))
                                                        (_%g2279424840%_
                                                         (lambda (_%g2279622807%_)
                                                           ((lambda (_%g2279722810%_)
                                                              (let* ((_%g2282322831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2282422827%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2282422827%_)))
                             (_%g2282224836%_
                              (lambda (_%g2282422835%_)
                                ((lambda (_%g2282522838%_)
                                   (let* ((_%g2285122868%_
                                           (lambda (_%g2285222864%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2285222864%_)))
                                          (_%g2285024832%_
                                           (lambda (_%g2285222872%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2285222872%_)
                                                 (let ((_g27344_
                                                        (gx#syntax-split-splice
                                                         _%g2285222872%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27345_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27344_)
                          (##values-length _g27344_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27345_ 2)))
                   (error "Context expects 2 values" _g27345_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2285422875%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27344_
                                                               0)))
                                                           (_%tl2285622878%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27344_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2285622878%_)
                                                           (letrec ((_%loop2285722881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2285522885%_ _%slot2286122888%_)
                               (if (gx#stx-pair? _%hd2285522885%_)
                                   (let ((_%e2285822890%_
                                          (gx#syntax-e _%hd2285522885%_)))
                                     (let ((_%lp-hd2285922894%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2285822890%_)))
                                           (_%lp-tl2286022897%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2285822890%_))))
                                       (_%loop2285722881%_
                                        _%lp-tl2286022897%_
                                        (cons _%lp-hd2285922894%_
                                              _%slot2286122888%_))))
                                   (let ((_%slot2286222900%_
                                          (reverse _%slot2286122888%_)))
                                     ((lambda (_%g2285322903%_)
                                        (let* ((_%g2292022937%_
                                                (lambda (_%g2292122933%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2292122933%_)))
                                               (_%g2291924823%_
                                                (lambda (_%g2292122941%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2292122941%_)
                                                      (let ((_g27346_
                                                             (gx#syntax-split-splice
                                                              _%g2292122941%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27346_)
                               (##values-length _g27346_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27347_ 2)))
                        (error "Context expects 2 values" _g27347_)))
                  (let ((_%target2292322944%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27346_ 0)))
                        (_%tl2292522947%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27346_ 1))))
                    (if (gx#stx-null? _%tl2292522947%_)
                        (letrec ((_%loop2292622950%_
                                  (lambda (_%hd2292422954%_ _%getf2293022957%_)
                                    (if (gx#stx-pair? _%hd2292422954%_)
                                        (let ((_%e2292722959%_
                                               (gx#syntax-e _%hd2292422954%_)))
                                          (let ((_%lp-hd2292822963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2292722959%_)))
                                                (_%lp-tl2292922966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2292722959%_))))
                                            (_%loop2292622950%_
                                             _%lp-tl2292922966%_
                                             (cons _%lp-hd2292822963%_
                                                   _%getf2293022957%_))))
                                        (let ((_%getf2293122969%_
                                               (reverse _%getf2293022957%_)))
                                          ((lambda (_%g2292222972%_)
                                             (let* ((_%g2298923006%_
                                                     (lambda (_%g2299023002%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2299023002%_)))
                                                    (_%g2298824814%_
                                                     (lambda (_%g2299023010%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2299023010%_)
                                                           (let ((_g27348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2299023010%_ '0)))
                     (begin
                       (let ((_g27349_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27348_)
                                    (##values-length _g27348_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27349_ 2)))
                             (error "Context expects 2 values" _g27349_)))
                       (let ((_%target2299223013%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27348_ 0)))
                             (_%tl2299423016%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27348_ 1))))
                         (if (gx#stx-null? _%tl2299423016%_)
                             (letrec ((_%loop2299523019%_
                                       (lambda (_%hd2299323023%_
                                                _%setf2299923026%_)
                                         (if (gx#stx-pair? _%hd2299323023%_)
                                             (let ((_%e2299623028%_
                                                    (gx#syntax-e
                                                     _%hd2299323023%_)))
                                               (let ((_%lp-hd2299723032%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2299623028%_)))
                                                     (_%lp-tl2299823035%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2299623028%_))))
                                                 (_%loop2299523019%_
                                                  _%lp-tl2299823035%_
                                                  (cons _%lp-hd2299723032%_
                                                        _%setf2299923026%_))))
                                             (let ((_%setf2300023038%_
                                                    (reverse _%setf2299923026%_)))
                                               ((lambda (_%g2299123041%_)
                                                  (let* ((_%mixin-slots23058%_
                                                          (_%get-mixin-slots22696%_
                                                           _%super-ref22689%_
                                                           _%slots22690%_))
                                                         (_%g2306123078%_
                                                          (lambda (_%g2306223074%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2306223074%_)))
                                                         (_%g2306024810%_
                                                          (lambda (_%g2306223082%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2306223082%_)
                        (let ((_g27350_
                               (gx#syntax-split-splice _%g2306223082%_ '0)))
                          (begin
                            (let ((_g27351_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27350_)
                                         (##values-length _g27350_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27351_ 2)))
                                  (error "Context expects 2 values" _g27351_)))
                            (let ((_%target2306423085%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27350_ 0)))
                                  (_%tl2306623088%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27350_ 1))))
                              (if (gx#stx-null? _%tl2306623088%_)
                                  (letrec ((_%loop2306723091%_
                                            (lambda (_%hd2306523095%_
                                                     _%mixin-slot2307123098%_)
                                              (if (gx#stx-pair?
                                                   _%hd2306523095%_)
                                                  (let ((_%e2306823100%_
                                                         (gx#syntax-e
                                                          _%hd2306523095%_)))
                                                    (let ((_%lp-hd2306923104%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2306823100%_)))
                                                          (_%lp-tl2307023107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2306823100%_))))
                                                      (_%loop2306723091%_
                                                       _%lp-tl2307023107%_
                                                       (cons _%lp-hd2306923104%_
                                                             _%mixin-slot2307123098%_))))
                                                  (let ((_%mixin-slot2307223110%_
                                                         (reverse _%mixin-slot2307123098%_)))
                                                    ((lambda (_%g2306323113%_)
                                                       (let* ((_%g2313123148%_
                                                               (lambda (_%g2313223144%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2313223144%_)))
                      (_%g2313024801%_
                       (lambda (_%g2313223152%_)
                         (if (gx#stx-pair/null? _%g2313223152%_)
                             (let ((_g27352_
                                    (gx#syntax-split-splice
                                     _%g2313223152%_
                                     '0)))
                               (begin
                                 (let ((_g27353_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27352_)
                                              (##values-length _g27352_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27353_ 2)))
                                       (error "Context expects 2 values"
                                              _g27353_)))
                                 (let ((_%target2313423155%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27352_ 0)))
                                       (_%tl2313623158%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27352_ 1))))
                                   (if (gx#stx-null? _%tl2313623158%_)
                                       (letrec ((_%loop2313723161%_
                                                 (lambda (_%hd2313523165%_
                                                          _%mixin-getf2314123168%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2313523165%_)
                                                       (let ((_%e2313823170%_
                                                              (gx#syntax-e
                                                               _%hd2313523165%_)))
                                                         (let ((_%lp-hd2313923174%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2313823170%_)))
                       (_%lp-tl2314023177%_
                        (let () (declare (not safe)) (##cdr _%e2313823170%_))))
                   (_%loop2313723161%_
                    _%lp-tl2314023177%_
                    (cons _%lp-hd2313923174%_ _%mixin-getf2314123168%_))))
               (let ((_%mixin-getf2314223180%_
                      (reverse _%mixin-getf2314123168%_)))
                 ((lambda (_%g2313323183%_)
                    (let* ((_%g2320023217%_
                            (lambda (_%g2320123213%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2320123213%_)))
                           (_%g2319924792%_
                            (lambda (_%g2320123221%_)
                              (if (gx#stx-pair/null? _%g2320123221%_)
                                  (let ((_g27354_
                                         (gx#syntax-split-splice
                                          _%g2320123221%_
                                          '0)))
                                    (begin
                                      (let ((_g27355_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27354_)
                                                   (##values-length _g27354_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27355_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27355_)))
                                      (let ((_%target2320323224%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27354_ 0)))
                                            (_%tl2320523227%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27354_ 1))))
                                        (if (gx#stx-null? _%tl2320523227%_)
                                            (letrec ((_%loop2320623230%_
                                                      (lambda (_%hd2320423234%_
                                                               _%mixin-setf2321023237%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2320423234%_)
                                                            (let ((_%e2320723239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2320423234%_)))
                      (let ((_%lp-hd2320823243%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2320723239%_)))
                            (_%lp-tl2320923246%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2320723239%_))))
                        (_%loop2320623230%_
                         _%lp-tl2320923246%_
                         (cons _%lp-hd2320823243%_ _%mixin-setf2321023237%_))))
                    (let ((_%mixin-setf2321123249%_
                           (reverse _%mixin-setf2321023237%_)))
                      ((lambda (_%g2320223252%_)
                         (let* ((_%g2326923286%_
                                 (lambda (_%g2327023282%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2327023282%_)))
                                (_%g2326824775%_
                                 (lambda (_%g2327023290%_)
                                   (if (gx#stx-pair/null? _%g2327023290%_)
                                       (let ((_g27356_
                                              (gx#syntax-split-splice
                                               _%g2327023290%_
                                               '0)))
                                         (begin
                                           (let ((_g27357_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27356_)
                                                        (##values-length
                                                         _g27356_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27357_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27357_)))
                                           (let ((_%target2327223293%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27356_ 0)))
                                                 (_%tl2327423296%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27356_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2327423296%_)
                                                 (letrec ((_%loop2327523299%_
                                                           (lambda (_%hd2327323303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2327923306%_)
                     (if (gx#stx-pair? _%hd2327323303%_)
                         (let ((_%e2327623308%_
                                (gx#syntax-e _%hd2327323303%_)))
                           (let ((_%lp-hd2327723312%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2327623308%_)))
                                 (_%lp-tl2327823315%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2327623308%_))))
                             (_%loop2327523299%_
                              _%lp-tl2327823315%_
                              (cons _%lp-hd2327723312%_ _%ugetf2327923306%_))))
                         (let ((_%ugetf2328023318%_
                                (reverse _%ugetf2327923306%_)))
                           ((lambda (_%g2327123321%_)
                              (let* ((_%g2333823355%_
                                      (lambda (_%g2333923351%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2333923351%_)))
                                     (_%g2333724758%_
                                      (lambda (_%g2333923359%_)
                                        (if (gx#stx-pair/null? _%g2333923359%_)
                                            (let ((_g27358_
                                                   (gx#syntax-split-splice
                                                    _%g2333923359%_
                                                    '0)))
                                              (begin
                                                (let ((_g27359_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27358_)
                                                             (##values-length
                                                              _g27358_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27359_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2334123362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27358_
                                                          0)))
                                                      (_%tl2334323365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27358_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2334323365%_)
                                                      (letrec ((_%loop2334423368%_
                                                                (lambda (_%hd2334223372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2334823375%_)
                          (if (gx#stx-pair? _%hd2334223372%_)
                              (let ((_%e2334523377%_
                                     (gx#syntax-e _%hd2334223372%_)))
                                (let ((_%lp-hd2334623381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2334523377%_)))
                                      (_%lp-tl2334723384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2334523377%_))))
                                  (_%loop2334423368%_
                                   _%lp-tl2334723384%_
                                   (cons _%lp-hd2334623381%_
                                         _%usetf2334823375%_))))
                              (let ((_%usetf2334923387%_
                                     (reverse _%usetf2334823375%_)))
                                ((lambda (_%g2334023390%_)
                                   (let* ((_%g2340723424%_
                                           (lambda (_%g2340823420%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2340823420%_)))
                                          (_%g2340624741%_
                                           (lambda (_%g2340823428%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2340823428%_)
                                                 (let ((_g27360_
                                                        (gx#syntax-split-splice
                                                         _%g2340823428%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27361_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27360_)
                          (##values-length _g27360_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27361_ 2)))
                   (error "Context expects 2 values" _g27361_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2341023431%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27360_
                                                               0)))
                                                           (_%tl2341223434%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27360_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2341223434%_)
                                                           (letrec ((_%loop2341323437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2341123441%_
                                      _%mixin-ugetf2341723444%_)
                               (if (gx#stx-pair? _%hd2341123441%_)
                                   (let ((_%e2341423446%_
                                          (gx#syntax-e _%hd2341123441%_)))
                                     (let ((_%lp-hd2341523450%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2341423446%_)))
                                           (_%lp-tl2341623453%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2341423446%_))))
                                       (_%loop2341323437%_
                                        _%lp-tl2341623453%_
                                        (cons _%lp-hd2341523450%_
                                              _%mixin-ugetf2341723444%_))))
                                   (let ((_%mixin-ugetf2341823456%_
                                          (reverse _%mixin-ugetf2341723444%_)))
                                     ((lambda (_%g2340923459%_)
                                        (let* ((_%g2347623493%_
                                                (lambda (_%g2347723489%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2347723489%_)))
                                               (_%g2347524724%_
                                                (lambda (_%g2347723497%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2347723497%_)
                                                      (let ((_g27362_
                                                             (gx#syntax-split-splice
                                                              _%g2347723497%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27362_)
                               (##values-length _g27362_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27363_ 2)))
                        (error "Context expects 2 values" _g27363_)))
                  (let ((_%target2347923500%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27362_ 0)))
                        (_%tl2348123503%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27362_ 1))))
                    (if (gx#stx-null? _%tl2348123503%_)
                        (letrec ((_%loop2348223506%_
                                  (lambda (_%hd2348023510%_
                                           _%mixin-usetf2348623513%_)
                                    (if (gx#stx-pair? _%hd2348023510%_)
                                        (let ((_%e2348323515%_
                                               (gx#syntax-e _%hd2348023510%_)))
                                          (let ((_%lp-hd2348423519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2348323515%_)))
                                                (_%lp-tl2348523522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2348323515%_))))
                                            (_%loop2348223506%_
                                             _%lp-tl2348523522%_
                                             (cons _%lp-hd2348423519%_
                                                   _%mixin-usetf2348623513%_))))
                                        (let ((_%mixin-usetf2348723525%_
                                               (reverse _%mixin-usetf2348623513%_)))
                                          ((lambda (_%g2347823528%_)
                                             (let* ((_%type-slots23563%_
                                                     (if (gx#stx-null?
                                                          _%slots22690%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2299123041%_
                                _%g2292222972%_
                                _%g2285322903%_)
                               (foldr (lambda (_%g2354823553%_
                                               _%g2354923556%_
                                               _%g2355023558%_
                                               _%g2355123560%_)
                                        (cons (cons _%g2355023558%_
                                                    (cons _%g2354923556%_
                                                          (cons _%g2354823553%_
                                                                '())))
                                              _%g2355123560%_))
                                      '()
                                      _%g2299123041%_
                                      _%g2292222972%_
                                      _%g2285322903%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23584%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots23058%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%g2320223252%_
                                _%g2313323183%_
                                _%g2306323113%_)
                               (foldr (lambda (_%g2356923574%_
                                               _%g2357023577%_
                                               _%g2357123579%_
                                               _%g2357223581%_)
                                        (cons (cons _%g2357123579%_
                                                    (cons _%g2357023577%_
                                                          (cons _%g2356923574%_
                                                                '())))
                                              _%g2357223581%_))
                                      '()
                                      _%g2320223252%_
                                      _%g2313323183%_
                                      _%g2306323113%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23591%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22691%_)))
                           (if _%$e23587%_ _%$e23587%_ _%id22688%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23598%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22691%_)))
                           (if _%$e23594%_
                               _%$e23594%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%g2271022723%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23612%_
                                                     (let ((_%$e23608%_
                                                            (let ((_%e2360023602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22691%_)))
                      (if _%e2360023602%_
                          (let ((_%e23605%_ _%e2360023602%_))
                            (cons 'constructor: (cons _%e23605%_ '())))
                          '#f))))
               (if _%$e23608%_ _%$e23608%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23653%_
                                                     (let* ((_%properties23615%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22691%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23630%_
                     (let ((_%$e23618%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22691%_))))
                       (if _%$e23618%_
                           ((lambda (_%print23622%_)
                              (let ((_%print23625%_
                                     (if (eq? _%print23622%_ '#t)
                                         _%slots22690%_
                                         _%print23622%_)))
                                (cons (cons 'print: _%print23625%_)
                                      _%properties23615%_)))
                            _%$e23618%_)
                           _%properties23615%_)))
                    (_%properties23645%_
                     (let ((_%$e23633%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22691%_))))
                       (if _%$e23633%_
                           ((lambda (_%equal23637%_)
                              (let ((_%equal23640%_
                                     (if (eq? _%equal23637%_ '#t)
                                         _%slots22690%_
                                         _%equal23637%_)))
                                (cons (cons 'equal: _%equal23640%_)
                                      _%properties23630%_)))
                            _%$e23633%_)
                           _%properties23630%_)))
                    (_%properties23648%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body22691%_))
                         (cons (cons 'acyclic: '#t) '())
                         '())))
               _%properties23648%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23694%_
                                                     (if (null? _%properties23653%_)
                                                         '()
                                                         (let* ((_%g2365623664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2365723660%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2365723660%_)))
                        (_%g2365523690%_
                         (lambda (_%g2365723668%_)
                           ((lambda (_%g2365823671%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%g2365823671%_ '()))
                                          '())))
                            _%g2365723668%_))))
                   (_%g2365523690%_ _%properties23653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23706%_
                                                     (let ((_%$e23697%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22691%_)))
                                                       (if _%$e23697%_
                                                           ((lambda (_%metaclass23701%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23701%_)
                          _%metaclass23701%_
                          '#f))
                    _%$e23697%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23709%_
                                                     (if _%metaclass23706%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23712%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22691%_)))
                                                    (_%type-struct23715%_
                                                     (cons 'struct:
                                                           (cons _%struct?22705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23718%_
                                                     (cons 'final:
                                                           (cons _%final?23712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2372123738%_
                                                     (lambda (_%g2372223734%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2372223734%_)))
                                                    (_%g2372024720%_
                                                     (lambda (_%g2372223742%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2372223742%_)
                                                           (let ((_g27364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2372223742%_ '0)))
                     (begin
                       (let ((_g27365_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27364_)
                                    (##values-length _g27364_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27365_ 2)))
                             (error "Context expects 2 values" _g27365_)))
                       (let ((_%target2372423745%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27364_ 0)))
                             (_%tl2372623748%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27364_ 1))))
                         (if (gx#stx-null? _%tl2372623748%_)
                             (letrec ((_%loop2372723751%_
                                       (lambda (_%hd2372523755%_
                                                _%type-body2373123758%_)
                                         (if (gx#stx-pair? _%hd2372523755%_)
                                             (let ((_%e2372823760%_
                                                    (gx#syntax-e
                                                     _%hd2372523755%_)))
                                               (let ((_%lp-hd2372923764%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2372823760%_)))
                                                     (_%lp-tl2373023767%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2372823760%_))))
                                                 (_%loop2372723751%_
                                                  _%lp-tl2373023767%_
                                                  (cons _%lp-hd2372923764%_
                                                        _%type-body2373123758%_))))
                                             (let ((_%type-body2373223770%_
                                                    (reverse _%type-body2373123758%_)))
                                               ((lambda (_%g2372323773%_)
                                                  (let* ((_%g2379423802%_
                                                          (lambda (_%g2379523798%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2379523798%_)))
                                                         (_%g2379324708%_
                                                          (lambda (_%g2379523806%_)
                                                            ((lambda (_%g2379623809%_)
                                                               (let* ((_%g2382223830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2382323826%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2382323826%_)))
                              (_%g2382124637%_
                               (lambda (_%g2382323834%_)
                                 ((lambda (_%g2382423837%_)
                                    (let* ((_%g2385023858%_
                                            (lambda (_%g2385123854%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2385123854%_)))
                                           (_%g2384924602%_
                                            (lambda (_%g2385123862%_)
                                              ((lambda (_%g2385223865%_)
                                                 (let* ((_%g2387823886%_
                                                         (lambda (_%g2387923882%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2387923882%_)))
                                                        (_%g2387724518%_
                                                         (lambda (_%g2387923890%_)
                                                           ((lambda (_%g2388023893%_)
                                                              (let* ((_%g2390623914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2390723910%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2390723910%_)))
                             (_%g2390524506%_
                              (lambda (_%g2390723918%_)
                                ((lambda (_%g2390823921%_)
                                   (let* ((_%g2393423942%_
                                           (lambda (_%g2393523938%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2393523938%_)))
                                          (_%g2393324502%_
                                           (lambda (_%g2393523946%_)
                                             ((lambda (_%g2393623949%_)
                                                (let* ((_%g2396223970%_
                                                        (lambda (_%g2396323966%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2396323966%_)))
                                                       (_%g2396124498%_
                                                        (lambda (_%g2396323974%_)
                                                          ((lambda (_%g2396423977%_)
                                                             (let* ((_%g2399023998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2399123994%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2399123994%_)))
                            (_%g2398924463%_
                             (lambda (_%g2399124002%_)
                               ((lambda (_%g2399224005%_)
                                  (let* ((_%g2401824026%_
                                          (lambda (_%g2401924022%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2401924022%_)))
                                         (_%g2401724392%_
                                          (lambda (_%g2401924030%_)
                                            ((lambda (_%g2402024033%_)
                                               (let* ((_%g2404624054%_
                                                       (lambda (_%g2404724050%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2404724050%_)))
                                                      (_%g2404524388%_
                                                       (lambda (_%g2404724058%_)
                                                         ((lambda (_%g2404824061%_)
                                                            (let* ((_%g2407424082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2407524078%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2407524078%_)))
                           (_%g2407324384%_
                            (lambda (_%g2407524086%_)
                              ((lambda (_%g2407624089%_)
                                 (let* ((_%g2410224110%_
                                         (lambda (_%g2410324106%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2410324106%_)))
                                        (_%g2410124380%_
                                         (lambda (_%g2410324114%_)
                                           ((lambda (_%g2410424117%_)
                                              (let* ((_%g2413024138%_
                                                      (lambda (_%g2413124134%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2413124134%_)))
                                                     (_%g2412924354%_
                                                      (lambda (_%g2413124142%_)
                                                        ((lambda (_%g2413224145%_)
                                                           (let* ((_%g2415824166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2415924162%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2415924162%_)))
                          (_%g2415724328%_
                           (lambda (_%g2415924170%_)
                             ((lambda (_%g2416024173%_)
                                (let* ((_%g2418624194%_
                                        (lambda (_%g2418724190%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2418724190%_)))
                                       (_%g2418524302%_
                                        (lambda (_%g2418724198%_)
                                          ((lambda (_%g2418824201%_)
                                             (let* ((_%g2421424222%_
                                                     (lambda (_%g2421524218%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2421524218%_)))
                                                    (_%g2421324276%_
                                                     (lambda (_%g2421524226%_)
                                                       ((lambda (_%g2421624229%_)
                                                          (let* ((_%g2424224250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2424324246%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2424324246%_)))
                         (_%g2424124272%_
                          (lambda (_%g2424324254%_)
                            ((lambda (_%g2424424257%_)
                               (_%wrap22693%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%g2379623809%_
                                            (cons _%g2424424257%_ '())))))
                             _%g2424324254%_))))
                    (_%g2424124272%_
                     (_%wrap22693%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%g2271022723%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%g2382423837%_
                                                          (cons 'name:
                                                                (cons _%g2385223865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%g2390823921%_
                                          (cons 'super:
                                                (cons _%g2388023893%_
                                                      (cons 'struct?:
                                                            (cons _%g2393623949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%g2396423977%_
                                      (cons 'metaclass:
                                            (cons _%g2399224005%_
                                                  (cons 'constructor-method:
                                                        (cons _%g2402024033%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g2404824061%_
                                  (cons 'constructor:
                                        (cons _%g2407624089%_
                                              (cons 'predicate:
                                                    (cons _%g2410424117%_
                                                          (cons 'accessors:
                                                                (cons _%g2413224145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%g2416024173%_
                                          (cons 'unchecked-accessors:
                                                (cons _%g2418824201%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%g2421624229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2421524226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2421324276%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%g2334023390%_
                                                         _%g2285322903%_)
                                                        (foldr (lambda (_%g2427924286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2428024289%_
                                _%g2428124291%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2428024289%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2427924286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2428124291%_))
                       (begin
                         (gx#syntax-check-splice-targets
                          _%g2347823528%_
                          _%g2306323113%_)
                         (foldr (lambda (_%g2428224294%_
                                         _%g2428324297%_
                                         _%g2428424299%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2428324297%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2428224294%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2428424299%_))
                                '()
                                _%g2347823528%_
                                _%g2306323113%_))
                       _%g2334023390%_
                       _%g2285322903%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2418724198%_))))
                                  (_%g2418524302%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%g2327123321%_
                                            _%g2285322903%_)
                                           (foldr (lambda (_%g2430524312%_
                                                           _%g2430624315%_
                                                           _%g2430724317%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2430624315%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2430524312%_ '()))
                                          '()))))
                  _%g2430724317%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g2340923459%_
                                                     _%g2306323113%_)
                                                    (foldr (lambda (_%g2430824320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2430924323%_
                            _%g2431024325%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2430924323%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2430824320%_
                                                               '()))
                                                   '()))))
                           _%g2431024325%_))
                   '()
                   _%g2340923459%_
                   _%g2306323113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2327123321%_
                                                  _%g2285322903%_))))))
                              _%g2415924170%_))))
                     (_%g2415724328%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%g2299123041%_
                               _%g2285322903%_)
                              (foldr (lambda (_%g2433124338%_
                                              _%g2433224341%_
                                              _%g2433324343%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2433224341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2433124338%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2433324343%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%g2320223252%_
                                        _%g2306323113%_)
                                       (foldr (lambda (_%g2433424346%_
                                                       _%g2433524349%_
                                                       _%g2433624351%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2433524349%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2433424346%_ '()))
                                      '()))))
              _%g2433624351%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%g2320223252%_
                                              _%g2306323113%_))
                                     _%g2299123041%_
                                     _%g2285322903%_))))))
                 _%g2413124142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2412924354%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%g2292222972%_
                                                          _%g2285322903%_)
                                                         (foldr (lambda (_%g2435724364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2435824367%_
                                 _%g2435924369%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2435824367%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2435724364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2435924369%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%g2313323183%_
                           _%g2306323113%_)
                          (foldr (lambda (_%g2436024372%_
                                          _%g2436124375%_
                                          _%g2436224377%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2436124375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2436024372%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2436224377%_))
                                 '()
                                 _%g2313323183%_
                                 _%g2306323113%_))
                        _%g2292222972%_
                        _%g2285322903%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2410324114%_))))
                                   (_%g2410124380%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g2279722810%_ '())))))
                               _%g2407524086%_))))
                      (_%g2407324384%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%g2276922782%_ '())))))
                  _%g2404724058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2404524388%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%g2274122754%_
                                                              '())))))
                                             _%g2401924030%_))))
                                    (_%g2401724392%_
                                     (if (null? _%type-constructor23612%_)
                                         '#f
                                         (let* ((_%g2439624411%_
                                                 (lambda (_%g2439724407%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2439724407%_)))
                                                (_%g2439524459%_
                                                 (lambda (_%g2439724415%_)
                                                   (if (gx#stx-pair?
                                                        _%g2439724415%_)
                                                       (let ((_%e2439924418%_
                                                              (gx#syntax-e
                                                               _%g2439724415%_)))
                                                         (let ((_%hd2440024422%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2439924418%_)))
                       (_%tl2440124425%_
                        (let () (declare (not safe)) (##cdr _%e2439924418%_))))
                   (if (gx#stx-datum? _%hd2440024422%_)
                       (let ((_%e2440224428%_ (gx#stx-e _%hd2440024422%_)))
                         (if (equal? _%e2440224428%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2440124425%_)
                                 (let ((_%e2440324432%_
                                        (gx#syntax-e _%tl2440124425%_)))
                                   (let ((_%hd2440424436%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2440324432%_)))
                                         (_%tl2440524439%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2440324432%_))))
                                     (if (gx#stx-null? _%tl2440524439%_)
                                         ((lambda (_%g2439824442%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2439824442%_ '())))
                                          _%hd2440424436%_)
                                         (_%g2439624411%_ _%g2439724415%_))))
                                 (_%g2439624411%_ _%g2439724415%_))
                             (_%g2439624411%_ _%g2439724415%_)))
                       (_%g2439624411%_ _%g2439724415%_))))
               (_%g2439624411%_ _%g2439724415%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2439524459%_
                                            _%type-constructor23612%_))))))
                                _%g2399124002%_))))
                       (_%g2398924463%_
                        (if _%metaclass23706%_
                            (let* ((_%g2446724475%_
                                    (lambda (_%g2446824471%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2446824471%_)))
                                   (_%g2446624494%_
                                    (lambda (_%g2446824479%_)
                                      ((lambda (_%g2446924482%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%g2446924482%_ '())))
                                       _%g2446824479%_))))
                              (_%g2446624494%_ _%metaclass23706%_))
                            '#f))))
                   _%g2396323974%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2396124498%_
                                                   _%final?23712%_)))
                                              _%g2393523946%_))))
                                     (_%g2393324502%_ _%struct?22705%_)))
                                 _%g2390723918%_))))
                        (_%g2390524506%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2450924512%_
                                                     _%g2451024515%_)
                                              (cons _%g2450924512%_
                                                    _%g2451024515%_))
                                            '()
                                            _%g2285322903%_)
                                     '())))))
                    _%g2387923890%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2387724518%_
                                                    (let* ((_%g2452224539%_
                                                            (lambda (_%g2452324535%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2452324535%_)))
                                                           (_%g2452124598%_
                                                            (lambda (_%g2452324543%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2452324543%_)
                          (let ((_g27366_
                                 (gx#syntax-split-splice _%g2452324543%_ '0)))
                            (begin
                              (let ((_g27367_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27366_)
                                           (##values-length _g27366_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27367_ 2)))
                                    (error "Context expects 2 values"
                                           _g27367_)))
                              (let ((_%target2452524546%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27366_ 0)))
                                    (_%tl2452724549%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27366_ 1))))
                                (if (gx#stx-null? _%tl2452724549%_)
                                    (letrec ((_%loop2452824552%_
                                              (lambda (_%hd2452624556%_
                                                       _%super-id2453224559%_)
                                                (if (gx#stx-pair?
                                                     _%hd2452624556%_)
                                                    (let ((_%e2452924561%_
                                                           (gx#syntax-e
                                                            _%hd2452624556%_)))
                                                      (let ((_%lp-hd2453024565%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2452924561%_)))
                    (_%lp-tl2453124568%_
                     (let () (declare (not safe)) (##cdr _%e2452924561%_))))
                (_%loop2452824552%_
                 _%lp-tl2453124568%_
                 (cons _%lp-hd2453024565%_ _%super-id2453224559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2453324571%_
                                                           (reverse _%super-id2453224559%_)))
                                                      ((lambda (_%g2452424574%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2458924592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2459024595%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2458924592%_ '()))
                                      _%g2459024595%_))
                              '()
                              _%g2452424574%_)))
               _%super-id2453324571%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2452824552%_
                                       _%target2452524546%_
                                       '()))
                                    (_%g2452224539%_ _%g2452324543%_)))))
                          (_%g2452224539%_ _%g2452324543%_)))))
              (_%g2452124598%_ _%super-ref22689%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2385123862%_))))
                                      (_%g2384924602%_
                                       (let* ((_%g2460624614%_
                                               (lambda (_%g2460724610%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2460724610%_)))
                                              (_%g2460524633%_
                                               (lambda (_%g2460724618%_)
                                                 ((lambda (_%g2460824621%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2460824621%_
                                                                '())))
                                                  _%g2460724618%_))))
                                         (_%g2460524633%_
                                          (cadr _%type-name23591%_))))))
                                  _%g2382323834%_))))
                         (_%g2382124637%_
                          (let* ((_%g2464124656%_
                                  (lambda (_%g2464224652%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2464224652%_)))
                                 (_%g2464024704%_
                                  (lambda (_%g2464224660%_)
                                    (if (gx#stx-pair? _%g2464224660%_)
                                        (let ((_%e2464424663%_
                                               (gx#syntax-e _%g2464224660%_)))
                                          (let ((_%hd2464524667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2464424663%_)))
                                                (_%tl2464624670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2464424663%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2464524667%_)
                                                (let ((_%e2464724673%_
                                                       (gx#stx-e
                                                        _%hd2464524667%_)))
                                                  (if (equal? _%e2464724673%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2464624670%_)
                                                          (let ((_%e2464824677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2464624670%_)))
                    (let ((_%hd2464924681%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2464824677%_)))
                          (_%tl2465024684%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2464824677%_))))
                      (if (gx#stx-null? _%tl2465024684%_)
                          ((lambda (_%g2464324687%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%g2464324687%_ '())))
                           _%hd2464924681%_)
                          (_%g2464124656%_ _%g2464224660%_))))
                  (_%g2464124656%_ _%g2464224660%_))
              (_%g2464124656%_ _%g2464224660%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2464124656%_
                                                 _%g2464224660%_))))
                                        (_%g2464124656%_ _%g2464224660%_)))))
                            (_%g2464024704%_ _%type-id23598%_)))))
                     _%g2379523806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2379324708%_
                                                     (_%wrap22693%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%g2274122754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g2282522838%_
                                (cons _%g2276922782%_
                                      (cons _%g2279722810%_
                                            (foldr (lambda (_%g2471124714%_
                                                            _%g2471224717%_)
                                                     (cons _%g2471124714%_
                                                           _%g2471224717%_))
                                                   '()
                                                   _%g2372323773%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2373223770%_))))))
                               (_%loop2372723751%_ _%target2372423745%_ '()))
                             (_%g2372123738%_ _%g2372223742%_)))))
                   (_%g2372123738%_ _%g2372223742%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2372024720%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23584%_
                                                                _%type-slots23563%_)
                                                         _%type-properties23694%_)
                                                  _%type-metaclass23709%_)
                                           _%type-final23718%_)
                                    _%type-struct23715%_)
                             _%type-constructor23612%_)
                      _%type-name23591%_)
               _%type-id23598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2348723525%_))))))
                          (_%loop2348223506%_ _%target2347923500%_ '()))
                        (_%g2347623493%_ _%g2347723497%_)))))
              (_%g2347623493%_ _%g2347723497%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2347524724%_
                                           (gx#stx-map
                                            (lambda (_%g2472724729%_)
                                              (_%make-id22695%_
                                               '"&"
                                               _%g2472724729%_))
                                            (foldr (lambda (_%g2473224735%_
                                                            _%g2473324738%_)
                                                     (cons _%g2473224735%_
                                                           _%g2473324738%_))
                                                   '()
                                                   _%g2320223252%_)))))
                                      _%mixin-ugetf2341823456%_))))))
                     (_%loop2341323437%_ _%target2341023431%_ '()))
                   (_%g2340723424%_ _%g2340823428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2340723424%_
                                                  _%g2340823428%_)))))
                                     (_%g2340624741%_
                                      (gx#stx-map
                                       (lambda (_%g2474424746%_)
                                         (_%make-id22695%_
                                          '"&"
                                          _%g2474424746%_))
                                       (foldr (lambda (_%g2474924752%_
                                                       _%g2475024755%_)
                                                (cons _%g2474924752%_
                                                      _%g2475024755%_))
                                              '()
                                              _%g2313323183%_)))))
                                 _%usetf2334923387%_))))))
                (_%loop2334423368%_ _%target2334123362%_ '()))
              (_%g2333823355%_ _%g2333923359%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2333823355%_
                                             _%g2333923359%_)))))
                                (_%g2333724758%_
                                 (gx#stx-map
                                  (lambda (_%g2476124763%_)
                                    (_%make-id22695%_ '"&" _%g2476124763%_))
                                  (foldr (lambda (_%g2476624769%_
                                                  _%g2476724772%_)
                                           (cons _%g2476624769%_
                                                 _%g2476724772%_))
                                         '()
                                         _%g2299123041%_)))))
                            _%ugetf2328023318%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2327523299%_
                                                    _%target2327223293%_
                                                    '()))
                                                 (_%g2326923286%_
                                                  _%g2327023290%_)))))
                                       (_%g2326923286%_ _%g2327023290%_)))))
                           (_%g2326824775%_
                            (gx#stx-map
                             (lambda (_%g2477824780%_)
                               (_%make-id22695%_ '"&" _%g2477824780%_))
                             (foldr (lambda (_%g2478324786%_ _%g2478424789%_)
                                      (cons _%g2478324786%_ _%g2478424789%_))
                                    '()
                                    _%g2292222972%_)))))
                       _%mixin-setf2321123249%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2320623230%_
                                               _%target2320323224%_
                                               '()))
                                            (_%g2320023217%_
                                             _%g2320123221%_)))))
                                  (_%g2320023217%_ _%g2320123221%_)))))
                      (_%g2319924792%_
                       (gx#stx-map
                        (lambda (_%g2479524797%_)
                          (_%make-id22695%_
                           _%name22699%_
                           '"-"
                           _%g2479524797%_
                           '"-set!"))
                        _%mixin-slots23058%_))))
                  _%mixin-getf2314223180%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2313723161%_
                                          _%target2313423155%_
                                          '()))
                                       (_%g2313123148%_ _%g2313223152%_)))))
                             (_%g2313123148%_ _%g2313223152%_)))))
                 (_%g2313024801%_
                  (gx#stx-map
                   (lambda (_%g2480424806%_)
                     (_%make-id22695%_ _%name22699%_ '"-" _%g2480424806%_))
                   _%mixin-slots23058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2307223110%_))))))
                                    (_%loop2306723091%_
                                     _%target2306423085%_
                                     '()))
                                  (_%g2306123078%_ _%g2306223082%_)))))
                        (_%g2306123078%_ _%g2306223082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2306024810%_
                                                     _%mixin-slots23058%_)))
                                                _%setf2300023038%_))))))
                               (_%loop2299523019%_ _%target2299223013%_ '()))
                             (_%g2298923006%_ _%g2299023010%_)))))
                   (_%g2298923006%_ _%g2299023010%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2298824814%_
                                                (gx#stx-map
                                                 (lambda (_%g2481724819%_)
                                                   (_%make-id22695%_
                                                    _%name22699%_
                                                    '"-"
                                                    _%g2481724819%_
                                                    '"-set!"))
                                                 _%slots22690%_))))
                                           _%getf2293122969%_))))))
                          (_%loop2292622950%_ _%target2292322944%_ '()))
                        (_%g2292022937%_ _%g2292122941%_)))))
              (_%g2292022937%_ _%g2292122941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2291924823%_
                                           (gx#stx-map
                                            (lambda (_%g2482624828%_)
                                              (_%make-id22695%_
                                               _%name22699%_
                                               '"-"
                                               _%g2482624828%_))
                                            _%slots22690%_))))
                                      _%slot2286222900%_))))))
                     (_%loop2285722881%_ _%target2285422875%_ '()))
                   (_%g2285122868%_ _%g2285222872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2285122868%_
                                                  _%g2285222872%_)))))
                                     (_%g2285024832%_ _%slots22690%_)))
                                 _%g2282422835%_))))
                        (_%g2282224836%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22702%_)))))
                    _%g2279622807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2279424840%_
                                                    (_%make-id22695%_
                                                     _%name22699%_
                                                     '"?"))))
                                               _%g2276822779%_))))
                                      (_%g2276624844%_
                                       (_%make-id22695%_
                                        '"make-"
                                        _%name22699%_))))
                                  _%g2274022751%_))))
                         (_%g2273824848%_
                          (_%make-id22695%_ _%name22699%_ '"::t"))))
                     _%g2270922720%_))))
            (_%g2270724852%_ _%id22688%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24919%_)
        (let* ((_%g2492324942%_
                (lambda (_%g2492424938%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2492424938%_)))
               (_%g2492224999%_
                (lambda (_%g2492424946%_)
                  (if (gx#stx-pair? _%g2492424946%_)
                      (let ((_%e2492824949%_ (gx#syntax-e _%g2492424946%_)))
                        (let ((_%hd2492924953%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2492824949%_)))
                              (_%tl2493024956%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2492824949%_))))
                          (if (gx#stx-pair? _%tl2493024956%_)
                              (let ((_%e2493124959%_
                                     (gx#syntax-e _%tl2493024956%_)))
                                (let ((_%hd2493224963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2493124959%_)))
                                      (_%tl2493324966%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2493124959%_))))
                                  (if (gx#stx-pair? _%tl2493324966%_)
                                      (let ((_%e2493424969%_
                                             (gx#syntax-e _%tl2493324966%_)))
                                        (let ((_%hd2493524973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2493424969%_)))
                                              (_%tl2493624976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2493424969%_))))
                                          ((lambda (_%g2492524979%_
                                                    _%g2492624981%_
                                                    _%g2492724982%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%g2492724982%_
                                                         (cons _%g2492624981%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%g2492524979%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2493624976%_
                                           _%hd2493524973%_
                                           _%hd2493224963%_)))
                                      (_%g2492324942%_ _%g2492424946%_))))
                              (_%g2492324942%_ _%g2492424946%_))))
                      (_%g2492324942%_ _%g2492424946%_)))))
          (_%g2492224999%_ _%$stx24919%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx25003%_)
        (letrec ((_%generate25006%_
                  (lambda (_%hd25090%_ _%slots25092%_ _%body25093%_)
                    (let* ((_%__stx2684426845%_ _%hd25090%_)
                           (_%g2509625108%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2684426845%_))))
                      (let ((_%__kont2684726848%_
                             (lambda (_%g2509825136%_ _%g2509925138%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx25003%_
                                _%g2509925138%_
                                (gx#syntax->list _%g2509825136%_)
                                _%slots25092%_
                                _%body25093%_)))
                            (_%__kont2684926850%_
                             (lambda ()
                               (if (gx#identifier? _%hd25090%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx25003%_
                                    _%hd25090%_
                                    '()
                                    _%slots25092%_
                                    _%body25093%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx25003%_
                                    _%hd25090%_)))))
                        (let ((_%__match2685726858%_
                               (lambda (_%e2510025126%_
                                        _%hd2510125130%_
                                        _%tl2510225133%_)
                                 (let ((_%g2509825136%_ _%tl2510225133%_)
                                       (_%g2509925138%_ _%hd2510125130%_))
                                   (if (and (gx#stx-list? _%g2509825136%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%g2509825136%_))
                                       (_%__kont2684726848%_
                                        _%g2509825136%_
                                        _%g2509925138%_)
                                       (_%__kont2684926850%_))))))
                          (if (gx#stx-pair? _%__stx2684426845%_)
                              (let ((_%e2510025126%_
                                     (gx#syntax-e _%__stx2684426845%_)))
                                (let ((_%tl2510225133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2510025126%_)))
                                      (_%hd2510125130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2510025126%_))))
                                  (_%__match2685726858%_
                                   _%e2510025126%_
                                   _%hd2510125130%_
                                   _%tl2510225133%_)))
                              (_%__kont2684926850%_))))))))
          (let* ((_%g2500925028%_
                  (lambda (_%g2501025024%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2501025024%_)))
                 (_%g2500825086%_
                  (lambda (_%g2501025032%_)
                    (if (gx#stx-pair? _%g2501025032%_)
                        (let ((_%e2501425035%_ (gx#syntax-e _%g2501025032%_)))
                          (let ((_%hd2501525039%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2501425035%_)))
                                (_%tl2501625042%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2501425035%_))))
                            (if (gx#stx-pair? _%tl2501625042%_)
                                (let ((_%e2501725045%_
                                       (gx#syntax-e _%tl2501625042%_)))
                                  (let ((_%hd2501825049%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2501725045%_)))
                                        (_%tl2501925052%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2501725045%_))))
                                    (if (gx#stx-pair? _%tl2501925052%_)
                                        (let ((_%e2502025055%_
                                               (gx#syntax-e _%tl2501925052%_)))
                                          (let ((_%hd2502125059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2502025055%_)))
                                                (_%tl2502225062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2502025055%_))))
                                            ((lambda (_%g2501125065%_
                                                      _%g2501225067%_
                                                      _%g2501325068%_)
                                               (if (and (gx#identifier-list?
                                                         _%g2501225067%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%g2501125065%_))
                                                   (_%generate25006%_
                                                    _%g2501325068%_
                                                    _%g2501225067%_
                                                    _%g2501125065%_)
                                                   (_%g2500925028%_
                                                    _%g2501025032%_)))
                                             _%tl2502225062%_
                                             _%hd2502125059%_
                                             _%hd2501825049%_)))
                                        (_%g2500925028%_ _%g2501025032%_))))
                                (_%g2500925028%_ _%g2501025032%_))))
                        (_%g2500925028%_ _%g2501025032%_)))))
            (_%g2500825086%_ _%stx25003%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25155%_)
        (letrec ((_%wrap25158%_
                  (lambda (_%e-stx25504%_)
                    (gx#stx-wrap-source
                     _%e-stx25504%_
                     (gx#stx-source _%stx25155%_))))
                 (_%method-opt?25160%_
                  (lambda (_%x25501%_)
                    (let ((__tmp27368 (gx#stx-e _%x25501%_)))
                      (declare (not safe))
                      (##memq __tmp27368 '(rebind:))))))
          (let* ((_%g2516225191%_
                  (lambda (_%g2516325187%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2516325187%_)))
                 (_%g2516125497%_
                  (lambda (_%g2516325195%_)
                    (if (gx#stx-pair? _%g2516325195%_)
                        (let ((_%e2516825198%_ (gx#syntax-e _%g2516325195%_)))
                          (let ((_%hd2516925202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2516825198%_)))
                                (_%tl2517025205%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2516825198%_))))
                            (if (gx#stx-pair? _%tl2517025205%_)
                                (let ((_%e2517125208%_
                                       (gx#syntax-e _%tl2517025205%_)))
                                  (let ((_%hd2517225212%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2517125208%_)))
                                        (_%tl2517325215%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2517125208%_))))
                                    (if (gx#stx-pair? _%hd2517225212%_)
                                        (let ((_%e2517425218%_
                                               (gx#syntax-e _%hd2517225212%_)))
                                          (let ((_%hd2517525222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2517425218%_)))
                                                (_%tl2517625225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2517425218%_))))
                                            (if (gx#identifier?
                                                 _%hd2517525222%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27369_|
                                                     _%hd2517525222%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2517625225%_)
                                                        (let ((_%e2517725228%_
                                                               (gx#syntax-e
                                                                _%tl2517625225%_)))
                                                          (let ((_%hd2517825232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2517725228%_)))
                        (_%tl2517925235%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2517725228%_))))
                    (if (gx#stx-pair? _%tl2517925235%_)
                        (let ((_%e2518025238%_ (gx#syntax-e _%tl2517925235%_)))
                          (let ((_%hd2518125242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2518025238%_)))
                                (_%tl2518225245%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2518025238%_))))
                            (if (gx#stx-null? _%tl2518225245%_)
                                (if (gx#stx-pair? _%tl2517325215%_)
                                    (let ((_%e2518325248%_
                                           (gx#syntax-e _%tl2517325215%_)))
                                      (let ((_%hd2518425252%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2518325248%_)))
                                            (_%tl2518525255%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2518325248%_))))
                                        ((lambda (_%g2516425258%_
                                                  _%g2516525260%_
                                                  _%g2516625261%_
                                                  _%g2516725262%_)
                                           (if (and (gx#identifier?
                                                     _%g2516725262%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%g2516625261%_))
                                                    (gx#stx-plist?
                                                     _%g2516425258%_
                                                     _%method-opt?25160%_))
                                               (let* ((_%klass25289%_
                                                       (gx#syntax-local-value
                                                        _%g2516625261%_))
                                                      (_%rebind?25292%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%g2516425258%_)))
                                                      (_%g2529525303%_
                                                       (lambda (_%g2529625299%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2529625299%_)))
                                                      (_%g2529425487%_
                                                       (lambda (_%g2529625307%_)
                                                         ((lambda (_%g2529725310%_)
                                                            (let* ((_%g2532525333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2532625329%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2532625329%_)))
                           (_%g2532425483%_
                            (lambda (_%g2532625337%_)
                              ((lambda (_%g2532725340%_)
                                 (let* ((_%g2535325361%_
                                         (lambda (_%g2535425357%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2535425357%_)))
                                        (_%g2535225479%_
                                         (lambda (_%g2535425365%_)
                                           ((lambda (_%g2535525368%_)
                                              (let* ((_%g2538125389%_
                                                      (lambda (_%g2538225385%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2538225385%_)))
                                                     (_%g2538025475%_
                                                      (lambda (_%g2538225393%_)
                                                        ((lambda (_%g2538325396%_)
                                                           (let* ((_%g2540925417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2541025413%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2541025413%_)))
                          (_%g2540825471%_
                           (lambda (_%g2541025421%_)
                             ((lambda (_%g2541125424%_)
                                (let* ((_%g2543725445%_
                                        (lambda (_%g2543825441%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2543825441%_)))
                                       (_%g2543625467%_
                                        (lambda (_%g2543825449%_)
                                          ((lambda (_%g2543925452%_)
                                             (_%wrap25158%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%g2538325396%_
                                                          (cons _%g2543925452%_
                                                                '())))))
                                           _%g2543825449%_))))
                                  (_%g2543625467%_
                                   (_%wrap25158%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%g2529725310%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2516725262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g2532725340%_ (cons _%g2541125424%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2541025421%_))))
                     (_%g2540825471%_ _%rebind?25292%_)))
                 _%g2538225393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2538025475%_
                                                 (_%wrap25158%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%g2532725340%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%g2535525368%_
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
                                                      (cons _%g2529725310%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2516725262%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%g2516525260%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2535425365%_))))
                                   (_%g2535225479%_
                                    (gx#stx-identifier
                                     _%g2516625261%_
                                     '@next-method))))
                               _%g2532625337%_))))
                      (_%g2532425483%_
                       (gx#stx-identifier
                        _%g2516625261%_
                        _%g2516625261%_
                        '"::"
                        _%g2516725262%_))))
                  _%g2529625307%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2529425487%_
                                                  (let ((__obj27122
                                                         _%klass25289%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27122
                                                           'gerbil.core#runtime-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27122
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#runtime-type-info::t
                                                         __obj27122
                                                         'type-descriptor)))))
                                               (if (gx#identifier?
                                                    _%g2516725262%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                          _%g2516625261%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25155%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx25155%_
                                                        _%g2516625261%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25155%_
                                                    _%g2516725262%_))))
                                         _%tl2518525255%_
                                         _%hd2518425252%_
                                         _%hd2518125242%_
                                         _%hd2517825232%_)))
                                    (_%g2516225191%_ _%g2516325195%_))
                                (_%g2516225191%_ _%g2516325195%_))))
                        (_%g2516225191%_ _%g2516325195%_))))
                (_%g2516225191%_ _%g2516325195%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2516225191%_
                                                     _%g2516325195%_))
                                                (_%g2516225191%_
                                                 _%g2516325195%_))))
                                        (_%g2516225191%_ _%g2516325195%_))))
                                (_%g2516225191%_ _%g2516325195%_))))
                        (_%g2516225191%_ _%g2516325195%_)))))
            (_%g2516125497%_ _%stx25155%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25507%_)
        (letrec ((_%dotted-identifier?25510%_
                  (lambda (_%id26135%_)
                    (if (gx#identifier? _%id26135%_)
                        (let ((_%id-str26138%_
                               (symbol->string (gx#stx-e _%id26135%_))))
                          (if (string-index _%id-str26138%_ '#\.)
                              (let* ((_%split26141%_
                                      (string-split _%id-str26138%_ '#\.))
                                     (__tmp27370 (length _%split26141%_)))
                                (declare (not safe))
                                (##fx= __tmp27370 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25512%_
                  (lambda (_%id26124%_)
                    (let* ((_%id-str26127%_
                            (symbol->string (gx#stx-e _%id26124%_)))
                           (_%split26130%_
                            (string-split _%id-str26127%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26124%_
                             (car _%split26130%_))
                            (cons (gx#stx-identifier
                                   _%id26124%_
                                   (cadr _%split26130%_))
                                  '()))))))
          (let* ((_%__stx2686026861%_ _%stx25507%_)
                 (_%g2551725604%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2686026861%_))))
            (let ((_%__kont2686326864%_
                   (lambda (_%g2551926017%_ _%g2552026019%_ _%g2552126020%_)
                     (let* ((_%g2604826063%_
                             (lambda (_%g2604926059%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2604926059%_)))
                            (_%g2604726116%_
                             (lambda (_%g2604926067%_)
                               (if (gx#stx-pair? _%g2604926067%_)
                                   (let ((_%e2605226070%_
                                          (gx#syntax-e _%g2604926067%_)))
                                     (let ((_%hd2605326074%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2605226070%_)))
                                           (_%tl2605426077%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2605226070%_))))
                                       (if (gx#stx-pair? _%tl2605426077%_)
                                           (let ((_%e2605526080%_
                                                  (gx#syntax-e
                                                   _%tl2605426077%_)))
                                             (let ((_%hd2605626084%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2605526080%_)))
                                                   (_%tl2605726087%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2605526080%_))))
                                               (if (gx#stx-null?
                                                    _%tl2605726087%_)
                                                   ((lambda (_%g2605026090%_
                                                             _%g2605126092%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%g2605126092%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g2605026090%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2610726110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2610826113%_)
                   (cons _%g2610726110%_ _%g2610826113%_))
                 '()
                 _%g2552026019%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2605626084%_
                                                    _%hd2605326074%_)
                                                   (_%g2604826063%_
                                                    _%g2604926067%_))))
                                           (_%g2604826063%_ _%g2604926067%_))))
                                   (_%g2604826063%_ _%g2604926067%_)))))
                       (_%g2604726116%_
                        (_%split-dotted25512%_ _%g2552126020%_)))))
                  (_%__kont2686726868%_
                   (lambda (_%g2554025861%_ _%g2554125863%_)
                     (let* ((_%g2588025895%_
                             (lambda (_%g2588125891%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2588125891%_)))
                            (_%g2587925948%_
                             (lambda (_%g2588125899%_)
                               (if (gx#stx-pair? _%g2588125899%_)
                                   (let ((_%e2588425902%_
                                          (gx#syntax-e _%g2588125899%_)))
                                     (let ((_%hd2588525906%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2588425902%_)))
                                           (_%tl2588625909%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2588425902%_))))
                                       (if (gx#stx-pair? _%tl2588625909%_)
                                           (let ((_%e2588725912%_
                                                  (gx#syntax-e
                                                   _%tl2588625909%_)))
                                             (let ((_%hd2588825916%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2588725912%_)))
                                                   (_%tl2588925919%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2588725912%_))))
                                               (if (gx#stx-null?
                                                    _%tl2588925919%_)
                                                   ((lambda (_%g2588225922%_
                                                             _%g2588325924%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%g2588325924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g2588225922%_ '()))
                                (foldr (lambda (_%g2593925942%_
                                                _%g2594025945%_)
                                         (cons _%g2593925942%_
                                               _%g2594025945%_))
                                       '()
                                       _%g2554025861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2588825916%_
                                                    _%hd2588525906%_)
                                                   (_%g2588025895%_
                                                    _%g2588125899%_))))
                                           (_%g2588025895%_ _%g2588125899%_))))
                                   (_%g2588025895%_ _%g2588125899%_)))))
                       (_%g2587925948%_
                        (_%split-dotted25512%_ _%g2554125863%_)))))
                  (_%__kont2687126872%_
                   (lambda (_%g2555725767%_ _%g2555825769%_ _%g2555925770%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%g2555825769%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2555925770%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2579725800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2579825803%_)
                          (cons _%g2579725800%_ _%g2579825803%_))
                        '()
                        _%g2555725767%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2687526876%_
                   (lambda (_%g2557825669%_ _%g2557925671%_ _%g2558025672%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%g2557925671%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2558025672%_ '()))
                                       (foldr (lambda (_%g2569325696%_
                                                       _%g2569425699%_)
                                                (cons _%g2569325696%_
                                                      _%g2569425699%_))
                                              '()
                                              _%g2557825669%_)))))))
              (let* ((_%__match2697926980%_
                      (lambda (_%e2558125611%_
                               _%hd2558225615%_
                               _%tl2558325618%_
                               _%e2558425621%_
                               _%hd2558525625%_
                               _%tl2558625628%_
                               _%e2558725631%_
                               _%hd2558825635%_
                               _%tl2558925638%_
                               _%__splice2687726878%_
                               _%target2559025641%_
                               _%tl2559225644%_)
                        (letrec ((_%loop2559325647%_
                                  (lambda (_%hd2559125651%_ _%arg2559725654%_)
                                    (if (gx#stx-pair? _%hd2559125651%_)
                                        (let ((_%e2559425656%_
                                               (gx#syntax-e _%hd2559125651%_)))
                                          (let ((_%lp-tl2559625663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2559425656%_)))
                                                (_%lp-hd2559525660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2559425656%_))))
                                            (_%loop2559325647%_
                                             _%lp-tl2559625663%_
                                             (cons _%lp-hd2559525660%_
                                                   _%arg2559725654%_))))
                                        (let ((_%arg2559825666%_
                                               (reverse _%arg2559725654%_)))
                                          (let ((_%g2557825669%_
                                                 _%arg2559825666%_)
                                                (_%g2557925671%_
                                                 _%hd2558825635%_)
                                                (_%g2558025672%_
                                                 _%hd2558525625%_))
                                            (if (gx#identifier?
                                                 _%g2558025672%_)
                                                (_%__kont2687526876%_
                                                 _%g2557825669%_
                                                 _%g2557925671%_
                                                 _%g2558025672%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2551725604%_)))))))))
                          (_%loop2559325647%_ _%target2559025641%_ '()))))
                     (_%__match2695326954%_
                      (lambda (_%e2556025709%_
                               _%hd2556125713%_
                               _%tl2556225716%_
                               _%e2556325719%_
                               _%hd2556425723%_
                               _%tl2556525726%_
                               _%e2556625729%_
                               _%hd2556725733%_
                               _%tl2556825736%_
                               _%__splice2687326874%_
                               _%target2556925739%_
                               _%tl2557125742%_)
                        (letrec ((_%loop2557225745%_
                                  (lambda (_%hd2557025749%_ _%arg2557625752%_)
                                    (if (gx#stx-pair? _%hd2557025749%_)
                                        (let ((_%e2557325754%_
                                               (gx#syntax-e _%hd2557025749%_)))
                                          (let ((_%lp-tl2557525761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2557325754%_)))
                                                (_%lp-hd2557425758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2557325754%_))))
                                            (_%loop2557225745%_
                                             _%lp-tl2557525761%_
                                             (cons _%lp-hd2557425758%_
                                                   _%arg2557625752%_))))
                                        (let ((_%arg2557725764%_
                                               (reverse _%arg2557625752%_)))
                                          (let ((_%g2555725767%_
                                                 _%arg2557725764%_)
                                                (_%g2555825769%_
                                                 _%hd2556725733%_)
                                                (_%g2555925770%_
                                                 _%hd2556425723%_))
                                            (if (and (gx#identifier?
                                                      _%g2555925770%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2578925792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2579025795%_)
                       (cons _%g2578925792%_ _%g2579025795%_))
                     '()
                     _%g2555725767%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2687126872%_
                                                 _%g2555725767%_
                                                 _%g2555825769%_
                                                 _%g2555925770%_)
                                                (_%__match2697926980%_
                                                 _%e2556025709%_
                                                 _%hd2556125713%_
                                                 _%tl2556225716%_
                                                 _%e2556325719%_
                                                 _%hd2556425723%_
                                                 _%tl2556525726%_
                                                 _%e2556625729%_
                                                 _%hd2556725733%_
                                                 _%tl2556825736%_
                                                 _%__splice2687326874%_
                                                 _%target2556925739%_
                                                 _%tl2557125742%_))))))))
                          (_%loop2557225745%_ _%target2556925739%_ '()))))
                     (_%__match2693926940%_
                      (lambda (_%e2556025709%_
                               _%hd2556125713%_
                               _%tl2556225716%_
                               _%e2556325719%_
                               _%hd2556425723%_
                               _%tl2556525726%_)
                        (if (gx#stx-pair? _%tl2556525726%_)
                            (let ((_%e2556625729%_
                                   (gx#syntax-e _%tl2556525726%_)))
                              (let ((_%tl2556825736%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2556625729%_)))
                                    (_%hd2556725733%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2556625729%_))))
                                (if (gx#stx-pair/null? _%tl2556825736%_)
                                    (let ((_%__splice2687326874%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2556825736%_
                                            '0)))
                                      (let ((_%tl2557125742%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2687326874%_
                                                '1)))
                                            (_%target2556925739%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2687326874%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2557125742%_)
                                            (_%__match2695326954%_
                                             _%e2556025709%_
                                             _%hd2556125713%_
                                             _%tl2556225716%_
                                             _%e2556325719%_
                                             _%hd2556425723%_
                                             _%tl2556525726%_
                                             _%e2556625729%_
                                             _%hd2556725733%_
                                             _%tl2556825736%_
                                             _%__splice2687326874%_
                                             _%target2556925739%_
                                             _%tl2557125742%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2551725604%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2551725604%_)))))
                            (let () (declare (not safe)) (_%g2551725604%_)))))
                     (_%__match2692726928%_
                      (lambda (_%e2554225813%_
                               _%hd2554325817%_
                               _%tl2554425820%_
                               _%e2554525823%_
                               _%hd2554625827%_
                               _%tl2554725830%_
                               _%__splice2686926870%_
                               _%target2554825833%_
                               _%tl2555025836%_)
                        (letrec ((_%loop2555125839%_
                                  (lambda (_%hd2554925843%_ _%arg2555525846%_)
                                    (if (gx#stx-pair? _%hd2554925843%_)
                                        (let ((_%e2555225848%_
                                               (gx#syntax-e _%hd2554925843%_)))
                                          (let ((_%lp-tl2555425855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2555225848%_)))
                                                (_%lp-hd2555325852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2555225848%_))))
                                            (_%loop2555125839%_
                                             _%lp-tl2555425855%_
                                             (cons _%lp-hd2555325852%_
                                                   _%arg2555525846%_))))
                                        (let ((_%arg2555625858%_
                                               (reverse _%arg2555525846%_)))
                                          (let ((_%g2554025861%_
                                                 _%arg2555625858%_)
                                                (_%g2554125863%_
                                                 _%hd2554625827%_))
                                            (if (_%dotted-identifier?25510%_
                                                 _%g2554125863%_)
                                                (_%__kont2686726868%_
                                                 _%g2554025861%_
                                                 _%g2554125863%_)
                                                (_%__match2693926940%_
                                                 _%e2554225813%_
                                                 _%hd2554325817%_
                                                 _%tl2554425820%_
                                                 _%e2554525823%_
                                                 _%hd2554625827%_
                                                 _%tl2554725830%_))))))))
                          (_%loop2555125839%_ _%target2554825833%_ '()))))
                     (_%__match2692526926%_
                      (lambda (_%e2554225813%_
                               _%hd2554325817%_
                               _%tl2554425820%_
                               _%e2554525823%_
                               _%hd2554625827%_
                               _%tl2554725830%_
                               _%__splice2686926870%_
                               _%target2554825833%_
                               _%tl2555025836%_)
                        (if (gx#stx-null? _%tl2555025836%_)
                            (_%__match2692726928%_
                             _%e2554225813%_
                             _%hd2554325817%_
                             _%tl2554425820%_
                             _%e2554525823%_
                             _%hd2554625827%_
                             _%tl2554725830%_
                             _%__splice2686926870%_
                             _%target2554825833%_
                             _%tl2555025836%_)
                            (if (gx#stx-pair? _%tl2554725830%_)
                                (let ((_%e2556625729%_
                                       (gx#syntax-e _%tl2554725830%_)))
                                  (let ((_%tl2556825736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2556625729%_)))
                                        (_%hd2556725733%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2556625729%_))))
                                    (if (gx#stx-pair/null? _%tl2556825736%_)
                                        (let ((_%__splice2687326874%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2556825736%_
                                                '0)))
                                          (let ((_%tl2557125742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2687326874%_
                                                    '1)))
                                                (_%target2556925739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2687326874%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2557125742%_)
                                                (_%__match2695326954%_
                                                 _%e2554225813%_
                                                 _%hd2554325817%_
                                                 _%tl2554425820%_
                                                 _%e2554525823%_
                                                 _%hd2554625827%_
                                                 _%tl2554725830%_
                                                 _%e2556625729%_
                                                 _%hd2556725733%_
                                                 _%tl2556825736%_
                                                 _%__splice2687326874%_
                                                 _%target2556925739%_
                                                 _%tl2557125742%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2551725604%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2551725604%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2551725604%_))))))
                     (_%__match2690726908%_
                      (lambda (_%e2552225959%_
                               _%hd2552325963%_
                               _%tl2552425966%_
                               _%e2552525969%_
                               _%hd2552625973%_
                               _%tl2552725976%_
                               _%__splice2686526866%_
                               _%target2552825979%_
                               _%tl2553025982%_
                               _%e2553725985%_
                               _%hd2553825989%_
                               _%tl2553925992%_)
                        (letrec ((_%loop2553125995%_
                                  (lambda (_%hd2552925999%_ _%arg2553526002%_)
                                    (if (gx#stx-pair? _%hd2552925999%_)
                                        (let ((_%e2553226004%_
                                               (gx#syntax-e _%hd2552925999%_)))
                                          (let ((_%lp-tl2553426011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2553226004%_)))
                                                (_%lp-hd2553326008%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2553226004%_))))
                                            (_%loop2553125995%_
                                             _%lp-tl2553426011%_
                                             (cons _%lp-hd2553326008%_
                                                   _%arg2553526002%_))))
                                        (let ((_%arg2553626014%_
                                               (reverse _%arg2553526002%_)))
                                          (let ((_%g2551926017%_
                                                 _%hd2553825989%_)
                                                (_%g2552026019%_
                                                 _%arg2553626014%_)
                                                (_%g2552126020%_
                                                 _%hd2552625973%_))
                                            (if (and (_%dotted-identifier?25510%_
                                                      _%g2552126020%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2603926042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2604026045%_)
                       (cons _%g2603926042%_ _%g2604026045%_))
                     '()
                     _%g2552026019%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2686326864%_
                                                 _%g2551926017%_
                                                 _%g2552026019%_
                                                 _%g2552126020%_)
                                                (let ((_%__splice2686926870%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2552725976%_
                                                        '0)))
                                                  (let ((_%tl2555025836%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686926870%_
                                                            '1)))
                                                        (_%target2554825833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686926870%_
                                                            '0))))
                                                    (_%__match2692526926%_
                                                     _%e2552225959%_
                                                     _%hd2552325963%_
                                                     _%tl2552425966%_
                                                     _%e2552525969%_
                                                     _%hd2552625973%_
                                                     _%tl2552725976%_
                                                     _%__splice2686926870%_
                                                     _%target2554825833%_
                                                     _%tl2555025836%_))))))))))
                          (_%loop2553125995%_ _%target2552825979%_ '())))))
                (if (gx#stx-pair? _%__stx2686026861%_)
                    (let ((_%e2552225959%_ (gx#syntax-e _%__stx2686026861%_)))
                      (let ((_%tl2552425966%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2552225959%_)))
                            (_%hd2552325963%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2552225959%_))))
                        (if (gx#stx-pair? _%tl2552425966%_)
                            (let ((_%e2552525969%_
                                   (gx#syntax-e _%tl2552425966%_)))
                              (let ((_%tl2552725976%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2552525969%_)))
                                    (_%hd2552625973%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2552525969%_))))
                                (if (gx#stx-pair/null? _%tl2552725976%_)
                                    (if (let ((__tmp27371
                                               (gx#stx-length
                                                _%tl2552725976%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27371 '1))
                                        (let ((_%__splice2686526866%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2552725976%_
                                                '1)))
                                          (let ((_%tl2553025982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686526866%_
                                                    '1)))
                                                (_%target2552825979%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686526866%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2553025982%_)
                                                (let ((_%e2553725985%_
                                                       (gx#syntax-e
                                                        _%tl2553025982%_)))
                                                  (let ((_%tl2553925992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2553725985%_)))
                                                        (_%hd2553825989%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2553725985%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2553925992%_)
                                                        (_%__match2690726908%_
                                                         _%e2552225959%_
                                                         _%hd2552325963%_
                                                         _%tl2552425966%_
                                                         _%e2552525969%_
                                                         _%hd2552625973%_
                                                         _%tl2552725976%_
                                                         _%__splice2686526866%_
                                                         _%target2552825979%_
                                                         _%tl2553025982%_
                                                         _%e2553725985%_
                                                         _%hd2553825989%_
                                                         _%tl2553925992%_)
                                                        (let ((_%__splice2686926870%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2552725976%_
                                                                '0)))
                                                          (let ((_%tl2555025836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2686926870%_ '1)))
                        (_%target2554825833%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2686926870%_ '0))))
                    (if (gx#stx-null? _%tl2555025836%_)
                        (_%__match2692726928%_
                         _%e2552225959%_
                         _%hd2552325963%_
                         _%tl2552425966%_
                         _%e2552525969%_
                         _%hd2552625973%_
                         _%tl2552725976%_
                         _%__splice2686926870%_
                         _%target2554825833%_
                         _%tl2555025836%_)
                        (if (gx#stx-pair? _%tl2552725976%_)
                            (let ((_%e2556625729%_
                                   (gx#syntax-e _%tl2552725976%_)))
                              (let ((_%tl2556825736%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2556625729%_)))
                                    (_%hd2556725733%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2556625729%_))))
                                (if (gx#stx-pair/null? _%tl2556825736%_)
                                    (let ((_%__splice2687326874%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2556825736%_
                                            '0)))
                                      (let ((_%tl2557125742%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2687326874%_
                                                '1)))
                                            (_%target2556925739%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2687326874%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2557125742%_)
                                            (_%__match2695326954%_
                                             _%e2552225959%_
                                             _%hd2552325963%_
                                             _%tl2552425966%_
                                             _%e2552525969%_
                                             _%hd2552625973%_
                                             _%tl2552725976%_
                                             _%e2556625729%_
                                             _%hd2556725733%_
                                             _%tl2556825736%_
                                             _%__splice2687326874%_
                                             _%target2556925739%_
                                             _%tl2557125742%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2551725604%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2551725604%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2551725604%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2686926870%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2552725976%_
                                                        '0)))
                                                  (let ((_%tl2555025836%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686926870%_
                                                            '1)))
                                                        (_%target2554825833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2686926870%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2555025836%_)
                                                        (_%__match2692726928%_
                                                         _%e2552225959%_
                                                         _%hd2552325963%_
                                                         _%tl2552425966%_
                                                         _%e2552525969%_
                                                         _%hd2552625973%_
                                                         _%tl2552725976%_
                                                         _%__splice2686926870%_
                                                         _%target2554825833%_
                                                         _%tl2555025836%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2552725976%_)
                                                            (let ((_%e2556625729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2552725976%_)))
                      (let ((_%tl2556825736%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2556625729%_)))
                            (_%hd2556725733%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2556625729%_))))
                        (if (gx#stx-pair/null? _%tl2556825736%_)
                            (let ((_%__splice2687326874%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2556825736%_
                                    '0)))
                              (let ((_%tl2557125742%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2687326874%_
                                        '1)))
                                    (_%target2556925739%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2687326874%_
                                        '0))))
                                (if (gx#stx-null? _%tl2557125742%_)
                                    (_%__match2695326954%_
                                     _%e2552225959%_
                                     _%hd2552325963%_
                                     _%tl2552425966%_
                                     _%e2552525969%_
                                     _%hd2552625973%_
                                     _%tl2552725976%_
                                     _%e2556625729%_
                                     _%hd2556725733%_
                                     _%tl2556825736%_
                                     _%__splice2687326874%_
                                     _%target2556925739%_
                                     _%tl2557125742%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2551725604%_)))))
                            (let () (declare (not safe)) (_%g2551725604%_)))))
                    (let () (declare (not safe)) (_%g2551725604%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2686926870%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2552725976%_
                                                '0)))
                                          (let ((_%tl2555025836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686926870%_
                                                    '1)))
                                                (_%target2554825833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2686926870%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2555025836%_)
                                                (_%__match2692726928%_
                                                 _%e2552225959%_
                                                 _%hd2552325963%_
                                                 _%tl2552425966%_
                                                 _%e2552525969%_
                                                 _%hd2552625973%_
                                                 _%tl2552725976%_
                                                 _%__splice2686926870%_
                                                 _%target2554825833%_
                                                 _%tl2555025836%_)
                                                (if (gx#stx-pair?
                                                     _%tl2552725976%_)
                                                    (let ((_%e2556625729%_
                                                           (gx#syntax-e
                                                            _%tl2552725976%_)))
                                                      (let ((_%tl2556825736%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2556625729%_)))
                    (_%hd2556725733%_
                     (let () (declare (not safe)) (##car _%e2556625729%_))))
                (if (gx#stx-pair/null? _%tl2556825736%_)
                    (let ((_%__splice2687326874%_
                           (gx#syntax-split-splice->vector
                            _%tl2556825736%_
                            '0)))
                      (let ((_%tl2557125742%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2687326874%_ '1)))
                            (_%target2556925739%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2687326874%_ '0))))
                        (if (gx#stx-null? _%tl2557125742%_)
                            (_%__match2695326954%_
                             _%e2552225959%_
                             _%hd2552325963%_
                             _%tl2552425966%_
                             _%e2552525969%_
                             _%hd2552625973%_
                             _%tl2552725976%_
                             _%e2556625729%_
                             _%hd2556725733%_
                             _%tl2556825736%_
                             _%__splice2687326874%_
                             _%target2556925739%_
                             _%tl2557125742%_)
                            (let () (declare (not safe)) (_%g2551725604%_)))))
                    (let () (declare (not safe)) (_%g2551725604%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2551725604%_)))))))
                                    (if (gx#stx-pair? _%tl2552725976%_)
                                        (let ((_%e2556625729%_
                                               (gx#syntax-e _%tl2552725976%_)))
                                          (let ((_%tl2556825736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2556625729%_)))
                                                (_%hd2556725733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2556625729%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2556825736%_)
                                                (let ((_%__splice2687326874%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2556825736%_
                                                        '0)))
                                                  (let ((_%tl2557125742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687326874%_
                                                            '1)))
                                                        (_%target2556925739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2687326874%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2557125742%_)
                                                        (_%__match2695326954%_
                                                         _%e2552225959%_
                                                         _%hd2552325963%_
                                                         _%tl2552425966%_
                                                         _%e2552525969%_
                                                         _%hd2552625973%_
                                                         _%tl2552725976%_
                                                         _%e2556625729%_
                                                         _%hd2556725733%_
                                                         _%tl2556825736%_
                                                         _%__splice2687326874%_
                                                         _%target2556925739%_
                                                         _%tl2557125742%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2551725604%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2551725604%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2551725604%_))))))
                            (let () (declare (not safe)) (_%g2551725604%_)))))
                    (let () (declare (not safe)) (_%g2551725604%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26148%_)
        (let* ((_%__stx2698226983%_ _%$stx26148%_)
               (_%g2615326193%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2698226983%_))))
          (let ((_%__kont2698526986%_
                 (lambda (_%g2615526329%_ _%g2615626331%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%g2615626331%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2615526329%_ '()))
                                     '())))))
                (_%__kont2698726988%_
                 (lambda (_%g2616626258%_
                          _%g2616726260%_
                          _%g2616826261%_
                          _%g2616926262%_)
                   (cons _%g2616926262%_
                         (cons (cons _%g2616926262%_
                                     (cons _%g2616826261%_
                                           (cons _%g2616726260%_ '())))
                               (foldr (lambda (_%g2628326286%_ _%g2628426289%_)
                                        (cons _%g2628326286%_ _%g2628426289%_))
                                      '()
                                      _%g2616626258%_))))))
            (let* ((_%__match2703727038%_
                    (lambda (_%e2617026200%_
                             _%hd2617126204%_
                             _%tl2617226207%_
                             _%e2617326210%_
                             _%hd2617426214%_
                             _%tl2617526217%_
                             _%e2617626220%_
                             _%hd2617726224%_
                             _%tl2617826227%_
                             _%__splice2698926990%_
                             _%target2617926230%_
                             _%tl2618126233%_)
                      (letrec ((_%loop2618226236%_
                                (lambda (_%hd2618026240%_ _%rest2618626243%_)
                                  (if (gx#stx-pair? _%hd2618026240%_)
                                      (let ((_%e2618326245%_
                                             (gx#syntax-e _%hd2618026240%_)))
                                        (let ((_%lp-tl2618526252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2618326245%_)))
                                              (_%lp-hd2618426249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2618326245%_))))
                                          (_%loop2618226236%_
                                           _%lp-tl2618526252%_
                                           (cons _%lp-hd2618426249%_
                                                 _%rest2618626243%_))))
                                      (let ((_%rest2618726255%_
                                             (reverse _%rest2618626243%_)))
                                        (_%__kont2698726988%_
                                         _%rest2618726255%_
                                         _%hd2617726224%_
                                         _%hd2617426214%_
                                         _%hd2617126204%_))))))
                        (_%loop2618226236%_ _%target2617926230%_ '()))))
                   (_%__match2701127012%_
                    (lambda (_%e2615726299%_
                             _%hd2615826303%_
                             _%tl2615926306%_
                             _%e2616026309%_
                             _%hd2616126313%_
                             _%tl2616226316%_
                             _%e2616326319%_
                             _%hd2616426323%_
                             _%tl2616526326%_)
                      (let ((_%g2615526329%_ _%hd2616426323%_)
                            (_%g2615626331%_ _%hd2616126313%_))
                        (if (gx#identifier? _%g2615526329%_)
                            (_%__kont2698526986%_
                             _%g2615526329%_
                             _%g2615626331%_)
                            (if (gx#stx-pair/null? _%tl2616526326%_)
                                (let ((_%__splice2698926990%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2616526326%_
                                        '0)))
                                  (let ((_%tl2618126233%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2698926990%_
                                            '1)))
                                        (_%target2617926230%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2698926990%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2618126233%_)
                                        (_%__match2703727038%_
                                         _%e2615726299%_
                                         _%hd2615826303%_
                                         _%tl2615926306%_
                                         _%e2616026309%_
                                         _%hd2616126313%_
                                         _%tl2616226316%_
                                         _%e2616326319%_
                                         _%hd2616426323%_
                                         _%tl2616526326%_
                                         _%__splice2698926990%_
                                         _%target2617926230%_
                                         _%tl2618126233%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2615326193%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2615326193%_))))))))
              (if (gx#stx-pair? _%__stx2698226983%_)
                  (let ((_%e2615726299%_ (gx#syntax-e _%__stx2698226983%_)))
                    (let ((_%tl2615926306%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2615726299%_)))
                          (_%hd2615826303%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2615726299%_))))
                      (if (gx#stx-pair? _%tl2615926306%_)
                          (let ((_%e2616026309%_
                                 (gx#syntax-e _%tl2615926306%_)))
                            (let ((_%tl2616226316%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2616026309%_)))
                                  (_%hd2616126313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2616026309%_))))
                              (if (gx#stx-pair? _%tl2616226316%_)
                                  (let ((_%e2616326319%_
                                         (gx#syntax-e _%tl2616226316%_)))
                                    (let ((_%tl2616526326%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2616326319%_)))
                                          (_%hd2616426323%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2616326319%_))))
                                      (if (gx#stx-null? _%tl2616526326%_)
                                          (_%__match2701127012%_
                                           _%e2615726299%_
                                           _%hd2615826303%_
                                           _%tl2615926306%_
                                           _%e2616026309%_
                                           _%hd2616126313%_
                                           _%tl2616226316%_
                                           _%e2616326319%_
                                           _%hd2616426323%_
                                           _%tl2616526326%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2616526326%_)
                                              (let ((_%__splice2698926990%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2616526326%_
                                                      '0)))
                                                (let ((_%tl2618126233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2698926990%_
                                                          '1)))
                                                      (_%target2617926230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2698926990%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2618126233%_)
                                                      (_%__match2703727038%_
                                                       _%e2615726299%_
                                                       _%hd2615826303%_
                                                       _%tl2615926306%_
                                                       _%e2616026309%_
                                                       _%hd2616126313%_
                                                       _%tl2616226316%_
                                                       _%e2616326319%_
                                                       _%hd2616426323%_
                                                       _%tl2616526326%_
                                                       _%__splice2698926990%_
                                                       _%target2617926230%_
                                                       _%tl2618126233%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2615326193%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2615326193%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2615326193%_)))))
                          (let () (declare (not safe)) (_%g2615326193%_)))))
                  (let () (declare (not safe)) (_%g2615326193%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26351%_)
        (let* ((_%__stx2704027041%_ _%$stx26351%_)
               (_%g2635626408%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2704027041%_))))
          (let ((_%__kont2704327044%_
                 (lambda (_%g2635826582%_ _%g2635926584%_ _%g2636026585%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%g2636026585%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2635926584%_ '()))
                                     (cons _%g2635826582%_ '()))))))
                (_%__kont2704527046%_
                 (lambda (_%g2637326493%_
                          _%g2637426495%_
                          _%g2637526496%_
                          _%g2637626497%_
                          _%g2637726498%_
                          _%g2637826499%_)
                   (cons _%g2637826499%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%g2637726498%_
                                           (cons _%g2637626497%_
                                                 (foldr (lambda (_%g2652626529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2652726532%_)
                  (cons _%g2652626529%_ _%g2652726532%_))
                '()
                _%g2637526496%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g2637426495%_
                                     (cons _%g2637326493%_ '())))))))
            (let* ((_%__match2711527116%_
                    (lambda (_%e2637926415%_
                             _%hd2638026419%_
                             _%tl2638126422%_
                             _%e2638226425%_
                             _%hd2638326429%_
                             _%tl2638426432%_
                             _%e2638526435%_
                             _%hd2638626439%_
                             _%tl2638726442%_
                             _%__splice2704727048%_
                             _%target2638826445%_
                             _%tl2639026448%_
                             _%e2639726451%_
                             _%hd2639826455%_
                             _%tl2639926458%_
                             _%e2640026461%_
                             _%hd2640126465%_
                             _%tl2640226468%_)
                      (letrec ((_%loop2639126471%_
                                (lambda (_%hd2638926475%_ _%path2639526478%_)
                                  (if (gx#stx-pair? _%hd2638926475%_)
                                      (let ((_%e2639226480%_
                                             (gx#syntax-e _%hd2638926475%_)))
                                        (let ((_%lp-tl2639426487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2639226480%_)))
                                              (_%lp-hd2639326484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2639226480%_))))
                                          (_%loop2639126471%_
                                           _%lp-tl2639426487%_
                                           (cons _%lp-hd2639326484%_
                                                 _%path2639526478%_))))
                                      (let ((_%path2639626490%_
                                             (reverse _%path2639526478%_)))
                                        (_%__kont2704527046%_
                                         _%hd2640126465%_
                                         _%hd2639826455%_
                                         _%path2639626490%_
                                         _%hd2638626439%_
                                         _%hd2638326429%_
                                         _%hd2638026419%_))))))
                        (_%loop2639126471%_ _%target2638826445%_ '()))))
                   (_%__match2707527076%_
                    (lambda (_%e2636126542%_
                             _%hd2636226546%_
                             _%tl2636326549%_
                             _%e2636426552%_
                             _%hd2636526556%_
                             _%tl2636626559%_
                             _%e2636726562%_
                             _%hd2636826566%_
                             _%tl2636926569%_
                             _%e2637026572%_
                             _%hd2637126576%_
                             _%tl2637226579%_)
                      (let ((_%g2635826582%_ _%hd2637126576%_)
                            (_%g2635926584%_ _%hd2636826566%_)
                            (_%g2636026585%_ _%hd2636526556%_))
                        (if (gx#identifier? _%g2635926584%_)
                            (_%__kont2704327044%_
                             _%g2635826582%_
                             _%g2635926584%_
                             _%g2636026585%_)
                            (if (gx#stx-pair/null? _%tl2636926569%_)
                                (if (let ((__tmp27372
                                           (gx#stx-length _%tl2636926569%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27372 '2))
                                    (let ((_%__splice2704727048%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2636926569%_
                                            '2)))
                                      (let ((_%tl2639026448%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2704727048%_
                                                '1)))
                                            (_%target2638826445%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2704727048%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2639026448%_)
                                            (let ((_%e2639726451%_
                                                   (gx#syntax-e
                                                    _%tl2639026448%_)))
                                              (let ((_%tl2639926458%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2639726451%_)))
                                                    (_%hd2639826455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2639726451%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2639926458%_)
                                                    (let ((_%e2640026461%_
                                                           (gx#syntax-e
                                                            _%tl2639926458%_)))
                                                      (let ((_%tl2640226468%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2640026461%_)))
                    (_%hd2640126465%_
                     (let () (declare (not safe)) (##car _%e2640026461%_))))
                (if (gx#stx-null? _%tl2640226468%_)
                    (_%__match2711527116%_
                     _%e2636126542%_
                     _%hd2636226546%_
                     _%tl2636326549%_
                     _%e2636426552%_
                     _%hd2636526556%_
                     _%tl2636626559%_
                     _%e2636726562%_
                     _%hd2636826566%_
                     _%tl2636926569%_
                     _%__splice2704727048%_
                     _%target2638826445%_
                     _%tl2639026448%_
                     _%e2639726451%_
                     _%hd2639826455%_
                     _%tl2639926458%_
                     _%e2640026461%_
                     _%hd2640126465%_
                     _%tl2640226468%_)
                    (let () (declare (not safe)) (_%g2635626408%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2635626408%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2635626408%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2635626408%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2635626408%_))))))))
              (if (gx#stx-pair? _%__stx2704027041%_)
                  (let ((_%e2636126542%_ (gx#syntax-e _%__stx2704027041%_)))
                    (let ((_%tl2636326549%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2636126542%_)))
                          (_%hd2636226546%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2636126542%_))))
                      (if (gx#stx-pair? _%tl2636326549%_)
                          (let ((_%e2636426552%_
                                 (gx#syntax-e _%tl2636326549%_)))
                            (let ((_%tl2636626559%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2636426552%_)))
                                  (_%hd2636526556%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2636426552%_))))
                              (if (gx#stx-pair? _%tl2636626559%_)
                                  (let ((_%e2636726562%_
                                         (gx#syntax-e _%tl2636626559%_)))
                                    (let ((_%tl2636926569%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2636726562%_)))
                                          (_%hd2636826566%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2636726562%_))))
                                      (if (gx#stx-pair? _%tl2636926569%_)
                                          (let ((_%e2637026572%_
                                                 (gx#syntax-e
                                                  _%tl2636926569%_)))
                                            (let ((_%tl2637226579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2637026572%_)))
                                                  (_%hd2637126576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2637026572%_))))
                                              (if (gx#stx-null?
                                                   _%tl2637226579%_)
                                                  (_%__match2707527076%_
                                                   _%e2636126542%_
                                                   _%hd2636226546%_
                                                   _%tl2636326549%_
                                                   _%e2636426552%_
                                                   _%hd2636526556%_
                                                   _%tl2636626559%_
                                                   _%e2636726562%_
                                                   _%hd2636826566%_
                                                   _%tl2636926569%_
                                                   _%e2637026572%_
                                                   _%hd2637126576%_
                                                   _%tl2637226579%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2636926569%_)
                                                      (if (let ((__tmp27373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2636926569%_)))
                    (declare (not safe))
                    (##fx>= __tmp27373 '2))
                  (let ((_%__splice2704727048%_
                         (gx#syntax-split-splice->vector _%tl2636926569%_ '2)))
                    (let ((_%tl2639026448%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2704727048%_ '1)))
                          (_%target2638826445%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2704727048%_ '0))))
                      (if (gx#stx-pair? _%tl2639026448%_)
                          (let ((_%e2639726451%_
                                 (gx#syntax-e _%tl2639026448%_)))
                            (let ((_%tl2639926458%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2639726451%_)))
                                  (_%hd2639826455%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2639726451%_))))
                              (if (gx#stx-pair? _%tl2639926458%_)
                                  (let ((_%e2640026461%_
                                         (gx#syntax-e _%tl2639926458%_)))
                                    (let ((_%tl2640226468%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2640026461%_)))
                                          (_%hd2640126465%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2640026461%_))))
                                      (if (gx#stx-null? _%tl2640226468%_)
                                          (_%__match2711527116%_
                                           _%e2636126542%_
                                           _%hd2636226546%_
                                           _%tl2636326549%_
                                           _%e2636426552%_
                                           _%hd2636526556%_
                                           _%tl2636626559%_
                                           _%e2636726562%_
                                           _%hd2636826566%_
                                           _%tl2636926569%_
                                           _%__splice2704727048%_
                                           _%target2638826445%_
                                           _%tl2639026448%_
                                           _%e2639726451%_
                                           _%hd2639826455%_
                                           _%tl2639926458%_
                                           _%e2640026461%_
                                           _%hd2640126465%_
                                           _%tl2640226468%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2635626408%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2635626408%_)))))
                          (let () (declare (not safe)) (_%g2635626408%_)))))
                  (let () (declare (not safe)) (_%g2635626408%_)))
              (let () (declare (not safe)) (_%g2635626408%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2636926569%_)
                                              (if (let ((__tmp27374
                                                         (gx#stx-length
                                                          _%tl2636926569%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27374 '2))
                                                  (let ((_%__splice2704727048%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2636926569%_
                                                          '2)))
                                                    (let ((_%tl2639026448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2704727048%_
                                                              '1)))
                                                          (_%target2638826445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2704727048%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2639026448%_)
                                                          (let ((_%e2639726451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2639026448%_)))
                    (let ((_%tl2639926458%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2639726451%_)))
                          (_%hd2639826455%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2639726451%_))))
                      (if (gx#stx-pair? _%tl2639926458%_)
                          (let ((_%e2640026461%_
                                 (gx#syntax-e _%tl2639926458%_)))
                            (let ((_%tl2640226468%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2640026461%_)))
                                  (_%hd2640126465%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2640026461%_))))
                              (if (gx#stx-null? _%tl2640226468%_)
                                  (_%__match2711527116%_
                                   _%e2636126542%_
                                   _%hd2636226546%_
                                   _%tl2636326549%_
                                   _%e2636426552%_
                                   _%hd2636526556%_
                                   _%tl2636626559%_
                                   _%e2636726562%_
                                   _%hd2636826566%_
                                   _%tl2636926569%_
                                   _%__splice2704727048%_
                                   _%target2638826445%_
                                   _%tl2639026448%_
                                   _%e2639726451%_
                                   _%hd2639826455%_
                                   _%tl2639926458%_
                                   _%e2640026461%_
                                   _%hd2640126465%_
                                   _%tl2640226468%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2635626408%_)))))
                          (let () (declare (not safe)) (_%g2635626408%_)))))
                  (let () (declare (not safe)) (_%g2635626408%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2635626408%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2635626408%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2635626408%_)))))
                          (let () (declare (not safe)) (_%g2635626408%_)))))
                  (let () (declare (not safe)) (_%g2635626408%_))))))))))
